import QtQuick 2.2

Rectangle {
    id: mainPanel

    CentrePanel {
        id: centrePanel
        visible: false
        state: ""
    }

    RightPanel {
        id: rightPanel
        visible: false
        state: ""
    }
    LeftPanel {
        id: leftPanel
        visible: false
        state: ""
    }


    states: [
        State {
            name: ""
            PropertyChanges { target: centrePanel; visible: false; state: "" }
            PropertyChanges { target: rightPanel; visible: false; state: "" }
            PropertyChanges { target: leftPanel; visible: false; state: "" }
        },
        State {
            name: "normalMode"
            PropertyChanges { target: centrePanel; visible: true; state: "normalMode" }
            PropertyChanges { target: rightPanel; visible: true; state: "normalMode" }
            PropertyChanges { target: leftPanel; visible: true; state: "normalMode" }
        },
        State {
            name: "functionMode"
            PropertyChanges { target: centrePanel; visible: true; state: "functionMode" }
            PropertyChanges { target: rightPanel; visible: true; state: "functionMode" }
            PropertyChanges { target: leftPanel; visible: true; state: "functionMode" }
        }
    ]
}

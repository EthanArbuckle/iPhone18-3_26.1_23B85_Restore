@interface UIKitEditorViewController
- (NSUndoManager)undoManager;
- (_TtC14WorkflowEditor25UIKitEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)motionEnded:(int64_t)a3 withEvent:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)workflowActionsDidChange:(id)a3;
- (void)workflowInputActionDidChange:(id)a3;
- (void)workflowTriggersDidChange:(id)a3;
@end

@implementation UIKitEditorViewController

- (void)loadView
{
  v2 = self;
  sub_2745893A0();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_274589434();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_274589604(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_2745896D4(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_274589788(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_274589840();
}

- (void)motionEnded:(int64_t)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_274589914();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_274593884(v2, type metadata accessor for UIKitEditorViewController, &selRef_viewDidLayoutSubviews);
}

- (void)keyboardWillShow:(id)a3
{
  v4 = sub_274637D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274637CEC();
  v8 = self;
  sub_274589F3C();

  (*(v5 + 8))(v7, v4);
}

- (void)keyboardWillHide:(id)a3
{
  v4 = sub_274637D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274637CEC();
  v8 = self;
  sub_27458A858();

  (*(v5 + 8))(v7, v4);
}

- (NSUndoManager)undoManager
{
  v2 = self;
  v3 = sub_27458ACC8();

  return v3;
}

- (void)workflowInputActionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27458AD2C();
}

- (void)workflowActionsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27458ADFC();
}

- (void)workflowTriggersDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27458AE88();
}

- (_TtC14WorkflowEditor25UIKitEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_27463B6AC();
  }

  v5 = a4;
  sub_274591CC4();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274591D38(v4);
}

@end
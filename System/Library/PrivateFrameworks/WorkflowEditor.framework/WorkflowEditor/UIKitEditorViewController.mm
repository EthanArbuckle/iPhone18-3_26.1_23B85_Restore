@interface UIKitEditorViewController
- (NSUndoManager)undoManager;
- (_TtC14WorkflowEditor25UIKitEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
- (void)workflowActionsDidChange:(id)change;
- (void)workflowInputActionDidChange:(id)change;
- (void)workflowTriggersDidChange:(id)change;
@end

@implementation UIKitEditorViewController

- (void)loadView
{
  selfCopy = self;
  sub_2745893A0();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_274589434();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_274589604(appearing);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2745896D4(disappear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_274589788(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_274589840();
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_274589914();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_274593884(selfCopy, type metadata accessor for UIKitEditorViewController, &selRef_viewDidLayoutSubviews);
}

- (void)keyboardWillShow:(id)show
{
  v4 = sub_274637D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274637CEC();
  selfCopy = self;
  sub_274589F3C();

  (*(v5 + 8))(v7, v4);
}

- (void)keyboardWillHide:(id)hide
{
  v4 = sub_274637D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274637CEC();
  selfCopy = self;
  sub_27458A858();

  (*(v5 + 8))(v7, v4);
}

- (NSUndoManager)undoManager
{
  selfCopy = self;
  v3 = sub_27458ACC8();

  return v3;
}

- (void)workflowInputActionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_27458AD2C();
}

- (void)workflowActionsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_27458ADFC();
}

- (void)workflowTriggersDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_27458AE88();
}

- (_TtC14WorkflowEditor25UIKitEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_27463B6AC();
  }

  bundleCopy = bundle;
  sub_274591CC4();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_274591D38(dismissCopy);
}

@end
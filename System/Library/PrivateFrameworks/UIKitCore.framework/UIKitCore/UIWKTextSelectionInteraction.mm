@interface UIWKTextSelectionInteraction
- (void)didUpdateSelectionWithGesture:(id)gesture;
- (void)twoFingerRangedSelectGesture:(id)gesture;
- (void)willUpdateSelectionWithGesture:(id)gesture;
@end

@implementation UIWKTextSelectionInteraction

- (void)willUpdateSelectionWithGesture:(id)gesture
{
  _textInput = [-[UITextInteraction _textInput](self _textInput];

  [_textInput willChangeSelection];
}

- (void)didUpdateSelectionWithGesture:(id)gesture
{
  isEditable = [(UIResponder *)[(UITextInteraction *)self view] isEditable];
  v6 = [-[UITextInteraction _textInput](self "_textInput")];
  [gesture location];
  v8 = v7;
  v10 = v9;
  v11 = gestureTypeForGestureRecognizer(gesture, [(UIResponder *)[(UITextInteraction *)self view] isEditable]);
  state = [gesture state];

  [v6 selectionChangedWithGestureAt:v11 withGesture:state withState:isEditable withFlags:{v8, v10}];
}

- (void)twoFingerRangedSelectGesture:(id)gesture
{
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  [(UITextInteraction_AssistantDelegate *)assistantDelegate setFirstResponderIfNecessary];
  [(UITextInteraction_AssistantDelegate *)assistantDelegate setSelectionHighlightMode:0];
  [objc_msgSend(objc_msgSend(gesture "touches")];
  v6 = v5;
  v8 = v7;
  [objc_msgSend(objc_msgSend(gesture "touches")];
  v10 = v9;
  v12 = v11;
  [-[UITextInteraction_AssistantDelegate activeSelection](assistantDelegate "activeSelection")];
  [(UITextInteraction_AssistantDelegate *)assistantDelegate view];
  v13 = objc_opt_respondsToSelector();
  view = [(UITextInteraction_AssistantDelegate *)assistantDelegate view];
  if (v13)
  {
    state = [gesture state];

    [view changeSelectionWithTouchesFrom:11 to:state withGesture:v6 withState:{v8, v10, v12}];
  }

  else if (objc_opt_respondsToSelector())
  {
    view2 = [(UITextInteraction_AssistantDelegate *)assistantDelegate view];
    state2 = [gesture state];

    [view2 setSelectionFromPoint:11 toPoint:state2 gesture:v6 state:{v8, v10, v12}];
  }
}

@end
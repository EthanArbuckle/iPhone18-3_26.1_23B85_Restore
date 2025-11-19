@interface UIWKTextSelectionInteraction
- (void)didUpdateSelectionWithGesture:(id)a3;
- (void)twoFingerRangedSelectGesture:(id)a3;
- (void)willUpdateSelectionWithGesture:(id)a3;
@end

@implementation UIWKTextSelectionInteraction

- (void)willUpdateSelectionWithGesture:(id)a3
{
  v3 = [-[UITextInteraction _textInput](self _textInput];

  [v3 willChangeSelection];
}

- (void)didUpdateSelectionWithGesture:(id)a3
{
  v5 = [(UIResponder *)[(UITextInteraction *)self view] isEditable];
  v6 = [-[UITextInteraction _textInput](self "_textInput")];
  [a3 location];
  v8 = v7;
  v10 = v9;
  v11 = gestureTypeForGestureRecognizer(a3, [(UIResponder *)[(UITextInteraction *)self view] isEditable]);
  v12 = [a3 state];

  [v6 selectionChangedWithGestureAt:v11 withGesture:v12 withState:v5 withFlags:{v8, v10}];
}

- (void)twoFingerRangedSelectGesture:(id)a3
{
  v4 = [(UITextInteraction *)self assistantDelegate];
  [(UITextInteraction_AssistantDelegate *)v4 setFirstResponderIfNecessary];
  [(UITextInteraction_AssistantDelegate *)v4 setSelectionHighlightMode:0];
  [objc_msgSend(objc_msgSend(a3 "touches")];
  v6 = v5;
  v8 = v7;
  [objc_msgSend(objc_msgSend(a3 "touches")];
  v10 = v9;
  v12 = v11;
  [-[UITextInteraction_AssistantDelegate activeSelection](v4 "activeSelection")];
  [(UITextInteraction_AssistantDelegate *)v4 view];
  v13 = objc_opt_respondsToSelector();
  v14 = [(UITextInteraction_AssistantDelegate *)v4 view];
  if (v13)
  {
    v15 = [a3 state];

    [v14 changeSelectionWithTouchesFrom:11 to:v15 withGesture:v6 withState:{v8, v10, v12}];
  }

  else if (objc_opt_respondsToSelector())
  {
    v16 = [(UITextInteraction_AssistantDelegate *)v4 view];
    v17 = [a3 state];

    [v16 setSelectionFromPoint:11 toPoint:v17 gesture:v6 state:{v8, v10, v12}];
  }
}

@end
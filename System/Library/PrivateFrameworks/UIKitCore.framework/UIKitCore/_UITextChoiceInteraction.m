@interface _UITextChoiceInteraction
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)textView;
- (UIView)view;
- (_UITextChoiceInteraction)initWithDelegate:(id)a3;
- (_UITextChoiceInteractionDelegate)delegate;
- (void)createGestureRecognizer;
- (void)didMoveToView:(id)a3;
- (void)tapInteraction:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UITextChoiceInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (_UITextChoiceInteraction)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UITextChoiceInteraction;
  v5 = [(_UITextChoiceInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)willMoveToView:(id)a3
{
  v4 = [(_UITextChoiceInteraction *)self textView];

  if (v4)
  {
    v6 = [(_UITextChoiceInteraction *)self textView];
    v5 = [(_UITextChoiceInteraction *)self underlineTap];
    [v6 removeGestureRecognizer:v5];
  }
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  [(_UITextChoiceInteraction *)self createGestureRecognizer];
  v4 = [(_UITextChoiceInteraction *)self underlineTap];
  [v5 addGestureRecognizer:v4];

  [(_UITextChoiceInteraction *)self setTextView:v5];
}

- (void)createGestureRecognizer
{
  v3 = [(_UITextChoiceInteraction *)self underlineTap];

  if (!v3)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_tapInteraction_];
    [(_UITextChoiceInteraction *)self setUnderlineTap:v4];

    v5 = [(_UITextChoiceInteraction *)self underlineTap];
    [v5 setNumberOfTapsRequired:1];

    v6 = [(_UITextChoiceInteraction *)self underlineTap];
    [v6 setNumberOfTouchesRequired:1];

    v7 = [(_UITextChoiceInteraction *)self underlineTap];
    [v7 setDelegate:self];
  }

  v8 = [(_UITextChoiceInteraction *)self underlineTap];
  [v8 setEnabled:1];
}

- (void)tapInteraction:(id)a3
{
  v6 = a3;
  if ([v6 state] == 3)
  {
    v4 = [(_UITextChoiceInteraction *)self delegate];
    v5 = [(_UITextChoiceInteraction *)self textView];
    [v6 locationInView:v5];
    [v4 textChoiceInteraction:self receivedTapAtLocation:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UITextChoiceInteraction *)self delegate];
  v6 = [(_UITextChoiceInteraction *)self textView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  LOBYTE(self) = [v5 textChoiceInteraction:self shouldRespondToTapAtPoint:{v8, v10}];
  return self;
}

- (_UITextChoiceInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end
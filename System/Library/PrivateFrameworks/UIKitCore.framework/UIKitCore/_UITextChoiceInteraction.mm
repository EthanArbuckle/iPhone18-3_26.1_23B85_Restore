@interface _UITextChoiceInteraction
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)textView;
- (UIView)view;
- (_UITextChoiceInteraction)initWithDelegate:(id)delegate;
- (_UITextChoiceInteractionDelegate)delegate;
- (void)createGestureRecognizer;
- (void)didMoveToView:(id)view;
- (void)tapInteraction:(id)interaction;
- (void)willMoveToView:(id)view;
@end

@implementation _UITextChoiceInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (_UITextChoiceInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _UITextChoiceInteraction;
  v5 = [(_UITextChoiceInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)willMoveToView:(id)view
{
  textView = [(_UITextChoiceInteraction *)self textView];

  if (textView)
  {
    textView2 = [(_UITextChoiceInteraction *)self textView];
    underlineTap = [(_UITextChoiceInteraction *)self underlineTap];
    [textView2 removeGestureRecognizer:underlineTap];
  }
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  [(_UITextChoiceInteraction *)self createGestureRecognizer];
  underlineTap = [(_UITextChoiceInteraction *)self underlineTap];
  [viewCopy addGestureRecognizer:underlineTap];

  [(_UITextChoiceInteraction *)self setTextView:viewCopy];
}

- (void)createGestureRecognizer
{
  underlineTap = [(_UITextChoiceInteraction *)self underlineTap];

  if (!underlineTap)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_tapInteraction_];
    [(_UITextChoiceInteraction *)self setUnderlineTap:v4];

    underlineTap2 = [(_UITextChoiceInteraction *)self underlineTap];
    [underlineTap2 setNumberOfTapsRequired:1];

    underlineTap3 = [(_UITextChoiceInteraction *)self underlineTap];
    [underlineTap3 setNumberOfTouchesRequired:1];

    underlineTap4 = [(_UITextChoiceInteraction *)self underlineTap];
    [underlineTap4 setDelegate:self];
  }

  underlineTap5 = [(_UITextChoiceInteraction *)self underlineTap];
  [underlineTap5 setEnabled:1];
}

- (void)tapInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([interactionCopy state] == 3)
  {
    delegate = [(_UITextChoiceInteraction *)self delegate];
    textView = [(_UITextChoiceInteraction *)self textView];
    [interactionCopy locationInView:textView];
    [delegate textChoiceInteraction:self receivedTapAtLocation:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  delegate = [(_UITextChoiceInteraction *)self delegate];
  textView = [(_UITextChoiceInteraction *)self textView];
  [beginCopy locationInView:textView];
  v8 = v7;
  v10 = v9;

  LOBYTE(self) = [delegate textChoiceInteraction:self shouldRespondToTapAtPoint:{v8, v10}];
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
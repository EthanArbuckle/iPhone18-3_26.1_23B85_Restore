@interface _UITextPasteSession
- (UITextPasteController)controller;
- (UITextPasteSessionDelegate)delegate;
- (id)positionedPasteResult;
- (void)animationCompleted;
- (void)animationStarted;
@end

@implementation _UITextPasteSession

- (id)positionedPasteResult
{
  v3 = [(_UITextPasteSession *)self pasteResult];
  if (v3)
  {
    v4 = [(_UITextPasteSession *)self pasteResult];
    v5 = [(_UITextPasteSession *)self range];
    v6 = [v5 start];
    v7 = [_UIPositionedAttributedString attributedString:v4 atPosition:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)animationStarted
{
  v3 = [(_UITextPasteSession *)self hiddenRange];

  if (!v3)
  {
    self->_animating = 1;
  }
}

- (void)animationCompleted
{
  if (self->_animating)
  {
    self->_animating = 0;
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [WeakRetained _restorePasteResultForSession:self];
  }
}

- (UITextPasteSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UITextPasteController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end
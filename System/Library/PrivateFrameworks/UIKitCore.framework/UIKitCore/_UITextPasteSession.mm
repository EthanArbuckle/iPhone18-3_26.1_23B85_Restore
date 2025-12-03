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
  pasteResult = [(_UITextPasteSession *)self pasteResult];
  if (pasteResult)
  {
    pasteResult2 = [(_UITextPasteSession *)self pasteResult];
    range = [(_UITextPasteSession *)self range];
    start = [range start];
    v7 = [_UIPositionedAttributedString attributedString:pasteResult2 atPosition:start];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)animationStarted
{
  hiddenRange = [(_UITextPasteSession *)self hiddenRange];

  if (!hiddenRange)
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
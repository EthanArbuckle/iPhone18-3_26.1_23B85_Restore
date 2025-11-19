@interface _UIPreviewInteractionViewControllerPresentation
- (UIView)customViewForTouchContinuation;
- (_UIPreviewInteractionViewControllerPresentation)initWithViewController:(id)a3;
- (void)_completeViewControllerPresentationImmediately;
- (void)presentViewController;
@end

@implementation _UIPreviewInteractionViewControllerPresentation

- (_UIPreviewInteractionViewControllerPresentation)initWithViewController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UIPreviewInteractionViewControllerPresentation;
  v6 = [(_UIPreviewInteractionViewControllerPresentation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, a3);
    v7->_shouldUseCATransitions = 1;
    *&v7->_shouldUpdateFromViewBeforePresentation = 256;
    v8 = v7;
  }

  return v7;
}

- (void)presentViewController
{
  privatePresentationBlock = self->_privatePresentationBlock;
  if (privatePresentationBlock)
  {
    privatePresentationBlock[2]();
  }
}

- (void)_completeViewControllerPresentationImmediately
{
  privatePresentationCompletionBlock = self->_privatePresentationCompletionBlock;
  if (privatePresentationCompletionBlock)
  {
    privatePresentationCompletionBlock[2](privatePresentationCompletionBlock, 1);
  }
}

- (UIView)customViewForTouchContinuation
{
  WeakRetained = objc_loadWeakRetained(&self->_customViewForTouchContinuation);

  return WeakRetained;
}

@end
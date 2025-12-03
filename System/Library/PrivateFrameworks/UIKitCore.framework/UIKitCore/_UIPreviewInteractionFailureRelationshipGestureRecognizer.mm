@interface _UIPreviewInteractionFailureRelationshipGestureRecognizer
- (UIPreviewInteraction)previewInteraction;
- (_UIPreviewInteractionFailureRelationshipGestureRecognizer)initWithPreviewInteraction:(id)interaction;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIPreviewInteractionFailureRelationshipGestureRecognizer

- (_UIPreviewInteractionFailureRelationshipGestureRecognizer)initWithPreviewInteraction:(id)interaction
{
  interactionCopy = interaction;
  v9.receiver = self;
  v9.super_class = _UIPreviewInteractionFailureRelationshipGestureRecognizer;
  v5 = [(UIGestureRecognizer *)&v9 initWithTarget:0 action:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_previewInteraction, interactionCopy);
    [(_UIPreviewInteractionFailureRelationshipGestureRecognizer *)v6 setDelegate:v6];
    v7 = v6;
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionFailureRelationshipGestureRecognizer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"delegate == self"}];
  }

  v7.receiver = self;
  v7.super_class = _UIPreviewInteractionFailureRelationshipGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setDelegate:delegateCopy];
}

- (void)_gestureRecognizerFailed:(id)failed
{
  WeakRetained = objc_loadWeakRetained(&self->_previewInteraction);
  [WeakRetained cancelInteraction];
}

- (UIPreviewInteraction)previewInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_previewInteraction);

  return WeakRetained;
}

@end
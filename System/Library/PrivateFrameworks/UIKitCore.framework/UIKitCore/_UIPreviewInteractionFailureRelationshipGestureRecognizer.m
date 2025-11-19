@interface _UIPreviewInteractionFailureRelationshipGestureRecognizer
- (UIPreviewInteraction)previewInteraction;
- (_UIPreviewInteractionFailureRelationshipGestureRecognizer)initWithPreviewInteraction:(id)a3;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation _UIPreviewInteractionFailureRelationshipGestureRecognizer

- (_UIPreviewInteractionFailureRelationshipGestureRecognizer)initWithPreviewInteraction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIPreviewInteractionFailureRelationshipGestureRecognizer;
  v5 = [(UIGestureRecognizer *)&v9 initWithTarget:0 action:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_previewInteraction, v4);
    [(_UIPreviewInteractionFailureRelationshipGestureRecognizer *)v6 setDelegate:v6];
    v7 = v6;
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  if (v5 != self)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionFailureRelationshipGestureRecognizer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"delegate == self"}];
  }

  v7.receiver = self;
  v7.super_class = _UIPreviewInteractionFailureRelationshipGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setDelegate:v5];
}

- (void)_gestureRecognizerFailed:(id)a3
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
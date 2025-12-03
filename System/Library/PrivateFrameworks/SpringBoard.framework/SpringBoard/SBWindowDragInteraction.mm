@interface SBWindowDragInteraction
- (CGPoint)_locationInView:(id)view;
- (SBAppPlatterDragSourceViewProviding)sourceViewProvider;
- (SBWindowDragInteraction)initWithDelegate:(id)delegate gestureRecognizer:(id)recognizer;
- (UIGestureRecognizer)gestureRecognizer;
@end

@implementation SBWindowDragInteraction

- (SBWindowDragInteraction)initWithDelegate:(id)delegate gestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v10.receiver = self;
  v10.super_class = SBWindowDragInteraction;
  v7 = [(UIDragInteraction *)&v10 initWithDelegate:delegate];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_gestureRecognizer, recognizerCopy);
  }

  return v8;
}

- (CGPoint)_locationInView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizer);
  [WeakRetained locationInView:viewCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (UIGestureRecognizer)gestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizer);

  return WeakRetained;
}

- (SBAppPlatterDragSourceViewProviding)sourceViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceViewProvider);

  return WeakRetained;
}

@end
@interface SBWindowDragInteraction
- (CGPoint)_locationInView:(id)a3;
- (SBAppPlatterDragSourceViewProviding)sourceViewProvider;
- (SBWindowDragInteraction)initWithDelegate:(id)a3 gestureRecognizer:(id)a4;
- (UIGestureRecognizer)gestureRecognizer;
@end

@implementation SBWindowDragInteraction

- (SBWindowDragInteraction)initWithDelegate:(id)a3 gestureRecognizer:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBWindowDragInteraction;
  v7 = [(UIDragInteraction *)&v10 initWithDelegate:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_gestureRecognizer, v6);
  }

  return v8;
}

- (CGPoint)_locationInView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizer);
  [WeakRetained locationInView:v4];
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
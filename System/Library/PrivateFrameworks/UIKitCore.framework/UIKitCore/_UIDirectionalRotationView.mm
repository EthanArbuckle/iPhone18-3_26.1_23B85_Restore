@interface _UIDirectionalRotationView
- (BOOL)isCounterTransformView;
- (BOOL)isInverseTransformView;
- (void)setCounterTransformView:(BOOL)view;
- (void)setInverseTransformView:(BOOL)view;
@end

@implementation _UIDirectionalRotationView

- (BOOL)isCounterTransformView
{
  drLayer = [(_UIDirectionalRotationView *)self drLayer];
  isCounterTransformLayer = [drLayer isCounterTransformLayer];

  return isCounterTransformLayer;
}

- (BOOL)isInverseTransformView
{
  drLayer = [(_UIDirectionalRotationView *)self drLayer];
  isInverseTransformLayer = [drLayer isInverseTransformLayer];

  return isInverseTransformLayer;
}

- (void)setCounterTransformView:(BOOL)view
{
  viewCopy = view;
  drLayer = [(_UIDirectionalRotationView *)self drLayer];
  [drLayer setCounterTransformLayer:viewCopy];
}

- (void)setInverseTransformView:(BOOL)view
{
  viewCopy = view;
  drLayer = [(_UIDirectionalRotationView *)self drLayer];
  [drLayer setInverseTransformLayer:viewCopy];
}

@end
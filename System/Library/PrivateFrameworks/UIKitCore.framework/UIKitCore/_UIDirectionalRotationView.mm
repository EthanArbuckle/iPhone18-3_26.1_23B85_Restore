@interface _UIDirectionalRotationView
- (BOOL)isCounterTransformView;
- (BOOL)isInverseTransformView;
- (void)setCounterTransformView:(BOOL)a3;
- (void)setInverseTransformView:(BOOL)a3;
@end

@implementation _UIDirectionalRotationView

- (BOOL)isCounterTransformView
{
  v2 = [(_UIDirectionalRotationView *)self drLayer];
  v3 = [v2 isCounterTransformLayer];

  return v3;
}

- (BOOL)isInverseTransformView
{
  v2 = [(_UIDirectionalRotationView *)self drLayer];
  v3 = [v2 isInverseTransformLayer];

  return v3;
}

- (void)setCounterTransformView:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIDirectionalRotationView *)self drLayer];
  [v4 setCounterTransformLayer:v3];
}

- (void)setInverseTransformView:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIDirectionalRotationView *)self drLayer];
  [v4 setInverseTransformLayer:v3];
}

@end
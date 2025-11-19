@interface _UIHyperPinchGesture
- (UIPinchGestureRecognizer)_pinchGestureRecognizer;
- (_UIHyperPinchGesture)init;
- (_UIHyperPinchGesture)initWithInteractor:(id)a3;
- (void)_getCurrentTranslation:(double *)a3;
- (void)_getCurrentVelocity:(double *)a3;
- (void)_setPinchGestureRecognizer:(id)a3;
@end

@implementation _UIHyperPinchGesture

- (_UIHyperPinchGesture)init
{
  v3 = [[_UIHyperInteractor alloc] initWithDimensions:1];
  [(_UIHyperInteractor *)v3 _minimumSpeed];
  [(_UIHyperInteractor *)v3 _setMinimumSpeed:v4 / 100.0];
  v5 = [[_UIHyperConstantExtender alloc] initWithDimensions:1];
  [(_UIHyperConstantExtender *)v5 _maximumDistance];
  [(_UIHyperConstantExtender *)v5 _setMaximumDistance:v6 / 100.0];
  [(_UIHyperInteractor *)v3 _setExtender:v5];
  v7 = [(_UIHyperPinchGesture *)self initWithInteractor:v3];

  return v7;
}

- (_UIHyperPinchGesture)initWithInteractor:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIHyperPinchGesture;
  result = [(_UIHyperGesture *)&v4 initWithInteractor:a3];
  if (result)
  {
    result->__multiplier = 1.0;
  }

  return result;
}

- (UIPinchGestureRecognizer)_pinchGestureRecognizer
{
  pinchGestureRecognizer = self->__pinchGestureRecognizer;
  if (!pinchGestureRecognizer)
  {
    v4 = objc_alloc_init(UIPinchGestureRecognizer);
    [(_UIHyperPinchGesture *)self _setPinchGestureRecognizer:v4];

    pinchGestureRecognizer = self->__pinchGestureRecognizer;
  }

  return pinchGestureRecognizer;
}

- (void)_setPinchGestureRecognizer:(id)a3
{
  v7 = a3;
  pinchGestureRecognizer = self->__pinchGestureRecognizer;
  if (pinchGestureRecognizer)
  {
    [(UIGestureRecognizer *)pinchGestureRecognizer removeTarget:self action:sel__handleGesture_];
  }

  objc_storeStrong(&self->__pinchGestureRecognizer, a3);
  v6 = self->__pinchGestureRecognizer;
  if (v6)
  {
    [(UIGestureRecognizer *)v6 addTarget:self action:sel__handleGesture_];
  }
}

- (void)_getCurrentTranslation:(double *)a3
{
  v6 = [(_UIHyperGesture *)self _interactor];
  v7 = [v6 _dimensions];

  if (v7 != 1)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIHyperGesture.m" lineNumber:217 description:@"_UIHyperPinchGesture must be used with an interactor of 1 dimension."];
  }

  v8 = [(_UIHyperPinchGesture *)self _pinchGestureRecognizer];
  [v8 scale];
  v10 = v9;

  [(_UIHyperPinchGesture *)self _multiplier];
  *a3 = log2(v10) * v11;
}

- (void)_getCurrentVelocity:(double *)a3
{
  v6 = [(_UIHyperGesture *)self _interactor];
  v7 = [v6 _dimensions];

  if (v7 != 1)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIHyperGesture.m" lineNumber:226 description:@"_UIHyperPinchGesture must be used with an interactor of 1 dimension."];
  }

  v8 = [(_UIHyperPinchGesture *)self _pinchGestureRecognizer];
  [v8 scale];
  v10 = v9;

  [(_UIHyperPinchGesture *)self _multiplier];
  v12 = v11 / (v10 * 0.693147181);
  v15 = [(_UIHyperPinchGesture *)self _pinchGestureRecognizer];
  [v15 velocity];
  *a3 = v12 * v13;
}

@end
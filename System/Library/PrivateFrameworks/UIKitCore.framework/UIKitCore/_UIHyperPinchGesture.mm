@interface _UIHyperPinchGesture
- (UIPinchGestureRecognizer)_pinchGestureRecognizer;
- (_UIHyperPinchGesture)init;
- (_UIHyperPinchGesture)initWithInteractor:(id)interactor;
- (void)_getCurrentTranslation:(double *)translation;
- (void)_getCurrentVelocity:(double *)velocity;
- (void)_setPinchGestureRecognizer:(id)recognizer;
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

- (_UIHyperPinchGesture)initWithInteractor:(id)interactor
{
  v4.receiver = self;
  v4.super_class = _UIHyperPinchGesture;
  result = [(_UIHyperGesture *)&v4 initWithInteractor:interactor];
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

- (void)_setPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  pinchGestureRecognizer = self->__pinchGestureRecognizer;
  if (pinchGestureRecognizer)
  {
    [(UIGestureRecognizer *)pinchGestureRecognizer removeTarget:self action:sel__handleGesture_];
  }

  objc_storeStrong(&self->__pinchGestureRecognizer, recognizer);
  v6 = self->__pinchGestureRecognizer;
  if (v6)
  {
    [(UIGestureRecognizer *)v6 addTarget:self action:sel__handleGesture_];
  }
}

- (void)_getCurrentTranslation:(double *)translation
{
  _interactor = [(_UIHyperGesture *)self _interactor];
  _dimensions = [_interactor _dimensions];

  if (_dimensions != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperGesture.m" lineNumber:217 description:@"_UIHyperPinchGesture must be used with an interactor of 1 dimension."];
  }

  _pinchGestureRecognizer = [(_UIHyperPinchGesture *)self _pinchGestureRecognizer];
  [_pinchGestureRecognizer scale];
  v10 = v9;

  [(_UIHyperPinchGesture *)self _multiplier];
  *translation = log2(v10) * v11;
}

- (void)_getCurrentVelocity:(double *)velocity
{
  _interactor = [(_UIHyperGesture *)self _interactor];
  _dimensions = [_interactor _dimensions];

  if (_dimensions != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperGesture.m" lineNumber:226 description:@"_UIHyperPinchGesture must be used with an interactor of 1 dimension."];
  }

  _pinchGestureRecognizer = [(_UIHyperPinchGesture *)self _pinchGestureRecognizer];
  [_pinchGestureRecognizer scale];
  v10 = v9;

  [(_UIHyperPinchGesture *)self _multiplier];
  v12 = v11 / (v10 * 0.693147181);
  _pinchGestureRecognizer2 = [(_UIHyperPinchGesture *)self _pinchGestureRecognizer];
  [_pinchGestureRecognizer2 velocity];
  *velocity = v12 * v13;
}

@end
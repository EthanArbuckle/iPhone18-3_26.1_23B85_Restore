@interface _UIHyperPanGesture
- (UIPanGestureRecognizer)_panGestureRecognizer;
- (_UIHyperPanGesture)initWithAxes:(unint64_t)axes;
- (_UIHyperPanGesture)initWithInteractor:(id)interactor;
- (void)_getCurrentTranslation:(double *)translation;
- (void)_getCurrentVelocity:(double *)velocity;
- (void)_setPanGestureRecognizer:(id)recognizer;
@end

@implementation _UIHyperPanGesture

- (_UIHyperPanGesture)initWithAxes:(unint64_t)axes
{
  v5 = [_UIHyperInteractor alloc];
  v6 = vcnt_s8(axes);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = [(_UIHyperInteractor *)v5 initWithDimensions:v6.u32[0]];
  v8 = [(_UIHyperPanGesture *)self initWithInteractor:v7];

  if (v8)
  {
    [(_UIHyperPanGesture *)v8 _setAxes:axes];
  }

  return v8;
}

- (_UIHyperPanGesture)initWithInteractor:(id)interactor
{
  v4.receiver = self;
  v4.super_class = _UIHyperPanGesture;
  result = [(_UIHyperGesture *)&v4 initWithInteractor:interactor];
  if (result)
  {
    result->__axes = 3;
    result->__multiplier = 1.0;
  }

  return result;
}

- (UIPanGestureRecognizer)_panGestureRecognizer
{
  panGestureRecognizer = self->__panGestureRecognizer;
  if (!panGestureRecognizer)
  {
    v4 = objc_alloc_init(UIPanGestureRecognizer);
    [(_UIHyperPanGesture *)self _setPanGestureRecognizer:v4];

    panGestureRecognizer = self->__panGestureRecognizer;
  }

  return panGestureRecognizer;
}

- (void)_setPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  panGestureRecognizer = self->__panGestureRecognizer;
  if (panGestureRecognizer)
  {
    [(UIGestureRecognizer *)panGestureRecognizer removeTarget:self action:sel__handleGesture_];
  }

  objc_storeStrong(&self->__panGestureRecognizer, recognizer);
  v6 = self->__panGestureRecognizer;
  if (v6)
  {
    [(UIGestureRecognizer *)v6 addTarget:self action:sel__handleGesture_];
  }
}

- (void)_getCurrentTranslation:(double *)translation
{
  _panGestureRecognizer = [(_UIHyperPanGesture *)self _panGestureRecognizer];
  [_panGestureRecognizer translationInView:0];
  v8 = v7;
  v10 = v9;

  _axes = [(_UIHyperPanGesture *)self _axes];
  [(_UIHyperPanGesture *)self _multiplier];
  v13 = v12;
  _interactor = [(_UIHyperGesture *)self _interactor];
  _dimensions = [_interactor _dimensions];
  v16 = vcnt_s8(_axes);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];

  if (_dimensions == v17)
  {
    if ((_axes & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    *translation = v8 * v13;
    v18 = 1;
    if ((_axes & 2) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperGesture.m" lineNumber:136 description:{@"_UIHyperPanGesture must be used with an interactor of dimensionality compatible with axes (%lu).", _axes}];

  if (_axes)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = 0;
  if ((_axes & 2) != 0)
  {
LABEL_7:
    translation[v18] = v10 * v13;
  }
}

- (void)_getCurrentVelocity:(double *)velocity
{
  _panGestureRecognizer = [(_UIHyperPanGesture *)self _panGestureRecognizer];
  [_panGestureRecognizer velocityInView:0];
  v8 = v7;
  v10 = v9;

  _axes = [(_UIHyperPanGesture *)self _axes];
  [(_UIHyperPanGesture *)self _multiplier];
  v13 = v12;
  _interactor = [(_UIHyperGesture *)self _interactor];
  _dimensions = [_interactor _dimensions];
  v16 = vcnt_s8(_axes);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];

  if (_dimensions == v17)
  {
    if ((_axes & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    *velocity = v8 * v13;
    v18 = 1;
    if ((_axes & 2) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHyperGesture.m" lineNumber:155 description:{@"_UIHyperPanGesture must be used with an interactor of dimensionality compatible with axes (%lu).", _axes}];

  if (_axes)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = 0;
  if ((_axes & 2) != 0)
  {
LABEL_7:
    velocity[v18] = v10 * v13;
  }
}

@end
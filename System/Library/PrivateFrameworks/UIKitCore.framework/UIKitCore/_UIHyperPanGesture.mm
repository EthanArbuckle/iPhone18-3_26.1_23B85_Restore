@interface _UIHyperPanGesture
- (UIPanGestureRecognizer)_panGestureRecognizer;
- (_UIHyperPanGesture)initWithAxes:(unint64_t)a3;
- (_UIHyperPanGesture)initWithInteractor:(id)a3;
- (void)_getCurrentTranslation:(double *)a3;
- (void)_getCurrentVelocity:(double *)a3;
- (void)_setPanGestureRecognizer:(id)a3;
@end

@implementation _UIHyperPanGesture

- (_UIHyperPanGesture)initWithAxes:(unint64_t)a3
{
  v5 = [_UIHyperInteractor alloc];
  v6 = vcnt_s8(a3);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = [(_UIHyperInteractor *)v5 initWithDimensions:v6.u32[0]];
  v8 = [(_UIHyperPanGesture *)self initWithInteractor:v7];

  if (v8)
  {
    [(_UIHyperPanGesture *)v8 _setAxes:a3];
  }

  return v8;
}

- (_UIHyperPanGesture)initWithInteractor:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIHyperPanGesture;
  result = [(_UIHyperGesture *)&v4 initWithInteractor:a3];
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

- (void)_setPanGestureRecognizer:(id)a3
{
  v7 = a3;
  panGestureRecognizer = self->__panGestureRecognizer;
  if (panGestureRecognizer)
  {
    [(UIGestureRecognizer *)panGestureRecognizer removeTarget:self action:sel__handleGesture_];
  }

  objc_storeStrong(&self->__panGestureRecognizer, a3);
  v6 = self->__panGestureRecognizer;
  if (v6)
  {
    [(UIGestureRecognizer *)v6 addTarget:self action:sel__handleGesture_];
  }
}

- (void)_getCurrentTranslation:(double *)a3
{
  v6 = [(_UIHyperPanGesture *)self _panGestureRecognizer];
  [v6 translationInView:0];
  v8 = v7;
  v10 = v9;

  v11 = [(_UIHyperPanGesture *)self _axes];
  [(_UIHyperPanGesture *)self _multiplier];
  v13 = v12;
  v14 = [(_UIHyperGesture *)self _interactor];
  v15 = [v14 _dimensions];
  v16 = vcnt_s8(v11);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];

  if (v15 == v17)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a3 = v8 * v13;
    v18 = 1;
    if ((v11 & 2) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"_UIHyperGesture.m" lineNumber:136 description:{@"_UIHyperPanGesture must be used with an interactor of dimensionality compatible with axes (%lu).", v11}];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = 0;
  if ((v11 & 2) != 0)
  {
LABEL_7:
    a3[v18] = v10 * v13;
  }
}

- (void)_getCurrentVelocity:(double *)a3
{
  v6 = [(_UIHyperPanGesture *)self _panGestureRecognizer];
  [v6 velocityInView:0];
  v8 = v7;
  v10 = v9;

  v11 = [(_UIHyperPanGesture *)self _axes];
  [(_UIHyperPanGesture *)self _multiplier];
  v13 = v12;
  v14 = [(_UIHyperGesture *)self _interactor];
  v15 = [v14 _dimensions];
  v16 = vcnt_s8(v11);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];

  if (v15 == v17)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a3 = v8 * v13;
    v18 = 1;
    if ((v11 & 2) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"_UIHyperGesture.m" lineNumber:155 description:{@"_UIHyperPanGesture must be used with an interactor of dimensionality compatible with axes (%lu).", v11}];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = 0;
  if ((v11 & 2) != 0)
  {
LABEL_7:
    a3[v18] = v10 * v13;
  }
}

@end
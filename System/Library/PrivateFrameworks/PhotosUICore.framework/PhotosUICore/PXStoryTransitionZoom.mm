@interface PXStoryTransitionZoom
- (PXStoryTransitionZoom)initWithTransitionInfo:(id *)a3 effect:(id)a4;
- (PXStoryTransitionZoom)initWithTransitionInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5;
- (double)clipAlphaForTime:(id *)a3;
- (void)_configureWithTransitionInfo:(id *)a3;
- (void)configureEffectForTime:(id *)a3;
- (void)timeDidChange;
- (void)wasStopped;
@end

@implementation PXStoryTransitionZoom

- (void)configureEffectForTime:(id *)a3
{
  v6 = [(PXStoryConcreteTransition *)self effect];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    v11 = [v6 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:1030 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.effect", v9, v11}];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:1030 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.effect", v9}];
  }

LABEL_3:
  +[PXStoryTransitionsSettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
  time = *a3;
  CMTimeGetSeconds(&time);
  [(PXStoryConcreteTransition *)self duration];
  time = v12;
  CMTimeGetSeconds(&time);
  PXClamp();
}

- (void)wasStopped
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(PXStoryConcreteTransition *)self clipLayouts];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        LODWORD(v5) = 1.0;
        [*(*(&v10 + 1) + 8 * v8++) setContentScale:v5];
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = PXStoryTransitionZoom;
  [(PXStoryConcreteTransition *)&v9 wasStopped];
}

- (void)timeDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  [(PXStoryConcreteTransition *)self clipLayouts];
  if (objc_claimAutoreleasedReturnValue())
  {
    [(PXStoryAnimation *)self time];
    time = v15;
    Seconds = CMTimeGetSeconds(&time);
    [(PXStoryConcreteTransition *)self duration];
    time = v15;
    v5 = CMTimeGetSeconds(&time);
    zoomingOut = self->_zoomingOut;
    v7 = [(PXStoryConcreteTransition *)self event];
    if (zoomingOut)
    {
      if (!v7)
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = v8;
        v10 = a2;
        v11 = self;
        v12 = 995;
        goto LABEL_7;
      }
    }

    else if (!v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = v8;
      v10 = a2;
      v11 = self;
      v12 = 1009;
LABEL_7:
      [v8 handleFailureInMethod:v10 object:v11 file:@"PXStoryTransition.m" lineNumber:v12 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v13 = Seconds / v5;
    *&v13 = Seconds / v5;
    [(CAMediaTimingFunction *)self->_animationCurve _solveForInput:v13];
    PXFloatByLinearlyInterpolatingFloats();
  }

  v14.receiver = self;
  v14.super_class = PXStoryTransitionZoom;
  [(PXStoryConcreteTransition *)&v14 timeDidChange];
}

- (double)clipAlphaForTime:(id *)a3
{
  v5 = +[PXStoryTransitionsSettings sharedInstance];
  [v5 scaleTransitionBlurMidpoint];
  v7 = v6;
  v8 = [(PXStoryConcreteTransition *)self event];
  if (v8 == 1)
  {
    LODWORD(v9) = 1.0;
    if (v7 > 0.0)
    {
      [(PXStoryConcreteTransition *)self progress];
      PXClamp();
    }

    v10 = 1.0;
    if (!self->_zoomingOut)
    {
      [(CAMediaTimingFunction *)self->_animationCurve _solveForInput:v9];
      v10 = v12;
    }
  }

  else if (v8 == 2)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
    if (!v8)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:965 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return v10;
}

- (void)_configureWithTransitionInfo:(id *)a3
{
  if (!BYTE5(a3->var2.var3))
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:951 description:{@"Invalid parameter not satisfying: %@", @"transitionInfo.scaleDirection != PXStoryScaleDirectionUndefined"}];
  }

  v8 = *&a3->var3;
  *&v8 = v8;
  self->_scaleRelativeFactor = *&v8;
  self->_zoomingOut = BYTE5(a3->var2.var3) == 2;
  LODWORD(v8) = 1045220557;
  LODWORD(v3) = 1051931443;
  LODWORD(v5) = 1.0;
  LODWORD(v4) = 1042536202;
  v9 = [MEMORY[0x1E69793D0] functionWithControlPoints:v8 :v3 :v4 :v5];
  animationCurve = self->_animationCurve;
  self->_animationCurve = v9;

  LODWORD(v11) = 1.0;
  LODWORD(v12) = 1.0;
  LODWORD(v13) = 1042536202;
  v14 = [MEMORY[0x1E69793D0] functionWithControlPoints:v13 :0.0 :v11 :v12];
  effectCurveBeforeMidpoint = self->_effectCurveBeforeMidpoint;
  self->_effectCurveBeforeMidpoint = v14;

  LODWORD(v16) = 1059648963;
  LODWORD(v17) = 1.0;
  v18 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v16 :v17];
  effectCurveAfterMidpoint = self->_effectCurveAfterMidpoint;
  self->_effectCurveAfterMidpoint = v18;
}

- (PXStoryTransitionZoom)initWithTransitionInfo:(id *)a3 effect:(id)a4
{
  v8 = *(&a3->var1 + 3);
  *&v9 = *&a3->var2.var2;
  v5 = [(PXStoryConcreteTransition *)self initWithKind:6 duration:&v8 effect:a4];
  v6 = *&a3->var2.var1;
  v8 = *&a3->var0;
  v9 = v6;
  v10 = *&a3->var3;
  [(PXStoryTransitionZoom *)v5 _configureWithTransitionInfo:&v8];
  return v5;
}

- (PXStoryTransitionZoom)initWithTransitionInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5
{
  v9 = *(&a3->var1 + 3);
  *&v10 = *&a3->var2.var2;
  v6 = [(PXStoryConcreteTransition *)self initWithKind:6 duration:&v9 event:a4 clipLayouts:a5];
  v7 = *&a3->var2.var1;
  v9 = *&a3->var0;
  v10 = v7;
  v11 = *&a3->var3;
  [(PXStoryTransitionZoom *)v6 _configureWithTransitionInfo:&v9];
  return v6;
}

@end
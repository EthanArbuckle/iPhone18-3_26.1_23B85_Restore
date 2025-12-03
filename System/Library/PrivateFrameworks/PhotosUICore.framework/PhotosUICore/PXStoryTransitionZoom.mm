@interface PXStoryTransitionZoom
- (PXStoryTransitionZoom)initWithTransitionInfo:(id *)info effect:(id)effect;
- (PXStoryTransitionZoom)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts;
- (double)clipAlphaForTime:(id *)time;
- (void)_configureWithTransitionInfo:(id *)info;
- (void)configureEffectForTime:(id *)time;
- (void)timeDidChange;
- (void)wasStopped;
@end

@implementation PXStoryTransitionZoom

- (void)configureEffectForTime:(id *)time
{
  effect = [(PXStoryConcreteTransition *)self effect];
  if (effect)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    px_descriptionForAssertionMessage = [effect px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:1030 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.effect", v9, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:1030 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.effect", v9}];
  }

LABEL_3:
  +[PXStoryTransitionsSettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
  time = *time;
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
  clipLayouts = [(PXStoryConcreteTransition *)self clipLayouts];
  v4 = [clipLayouts countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(clipLayouts);
        }

        LODWORD(v5) = 1.0;
        [*(*(&v10 + 1) + 8 * v8++) setContentScale:v5];
      }

      while (v6 != v8);
      v6 = [clipLayouts countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    event = [(PXStoryConcreteTransition *)self event];
    if (zoomingOut)
    {
      if (!event)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = currentHandler;
        v10 = a2;
        selfCopy2 = self;
        v12 = 995;
        goto LABEL_7;
      }
    }

    else if (!event)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = currentHandler;
      v10 = a2;
      selfCopy2 = self;
      v12 = 1009;
LABEL_7:
      [currentHandler handleFailureInMethod:v10 object:selfCopy2 file:@"PXStoryTransition.m" lineNumber:v12 description:@"Code which should be unreachable has been reached"];

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

- (double)clipAlphaForTime:(id *)time
{
  v5 = +[PXStoryTransitionsSettings sharedInstance];
  [v5 scaleTransitionBlurMidpoint];
  v7 = v6;
  event = [(PXStoryConcreteTransition *)self event];
  if (event == 1)
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

  else if (event == 2)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
    if (!event)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:965 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return v10;
}

- (void)_configureWithTransitionInfo:(id *)info
{
  if (!BYTE5(info->var2.var3))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:951 description:{@"Invalid parameter not satisfying: %@", @"transitionInfo.scaleDirection != PXStoryScaleDirectionUndefined"}];
  }

  v8 = *&info->var3;
  *&v8 = v8;
  self->_scaleRelativeFactor = *&v8;
  self->_zoomingOut = BYTE5(info->var2.var3) == 2;
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

- (PXStoryTransitionZoom)initWithTransitionInfo:(id *)info effect:(id)effect
{
  v8 = *(&info->var1 + 3);
  *&v9 = *&info->var2.var2;
  v5 = [(PXStoryConcreteTransition *)self initWithKind:6 duration:&v8 effect:effect];
  v6 = *&info->var2.var1;
  v8 = *&info->var0;
  v9 = v6;
  v10 = *&info->var3;
  [(PXStoryTransitionZoom *)v5 _configureWithTransitionInfo:&v8];
  return v5;
}

- (PXStoryTransitionZoom)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts
{
  v9 = *(&info->var1 + 3);
  *&v10 = *&info->var2.var2;
  v6 = [(PXStoryConcreteTransition *)self initWithKind:6 duration:&v9 event:event clipLayouts:layouts];
  v7 = *&info->var2.var1;
  v9 = *&info->var0;
  v10 = v7;
  v11 = *&info->var3;
  [(PXStoryTransitionZoom *)v6 _configureWithTransitionInfo:&v9];
  return v6;
}

@end
@interface PXStoryTransitionExposureBleed
- (PXStoryTransitionExposureBleed)initWithTransitionInfo:(id *)info effect:(id)effect;
- (PXStoryTransitionExposureBleed)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts;
- (double)clipAlphaForTime:(id *)time;
- (void)configureEffectForTime:(id *)time;
@end

@implementation PXStoryTransitionExposureBleed

- (void)configureEffectForTime:(id *)time
{
  +[PXStoryTransitionsSettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:347 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.effect", v9, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:347 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.effect", v9}];
  }

LABEL_3:
  time = *time;
  CMTimeGetSeconds(&time);
  [(PXStoryConcreteTransition *)self duration];
  time = v12;
  CMTimeGetSeconds(&time);
  PXClamp();
}

- (double)clipAlphaForTime:(id *)time
{
  [(PXStoryConcreteTransition *)self duration];
  time = v12;
  if (CMTimeGetSeconds(&time) > 0.0)
  {
    time = *time;
    CMTimeGetSeconds(&time);
    PXClamp();
  }

  v6 = +[PXStoryTransitionsSettings sharedInstance];
  [v6 exposureBleedTransitionMidpoint];
  v8 = v7;

  event = [(PXStoryConcreteTransition *)self event];
  if (event == 1)
  {
    result = 0.0;
    if (v8 <= 1.0)
    {
      return 1.0;
    }
  }

  else if (event == 2)
  {
    result = 0.0;
    if (v8 > 1.0)
    {
      return 1.0;
    }
  }

  else
  {
    result = 0.0;
    if (!event)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:331 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return result;
}

- (PXStoryTransitionExposureBleed)initWithTransitionInfo:(id *)info effect:(id)effect
{
  v11 = *(&info->var1 + 3);
  v12 = *&info->var2.var2;
  v4 = [(PXStoryConcreteTransition *)self initWithKind:4 duration:&v11 effect:effect];
  LODWORD(v5) = 1050253722;
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 1.0;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v5 :0.0 :v6 :v7];
  beforeMidpointAnimationCurve = v4->_beforeMidpointAnimationCurve;
  v4->_beforeMidpointAnimationCurve = v8;

  return v4;
}

- (PXStoryTransitionExposureBleed)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts
{
  v6 = *(&info->var1 + 3);
  v7 = *&info->var2.var2;
  return [(PXStoryConcreteTransition *)self initWithKind:4 duration:&v6 event:event clipLayouts:layouts];
}

@end
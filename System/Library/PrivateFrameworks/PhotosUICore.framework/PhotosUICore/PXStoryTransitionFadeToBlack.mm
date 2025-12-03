@interface PXStoryTransitionFadeToBlack
- (PXStoryTransitionFadeToBlack)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts;
- (double)clipAlphaForTime:(id *)time;
@end

@implementation PXStoryTransitionFadeToBlack

- (double)clipAlphaForTime:(id *)time
{
  v6 = +[PXStoryTransitionsSettings sharedInstance];
  [v6 fadeToBlackTransitionBlackRelativeDuration];
  v8 = v7;

  time = *time;
  CMTimeGetSeconds(&time);
  [(PXStoryConcreteTransition *)self duration];
  time = v15;
  v9 = (1.0 - v8) * (CMTimeGetSeconds(&time) * 0.5);
  event = [(PXStoryConcreteTransition *)self event];
  if (event == 1)
  {
    if (v9 > 0.0)
    {
      PXClamp();
    }

    [(CAMediaTimingFunction *)self->_animationCurve _solveForInput:0.0];
    return 1.0 - v14;
  }

  else if (event == 2)
  {
    if (v9 > 0.0)
    {
      PXClamp();
    }

    [(CAMediaTimingFunction *)self->_animationCurve _solveForInput:0.0];
    return v13;
  }

  else
  {
    result = 0.0;
    if (!event)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:285 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return result;
}

- (PXStoryTransitionFadeToBlack)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts
{
  v12 = *(&info->var1 + 3);
  v13 = *&info->var2.var2;
  v5 = [(PXStoryConcreteTransition *)self initWithKind:3 duration:&v12 event:event clipLayouts:layouts];
  LODWORD(v6) = 1050253722;
  LODWORD(v7) = 1060320051;
  LODWORD(v8) = 1.0;
  v9 = [MEMORY[0x1E69793D0] functionWithControlPoints:v6 :0.0 :v7 :v8];
  animationCurve = v5->_animationCurve;
  v5->_animationCurve = v9;

  return v5;
}

@end
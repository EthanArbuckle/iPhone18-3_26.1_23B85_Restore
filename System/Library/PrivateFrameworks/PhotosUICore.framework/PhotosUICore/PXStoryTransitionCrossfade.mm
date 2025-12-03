@interface PXStoryTransitionCrossfade
- (PXStoryTransitionCrossfade)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts storyTransitionCurveType:(unint64_t)type;
- (double)clipAlphaForTime:(id *)time;
@end

@implementation PXStoryTransitionCrossfade

- (double)clipAlphaForTime:(id *)time
{
  event = [(PXStoryConcreteTransition *)self event];
  if (event == 1)
  {
    return 1.0;
  }

  if (event == 2)
  {
    springAnimation = self->_springAnimation;
    if (!springAnimation)
    {
      springAnimation = self->_animationCurve;
    }

    [(PXStoryConcreteTransition *)self progress];
    *&v9 = v9;
    [springAnimation _solveForInput:v9];
    return 1.0 - v10;
  }

  else
  {
    result = 0.0;
    if (!event)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:240 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return result;
}

- (PXStoryTransitionCrossfade)initWithTransitionInfo:(id *)info event:(int64_t)event clipLayouts:(id)layouts storyTransitionCurveType:(unint64_t)type
{
  layoutsCopy = layouts;
  if (type == 1)
  {
    CMTimeMakeWithSeconds(&v19, 1.0, 600);
    self = [(PXStoryConcreteTransition *)self initWithKind:2 duration:&v19 event:event clipLayouts:layoutsCopy];
    v14 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"keyPath"];
    [v14 setMass:1.0];
    [v14 setStiffness:50.0];
    [v14 setDamping:25.0];
    [v14 setInitialVelocity:0.0];
    [v14 settlingDuration];
    [v14 setDuration:?];
    v15 = &OBJC_IVAR___PXStoryTransitionCrossfade__springAnimation;
    goto LABEL_5;
  }

  if (!type)
  {
    v19 = *(&info->var1 + 3);
    self = [(PXStoryConcreteTransition *)self initWithKind:2 duration:&v19 event:event clipLayouts:layoutsCopy];
    LODWORD(v11) = 1050253722;
    LODWORD(v12) = 1060320051;
    LODWORD(v13) = 1.0;
    v14 = [MEMORY[0x1E69793D0] functionWithControlPoints:v11 :0.0 :v12 :v13];
    v15 = &OBJC_IVAR___PXStoryTransitionCrossfade__animationCurve;
LABEL_5:
    v16 = *v15;
    v17 = *(&self->super.super.super.super.isa + v16);
    *(&self->super.super.super.super.isa + v16) = v14;
  }

  return self;
}

@end
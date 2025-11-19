@interface PXStoryTransitionCrossfade
- (PXStoryTransitionCrossfade)initWithTransitionInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5 storyTransitionCurveType:(unint64_t)a6;
- (double)clipAlphaForTime:(id *)a3;
@end

@implementation PXStoryTransitionCrossfade

- (double)clipAlphaForTime:(id *)a3
{
  v5 = [(PXStoryConcreteTransition *)self event];
  if (v5 == 1)
  {
    return 1.0;
  }

  if (v5 == 2)
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
    if (!v5)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:240 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  return result;
}

- (PXStoryTransitionCrossfade)initWithTransitionInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5 storyTransitionCurveType:(unint64_t)a6
{
  v10 = a5;
  if (a6 == 1)
  {
    CMTimeMakeWithSeconds(&v19, 1.0, 600);
    self = [(PXStoryConcreteTransition *)self initWithKind:2 duration:&v19 event:a4 clipLayouts:v10];
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

  if (!a6)
  {
    v19 = *(&a3->var1 + 3);
    self = [(PXStoryConcreteTransition *)self initWithKind:2 duration:&v19 event:a4 clipLayouts:v10];
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
@interface PXStoryTransitionWipe
- (PXStoryTransitionWipe)initWithConfiguration:(id)a3;
- (void)timeDidChange;
- (void)wasStopped;
@end

@implementation PXStoryTransitionWipe

- (void)wasStopped
{
  [(PXStoryWipeTransitionConfiguration *)self->_configuration enumerateLayoutsUsingBlock:&__block_literal_global_276];
  v3.receiver = self;
  v3.super_class = PXStoryTransitionWipe;
  [(PXStoryConcreteTransition *)&v3 wasStopped];
}

void __35__PXStoryTransitionWipe_wasStopped__block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  v6 = a2;
  [v6 setContentBounds:{v2, v3, v4, v5}];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v8 = *MEMORY[0x1E695EFD0];
  v9 = v7;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  [v6 setContentsRectTransform:&v8];
  v10 = xmmword_1A53824A0;
  v11 = unk_1A53824B0;
  v12 = xmmword_1A53824C0;
  v13 = unk_1A53824D0;
  v8 = PXStoryTiltedEdgeInsetsNull;
  v9 = unk_1A5382490;
  [v6 setContentEdgeInsets:&v8];
  [v6 setPrimaryDividerBounds:{v2, v3, v4, v5}];
  [v6 setSecondaryDividerBounds:{v2, v3, v4, v5}];
}

- (void)timeDidChange
{
  [(PXStoryAnimation *)self time];
  time = v3;
  CMTimeGetSeconds(&time);
  [(PXStoryConcreteTransition *)self duration];
  time = v3;
  CMTimeGetSeconds(&time);
  PXClamp();
}

void __38__PXStoryTransitionWipe_timeDidChange__block_invoke(uint64_t a1, void *a2, double *a3, double *a4)
{
  v6 = a2;
  if ((a3[4] != INFINITY || a3[5] != INFINITY || a3[6] != INFINITY || a3[7] != INFINITY || a3[8] != INFINITY || a3[9] != INFINITY || a3[10] != INFINITY || a3[11] != INFINITY || a3[12] != INFINITY || a3[13] != INFINITY || a3[14] != INFINITY || a3[15] != INFINITY) && (a4[4] != INFINITY || a4[5] != INFINITY || a4[6] != INFINITY || a4[7] != INFINITY || a4[8] != INFINITY || a4[9] != INFINITY || a4[10] != INFINITY || a4[11] != INFINITY || a4[12] != INFINITY || a4[13] != INFINITY || a4[14] != INFINITY || a4[15] != INFINITY))
  {
    PXFloatByLinearlyInterpolatingFloats();
  }

  PXRectByLinearlyInterpolatingRects();
}

- (PXStoryTransitionWipe)initWithConfiguration:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 identifier];
  v9 = [v7 stringByAppendingFormat:@".%@", v8];

  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  v23.receiver = self;
  v23.super_class = PXStoryTransitionWipe;
  v10 = [(PXStoryConcreteTransition *)&v23 initWithIdentifier:v9 kind:8 duration:v24 event:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_configuration, a3);
    LODWORD(v12) = 1045220557;
    LODWORD(v13) = 1051931443;
    LODWORD(v14) = 1042536202;
    LODWORD(v15) = 1.0;
    v16 = [MEMORY[0x1E69793D0] functionWithControlPoints:v12 :v13 :v14 :v15];
    animationCurve = v11->_animationCurve;
    v11->_animationCurve = v16;

    v18 = +[PXStoryTransitionsSettings sharedInstance];
    [v18 dividerAnimationDurationFraction];
    v11->_dividerAnimationDurationFraction = v19;

    v20 = +[PXStoryTransitionsSettings sharedInstance];
    [v20 reverseDividerAnimationDurationFraction];
    v11->_reverseDividerAnimationDurationFraction = v21;
  }

  return v11;
}

@end
@interface PXStoryTransitionScale
- (PXStoryTransitionScale)initWithTransitionInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5;
- (double)clipAlphaForTime:(id *)a3;
- (void)_configureWithTransitionInfo:(id *)a3;
- (void)timeDidChange;
- (void)wasStopped;
@end

@implementation PXStoryTransitionScale

- (void)wasStopped
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(PXStoryConcreteTransition *)self clipLayouts];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    v12 = *MEMORY[0x1E695EFD0];
    v10 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v14[0] = v12;
        v14[1] = v11;
        v14[2] = v10;
        [v8 setContentsRectTransform:{v14, v10, v11, v12}];
        LODWORD(v9) = 1.0;
        [v8 setContentAlpha:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13.receiver = self;
  v13.super_class = PXStoryTransitionScale;
  [(PXStoryConcreteTransition *)&v13 wasStopped];
}

- (void)timeDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  [(PXStoryConcreteTransition *)self clipLayouts];
  if (objc_claimAutoreleasedReturnValue())
  {
    [(PXStoryAnimation *)self time];
    *&time.value = v17;
    time.epoch = v18;
    Seconds = CMTimeGetSeconds(&time);
    [(PXStoryConcreteTransition *)self duration];
    *&time.value = v17;
    time.epoch = v18;
    v5 = CMTimeGetSeconds(&time);
    zoomingOut = self->_zoomingOut;
    v7 = [(PXStoryConcreteTransition *)self event];
    if (zoomingOut)
    {
      if (v7 != 1)
      {
        if (v7 != 2)
        {
          if (!v7)
          {
            v8 = [MEMORY[0x1E696AAA8] currentHandler];
            v9 = v8;
            v10 = a2;
            v11 = self;
            v12 = 771;
            goto LABEL_18;
          }

LABEL_10:
          v13 = 0;
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (v7 == 1)
      {
LABEL_13:
        v14 = &OBJC_IVAR___PXStoryTransitionScale__orderedBelowAnimationCurve;
        goto LABEL_14;
      }

      if (v7 != 2)
      {
        if (!v7)
        {
          v8 = [MEMORY[0x1E696AAA8] currentHandler];
          v9 = v8;
          v10 = a2;
          v11 = self;
          v12 = 787;
LABEL_18:
          [v8 handleFailureInMethod:v10 object:v11 file:@"PXStoryTransition.m" lineNumber:v12 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        goto LABEL_10;
      }
    }

    v14 = &OBJC_IVAR___PXStoryTransitionScale__orderedAboveAnimationCurve;
LABEL_14:
    v13 = *(&self->super.super.super.super.isa + *v14);
LABEL_15:
    v15 = Seconds / v5;
    *&v15 = Seconds / v5;
    [v13 _solveForInput:v15];
    PXFloatByLinearlyInterpolatingFloats();
  }

  v16.receiver = self;
  v16.super_class = PXStoryTransitionScale;
  [(PXStoryConcreteTransition *)&v16 timeDidChange];
}

- (double)clipAlphaForTime:(id *)a3
{
  zoomingOut = self->_zoomingOut;
  v6 = [(PXStoryConcreteTransition *)self event];
  if (zoomingOut)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        if (v6)
        {
          v7 = 0;
          goto LABEL_14;
        }

        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = v11;
        v13 = a2;
        v14 = self;
        v15 = 729;
LABEL_17:
        [v11 handleFailureInMethod:v13 object:v14 file:@"PXStoryTransition.m" lineNumber:v15 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v8 = &OBJC_IVAR___PXStoryTransitionScale__orderedBelowAnimationCurve;
      goto LABEL_13;
    }
  }

  else
  {
    if (v6 == 1)
    {
      v8 = &OBJC_IVAR___PXStoryTransitionScale__orderedBelowAnimationCurve;
      goto LABEL_13;
    }

    if (v6 != 2)
    {
      if (!v6)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = v11;
        v13 = a2;
        v14 = self;
        v15 = 742;
        goto LABEL_17;
      }

      v7 = 0;
LABEL_14:
      [(PXStoryAnimation *)self time];
      time = v17;
      Seconds = CMTimeGetSeconds(&time);
      [(PXStoryConcreteTransition *)self duration];
      time = v17;
      v10 = Seconds / CMTimeGetSeconds(&time);
      *&v10 = v10;
      [v7 _solveForInput:v10];
      PXFloatByLinearlyInterpolatingFloats();
    }
  }

  v8 = &OBJC_IVAR___PXStoryTransitionScale__orderedAboveAnimationCurve;
LABEL_13:
  v7 = *(&self->super.super.super.super.isa + *v8);
  goto LABEL_14;
}

- (void)_configureWithTransitionInfo:(id *)a3
{
  if (!BYTE5(a3->var2.var3))
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXStoryTransition.m" lineNumber:709 description:{@"Invalid parameter not satisfying: %@", @"transitionInfo.scaleDirection != PXStoryScaleDirectionUndefined"}];
  }

  v7 = *&a3->var3;
  self->_scaleRelativeFactor = v7;
  self->_zoomingOut = BYTE5(a3->var2.var3) == 2;
  LODWORD(v3) = 1059648963;
  LODWORD(v4) = 1.0;
  LODWORD(v7) = 1051260355;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :0.0 :v3 :v4];
  orderedAboveAnimationCurve = self->_orderedAboveAnimationCurve;
  self->_orderedAboveAnimationCurve = v8;

  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1051260355;
  v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:v11 :0.0 :0.0 :v10];
  orderedBelowAnimationCurve = self->_orderedBelowAnimationCurve;
  self->_orderedBelowAnimationCurve = v12;
}

- (PXStoryTransitionScale)initWithTransitionInfo:(id *)a3 event:(int64_t)a4 clipLayouts:(id)a5
{
  v9 = *(&a3->var1 + 3);
  *&v10 = *&a3->var2.var2;
  v6 = [(PXStoryConcreteTransition *)self initWithKind:4 duration:&v9 event:a4 clipLayouts:a5];
  v7 = *&a3->var2.var1;
  v9 = *&a3->var0;
  v10 = v7;
  v11 = *&a3->var3;
  [(PXStoryTransitionScale *)v6 _configureWithTransitionInfo:&v9];
  return v6;
}

@end
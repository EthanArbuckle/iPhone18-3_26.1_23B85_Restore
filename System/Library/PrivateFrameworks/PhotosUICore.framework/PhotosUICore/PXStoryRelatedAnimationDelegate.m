@interface PXStoryRelatedAnimationDelegate
- (PXStoryRelatedAnimationDelegate)init;
- (PXStoryRelatedAnimationDelegate)initWithSelectedRelatedLayout:(id)a3;
- (id)animation:(id)a3 doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)a4 rootLayout:(id)a5 presentedGeometries:(id *)a6 styles:(id *)a7 infos:(id *)a8;
- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)a7;
- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)a7;
- (void)animation:(id)a3 prepareWithRootLayout:(id)a4 viewportShift:(CGPoint)a5;
@end

@implementation PXStoryRelatedAnimationDelegate

- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)a7
{
  v23 = a3;
  v12 = HIDWORD(*&a7);
  if (v12)
  {
    v13 = a6 + 1;
    p_var2 = &a4->var0.var2;
    do
    {
      v16 = *&v13->var0;
      v13 = (v13 + 40);
      v15 = v16;
      if ((v16 & 0x20000) != 0)
      {
        a5->var0 = -a5->var0;
      }

      else
      {
        if ((v15 & 0x10000) == 0)
        {
          v17 = p_var2[1];
          v18 = vmul_f32(v17, 0x3F0000003F000000);
          v19 = *(p_var2 - 2) - v18.f32[0];
          v20 = *(p_var2 - 1) - v18.f32[1];
          v21 = v17.f32[0];
          v22 = v17.f32[1];
          v25 = CGRectInset(self->_selectedRelatedInitialRect, -self->_tolerance, -self->_tolerance);
          v26.origin.x = v19;
          v26.origin.y = v20;
          v26.size.width = v21;
          v26.size.height = v22;
          if (CGRectContainsRect(v25, v26))
          {
            PXRectNormalize();
          }
        }

        *p_var2 = *p_var2 + 2.0;
      }

      a5 = (a5 + 160);
      p_var2 += 4;
      --v12;
    }

    while (v12);
  }
}

- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)a7
{
  v22 = a3;
  v12 = HIDWORD(*&a7);
  if (v12)
  {
    v13 = a6 + 1;
    p_var2 = &a4->var0.var2;
    do
    {
      if ((*(&v13->var1 + 1) & 3) != 0)
      {
        v15 = a5->var0 * -9999.00025;
        a5->var0 = v15;
      }

      else
      {
        v16 = p_var2[1];
        v17 = vmul_f32(v16, 0x3F0000003F000000);
        v18 = *(p_var2 - 2) - v17.f32[0];
        v19 = *(p_var2 - 1) - v17.f32[1];
        v20 = v16.f32[0];
        v21 = v16.f32[1];
        v24 = CGRectInset(self->_selectedRelatedFinalRect, -self->_tolerance, -self->_tolerance);
        v25.origin.x = v18;
        v25.origin.y = v19;
        v25.size.width = v20;
        v25.size.height = v21;
        if (CGRectContainsRect(v24, v25))
        {
          PXRectNormalize();
        }
      }

      v13 = (v13 + 40);
      a5 = (a5 + 160);
      p_var2 += 4;
      --v12;
    }

    while (v12);
  }
}

- (void)animation:(id)a3 prepareWithRootLayout:(id)a4 viewportShift:(CGPoint)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_rootLayout);

  if (WeakRetained != v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedAnimation.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"rootLayout == _rootLayout"}];
  }

  PXPointAdd();
}

- (id)animation:(id)a3 doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)a4 rootLayout:(id)a5 presentedGeometries:(id *)a6 styles:(id *)a7 infos:(id *)a8
{
  v10 = a4;
  v11 = a5;
  if ([v10 count])
  {
    v12 = [v10 firstIndex];
    v13 = [v10 lastIndex];
    v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
    [v11 visibleRect];
    if (v12 <= v13)
    {
      do
      {
        v15 = v12;
        v16 = *(&a8[1].var0 + 5 * v12);
        if ((v16 & 0x10000) != 0)
        {
          PXRectApproximatelyEqualToRect();
        }

        if ((v16 & 0x20000) != 0)
        {
          [v14 addIndex:v15];
        }

        v12 = v15 + 1;
      }

      while (v15 + 1 <= v13);
    }

    v17 = [v14 copy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (PXStoryRelatedAnimationDelegate)initWithSelectedRelatedLayout:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedAnimation.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"selectedRelatedLayout != nil"}];
  }

  v10.receiver = self;
  v10.super_class = PXStoryRelatedAnimationDelegate;
  v6 = [(PXStoryRelatedAnimationDelegate *)&v10 init];
  if (v6)
  {
    v7 = [v5 rootLayout];
    objc_storeWeak(&v6->_rootLayout, v7);

    objc_loadWeakRetained(&v6->_rootLayout);
    [v5 contentSize];
    PXRectWithOriginAndSize();
  }

  return 0;
}

- (PXStoryRelatedAnimationDelegate)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedAnimation.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXStoryRelatedAnimationDelegate init]"}];

  abort();
}

@end
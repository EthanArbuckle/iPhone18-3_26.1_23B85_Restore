@interface PXStoryRelatedAnimationDelegate
- (PXStoryRelatedAnimationDelegate)init;
- (PXStoryRelatedAnimationDelegate)initWithSelectedRelatedLayout:(id)layout;
- (id)animation:(id)animation doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)indexes rootLayout:(id)layout presentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range;
- (void)animation:(id)animation prepareWithRootLayout:(id)layout viewportShift:(CGPoint)shift;
@end

@implementation PXStoryRelatedAnimationDelegate

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range
{
  animationCopy = animation;
  v12 = HIDWORD(*&range);
  if (v12)
  {
    v13 = infos + 1;
    p_var2 = &geometries->var0.var2;
    do
    {
      v16 = *&v13->var0;
      v13 = (v13 + 40);
      v15 = v16;
      if ((v16 & 0x20000) != 0)
      {
        styles->var0 = -styles->var0;
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

      styles = (styles + 160);
      p_var2 += 4;
      --v12;
    }

    while (v12);
  }
}

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range
{
  animationCopy = animation;
  v12 = HIDWORD(*&range);
  if (v12)
  {
    v13 = infos + 1;
    p_var2 = &geometries->var0.var2;
    do
    {
      if ((*(&v13->var1 + 1) & 3) != 0)
      {
        v15 = styles->var0 * -9999.00025;
        styles->var0 = v15;
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
      styles = (styles + 160);
      p_var2 += 4;
      --v12;
    }

    while (v12);
  }
}

- (void)animation:(id)animation prepareWithRootLayout:(id)layout viewportShift:(CGPoint)shift
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_rootLayout);

  if (WeakRetained != layoutCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedAnimation.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"rootLayout == _rootLayout"}];
  }

  PXPointAdd();
}

- (id)animation:(id)animation doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)indexes rootLayout:(id)layout presentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos
{
  indexesCopy = indexes;
  layoutCopy = layout;
  if ([indexesCopy count])
  {
    firstIndex = [indexesCopy firstIndex];
    lastIndex = [indexesCopy lastIndex];
    v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
    [layoutCopy visibleRect];
    if (firstIndex <= lastIndex)
    {
      do
      {
        v15 = firstIndex;
        v16 = *(&infos[1].var0 + 5 * firstIndex);
        if ((v16 & 0x10000) != 0)
        {
          PXRectApproximatelyEqualToRect();
        }

        if ((v16 & 0x20000) != 0)
        {
          [v14 addIndex:v15];
        }

        firstIndex = v15 + 1;
      }

      while (v15 + 1 <= lastIndex);
    }

    v17 = [v14 copy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (PXStoryRelatedAnimationDelegate)initWithSelectedRelatedLayout:(id)layout
{
  layoutCopy = layout;
  if (!layoutCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedAnimation.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"selectedRelatedLayout != nil"}];
  }

  v10.receiver = self;
  v10.super_class = PXStoryRelatedAnimationDelegate;
  v6 = [(PXStoryRelatedAnimationDelegate *)&v10 init];
  if (v6)
  {
    rootLayout = [layoutCopy rootLayout];
    objc_storeWeak(&v6->_rootLayout, rootLayout);

    objc_loadWeakRetained(&v6->_rootLayout);
    [layoutCopy contentSize];
    PXRectWithOriginAndSize();
  }

  return 0;
}

- (PXStoryRelatedAnimationDelegate)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedAnimation.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXStoryRelatedAnimationDelegate init]"}];

  abort();
}

@end
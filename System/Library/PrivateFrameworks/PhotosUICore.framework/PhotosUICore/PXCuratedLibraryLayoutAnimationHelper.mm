@interface PXCuratedLibraryLayoutAnimationHelper
+ (id)createAnimationIfNeededForLayout:(id)layout context:(int64_t)context userData:(id)data;
+ (id)createTransitionIfNeededForLayout:(id)layout context:(int64_t)context;
- (PXCuratedLibraryLayout)layout;
- (PXCuratedLibraryLayoutAnimationHelper)init;
- (PXCuratedLibraryLayoutAnimationHelper)initWithLayout:(id)layout;
- (double)animationDuration;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range;
@end

@implementation PXCuratedLibraryLayoutAnimationHelper

- (PXCuratedLibraryLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range
{
  if (range.length)
  {
    v7 = (range.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_1A535BC40;
    v9 = xmmword_1A5301350;
    v10 = vdupq_n_s64(range.length - 1);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, v9));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        styles->var0 = 0.0;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        styles[3].var4 = 0.0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v10, *&v8))).i32[1])
      {
        styles[7].var1.var0.var0.var2 = 0.0;
        styles[10].var8 = 0.0;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      styles = (styles + 640);
      v7 -= 4;
    }

    while (v7);
  }
}

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range
{
  if (range.length)
  {
    v7 = (range.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_1A535BC40;
    v9 = xmmword_1A5301350;
    v10 = vdupq_n_s64(range.length - 1);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, v9));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        styles->var0 = 0.0;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        styles[3].var4 = 0.0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v10, *&v8))).i32[1])
      {
        styles[7].var1.var0.var0.var2 = 0.0;
        styles[10].var8 = 0.0;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      styles = (styles + 640);
      v7 -= 4;
    }

    while (v7);
  }
}

- (double)animationDuration
{
  sharedInstance = [off_1E7721810 sharedInstance];
  [sharedInstance defaultAnimationDuration];
  v4 = v3;

  return v4;
}

- (PXCuratedLibraryLayoutAnimationHelper)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryLayoutAnimationHelper;
  v5 = [(PXCuratedLibraryLayoutAnimationHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layout, layoutCopy);
  }

  return v6;
}

- (PXCuratedLibraryLayoutAnimationHelper)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutAnimationHelper.m" lineNumber:126 description:{@"%s is not available as initializer", "-[PXCuratedLibraryLayoutAnimationHelper init]"}];

  abort();
}

+ (id)createTransitionIfNeededForLayout:(id)layout context:(int64_t)context
{
  layoutCopy = layout;
  v6 = [objc_opt_class() createAnimationIfNeededForLayout:layoutCopy context:context userData:0];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    v8 = [layoutCopy createTransitionWithAnimations:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)createAnimationIfNeededForLayout:(id)layout context:(int64_t)context userData:(id)data
{
  layoutCopy = layout;
  dataCopy = data;
  pendingAnimations = [layoutCopy pendingAnimations];
  lastObject = [pendingAnimations lastObject];

  if (PXCuratedLibraryAnimationGetContext(lastObject) < context)
  {
    v13 = 0;
    if (context <= 2)
    {
      if (context != 1 && context != 2)
      {
        if (!context)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutAnimationHelper.m" lineNumber:80 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        goto LABEL_11;
      }
    }

    else if (context != 3 && context != 4 && context != 5)
    {
LABEL_11:
      v15 = [[v13 alloc] initWithLayout:layoutCopy];
      [v15 setUserData:dataCopy];
      if (lastObject)
      {
        createAnimation = lastObject;
      }

      else
      {
        createAnimation = [layoutCopy createAnimation];
      }

      v14 = createAnimation;
      [createAnimation setCurve:{objc_msgSend(v15, "animationCurve")}];
      [v15 animationDuration];
      [v14 setDuration:?];
      [v14 setDoubleSided:{objc_msgSend(v15, "wantsDoubleSidedAnimations")}];
      [v14 setSupportsPresentationAdjustment:{objc_msgSend(v15, "wantsPresentationAdjustment")}];
      [v14 setSupportsSpriteTransfer:{objc_msgSend(v15, "wantsAnimationWithSpriteTransfer")}];
      [v14 setHighFrameRateReason:{objc_msgSend(v15, "highFrameRateReason")}];
      [v14 setDelegate:v15];
      [v14 setUserData:dataCopy];
      _PXCuratedLibraryAnimationSetContext(v14, context);

      goto LABEL_15;
    }

    v13 = objc_opt_class();
    goto LABEL_11;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

@end
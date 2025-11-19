@interface PXCuratedLibraryLayoutAnimationHelper
+ (id)createAnimationIfNeededForLayout:(id)a3 context:(int64_t)a4 userData:(id)a5;
+ (id)createTransitionIfNeededForLayout:(id)a3 context:(int64_t)a4;
- (PXCuratedLibraryLayout)layout;
- (PXCuratedLibraryLayoutAnimationHelper)init;
- (PXCuratedLibraryLayoutAnimationHelper)initWithLayout:(id)a3;
- (double)animationDuration;
- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)a7;
- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)a7;
@end

@implementation PXCuratedLibraryLayoutAnimationHelper

- (PXCuratedLibraryLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)a7
{
  if (a7.length)
  {
    v7 = (a7.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_1A535BC40;
    v9 = xmmword_1A5301350;
    v10 = vdupq_n_s64(a7.length - 1);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, v9));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        a5->var0 = 0.0;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        a5[3].var4 = 0.0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v10, *&v8))).i32[1])
      {
        a5[7].var1.var0.var0.var2 = 0.0;
        a5[10].var8 = 0.0;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      a5 = (a5 + 640);
      v7 -= 4;
    }

    while (v7);
  }
}

- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)a7
{
  if (a7.length)
  {
    v7 = (a7.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_1A535BC40;
    v9 = xmmword_1A5301350;
    v10 = vdupq_n_s64(a7.length - 1);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, v9));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        a5->var0 = 0.0;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        a5[3].var4 = 0.0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v10, *&v8))).i32[1])
      {
        a5[7].var1.var0.var0.var2 = 0.0;
        a5[10].var8 = 0.0;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      a5 = (a5 + 640);
      v7 -= 4;
    }

    while (v7);
  }
}

- (double)animationDuration
{
  v2 = [off_1E7721810 sharedInstance];
  [v2 defaultAnimationDuration];
  v4 = v3;

  return v4;
}

- (PXCuratedLibraryLayoutAnimationHelper)initWithLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryLayoutAnimationHelper;
  v5 = [(PXCuratedLibraryLayoutAnimationHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layout, v4);
  }

  return v6;
}

- (PXCuratedLibraryLayoutAnimationHelper)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutAnimationHelper.m" lineNumber:126 description:{@"%s is not available as initializer", "-[PXCuratedLibraryLayoutAnimationHelper init]"}];

  abort();
}

+ (id)createTransitionIfNeededForLayout:(id)a3 context:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() createAnimationIfNeededForLayout:v5 context:a4 userData:0];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    v8 = [v5 createTransitionWithAnimations:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)createAnimationIfNeededForLayout:(id)a3 context:(int64_t)a4 userData:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 pendingAnimations];
  v12 = [v11 lastObject];

  if (PXCuratedLibraryAnimationGetContext(v12) < a4)
  {
    v13 = 0;
    if (a4 <= 2)
    {
      if (a4 != 1 && a4 != 2)
      {
        if (!a4)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:a2 object:a1 file:@"PXCuratedLibraryLayoutAnimationHelper.m" lineNumber:80 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        goto LABEL_11;
      }
    }

    else if (a4 != 3 && a4 != 4 && a4 != 5)
    {
LABEL_11:
      v15 = [[v13 alloc] initWithLayout:v9];
      [v15 setUserData:v10];
      if (v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = [v9 createAnimation];
      }

      v14 = v16;
      [v16 setCurve:{objc_msgSend(v15, "animationCurve")}];
      [v15 animationDuration];
      [v14 setDuration:?];
      [v14 setDoubleSided:{objc_msgSend(v15, "wantsDoubleSidedAnimations")}];
      [v14 setSupportsPresentationAdjustment:{objc_msgSend(v15, "wantsPresentationAdjustment")}];
      [v14 setSupportsSpriteTransfer:{objc_msgSend(v15, "wantsAnimationWithSpriteTransfer")}];
      [v14 setHighFrameRateReason:{objc_msgSend(v15, "highFrameRateReason")}];
      [v14 setDelegate:v15];
      [v14 setUserData:v10];
      _PXCuratedLibraryAnimationSetContext(v14, a4);

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
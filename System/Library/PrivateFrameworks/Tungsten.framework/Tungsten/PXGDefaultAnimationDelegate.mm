@interface PXGDefaultAnimationDelegate
+ (PXGDefaultAnimationDelegate)sharedInstance;
+ (void)adjustGeometry:(id *)geometry style:(id *)style info:(id *)info forTextSpriteAnimatingFromAttributes:(id *)attributes toAttributes:(id *)toAttributes inRootLayout:(id)layout;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range;
@end

@implementation PXGDefaultAnimationDelegate

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range
{
  if (range.length)
  {
    v7 = (range.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_21AE2D350;
    v9 = xmmword_21AE2D360;
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
    v8 = xmmword_21AE2D350;
    v9 = xmmword_21AE2D360;
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

+ (void)adjustGeometry:(id *)geometry style:(id *)style info:(id *)info forTextSpriteAnimatingFromAttributes:(id *)attributes toAttributes:(id *)toAttributes inRootLayout:(id)layout
{
  layoutCopy = layout;
  x = attributes->var3.x;
  y = attributes->var3.y;
  v16 = toAttributes->var3.x;
  v15 = toAttributes->var3.y;
  var2 = toAttributes->var2;
  v18 = attributes->var2;
  if ([layoutCopy userInterfaceDirection] == 1)
  {
    [layoutCopy referenceSize];
    x = v19 - x;
    v16 = v19 - v16;
  }

  memset(&v33.c, 0, 32);
  if (COERCE__INT64(fabs(var2 / v18)) >= 0x7FF0000000000000)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = var2 / v18;
  }

  *&v33.a = 0uLL;
  CGAffineTransformMakeTranslation(&v33, v16, v15);
  v31 = v33;
  CGAffineTransformScale(&v32, &v31, v20, v20);
  v33 = v32;
  v31 = v32;
  CGAffineTransformTranslate(&v32, &v31, -x, -y);
  v33 = v32;
  PXRectWithCenterAndSize();
  v32 = v33;
  v35 = CGRectApplyAffineTransform(v34, &v32);
  v21 = v35.origin.x;
  v22 = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v25 = geometry->var0.var2;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = v21;
  v36.origin.y = v22;
  v36.size.width = width;
  v36.size.height = height;
  MidY = CGRectGetMidY(v36);
  v37.origin.x = v21;
  v37.origin.y = v22;
  v37.size.width = width;
  v37.size.height = height;
  v30 = CGRectGetWidth(v37);
  v38.origin.x = v21;
  v38.origin.y = v22;
  v38.size.width = width;
  v38.size.height = height;
  v28 = CGRectGetHeight(v38);
  v29.f64[0] = v30;
  v29.f64[1] = v28;
  geometry->var0.var0 = MidX;
  geometry->var0.var1 = MidY;
  geometry->var0.var2 = v25;
  *&geometry[1].var0.var0 = vcvt_f32_f64(v29);
  style->var0 = 0.0;
}

+ (PXGDefaultAnimationDelegate)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_13413);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __45__PXGDefaultAnimationDelegate_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXGDefaultAnimationDelegate);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

@end
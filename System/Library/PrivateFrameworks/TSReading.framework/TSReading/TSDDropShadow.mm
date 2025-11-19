@interface TSDDropShadow
- (BOOL)isEqual:(id)a3;
- (CGImage)newShadowImageForRep:(id)a3 withSize:(CGSize)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6;
- (CGRect)boundsForRep:(id)a3;
- (CGRect)boundsInNaturalSpaceForRep:(id)a3;
- (TSDDropShadow)initWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(CGColor *)a7 enabled:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newShadowClampedForSwatches;
- (int64_t)mixingTypeWithObject:(id)a3;
@end

@implementation TSDDropShadow

- (TSDDropShadow)initWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(CGColor *)a7 enabled:(BOOL)a8
{
  v16.receiver = self;
  v16.super_class = TSDDropShadow;
  v11 = [(TSDShadow *)&v16 i_initWithOpacity:a7 color:a8 enabled:a6];
  if (v11)
  {
    TSDNormalizeAngleInDegrees(a3);
    v11->super.mAngle = v12;
    [(TSDShadow *)v11 clampOffset:a4];
    v11->super.mOffset = v13;
    [(TSDShadow *)v11 clampRadius:a5];
    v11->super.mRadius = v14;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v9 = v3;
  v10 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = TSDDropShadow;
  return [(TSDShadow *)&v8 isEqual:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSDDropShadow allocWithZone:a3];
  [(TSDShadow *)self angle];
  v6 = v5;
  [(TSDShadow *)self offset];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDShadow *)self opacity];
  v12 = v11;
  v13 = [(TSDShadow *)self color];
  v14 = [(TSDShadow *)self isEnabled];

  return [(TSDDropShadow *)v4 initWithAngle:v13 offset:v14 radius:v6 opacity:v8 color:v10 enabled:v12];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableDropShadow allocWithZone:a3];
  [(TSDShadow *)self angle];
  v6 = v5;
  [(TSDShadow *)self offset];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDShadow *)self opacity];
  v12 = v11;
  v13 = [(TSDShadow *)self color];
  v14 = [(TSDShadow *)self isEnabled];

  return [(TSDDropShadow *)v4 initWithAngle:v13 offset:v14 radius:v6 opacity:v8 color:v10 enabled:v12];
}

- (id)newShadowClampedForSwatches
{
  [(TSDShadow *)self radius];
  v4 = v3;
  [(TSDShadow *)self offset];
  v6 = v4 + v5;
  [(TSDShadow *)self radius];
  v8 = v7;
  [(TSDShadow *)self offset];
  v10 = v9;
  if (v6 > 10.0)
  {
    v8 = v8 * (10.0 / v6);
    v10 = v9 * (10.0 / v6);
  }

  v11 = [TSDDropShadow alloc];
  [(TSDShadow *)self angle];
  v13 = v12;
  [(TSDShadow *)self opacity];
  v15 = v14;
  v16 = [(TSDShadow *)self color];
  v17 = [(TSDShadow *)self isEnabled];

  return [(TSDDropShadow *)v11 initWithAngle:v16 offset:v17 radius:v13 opacity:v10 color:v8 enabled:v15];
}

- (CGRect)boundsInNaturalSpaceForRep:(id)a3
{
  v3 = [a3 styledLayout];

  [v3 shadowedNaturalBoundsWithoutOffset];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForRep:(id)a3
{
  v3 = [a3 styledLayout];

  [v3 shadowedNaturalBoundsWithoutOffset];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGImage)newShadowImageForRep:(id)a3 withSize:(CGSize)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6
{
  v6 = a6;
  v10 = TSDRoundedSize();
  v12 = v11;
  v13 = TSDRectWithSize();
  v17 = TSDRoundedRect(v13, v14, v15, v16);
  Image = 0;
  if (v19 != 0.0 && v20 != 0.0)
  {
    v22 = v17;
    v23 = v19;
    v24 = vcvtpd_u64_f64(fmax(v10, v19));
    v25 = vcvtpd_u64_f64(fmax(v12, v20));
    if (v24)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }

    v27 = v18;
    v28 = [(TSDShadow *)self color];
    v29 = TSDBitmapContextCreate(11, v23);
    if (!v29)
    {
      return 0;
    }

    else
    {
      v30 = v29;
      v31 = [a3 layout];
      if (v31)
      {
        [v31 transformInRoot];
      }

      else
      {
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
      }

      v32 = TSDTransformAngle(&v58);
      TSDSetCGContextInfoForShadowContext(v30, v32);
      [(TSDShadow *)self radius];
      v34 = v33;
      CGContextTranslateCTM(v30, -v22, -v27);
      CGContextTranslateCTM(v30, -(v24 + 10.0), -0.0);
      if (v6)
      {
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        v35 = [objc_msgSend(a3 "layout")];
        if (v35)
        {
          [v35 transform];
          v37 = *(&v58 + 1);
          v36 = *&v58;
          v39 = *(&v59 + 1);
          v38 = *&v59;
        }

        else
        {
          v59 = 0u;
          v60 = 0u;
          v39 = 0.0;
          v37 = 0.0;
          v38 = 0.0;
          v36 = 0.0;
          v58 = 0u;
        }

        if (TSDCrossPoints(v36, v38, v37, v39) > 0.0)
        {
          v57.a = -1.0;
          v57.b = 0.0;
          v57.c = 0.0;
          v57.d = 1.0;
          v57.tx = v10;
          v57.ty = 0.0;
          CGContextConcatCTM(v30, &v57);
        }

        v57.b = 0.0;
        v57.c = 0.0;
        v57.a = 1.0;
        *&v57.d = xmmword_26CA65110;
        v57.ty = v12;
        CGContextConcatCTM(v30, &v57);
      }

      v61.height = 0.0;
      v61.width = (v24 + 10.0);
      CGContextSetShadowWithColor(v30, v61, v34, v28);
      CGContextTranslateCTM(v30, v34, v34);
      if ([a3 canDrawShadowInOneStepWithChildren:1])
      {
        [a3 performSelector:a5 withObject:v30];
      }

      else
      {
        [a3 naturalBounds];
        v41 = v40;
        v43 = v42;
        TSDRectWithSize();
        v45 = v44;
        v47 = v46;
        v48 = TSDShrinkSizeToFitInSize(v41, v43, 2048.0, 2048.0);
        if (v48 > 0.0 && v49 > 0.0)
        {
          v50 = v48 / v45;
          v51 = v49 / v47;
          v52 = CGLayerCreateWithContext(v30, *&v48, 0);
          Context = CGLayerGetContext(v52);
          v54 = [a3 layout];
          if (v54)
          {
            [v54 transformInRoot];
          }

          else
          {
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
          }

          v55 = TSDTransformAngle(&v58);
          TSDSetCGContextInfoForShadowContext(Context, v55);
          CGContextScaleCTM(Context, v50, v51);
          [a3 performSelector:a5 withObject:Context];
          TSDClearCGContextInfo(Context);
          v62.origin.x = TSDRectWithSize();
          CGContextDrawLayerInRect(v30, v62, v52);
          CGLayerRelease(v52);
        }
      }

      Image = CGBitmapContextCreateImage(v30);
      TSDClearCGContextInfo(v30);
      CGContextRelease(v30);
    }
  }

  return Image;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSDDropShadow_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __38__TSDDropShadow_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (v2 && ((v3 = v2, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [*(a1 + 40) radius];
    v5 = v4;
    [v3 radius];
    if (vabdd_f64(v5, v6) >= 0.00999999978)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    if (!v8)
    {
      return 1;
    }

    v9 = v8;
    if ([*(a1 + 40) isEnabled] && (objc_msgSend(v9, "isEnabled") & 1) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TSDDropShadow_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDDropShadow *__50__TSDDropShadow_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  [*(a1 + 40) angle];
  v4 = v3;
  if (v2)
  {
    [v2 angle];
    TSDMixAnglesInDegrees(v4, v5, *(a1 + 48));
    v4 = v6;
    [*(a1 + 40) offset];
    [v2 offset];
    TSUMix();
    v8 = v7;
    [*(a1 + 40) radius];
    [v2 radius];
    TSUMix();
    v10 = round(v9);
    [*(a1 + 40) opacity];
    [v2 opacity];
  }

  else
  {
    [*(a1 + 40) offset];
    v8 = v11;
    [*(a1 + 40) radius];
    v10 = v12;
    [*(a1 + 40) opacity];
  }

  TSUMix();
  v14 = v13;
  v15 = [MEMORY[0x277D6C2A8] colorWithCGColor:{objc_msgSend(*(a1 + 40), "color")}];
  if (v2)
  {
    v16 = v2;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = [v15 blendedColorWithFraction:objc_msgSend(MEMORY[0x277D6C2A8] ofColor:{"colorWithCGColor:", objc_msgSend(v16, "color")), *(a1 + 48)}];
  if ([*(a1 + 40) isEnabled])
  {
    v18 = 1;
  }

  else
  {
    v18 = [v2 isEnabled];
  }

  v19 = -[TSDDropShadow initWithAngle:offset:radius:opacity:color:enabled:]([TSDDropShadow alloc], "initWithAngle:offset:radius:opacity:color:enabled:", [v17 CGColor], v18, v4, v8, v10, v14);

  return v19;
}

@end
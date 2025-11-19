@interface TSDTransformGradient
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIgnoringTransform:(id)a3;
- (CGPoint)endPoint;
- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CGPoint)normalizedPointForSize:(CGSize)a3 endPoint:(BOOL)a4;
- (CGPoint)p_scalePoint:(CGPoint)a3 fromShapeWithNaturalSize:(CGSize)a4;
- (CGPoint)p_scalePoint:(CGPoint)a3 toShapeWithNaturalSize:(CGSize)a4;
- (CGPoint)startPoint;
- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CGSize)baseNaturalSize;
- (CGSize)baseNaturalSizeForBounds:(CGRect)a3;
- (TSDTransformGradient)initWithGradient:(id)a3 inPath:(id)a4 andBounds:(CGRect)a5;
- (TSDTransformGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4;
- (TSDTransformGradient)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5;
- (double)gradientAngleInDegrees;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_drawQuartzShadingInContext:(CGContext *)a3 withGradientNaturalSize:(CGSize)a4 baseNaturalSize:(CGSize)a5 start:(CGPoint)a6 end:(CGPoint)a7;
- (void)p_setDefaultValues;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)setBaseNaturalSize:(CGSize)a3;
@end

@implementation TSDTransformGradient

- (TSDTransformGradient)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = TSDTransformGradient;
  v5 = [(TSDGradient *)&v8 initWithStartColor:a3 endColor:a4 type:a5];
  v6 = v5;
  if (v5)
  {
    [(TSDTransformGradient *)v5 p_setDefaultValues];
  }

  return v6;
}

- (TSDTransformGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = TSDTransformGradient;
  v4 = [(TSDGradient *)&v7 initWithGradientStops:a3 type:a4];
  v5 = v4;
  if (v4)
  {
    [(TSDTransformGradient *)v4 p_setDefaultValues];
  }

  return v5;
}

- (TSDTransformGradient)initWithGradient:(id)a3 inPath:(id)a4 andBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v20.receiver = self;
  v20.super_class = TSDTransformGradient;
  v11 = -[TSDGradient initWithGradientStops:type:](&v20, sel_initWithGradientStops_type_, [a3 gradientStops], objc_msgSend(a3, "gradientType"));
  if (v11)
  {
    objc_opt_class();
    v12 = TSUDynamicCast();
    if (v12)
    {
      [v12 baseNaturalSizeForBounds:{x, y, width, height}];
      width = v13;
      height = v14;
    }

    v11->mBaseNaturalSize.width = width;
    v11->mBaseNaturalSize.height = height;
    [a3 startPointForPath:a4 andBounds:TSDRectWithSize()];
    v11->mStart.x = v15;
    v11->mStart.y = v16;
    [a3 endPointForPath:a4 andBounds:TSDRectWithSize()];
    v11->mEnd.x = v17;
    v11->mEnd.y = v18;
  }

  return v11;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TSDTransformGradient;
  [(TSDGradient *)&v3 hash];
  TSUHashWithSeed();
  TSUHashWithSeed();
  return TSUHashWithSeed();
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSDTransformGradient;
  [(TSDGradient *)&v2 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TSDGradient *)self gradientType];
  [(TSDGradient *)self opacity];
  v6 = v5;
  v7 = NSStringFromCGPoint(self->mStart);
  v8 = NSStringFromCGPoint(self->mEnd);
  return [v3 stringWithFormat:@"TSDTransformGradient<%p>: type=%lu opacity=%f start=%@ end=%@ \n\tstops=%@ \n\tbase size=%@", self, v4, v6, v7, v8, -[TSDGradient gradientStops](self, "gradientStops"), NSStringFromCGSize(self->mBaseNaturalSize)];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v20 = v3;
    v21 = v4;
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = v7;
      v19.receiver = self;
      v19.super_class = TSDTransformGradient;
      LODWORD(v7) = [(TSDGradient *)&v19 isEqual:a3];
      if (v7)
      {
        [v8 startPoint];
        v11 = self->mStart.x == v10 && self->mStart.y == v9;
        if (v11 && (([v8 endPoint], self->mEnd.x == v13) ? (v14 = self->mEnd.y == v12) : (v14 = 0), v14))
        {
          p_mBaseNaturalSize = &self->mBaseNaturalSize;
          [v8 baseNaturalSize];
          LOBYTE(v7) = p_mBaseNaturalSize->height == v17 && p_mBaseNaturalSize->width == v16;
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }
    }
  }

  return v7;
}

- (BOOL)isEqualIgnoringTransform:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v14 = v3;
    v15 = v4;
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = v7;
      v13.receiver = self;
      v13.super_class = TSDTransformGradient;
      LODWORD(v7) = [(TSDGradient *)&v13 isEqual:a3];
      if (v7)
      {
        p_mBaseNaturalSize = &self->mBaseNaturalSize;
        [v8 baseNaturalSize];
        LOBYTE(v7) = p_mBaseNaturalSize->height == v11 && p_mBaseNaturalSize->width == v10;
      }
    }
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableTransformGradient allocWithZone:a3];
  v5 = [(TSDGradient *)self gradientStops];
  v6 = [(TSDGradient *)self gradientType];
  [(TSDGradient *)self opacity];
  v7 = [(TSDGradient *)v4 initWithGradientStops:v5 type:v6 opacity:?];
  [(TSDGradient *)v7 setIsAdvancedGradient:self->super.mIsAdvancedGradient];
  [(TSDTransformGradient *)self startPoint];
  [(TSDTransformGradient *)v7 setStartPoint:?];
  [(TSDTransformGradient *)self endPoint];
  [(TSDTransformGradient *)v7 setEndPoint:?];
  [(TSDTransformGradient *)self baseNaturalSize];
  [(TSDTransformGradient *)v7 setBaseNaturalSize:?];
  return v7;
}

- (CGPoint)normalizedPointForSize:(CGSize)a3 endPoint:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  [(TSDTransformGradient *)self startPoint];
  v46 = v9;
  v47 = v8;
  [(TSDTransformGradient *)self endPoint];
  v50 = v11;
  v51 = v10;
  if ([(TSDGradient *)self gradientType])
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    if (self)
    {
      [(TSDTransformGradient *)self transformForSize:width, height, 0.0];
      v12 = 0uLL;
      v14 = *&v54.a;
      v15 = *&v54.c;
      v13 = *&v54.tx;
    }

    v16 = vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v15, v46), v14, v47));
    v17 = 0uLL;
    v18 = 0uLL;
    if (self)
    {
      v48 = v16;
      [(TSDTransformGradient *)self transformForSize:width, height];
      v16 = v48;
      v17 = *&v54.a;
      v18 = *&v54.c;
      v12 = *&v54.tx;
    }

    v19 = v16.f64[1];
    v20 = vaddq_f64(v12, vmlaq_n_f64(vmulq_n_f64(v18, v50), v17, v51));
    v21 = v20.f64[1];
  }

  else
  {
    v22 = 0uLL;
    memset(&v54, 0, sizeof(v54));
    if (self)
    {
      [(TSDTransformGradient *)self transformForSize:width, height];
      v22 = 0uLL;
    }

    *&v53.c = v22;
    *&v53.tx = v22;
    *&v53.a = v22;
    v52 = v54;
    CGAffineTransformInvert(&v53, &v52);
    v23 = TSDSubtractPoints(v51, v50, v47);
    v52 = v53;
    v25 = TSDDeltaApplyAffineTransform(&v52, v23, v24);
    v26 = v54.tx + v46 * v54.c + v54.a * v47;
    v27 = v54.ty + v46 * v54.d + v54.b * v47;
    v28 = v54.tx + v50 * v54.c + v54.a * v51;
    v29 = v54.ty + v50 * v54.d + v54.b * v51;
    v31 = TSDNormalizePoint(v25, v30);
    v33 = v32;
    v34 = TSDSubtractPoints(v28, v29, v26);
    v36 = TSDDotPoints(v31, v33, v34, v35);
    v37 = TSDMultiplyPointScalar(v31, v33, v36);
    v39 = v38;
    v40 = TSDMixPoints(v26, v27, v28, v29, 0.5);
    v42 = v41;
    v43 = TSDMultiplyPointScalar(v37, v39, -0.5);
    v49 = TSDAddPoints(v40, v42, v43);
    v19 = v44;
    v45 = TSDMultiplyPointScalar(v37, v39, 0.5);
    v20.f64[0] = TSDAddPoints(v40, v42, v45);
    v16.f64[0] = v49;
  }

  if (!v4)
  {
    v20.f64[0] = v16.f64[0];
    v21 = v19;
  }

  result.x = v20.f64[0];
  result.y = v21;
  return result;
}

- (void)setBaseNaturalSize:(CGSize)a3
{
  if (a3.height <= 0.0)
  {
    a3.height = 1.0;
  }

  if (a3.width <= 0.0)
  {
    a3.width = 1.0;
  }

  self->mBaseNaturalSize = a3;
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(TSDGradient *)self shadingRef];
  CGContextSaveGState(a4);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextClipToRect(a4, v16);
  if ([(TSDGradient *)self gradientType])
  {
    if (self)
    {
      [(TSDGradient *)self centeredRadialTransformInRect:x, y, width, height];
    }

    else
    {
      memset(&v15, 0, sizeof(v15));
    }

    CGContextConcatCTM(a4, &v15);
  }

  else
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MidX = CGRectGetMidX(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinY = CGRectGetMinY(v18);
    CGContextTranslateCTM(a4, MidX, MinY);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v13 = CGRectGetWidth(v19) / 200.0;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v14 = CGRectGetHeight(v20);
    CGContextScaleCTM(a4, v13, v14 / 100.0);
  }

  [(TSDGradient *)self p_setAlpha:a4, *&v15.a, *&v15.c, *&v15.tx];
  CGContextSetInterpolationQuality(a4, kCGInterpolationHigh);
  CGContextDrawShading(a4, v10);
  CGContextRestoreGState(a4);
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  BoundingBox = CGPathGetBoundingBox(a3);

  [(TSDTransformGradient *)self paintPath:a3 naturalBounds:a4 inContext:0 isPDF:BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height];
}

- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CGContextSaveGState(a5);
  CGContextAddPath(a5, a3);
  CGContextClip(a5);
  CGContextTranslateCTM(a5, x, y);
  if ((a6 || TSDCGContextIsPDFContext(a5)) && [(TSDGradient *)self hasAlpha]|| TSDCGContextIsPrintContext(a5))
  {
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *MEMORY[0x277CBF3A0];
    v17 = v14;
    v15 = [(TSDGradient *)self p_beginBitmapWrapperContextInContext:a5 returningIntegralBounds:&v16];
    if (v15)
    {
      [(TSDTransformGradient *)self p_drawQuartzShadingInContext:v15 withGradientNaturalSize:width baseNaturalSize:height start:self->mBaseNaturalSize.width end:self->mBaseNaturalSize.height, self->mStart.x, self->mStart.y, self->mEnd.x, self->mEnd.y];
    }

    [(TSDGradient *)self p_endBitmapWrapperContext:v15 inContext:a5 withIntegralBounds:v16, v17];
  }

  else
  {
    [(TSDTransformGradient *)self p_drawQuartzShadingInContext:a5 withGradientNaturalSize:width baseNaturalSize:height start:self->mBaseNaturalSize.width end:self->mBaseNaturalSize.height, self->mStart.x, self->mStart.y, self->mEnd.x, self->mEnd.y];
  }

  CGContextRestoreGState(a5);
}

- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4
{
  [(TSDTransformGradient *)self normalizedPointForSize:0 endPoint:a4.size.width, a4.size.height];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4
{
  [(TSDTransformGradient *)self normalizedPointForSize:1 endPoint:a4.size.width, a4.size.height];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)baseNaturalSizeForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  if ([(TSDGradient *)self gradientType:a3.origin.x])
  {
    [(TSDTransformGradient *)self baseNaturalSize];
    width = v6;
    height = v7;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (double)gradientAngleInDegrees
{
  v2 = TSDAngleFromDelta(self->mEnd.x - self->mStart.x, self->mStart.y - self->mEnd.y) * 57.2957795;

  TSDNormalizeAngleInDegrees(v2);
  return result;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TSDTransformGradient_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __45__TSDTransformGradient_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTransformGradient mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 1588, @"nil object after cast"}];
  }

  v5 = [*(a1 + 40) gradientType];
  if (v5 != [v2 gradientType])
  {
    return 1;
  }

  v6 = [objc_msgSend(*(a1 + 40) "gradientStops")];
  if (v6 != [objc_msgSend(v2 "gradientStops")])
  {
    return 2;
  }

  [*(a1 + 40) startPoint];
  v8 = v7;
  v10 = v9;
  [v2 startPoint];
  v13 = v8 == v12 && v10 == v11;
  if (v13 && (([*(a1 + 40) endPoint], v15 = v14, v17 = v16, objc_msgSend(v2, "endPoint"), v15 == v19) ? (v20 = v17 == v18) : (v20 = 0), v20 && (objc_msgSend(*(a1 + 40), "baseNaturalSize"), v23 = v22, v25 = v24, objc_msgSend(v2, "baseNaturalSize"), v23 == v27) && v25 == v26))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__TSDTransformGradient_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDMutableTransformGradient *__57__TSDTransformGradient_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(*(a1 + 40), "gradientStops"), "count")}];
  if ([objc_msgSend(*(a1 + 40) "gradientStops")])
  {
    v4 = 0;
    do
    {
      [v3 addObject:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 40), "gradientStops"), "objectAtIndex:", v4), "mixedObjectWithFraction:ofObject:", objc_msgSend(objc_msgSend(v2, "gradientStops"), "objectAtIndex:", v4), *(a1 + 48))}];
      ++v4;
    }

    while (v4 < [objc_msgSend(*(a1 + 40) "gradientStops")]);
  }

  v5 = -[TSDTransformGradient initWithGradientStops:type:]([TSDMutableTransformGradient alloc], "initWithGradientStops:type:", v3, [*(a1 + 40) gradientType]);
  [*(a1 + 40) opacity];
  v7 = v6;
  [v2 opacity];
  [(TSDGradient *)v5 setOpacity:TSDMixFloats(v7, v8, *(a1 + 48))];
  [*(a1 + 40) startPoint];
  v10 = v9;
  v12 = v11;
  [v2 startPoint];
  [(TSDTransformGradient *)v5 setStartPoint:TSDMixPoints(v10, v12, v13, v14, *(a1 + 48))];
  [*(a1 + 40) endPoint];
  v16 = v15;
  v18 = v17;
  [v2 endPoint];
  [(TSDTransformGradient *)v5 setEndPoint:TSDMixPoints(v16, v18, v19, v20, *(a1 + 48))];
  [*(a1 + 40) baseNaturalSize];
  v22 = v21;
  v24 = v23;
  [v2 baseNaturalSize];
  [(TSDTransformGradient *)v5 setBaseNaturalSize:TSDMixSizes(v22, v24, v25, v26, *(a1 + 48))];
  return v5;
}

- (void)p_setDefaultValues
{
  p_mStart = &self->mStart;
  v4 = TSDRoundedPoint();
  p_mStart->x = v4;
  p_mStart->y = v5;
  TSDAddPoints(v4, v5, 0.0);
  self->mEnd.x = TSDRoundedPoint();
  self->mEnd.y = v6;
  self->mBaseNaturalSize = vdupq_n_s64(0x4059000000000000uLL);
}

- (CGPoint)p_scalePoint:(CGPoint)a3 toShapeWithNaturalSize:(CGSize)a4
{
  v4 = a3.x * a4.width / self->mBaseNaturalSize.width;
  v5 = a3.y * a4.height / self->mBaseNaturalSize.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)p_scalePoint:(CGPoint)a3 fromShapeWithNaturalSize:(CGSize)a4
{
  v4 = a3.x * self->mBaseNaturalSize.width / a4.width;
  v5 = a3.y * self->mBaseNaturalSize.height / a4.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)p_drawQuartzShadingInContext:(CGContext *)a3 withGradientNaturalSize:(CGSize)a4 baseNaturalSize:(CGSize)a5 start:(CGPoint)a6 end:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6.y;
  v10 = a6.x;
  if (self)
  {
    [(TSDTransformGradient *)self transformForSize:a4.width, a4.height, a5.width, a5.height];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  CGContextConcatCTM(a3, &v17);
  CGContextTranslateCTM(a3, v10, v9);
  v13 = TSDSubtractPoints(x, y, v10);
  v15 = TSDAngleFromDelta(v13, v14);
  CGContextRotateCTM(a3, v15);
  v16 = TSDDistance(v10, v9, x, y);
  CGContextScaleCTM(a3, v16 / 100.0, v16 / 100.0);
  [(TSDGradient *)self p_setAlpha:a3];
  CGContextSetInterpolationQuality(a3, kCGInterpolationHigh);
  CGContextDrawShading(a3, [(TSDGradient *)self shadingRef]);
}

- (CGPoint)startPoint
{
  x = self->mStart.x;
  y = self->mStart.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->mEnd.x;
  y = self->mEnd.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)baseNaturalSize
{
  width = self->mBaseNaturalSize.width;
  height = self->mBaseNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
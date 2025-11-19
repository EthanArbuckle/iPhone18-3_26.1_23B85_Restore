@interface TSDAngleGradient
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)p_shadingTransformForBounds:(SEL)a3;
- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4;
- (TSDAngleGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5 angle:(double)a6;
- (TSDAngleGradient)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5 angle:(double)a6;
- (double)p_bestGradientLengthForRect:(CGRect)a3 atAngle:(double)a4;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4 atAngle:(double)a5;
- (void)setLastColor:(id)a3;
@end

@implementation TSDAngleGradient

- (void)setLastColor:(id)a3
{
  v5 = [(NSArray *)[(TSDGradient *)self gradientStops] count]- 1;

  [(TSDAngleGradient *)self setColorOfStopAtIndex:v5 toColor:a3];
}

- (TSDAngleGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5 angle:(double)a6
{
  v8.receiver = self;
  v8.super_class = TSDAngleGradient;
  result = [(TSDGradient *)&v8 initWithGradientStops:a3 type:a4 opacity:a5];
  if (result)
  {
    result->mAngle = a6;
  }

  return result;
}

- (TSDAngleGradient)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5 angle:(double)a6
{
  v8.receiver = self;
  v8.super_class = TSDAngleGradient;
  result = [(TSDGradient *)&v8 initWithStartColor:a3 endColor:a4 type:a5];
  if (result)
  {
    result->mAngle = a6;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TSDGradient *)self gradientType];
  [(TSDGradient *)self opacity];
  return [v3 stringWithFormat:@"TSDAngleGradient<%p>: type=%lu opacity=%f angle=%f \n\tstops=%@", self, v4, v5, *&self->mAngle, -[TSDGradient gradientStops](self, "gradientStops")];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TSDAngleGradient;
  [(TSDGradient *)&v3 hash];
  return TSUHashWithSeed();
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = v7;
      v11.receiver = self;
      v11.super_class = TSDAngleGradient;
      LODWORD(v7) = [(TSDGradient *)&v11 isEqual:a3];
      if (v7)
      {
        [v8 gradientAngle];
        LOBYTE(v7) = v9 == self->mAngle;
      }
    }
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableAngleGradient allocWithZone:a3];
  v5 = [(TSDGradient *)self gradientStops];
  v6 = [(TSDGradient *)self gradientType];
  [(TSDGradient *)self opacity];
  v8 = v7;
  [(TSDAngleGradient *)self gradientAngle];
  v10 = [(TSDAngleGradient *)v4 initWithGradientStops:v5 type:v6 opacity:v8 angle:v9];
  [(TSDGradient *)v10 setIsAdvancedGradient:self->super.mIsAdvancedGradient];
  return v10;
}

- (double)p_bestGradientLengthForRect:(CGRect)a3 atAngle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3) * 0.5;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v9 = CGRectGetHeight(v23) * 0.5;
  v18 = *(MEMORY[0x277CBF348] + 8);
  v19 = *MEMORY[0x277CBF348];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v10 = CGRectGetWidth(v24);
  memset(&v22, 0, sizeof(v22));
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v11;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformTranslate(&v22, &v21, v8, v9);
  v20 = v22;
  CGAffineTransformRotate(&v21, &v20, -a4);
  v22 = v21;
  v20 = v21;
  CGAffineTransformTranslate(&v21, &v20, -v8, -v9);
  v22 = v21;
  v12 = v21.tx + v18 * v21.c + v21.a * v19;
  v13 = v21.ty + v18 * v21.d + v21.b * v19;
  if (v13 != v9)
  {
    v14 = v21.ty + v21.d * 0.0 + v21.b * v10;
    if (v14 == v9)
    {
      v12 = v21.tx + v21.c * 0.0 + v21.a * v10;
      v13 = v21.ty + v21.d * 0.0 + v21.b * v10;
    }

    else
    {
      if (vabdd_f64(v13, v9) >= vabdd_f64(v14, v9))
      {
        v15 = v21.tx + v21.c * 0.0 + v21.a * v10;
      }

      else
      {
        v15 = v21.tx + v18 * v21.c + v21.a * v19;
      }

      v12 = v8;
      v13 = v9;
      v8 = v15;
    }
  }

  return TSDDistance(v12, v13, v8, v9);
}

- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4
{
  [a3 bounds];
  if (self)
  {
    [(TSDAngleGradient *)self p_shadingTransformForBounds:?];
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
  }

  else
  {
    v7 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v8 = vaddq_f64(v7, vmlaq_n_f64(vmulq_n_f64(v6, *(MEMORY[0x277CBF348] + 8)), v5, *MEMORY[0x277CBF348]));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4
{
  [a3 bounds];
  if (self)
  {
    [(TSDAngleGradient *)self p_shadingTransformForBounds:?];
    v5 = 0u;
    v6 = 0u;
    v7 = vmulq_f64(0, 0);
  }

  else
  {
    v7 = 0uLL;
    v6 = 0uLL;
    v5 = 0uLL;
  }

  v8 = vaddq_f64(v6, vmlaq_f64(v7, vdupq_n_s64(0x4059000000000000uLL), v5));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4 atAngle:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(TSDGradient *)self shadingRef];
  CGContextSaveGState(a4);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGContextClipToRect(a4, v28);
  if ([(TSDGradient *)self gradientType])
  {
    if (self)
    {
      [(TSDGradient *)self centeredRadialTransformInRect:x, y, width, height];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    CGContextConcatCTM(a4, &v25);
  }

  else
  {
    [(TSDAngleGradient *)self p_bestGradientLengthForRect:x atAngle:y, width, height, -a5];
    v14 = v13;
    *&v25.a = 0uLL;
    v26 = 0.0;
    v27 = 0.0;
    TSDOriginRotate(&v26, v13, -a5);
    TSDOriginRotate(&v25.a, v14, 3.14159265 - a5);
    v15 = TSDCenterOfRect(x, y, width, height);
    v17 = v16;
    v18 = TSDAddPoints(v15, v16, v26);
    v20 = v19;
    v26 = v18;
    v27 = v19;
    v21 = TSDAddPoints(v15, v17, v25.a);
    v23 = v22;
    v25.a = v21;
    v25.b = v22;
    v24 = TSDDistance(v21, v22, v18, v20);
    CGContextTranslateCTM(a4, v21, v23);
    CGContextRotateCTM(a4, -a5);
    CGContextScaleCTM(a4, v24 / 100.0, v24 / 100.0);
  }

  [(TSDGradient *)self p_setAlpha:a4, *&v25.a, *&v25.c, *&v25.tx];
  CGContextSetInterpolationQuality(a4, kCGInterpolationHigh);
  CGContextDrawShading(a4, v12);
  CGContextRestoreGState(a4);
}

- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6
{
  CGContextSaveGState(a5);
  CGContextAddPath(a5, a3);
  CGContextClip(a5);
  if ((a6 || TSDCGContextIsPDFContext(a5)) && [(TSDGradient *)self hasAlpha]|| TSDCGContextIsPrintContext(a5))
  {
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *MEMORY[0x277CBF3A0];
    v13 = v10;
    v11 = [(TSDGradient *)self p_beginBitmapWrapperContextInContext:a5 returningIntegralBounds:&v12];
    if (v11)
    {
      [(TSDAngleGradient *)self p_paintPath:a3 inContext:v11];
    }

    [(TSDGradient *)self p_endBitmapWrapperContext:v11 inContext:a5 withIntegralBounds:v12, v13];
  }

  else
  {
    [(TSDAngleGradient *)self p_paintPath:a3 inContext:a5];
  }

  CGContextRestoreGState(a5);
}

- (CGAffineTransform)p_shadingTransformForBounds:(SEL)a3
{
  v66 = CGRectInset(a4, -1.0, -1.0);
  x = v66.origin.x;
  y = v66.origin.y;
  width = v66.size.width;
  height = v66.size.height;
  v10 = MEMORY[0x277CBF2C0];
  v60 = *(MEMORY[0x277CBF2C0] + 16);
  v61 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v60;
  v59 = *(v10 + 32);
  *&retstr->tx = v59;
  mType = self->super.mType;
  MidX = CGRectGetMidX(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  MidY = CGRectGetMidY(v67);
  if (mType)
  {
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    MaxX = CGRectGetMaxX(v68);
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    MaxY = CGRectGetMaxY(v69);
    TSDTransformMakeFree(0, retstr, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 100.0, 0.0, MidX, MidY, MaxX, MaxY);
    v16 = TSDMixPoints(MidX, MidY, MaxX, MaxY, 0.5);
    v18 = v17;
    memset(&v65, 0, sizeof(v65));
    CGAffineTransformMakeRotation(&v65, 5.49778714 - self->mAngle);
    v19 = TSDMultiplyPointScalar(v16, v18, -1.0);
    t1 = v65;
    TSDTransformConvertForNewOrigin(&t1, &v64, v19, v20);
    v65 = v64;
    v21 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v21;
    *&t1.tx = *&retstr->tx;
    t2 = v64;
    result = CGAffineTransformConcat(&v64, &t1, &t2);
    v23 = *&v64.c;
    *&retstr->a = *&v64.a;
    *&retstr->c = v23;
    v24 = *&v64.tx;
  }

  else
  {
    *&v65.a = v61;
    *&v65.c = v60;
    *&v65.tx = v59;
    CGAffineTransformTranslate(retstr, &v65, MidX, MidY);
    mAngle = self->mAngle;
    v26 = *&retstr->c;
    *&v64.a = *&retstr->a;
    *&v64.c = v26;
    *&v64.tx = *&retstr->tx;
    CGAffineTransformRotate(&v65, &v64, mAngle);
    v27 = *&v65.c;
    *&retstr->a = *&v65.a;
    *&retstr->c = v27;
    *&retstr->tx = *&v65.tx;
    v28 = x;
    *&v27 = y;
    v29 = width;
    v30 = height;
    v31 = -CGRectGetMidX(*(&v27 - 8));
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    v32 = CGRectGetMidY(v70);
    v33 = *&retstr->c;
    *&v64.a = *&retstr->a;
    *&v64.c = v33;
    *&v64.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v65, &v64, v31, -v32);
    v34 = *&v65.c;
    *&retstr->a = *&v65.a;
    *&retstr->c = v34;
    *&retstr->tx = *&v65.tx;
    v35 = *&retstr->c;
    *&v65.a = *&retstr->a;
    *&v65.c = v35;
    *&v65.tx = *&retstr->tx;
    v36 = x;
    *&v35 = y;
    v37 = width;
    v38 = height;
    v71 = CGRectApplyAffineTransform(*(&v35 - 8), &v65);
    v39 = v71.origin.x;
    v40 = v71.origin.y;
    v41 = v71.size.width;
    v42 = v71.size.height;
    *&retstr->a = v61;
    *&retstr->c = v60;
    *&retstr->tx = v59;
    v43 = CGRectGetMidX(v71);
    v72.origin.x = v39;
    v72.origin.y = v40;
    v72.size.width = v41;
    v72.size.height = v42;
    v44 = CGRectGetMidY(v72);
    v45 = *&retstr->c;
    *&v64.a = *&retstr->a;
    *&v64.c = v45;
    *&v64.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v65, &v64, v43, v44);
    v46 = *&v65.c;
    *&retstr->a = *&v65.a;
    *&retstr->c = v46;
    *&retstr->tx = *&v65.tx;
    v47 = -self->mAngle;
    v48 = *&retstr->c;
    *&v64.a = *&retstr->a;
    *&v64.c = v48;
    *&v64.tx = *&retstr->tx;
    CGAffineTransformRotate(&v65, &v64, v47);
    v49 = *&v65.c;
    *&retstr->a = *&v65.a;
    *&retstr->c = v49;
    *&retstr->tx = *&v65.tx;
    v50 = v39;
    *&v49 = v40;
    v51 = v41;
    v52 = v42;
    v53 = CGRectGetWidth(*(&v49 - 8)) / 100.0;
    v73.origin.x = v39;
    v73.origin.y = v40;
    v73.size.width = v41;
    v73.size.height = v42;
    v54 = CGRectGetHeight(v73);
    v55 = *&retstr->c;
    *&v64.a = *&retstr->a;
    *&v64.c = v55;
    *&v64.tx = *&retstr->tx;
    CGAffineTransformScale(&v65, &v64, v53, v54 / 100.0);
    v56 = *&v65.c;
    *&retstr->a = *&v65.a;
    *&retstr->c = v56;
    *&retstr->tx = *&v65.tx;
    CGAffineTransformMakeTranslation(&v64, -50.0, 0.0);
    v57 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v57;
    *&t1.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&v65, &v64, &t1);
    v58 = *&v65.c;
    *&retstr->a = *&v65.a;
    *&retstr->c = v58;
    v24 = *&v65.tx;
  }

  *&retstr->tx = v24;
  return result;
}

- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  memset(&v8, 0, sizeof(v8));
  PathBoundingBox = CGPathGetPathBoundingBox(a3);
  if (self)
  {
    [(TSDAngleGradient *)self p_shadingTransformForBounds:PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v7 = v8;
  CGContextConcatCTM(a4, &v7);
  CGContextSetInterpolationQuality(a4, kCGInterpolationHigh);
  v6 = [(TSDGradient *)self shadingRef];
  CGShadingRetain(v6);
  [(TSDGradient *)self p_setAlpha:a4];
  CGContextDrawShading(a4, v6);
  CGShadingRelease(v6);
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__TSDAngleGradient_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __41__TSDAngleGradient_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDAngleGradient mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 1216, @"nil object after cast"}];
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

  [*(a1 + 40) gradientAngle];
  v8 = v7;
  [v2 gradientAngle];
  if (v8 == v9)
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
  v5[2] = __53__TSDAngleGradient_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDAngleGradient *__53__TSDAngleGradient_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
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

  [*(a1 + 40) opacity];
  v6 = v5;
  [v2 opacity];
  v8 = TSDMixFloats(v6, v7, *(a1 + 48));
  [*(a1 + 40) gradientAngle];
  v10 = v9;
  [v2 gradientAngle];
  v12 = -[TSDAngleGradient initWithGradientStops:type:opacity:angle:]([TSDAngleGradient alloc], "initWithGradientStops:type:opacity:angle:", v3, [*(a1 + 40) gradientType], v8, TSDMixFloats(v10, v11, *(a1 + 48)));

  return v12;
}

@end
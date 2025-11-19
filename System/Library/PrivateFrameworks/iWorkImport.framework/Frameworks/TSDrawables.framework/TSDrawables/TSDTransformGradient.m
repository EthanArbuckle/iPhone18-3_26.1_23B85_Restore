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
- (TSDTransformGradient)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDTransformGradient)initWithGradient:(id)a3 inPath:(id)a4 andBounds:(CGRect)a5;
- (TSDTransformGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4;
- (TSDTransformGradient)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5;
- (double)gradientAngleInDegrees;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)p_drawQuartzGradientInContext:(CGContext *)a3 withGradientNaturalSize:(CGSize)a4 baseNaturalSize:(CGSize)a5 start:(CGPoint)a6 end:(CGPoint)a7;
- (void)p_setBaseNaturalSize:(CGSize)a3;
- (void)p_setDefaultValues;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDTransformGradient

- (TSDTransformGradient)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = TSDTransformGradient;
  v5 = [(TSDGradient *)&v10 initWithStartColor:a3 endColor:a4 type:a5];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_p_setDefaultValues(v5, v6, v7);
  }

  return v8;
}

- (TSDTransformGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = TSDTransformGradient;
  v4 = [(TSDGradient *)&v9 initWithGradientStops:a3 type:a4];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_p_setDefaultValues(v4, v5, v6);
  }

  return v7;
}

- (TSDTransformGradient)initWithGradient:(id)a3 inPath:(id)a4 andBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v15 = objc_msgSend_gradientStops(v11, v13, v14);
  v18 = objc_msgSend_gradientType(v11, v16, v17);
  v33.receiver = self;
  v33.super_class = TSDTransformGradient;
  v19 = [(TSDGradient *)&v33 initWithGradientStops:v15 type:v18];

  if (v19)
  {
    objc_opt_class();
    v20 = TSUDynamicCast();
    v23 = v20;
    if (v20)
    {
      objc_msgSend_baseNaturalSizeForBounds_(v20, v21, v22, x, y, width, height);
      width = v24;
      height = v25;
    }

    v19->_baseNaturalSize.width = width;
    v19->_baseNaturalSize.height = height;
    TSURectWithSize();
    objc_msgSend_startPointForPath_andBounds_(v11, v26, v12);
    v19->_startPoint.x = v27;
    v19->_startPoint.y = v28;
    TSURectWithSize();
    objc_msgSend_endPointForPath_andBounds_(v11, v29, v12);
    v19->_endPoint.x = v30;
    v19->_endPoint.y = v31;
  }

  return v19;
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_gradientType(self, v6, v7);
  objc_msgSend_opacity(self, v9, v10);
  v12 = v11;
  v13 = NSStringFromCGPoint(self->_startPoint);
  v14 = NSStringFromCGPoint(self->_endPoint);
  v17 = objc_msgSend_gradientStops(self, v15, v16);
  v18 = NSStringFromCGSize(self->_baseNaturalSize);
  v20 = objc_msgSend_stringWithFormat_(v3, v19, @"%@<%p>: type=%tu opacity=%f start=%@ end=%@ \n\tstops=%@ \n\tbase size=%@", v5, self, v8, v12, v13, v14, v17, v18);

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5 && (v23.receiver = self, v23.super_class = TSDTransformGradient, [(TSDGradient *)&v23 isEqual:v4]) && ((objc_msgSend_startPoint(v5, v6, v7), self->_startPoint.x == v11) ? (v12 = self->_startPoint.y == v10) : (v12 = 0), v12 && ((objc_msgSend_endPoint(v5, v8, v9), self->_endPoint.x == v16) ? (v17 = self->_endPoint.y == v15) : (v17 = 0), v17)))
    {
      p_baseNaturalSize = &self->_baseNaturalSize;
      objc_msgSend_baseNaturalSize(v5, v13, v14);
      v18 = p_baseNaturalSize->height == v22 && p_baseNaturalSize->width == v21;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (BOOL)isEqualIgnoringTransform:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5 && (v13.receiver = self, v13.super_class = TSDTransformGradient, [(TSDGradient *)&v13 isEqual:v4]))
    {
      p_baseNaturalSize = &self->_baseNaturalSize;
      objc_msgSend_baseNaturalSize(v5, v6, v7);
      v11 = p_baseNaturalSize->height == v10 && p_baseNaturalSize->width == v9;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableTransformGradient, a2, a3);
  v7 = objc_msgSend_gradientStops(self, v5, v6);
  v10 = objc_msgSend_gradientType(self, v8, v9);
  objc_msgSend_opacity(self, v11, v12);
  v14 = objc_msgSend_initWithGradientStops_type_opacity_(v4, v13, v7, v10);

  v17 = objc_msgSend_i_advancedGradientFlag(self, v15, v16);
  objc_msgSend_i_setAdvancedGradientFlag_(v14, v18, v17);
  objc_msgSend_startPoint(self, v19, v20);
  objc_msgSend_setStartPoint_(v14, v21, v22);
  objc_msgSend_endPoint(self, v23, v24);
  objc_msgSend_setEndPoint_(v14, v25, v26);
  objc_msgSend_baseNaturalSize(self, v27, v28);
  objc_msgSend_setBaseNaturalSize_(v14, v29, v30);
  return v14;
}

- (CGPoint)normalizedPointForSize:(CGSize)a3 endPoint:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  objc_msgSend_startPoint(self, a2, a4);
  v25 = v9;
  v26 = v8;
  objc_msgSend_endPoint(self, v10, v11);
  v28 = v13;
  v29 = v12;
  if (objc_msgSend_gradientType(self, v14, v15))
  {
    objc_msgSend_transformForSize_(self, v16, v17, width, height);
    v27 = vaddq_f64(v34, vmlaq_n_f64(vmulq_n_f64(v33, v25), v32, v26));
    v18 = v27.f64[1];
    objc_msgSend_transformForSize_(self, v19, v20, width, height);
    v21 = vaddq_f64(v34, vmlaq_n_f64(vmulq_n_f64(v33, v28), v32, v29));
    v22 = v21.f64[1];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    objc_msgSend_transformForSize_(self, v16, v17, width, height);
    *&v30.a = v32;
    *&v30.c = v33;
    *&v30.tx = v34;
    memset(&v31, 0, sizeof(v31));
    CGAffineTransformInvert(&v31, &v30);
    TSUSubtractPoints();
    v30 = v31;
    TSUDeltaApplyAffineTransform();
    TSUNormalizePoint();
    TSUSubtractPoints();
    TSUDotPoints();
    TSUMultiplyPointScalar();
    TSUMixPoints();
    TSUMultiplyPointScalar();
    TSUAddPoints();
    v27.f64[0] = v23;
    v18 = v24;
    TSUMultiplyPointScalar();
    TSUAddPoints();
  }

  if (!v4)
  {
    v21.f64[0] = v27.f64[0];
    v22 = v18;
  }

  result.x = v21.f64[0];
  result.y = v22;
  return result;
}

- (void)p_setBaseNaturalSize:(CGSize)a3
{
  if (a3.height <= 0.0)
  {
    a3.height = 1.0;
  }

  if (a3.width <= 0.0)
  {
    a3.width = 1.0;
  }

  self->_baseNaturalSize = a3;
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = objc_msgSend_p_CGGradient(self, a2, a4);
  CGContextSaveGState(a4);
  CGContextClipToRectSafe();
  objc_msgSend_p_prepareForDrawingInContext_(self, v11, a4);
  if (objc_msgSend_gradientType(self, v12, v13))
  {
    objc_msgSend_centeredRadialTransformInRect_(self, v14, v15, x, y, width, height);
    CGContextConcatCTM(a4, &v20);
    v21 = **&MEMORY[0x277CBF348];
    v23.x = *MEMORY[0x277CBF348];
    v23.y = v21.y;
    CGContextDrawRadialGradient(a4, v10, *MEMORY[0x277CBF348], 0.0, v23, 100.0, 3u);
  }

  else
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MidX = CGRectGetMidX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinY = CGRectGetMinY(v25);
    CGContextTranslateCTM(a4, MidX, MinY);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v18 = CGRectGetWidth(v26) / 200.0;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v19 = CGRectGetHeight(v27);
    CGContextScaleCTM(a4, v18, v19 / 100.0);
    v22.y = 0.0;
    v22.x = 100.0;
    CGContextDrawLinearGradient(a4, v10, *MEMORY[0x277CBF348], v22, 3u);
  }

  CGContextRestoreGState(a4);
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  BoundingBox = CGPathGetBoundingBox(a3);

  objc_msgSend_paintPath_naturalBounds_inContext_isPDF_(self, v7, a3, a4, 0, BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height);
}

- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CGContextSaveGState(a5);
  CGContextAddPathSafe();
  CGContextClip(a5);
  CGContextTranslateCTM(a5, x, y);
  if ((a6 || TSDCGContextIsPDFContext(a5)) && (objc_msgSend_p_stopsHaveAlpha(self, v13, v14) & 1) != 0 || TSDCGContextIsPrintContext(a5))
  {
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *MEMORY[0x277CBF3A0];
    v20 = v16;
    v18 = objc_msgSend_p_beginBitmapWrapperContextInContext_returningIntegralBounds_(self, v15, a5, &v19);
    if (v18)
    {
      objc_msgSend_p_drawQuartzGradientInContext_withGradientNaturalSize_baseNaturalSize_start_end_(self, v17, v18, width, height, self->_baseNaturalSize.width, self->_baseNaturalSize.height, self->_startPoint.x, self->_startPoint.y, self->_endPoint.x, self->_endPoint.y);
    }

    objc_msgSend_p_endBitmapWrapperContext_inContext_withIntegralBounds_(self, v17, v18, a5, v19, v20);
  }

  else
  {
    objc_msgSend_p_drawQuartzGradientInContext_withGradientNaturalSize_baseNaturalSize_start_end_(self, v15, a5, width, height, self->_baseNaturalSize.width, self->_baseNaturalSize.height, self->_startPoint.x, self->_startPoint.y, self->_endPoint.x, self->_endPoint.y);
  }

  CGContextRestoreGState(a5);
}

- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4
{
  MEMORY[0x2821F9670](self, sel_normalizedPointForSize_endPoint_, 0);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4
{
  MEMORY[0x2821F9670](self, sel_normalizedPointForSize_endPoint_, 1);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)baseNaturalSizeForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  if (objc_msgSend_gradientType(self, a2, v3, a3.origin.x, a3.origin.y))
  {
    objc_msgSend_baseNaturalSize(self, v7, v8);
    width = v9;
    height = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)gradientAngleInDegrees
{
  TSUAngleFromDelta();

  TSUNormalizeAngleInDegrees();
  return result;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDTransformGradient mixingTypeWithObject:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1661, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_gradientType(self, v6, v7);
  if (v15 == objc_msgSend_gradientType(v5, v16, v17))
  {
    v20 = objc_msgSend_gradientStops(self, v18, v19);
    v23 = objc_msgSend_count(v20, v21, v22);
    v26 = objc_msgSend_gradientStops(v5, v24, v25);
    v29 = objc_msgSend_count(v26, v27, v28);

    if (v23 == v29)
    {
      objc_msgSend_startPoint(self, v30, v31);
      v33 = v32;
      v35 = v34;
      objc_msgSend_startPoint(v5, v36, v37);
      v42 = v33 == v41 && v35 == v40;
      if (v42 && (objc_msgSend_endPoint(self, v38, v39), v46 = v45, v48 = v47, objc_msgSend_endPoint(v5, v49, v50), v46 == v54) && v48 == v53 && (objc_msgSend_baseNaturalSize(self, v51, v52), v56 = v55, v58 = v57, objc_msgSend_baseNaturalSize(v5, v59, v60), v56 == v62) && v58 == v61)
      {
        v43 = 4;
      }

      else
      {
        v43 = 3;
      }
    }

    else
    {
      v43 = 2;
    }
  }

  else
  {
    v43 = 1;
  }

  return v43;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v8 = MEMORY[0x277CBEB18];
  v11 = objc_msgSend_gradientStops(self, v9, v10);
  v14 = objc_msgSend_count(v11, v12, v13);
  v16 = objc_msgSend_arrayWithCapacity_(v8, v15, v14);

  v19 = objc_msgSend_gradientStops(self, v17, v18);
  v22 = objc_msgSend_count(v19, v20, v21);

  if (v22)
  {
    v25 = 0;
    do
    {
      v26 = objc_msgSend_gradientStops(self, v23, v24);
      v28 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, v25);

      v31 = objc_msgSend_gradientStops(v7, v29, v30);
      v33 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, v25);

      v35 = objc_msgSend_mixedObjectWithFraction_ofObject_(v28, v34, v33, a3);
      objc_msgSend_addObject_(v16, v36, v35);

      ++v25;
      v39 = objc_msgSend_gradientStops(self, v37, v38);
      v42 = objc_msgSend_count(v39, v40, v41);
    }

    while (v25 < v42);
  }

  v43 = [TSDMutableTransformGradient alloc];
  v46 = objc_msgSend_gradientType(self, v44, v45);
  v48 = objc_msgSend_initWithGradientStops_type_(v43, v47, v16, v46);
  objc_msgSend_opacity(self, v49, v50);
  objc_msgSend_opacity(v7, v51, v52);
  TSUMixFloats();
  objc_msgSend_setOpacity_(v48, v53, v54);
  objc_msgSend_startPoint(self, v55, v56);
  objc_msgSend_startPoint(v7, v57, v58);
  TSUMixPoints();
  objc_msgSend_setStartPoint_(v48, v59, v60);
  objc_msgSend_endPoint(self, v61, v62);
  objc_msgSend_endPoint(v7, v63, v64);
  TSUMixPoints();
  objc_msgSend_setEndPoint_(v48, v65, v66);
  objc_msgSend_baseNaturalSize(self, v67, v68);
  objc_msgSend_baseNaturalSize(v7, v69, v70);
  TSUMixSizes();
  objc_msgSend_setBaseNaturalSize_(v48, v71, v72);

  return v48;
}

- (void)p_setDefaultValues
{
  p_startPoint = &self->_startPoint;
  TSURoundedPoint();
  p_startPoint->x = v4;
  p_startPoint->y = v5;
  TSUAddPoints();
  TSURoundedPoint();
  self->_endPoint.x = v6;
  self->_endPoint.y = v7;
  self->_baseNaturalSize = vdupq_n_s64(0x4059000000000000uLL);
}

- (CGPoint)p_scalePoint:(CGPoint)a3 toShapeWithNaturalSize:(CGSize)a4
{
  v4 = a3.x * a4.width / self->_baseNaturalSize.width;
  v5 = a3.y * a4.height / self->_baseNaturalSize.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)p_scalePoint:(CGPoint)a3 fromShapeWithNaturalSize:(CGSize)a4
{
  v4 = a3.x * self->_baseNaturalSize.width / a4.width;
  v5 = a3.y * self->_baseNaturalSize.height / a4.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)p_drawQuartzGradientInContext:(CGContext *)a3 withGradientNaturalSize:(CGSize)a4 baseNaturalSize:(CGSize)a5 start:(CGPoint)a6 end:(CGPoint)a7
{
  y = a6.y;
  x = a6.x;
  objc_msgSend_transformForSize_(self, a2, a3, a4.width, a4.height, a5.width, a5.height);
  CGContextConcatCTM(a3, &v22);
  CGContextTranslateCTM(a3, x, y);
  TSUSubtractPoints();
  TSUAngleFromDelta();
  CGContextRotateCTM(a3, v11);
  TSUDistance();
  CGContextScaleCTM(a3, v12 / 100.0, v12 / 100.0);
  objc_msgSend_p_prepareForDrawingInContext_(self, v13, a3);
  v16 = objc_msgSend_gradientType(self, v14, v15);
  v19 = objc_msgSend_p_CGGradient(self, v17, v18);
  v20 = *MEMORY[0x277CBF348];
  v21 = *(MEMORY[0x277CBF348] + 8);
  if (v16)
  {
    CGContextDrawRadialGradient(a3, v19, *&v20, 0.0, *MEMORY[0x277CBF348], 100.0, 3u);
  }

  else
  {
    v23.x = 100.0;
    v23.y = 0.0;
    CGContextDrawLinearGradient(a3, v19, *&v20, v23, 3u);
  }
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)baseNaturalSize
{
  width = self->_baseNaturalSize.width;
  height = self->_baseNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TSDTransformGradient)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v20.receiver = self;
  v20.super_class = TSDTransformGradient;
  v5 = [(TSDGradient *)&v20 initWithArchive:a3 unarchiver:a4];
  if (v5)
  {
    v6 = *(a3 + 7);
    if (!v6)
    {
      v6 = &TSD::_GradientArchive_default_instance_;
    }

    v7 = v6[7];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = &TSD::_TransformGradientArchive_default_instance_;
    }

    v9 = MEMORY[0x277D809F0];
    if (v8[3])
    {
      v10 = v8[3];
    }

    else
    {
      v10 = MEMORY[0x277D809F0];
    }

    TSPCGPointFromMessage(v10);
    objc_msgSend_i_setStartPoint_(v5, v11, v12);
    if (v8[4])
    {
      v13 = v8[4];
    }

    else
    {
      v13 = v9;
    }

    TSPCGPointFromMessage(v13);
    objc_msgSend_i_setEndPoint_(v5, v14, v15);
    if (v8[5])
    {
      v16 = v8[5];
    }

    else
    {
      v16 = MEMORY[0x277D809D8];
    }

    TSPCGSizeCreateFromMessage(v16);
    objc_msgSend_i_setBaseNaturalSize_(v5, v17, v18);
  }

  return v5;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v35.receiver = self;
  v35.super_class = TSDTransformGradient;
  [(TSDGradient *)&v35 saveToArchive:a3 archiver:v6];
  *(a3 + 10) |= 2u;
  v9 = *(a3 + 7);
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::GradientArchive>(v10);
    *(a3 + 7) = v9;
  }

  *(v9 + 16) |= 2u;
  v11 = *(v9 + 56);
  if (!v11)
  {
    v12 = *(v9 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::TransformGradientArchive>(v12);
    *(v9 + 56) = v11;
  }

  objc_msgSend_startPoint(self, v7, v8);
  v14 = v13;
  v16 = v15;
  *(v11 + 16) |= 1u;
  v17 = *(v11 + 24);
  if (!v17)
  {
    v18 = *(v11 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C9BB00](v18);
    *(v11 + 24) = v17;
  }

  v36.x = v14;
  v36.y = v16;
  TSPCGPointCopyToMessage(v36, v17);
  objc_msgSend_endPoint(self, v19, v20);
  v22 = v21;
  v24 = v23;
  *(v11 + 16) |= 2u;
  v25 = *(v11 + 32);
  if (!v25)
  {
    v26 = *(v11 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x277C9BB00](v26);
    *(v11 + 32) = v25;
  }

  v37.x = v22;
  v37.y = v24;
  TSPCGPointCopyToMessage(v37, v25);
  objc_msgSend_baseNaturalSize(self, v27, v28);
  v30 = v29;
  v32 = v31;
  *(v11 + 16) |= 4u;
  v33 = *(v11 + 40);
  if (!v33)
  {
    v34 = *(v11 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x277C9BAD0](v34);
    *(v11 + 40) = v33;
  }

  v38.width = v30;
  v38.height = v32;
  TSPCGSizeCopyToMessage(v38, v33);
}

@end
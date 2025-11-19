@interface TSDAngleGradient
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)p_gradientTransformForBounds:(SEL)a3;
- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4;
- (TSDAngleGradient)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDAngleGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5 angle:(double)a6;
- (TSDAngleGradient)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5 angle:(double)a6;
- (double)p_bestGradientLengthForRect:(CGRect)a3 atAngle:(double)a4;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4 naturalBounds:(CGRect)a5;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4 atAngle:(double)a5;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDAngleGradient

- (TSDAngleGradient)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5 angle:(double)a6
{
  v8.receiver = self;
  v8.super_class = TSDAngleGradient;
  result = [(TSDGradient *)&v8 initWithGradientStops:a3 type:a4 opacity:a5];
  if (result)
  {
    result->_gradientAngle = a6;
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
    result->_gradientAngle = a6;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_gradientType(self, v6, v7);
  objc_msgSend_opacity(self, v9, v10);
  v12 = v11;
  gradientAngle = self->_gradientAngle;
  v16 = objc_msgSend_gradientStops(self, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v3, v17, @"%@<%p>: type=%tu opacity=%f angle=%f \n\tstops=%@", v5, self, v8, v12, *&gradientAngle, v16);

  return v18;
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
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5 && (v12.receiver = self, v12.super_class = TSDAngleGradient, [(TSDGradient *)&v12 isEqual:v4]))
    {
      objc_msgSend_gradientAngle(v5, v6, v7);
      gradientAngle = self->_gradientAngle;
      v10 = v8 == gradientAngle || vabdd_f64(v8, gradientAngle) < fabs(gradientAngle * 0.000000999999997);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableAngleGradient, a2, a3);
  v7 = objc_msgSend_gradientStops(self, v5, v6);
  v10 = objc_msgSend_gradientType(self, v8, v9);
  objc_msgSend_opacity(self, v11, v12);
  v14 = v13;
  objc_msgSend_gradientAngle(self, v15, v16);
  v19 = objc_msgSend_initWithGradientStops_type_opacity_angle_(v4, v17, v7, v10, v14, v18);

  v22 = objc_msgSend_i_advancedGradientFlag(self, v20, v21);
  objc_msgSend_i_setAdvancedGradientFlag_(v19, v23, v22);
  return v19;
}

- (double)p_bestGradientLengthForRect:(CGRect)a3 atAngle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3) * 0.5;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetHeight(v16) * 0.5;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGRectGetWidth(v17);
  memset(&v15, 0, sizeof(v15));
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&v14.a = *MEMORY[0x277CBF2C0];
  *&v14.c = v10;
  *&v14.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformTranslate(&v15, &v14, v8, v9);
  v13 = v15;
  CGAffineTransformRotate(&v14, &v13, -a4);
  v15 = v14;
  v13 = v14;
  CGAffineTransformTranslate(&v14, &v13, -v8, -v9);
  v15 = v14;
  TSUDistance();
  return result;
}

- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4
{
  objc_msgSend_bounds(a3, a2, a3);
  objc_msgSend_p_gradientTransformForBounds_(self, v5, v6);
  v7 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, *(MEMORY[0x277CBF348] + 8)), 0, *MEMORY[0x277CBF348]));
  v8 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v8;
  return result;
}

- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4
{
  objc_msgSend_bounds(a3, a2, a3);
  objc_msgSend_p_gradientTransformForBounds_(self, v5, v6);
  v7 = vaddq_f64(0, vmlaq_f64(vmulq_f64(0, 0), vdupq_n_s64(0x4059000000000000uLL), 0));
  v8 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v8;
  return result;
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4 atAngle:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = objc_msgSend_p_CGGradient(self, a2, a4);
  CGContextSaveGState(a4);
  CGContextClipToRectSafe();
  objc_msgSend_p_prepareForDrawingInContext_(self, v13, a4);
  if (objc_msgSend_gradientType(self, v14, v15))
  {
    objc_msgSend_centeredRadialTransformInRect_(self, v16, v17, x, y, width, height);
    CGContextConcatCTM(a4, &v26);
    v29 = **&MEMORY[0x277CBF348];
    v31.x = *MEMORY[0x277CBF348];
    v31.y = v29.y;
    CGContextDrawRadialGradient(a4, v12, *MEMORY[0x277CBF348], 0.0, v31, 100.0, 3u);
  }

  else
  {
    objc_msgSend_p_bestGradientLengthForRect_atAngle_(self, v16, v17, x, y, width, height, -a5);
    TSUOriginRotate();
    TSUOriginRotate();
    TSUCenterOfRect();
    TSUAddPoints();
    v27 = v18;
    v28 = v19;
    TSUAddPoints();
    v21 = v20;
    v23 = v22;
    v26.a = v20;
    v26.b = v22;
    TSUDistance();
    v25 = v24;
    CGContextTranslateCTM(a4, v21, v23);
    CGContextRotateCTM(a4, -a5);
    CGContextScaleCTM(a4, v25 / 100.0, v25 / 100.0);
    v30.y = 0.0;
    v30.x = 100.0;
    CGContextDrawLinearGradient(a4, v12, *MEMORY[0x277CBF348], v30, 3u);
  }

  CGContextRestoreGState(a4);
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
  ClipBoundingBox = CGContextGetClipBoundingBox(a5);
  v14 = ClipBoundingBox.size.width;
  v15 = ClipBoundingBox.size.height;
  if (TSURectIsFinite() && v15 > 0.0 && v14 > 0.0)
  {
    if ((a6 || TSDCGContextIsPDFContext(a5)) && (objc_msgSend_p_stopsHaveAlpha(self, v16, v17) & 1) != 0 || TSDCGContextIsPrintContext(a5))
    {
      v19 = *(MEMORY[0x277CBF3A0] + 16);
      v22 = *MEMORY[0x277CBF3A0];
      v23 = v19;
      v21 = objc_msgSend_p_beginBitmapWrapperContextInContext_returningIntegralBounds_(self, v18, a5, &v22);
      if (v21)
      {
        objc_msgSend_p_paintPath_inContext_naturalBounds_(self, v20, a3, v21, x, y, width, height);
      }

      objc_msgSend_p_endBitmapWrapperContext_inContext_withIntegralBounds_(self, v20, v21, a5, v22, v23);
    }

    else
    {
      objc_msgSend_p_paintPath_inContext_naturalBounds_(self, v18, a3, a5, x, y, width, height);
    }
  }

  CGContextRestoreGState(a5);
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  PathBoundingBox = CGPathGetPathBoundingBox(a3);

  objc_msgSend_paintPath_naturalBounds_inContext_isPDF_(self, v7, a3, a4, 0, PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height);
}

- (CGAffineTransform)p_gradientTransformForBounds:(SEL)a3
{
  v61 = CGRectInset(a4, -1.0, -1.0);
  x = v61.origin.x;
  y = v61.origin.y;
  width = v61.size.width;
  height = v61.size.height;
  v10 = MEMORY[0x277CBF2C0];
  v55 = *(MEMORY[0x277CBF2C0] + 16);
  v56 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v55;
  v54 = *(v10 + 32);
  *&retstr->tx = v54;
  v13 = objc_msgSend_gradientType(self, v11, v12);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  MidX = CGRectGetMidX(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  MidY = CGRectGetMidY(v63);
  if (v13)
  {
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    CGRectGetMaxX(v64);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    CGRectGetMaxY(v65);
    TSUTransformMakeFree();
    TSUMixPoints();
    memset(&v60, 0, sizeof(v60));
    CGAffineTransformMakeRotation(&v60, 5.49778714 - self->_gradientAngle);
    TSUMultiplyPointScalar();
    t1 = v60;
    TSUTransformConvertForNewOrigin();
    v60 = v59;
    v16 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v16;
    *&t1.tx = *&retstr->tx;
    t2 = v59;
    result = CGAffineTransformConcat(&v59, &t1, &t2);
    v18 = *&v59.c;
    *&retstr->a = *&v59.a;
    *&retstr->c = v18;
    v19 = *&v59.tx;
  }

  else
  {
    *&v60.a = v56;
    *&v60.c = v55;
    *&v60.tx = v54;
    CGAffineTransformTranslate(retstr, &v60, MidX, MidY);
    gradientAngle = self->_gradientAngle;
    v21 = *&retstr->c;
    *&v59.a = *&retstr->a;
    *&v59.c = v21;
    *&v59.tx = *&retstr->tx;
    CGAffineTransformRotate(&v60, &v59, gradientAngle);
    v22 = *&v60.c;
    *&retstr->a = *&v60.a;
    *&retstr->c = v22;
    *&retstr->tx = *&v60.tx;
    v23 = x;
    *&v22 = y;
    v24 = width;
    v25 = height;
    v26 = -CGRectGetMidX(*(&v22 - 8));
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v27 = CGRectGetMidY(v66);
    v28 = *&retstr->c;
    *&v59.a = *&retstr->a;
    *&v59.c = v28;
    *&v59.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v60, &v59, v26, -v27);
    v29 = *&v60.c;
    *&retstr->a = *&v60.a;
    *&retstr->c = v29;
    *&retstr->tx = *&v60.tx;
    v30 = *&retstr->c;
    *&v60.a = *&retstr->a;
    *&v60.c = v30;
    *&v60.tx = *&retstr->tx;
    v31 = x;
    *&v30 = y;
    v32 = width;
    v33 = height;
    v67 = CGRectApplyAffineTransform(*(&v30 - 8), &v60);
    v34 = v67.origin.x;
    v35 = v67.origin.y;
    v36 = v67.size.width;
    v37 = v67.size.height;
    *&retstr->a = v56;
    *&retstr->c = v55;
    *&retstr->tx = v54;
    v38 = CGRectGetMidX(v67);
    v68.origin.x = v34;
    v68.origin.y = v35;
    v68.size.width = v36;
    v68.size.height = v37;
    v39 = CGRectGetMidY(v68);
    v40 = *&retstr->c;
    *&v59.a = *&retstr->a;
    *&v59.c = v40;
    *&v59.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v60, &v59, v38, v39);
    v41 = *&v60.c;
    *&retstr->a = *&v60.a;
    *&retstr->c = v41;
    *&retstr->tx = *&v60.tx;
    v42 = -self->_gradientAngle;
    v43 = *&retstr->c;
    *&v59.a = *&retstr->a;
    *&v59.c = v43;
    *&v59.tx = *&retstr->tx;
    CGAffineTransformRotate(&v60, &v59, v42);
    v44 = *&v60.c;
    *&retstr->a = *&v60.a;
    *&retstr->c = v44;
    *&retstr->tx = *&v60.tx;
    v45 = v34;
    *&v44 = v35;
    v46 = v36;
    v47 = v37;
    v48 = CGRectGetWidth(*(&v44 - 8)) / 100.0;
    v69.origin.x = v34;
    v69.origin.y = v35;
    v69.size.width = v36;
    v69.size.height = v37;
    v49 = CGRectGetHeight(v69);
    v50 = *&retstr->c;
    *&v59.a = *&retstr->a;
    *&v59.c = v50;
    *&v59.tx = *&retstr->tx;
    CGAffineTransformScale(&v60, &v59, v48, v49 / 100.0);
    v51 = *&v60.c;
    *&retstr->a = *&v60.a;
    *&retstr->c = v51;
    *&retstr->tx = *&v60.tx;
    CGAffineTransformMakeTranslation(&v59, -50.0, 0.0);
    v52 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v52;
    *&t1.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&v60, &v59, &t1);
    v53 = *&v60.c;
    *&retstr->a = *&v60.a;
    *&retstr->c = v53;
    v19 = *&v60.tx;
  }

  *&retstr->tx = v19;
  return result;
}

- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4 naturalBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  CGContextSaveGState(a4);
  CGContextAddPathSafe();
  CGContextClip(a4);
  CGContextGetClipBoundingBox(a4);
  if (TSURectIsFinite())
  {
    memset(&v22[1], 0, sizeof(CGAffineTransform));
    objc_msgSend_p_gradientTransformForBounds_(self, v11, v12, x, y, width, height);
    v22[0] = v22[1];
    CGContextConcatCTM(a4, v22);
    v15 = objc_msgSend_p_CGGradient(self, v13, v14);
    objc_msgSend_p_prepareForDrawingInContext_(self, v16, a4);
    v19 = objc_msgSend_gradientType(self, v17, v18);
    v20 = *MEMORY[0x277CBF348];
    v21 = *(MEMORY[0x277CBF348] + 8);
    if (v19)
    {
      CGContextDrawRadialGradient(a4, v15, *&v20, 0.0, *MEMORY[0x277CBF348], 100.0, 3u);
    }

    else
    {
      v23.x = 100.0;
      v23.y = 0.0;
      CGContextDrawLinearGradient(a4, v15, *&v20, v23, 3u);
    }
  }

  CGContextRestoreGState(a4);
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDAngleGradient mixingTypeWithObject:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGradient.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1276, 0, "nil object after cast");

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
      objc_msgSend_gradientAngle(self, v30, v31);
      v33 = v32;
      objc_msgSend_gradientAngle(v5, v34, v35);
      if (v33 == v36)
      {
        v37 = 4;
      }

      else
      {
        v37 = 3;
      }
    }

    else
    {
      v37 = 2;
    }
  }

  else
  {
    v37 = 1;
  }

  return v37;
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

  objc_msgSend_opacity(self, v23, v24);
  objc_msgSend_opacity(v7, v43, v44);
  TSUMixFloats();
  v46 = v45;
  objc_msgSend_gradientAngle(self, v47, v48);
  objc_msgSend_gradientAngle(v7, v49, v50);
  TSUMixFloats();
  v52 = v51;
  v53 = [TSDAngleGradient alloc];
  v56 = objc_msgSend_gradientType(self, v54, v55);
  v58 = objc_msgSend_initWithGradientStops_type_opacity_angle_(v53, v57, v16, v56, v46, v52);

  return v58;
}

- (TSDAngleGradient)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v12.receiver = self;
  v12.super_class = TSDAngleGradient;
  v5 = [(TSDGradient *)&v12 initWithArchive:a3 unarchiver:a4];
  v8 = v5;
  if (v5)
  {
    v9 = *(a3 + 7);
    if (!v9)
    {
      v9 = &TSD::_GradientArchive_default_instance_;
    }

    v10 = *(v9 + 6);
    if (!v10)
    {
      v10 = &TSD::_AngleGradientArchive_default_instance_;
    }

    objc_msgSend_i_setGradientAngle_(v5, v6, v7, *(v10 + 6));
  }

  return v8;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = TSDAngleGradient;
  [(TSDGradient *)&v14 saveToArchive:a3 archiver:v6];
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

  *(v9 + 16) |= 1u;
  v11 = *(v9 + 48);
  if (!v11)
  {
    v12 = *(v9 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::AngleGradientArchive>(v12);
    *(v9 + 48) = v11;
  }

  objc_msgSend_gradientAngle(self, v7, v8);
  *&v13 = v13;
  *(v11 + 16) |= 1u;
  *(v11 + 24) = LODWORD(v13);
}

@end
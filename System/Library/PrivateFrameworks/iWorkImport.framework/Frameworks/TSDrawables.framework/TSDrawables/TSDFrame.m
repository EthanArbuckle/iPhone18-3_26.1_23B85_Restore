@interface TSDFrame
- (BOOL)containsPoint:(CGPoint)a3 whenStrokingRect:(CGRect)a4;
- (BOOL)hasMask;
- (BOOL)i_willRenderForRect:(CGRect)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldRenderForSizeIncludingCoverage:(CGSize)a3;
- (CGRect)coverageRect:(CGRect)a3;
- (CGRect)coverageRectWithoutAdornment:(CGRect)a3;
- (CGRect)i_adornmentRectForRect:(CGRect)a3;
- (CGRect)p_coverageRectWithAdornment:(CGRect)a3;
- (CGRect)p_coverageRectWithoutAdornment:(CGRect)a3;
- (CGRect)p_uncoveredRectWithoutAdornment:(CGRect)a3;
- (CGSize)p_minimumRenderedSize;
- (NSString)archivableFrameName;
- (NSString)frameName;
- (TSDFrame)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDFrame)initWithFrameName:(id)a3;
- (TSDFrame)initWithFrameSpec:(id)a3 assetScale:(double)a4;
- (TSDFrame)initWithFrameSpec:(id)a3 assetScale:(double)a4 archivableFrameName:(id)a5;
- (_TSDStrokeOutsets)outsets;
- (double)equivalentStrokeWidth;
- (double)minimumAssetScale;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDFrame

- (TSDFrame)initWithFrameSpec:(id)a3 assetScale:(double)a4 archivableFrameName:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDFrame initWithFrameSpec:assetScale:archivableFrameName:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrame.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 69, 0, "invalid nil value for '%{public}s'", "spec");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v36 = MEMORY[0x277D81150];
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDFrame initWithFrameSpec:assetScale:archivableFrameName:]");
  v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrame.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 70, 0, "invalid nil value for '%{public}s'", "archivableFrameName");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
LABEL_3:
  v12 = objc_msgSend_blackColor(MEMORY[0x277D81180], v9, v10);
  v15 = objc_msgSend_solidPattern(TSDStrokePattern, v13, v14);
  v44.receiver = self;
  v44.super_class = TSDFrame;
  v16 = [(TSDStroke *)&v44 initWithColor:v12 width:0 cap:0 join:v15 pattern:2.0 miterLimit:4.0];

  if (v16)
  {
    if (!v7)
    {
      v28 = 0;
      goto LABEL_10;
    }

    v19 = objc_msgSend_copy(v7, v17, v18);
    spec = v16->_spec;
    v16->_spec = v19;

    v23 = objc_msgSend_copy(v11, v21, v22);
    frameName = v16->_frameName;
    v16->_frameName = v23;

    objc_msgSend_i_minimumAssetScale(v16->_spec, v25, v26);
    TSUClamp();
    v16->_assetScale = v27;
    sub_2766B5EB0(v16->_spec, &v16->_leftWidth, &v16->_rightWidth, &v16->_topHeight, &v16->_bottomHeight, &v16->_adornmentSize.width, v27);
  }

  v28 = v16;
LABEL_10:

  return v28;
}

- (TSDFrame)initWithFrameSpec:(id)a3 assetScale:(double)a4
{
  v6 = a3;
  v9 = objc_msgSend_frameName(v6, v7, v8);
  v11 = objc_msgSend_initWithFrameSpec_assetScale_archivableFrameName_(self, v10, v6, v9, a4);

  return v11;
}

- (TSDFrame)initWithFrameName:(id)a3
{
  v4 = objc_msgSend_frameSpecWithName_(TSDFrameSpec, a2, a3);
  v6 = objc_msgSend_initWithFrameSpec_(self, v5, v4);

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableFrame, a2, a3);
  v7 = objc_msgSend_frameSpec(self, v5, v6);
  objc_msgSend_assetScale(self, v8, v9);
  v11 = v10;
  v14 = objc_msgSend_archivableFrameName(self, v12, v13);
  v16 = objc_msgSend_initWithFrameSpec_assetScale_archivableFrameName_(v4, v15, v7, v14, v11);

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TSDFrame;
  if ([(TSDStroke *)&v25 isEqual:v4])
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v8 = v5;
    if (v5 && (spec = self->_spec, objc_msgSend_frameSpec(v5, v6, v7), v10 = objc_claimAutoreleasedReturnValue(), v10, spec == v10) && (frameName = self->_frameName, objc_msgSend_archivableFrameName(v8, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), LODWORD(frameName) = objc_msgSend_isEqualToString_(frameName, v15, v14), v14, frameName))
    {
      objc_msgSend_assetScale(self, v16, v17);
      v19 = v18;
      objc_msgSend_assetScale(v8, v20, v21);
      v23 = v19 == v22 || vabdd_f64(v19, v22) < fabs(v22 * 0.000000999999997);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = TSDFrame;
  v3 = [(TSDStroke *)&v10 hash];
  v6 = objc_msgSend_hash(self->_spec, v4, v5) ^ v3;
  return v6 ^ objc_msgSend_hash(self->_frameName, v7, v8);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_frameName(self, v6, v7);
  objc_msgSend_assetScale(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@ %p frameName='%@' assetScale=%f>", v5, self, v8, v12);

  return v13;
}

- (NSString)frameName
{
  v3 = objc_msgSend_frameSpec(self, a2, v2);
  v6 = objc_msgSend_frameName(v3, v4, v5);

  return v6;
}

- (NSString)archivableFrameName
{
  frameName = self->_frameName;
  if (frameName || (v4 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFrame archivableFrameName]"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrame.m"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 161, 0, "invalid nil value for '%{public}s'", "_frameName"), v7, v5, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10), (frameName = self->_frameName) != 0))
  {
    v13 = frameName;
  }

  else
  {
    v15 = objc_msgSend_frameSpec(self, v11, v12);
    v13 = objc_msgSend_frameName(v15, v16, v17);
  }

  return v13;
}

- (double)minimumAssetScale
{
  v3 = objc_msgSend_frameSpec(self, a2, v2);
  objc_msgSend_i_minimumAssetScale(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (BOOL)hasMask
{
  v3 = objc_msgSend_frameSpec(self, a2, v2);
  hasMask = objc_msgSend_i_hasMask(v3, v4, v5);

  return hasMask;
}

- (CGRect)p_uncoveredRectWithoutAdornment:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (objc_msgSend_i_hasImages(self->_spec, a2, v3))
  {
    v11 = width < 2.0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && height >= 2.0)
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = CGRectInset(v31, 1.0, 1.0);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  objc_msgSend_i_leftInset(self->_spec, v9, v10);
  *&v13 = v13 * self->_assetScale;
  v14 = ceilf(*&v13);
  objc_msgSend_i_rightInset(self->_spec, v15, v16);
  *&v17 = v17 * self->_assetScale;
  v18 = ceilf(*&v17);
  objc_msgSend_i_bottomInset(self->_spec, v19, v20);
  *&v21 = v21 * self->_assetScale;
  v22 = ceilf(*&v21);
  objc_msgSend_i_topInset(self->_spec, v23, v24);
  *&v25 = v25 * self->_assetScale;
  v26 = ceilf(*&v25);
  v27 = x + v14;
  v28 = width - (v14 + v18);
  v29 = y + v26;
  v30 = height - (v22 + v26);
  result.size.height = v30;
  result.size.width = v28;
  result.origin.y = v29;
  result.origin.x = v27;
  return result;
}

- (CGRect)p_coverageRectWithoutAdornment:(CGRect)a3
{
  objc_msgSend_p_uncoveredRectWithoutAdornment_(self, a2, v3, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  leftWidth = self->_leftWidth;
  v7 = v6 - leftWidth;
  topHeight = self->_topHeight;
  v10 = v9 + leftWidth + self->_rightWidth;
  v12 = v11 - topHeight;
  v14 = v13 + topHeight + self->_bottomHeight;
  result.size.height = v14;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v7;
  return result;
}

- (CGRect)p_coverageRectWithAdornment:(CGRect)a3
{
  objc_msgSend_p_coverageRectWithoutAdornment_(self, a2, v3, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (objc_msgSend_i_hasAdornment(self->_spec, v13, v14))
  {
    objc_msgSend_i_adornmentRectForRect_(self, v15, v16, v6, v8, v10, v12);
    TSUUnionRect();
    v6 = v17;
    v8 = v18;
    v10 = v19;
    v12 = v20;
  }

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)coverageRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_msgSend_p_coverageRectWithAdornment_(self, a2, v3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_msgSend_p_minimumRenderedSize(self, v17, v18);
  if (v14 < v20 || v16 < v19)
  {
    v16 = height;
    v14 = width;
    v12 = y;
    v10 = x;
  }

  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v16;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)coverageRectWithoutAdornment:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_msgSend_coverageRect_(self, a2, v3);
  v25.origin.x = v9;
  v25.origin.y = v10;
  v25.size.width = v11;
  v25.size.height = v12;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (!CGRectEqualToRect(v23, v25))
  {
    objc_msgSend_p_coverageRectWithoutAdornment_(self, v13, v14, x, y, width, height);
    x = v15;
    y = v16;
    width = v17;
    height = v18;
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (BOOL)shouldRenderForSizeIncludingCoverage:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_msgSend_p_minimumRenderedSize(self, a2, v3);
  return height >= v7 && width >= v6;
}

- (BOOL)containsPoint:(CGPoint)a3 whenStrokingRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = objc_msgSend_i_willRenderForRect_(self, a2, v4, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  if (v12)
  {
    objc_msgSend_p_coverageRectWithoutAdornment_(self, v13, v14, x, y, width, height);
    v16 = v15;
    v18 = v17;
    v26 = v20;
    v27 = v19;
    objc_msgSend_i_adornmentRectForRect_(self, v21, v22);
    v28.x = v10;
    v28.y = v9;
    if (CGRectContainsPoint(v31, v28))
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v32.origin.x = v16;
      v32.origin.y = v18;
      v32.size.height = v26;
      v32.size.width = v27;
      v29.x = v10;
      v29.y = v9;
      v12 = CGRectContainsPoint(v32, v29);
      if (v12)
      {
        objc_msgSend_p_uncoveredRectWithoutAdornment_(self, v23, v24, x, y, width, height);
        v30.x = v10;
        v30.y = v9;
        LOBYTE(v12) = !CGRectContainsPoint(v33, v30);
      }
    }
  }

  return v12;
}

- (_TSDStrokeOutsets)outsets
{
  v6 = 0.0;
  if (objc_msgSend_i_hasAdornment(self->_spec, a2, v2))
  {
    v7 = self->_topHeight * 0.5;
    objc_msgSend_i_adornmentPosition(self->_spec, v4, v5);
    v6 = v7 + v8 - self->_adornmentSize.height * 0.5;
    if (v6 > 0.0)
    {
      v6 = 0.0;
    }
  }

  leftWidth = self->_leftWidth;
  objc_msgSend_i_leftInset(self->_spec, v4, v5);
  v11 = leftWidth - v10 * self->_assetScale;
  rightWidth = self->_rightWidth;
  objc_msgSend_i_rightInset(self->_spec, v13, v14);
  v16 = rightWidth - v15 * self->_assetScale;
  topHeight = self->_topHeight;
  objc_msgSend_i_topInset(self->_spec, v18, v19);
  v21 = topHeight - v20 * self->_assetScale - v6;
  bottomHeight = self->_bottomHeight;
  objc_msgSend_i_bottomInset(self->_spec, v23, v24);
  v26 = bottomHeight - v25 * self->_assetScale;
  v27 = v11;
  v28 = v16;
  v29 = v21;
  result.var3 = v26;
  result.var2 = v29;
  result.var1 = v28;
  result.var0 = v27;
  return result;
}

- (double)equivalentStrokeWidth
{
  objc_msgSend_i_leftInset(self->_spec, a2, v2);
  v5 = fmax(self->_leftWidth - v4 * self->_assetScale, v4 * self->_assetScale);
  objc_msgSend_i_rightInset(self->_spec, v6, v7);
  v9 = fmax(self->_rightWidth - v8 * self->_assetScale, v8 * self->_assetScale);
  objc_msgSend_i_topInset(self->_spec, v10, v11);
  v13 = fmax(self->_topHeight - v12 * self->_assetScale, v12 * self->_assetScale);
  objc_msgSend_i_bottomInset(self->_spec, v14, v15);
  return fmax(fmax(v5, v9), fmax(v13, fmax(self->_bottomHeight - v16 * self->_assetScale, v16 * self->_assetScale)));
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6
{
  if (a4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFrame paintPath:wantsInteriorStroke:inContext:useFastDrawing:]", a4, a5, a6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrame.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 358, 0, "Can't draw interior frame stroke");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = [TSDFrameRep alloc];
  v35 = objc_msgSend_initWithTSDFrame_(v16, v17, self);
  objc_msgSend_tsk_screenScale(MEMORY[0x277D759A0], v18, v19);
  if (v21 != TSDCGContextAssociatedScreenScale(a5))
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSDFrame paintPath:wantsInteriorStroke:inContext:useFastDrawing:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrame.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 361, 0, "rendering a frame into a context with incorrect associated screen scale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  PathBoundingBox = CGPathGetPathBoundingBox(a3);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  v33 = TSDCGContextAssociatedScreenScale(a5);
  objc_msgSend_frameRect_inContext_withTotalScale_(v35, v34, a5, x, y, width, height, v33);
}

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  if (objc_msgSend_i_hasAdornment(self->_spec, a2, a4))
  {
    v10 = self->_adornmentSize.height * 0.5;
    objc_msgSend_i_adornmentPosition(self->_spec, v8, v9);
    y = y + v10 - v11;
    height = height - (v10 - v11);
  }

  v58 = height;
  v59 = y;
  objc_msgSend_i_leftInset(self->_spec, v8, v9);
  v57 = v12;
  assetScale = self->_assetScale;
  objc_msgSend_i_rightInset(self->_spec, v13, v14);
  v55 = v15;
  v54 = self->_assetScale;
  objc_msgSend_i_bottomInset(self->_spec, v16, v17);
  v19 = v18;
  v20 = self->_assetScale;
  objc_msgSend_i_topInset(self->_spec, v21, v22);
  v24 = v23;
  v25 = self->_assetScale;
  leftWidth = self->_leftWidth;
  rightWidth = self->_rightWidth;
  topHeight = self->_topHeight;
  bottomHeight = self->_bottomHeight;
  v29 = [TSDFrameRep alloc];
  v62 = objc_msgSend_initWithTSDFrame_(v29, v30, self);
  objc_msgSend_tsk_screenScale(MEMORY[0x277D759A0], v31, v32);
  if (v34 != TSDCGContextAssociatedScreenScale(a4))
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSDFrame drawSwatchInRect:inContext:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrame.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 402, 0, "rendering a frame into a context with incorrect associated screen scale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
  }

  v42 = v19 * v20;
  v43 = v24 * v25;
  v44 = ceilf(v43);
  v45 = v58 + ceilf(v42) + v44 - (topHeight + bottomHeight);
  v46 = v59 - v44 + topHeight;
  v47 = v57 * assetScale;
  v48 = ceilf(v47);
  *&v44 = v55 * v54;
  v49 = width + v48 + ceilf(*&v44) - (leftWidth + rightWidth);
  v50 = x - v48 + leftWidth;
  v51 = TSDCGContextAssociatedScreenScale(a4);
  objc_msgSend_frameRect_inContext_withTotalScale_(v62, v52, a4, v50, v46, v49, v45, v51);
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v34.receiver = self;
  v34.super_class = TSDFrame;
  v7 = [(TSDStroke *)&v34 mixingTypeWithObject:v6 context:a4];
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (v10)
  {
    v11 = objc_msgSend_frameName(self, v8, v9);
    v16 = objc_msgSend_frameName(v10, v12, v13);
    if (v11 == v16)
    {
      isEqualToString = 1;
    }

    else
    {
      v17 = objc_msgSend_frameName(self, v14, v15);
      v20 = objc_msgSend_frameName(v10, v18, v19);
      isEqualToString = objc_msgSend_isEqualToString_(v17, v21, v20);
    }

    v29 = objc_msgSend_frameSpec(self, v27, v28);
    v32 = objc_msgSend_frameSpec(v10, v30, v31);

    if (!isEqualToString || v29 != v32)
    {
      v7 = TSDMixingTypeBestFromMixingTypes(v7, 2);
    }
  }

  else
  {
    objc_opt_class();
    v23 = TSUDynamicCast();
    v26 = v23;
    if (v23 && (objc_msgSend_isNullStroke(v23, v24, v25) & 1) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDFrame mixedObjectWithFraction:ofObject:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrame.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 447, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_alloc(objc_opt_class());
  v18 = objc_msgSend_frameSpec(self, v16, v17);
  objc_msgSend_assetScale(self, v19, v20);
  objc_msgSend_assetScale(v6, v21, v22);
  TSUMix();
  v24 = v23;
  v27 = objc_msgSend_frameName(self, v25, v26);
  v29 = objc_msgSend_initWithFrameSpec_assetScale_archivableFrameName_(v15, v28, v18, v27, v24);

  return v29;
}

- (CGSize)p_minimumRenderedSize
{
  v2 = self->_leftWidth + self->_rightWidth;
  v3 = self->_bottomHeight + self->_topHeight;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)i_adornmentRectForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3) - (self->_leftWidth + self->_rightWidth);
  objc_msgSend_i_adornmentPosition(self->_spec, v9, v10);
  v12 = v8 * v11;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v13 = v12 + CGRectGetMinX(v23) + self->_leftWidth;
  v14 = self->_topHeight * 0.5;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  objc_msgSend_i_adornmentPosition(self->_spec, v16, v17);
  v19 = self->_adornmentSize.width;
  v20 = self->_adornmentSize.height;
  v21 = v13 - v19 * 0.5;
  v22 = v14 + MinY + v18 - v20 * 0.5;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (BOOL)i_willRenderForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_msgSend_p_minimumRenderedSize(self, a2, v3);
  v10 = v9;
  v12 = v11;
  objc_msgSend_p_coverageRectWithAdornment_(self, v13, v14, x, y, width, height);
  return v16 >= v12 && v15 >= v10;
}

- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3
{
  objc_msgSend_assetScale(self, a2, a3);
  objc_msgSend_minimumAssetScale(self, v4, v5);
  TSUClamp();
  v7 = v6;
  v10 = objc_msgSend_frameSpec(self, v8, v9);
  v11 = [TSDFrame alloc];
  v13 = objc_msgSend_initWithFrameSpec_assetScale_(v11, v12, v10, v7);

  return v13;
}

- (TSDFrame)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 6))
  {
    v7 = *(a3 + 6);
  }

  else
  {
    v7 = &TSD::_FrameArchive_default_instance_;
  }

  TSD::FrameArchive::FrameArchive(v15, v7);
  v9 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, v16 & 0xFFFFFFFFFFFFFFFELL);
  v11 = objc_msgSend_frameSpecWithName_(TSDFrameSpec, v10, v9);
  v13 = objc_msgSend_initWithFrameSpec_assetScale_archivableFrameName_(self, v12, v11, v9, v17);

  TSD::FrameArchive::~FrameArchive(v15);
  return v13;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = TSDFrame;
  [(TSDStroke *)&v19 saveToArchive:a3 archiver:v6];
  *(a3 + 4) |= 8u;
  v9 = *(a3 + 6);
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::FrameArchive>(v10);
    *(a3 + 6) = v9;
  }

  v11 = objc_msgSend_archivableFrameName(self, v7, v8);
  v12 = v11;
  v15 = objc_msgSend_UTF8String(v12, v13, v14);
  sub_2766D1628(v9, v15);

  objc_msgSend_assetScale(self, v16, v17);
  *&v18 = v18;
  *(v9 + 16) |= 2u;
  *(v9 + 32) = LODWORD(v18);
}

@end
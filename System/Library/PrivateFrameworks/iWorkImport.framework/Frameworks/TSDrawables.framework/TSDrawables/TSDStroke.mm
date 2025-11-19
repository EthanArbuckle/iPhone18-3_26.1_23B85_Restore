@interface TSDStroke
+ (id)editedStrokeFromModelStroke:(id)a3 selectedStroke:(id)a4;
+ (id)emptyStroke;
+ (id)i_newEmptyStroke;
+ (id)i_newStroke;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)stroke;
+ (id)strokeWithColor:(id)a3 width:(double)a4;
+ (id)strokeWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7;
+ (int64_t)indexOfStroke:(id)a3 strokeArray:(id)a4;
- (BOOL)isDash;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNearlyWhite;
- (BOOL)isRoundDash;
- (BOOL)p_isRoundSolidLine;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3;
- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7;
- (CGRect)boundsForPath:(id)a3;
- (NSString)description;
- (TSDStroke)init;
- (TSDStroke)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDStroke)initWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7 miterLimit:(double)a8;
- (_TSDStrokeOutsets)outsets;
- (double)dashSpacing;
- (double)horizontalMarginForSwatch;
- (id)colorForCGContext:(CGContext *)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)pathForLineEnd:(id)a3 wrapPath:(BOOL)a4 atPoint:(CGPoint)a5 atAngle:(double)a6 withScale:(double)a7;
- (id)pathToStrokeFromTSUBezierPath:(id)a3;
- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3;
- (id)strokeLineEnd:(id)a3;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)i_setCap:(int)a3;
- (void)i_setPattern:(id)a3;
- (void)i_setPatternPropertiesFromStroke:(id)a3;
- (void)i_setPropertiesFromStroke:(id)a3;
- (void)p_strokePathChunk:(CGPath *)a3 inContext:(CGContext *)a4 wantsInteriorStroke:(BOOL)a5;
- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8;
- (void)paintRect:(CGRect)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDStroke

- (TSDStroke)initWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7 miterLimit:(double)a8
{
  v14 = a3;
  v15 = a7;
  v28.receiver = self;
  v28.super_class = TSDStroke;
  v18 = [(TSDStroke *)&v28 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(v14, v16, v17);
    color = v18->_color;
    v18->_color = v19;

    v18->_width = a4;
    v18->_actualWidth = a4;
    v18->_cap = a5;
    v18->_join = a6;
    v23 = objc_msgSend_copy(v15, v21, v22);
    pattern = v18->_pattern;
    v18->_pattern = v23;

    v18->_miterLimit = a8;
    if (objc_msgSend_isRoundDash(v15, v25, v26))
    {
      v18->_cap = 1;
    }
  }

  return v18;
}

- (TSDStroke)init
{
  v4 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v2);
  v7 = objc_msgSend_solidPattern(TSDStrokePattern, v5, v6);
  v9 = objc_msgSend_initWithColor_width_cap_join_pattern_(self, v8, v4, 0, 0, v7, 1.0);

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableStroke, a2, a3);
  v7 = objc_msgSend_color(self, v5, v6);
  objc_msgSend_width(self, v8, v9);
  v11 = v10;
  v14 = objc_msgSend_cap(self, v12, v13);
  v17 = objc_msgSend_join(self, v15, v16);
  v20 = objc_msgSend_pattern(self, v18, v19);
  objc_msgSend_miterLimit(self, v21, v22);
  v25 = objc_msgSend_initWithColor_width_cap_join_pattern_miterLimit_(v4, v23, v7, v14, v17, v20, v11, v24);

  objc_msgSend_actualWidth(self, v26, v27);
  objc_msgSend_setI_actualWidth_(v25, v28, v29);
  return v25;
}

- (void)i_setCap:(int)a3
{
  if (self->_cap != a3)
  {
    if (objc_msgSend_isRoundDash(self, a2, *&a3))
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDStroke i_setCap:]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStroke.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 518, 0, "Cannot change cap style on a round-dash stroke.");

      v13 = MEMORY[0x277D81150];

      objc_msgSend_logFullBacktrace(v13, v11, v12);
    }

    else
    {
      self->_cap = a3;
    }
  }
}

- (void)i_setPattern:(id)a3
{
  v18 = a3;
  v6 = objc_msgSend_pattern(self, v4, v5);

  v9 = v18;
  if (v6 != v18)
  {
    isRoundDash = objc_msgSend_isRoundDash(self, v7, v8);
    v13 = objc_msgSend_copy(v18, v11, v12);
    pattern = self->_pattern;
    self->_pattern = v13;

    if (objc_msgSend_isRoundDash(v18, v15, v16))
    {
      v9 = v18;
      if (isRoundDash)
      {
        goto LABEL_8;
      }

      objc_msgSend_i_setCap_(self, v17, 1);
    }

    else
    {
      v9 = v18;
      if (!isRoundDash)
      {
        goto LABEL_8;
      }

      objc_msgSend_i_setCap_(self, v17, 0);
    }

    v9 = v18;
  }

LABEL_8:
}

+ (id)i_newStroke
{
  v2 = [a1 alloc];
  v5 = objc_msgSend_blackColor(MEMORY[0x277D81180], v3, v4);
  v8 = objc_msgSend_solidPattern(TSDStrokePattern, v6, v7);
  v10 = objc_msgSend_initWithColor_width_cap_join_pattern_(v2, v9, v5, 0, 0, v8, 1.0);

  return v10;
}

+ (id)i_newEmptyStroke
{
  v2 = [a1 alloc];
  v5 = objc_msgSend_blackColor(MEMORY[0x277D81180], v3, v4);
  v8 = objc_msgSend_emptyPattern(TSDStrokePattern, v6, v7);
  v10 = objc_msgSend_initWithColor_width_cap_join_pattern_(v2, v9, v5, 0, 0, v8, 1.0);

  return v10;
}

+ (id)stroke
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276653508;
  block[3] = &unk_27A6CC4B8;
  block[4] = a1;
  if (qword_280A4C140 != -1)
  {
    dispatch_once(&qword_280A4C140, block);
  }

  v2 = qword_280A4C148;

  return v2;
}

+ (id)emptyStroke
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766535E0;
  block[3] = &unk_27A6CC4B8;
  block[4] = a1;
  if (qword_280A4C150 != -1)
  {
    dispatch_once(&qword_280A4C150, block);
  }

  v2 = qword_280A4C158;

  return v2;
}

+ (id)strokeWithColor:(id)a3 width:(double)a4
{
  v5 = a3;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_solidPattern(TSDStrokePattern, v7, v8);
  v11 = objc_msgSend_initWithColor_width_cap_join_pattern_(v6, v10, v5, 0, 0, v9, a4);

  return v11;
}

+ (id)strokeWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7
{
  v7 = *&a6;
  v8 = *&a5;
  v11 = a7;
  v12 = a3;
  v13 = objc_alloc(objc_opt_class());
  v15 = objc_msgSend_initWithColor_width_cap_join_pattern_(v13, v14, v12, v8, v7, v11, a4);

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = objc_opt_class();
  v8 = objc_msgSend_mutableClass(v5, v6, v7);
  v9 = objc_opt_class();
  if (v8 != objc_msgSend_mutableClass(v9, v10, v11))
  {
    goto LABEL_5;
  }

  v15 = objc_msgSend_supportsWidth(self, v12, v13);
  v18 = objc_msgSend_supportsWidth(v4, v16, v17);
  if (v15)
  {
    if (!v18)
    {
      goto LABEL_5;
    }

    objc_msgSend_width(self, v19, v20);
    v22 = v21;
    objc_msgSend_width(v4, v23, v24);
    if (v22 != v25 && vabdd_f64(v22, v25) >= 0.00999999978)
    {
      goto LABEL_5;
    }
  }

  else if (v18)
  {
    goto LABEL_5;
  }

  v26 = objc_msgSend_supportsLineOptions(self, v19, v20);
  v29 = objc_msgSend_supportsLineOptions(v4, v27, v28);
  if (v26)
  {
    if (!v29)
    {
      goto LABEL_5;
    }

    v32 = objc_msgSend_cap(self, v30, v31);
    if (v32 != objc_msgSend_cap(v4, v33, v34))
    {
      goto LABEL_5;
    }

    v37 = objc_msgSend_join(self, v35, v36);
    if (v37 != objc_msgSend_join(v4, v38, v39))
    {
      goto LABEL_5;
    }

    objc_msgSend_miterLimit(self, v40, v41);
    v43 = v42;
    objc_msgSend_miterLimit(v4, v44, v45);
    if (v43 != v46)
    {
      goto LABEL_5;
    }
  }

  else if (v29)
  {
    goto LABEL_5;
  }

  v47 = objc_msgSend_supportsPattern(self, v30, v31);
  v50 = objc_msgSend_supportsPattern(v4, v48, v49);
  if (v47)
  {
    if (!v50)
    {
      goto LABEL_5;
    }

    v53 = objc_msgSend_pattern(self, v51, v52);
    v56 = objc_msgSend_pattern(v4, v54, v55);
    isEqual = objc_msgSend_isEqual_(v53, v57, v56);

    if ((isEqual & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v50)
  {
    goto LABEL_5;
  }

  v59 = objc_msgSend_supportsColor(self, v51, v52);
  v62 = objc_msgSend_supportsColor(v4, v60, v61);
  if (v59)
  {
    if (v62)
    {
      color = self->_color;
      v66 = objc_msgSend_color(v4, v63, v64);
      if (!(color | v66))
      {
        goto LABEL_30;
      }

      v68 = v66;
      v69 = objc_msgSend_isEqual_(color, v67, v66);

      if (v69)
      {
        goto LABEL_30;
      }
    }
  }

  else if ((v62 & 1) == 0)
  {
LABEL_30:
    v14 = 1;
    goto LABEL_31;
  }

LABEL_5:
  v14 = 0;
LABEL_31:

  return v14;
}

- (unint64_t)hash
{
  if (objc_msgSend_supportsColor(self, a2, v2))
  {
    v6 = objc_msgSend_hash(self->_color, v4, v5);
  }

  else
  {
    v6 = *MEMORY[0x277D81450];
  }

  if (objc_msgSend_supportsLineOptions(self, v4, v5))
  {
    TSUHashWithSeed();
    TSUHashWithSeed();
    v6 = TSUHashWithSeed();
  }

  if (objc_msgSend_supportsPattern(self, v7, v8))
  {
    v6 ^= objc_msgSend_hash(self->_pattern, v9, v10);
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_pattern(self, v6, v7);
  objc_msgSend_width(self, v9, v10);
  v12 = v11;
  v15 = objc_msgSend_color(self, v13, v14);
  v18 = objc_msgSend_cap(self, v16, v17);
  v19 = sub_276648604(v18);
  v22 = objc_msgSend_join(self, v20, v21);
  v23 = sub_276648628(v22);
  v25 = objc_msgSend_stringWithFormat_(v3, v24, @"<%@ %p pattern=<%@>' width=%f color=<%@> cap=%@ join=%@>", v5, self, v8, v12, v15, v19, v23);

  return v25;
}

- (double)dashSpacing
{
  pattern = self->_pattern;
  v5 = 0.0;
  if (pattern && objc_msgSend_count(pattern, a2, v2) == 2)
  {
    return *(objc_msgSend_pattern(self->_pattern, v6, v7) + 8);
  }

  return v5;
}

- (BOOL)isDash
{
  isDash = objc_msgSend_isDash(self->_pattern, a2, v2);
  if (isDash)
  {
    LOBYTE(isDash) = self->_cap != 1;
  }

  return isDash;
}

- (BOOL)isRoundDash
{
  isRoundDash = objc_msgSend_isRoundDash(self->_pattern, a2, v2);
  if (isRoundDash)
  {
    LOBYTE(isRoundDash) = self->_cap == 1;
  }

  return isRoundDash;
}

- (BOOL)p_isRoundSolidLine
{
  if (self->_cap == 1)
  {
    v3 = objc_msgSend_pattern(self, a2, v2);
    v6 = objc_msgSend_solidPattern(TSDStrokePattern, v4, v5);
    if (objc_msgSend_isEqual_(v3, v7, v6))
    {
      objc_opt_class();
      v8 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)pathToStrokeFromTSUBezierPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  v8 = objc_msgSend_CGPath(v5, v6, v7);
  v10 = objc_msgSend_pathToStrokeFromCGPath_(self, v9, v8);
  v11 = v4;
  if (v10 == objc_msgSend_CGPath(v11, v12, v13))
  {
    v14 = v4;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277D81160]);
    objc_msgSend_copyPathAttributesTo_(v4, v15, v14);
    v17 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v16, v10);
    objc_msgSend_appendBezierPath_(v14, v18, v17);
  }

  return v14;
}

- (CGRect)boundsForPath:(id)a3
{
  objc_msgSend_boundsIncludingTSDStroke_(a3, a2, self);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_TSDStrokeOutsets)outsets
{
  v4 = objc_msgSend_supportsWidth(self, a2, v2);
  v7 = 0.0;
  if (v4)
  {
    objc_msgSend_width(self, v5, v6, 0.0);
    v7 = v8 * 0.5;
  }

  v9 = v7;
  v10 = v7;
  v11 = v7;
  result.var3 = v11;
  result.var2 = v10;
  result.var1 = v9;
  result.var0 = v7;
  return result;
}

- (void)i_setPropertiesFromStroke:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isFrame(v4, v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDStroke i_setPropertiesFromStroke:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStroke.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 795, 0, "Setting properties for a TSDStroke from a TSDFrame");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_color(v4, v7, v8);
  objc_msgSend_setI_color_(self, v17, v16);

  objc_msgSend_width(v4, v18, v19);
  objc_msgSend_setI_width_(self, v20, v21);
  v24 = objc_msgSend_join(v4, v22, v23);
  objc_msgSend_setI_join_(self, v25, v24);
  objc_msgSend_miterLimit(v4, v26, v27);
  objc_msgSend_setI_miterLimit_(self, v28, v29);
  objc_msgSend_actualWidth(v4, v30, v31);
  objc_msgSend_setI_actualWidth_(self, v32, v33);
  v36 = objc_msgSend_pattern(v4, v34, v35);
  objc_msgSend_i_setPattern_(self, v37, v36);

  v40 = objc_msgSend_cap(v4, v38, v39);

  objc_msgSend_i_setCap_(self, v41, v40);
}

- (void)i_setPatternPropertiesFromStroke:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isFrame(v4, v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDStroke i_setPatternPropertiesFromStroke:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStroke.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 806, 0, "Setting properties for a TSDStroke from a TSDFrame");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_join(v4, v7, v8);
  objc_msgSend_setI_join_(self, v17, v16);
  objc_msgSend_miterLimit(v4, v18, v19);
  objc_msgSend_setI_miterLimit_(self, v20, v21);
  v24 = objc_msgSend_pattern(v4, v22, v23);
  objc_msgSend_i_setPattern_(self, v25, v24);

  v28 = objc_msgSend_cap(v4, v26, v27);

  objc_msgSend_i_setCap_(self, v29, v28);
}

- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4
{
  v4 = a4;
  v7 = objc_msgSend_colorForCGContext_(self, a2, a3);
  v10 = objc_msgSend_CGColor(v7, v8, v9);
  CGContextSetStrokeColorWithColor(a3, v10);
  width = self->_width;
  if (v4)
  {
    width = width + width;
  }

  CGContextSetLineWidth(a3, width);
  CGContextSetLineJoin(a3, self->_join);
  CGContextSetMiterLimit(a3, self->_miterLimit);
  v14 = CGLineCapToTSULineCap();
  objc_msgSend_i_applyToContext_lineWidth_capStyle_(self->_pattern, v12, a3, &v14, self->_width * (self->_actualWidth / self->_width));
  v13 = TSULineCapToCGLineCap();
  CGContextSetLineCap(a3, v13);
}

- (id)strokeLineEnd:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_identifier(v3, v4, v5);
  v8 = v6;
  if (v6 && objc_msgSend_rangeOfString_(v6, v7, @":") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_rangeOfString_(v8, v9, @":");
    v13 = objc_msgSend_substringFromIndex_(v8, v12, v11 + 1);
    v10 = objc_msgSend_lineEndWithIdentifier_(TSDLineEnd, v14, v13);
  }

  else
  {
    v10 = v3;
  }

  return v10;
}

- (id)colorForCGContext:(CGContext *)a3
{
  if (TSDCGContextHasBackgroundsSuppressed(a3))
  {
    v6 = objc_opt_class();
    objc_msgSend_colorOnSuppressedBackgrounds(v6, v7, v8);
  }

  else
  {
    objc_msgSend_color(self, v4, v5);
  }
  v9 = ;

  return v9;
}

- (void)paintRect:(CGRect)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5
{
  v6 = a4;
  Mutable = CGPathCreateMutable();
  CGPathAddRectSafe();
  objc_msgSend_paintPath_wantsInteriorStroke_inContext_(self, v9, Mutable, v6, a5);

  CGPathRelease(Mutable);
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
{
  v9 = a4;
  v58 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldRender(self, a2, a3, a4, a5, a6, a7, a8))
  {
    CGContextSaveGState(a5);
    if (sub_2767B2EB8(a3) > 0x9C40)
    {
      v14 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v12, a3);
      v16 = objc_msgSend_pathSplitAtSubpathBoundariesWithSoftElementLimit_hardElementLimit_(v14, v15, 40000, 50000);
      v19 = objc_msgSend_color(self, v17, v18);
      objc_msgSend_alphaComponent(v19, v20, v21);
      v23 = v22;

      if (v23 >= 1.0)
      {
        objc_msgSend_applyToContext_insideStroke_(self, v24, a5, v9);
      }

      else
      {
        v26 = objc_msgSend_color(self, v24, v25);
        objc_msgSend_alphaComponent(v26, v27, v28);
        CGContextSetAlpha(a5, v29);

        CGContextBeginTransparencyLayer(a5, 0);
        v32 = objc_msgSend_mutableCopy(self, v30, v31);
        v35 = objc_msgSend_color(v32, v33, v34);
        v38 = objc_msgSend_colorWithAlphaComponent_(v35, v36, v37, 1.0);
        objc_msgSend_setColor_(v32, v39, v38);

        objc_msgSend_applyToContext_insideStroke_(v32, v40, a5, v9);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v41 = v16;
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v53, v57, 16);
      if (v43)
      {
        v44 = v43;
        v45 = *v54;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v54 != v45)
            {
              objc_enumerationMutation(v41);
            }

            v47 = *(*(&v53 + 1) + 8 * i);
            v50 = objc_msgSend_CGPath(v47, v48, v49, v53);
            objc_msgSend_p_strokePathChunk_inContext_wantsInteriorStroke_(self, v51, v50, a5, v9);
          }

          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v52, &v53, v57, 16);
        }

        while (v44);
      }

      if (v23 < 1.0)
      {
        CGContextEndTransparencyLayer(a5);
      }
    }

    else
    {
      objc_msgSend_applyToContext_insideStroke_(self, v12, a5, v9);
      objc_msgSend_p_strokePathChunk_inContext_wantsInteriorStroke_(self, v13, a3, a5, v9);
    }

    CGContextRestoreGState(a5);
  }
}

- (void)p_strokePathChunk:(CGPath *)a3 inContext:(CGContext *)a4 wantsInteriorStroke:(BOOL)a5
{
  v5 = a5;
  CGContextSaveGState(a4);
  if (v5)
  {
    CGContextAddPathSafe();
    CGContextClip(a4);
  }

  CGContextAddPathSafe();
  CGContextStrokePath(a4);

  CGContextRestoreGState(a4);
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8
{
  y = a4.y;
  x = a4.x;
  v14 = a3;
  CGContextSaveGState(a7);
  memset(&v38, 0, sizeof(v38));
  CGAffineTransformMakeTranslation(&v38, x, y);
  v36 = v38;
  CGAffineTransformScale(&transform, &v36, a6, a6);
  v38 = transform;
  v36 = transform;
  CGAffineTransformRotate(&transform, &v36, a5);
  v38 = transform;
  objc_msgSend_endPoint(v14, v15, v16);
  v18 = -v17;
  objc_msgSend_endPoint(v14, v19, v20);
  v36 = v38;
  CGAffineTransformTranslate(&transform, &v36, v18, -v21);
  v38 = transform;
  CGContextConcatCTM(a7, &transform);
  v24 = objc_msgSend_path(v14, v22, v23);
  v25 = v24;
  objc_msgSend_CGPath(v25, v26, v27);
  CGContextAddPathSafe();

  if (objc_msgSend_isFilled(v14, v28, v29))
  {
    CGContextFillPath(a7);
  }

  else
  {
    objc_msgSend_width(self, v30, v31);
    CGContextSetLineWidth(a7, v32 / a6);
    v35 = objc_msgSend_lineJoin(v14, v33, v34);
    CGContextSetLineJoin(a7, v35);
    CGContextStrokePath(a7);
  }

  CGContextRestoreGState(a7);
}

- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  memset(&v60, 0, sizeof(v60));
  CGAffineTransformMakeTranslation(&v60, x, y);
  t1 = v60;
  CGAffineTransformScale(&v59, &t1, a6, a6);
  v60 = v59;
  t1 = v59;
  CGAffineTransformRotate(&v59, &t1, a5);
  v60 = v59;
  objc_msgSend_endPoint(v13, v14, v15);
  v17 = -v16;
  objc_msgSend_endPoint(v13, v18, v19);
  t1 = v60;
  CGAffineTransformTranslate(&v59, &t1, v17, -v20);
  v60 = v59;
  t1 = v59;
  v21 = *&a7->c;
  *&v57.a = *&a7->a;
  *&v57.c = v21;
  *&v57.tx = *&a7->tx;
  CGAffineTransformConcat(&v59, &t1, &v57);
  v60 = v59;
  v22 = MEMORY[0x277D81160];
  v25 = objc_msgSend_path(v13, v23, v24);
  v26 = v25;
  v29 = objc_msgSend_CGPath(v26, v27, v28);
  v31 = objc_msgSend_bezierPathWithCGPath_(v22, v30, v29);

  v59 = v60;
  objc_msgSend_transformUsingAffineTransform_(v31, v32, &v59);
  if (objc_msgSend_isFilled(v13, v33, v34))
  {
    objc_msgSend_bounds(v31, v35, v36);
  }

  else
  {
    objc_msgSend_width(self, v35, v36);
    objc_msgSend_setLineWidth_(v31, v41, v42);
    objc_msgSend_lineJoin(v13, v43, v44);
    v45 = CGLineJoinToTSULineJoinStyle();
    objc_msgSend_setLineJoinStyle_(v31, v46, v45);
    objc_msgSend_boundsIncludingStroke(v31, v47, v48);
  }

  v49 = v37;
  v50 = v38;
  v51 = v39;
  v52 = v40;

  v53 = v49;
  v54 = v50;
  v55 = v51;
  v56 = v52;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

- (id)pathForLineEnd:(id)a3 wrapPath:(BOOL)a4 atPoint:(CGPoint)a5 atAngle:(double)a6 withScale:(double)a7
{
  y = a5.y;
  x = a5.x;
  v13 = a3;
  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeTranslation(&v44, x, y);
  v42 = v44;
  CGAffineTransformScale(&v43, &v42, a7, a7);
  v44 = v43;
  v42 = v43;
  CGAffineTransformRotate(&v43, &v42, a6);
  v44 = v43;
  objc_msgSend_endPoint(v13, v14, v15);
  v17 = -v16;
  objc_msgSend_endPoint(v13, v18, v19);
  v42 = v44;
  CGAffineTransformTranslate(&v43, &v42, v17, -v20);
  v44 = v43;
  if (a4)
  {
    objc_msgSend_wrapPath(v13, v21, v22);
  }

  else
  {
    objc_msgSend_path(v13, v21, v22);
  }
  v23 = ;
  v26 = objc_msgSend_copy(v23, v24, v25);

  v43 = v44;
  objc_msgSend_transformUsingAffineTransform_(v26, v27, &v43);
  if (objc_msgSend_isFilled(v13, v28, v29))
  {
    objc_msgSend_setLineWidth_(v26, v30, v31, 0.0);
  }

  else
  {
    objc_msgSend_width(self, v30, v31);
    objc_msgSend_setLineWidth_(v26, v32, v33);
    objc_msgSend_lineJoin(v13, v34, v35);
    v36 = CGLineJoinToTSULineJoinStyle();
    objc_msgSend_setLineJoinStyle_(v26, v37, v36);
    v40 = objc_msgSend_strokedCopyAttemptingUsingLivarotFirst(v26, v38, v39);

    v26 = v40;
  }

  return v26;
}

- (double)horizontalMarginForSwatch
{
  v4 = objc_msgSend_pattern(self, a2, v2);
  isRoundDash = objc_msgSend_isRoundDash(v4, v5, v6);

  result = -3.0;
  if ((isRoundDash & 1) == 0)
  {
    isRoundSolidLine = objc_msgSend_p_isRoundSolidLine(self, v8, v9, -3.0);
    result = 0.0;
    if (isRoundSolidLine)
    {
      objc_msgSend_width(self, v12, v13, 0.0);
      return v14 * 0.5;
    }
  }

  return result;
}

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v68 = *MEMORY[0x277D85DE8];
  objc_msgSend_horizontalMarginForSwatch(self, a2, a4);
  v11 = v10;
  if (objc_msgSend_isNullStroke(self, v12, v13))
  {
    CGContextSaveGState(a4);
    v14 = (height + -35.0) * 0.5;
    v15 = y + floorf(v14) + 0.5;
    v16 = width + v11 * -2.0 + -1.0;
    v19 = objc_msgSend_color(self, v17, v18);
    v22 = objc_msgSend_CGColor(v19, v20, v21);
    CGContextSetStrokeColorWithColor(a4, v22);

    *lengths = xmmword_2768259D0;
    CGContextSetLineWidth(a4, 1.0);
    CGContextSetLineDash(a4, 0.0, lengths, 2uLL);
    v70.origin.x = x + v11 + 0.5;
    v70.origin.y = v15;
    v70.size.width = v16;
    v70.size.height = 35.0;
    CGContextStrokeRect(a4, v70);
    CGContextRestoreGState(a4);
    v25 = objc_msgSend_color(self, v23, v24);
    v28 = objc_msgSend_CGColor(v25, v26, v27);
    CGContextSetFillColorWithColor(a4, v28);

    v32 = sub_2767B590C(v29, v30, v31);
    v34 = objc_msgSend_localizedStringForKey_value_table_(v32, v33, @"None", &stru_28857D120, @"TSDrawables");

    UIGraphicsPushContext(a4);
    v37 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], v35, v36, 16.0);
    v65 = *MEMORY[0x277D740A8];
    v66 = v37;
    v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v66, &v65, 1);
    objc_msgSend_sizeWithAttributes_(v34, v40, v39);
    *&v41 = (v16 - v41) * 0.5;
    *&v42 = (35.0 - v42) * 0.5;
    objc_msgSend_drawAtPoint_withAttributes_(v34, v43, v39, x + v11 + 0.5 + floorf(*&v41), v15 + floorf(*&v42));
    UIGraphicsPopContext();
  }

  else
  {
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    *&v44 = CGRectInset(v71, v11, 0.0);
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    MidY = CGRectGetMidY(v72);
    objc_msgSend_width(self, v46, v47);
    v49 = MidY + v48 * -0.5;
    objc_msgSend_width(self, v50, v51);
    v53 = v52;
    v56 = objc_msgSend_pattern(self, v54, v55);
    objc_msgSend_width(self, v57, v58);
    objc_msgSend_p_renderableLengthForUnclippedPatternWithLineWidth_withinAvailableLength_(v56, v59, v60);
    v62 = v61;

    Mutable = CGPathCreateMutable();
    v73.origin.x = v44;
    v73.origin.y = v49;
    v73.size.width = v62;
    v73.size.height = v53;
    CGRectGetMinX(v73);
    v74.origin.x = v44;
    v74.origin.y = v49;
    v74.size.width = v62;
    v74.size.height = v53;
    CGRectGetMidY(v74);
    CGPathMoveToPointSafe();
    v75.origin.x = v44;
    v75.origin.y = v49;
    v75.size.width = v62;
    v75.size.height = v53;
    CGRectGetMaxX(v75);
    v76.origin.x = v44;
    v76.origin.y = v49;
    v76.size.width = v62;
    v76.size.height = v53;
    CGRectGetMidY(v76);
    CGPathAddLineToPointSafe();
    objc_msgSend_paintPath_inContext_(self, v64, Mutable, a4);

    CGPathRelease(Mutable);
  }
}

- (BOOL)isNearlyWhite
{
  if (objc_msgSend_isNullStroke(self, a2, v2))
  {
    return 0;
  }

  v7 = objc_msgSend_color(self, v4, v5);
  isNearlyWhite = objc_msgSend_isNearlyWhite(v7, v8, v9);

  return isNearlyWhite;
}

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3
{
  if (objc_msgSend_isNullStroke(self, a2, a3))
  {
    return 0;
  }

  v8 = objc_msgSend_color(self, v5, v6);
  v10 = objc_msgSend_requiresOutlineOnBackgroundWithAppearance_(v8, v9, a3);

  return v10;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (v8)
  {
    v11 = objc_msgSend_pattern(self, v9, v10);
    v14 = objc_msgSend_pattern(v8, v12, v13);
    v15 = TSDMixingTypeWithObjects(v11, v14, v6);
    v16 = TSDMixingTypeBestFromMixingTypes(4, v15);

    LODWORD(v11) = objc_msgSend_isNullStroke(self, v17, v18);
    if (v11 != objc_msgSend_isNullStroke(v8, v19, v20) || (shouldRender = objc_msgSend_shouldRender(self, v21, v22), shouldRender != objc_msgSend_shouldRender(v8, v24, v25)) || (isFrame = objc_msgSend_isFrame(self, v26, v27), isFrame != objc_msgSend_isFrame(v8, v29, v30)))
    {
      v16 = TSDMixingTypeBestFromMixingTypes(v16, 2);
    }

    objc_msgSend_width(self, v31, v32);
    v34 = v33;
    objc_msgSend_width(v8, v35, v36);
    if (v34 != v39 || (objc_msgSend_miterLimit(self, v37, v38), v41 = v40, objc_msgSend_miterLimit(v8, v42, v43), v41 != v44))
    {
      v16 = TSDMixingTypeBestFromMixingTypes(v16, 3);
    }
  }

  else
  {
    v16 = 3;
  }

  return v16;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v63[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();

  if (v7)
  {
    v10 = objc_alloc(objc_opt_class());
    v13 = objc_msgSend_color(self, v11, v12);
    v16 = objc_msgSend_color(v7, v14, v15);
    v62 = v13;
    v18 = objc_msgSend_blendedColorWithFraction_ofColor_(v13, v17, v16, a3);
    objc_msgSend_width(self, v19, v20);
    objc_msgSend_width(v7, v21, v22);
    TSUMix();
    v26 = v25;
    if (a3 >= 0.5)
    {
      v27 = objc_msgSend_cap(v7, v23, v24);
      v30 = objc_msgSend_join(v7, v47, v48);
    }

    else
    {
      v27 = objc_msgSend_cap(self, v23, v24);
      v30 = objc_msgSend_join(self, v28, v29);
    }

    v49 = v30;
    v50 = objc_msgSend_pattern(self, v31, v32);
    v53 = objc_msgSend_pattern(v7, v51, v52);
    v54 = TSDMixingMixedObjectWithFraction(v50, v53, a3);
    objc_msgSend_miterLimit(self, v55, v56);
    objc_msgSend_miterLimit(v7, v57, v58);
    TSUMix();
    v33 = objc_msgSend_initWithColor_width_cap_join_pattern_miterLimit_(v10, v59, v18, v27, v49, v54, v26, v60);
  }

  else
  {
    v33 = objc_msgSend_mutableCopy(self, v8, v9);
    v36 = objc_msgSend_color(self, v34, v35);
    objc_msgSend_getRGBAComponents_(v36, v37, v63);

    v40 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v38, v39, v63[0], v63[1], v63[2], 0.0);
    v43 = objc_msgSend_color(self, v41, v42);
    v45 = objc_msgSend_blendedColorWithFraction_ofColor_(v40, v44, v43, a3);
    objc_msgSend_setI_color_(v33, v46, v45);
  }

  return v33;
}

- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3
{
  v3 = fmin(a3->a, a3->d);
  v4 = objc_msgSend_mutableCopy(self, a2, a3);
  objc_msgSend_width(v4, v5, v6);
  objc_msgSend_setWidth_(v4, v8, v9, fmax(floor(v3 * v7), 0.25));

  return v4;
}

+ (int64_t)indexOfStroke:(id)a3 strokeArray:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v10 = v7;
  if (v7)
  {
    v11 = objc_msgSend_strokeName(v7, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  v34 = objc_msgSend_pattern(v5, v8, v9);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v6;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v35, v39, 16);
  if (!v14)
  {
    v16 = -1;
    goto LABEL_21;
  }

  v15 = v14;
  v31 = v10;
  v32 = v5;
  v16 = 0;
  v17 = *v36;
  while (2)
  {
    v18 = 0;
    v33 = v16 + v15;
    do
    {
      if (*v36 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v35 + 1) + 8 * v18);
      objc_opt_class();
      v20 = TSUDynamicCast();
      v23 = v20;
      if (v11 && v20)
      {
        v24 = objc_msgSend_strokeName(v20, v21, v22);
        isEqualToString = objc_msgSend_isEqualToString_(v11, v25, v24);
      }

      else
      {
        if (v11)
        {
          goto LABEL_15;
        }

        v24 = objc_msgSend_pattern(v19, v21, v22);
        isEqualToString = objc_msgSend_isEqual_(v34, v27, v24);
      }

      v28 = isEqualToString;

      if (v28)
      {

        goto LABEL_19;
      }

LABEL_15:

      ++v16;
      ++v18;
    }

    while (v15 != v18);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v29, &v35, v39, 16);
    v16 = v33;
    if (v15)
    {
      continue;
    }

    break;
  }

  v16 = -1;
LABEL_19:
  v10 = v31;
  v5 = v32;
LABEL_21:

  return v16;
}

+ (id)editedStrokeFromModelStroke:(id)a3 selectedStroke:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  if ((objc_msgSend_isFrame(v5, v10, v11) & 1) == 0)
  {
    objc_msgSend_setPropertiesFromStroke_(v9, v12, v5);
  }

  objc_msgSend_width(v9, v12, v13);
  v15 = v14;
  objc_msgSend_suggestedMinimumLineWidth(v9, v16, v17);
  if (v15 < v20)
  {
    objc_msgSend_suggestedMinimumLineWidth(v9, v18, v19);
    objc_msgSend_setWidth_(v9, v21, v22);
  }

  objc_msgSend_setPatternPropertiesFromStroke_(v9, v18, v6);

  return v9;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v8 = *(a3 + 4);
  if ((v8 & 4) != 0)
  {
    v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v7, *(*(a3 + 5) + 24) & 0xFFFFFFFFFFFFFFFELL);
    v9 = objc_msgSend_classForName_(TSDSmartStroke, v11, v10);
  }

  else
  {
    if ((v8 & 8) != 0)
    {
      v6 = objc_opt_class();
    }

    v9 = v6;
  }

  v12 = [v9 alloc];
  v14 = objc_msgSend_initWithArchive_unarchiver_(v12, v13, a3, v5);

  return v14;
}

- (TSDStroke)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D81180]);
  if (*(a3 + 3))
  {
    v9 = objc_msgSend_initWithMessage_(v7, v8, *(a3 + 3));
  }

  else
  {
    v9 = objc_msgSend_initWithMessage_(v7, v8, MEMORY[0x277D809E8]);
  }

  v10 = v9;
  v11 = *(a3 + 16);
  v12 = *(a3 + 17);
  v13 = *(a3 + 18);
  if (v12 == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 == 1;
  }

  if (v13 == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 == 1;
  }

  v16 = [TSDStrokePattern alloc];
  if (*(a3 + 4))
  {
    v18 = objc_msgSend_initWithArchive_unarchiver_(v16, v17, *(a3 + 4), v6);
  }

  else
  {
    v18 = objc_msgSend_initWithArchive_unarchiver_(v16, v17, &TSD::_StrokePatternArchive_default_instance_, v6);
  }

  v20 = v18;
  v21 = v11;
  v22 = objc_msgSend_initWithColor_width_cap_join_pattern_miterLimit_(self, v19, v10, v14, v15, v18, v21, *(a3 + 19));
  v25 = v22;
  if (v22)
  {
    objc_msgSend_setI_actualWidth_(v22, v23, v24, v21);
  }

  return v25;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v30 = a4;
  v9 = objc_msgSend_color(self, v6, v7);
  *(a3 + 4) |= 1u;
  v10 = *(a3 + 3);
  if (!v10)
  {
    v11 = *(a3 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277C9BAF0](v11);
    *(a3 + 3) = v10;
  }

  objc_msgSend_saveToMessage_(v9, v8, v10);

  objc_msgSend_width(self, v12, v13);
  *&v14 = v14;
  *(a3 + 4) |= 0x20u;
  *(a3 + 16) = LODWORD(v14);
  objc_msgSend_miterLimit(self, v15, v16);
  *&v17 = v17;
  *(a3 + 4) |= 0x100u;
  *(a3 + 19) = LODWORD(v17);
  v20 = objc_msgSend_cap(self, v18, v19);
  if (v20 < 3)
  {
    *(a3 + 4) |= 0x40u;
    *(a3 + 17) = v20;
  }

  v23 = objc_msgSend_join(self, v21, v22);
  if (v23 <= 2)
  {
    *(a3 + 4) |= 0x80u;
    *(a3 + 18) = v23;
  }

  v27 = objc_msgSend_pattern(self, v24, v25);
  *(a3 + 4) |= 2u;
  v28 = *(a3 + 4);
  if (!v28)
  {
    v29 = *(a3 + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokePatternArchive>(v29);
    *(a3 + 4) = v28;
  }

  objc_msgSend_saveToArchive_archiver_(v27, v26, v28, v30);
}

@end
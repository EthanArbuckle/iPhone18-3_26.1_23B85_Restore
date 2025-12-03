@interface TSDStroke
+ (id)editedStrokeFromModelStroke:(id)stroke selectedStroke:(id)selectedStroke;
+ (id)emptyStroke;
+ (id)i_newEmptyStroke;
+ (id)i_newStroke;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)stroke;
+ (id)strokeWithColor:(id)color width:(double)width;
+ (id)strokeWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern;
+ (int64_t)indexOfStroke:(id)stroke strokeArray:(id)array;
- (BOOL)isDash;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNearlyWhite;
- (BOOL)isRoundDash;
- (BOOL)p_isRoundSolidLine;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance;
- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform;
- (CGRect)boundsForPath:(id)path;
- (NSString)description;
- (TSDStroke)init;
- (TSDStroke)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSDStroke)initWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit;
- (_TSDStrokeOutsets)outsets;
- (double)dashSpacing;
- (double)horizontalMarginForSwatch;
- (id)colorForCGContext:(CGContext *)context;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)pathForLineEnd:(id)end wrapPath:(BOOL)path atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale;
- (id)pathToStrokeFromTSUBezierPath:(id)path;
- (id)strokeByTransformingByTransform:(CGAffineTransform *)transform;
- (id)strokeLineEnd:(id)end;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)hash;
- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)i_setCap:(int)cap;
- (void)i_setPattern:(id)pattern;
- (void)i_setPatternPropertiesFromStroke:(id)stroke;
- (void)i_setPropertiesFromStroke:(id)stroke;
- (void)p_strokePathChunk:(CGPath *)chunk inContext:(CGContext *)context wantsInteriorStroke:(BOOL)stroke;
- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
- (void)paintRect:(CGRect)rect wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDStroke

- (TSDStroke)initWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit
{
  colorCopy = color;
  patternCopy = pattern;
  v28.receiver = self;
  v28.super_class = TSDStroke;
  v18 = [(TSDStroke *)&v28 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(colorCopy, v16, v17);
    color = v18->_color;
    v18->_color = v19;

    v18->_width = width;
    v18->_actualWidth = width;
    v18->_cap = cap;
    v18->_join = join;
    v23 = objc_msgSend_copy(patternCopy, v21, v22);
    pattern = v18->_pattern;
    v18->_pattern = v23;

    v18->_miterLimit = limit;
    if (objc_msgSend_isRoundDash(patternCopy, v25, v26))
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableStroke, a2, zone);
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

- (void)i_setCap:(int)cap
{
  if (self->_cap != cap)
  {
    if (objc_msgSend_isRoundDash(self, a2, *&cap))
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
      self->_cap = cap;
    }
  }
}

- (void)i_setPattern:(id)pattern
{
  patternCopy = pattern;
  v6 = objc_msgSend_pattern(self, v4, v5);

  v9 = patternCopy;
  if (v6 != patternCopy)
  {
    isRoundDash = objc_msgSend_isRoundDash(self, v7, v8);
    v13 = objc_msgSend_copy(patternCopy, v11, v12);
    pattern = self->_pattern;
    self->_pattern = v13;

    if (objc_msgSend_isRoundDash(patternCopy, v15, v16))
    {
      v9 = patternCopy;
      if (isRoundDash)
      {
        goto LABEL_8;
      }

      objc_msgSend_i_setCap_(self, v17, 1);
    }

    else
    {
      v9 = patternCopy;
      if (!isRoundDash)
      {
        goto LABEL_8;
      }

      objc_msgSend_i_setCap_(self, v17, 0);
    }

    v9 = patternCopy;
  }

LABEL_8:
}

+ (id)i_newStroke
{
  v2 = [self alloc];
  v5 = objc_msgSend_blackColor(MEMORY[0x277D81180], v3, v4);
  v8 = objc_msgSend_solidPattern(TSDStrokePattern, v6, v7);
  v10 = objc_msgSend_initWithColor_width_cap_join_pattern_(v2, v9, v5, 0, 0, v8, 1.0);

  return v10;
}

+ (id)i_newEmptyStroke
{
  v2 = [self alloc];
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
  block[4] = self;
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
  block[4] = self;
  if (qword_280A4C150 != -1)
  {
    dispatch_once(&qword_280A4C150, block);
  }

  v2 = qword_280A4C158;

  return v2;
}

+ (id)strokeWithColor:(id)color width:(double)width
{
  colorCopy = color;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_solidPattern(TSDStrokePattern, v7, v8);
  v11 = objc_msgSend_initWithColor_width_cap_join_pattern_(v6, v10, colorCopy, 0, 0, v9, width);

  return v11;
}

+ (id)strokeWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern
{
  v7 = *&join;
  v8 = *&cap;
  patternCopy = pattern;
  colorCopy = color;
  v13 = objc_alloc(objc_opt_class());
  v15 = objc_msgSend_initWithColor_width_cap_join_pattern_(v13, v14, colorCopy, v8, v7, patternCopy, width);

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
  v18 = objc_msgSend_supportsWidth(equalCopy, v16, v17);
  if (v15)
  {
    if (!v18)
    {
      goto LABEL_5;
    }

    objc_msgSend_width(self, v19, v20);
    v22 = v21;
    objc_msgSend_width(equalCopy, v23, v24);
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
  v29 = objc_msgSend_supportsLineOptions(equalCopy, v27, v28);
  if (v26)
  {
    if (!v29)
    {
      goto LABEL_5;
    }

    v32 = objc_msgSend_cap(self, v30, v31);
    if (v32 != objc_msgSend_cap(equalCopy, v33, v34))
    {
      goto LABEL_5;
    }

    v37 = objc_msgSend_join(self, v35, v36);
    if (v37 != objc_msgSend_join(equalCopy, v38, v39))
    {
      goto LABEL_5;
    }

    objc_msgSend_miterLimit(self, v40, v41);
    v43 = v42;
    objc_msgSend_miterLimit(equalCopy, v44, v45);
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
  v50 = objc_msgSend_supportsPattern(equalCopy, v48, v49);
  if (v47)
  {
    if (!v50)
    {
      goto LABEL_5;
    }

    v53 = objc_msgSend_pattern(self, v51, v52);
    v56 = objc_msgSend_pattern(equalCopy, v54, v55);
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
  v62 = objc_msgSend_supportsColor(equalCopy, v60, v61);
  if (v59)
  {
    if (v62)
    {
      color = self->_color;
      v66 = objc_msgSend_color(equalCopy, v63, v64);
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

- (id)pathToStrokeFromTSUBezierPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  v8 = objc_msgSend_CGPath(v5, v6, v7);
  v10 = objc_msgSend_pathToStrokeFromCGPath_(self, v9, v8);
  v11 = pathCopy;
  if (v10 == objc_msgSend_CGPath(v11, v12, v13))
  {
    v14 = pathCopy;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277D81160]);
    objc_msgSend_copyPathAttributesTo_(pathCopy, v15, v14);
    v17 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v16, v10);
    objc_msgSend_appendBezierPath_(v14, v18, v17);
  }

  return v14;
}

- (CGRect)boundsForPath:(id)path
{
  objc_msgSend_boundsIncludingTSDStroke_(path, a2, self);
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

- (void)i_setPropertiesFromStroke:(id)stroke
{
  strokeCopy = stroke;
  if (objc_msgSend_isFrame(strokeCopy, v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDStroke i_setPropertiesFromStroke:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStroke.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 795, 0, "Setting properties for a TSDStroke from a TSDFrame");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_color(strokeCopy, v7, v8);
  objc_msgSend_setI_color_(self, v17, v16);

  objc_msgSend_width(strokeCopy, v18, v19);
  objc_msgSend_setI_width_(self, v20, v21);
  v24 = objc_msgSend_join(strokeCopy, v22, v23);
  objc_msgSend_setI_join_(self, v25, v24);
  objc_msgSend_miterLimit(strokeCopy, v26, v27);
  objc_msgSend_setI_miterLimit_(self, v28, v29);
  objc_msgSend_actualWidth(strokeCopy, v30, v31);
  objc_msgSend_setI_actualWidth_(self, v32, v33);
  v36 = objc_msgSend_pattern(strokeCopy, v34, v35);
  objc_msgSend_i_setPattern_(self, v37, v36);

  v40 = objc_msgSend_cap(strokeCopy, v38, v39);

  objc_msgSend_i_setCap_(self, v41, v40);
}

- (void)i_setPatternPropertiesFromStroke:(id)stroke
{
  strokeCopy = stroke;
  if (objc_msgSend_isFrame(strokeCopy, v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDStroke i_setPatternPropertiesFromStroke:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStroke.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 806, 0, "Setting properties for a TSDStroke from a TSDFrame");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_join(strokeCopy, v7, v8);
  objc_msgSend_setI_join_(self, v17, v16);
  objc_msgSend_miterLimit(strokeCopy, v18, v19);
  objc_msgSend_setI_miterLimit_(self, v20, v21);
  v24 = objc_msgSend_pattern(strokeCopy, v22, v23);
  objc_msgSend_i_setPattern_(self, v25, v24);

  v28 = objc_msgSend_cap(strokeCopy, v26, v27);

  objc_msgSend_i_setCap_(self, v29, v28);
}

- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  v7 = objc_msgSend_colorForCGContext_(self, a2, context);
  v10 = objc_msgSend_CGColor(v7, v8, v9);
  CGContextSetStrokeColorWithColor(context, v10);
  width = self->_width;
  if (strokeCopy)
  {
    width = width + width;
  }

  CGContextSetLineWidth(context, width);
  CGContextSetLineJoin(context, self->_join);
  CGContextSetMiterLimit(context, self->_miterLimit);
  v14 = CGLineCapToTSULineCap();
  objc_msgSend_i_applyToContext_lineWidth_capStyle_(self->_pattern, v12, context, &v14, self->_width * (self->_actualWidth / self->_width));
  v13 = TSULineCapToCGLineCap();
  CGContextSetLineCap(context, v13);
}

- (id)strokeLineEnd:(id)end
{
  endCopy = end;
  v6 = objc_msgSend_identifier(endCopy, v4, v5);
  v8 = v6;
  if (v6 && objc_msgSend_rangeOfString_(v6, v7, @":") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_rangeOfString_(v8, v9, @":");
    v13 = objc_msgSend_substringFromIndex_(v8, v12, v11 + 1);
    v10 = objc_msgSend_lineEndWithIdentifier_(TSDLineEnd, v14, v13);
  }

  else
  {
    v10 = endCopy;
  }

  return v10;
}

- (id)colorForCGContext:(CGContext *)context
{
  if (TSDCGContextHasBackgroundsSuppressed(context))
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

- (void)paintRect:(CGRect)rect wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context
{
  strokeCopy = stroke;
  Mutable = CGPathCreateMutable();
  CGPathAddRectSafe();
  objc_msgSend_paintPath_wantsInteriorStroke_inContext_(self, v9, Mutable, strokeCopy, context);

  CGPathRelease(Mutable);
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  strokeCopy = stroke;
  v58 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldRender(self, a2, path, stroke, context, drawing, parameterized, order))
  {
    CGContextSaveGState(context);
    if (sub_2767B2EB8(path) > 0x9C40)
    {
      v14 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v12, path);
      v16 = objc_msgSend_pathSplitAtSubpathBoundariesWithSoftElementLimit_hardElementLimit_(v14, v15, 40000, 50000);
      v19 = objc_msgSend_color(self, v17, v18);
      objc_msgSend_alphaComponent(v19, v20, v21);
      v23 = v22;

      if (v23 >= 1.0)
      {
        objc_msgSend_applyToContext_insideStroke_(self, v24, context, strokeCopy);
      }

      else
      {
        v26 = objc_msgSend_color(self, v24, v25);
        objc_msgSend_alphaComponent(v26, v27, v28);
        CGContextSetAlpha(context, v29);

        CGContextBeginTransparencyLayer(context, 0);
        v32 = objc_msgSend_mutableCopy(self, v30, v31);
        v35 = objc_msgSend_color(v32, v33, v34);
        v38 = objc_msgSend_colorWithAlphaComponent_(v35, v36, v37, 1.0);
        objc_msgSend_setColor_(v32, v39, v38);

        objc_msgSend_applyToContext_insideStroke_(v32, v40, context, strokeCopy);
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
            objc_msgSend_p_strokePathChunk_inContext_wantsInteriorStroke_(self, v51, v50, context, strokeCopy);
          }

          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v52, &v53, v57, 16);
        }

        while (v44);
      }

      if (v23 < 1.0)
      {
        CGContextEndTransparencyLayer(context);
      }
    }

    else
    {
      objc_msgSend_applyToContext_insideStroke_(self, v12, context, strokeCopy);
      objc_msgSend_p_strokePathChunk_inContext_wantsInteriorStroke_(self, v13, path, context, strokeCopy);
    }

    CGContextRestoreGState(context);
  }
}

- (void)p_strokePathChunk:(CGPath *)chunk inContext:(CGContext *)context wantsInteriorStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  CGContextSaveGState(context);
  if (strokeCopy)
  {
    CGContextAddPathSafe();
    CGContextClip(context);
  }

  CGContextAddPathSafe();
  CGContextStrokePath(context);

  CGContextRestoreGState(context);
}

- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  y = point.y;
  x = point.x;
  endCopy = end;
  CGContextSaveGState(context);
  memset(&v38, 0, sizeof(v38));
  CGAffineTransformMakeTranslation(&v38, x, y);
  v36 = v38;
  CGAffineTransformScale(&transform, &v36, scale, scale);
  v38 = transform;
  v36 = transform;
  CGAffineTransformRotate(&transform, &v36, angle);
  v38 = transform;
  objc_msgSend_endPoint(endCopy, v15, v16);
  v18 = -v17;
  objc_msgSend_endPoint(endCopy, v19, v20);
  v36 = v38;
  CGAffineTransformTranslate(&transform, &v36, v18, -v21);
  v38 = transform;
  CGContextConcatCTM(context, &transform);
  v24 = objc_msgSend_path(endCopy, v22, v23);
  v25 = v24;
  objc_msgSend_CGPath(v25, v26, v27);
  CGContextAddPathSafe();

  if (objc_msgSend_isFilled(endCopy, v28, v29))
  {
    CGContextFillPath(context);
  }

  else
  {
    objc_msgSend_width(self, v30, v31);
    CGContextSetLineWidth(context, v32 / scale);
    v35 = objc_msgSend_lineJoin(endCopy, v33, v34);
    CGContextSetLineJoin(context, v35);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform
{
  y = point.y;
  x = point.x;
  endCopy = end;
  memset(&v60, 0, sizeof(v60));
  CGAffineTransformMakeTranslation(&v60, x, y);
  t1 = v60;
  CGAffineTransformScale(&v59, &t1, scale, scale);
  v60 = v59;
  t1 = v59;
  CGAffineTransformRotate(&v59, &t1, angle);
  v60 = v59;
  objc_msgSend_endPoint(endCopy, v14, v15);
  v17 = -v16;
  objc_msgSend_endPoint(endCopy, v18, v19);
  t1 = v60;
  CGAffineTransformTranslate(&v59, &t1, v17, -v20);
  v60 = v59;
  t1 = v59;
  v21 = *&transform->c;
  *&v57.a = *&transform->a;
  *&v57.c = v21;
  *&v57.tx = *&transform->tx;
  CGAffineTransformConcat(&v59, &t1, &v57);
  v60 = v59;
  v22 = MEMORY[0x277D81160];
  v25 = objc_msgSend_path(endCopy, v23, v24);
  v26 = v25;
  v29 = objc_msgSend_CGPath(v26, v27, v28);
  v31 = objc_msgSend_bezierPathWithCGPath_(v22, v30, v29);

  v59 = v60;
  objc_msgSend_transformUsingAffineTransform_(v31, v32, &v59);
  if (objc_msgSend_isFilled(endCopy, v33, v34))
  {
    objc_msgSend_bounds(v31, v35, v36);
  }

  else
  {
    objc_msgSend_width(self, v35, v36);
    objc_msgSend_setLineWidth_(v31, v41, v42);
    objc_msgSend_lineJoin(endCopy, v43, v44);
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

- (id)pathForLineEnd:(id)end wrapPath:(BOOL)path atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale
{
  y = point.y;
  x = point.x;
  endCopy = end;
  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeTranslation(&v44, x, y);
  v42 = v44;
  CGAffineTransformScale(&v43, &v42, scale, scale);
  v44 = v43;
  v42 = v43;
  CGAffineTransformRotate(&v43, &v42, angle);
  v44 = v43;
  objc_msgSend_endPoint(endCopy, v14, v15);
  v17 = -v16;
  objc_msgSend_endPoint(endCopy, v18, v19);
  v42 = v44;
  CGAffineTransformTranslate(&v43, &v42, v17, -v20);
  v44 = v43;
  if (path)
  {
    objc_msgSend_wrapPath(endCopy, v21, v22);
  }

  else
  {
    objc_msgSend_path(endCopy, v21, v22);
  }
  v23 = ;
  v26 = objc_msgSend_copy(v23, v24, v25);

  v43 = v44;
  objc_msgSend_transformUsingAffineTransform_(v26, v27, &v43);
  if (objc_msgSend_isFilled(endCopy, v28, v29))
  {
    objc_msgSend_setLineWidth_(v26, v30, v31, 0.0);
  }

  else
  {
    objc_msgSend_width(self, v30, v31);
    objc_msgSend_setLineWidth_(v26, v32, v33);
    objc_msgSend_lineJoin(endCopy, v34, v35);
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

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v68 = *MEMORY[0x277D85DE8];
  objc_msgSend_horizontalMarginForSwatch(self, a2, context);
  v11 = v10;
  if (objc_msgSend_isNullStroke(self, v12, v13))
  {
    CGContextSaveGState(context);
    v14 = (height + -35.0) * 0.5;
    v15 = y + floorf(v14) + 0.5;
    v16 = width + v11 * -2.0 + -1.0;
    v19 = objc_msgSend_color(self, v17, v18);
    v22 = objc_msgSend_CGColor(v19, v20, v21);
    CGContextSetStrokeColorWithColor(context, v22);

    *lengths = xmmword_2768259D0;
    CGContextSetLineWidth(context, 1.0);
    CGContextSetLineDash(context, 0.0, lengths, 2uLL);
    v70.origin.x = x + v11 + 0.5;
    v70.origin.y = v15;
    v70.size.width = v16;
    v70.size.height = 35.0;
    CGContextStrokeRect(context, v70);
    CGContextRestoreGState(context);
    v25 = objc_msgSend_color(self, v23, v24);
    v28 = objc_msgSend_CGColor(v25, v26, v27);
    CGContextSetFillColorWithColor(context, v28);

    v32 = sub_2767B590C(v29, v30, v31);
    v34 = objc_msgSend_localizedStringForKey_value_table_(v32, v33, @"None", &stru_28857D120, @"TSDrawables");

    UIGraphicsPushContext(context);
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
    objc_msgSend_paintPath_inContext_(self, v64, Mutable, context);

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

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance
{
  if (objc_msgSend_isNullStroke(self, a2, appearance))
  {
    return 0;
  }

  v8 = objc_msgSend_color(self, v5, v6);
  v10 = objc_msgSend_requiresOutlineOnBackgroundWithAppearance_(v8, v9, appearance);

  return v10;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (v8)
  {
    v11 = objc_msgSend_pattern(self, v9, v10);
    v14 = objc_msgSend_pattern(v8, v12, v13);
    v15 = TSDMixingTypeWithObjects(v11, v14, contextCopy);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v63[4] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  if (v7)
  {
    v10 = objc_alloc(objc_opt_class());
    v13 = objc_msgSend_color(self, v11, v12);
    v16 = objc_msgSend_color(v7, v14, v15);
    v62 = v13;
    v18 = objc_msgSend_blendedColorWithFraction_ofColor_(v13, v17, v16, fraction);
    objc_msgSend_width(self, v19, v20);
    objc_msgSend_width(v7, v21, v22);
    TSUMix();
    v26 = v25;
    if (fraction >= 0.5)
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
    v54 = TSDMixingMixedObjectWithFraction(v50, v53, fraction);
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
    v45 = objc_msgSend_blendedColorWithFraction_ofColor_(v40, v44, v43, fraction);
    objc_msgSend_setI_color_(v33, v46, v45);
  }

  return v33;
}

- (id)strokeByTransformingByTransform:(CGAffineTransform *)transform
{
  v3 = fmin(transform->a, transform->d);
  v4 = objc_msgSend_mutableCopy(self, a2, transform);
  objc_msgSend_width(v4, v5, v6);
  objc_msgSend_setWidth_(v4, v8, v9, fmax(floor(v3 * v7), 0.25));

  return v4;
}

+ (int64_t)indexOfStroke:(id)stroke strokeArray:(id)array
{
  v40 = *MEMORY[0x277D85DE8];
  strokeCopy = stroke;
  arrayCopy = array;
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

  v34 = objc_msgSend_pattern(strokeCopy, v8, v9);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = arrayCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v35, v39, 16);
  if (!v14)
  {
    v16 = -1;
    goto LABEL_21;
  }

  v15 = v14;
  v31 = v10;
  v32 = strokeCopy;
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
  strokeCopy = v32;
LABEL_21:

  return v16;
}

+ (id)editedStrokeFromModelStroke:(id)stroke selectedStroke:(id)selectedStroke
{
  strokeCopy = stroke;
  selectedStrokeCopy = selectedStroke;
  v9 = objc_msgSend_mutableCopy(selectedStrokeCopy, v7, v8);
  if ((objc_msgSend_isFrame(strokeCopy, v10, v11) & 1) == 0)
  {
    objc_msgSend_setPropertiesFromStroke_(v9, v12, strokeCopy);
  }

  objc_msgSend_width(v9, v12, v13);
  v15 = v14;
  objc_msgSend_suggestedMinimumLineWidth(v9, v16, v17);
  if (v15 < v20)
  {
    objc_msgSend_suggestedMinimumLineWidth(v9, v18, v19);
    objc_msgSend_setWidth_(v9, v21, v22);
  }

  objc_msgSend_setPatternPropertiesFromStroke_(v9, v18, selectedStrokeCopy);

  return v9;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = objc_opt_class();
  v8 = *(archive + 4);
  if ((v8 & 4) != 0)
  {
    v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v7, *(*(archive + 5) + 24) & 0xFFFFFFFFFFFFFFFELL);
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
  v14 = objc_msgSend_initWithArchive_unarchiver_(v12, v13, archive, unarchiverCopy);

  return v14;
}

- (TSDStroke)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = objc_alloc(MEMORY[0x277D81180]);
  if (*(archive + 3))
  {
    v9 = objc_msgSend_initWithMessage_(v7, v8, *(archive + 3));
  }

  else
  {
    v9 = objc_msgSend_initWithMessage_(v7, v8, MEMORY[0x277D809E8]);
  }

  v10 = v9;
  v11 = *(archive + 16);
  v12 = *(archive + 17);
  v13 = *(archive + 18);
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
  if (*(archive + 4))
  {
    v18 = objc_msgSend_initWithArchive_unarchiver_(v16, v17, *(archive + 4), unarchiverCopy);
  }

  else
  {
    v18 = objc_msgSend_initWithArchive_unarchiver_(v16, v17, &TSD::_StrokePatternArchive_default_instance_, unarchiverCopy);
  }

  v20 = v18;
  v21 = v11;
  v22 = objc_msgSend_initWithColor_width_cap_join_pattern_miterLimit_(self, v19, v10, v14, v15, v18, v21, *(archive + 19));
  v25 = v22;
  if (v22)
  {
    objc_msgSend_setI_actualWidth_(v22, v23, v24, v21);
  }

  return v25;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v9 = objc_msgSend_color(self, v6, v7);
  *(archive + 4) |= 1u;
  v10 = *(archive + 3);
  if (!v10)
  {
    v11 = *(archive + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277C9BAF0](v11);
    *(archive + 3) = v10;
  }

  objc_msgSend_saveToMessage_(v9, v8, v10);

  objc_msgSend_width(self, v12, v13);
  *&v14 = v14;
  *(archive + 4) |= 0x20u;
  *(archive + 16) = LODWORD(v14);
  objc_msgSend_miterLimit(self, v15, v16);
  *&v17 = v17;
  *(archive + 4) |= 0x100u;
  *(archive + 19) = LODWORD(v17);
  v20 = objc_msgSend_cap(self, v18, v19);
  if (v20 < 3)
  {
    *(archive + 4) |= 0x40u;
    *(archive + 17) = v20;
  }

  v23 = objc_msgSend_join(self, v21, v22);
  if (v23 <= 2)
  {
    *(archive + 4) |= 0x80u;
    *(archive + 18) = v23;
  }

  v27 = objc_msgSend_pattern(self, v24, v25);
  *(archive + 4) |= 2u;
  v28 = *(archive + 4);
  if (!v28)
  {
    v29 = *(archive + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokePatternArchive>(v29);
    *(archive + 4) = v28;
  }

  objc_msgSend_saveToArchive_archiver_(v27, v26, v28, archiverCopy);
}

@end
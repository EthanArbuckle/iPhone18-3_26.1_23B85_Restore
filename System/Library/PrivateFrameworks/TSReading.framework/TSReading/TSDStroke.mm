@interface TSDStroke
+ (id)editedStrokeFromModelStroke:(id)stroke selectedStroke:(id)selectedStroke;
+ (id)emptyStroke;
+ (id)i_newEmptyStroke;
+ (id)i_newStroke;
+ (id)stroke;
+ (id)strokeWithColor:(id)color width:(double)width;
+ (id)strokeWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern;
+ (int64_t)indexOfStroke:(id)stroke strokeArray:(id)array;
- (BOOL)canApplyDirectlyToRepRenderable;
- (BOOL)canApplyToShapeRenderable;
- (BOOL)dontClearBackground;
- (BOOL)isDash;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStroke:(id)stroke;
- (BOOL)isNearlyWhite;
- (BOOL)isRoundDash;
- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform;
- (CGRect)boundsForPath:(id)path;
- (NSString)description;
- (TSDStroke)init;
- (TSDStroke)initWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit;
- (_TSDStrokeOutsets)outsets;
- (double)dashSpacing;
- (double)horizontalMarginForSwatch;
- (id)colorForCGContext:(CGContext *)context;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)pathForLineEnd:(id)end wrapPath:(BOOL)path atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale;
- (id)pathToStrokeFromTSDBezierPath:(id)path;
- (id)strokeByTransformingByTransform:(CGAffineTransform *)transform;
- (id)strokeLineEnd:(id)end;
- (int64_t)mixingTypeWithObject:(id)object;
- (unint64_t)hash;
- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke;
- (void)applyToRepRenderable:(id)renderable withScale:(double)scale;
- (void)applyToShapeRenderable:(id)renderable insideStroke:(BOOL)stroke withScale:(double)scale;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)i_setCap:(int)cap;
- (void)i_setPattern:(id)pattern;
- (void)i_setPatternPropertiesFromStroke:(id)stroke;
- (void)i_setPropertiesFromStroke:(id)stroke;
- (void)p_strokePathChunk:(CGPath *)chunk inContext:(CGContext *)context wantsInteriorStroke:(BOOL)stroke;
- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
- (void)paintRect:(CGRect)rect wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context;
@end

@implementation TSDStroke

- (TSDStroke)initWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit
{
  colorCopy = color;
  patternCopy = pattern;
  v22.receiver = self;
  v22.super_class = TSDStroke;
  v16 = [(TSDStroke *)&v22 init];
  if (v16)
  {
    v17 = [colorCopy copy];
    color = v16->_color;
    v16->_color = v17;

    v16->_width = width;
    v16->_actualWidth = width;
    v16->_cap = cap;
    v16->_join = join;
    v19 = [patternCopy copy];
    pattern = v16->_pattern;
    v16->_pattern = v19;

    v16->_miterLimit = limit;
    if ([patternCopy isRoundDash])
    {
      v16->_cap = 1;
    }
  }

  return v16;
}

- (TSDStroke)init
{
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  v4 = +[TSDStrokePattern solidPattern];
  v5 = [(TSDStroke *)self initWithColor:blackColor width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableStroke allocWithZone:zone];
  color = [(TSDStroke *)self color];
  [(TSDStroke *)self width];
  v7 = v6;
  v8 = [(TSDStroke *)self cap];
  join = [(TSDStroke *)self join];
  pattern = [(TSDStroke *)self pattern];
  [(TSDStroke *)self miterLimit];
  v12 = [(TSDStroke *)v4 initWithColor:color width:v8 cap:join join:pattern pattern:v7 miterLimit:v11];

  [(TSDStroke *)self actualWidth];
  [(TSDStroke *)v12 setI_actualWidth:?];
  return v12;
}

- (void)i_setCap:(int)cap
{
  if (self->_cap != cap)
  {
    if ([(TSDStroke *)self isRoundDash])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke i_setCap:]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
      [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:518 description:@"Cannot change cap style on a round-dash stroke."];
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
  pattern = [(TSDStroke *)self pattern];

  v5 = patternCopy;
  if (pattern != patternCopy)
  {
    isRoundDash = [(TSDStroke *)self isRoundDash];
    v7 = [patternCopy copy];
    pattern = self->_pattern;
    self->_pattern = v7;

    if ([patternCopy isRoundDash])
    {
      v5 = patternCopy;
      if (isRoundDash)
      {
        goto LABEL_8;
      }

      v9 = 1;
    }

    else
    {
      v5 = patternCopy;
      if (!isRoundDash)
      {
        goto LABEL_8;
      }

      v9 = 0;
    }

    [(TSDStroke *)self i_setCap:v9];
    v5 = patternCopy;
  }

LABEL_8:
}

+ (id)i_newStroke
{
  v2 = [self alloc];
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  v4 = +[TSDStrokePattern solidPattern];
  v5 = [v2 initWithColor:blackColor width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

+ (id)i_newEmptyStroke
{
  v2 = [self alloc];
  blackColor = [MEMORY[0x277D6C2A8] blackColor];
  v4 = +[TSDStrokePattern emptyPattern];
  v5 = [v2 initWithColor:blackColor width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

+ (id)stroke
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__TSDStroke_stroke__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (stroke_pred != -1)
  {
    dispatch_once(&stroke_pred, block);
  }

  v2 = stroke_sDefaultStroke;

  return v2;
}

uint64_t __19__TSDStroke_stroke__block_invoke(uint64_t a1)
{
  stroke_sDefaultStroke = [*(a1 + 32) i_newStroke];

  return MEMORY[0x2821F96F8]();
}

+ (id)emptyStroke
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__TSDStroke_emptyStroke__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (emptyStroke_pred != -1)
  {
    dispatch_once(&emptyStroke_pred, block);
  }

  v2 = emptyStroke_sEmptyStroke;

  return v2;
}

uint64_t __24__TSDStroke_emptyStroke__block_invoke(uint64_t a1)
{
  emptyStroke_sEmptyStroke = [*(a1 + 32) i_newEmptyStroke];

  return MEMORY[0x2821F96F8]();
}

+ (id)strokeWithColor:(id)color width:(double)width
{
  colorCopy = color;
  v6 = objc_alloc(objc_opt_class());
  v7 = +[TSDStrokePattern solidPattern];
  v8 = [v6 initWithColor:colorCopy width:0 cap:0 join:v7 pattern:width];

  return v8;
}

+ (id)strokeWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern
{
  v7 = *&join;
  v8 = *&cap;
  patternCopy = pattern;
  colorCopy = color;
  v13 = [objc_alloc(objc_opt_class()) initWithColor:colorCopy width:v8 cap:v7 join:patternCopy pattern:width];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_29;
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

  mutableClass = [objc_opt_class() mutableClass];
  if (mutableClass != [objc_opt_class() mutableClass])
  {
    goto LABEL_5;
  }

  supportsWidth = [(TSDStroke *)self supportsWidth];
  supportsWidth2 = [(TSDStroke *)equalCopy supportsWidth];
  if (supportsWidth)
  {
    if (!supportsWidth2)
    {
      goto LABEL_5;
    }

    [(TSDStroke *)self width];
    v10 = v9;
    [(TSDStroke *)equalCopy width];
    if (vabdd_f64(v10, v11) >= 0.00999999978)
    {
      goto LABEL_5;
    }
  }

  else if (supportsWidth2)
  {
    goto LABEL_5;
  }

  supportsLineOptions = [(TSDStroke *)self supportsLineOptions];
  supportsLineOptions2 = [(TSDStroke *)equalCopy supportsLineOptions];
  if (supportsLineOptions)
  {
    if (!supportsLineOptions2)
    {
      goto LABEL_5;
    }

    v14 = [(TSDStroke *)self cap];
    if (v14 != [(TSDStroke *)equalCopy cap])
    {
      goto LABEL_5;
    }

    join = [(TSDStroke *)self join];
    if (join != [(TSDStroke *)equalCopy join])
    {
      goto LABEL_5;
    }

    [(TSDStroke *)self miterLimit];
    v17 = v16;
    [(TSDStroke *)equalCopy miterLimit];
    if (v17 != v18)
    {
      goto LABEL_5;
    }
  }

  else if (supportsLineOptions2)
  {
    goto LABEL_5;
  }

  supportsPattern = [(TSDStroke *)self supportsPattern];
  supportsPattern2 = [(TSDStroke *)equalCopy supportsPattern];
  if (supportsPattern)
  {
    if (!supportsPattern2)
    {
      goto LABEL_5;
    }

    pattern = [(TSDStroke *)self pattern];
    pattern2 = [(TSDStroke *)equalCopy pattern];
    v23 = [pattern isEqual:pattern2];

    if ((v23 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (supportsPattern2)
  {
    goto LABEL_5;
  }

  supportsColor = [(TSDStroke *)self supportsColor];
  supportsColor2 = [(TSDStroke *)equalCopy supportsColor];
  if (supportsColor)
  {
    if (supportsColor2)
    {
      color = self->_color;
      color = [(TSDStroke *)equalCopy color];
      if (!(color | color))
      {
        goto LABEL_29;
      }

      v28 = color;
      v29 = [(TSUColor *)color isEqual:color];

      if (v29)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!supportsColor2)
  {
LABEL_29:
    v6 = 1;
    goto LABEL_30;
  }

LABEL_5:
  v6 = 0;
LABEL_30:

  return v6;
}

- (unint64_t)hash
{
  if ([(TSDStroke *)self supportsColor])
  {
    v3 = [(TSUColor *)self->_color hash];
  }

  else
  {
    v3 = *MEMORY[0x277D6C3B0];
  }

  if ([(TSDStroke *)self supportsLineOptions])
  {
    TSUHashWithSeed();
    TSUHashWithSeed();
    v3 = TSUHashWithSeed();
  }

  if ([(TSDStroke *)self supportsPattern])
  {
    v3 ^= [(TSDStrokePattern *)self->_pattern hash];
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  pattern = [(TSDStroke *)self pattern];
  [(TSDStroke *)self width];
  v8 = v7;
  color = [(TSDStroke *)self color];
  v10 = NSStringFromCGLineCap([(TSDStroke *)self cap]);
  v11 = NSStringFromCGLineJoin([(TSDStroke *)self join]);
  v12 = [v3 stringWithFormat:@"<%@ %p pattern=<%@>' width=%f color=<%@> cap=%@ join=%@>", v5, self, pattern, v8, color, v10, v11];

  return v12;
}

- (double)dashSpacing
{
  pattern = self->_pattern;
  v4 = 0.0;
  if (pattern && [(TSDStrokePattern *)pattern count]== 2)
  {
    return [(TSDStrokePattern *)self->_pattern pattern][8];
  }

  return v4;
}

- (BOOL)isDash
{
  isDash = [(TSDStrokePattern *)self->_pattern isDash];
  if (isDash)
  {
    LOBYTE(isDash) = self->_cap != 1;
  }

  return isDash;
}

- (BOOL)isRoundDash
{
  isRoundDash = [(TSDStrokePattern *)self->_pattern isRoundDash];
  if (isRoundDash)
  {
    LOBYTE(isRoundDash) = self->_cap == 1;
  }

  return isRoundDash;
}

- (id)pathToStrokeFromTSDBezierPath:(id)path
{
  pathCopy = path;
  v5 = -[TSDStroke pathToStrokeFromCGPath:](self, "pathToStrokeFromCGPath:", [pathCopy CGPath]);
  if (v5 == [pathCopy CGPath])
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = objc_alloc_init(TSDBezierPath);
    [pathCopy copyPathAttributesTo:v6];
    v7 = [TSDBezierPath bezierPathWithCGPath:v5];
    [(TSDBezierPath *)v6 appendBezierPath:v7];
  }

  return v6;
}

- (CGRect)boundsForPath:(id)path
{
  [path boundsIncludingTSDStroke:self];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_TSDStrokeOutsets)outsets
{
  supportsWidth = [(TSDStroke *)self supportsWidth];
  v4 = 0.0;
  if (supportsWidth)
  {
    [(TSDStroke *)self width];
    v4 = v5 * 0.5;
  }

  v6 = v4;
  v7 = v4;
  v8 = v4;
  result.var3 = v8;
  result.var2 = v7;
  result.var1 = v6;
  result.var0 = v4;
  return result;
}

- (void)i_setPropertiesFromStroke:(id)stroke
{
  strokeCopy = stroke;
  if ([strokeCopy isFrame])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke i_setPropertiesFromStroke:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:791 description:@"Setting properties for a TSDStroke from a TSDFrame"];
  }

  color = [strokeCopy color];
  [(TSDStroke *)self setI_color:color];

  [strokeCopy width];
  [(TSDStroke *)self setI_width:?];
  -[TSDStroke setI_join:](self, "setI_join:", [strokeCopy join]);
  [strokeCopy miterLimit];
  [(TSDStroke *)self setI_miterLimit:?];
  [strokeCopy actualWidth];
  [(TSDStroke *)self setI_actualWidth:?];
  pattern = [strokeCopy pattern];
  [(TSDStroke *)self i_setPattern:pattern];

  v10 = [strokeCopy cap];

  [(TSDStroke *)self i_setCap:v10];
}

- (void)i_setPatternPropertiesFromStroke:(id)stroke
{
  strokeCopy = stroke;
  if ([strokeCopy isFrame])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke i_setPatternPropertiesFromStroke:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:802 description:@"Setting properties for a TSDStroke from a TSDFrame"];
  }

  -[TSDStroke setI_join:](self, "setI_join:", [strokeCopy join]);
  [strokeCopy miterLimit];
  [(TSDStroke *)self setI_miterLimit:?];
  pattern = [strokeCopy pattern];
  [(TSDStroke *)self i_setPattern:pattern];

  v9 = [strokeCopy cap];

  [(TSDStroke *)self i_setCap:v9];
}

- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  v7 = [(TSDStroke *)self colorForCGContext:?];
  CGContextSetStrokeColorWithColor(context, [v7 CGColor]);
  width = self->_width;
  if (strokeCopy)
  {
    width = width + width;
  }

  CGContextSetLineWidth(context, width);
  CGContextSetLineJoin(context, self->_join);
  CGContextSetMiterLimit(context, self->_miterLimit);
  *cap = self->_cap;
  [(TSDStrokePattern *)self->_pattern i_applyToContext:context lineWidth:cap capStyle:self->_width * (self->_actualWidth / self->_width)];
  CGContextSetLineCap(context, cap[0]);
}

- (id)strokeLineEnd:(id)end
{
  endCopy = end;
  identifier = [endCopy identifier];
  v5 = identifier;
  if (identifier && [identifier rangeOfString:@":"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(v5, "rangeOfString:", @":"}];
    v6 = [TSDLineEnd lineEndWithIdentifier:v7];
  }

  else
  {
    v6 = endCopy;
  }

  return v6;
}

- (id)colorForCGContext:(CGContext *)context
{
  if (TSDCGContextHasBackgroundsSuppressed(context))
  {
    [MEMORY[0x277D6C2A8] blackColor];
  }

  else
  {
    [(TSDStroke *)self color];
  }
  v4 = ;

  return v4;
}

- (void)paintRect:(CGRect)rect wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context
{
  strokeCopy = stroke;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Mutable = CGPathCreateMutable();
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGPathAddRect(Mutable, 0, v14);
  [(TSDStroke *)self paintPath:Mutable wantsInteriorStroke:strokeCopy inContext:context];

  CGPathRelease(Mutable);
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  strokeCopy = stroke;
  v32 = *MEMORY[0x277D85DE8];
  if ([(TSDStroke *)self shouldRender:path])
  {
    CGContextSaveGState(context);
    if (TSDPathGetSegmentCount(path) > 0x9C40)
    {
      v12 = [TSDBezierPath bezierPathWithCGPath:path];
      v13 = [v12 pathSplitAtSubpathBoundariesWithSoftElementLimit:40000 hardElementLimit:50000];
      color = [(TSDStroke *)self color];
      [color alphaComponent];
      v16 = v15;

      if (v16 >= 1.0)
      {
        [(TSDStroke *)self applyToContext:context insideStroke:strokeCopy];
      }

      else
      {
        color2 = [(TSDStroke *)self color];
        [color2 alphaComponent];
        CGContextSetAlpha(context, v18);

        CGContextBeginTransparencyLayer(context, 0);
        v19 = [(TSDStroke *)self mutableCopy];
        color3 = [v19 color];
        v21 = [color3 colorWithAlphaComponent:1.0];
        [v19 setColor:v21];

        [v19 applyToContext:context insideStroke:strokeCopy];
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v28;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v28 != v25)
            {
              objc_enumerationMutation(v22);
            }

            -[TSDStroke p_strokePathChunk:inContext:wantsInteriorStroke:](self, "p_strokePathChunk:inContext:wantsInteriorStroke:", [*(*(&v27 + 1) + 8 * i) CGPath], context, strokeCopy);
          }

          v24 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v24);
      }

      if (v16 < 1.0)
      {
        CGContextEndTransparencyLayer(context);
      }
    }

    else
    {
      [(TSDStroke *)self applyToContext:context insideStroke:strokeCopy];
      [(TSDStroke *)self p_strokePathChunk:path inContext:context wantsInteriorStroke:strokeCopy];
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
    CGContextAddPath(context, chunk);
    CGContextClip(context);
  }

  CGContextAddPath(context, chunk);
  CGContextStrokePath(context);

  CGContextRestoreGState(context);
}

- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  y = point.y;
  x = point.x;
  endCopy = end;
  CGContextSaveGState(context);
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeTranslation(&v21, x, y);
  v19 = v21;
  CGAffineTransformScale(&transform, &v19, scale, scale);
  v21 = transform;
  v19 = transform;
  CGAffineTransformRotate(&transform, &v19, angle);
  v21 = transform;
  [endCopy endPoint];
  v16 = -v15;
  [endCopy endPoint];
  v19 = v21;
  CGAffineTransformTranslate(&transform, &v19, v16, -v17);
  v21 = transform;
  CGContextConcatCTM(context, &transform);
  CGContextAddPath(context, [endCopy path]);
  if ([endCopy isFilled])
  {
    CGContextFillPath(context);
  }

  else
  {
    [(TSDStroke *)self width];
    CGContextSetLineWidth(context, v18 / scale);
    CGContextSetLineJoin(context, [endCopy lineJoin]);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform
{
  y = point.y;
  x = point.x;
  endCopy = end;
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeTranslation(&v34, x, y);
  t1 = v34;
  CGAffineTransformScale(&v33, &t1, scale, scale);
  v34 = v33;
  t1 = v33;
  CGAffineTransformRotate(&v33, &t1, angle);
  v34 = v33;
  [endCopy endPoint];
  v15 = -v14;
  [endCopy endPoint];
  t1 = v34;
  CGAffineTransformTranslate(&v33, &t1, v15, -v16);
  v34 = v33;
  t1 = v33;
  v17 = *&transform->c;
  *&v31.a = *&transform->a;
  *&v31.c = v17;
  *&v31.tx = *&transform->tx;
  CGAffineTransformConcat(&v33, &t1, &v31);
  v34 = v33;
  v18 = +[TSDBezierPath bezierPathWithCGPath:](TSDBezierPath, "bezierPathWithCGPath:", [endCopy path]);
  v33 = v34;
  [v18 transformUsingAffineTransform:&v33];
  if ([endCopy isFilled])
  {
    [v18 bounds];
  }

  else
  {
    [(TSDStroke *)self width];
    [v18 setLineWidth:?];
    [v18 setLineJoinStyle:{objc_msgSend(endCopy, "lineJoin")}];
    [v18 boundsIncludingStroke];
  }

  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (id)pathForLineEnd:(id)end wrapPath:(BOOL)path atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  endCopy = end;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeTranslation(&v23, x, y);
  v21 = v23;
  CGAffineTransformScale(&v22, &v21, scale, scale);
  v23 = v22;
  v21 = v22;
  CGAffineTransformRotate(&v22, &v21, angle);
  v23 = v22;
  [endCopy endPoint];
  v15 = -v14;
  [endCopy endPoint];
  v21 = v23;
  CGAffineTransformTranslate(&v22, &v21, v15, -v16);
  v23 = v22;
  path = [endCopy path];
  if (pathCopy)
  {
    path = [endCopy wrapPath];
  }

  v18 = [TSDBezierPath bezierPathWithCGPath:path];
  v22 = v23;
  [v18 transformUsingAffineTransform:&v22];
  if ([endCopy isFilled])
  {
    [v18 setLineWidth:0.0];
  }

  else
  {
    [(TSDStroke *)self width];
    [v18 setLineWidth:?];
    [v18 setLineJoinStyle:{objc_msgSend(endCopy, "lineJoin")}];
    outlineStroke = [v18 outlineStroke];

    v18 = outlineStroke;
  }

  return v18;
}

- (double)horizontalMarginForSwatch
{
  pattern = [(TSDStroke *)self pattern];
  isRoundDash = [pattern isRoundDash];

  result = 0.0;
  if (isRoundDash)
  {
    return -3.0;
  }

  return result;
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v40 = *MEMORY[0x277D85DE8];
  [(TSDStroke *)self horizontalMarginForSwatch];
  v11 = v10;
  if ([(TSDStroke *)self isNullStroke])
  {
    CGContextSaveGState(context);
    v12 = (height + -35.0) * 0.5;
    v13 = y + floorf(v12) + 0.5;
    v14 = width + v11 * -2.0 + -1.0;
    color = [(TSDStroke *)self color];
    CGContextSetStrokeColorWithColor(context, [color CGColor]);

    *lengths = xmmword_26CA65510;
    CGContextSetLineWidth(context, 1.0);
    CGContextSetLineDash(context, 0.0, lengths, 2uLL);
    v42.origin.x = x + v11 + 0.5;
    v42.origin.y = v13;
    v42.size.width = v14;
    v42.size.height = 35.0;
    CGContextStrokeRect(context, v42);
    CGContextRestoreGState(context);
    color2 = [(TSDStroke *)self color];
    CGContextSetFillColorWithColor(context, [color2 CGColor]);

    v17 = TSDBundle();
    v18 = [v17 localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSDrawables"];

    UIGraphicsPushContext(context);
    v19 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    v37 = *MEMORY[0x277D740A8];
    v38 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v18 sizeWithAttributes:v20];
    *&v21 = (v14 - v21) * 0.5;
    *&v22 = (35.0 - v22) * 0.5;
    [v18 drawAtPoint:v20 withAttributes:{x + v11 + 0.5 + floorf(*&v21), v13 + floorf(*&v22)}];
    UIGraphicsPopContext();
  }

  else
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    *&v23 = CGRectInset(v43, v11, 0.0);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    MidY = CGRectGetMidY(v44);
    [(TSDStroke *)self width];
    v26 = MidY + v25 * -0.5;
    [(TSDStroke *)self width];
    v28 = v27;
    pattern = [(TSDStroke *)self pattern];
    [(TSDStroke *)self width];
    [pattern p_renderableLengthForUnclippedPatternWithLineWidth:? withinAvailableLength:?];
    v31 = v30;

    Mutable = CGPathCreateMutable();
    v45.origin.x = v23;
    v45.origin.y = v26;
    v45.size.width = v31;
    v45.size.height = v28;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = v23;
    v46.origin.y = v26;
    v46.size.width = v31;
    v46.size.height = v28;
    v34 = CGRectGetMidY(v46);
    CGPathMoveToPoint(Mutable, 0, MinX, v34);
    v47.origin.x = v23;
    v47.origin.y = v26;
    v47.size.width = v31;
    v47.size.height = v28;
    MaxX = CGRectGetMaxX(v47);
    v48.origin.x = v23;
    v48.origin.y = v26;
    v48.size.width = v31;
    v48.size.height = v28;
    v36 = CGRectGetMidY(v48);
    CGPathAddLineToPoint(Mutable, 0, MaxX, v36);
    [(TSDStroke *)self paintPath:Mutable inContext:context];

    CGPathRelease(Mutable);
  }
}

- (BOOL)isNearlyWhite
{
  if ([(TSDStroke *)self isNullStroke])
  {
    return 0;
  }

  color = [(TSDStroke *)self color];
  isNearlyWhite = [color isNearlyWhite];

  return isNearlyWhite;
}

- (BOOL)canApplyDirectlyToRepRenderable
{
  if (![(TSDStroke *)self shouldRender])
  {
    return 1;
  }

  color = [(TSDStroke *)self color];
  isOpaque = [color isOpaque];

  pattern = [(TSDStroke *)self pattern];
  if ([pattern count])
  {
    v6 = 1;
  }

  else
  {
    v6 = [pattern patternType] != 1;
  }

  v8 = [(TSDStroke *)self cap];
  v9 = (v8 | [(TSDStroke *)self join]) == 0;
  if (v6)
  {
    v9 = 0;
  }

  if (isOpaque)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)applyToRepRenderable:(id)renderable withScale:(double)scale
{
  renderableCopy = renderable;
  if (![(TSDStroke *)self canApplyDirectlyToRepRenderable])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke applyToRepRenderable:withScale:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:1115 description:@"Applying stroke with unsupported properties to renderable"];
  }

  if ([(TSDStroke *)self shouldRender])
  {
    color = [(TSDStroke *)self color];
    [renderableCopy setBorderColor:{objc_msgSend(color, "CGColor")}];

    [(TSDStroke *)self width];
    v11 = v10 * scale;
  }

  else
  {
    [renderableCopy setBorderColor:0];
    v11 = 0.0;
  }

  [renderableCopy setBorderWidth:v11];
}

- (BOOL)canApplyToShapeRenderable
{
  if (([(TSDStroke *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [(TSDStroke *)self isMemberOfClass:v4];
}

- (void)applyToShapeRenderable:(id)renderable insideStroke:(BOOL)stroke withScale:(double)scale
{
  strokeCopy = stroke;
  renderableCopy = renderable;
  if (![(TSDStroke *)self canApplyToShapeRenderable])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke applyToShapeRenderable:insideStroke:withScale:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:1141 description:@"don't try to apply this stroke to a shape renderable"];
  }

  if ([(TSDStroke *)self shouldRender])
  {
    [(TSDStroke *)self width];
    v12 = v11 * scale;
    color = [(TSDStroke *)self color];
    [renderableCopy setStrokeColor:{objc_msgSend(color, "CGColor")}];

    v14 = v12 + v12;
    if (!strokeCopy)
    {
      v14 = v12;
    }

    [renderableCopy setLineWidth:v14];
    [(TSDStroke *)self miterLimit];
    [renderableCopy setMiterLimit:?];
    [renderableCopy setCGLineCap:{-[TSDStroke cap](self, "cap")}];
    [renderableCopy setCGLineJoin:{-[TSDStroke join](self, "join")}];
    if ([(TSDStroke *)self supportsPattern])
    {
      pattern = [(TSDStroke *)self pattern];
      [pattern p_applyToShapeRenderable:renderableCopy lineWidth:v12];
    }

    else
    {
      [renderableCopy setLineDashPattern:0];
    }
  }

  else
  {
    [renderableCopy setStrokeColor:0];
  }
}

- (int64_t)mixingTypeWithObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    pattern = [(TSDStroke *)self pattern];
    pattern2 = [v5 pattern];
    v8 = TSDMixingTypeWithObjects(pattern, pattern2);
    v9 = TSDMixingTypeBestFromMixingTypes(4, v8);

    LODWORD(pattern) = [(TSDStroke *)self isNullStroke];
    if (pattern != [v5 isNullStroke] || (v10 = -[TSDStroke shouldRender](self, "shouldRender"), v10 != objc_msgSend(v5, "shouldRender")) || (v11 = -[TSDStroke isFrame](self, "isFrame"), v11 != objc_msgSend(v5, "isFrame")))
    {
      v9 = TSDMixingTypeBestFromMixingTypes(v9, 2);
    }

    [(TSDStroke *)self width];
    v13 = v12;
    [v5 width];
    if (v13 != v14 || (-[TSDStroke miterLimit](self, "miterLimit"), v16 = v15, [v5 miterLimit], v16 != v17))
    {
      v9 = TSDMixingTypeBestFromMixingTypes(v9, 3);
    }
  }

  else
  {
    v9 = 3;
  }

  return v9;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v28[4] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  if (v7)
  {
    v8 = objc_alloc(objc_opt_class());
    color = [(TSDStroke *)self color];
    color2 = [(TSDStroke *)v7 color];
    v27 = color;
    v11 = [color blendedColorWithFraction:color2 ofColor:fraction];
    [(TSDStroke *)self width];
    [(TSDStroke *)v7 width];
    TSUMix();
    v13 = v12;
    if (fraction >= 0.5)
    {
      v14 = [(TSDStroke *)v7 cap];
      selfCopy = v7;
    }

    else
    {
      v14 = [(TSDStroke *)self cap];
      selfCopy = self;
    }

    join = [(TSDStroke *)selfCopy join];
    pattern = [(TSDStroke *)self pattern];
    pattern2 = [(TSDStroke *)v7 pattern];
    v24 = TSDMixingMixedObjectWithFractionEx(pattern, pattern2, fraction);
    [(TSDStroke *)self miterLimit];
    [(TSDStroke *)v7 miterLimit];
    TSUMix();
    v16 = [v8 initWithColor:v11 width:v14 cap:join join:v24 pattern:v13 miterLimit:v25];
  }

  else
  {
    v16 = [(TSDStroke *)self mutableCopy];
    color3 = [(TSDStroke *)self color];
    [color3 getRGBAComponents:v28];

    v18 = [MEMORY[0x277D6C2A8] colorWithRed:v28[0] green:v28[1] blue:v28[2] alpha:0.0];
    color4 = [(TSDStroke *)self color];
    v20 = [v18 blendedColorWithFraction:color4 ofColor:fraction];
    [v16 setI_color:v20];
  }

  return v16;
}

- (id)strokeByTransformingByTransform:(CGAffineTransform *)transform
{
  v3 = fmin(transform->a, transform->d);
  v4 = [(TSDStroke *)self mutableCopy];
  [v4 width];
  [v4 setWidth:{fmax(floor(v3 * v5), 0.25)}];

  return v4;
}

+ (int64_t)indexOfStroke:(id)stroke strokeArray:(id)array
{
  v32 = *MEMORY[0x277D85DE8];
  strokeCopy = stroke;
  arrayCopy = array;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v8 = v7;
  if (v7)
  {
    strokeName = [v7 strokeName];
  }

  else
  {
    strokeName = 0;
  }

  pattern = [strokeCopy pattern];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = arrayCopy;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v11)
  {
    v13 = -1;
    goto LABEL_21;
  }

  v12 = v11;
  v23 = v8;
  v24 = strokeCopy;
  v13 = 0;
  v14 = *v28;
  while (2)
  {
    v15 = 0;
    v25 = v13 + v12;
    do
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      objc_opt_class();
      v17 = TSUDynamicCast();
      v18 = v17;
      if (strokeName && v17)
      {
        strokeName2 = [v17 strokeName];
        v20 = [strokeName isEqualToString:strokeName2];
      }

      else
      {
        if (strokeName)
        {
          goto LABEL_15;
        }

        strokeName2 = [v16 pattern];
        v20 = [pattern isEqual:strokeName2];
      }

      v21 = v20;

      if (v21)
      {

        goto LABEL_19;
      }

LABEL_15:

      ++v13;
      ++v15;
    }

    while (v12 != v15);
    v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    v13 = v25;
    if (v12)
    {
      continue;
    }

    break;
  }

  v13 = -1;
LABEL_19:
  v8 = v23;
  strokeCopy = v24;
LABEL_21:

  return v13;
}

+ (id)editedStrokeFromModelStroke:(id)stroke selectedStroke:(id)selectedStroke
{
  strokeCopy = stroke;
  selectedStrokeCopy = selectedStroke;
  v7 = [selectedStrokeCopy mutableCopy];
  if (([strokeCopy isFrame] & 1) == 0)
  {
    [v7 setPropertiesFromStroke:strokeCopy];
  }

  [v7 width];
  v9 = v8;
  [v7 suggestedMinimumLineWidth];
  if (v9 < v10)
  {
    [v7 suggestedMinimumLineWidth];
    [v7 setWidth:?];
  }

  [v7 setPatternPropertiesFromStroke:selectedStrokeCopy];

  return v7;
}

- (BOOL)dontClearBackground
{
  AssociatedObject = objc_getAssociatedObject(self, "TSTStrokeAssociatedObject");

  return [AssociatedObject dontClearBackground];
}

- (BOOL)isEqualToStroke:(id)stroke
{
  result = 0;
  if ([(TSDStroke *)self isEqual:?])
  {
    dontClearBackground = [(TSDStroke *)self dontClearBackground];
    if (dontClearBackground == [stroke dontClearBackground])
    {
      return 1;
    }
  }

  return result;
}

@end
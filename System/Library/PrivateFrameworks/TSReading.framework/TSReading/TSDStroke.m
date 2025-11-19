@interface TSDStroke
+ (id)editedStrokeFromModelStroke:(id)a3 selectedStroke:(id)a4;
+ (id)emptyStroke;
+ (id)i_newEmptyStroke;
+ (id)i_newStroke;
+ (id)stroke;
+ (id)strokeWithColor:(id)a3 width:(double)a4;
+ (id)strokeWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7;
+ (int64_t)indexOfStroke:(id)a3 strokeArray:(id)a4;
- (BOOL)canApplyDirectlyToRepRenderable;
- (BOOL)canApplyToShapeRenderable;
- (BOOL)dontClearBackground;
- (BOOL)isDash;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStroke:(id)a3;
- (BOOL)isNearlyWhite;
- (BOOL)isRoundDash;
- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7;
- (CGRect)boundsForPath:(id)a3;
- (NSString)description;
- (TSDStroke)init;
- (TSDStroke)initWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7 miterLimit:(double)a8;
- (_TSDStrokeOutsets)outsets;
- (double)dashSpacing;
- (double)horizontalMarginForSwatch;
- (id)colorForCGContext:(CGContext *)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)pathForLineEnd:(id)a3 wrapPath:(BOOL)a4 atPoint:(CGPoint)a5 atAngle:(double)a6 withScale:(double)a7;
- (id)pathToStrokeFromTSDBezierPath:(id)a3;
- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3;
- (id)strokeLineEnd:(id)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4;
- (void)applyToRepRenderable:(id)a3 withScale:(double)a4;
- (void)applyToShapeRenderable:(id)a3 insideStroke:(BOOL)a4 withScale:(double)a5;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)i_setCap:(int)a3;
- (void)i_setPattern:(id)a3;
- (void)i_setPatternPropertiesFromStroke:(id)a3;
- (void)i_setPropertiesFromStroke:(id)a3;
- (void)p_strokePathChunk:(CGPath *)a3 inContext:(CGContext *)a4 wantsInteriorStroke:(BOOL)a5;
- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8;
- (void)paintRect:(CGRect)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5;
@end

@implementation TSDStroke

- (TSDStroke)initWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7 miterLimit:(double)a8
{
  v14 = a3;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = TSDStroke;
  v16 = [(TSDStroke *)&v22 init];
  if (v16)
  {
    v17 = [v14 copy];
    color = v16->_color;
    v16->_color = v17;

    v16->_width = a4;
    v16->_actualWidth = a4;
    v16->_cap = a5;
    v16->_join = a6;
    v19 = [v15 copy];
    pattern = v16->_pattern;
    v16->_pattern = v19;

    v16->_miterLimit = a8;
    if ([v15 isRoundDash])
    {
      v16->_cap = 1;
    }
  }

  return v16;
}

- (TSDStroke)init
{
  v3 = [MEMORY[0x277D6C2A8] blackColor];
  v4 = +[TSDStrokePattern solidPattern];
  v5 = [(TSDStroke *)self initWithColor:v3 width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableStroke allocWithZone:a3];
  v5 = [(TSDStroke *)self color];
  [(TSDStroke *)self width];
  v7 = v6;
  v8 = [(TSDStroke *)self cap];
  v9 = [(TSDStroke *)self join];
  v10 = [(TSDStroke *)self pattern];
  [(TSDStroke *)self miterLimit];
  v12 = [(TSDStroke *)v4 initWithColor:v5 width:v8 cap:v9 join:v10 pattern:v7 miterLimit:v11];

  [(TSDStroke *)self actualWidth];
  [(TSDStroke *)v12 setI_actualWidth:?];
  return v12;
}

- (void)i_setCap:(int)a3
{
  if (self->_cap != a3)
  {
    if ([(TSDStroke *)self isRoundDash])
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke i_setCap:]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
      [v7 handleFailureInFunction:v5 file:v6 lineNumber:518 description:@"Cannot change cap style on a round-dash stroke."];
    }

    else
    {
      self->_cap = a3;
    }
  }
}

- (void)i_setPattern:(id)a3
{
  v10 = a3;
  v4 = [(TSDStroke *)self pattern];

  v5 = v10;
  if (v4 != v10)
  {
    v6 = [(TSDStroke *)self isRoundDash];
    v7 = [v10 copy];
    pattern = self->_pattern;
    self->_pattern = v7;

    if ([v10 isRoundDash])
    {
      v5 = v10;
      if (v6)
      {
        goto LABEL_8;
      }

      v9 = 1;
    }

    else
    {
      v5 = v10;
      if (!v6)
      {
        goto LABEL_8;
      }

      v9 = 0;
    }

    [(TSDStroke *)self i_setCap:v9];
    v5 = v10;
  }

LABEL_8:
}

+ (id)i_newStroke
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277D6C2A8] blackColor];
  v4 = +[TSDStrokePattern solidPattern];
  v5 = [v2 initWithColor:v3 width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

+ (id)i_newEmptyStroke
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277D6C2A8] blackColor];
  v4 = +[TSDStrokePattern emptyPattern];
  v5 = [v2 initWithColor:v3 width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

+ (id)stroke
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__TSDStroke_stroke__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  block[4] = a1;
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

+ (id)strokeWithColor:(id)a3 width:(double)a4
{
  v5 = a3;
  v6 = objc_alloc(objc_opt_class());
  v7 = +[TSDStrokePattern solidPattern];
  v8 = [v6 initWithColor:v5 width:0 cap:0 join:v7 pattern:a4];

  return v8;
}

+ (id)strokeWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7
{
  v7 = *&a6;
  v8 = *&a5;
  v11 = a7;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithColor:v12 width:v8 cap:v7 join:v11 pattern:a4];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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

  v5 = [objc_opt_class() mutableClass];
  if (v5 != [objc_opt_class() mutableClass])
  {
    goto LABEL_5;
  }

  v7 = [(TSDStroke *)self supportsWidth];
  v8 = [(TSDStroke *)v4 supportsWidth];
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_5;
    }

    [(TSDStroke *)self width];
    v10 = v9;
    [(TSDStroke *)v4 width];
    if (vabdd_f64(v10, v11) >= 0.00999999978)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
    goto LABEL_5;
  }

  v12 = [(TSDStroke *)self supportsLineOptions];
  v13 = [(TSDStroke *)v4 supportsLineOptions];
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_5;
    }

    v14 = [(TSDStroke *)self cap];
    if (v14 != [(TSDStroke *)v4 cap])
    {
      goto LABEL_5;
    }

    v15 = [(TSDStroke *)self join];
    if (v15 != [(TSDStroke *)v4 join])
    {
      goto LABEL_5;
    }

    [(TSDStroke *)self miterLimit];
    v17 = v16;
    [(TSDStroke *)v4 miterLimit];
    if (v17 != v18)
    {
      goto LABEL_5;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  v19 = [(TSDStroke *)self supportsPattern];
  v20 = [(TSDStroke *)v4 supportsPattern];
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_5;
    }

    v21 = [(TSDStroke *)self pattern];
    v22 = [(TSDStroke *)v4 pattern];
    v23 = [v21 isEqual:v22];

    if ((v23 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v20)
  {
    goto LABEL_5;
  }

  v24 = [(TSDStroke *)self supportsColor];
  v25 = [(TSDStroke *)v4 supportsColor];
  if (v24)
  {
    if (v25)
    {
      color = self->_color;
      v27 = [(TSDStroke *)v4 color];
      if (!(color | v27))
      {
        goto LABEL_29;
      }

      v28 = v27;
      v29 = [(TSUColor *)color isEqual:v27];

      if (v29)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v25)
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
  v6 = [(TSDStroke *)self pattern];
  [(TSDStroke *)self width];
  v8 = v7;
  v9 = [(TSDStroke *)self color];
  v10 = NSStringFromCGLineCap([(TSDStroke *)self cap]);
  v11 = NSStringFromCGLineJoin([(TSDStroke *)self join]);
  v12 = [v3 stringWithFormat:@"<%@ %p pattern=<%@>' width=%f color=<%@> cap=%@ join=%@>", v5, self, v6, v8, v9, v10, v11];

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
  v3 = [(TSDStrokePattern *)self->_pattern isDash];
  if (v3)
  {
    LOBYTE(v3) = self->_cap != 1;
  }

  return v3;
}

- (BOOL)isRoundDash
{
  v3 = [(TSDStrokePattern *)self->_pattern isRoundDash];
  if (v3)
  {
    LOBYTE(v3) = self->_cap == 1;
  }

  return v3;
}

- (id)pathToStrokeFromTSDBezierPath:(id)a3
{
  v4 = a3;
  v5 = -[TSDStroke pathToStrokeFromCGPath:](self, "pathToStrokeFromCGPath:", [v4 CGPath]);
  if (v5 == [v4 CGPath])
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(TSDBezierPath);
    [v4 copyPathAttributesTo:v6];
    v7 = [TSDBezierPath bezierPathWithCGPath:v5];
    [(TSDBezierPath *)v6 appendBezierPath:v7];
  }

  return v6;
}

- (CGRect)boundsForPath:(id)a3
{
  [a3 boundsIncludingTSDStroke:self];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_TSDStrokeOutsets)outsets
{
  v3 = [(TSDStroke *)self supportsWidth];
  v4 = 0.0;
  if (v3)
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

- (void)i_setPropertiesFromStroke:(id)a3
{
  v4 = a3;
  if ([v4 isFrame])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke i_setPropertiesFromStroke:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:791 description:@"Setting properties for a TSDStroke from a TSDFrame"];
  }

  v8 = [v4 color];
  [(TSDStroke *)self setI_color:v8];

  [v4 width];
  [(TSDStroke *)self setI_width:?];
  -[TSDStroke setI_join:](self, "setI_join:", [v4 join]);
  [v4 miterLimit];
  [(TSDStroke *)self setI_miterLimit:?];
  [v4 actualWidth];
  [(TSDStroke *)self setI_actualWidth:?];
  v9 = [v4 pattern];
  [(TSDStroke *)self i_setPattern:v9];

  v10 = [v4 cap];

  [(TSDStroke *)self i_setCap:v10];
}

- (void)i_setPatternPropertiesFromStroke:(id)a3
{
  v4 = a3;
  if ([v4 isFrame])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke i_setPatternPropertiesFromStroke:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:802 description:@"Setting properties for a TSDStroke from a TSDFrame"];
  }

  -[TSDStroke setI_join:](self, "setI_join:", [v4 join]);
  [v4 miterLimit];
  [(TSDStroke *)self setI_miterLimit:?];
  v8 = [v4 pattern];
  [(TSDStroke *)self i_setPattern:v8];

  v9 = [v4 cap];

  [(TSDStroke *)self i_setCap:v9];
}

- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4
{
  v4 = a4;
  v7 = [(TSDStroke *)self colorForCGContext:?];
  CGContextSetStrokeColorWithColor(a3, [v7 CGColor]);
  width = self->_width;
  if (v4)
  {
    width = width + width;
  }

  CGContextSetLineWidth(a3, width);
  CGContextSetLineJoin(a3, self->_join);
  CGContextSetMiterLimit(a3, self->_miterLimit);
  *cap = self->_cap;
  [(TSDStrokePattern *)self->_pattern i_applyToContext:a3 lineWidth:cap capStyle:self->_width * (self->_actualWidth / self->_width)];
  CGContextSetLineCap(a3, cap[0]);
}

- (id)strokeLineEnd:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = v4;
  if (v4 && [v4 rangeOfString:@":"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(v5, "rangeOfString:", @":"}];
    v6 = [TSDLineEnd lineEndWithIdentifier:v7];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)colorForCGContext:(CGContext *)a3
{
  if (TSDCGContextHasBackgroundsSuppressed(a3))
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

- (void)paintRect:(CGRect)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5
{
  v6 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CGPathCreateMutable();
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGPathAddRect(Mutable, 0, v14);
  [(TSDStroke *)self paintPath:Mutable wantsInteriorStroke:v6 inContext:a5];

  CGPathRelease(Mutable);
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
{
  v9 = a4;
  v32 = *MEMORY[0x277D85DE8];
  if ([(TSDStroke *)self shouldRender:a3])
  {
    CGContextSaveGState(a5);
    if (TSDPathGetSegmentCount(a3) > 0x9C40)
    {
      v12 = [TSDBezierPath bezierPathWithCGPath:a3];
      v13 = [v12 pathSplitAtSubpathBoundariesWithSoftElementLimit:40000 hardElementLimit:50000];
      v14 = [(TSDStroke *)self color];
      [v14 alphaComponent];
      v16 = v15;

      if (v16 >= 1.0)
      {
        [(TSDStroke *)self applyToContext:a5 insideStroke:v9];
      }

      else
      {
        v17 = [(TSDStroke *)self color];
        [v17 alphaComponent];
        CGContextSetAlpha(a5, v18);

        CGContextBeginTransparencyLayer(a5, 0);
        v19 = [(TSDStroke *)self mutableCopy];
        v20 = [v19 color];
        v21 = [v20 colorWithAlphaComponent:1.0];
        [v19 setColor:v21];

        [v19 applyToContext:a5 insideStroke:v9];
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

            -[TSDStroke p_strokePathChunk:inContext:wantsInteriorStroke:](self, "p_strokePathChunk:inContext:wantsInteriorStroke:", [*(*(&v27 + 1) + 8 * i) CGPath], a5, v9);
          }

          v24 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v24);
      }

      if (v16 < 1.0)
      {
        CGContextEndTransparencyLayer(a5);
      }
    }

    else
    {
      [(TSDStroke *)self applyToContext:a5 insideStroke:v9];
      [(TSDStroke *)self p_strokePathChunk:a3 inContext:a5 wantsInteriorStroke:v9];
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
    CGContextAddPath(a4, a3);
    CGContextClip(a4);
  }

  CGContextAddPath(a4, a3);
  CGContextStrokePath(a4);

  CGContextRestoreGState(a4);
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8
{
  y = a4.y;
  x = a4.x;
  v14 = a3;
  CGContextSaveGState(a7);
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeTranslation(&v21, x, y);
  v19 = v21;
  CGAffineTransformScale(&transform, &v19, a6, a6);
  v21 = transform;
  v19 = transform;
  CGAffineTransformRotate(&transform, &v19, a5);
  v21 = transform;
  [v14 endPoint];
  v16 = -v15;
  [v14 endPoint];
  v19 = v21;
  CGAffineTransformTranslate(&transform, &v19, v16, -v17);
  v21 = transform;
  CGContextConcatCTM(a7, &transform);
  CGContextAddPath(a7, [v14 path]);
  if ([v14 isFilled])
  {
    CGContextFillPath(a7);
  }

  else
  {
    [(TSDStroke *)self width];
    CGContextSetLineWidth(a7, v18 / a6);
    CGContextSetLineJoin(a7, [v14 lineJoin]);
    CGContextStrokePath(a7);
  }

  CGContextRestoreGState(a7);
}

- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeTranslation(&v34, x, y);
  t1 = v34;
  CGAffineTransformScale(&v33, &t1, a6, a6);
  v34 = v33;
  t1 = v33;
  CGAffineTransformRotate(&v33, &t1, a5);
  v34 = v33;
  [v13 endPoint];
  v15 = -v14;
  [v13 endPoint];
  t1 = v34;
  CGAffineTransformTranslate(&v33, &t1, v15, -v16);
  v34 = v33;
  t1 = v33;
  v17 = *&a7->c;
  *&v31.a = *&a7->a;
  *&v31.c = v17;
  *&v31.tx = *&a7->tx;
  CGAffineTransformConcat(&v33, &t1, &v31);
  v34 = v33;
  v18 = +[TSDBezierPath bezierPathWithCGPath:](TSDBezierPath, "bezierPathWithCGPath:", [v13 path]);
  v33 = v34;
  [v18 transformUsingAffineTransform:&v33];
  if ([v13 isFilled])
  {
    [v18 bounds];
  }

  else
  {
    [(TSDStroke *)self width];
    [v18 setLineWidth:?];
    [v18 setLineJoinStyle:{objc_msgSend(v13, "lineJoin")}];
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

- (id)pathForLineEnd:(id)a3 wrapPath:(BOOL)a4 atPoint:(CGPoint)a5 atAngle:(double)a6 withScale:(double)a7
{
  y = a5.y;
  x = a5.x;
  v11 = a4;
  v13 = a3;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeTranslation(&v23, x, y);
  v21 = v23;
  CGAffineTransformScale(&v22, &v21, a7, a7);
  v23 = v22;
  v21 = v22;
  CGAffineTransformRotate(&v22, &v21, a6);
  v23 = v22;
  [v13 endPoint];
  v15 = -v14;
  [v13 endPoint];
  v21 = v23;
  CGAffineTransformTranslate(&v22, &v21, v15, -v16);
  v23 = v22;
  v17 = [v13 path];
  if (v11)
  {
    v17 = [v13 wrapPath];
  }

  v18 = [TSDBezierPath bezierPathWithCGPath:v17];
  v22 = v23;
  [v18 transformUsingAffineTransform:&v22];
  if ([v13 isFilled])
  {
    [v18 setLineWidth:0.0];
  }

  else
  {
    [(TSDStroke *)self width];
    [v18 setLineWidth:?];
    [v18 setLineJoinStyle:{objc_msgSend(v13, "lineJoin")}];
    v19 = [v18 outlineStroke];

    v18 = v19;
  }

  return v18;
}

- (double)horizontalMarginForSwatch
{
  v2 = [(TSDStroke *)self pattern];
  v3 = [v2 isRoundDash];

  result = 0.0;
  if (v3)
  {
    return -3.0;
  }

  return result;
}

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v40 = *MEMORY[0x277D85DE8];
  [(TSDStroke *)self horizontalMarginForSwatch];
  v11 = v10;
  if ([(TSDStroke *)self isNullStroke])
  {
    CGContextSaveGState(a4);
    v12 = (height + -35.0) * 0.5;
    v13 = y + floorf(v12) + 0.5;
    v14 = width + v11 * -2.0 + -1.0;
    v15 = [(TSDStroke *)self color];
    CGContextSetStrokeColorWithColor(a4, [v15 CGColor]);

    *lengths = xmmword_26CA65510;
    CGContextSetLineWidth(a4, 1.0);
    CGContextSetLineDash(a4, 0.0, lengths, 2uLL);
    v42.origin.x = x + v11 + 0.5;
    v42.origin.y = v13;
    v42.size.width = v14;
    v42.size.height = 35.0;
    CGContextStrokeRect(a4, v42);
    CGContextRestoreGState(a4);
    v16 = [(TSDStroke *)self color];
    CGContextSetFillColorWithColor(a4, [v16 CGColor]);

    v17 = TSDBundle();
    v18 = [v17 localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSDrawables"];

    UIGraphicsPushContext(a4);
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
    v29 = [(TSDStroke *)self pattern];
    [(TSDStroke *)self width];
    [v29 p_renderableLengthForUnclippedPatternWithLineWidth:? withinAvailableLength:?];
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
    [(TSDStroke *)self paintPath:Mutable inContext:a4];

    CGPathRelease(Mutable);
  }
}

- (BOOL)isNearlyWhite
{
  if ([(TSDStroke *)self isNullStroke])
  {
    return 0;
  }

  v4 = [(TSDStroke *)self color];
  v5 = [v4 isNearlyWhite];

  return v5;
}

- (BOOL)canApplyDirectlyToRepRenderable
{
  if (![(TSDStroke *)self shouldRender])
  {
    return 1;
  }

  v3 = [(TSDStroke *)self color];
  v4 = [v3 isOpaque];

  v5 = [(TSDStroke *)self pattern];
  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 patternType] != 1;
  }

  v8 = [(TSDStroke *)self cap];
  v9 = (v8 | [(TSDStroke *)self join]) == 0;
  if (v6)
  {
    v9 = 0;
  }

  if (v4)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)applyToRepRenderable:(id)a3 withScale:(double)a4
{
  v12 = a3;
  if (![(TSDStroke *)self canApplyDirectlyToRepRenderable])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke applyToRepRenderable:withScale:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:1115 description:@"Applying stroke with unsupported properties to renderable"];
  }

  if ([(TSDStroke *)self shouldRender])
  {
    v9 = [(TSDStroke *)self color];
    [v12 setBorderColor:{objc_msgSend(v9, "CGColor")}];

    [(TSDStroke *)self width];
    v11 = v10 * a4;
  }

  else
  {
    [v12 setBorderColor:0];
    v11 = 0.0;
  }

  [v12 setBorderWidth:v11];
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

- (void)applyToShapeRenderable:(id)a3 insideStroke:(BOOL)a4 withScale:(double)a5
{
  v6 = a4;
  v16 = a3;
  if (![(TSDStroke *)self canApplyToShapeRenderable])
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStroke applyToShapeRenderable:insideStroke:withScale:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:1141 description:@"don't try to apply this stroke to a shape renderable"];
  }

  if ([(TSDStroke *)self shouldRender])
  {
    [(TSDStroke *)self width];
    v12 = v11 * a5;
    v13 = [(TSDStroke *)self color];
    [v16 setStrokeColor:{objc_msgSend(v13, "CGColor")}];

    v14 = v12 + v12;
    if (!v6)
    {
      v14 = v12;
    }

    [v16 setLineWidth:v14];
    [(TSDStroke *)self miterLimit];
    [v16 setMiterLimit:?];
    [v16 setCGLineCap:{-[TSDStroke cap](self, "cap")}];
    [v16 setCGLineJoin:{-[TSDStroke join](self, "join")}];
    if ([(TSDStroke *)self supportsPattern])
    {
      v15 = [(TSDStroke *)self pattern];
      [v15 p_applyToShapeRenderable:v16 lineWidth:v12];
    }

    else
    {
      [v16 setLineDashPattern:0];
    }
  }

  else
  {
    [v16 setStrokeColor:0];
  }
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v6 = [(TSDStroke *)self pattern];
    v7 = [v5 pattern];
    v8 = TSDMixingTypeWithObjects(v6, v7);
    v9 = TSDMixingTypeBestFromMixingTypes(4, v8);

    LODWORD(v6) = [(TSDStroke *)self isNullStroke];
    if (v6 != [v5 isNullStroke] || (v10 = -[TSDStroke shouldRender](self, "shouldRender"), v10 != objc_msgSend(v5, "shouldRender")) || (v11 = -[TSDStroke isFrame](self, "isFrame"), v11 != objc_msgSend(v5, "isFrame")))
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

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v28[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();

  if (v7)
  {
    v8 = objc_alloc(objc_opt_class());
    v9 = [(TSDStroke *)self color];
    v10 = [(TSDStroke *)v7 color];
    v27 = v9;
    v11 = [v9 blendedColorWithFraction:v10 ofColor:a3];
    [(TSDStroke *)self width];
    [(TSDStroke *)v7 width];
    TSUMix();
    v13 = v12;
    if (a3 >= 0.5)
    {
      v14 = [(TSDStroke *)v7 cap];
      v15 = v7;
    }

    else
    {
      v14 = [(TSDStroke *)self cap];
      v15 = self;
    }

    v21 = [(TSDStroke *)v15 join];
    v22 = [(TSDStroke *)self pattern];
    v23 = [(TSDStroke *)v7 pattern];
    v24 = TSDMixingMixedObjectWithFractionEx(v22, v23, a3);
    [(TSDStroke *)self miterLimit];
    [(TSDStroke *)v7 miterLimit];
    TSUMix();
    v16 = [v8 initWithColor:v11 width:v14 cap:v21 join:v24 pattern:v13 miterLimit:v25];
  }

  else
  {
    v16 = [(TSDStroke *)self mutableCopy];
    v17 = [(TSDStroke *)self color];
    [v17 getRGBAComponents:v28];

    v18 = [MEMORY[0x277D6C2A8] colorWithRed:v28[0] green:v28[1] blue:v28[2] alpha:0.0];
    v19 = [(TSDStroke *)self color];
    v20 = [v18 blendedColorWithFraction:v19 ofColor:a3];
    [v16 setI_color:v20];
  }

  return v16;
}

- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3
{
  v3 = fmin(a3->a, a3->d);
  v4 = [(TSDStroke *)self mutableCopy];
  [v4 width];
  [v4 setWidth:{fmax(floor(v3 * v5), 0.25)}];

  return v4;
}

+ (int64_t)indexOfStroke:(id)a3 strokeArray:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 strokeName];
  }

  else
  {
    v9 = 0;
  }

  v26 = [v5 pattern];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v11)
  {
    v13 = -1;
    goto LABEL_21;
  }

  v12 = v11;
  v23 = v8;
  v24 = v5;
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
      if (v9 && v17)
      {
        v19 = [v17 strokeName];
        v20 = [v9 isEqualToString:v19];
      }

      else
      {
        if (v9)
        {
          goto LABEL_15;
        }

        v19 = [v16 pattern];
        v20 = [v26 isEqual:v19];
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
  v5 = v24;
LABEL_21:

  return v13;
}

+ (id)editedStrokeFromModelStroke:(id)a3 selectedStroke:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 mutableCopy];
  if (([v5 isFrame] & 1) == 0)
  {
    [v7 setPropertiesFromStroke:v5];
  }

  [v7 width];
  v9 = v8;
  [v7 suggestedMinimumLineWidth];
  if (v9 < v10)
  {
    [v7 suggestedMinimumLineWidth];
    [v7 setWidth:?];
  }

  [v7 setPatternPropertiesFromStroke:v6];

  return v7;
}

- (BOOL)dontClearBackground
{
  AssociatedObject = objc_getAssociatedObject(self, "TSTStrokeAssociatedObject");

  return [AssociatedObject dontClearBackground];
}

- (BOOL)isEqualToStroke:(id)a3
{
  result = 0;
  if ([(TSDStroke *)self isEqual:?])
  {
    v5 = [(TSDStroke *)self dontClearBackground];
    if (v5 == [a3 dontClearBackground])
    {
      return 1;
    }
  }

  return result;
}

@end
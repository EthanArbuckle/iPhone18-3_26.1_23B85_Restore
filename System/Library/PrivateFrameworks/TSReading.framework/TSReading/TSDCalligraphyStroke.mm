@interface TSDCalligraphyStroke
- (CGAffineTransform)transformInContext:(SEL)a3;
- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7;
- (CGRect)boundsForPath:(id)a3;
- (CGRect)p_superBoundsForPath:(id)a3;
- (TSDCalligraphyStroke)initWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7 miterLimit:(double)a8;
- (double)horizontalMarginForSwatch;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4;
- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8;
@end

@implementation TSDCalligraphyStroke

- (TSDCalligraphyStroke)initWithColor:(id)a3 width:(double)a4 cap:(int)a5 join:(int)a6 pattern:(id)a7 miterLimit:(double)a8
{
  v9.receiver = self;
  v9.super_class = TSDCalligraphyStroke;
  return [(TSDSmartStroke *)&v9 initWithName:@"Calligraphy" color:a3 width:*&a5 cap:*&a6 join:a7 pattern:a4 miterLimit:a8];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableCalligraphyStroke alloc];
  v5 = [(TSDStroke *)self color];
  [(TSDStroke *)self width];
  v7 = v6;
  v8 = [(TSDStroke *)self cap];
  v9 = [(TSDStroke *)self join];
  v10 = [(TSDStroke *)self pattern];
  [(TSDStroke *)self miterLimit];

  return [(TSDCalligraphyStroke *)v4 initWithColor:v5 width:v8 cap:v9 join:v10 pattern:v7 miterLimit:v11];
}

- (CGRect)p_superBoundsForPath:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v7 boundsForPath:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)boundsForPath:(id)a3
{
  v4 = [(TSDCalligraphyStroke *)self mutableCopy];
  [v4 setCap:2];
  [v4 setJoin:1];

  [v4 p_superBoundsForPath:a3];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGAffineTransform)transformInContext:(SEL)a3
{
  v7 = MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  CGContextGetCTM(&v22, a4);
  v9 = TSDTransformAngle(&v22.a);
  if (TSDCGContextGetIsReflection(a4))
  {
    v10 = -v9;
  }

  else
  {
    v10 = v9;
  }

  LayoutAngle = TSDCGContextGetLayoutAngle(a4);
  v12 = v10 - (LayoutAngle + TSDCGContextGetShadowedLayoutAngle(a4));
  [(TSDCalligraphyStroke *)self angle];
  v14 = v13 - v12;
  if ([(TSDCalligraphyStroke *)self chisel])
  {
    v15 = *&retstr->c;
    *&v22.a = *&retstr->a;
    *&v22.c = v15;
    *&v22.tx = *&retstr->tx;
    return CGAffineTransformRotate(retstr, &v22, v14 * -3.14159265 / 180.0);
  }

  else
  {
    v17 = *&retstr->c;
    *&v22.a = *&retstr->a;
    *&v22.c = v17;
    *&v22.tx = *&retstr->tx;
    [(TSDCalligraphyStroke *)self scale];
    CGAffineTransformScale(retstr, &v22, 1.0, 1.0 / v18);
    v19 = *&retstr->c;
    *&v21.a = *&retstr->a;
    *&v21.c = v19;
    *&v21.tx = *&retstr->tx;
    result = CGAffineTransformRotate(&v22, &v21, v14 * 3.14159265 / 180.0);
    v20 = *&v22.c;
    *&retstr->a = *&v22.a;
    *&retstr->c = v20;
    *&retstr->tx = *&v22.tx;
  }

  return result;
}

- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v5 applyToContext:a3 insideStroke:a4];
  CGContextSetLineCap(a3, kCGLineCapRound);
  CGContextSetLineJoin(a3, kCGLineJoinRound);
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
{
  v9 = a4;
  if ([(TSDStroke *)self shouldRender:a3])
  {
    memset(&v16, 0, sizeof(v16));
    if (self)
    {
      [(TSDCalligraphyStroke *)self transformInContext:a5];
    }

    transform = v16;
    v12 = TSDCreateTransformedPath(a3, &transform);
    CGContextSaveGState(a5);
    [(TSDCalligraphyStroke *)self applyToContext:a5 insideStroke:v9];
    v14 = v16;
    CGAffineTransformInvert(&transform, &v14);
    CGContextConcatCTM(a5, &transform);
    if ([(TSDCalligraphyStroke *)self chisel])
    {
      v13 = [TSDBezierPath bezierPathWithCGPath:v12];
      [(TSDStroke *)self width];
      [(TSDBezierPath *)v13 setLineWidth:?];
      CGContextAddPath(a5, [-[TSDBezierPath chisel](v13 "chisel")]);
      CGContextSetFillColorWithColor(a5, [(TSUColor *)[(TSDStroke *)self color] CGColor]);
      CGContextFillPath(a5);
    }

    else
    {
      CGContextAddPath(a5, v12);
      CGContextStrokePath(a5);
    }

    CGPathRelease(v12);
    CGContextRestoreGState(a5);
  }
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8
{
  y = a4.y;
  x = a4.x;
  CGContextSaveGState(a7);
  [(TSDCalligraphyStroke *)self applyToContext:a7 insideStroke:0];
  memset(&v25, 0, sizeof(v25));
  if (self)
  {
    [(TSDCalligraphyStroke *)self transformInContext:a7];
  }

  v23 = v25;
  CGAffineTransformInvert(&transform, &v23);
  CGContextConcatCTM(a7, &transform);
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeTranslation(&transform, x, y);
  t1 = transform;
  CGAffineTransformScale(&v23, &t1, a6, a6);
  transform = v23;
  t1 = v23;
  CGAffineTransformRotate(&v23, &t1, a5);
  transform = v23;
  t1 = v23;
  [a3 endPoint];
  v16 = -v15;
  [a3 endPoint];
  CGAffineTransformTranslate(&v23, &t1, v16, -v17);
  transform = v23;
  v18 = [a3 path];
  t1 = transform;
  v21 = v25;
  CGAffineTransformConcat(&v23, &t1, &v21);
  v19 = TSDCreateTransformedPath(v18, &v23);
  CGContextAddPath(a7, v19);
  CGPathRelease(v19);
  if ([a3 isFilled])
  {
    CGContextFillPath(a7);
  }

  else
  {
    [(TSDStroke *)self width];
    CGContextSetLineWidth(a7, v20);
    CGContextSetLineJoin(a7, [a3 lineJoin]);
    CGContextStrokePath(a7);
  }

  CGContextRestoreGState(a7);
}

- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7
{
  v9 = *&a7->c;
  v27[0] = *&a7->a;
  v27[1] = v9;
  v27[2] = *&a7->tx;
  v26.receiver = self;
  v26.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v26 boundsForLineEnd:a3 atPoint:v27 atAngle:a4.x withScale:a4.y transform:a5, a6];
  x = v10;
  y = v12;
  width = v14;
  height = v16;
  if (([a3 isFilled] & 1) == 0)
  {
    [(TSDStroke *)self width];
    v19 = v18 * -0.5;
    [(TSDStroke *)self width];
    v21 = v20 * -0.5;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectInset(v28, v19, v21);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (double)horizontalMarginForSwatch
{
  v4.receiver = self;
  v4.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v4 horizontalMarginForSwatch];
  return v2 + 3.0;
}

@end
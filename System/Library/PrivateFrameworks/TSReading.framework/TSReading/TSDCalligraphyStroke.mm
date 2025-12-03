@interface TSDCalligraphyStroke
- (CGAffineTransform)transformInContext:(SEL)context;
- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform;
- (CGRect)boundsForPath:(id)path;
- (CGRect)p_superBoundsForPath:(id)path;
- (TSDCalligraphyStroke)initWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit;
- (double)horizontalMarginForSwatch;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke;
- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
@end

@implementation TSDCalligraphyStroke

- (TSDCalligraphyStroke)initWithColor:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit
{
  v9.receiver = self;
  v9.super_class = TSDCalligraphyStroke;
  return [(TSDSmartStroke *)&v9 initWithName:@"Calligraphy" color:color width:*&cap cap:*&join join:pattern pattern:width miterLimit:limit];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableCalligraphyStroke alloc];
  color = [(TSDStroke *)self color];
  [(TSDStroke *)self width];
  v7 = v6;
  v8 = [(TSDStroke *)self cap];
  join = [(TSDStroke *)self join];
  pattern = [(TSDStroke *)self pattern];
  [(TSDStroke *)self miterLimit];

  return [(TSDCalligraphyStroke *)v4 initWithColor:color width:v8 cap:join join:pattern pattern:v7 miterLimit:v11];
}

- (CGRect)p_superBoundsForPath:(id)path
{
  v7.receiver = self;
  v7.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v7 boundsForPath:path];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)boundsForPath:(id)path
{
  v4 = [(TSDCalligraphyStroke *)self mutableCopy];
  [v4 setCap:2];
  [v4 setJoin:1];

  [v4 p_superBoundsForPath:path];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGAffineTransform)transformInContext:(SEL)context
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

- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke
{
  v5.receiver = self;
  v5.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v5 applyToContext:context insideStroke:stroke];
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  strokeCopy = stroke;
  if ([(TSDStroke *)self shouldRender:path])
  {
    memset(&v16, 0, sizeof(v16));
    if (self)
    {
      [(TSDCalligraphyStroke *)self transformInContext:context];
    }

    transform = v16;
    v12 = TSDCreateTransformedPath(path, &transform);
    CGContextSaveGState(context);
    [(TSDCalligraphyStroke *)self applyToContext:context insideStroke:strokeCopy];
    v14 = v16;
    CGAffineTransformInvert(&transform, &v14);
    CGContextConcatCTM(context, &transform);
    if ([(TSDCalligraphyStroke *)self chisel])
    {
      v13 = [TSDBezierPath bezierPathWithCGPath:v12];
      [(TSDStroke *)self width];
      [(TSDBezierPath *)v13 setLineWidth:?];
      CGContextAddPath(context, [-[TSDBezierPath chisel](v13 "chisel")]);
      CGContextSetFillColorWithColor(context, [(TSUColor *)[(TSDStroke *)self color] CGColor]);
      CGContextFillPath(context);
    }

    else
    {
      CGContextAddPath(context, v12);
      CGContextStrokePath(context);
    }

    CGPathRelease(v12);
    CGContextRestoreGState(context);
  }
}

- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  y = point.y;
  x = point.x;
  CGContextSaveGState(context);
  [(TSDCalligraphyStroke *)self applyToContext:context insideStroke:0];
  memset(&v25, 0, sizeof(v25));
  if (self)
  {
    [(TSDCalligraphyStroke *)self transformInContext:context];
  }

  v23 = v25;
  CGAffineTransformInvert(&transform, &v23);
  CGContextConcatCTM(context, &transform);
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeTranslation(&transform, x, y);
  t1 = transform;
  CGAffineTransformScale(&v23, &t1, scale, scale);
  transform = v23;
  t1 = v23;
  CGAffineTransformRotate(&v23, &t1, angle);
  transform = v23;
  t1 = v23;
  [end endPoint];
  v16 = -v15;
  [end endPoint];
  CGAffineTransformTranslate(&v23, &t1, v16, -v17);
  transform = v23;
  path = [end path];
  t1 = transform;
  v21 = v25;
  CGAffineTransformConcat(&v23, &t1, &v21);
  v19 = TSDCreateTransformedPath(path, &v23);
  CGContextAddPath(context, v19);
  CGPathRelease(v19);
  if ([end isFilled])
  {
    CGContextFillPath(context);
  }

  else
  {
    [(TSDStroke *)self width];
    CGContextSetLineWidth(context, v20);
    CGContextSetLineJoin(context, [end lineJoin]);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform
{
  v9 = *&transform->c;
  v27[0] = *&transform->a;
  v27[1] = v9;
  v27[2] = *&transform->tx;
  v26.receiver = self;
  v26.super_class = TSDCalligraphyStroke;
  [(TSDStroke *)&v26 boundsForLineEnd:end atPoint:v27 atAngle:point.x withScale:point.y transform:angle, scale];
  x = v10;
  y = v12;
  width = v14;
  height = v16;
  if (([end isFilled] & 1) == 0)
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
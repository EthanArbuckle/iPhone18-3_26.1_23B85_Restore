@interface TSDLineEnd
+ (id)filledArrow;
+ (id)filledCircle;
+ (id)filledDiamond;
+ (id)filledSquare;
+ (id)invertedArrow;
+ (id)line;
+ (id)lineEndWithIdentifier:(id)a3;
+ (id)lineEndWithPath:(CGPath *)a3 endPoint:(CGPoint)a4 isFilled:(BOOL)a5 identifier:(id)a6;
+ (id)lineEndWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7;
+ (id)lineEndWithType:(int)a3;
+ (id)openArrow;
+ (id)openCircle;
+ (id)openSquare;
+ (id)simpleArrow;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNone;
- (CGImage)newLineEndImageOnRight:(BOOL)a3 forContentsScale:(double)a4 withSize:(CGSize)a5;
- (CGPath)wrapPath;
- (CGPoint)endPoint;
- (TSDLineEnd)initWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7 lineJoin:(int)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation TSDLineEnd

+ (id)simpleArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 6.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  CGPathCloseSubpath(Mutable);
  v3 = [TSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"simple arrow" identifier:3.0, 0.0];
  CGPathRelease(Mutable);
  return v3;
}

+ (id)filledCircle
{
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 6.0;
  v10.size.height = 6.0;
  v11 = CGRectInset(v10, 0.5, 0.5);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  Mutable = CGPathCreateMutable();
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPathAddEllipseInRect(Mutable, 0, v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = [TSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled circle" identifier:MidX, CGRectGetMinY(v14)];
  CGPathRelease(Mutable);
  return v8;
}

+ (id)filledDiamond
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 3.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 0.0, 3.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 6.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 3.0);
  CGPathCloseSubpath(Mutable);
  v3 = [TSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled diamond" identifier:3.0, 0.331400007];
  CGPathRelease(Mutable);
  return v3;
}

+ (id)openArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 5.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  CGPathMoveToPoint(Mutable, 0, 3.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 5.0);
  v3 = [[TSDLineEnd alloc] initWithPath:Mutable wrapPath:0 endPoint:0 isFilled:@"open arrow" identifier:1 lineJoin:3.0, 0.0];
  CGPathRelease(Mutable);
  return v3;
}

+ (id)filledArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 6.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 1.5);
  CGPathCloseSubpath(Mutable);
  v3 = [TSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled arrow" identifier:3.0, 1.5];
  CGPathRelease(Mutable);
  return v3;
}

+ (id)filledSquare
{
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 6.0;
  v10.size.height = 6.0;
  v11 = CGRectInset(v10, 0.5, 0.5);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  Mutable = CGPathCreateMutable();
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPathAddRect(Mutable, 0, v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = [TSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"filled square" identifier:MidX, CGRectGetMinY(v14)];
  CGPathRelease(Mutable);
  return v8;
}

+ (id)openSquare
{
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 6.0;
  v10.size.height = 6.0;
  v11 = CGRectInset(v10, 1.0, 1.0);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  Mutable = CGPathCreateMutable();
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPathAddRect(Mutable, 0, v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = [TSDLineEnd lineEndWithPath:Mutable endPoint:0 isFilled:@"open square" identifier:MidX, CGRectGetMinY(v14) + -0.800000012];
  CGPathRelease(Mutable);
  return v8;
}

+ (id)openCircle
{
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 6.0;
  v10.size.height = 6.0;
  v11 = CGRectInset(v10, 0.5, 0.5);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  Mutable = CGPathCreateMutable();
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPathAddEllipseInRect(Mutable, 0, v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = [TSDLineEnd lineEndWithPath:Mutable endPoint:0 isFilled:@"open circle" identifier:MidX, CGRectGetMinY(v14) + -0.800000012];
  CGPathRelease(Mutable);
  return v8;
}

+ (id)invertedArrow
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 3.0);
  CGPathAddLineToPoint(Mutable, 0, 3.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 3.0);
  CGPathCloseSubpath(Mutable);
  v3 = [TSDLineEnd lineEndWithPath:Mutable endPoint:1 isFilled:@"inverted arrow" identifier:3.0, 0.331400007];
  CGPathRelease(Mutable);
  return v3;
}

+ (id)line
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 6.0, 0.0);
  v3 = [TSDLineEnd lineEndWithPath:Mutable endPoint:0 isFilled:@"line" identifier:3.0, -0.800000012];
  CGPathRelease(Mutable);
  return v3;
}

+ (id)lineEndWithType:(int)a3
{
  if (a3 > 4)
  {
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        return +[TSDLineEnd filledSquare];
      }

      if (a3 == 6)
      {
        return +[TSDLineEnd openSquare];
      }

      return +[TSDLineEnd openCircle];
    }

    switch(a3)
    {
      case 8:
        return +[TSDLineEnd invertedArrow];
      case 9:
        return +[TSDLineEnd line];
      case 10:
        return +[TSDLineEnd none];
    }

    return 0;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      return +[TSDLineEnd simpleArrow];
    }

    if (a3 == 1)
    {
      return +[TSDLineEnd filledCircle];
    }

    return 0;
  }

  if (a3 == 2)
  {
    return +[TSDLineEnd filledDiamond];
  }

  if (a3 == 3)
  {
    return +[TSDLineEnd openArrow];
  }

  return +[TSDLineEnd filledArrow];
}

+ (id)lineEndWithIdentifier:(id)a3
{
  if ([a3 isEqualToString:@"simple arrow"])
  {

    return +[TSDLineEnd simpleArrow];
  }

  else if ([a3 isEqualToString:@"filled circle"])
  {

    return +[TSDLineEnd filledCircle];
  }

  else if ([a3 isEqualToString:@"filled diamond"])
  {

    return +[TSDLineEnd filledDiamond];
  }

  else if ([a3 isEqualToString:@"open arrow"])
  {

    return +[TSDLineEnd openArrow];
  }

  else if ([a3 isEqualToString:@"filled arrow"])
  {

    return +[TSDLineEnd filledArrow];
  }

  else if ([a3 isEqualToString:@"filled square"])
  {

    return +[TSDLineEnd filledSquare];
  }

  else if ([a3 isEqualToString:@"open square"])
  {

    return +[TSDLineEnd openSquare];
  }

  else if ([a3 isEqualToString:@"open circle"])
  {

    return +[TSDLineEnd openCircle];
  }

  else if ([a3 isEqualToString:@"inverted arrow"])
  {

    return +[TSDLineEnd invertedArrow];
  }

  else if ([a3 isEqualToString:@"line"])
  {

    return +[TSDLineEnd line];
  }

  else if ([a3 isEqualToString:@"none"])
  {

    return +[TSDLineEnd none];
  }

  else
  {
    return 0;
  }
}

+ (id)lineEndWithPath:(CGPath *)a3 endPoint:(CGPoint)a4 isFilled:(BOOL)a5 identifier:(id)a6
{
  v6 = [objc_alloc(objc_opt_class()) initWithPath:a3 endPoint:a5 isFilled:a6 identifier:{a4.x, a4.y}];

  return v6;
}

+ (id)lineEndWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7
{
  v7 = [objc_alloc(objc_opt_class()) initWithPath:a3 wrapPath:a4 endPoint:a6 isFilled:a7 identifier:0 lineJoin:{a5.x, a5.y}];

  return v7;
}

- (TSDLineEnd)initWithPath:(CGPath *)a3 wrapPath:(CGPath *)a4 endPoint:(CGPoint)a5 isFilled:(BOOL)a6 identifier:(id)a7 lineJoin:(int)a8
{
  y = a5.y;
  x = a5.x;
  v17.receiver = self;
  v17.super_class = TSDLineEnd;
  v15 = [(TSDLineEnd *)&v17 init];
  if (v15)
  {
    v15->mIdentifier = [a7 copy];
    v15->mLineJoin = a8;
    v15->mPath = CGPathCreateMutableCopy(a3);
    v15->mWrapPath = CGPathCreateMutableCopy(a4);
    v15->mEndPoint.x = x;
    v15->mEndPoint.y = y;
    v15->mIsFilled = a6;
  }

  return v15;
}

- (void)dealloc
{
  CGPathRelease(self->mPath);
  CGPathRelease(self->mWrapPath);

  v3.receiver = self;
  v3.super_class = TSDLineEnd;
  [(TSDLineEnd *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      mIdentifier = self->mIdentifier;
      v7 = [a3 identifier];

      LOBYTE(v5) = [(NSString *)mIdentifier isEqualToString:v7];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  mPath = self->mPath;
  mWrapPath = self->mWrapPath;
  mIsFilled = self->mIsFilled;
  mIdentifier = self->mIdentifier;
  mLineJoin = self->mLineJoin;
  x = self->mEndPoint.x;
  y = self->mEndPoint.y;

  return [v4 initWithPath:mPath wrapPath:mWrapPath endPoint:mIsFilled isFilled:mIdentifier identifier:mLineJoin lineJoin:{x, y}];
}

- (CGImage)newLineEndImageOnRight:(BOOL)a3 forContentsScale:(double)a4 withSize:(CGSize)a5
{
  width = a5.width;
  v7 = a3;
  v9 = TSDBitmapContextCreate(11, a5.width * a4);
  CGContextScaleCTM(v9, a4, a4);
  CGContextSetRGBFillColor(v9, 0.0, 0.0, 0.0, 1.0);
  CGContextSetRGBStrokeColor(v9, 0.0, 0.0, 0.0, 1.0);
  v10 = *MEMORY[0x277CBF2C0];
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v23.a = *MEMORY[0x277CBF2C0];
  *&v23.c = v11;
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  *&v23.tx = v12;
  v13 = -width;
  if (v7)
  {
    *&transform.a = v10;
    *&transform.c = v11;
    *&transform.tx = v12;
    CGAffineTransformScale(&v23, &transform, -1.0, 1.0);
    v21 = v23;
    CGAffineTransformTranslate(&transform, &v21, v13, 0.0);
    v23 = transform;
  }

  v21 = v23;
  CGAffineTransformTranslate(&transform, &v21, 3.0, 1.0);
  v23 = transform;
  if (![(TSDLineEnd *)self isFilled])
  {
    v21 = v23;
    CGAffineTransformTranslate(&transform, &v21, 0.5, 0.0);
    v23 = transform;
  }

  v21 = v23;
  CGAffineTransformScale(&transform, &v21, 1.5, 1.5);
  v23 = transform;
  BoundingBox = CGPathGetBoundingBox([(TSDLineEnd *)self path]);
  MaxY = CGRectGetMaxY(BoundingBox);
  v21 = v23;
  CGAffineTransformTranslate(&transform, &v21, MaxY, 0.0);
  v23 = transform;
  v21 = transform;
  CGAffineTransformRotate(&transform, &v21, 1.57079633);
  v23 = transform;
  CGContextConcatCTM(v9, &transform);
  CGContextSetLineJoin(v9, [(TSDLineEnd *)self lineJoin]);
  CGContextSetLineWidth(v9, 0.5);
  CGContextAddPath(v9, [(TSDLineEnd *)self path]);
  if ([(TSDLineEnd *)self isFilled])
  {
    CGContextFillPath(v9);
  }

  else
  {
    CGContextStrokePath(v9);
  }

  [(TSDLineEnd *)self endPoint];
  v16 = v15;
  [(TSDLineEnd *)self endPoint];
  CGContextMoveToPoint(v9, v16, v17 + 1.0);
  [(TSDLineEnd *)self endPoint];
  CGContextAddLineToPoint(v9, v18, v13);
  CGContextStrokePath(v9);
  Image = CGBitmapContextCreateImage(v9);
  CGContextRelease(v9);
  return Image;
}

- (CGPath)wrapPath
{
  result = self->mWrapPath;
  if (!result)
  {
    return self->mPath;
  }

  return result;
}

- (BOOL)isNone
{
  v2 = [(TSDLineEnd *)self identifier];

  return [(NSString *)v2 isEqualToString:@"none"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p %@>", NSStringFromClass(v4), self, -[TSDLineEnd identifier](self, "identifier")];
}

- (CGPoint)endPoint
{
  x = self->mEndPoint.x;
  y = self->mEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
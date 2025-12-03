@interface TSDLineEnd
+ (id)filledArrow;
+ (id)filledCircle;
+ (id)filledDiamond;
+ (id)filledSquare;
+ (id)invertedArrow;
+ (id)line;
+ (id)lineEndWithIdentifier:(id)identifier;
+ (id)lineEndWithPath:(CGPath *)path endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier;
+ (id)lineEndWithPath:(CGPath *)path wrapPath:(CGPath *)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier;
+ (id)lineEndWithType:(int)type;
+ (id)openArrow;
+ (id)openCircle;
+ (id)openSquare;
+ (id)simpleArrow;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNone;
- (CGImage)newLineEndImageOnRight:(BOOL)right forContentsScale:(double)scale withSize:(CGSize)size;
- (CGPath)wrapPath;
- (CGPoint)endPoint;
- (TSDLineEnd)initWithPath:(CGPath *)path wrapPath:(CGPath *)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier lineJoin:(int)join;
- (id)copyWithZone:(_NSZone *)zone;
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

+ (id)lineEndWithType:(int)type
{
  if (type > 4)
  {
    if (type <= 7)
    {
      if (type == 5)
      {
        return +[TSDLineEnd filledSquare];
      }

      if (type == 6)
      {
        return +[TSDLineEnd openSquare];
      }

      return +[TSDLineEnd openCircle];
    }

    switch(type)
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

  if (type <= 1)
  {
    if (!type)
    {
      return +[TSDLineEnd simpleArrow];
    }

    if (type == 1)
    {
      return +[TSDLineEnd filledCircle];
    }

    return 0;
  }

  if (type == 2)
  {
    return +[TSDLineEnd filledDiamond];
  }

  if (type == 3)
  {
    return +[TSDLineEnd openArrow];
  }

  return +[TSDLineEnd filledArrow];
}

+ (id)lineEndWithIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"simple arrow"])
  {

    return +[TSDLineEnd simpleArrow];
  }

  else if ([identifier isEqualToString:@"filled circle"])
  {

    return +[TSDLineEnd filledCircle];
  }

  else if ([identifier isEqualToString:@"filled diamond"])
  {

    return +[TSDLineEnd filledDiamond];
  }

  else if ([identifier isEqualToString:@"open arrow"])
  {

    return +[TSDLineEnd openArrow];
  }

  else if ([identifier isEqualToString:@"filled arrow"])
  {

    return +[TSDLineEnd filledArrow];
  }

  else if ([identifier isEqualToString:@"filled square"])
  {

    return +[TSDLineEnd filledSquare];
  }

  else if ([identifier isEqualToString:@"open square"])
  {

    return +[TSDLineEnd openSquare];
  }

  else if ([identifier isEqualToString:@"open circle"])
  {

    return +[TSDLineEnd openCircle];
  }

  else if ([identifier isEqualToString:@"inverted arrow"])
  {

    return +[TSDLineEnd invertedArrow];
  }

  else if ([identifier isEqualToString:@"line"])
  {

    return +[TSDLineEnd line];
  }

  else if ([identifier isEqualToString:@"none"])
  {

    return +[TSDLineEnd none];
  }

  else
  {
    return 0;
  }
}

+ (id)lineEndWithPath:(CGPath *)path endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier
{
  v6 = [objc_alloc(objc_opt_class()) initWithPath:path endPoint:filled isFilled:identifier identifier:{point.x, point.y}];

  return v6;
}

+ (id)lineEndWithPath:(CGPath *)path wrapPath:(CGPath *)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier
{
  v7 = [objc_alloc(objc_opt_class()) initWithPath:path wrapPath:wrapPath endPoint:filled isFilled:identifier identifier:0 lineJoin:{point.x, point.y}];

  return v7;
}

- (TSDLineEnd)initWithPath:(CGPath *)path wrapPath:(CGPath *)wrapPath endPoint:(CGPoint)point isFilled:(BOOL)filled identifier:(id)identifier lineJoin:(int)join
{
  y = point.y;
  x = point.x;
  v17.receiver = self;
  v17.super_class = TSDLineEnd;
  v15 = [(TSDLineEnd *)&v17 init];
  if (v15)
  {
    v15->mIdentifier = [identifier copy];
    v15->mLineJoin = join;
    v15->mPath = CGPathCreateMutableCopy(path);
    v15->mWrapPath = CGPathCreateMutableCopy(wrapPath);
    v15->mEndPoint.x = x;
    v15->mEndPoint.y = y;
    v15->mIsFilled = filled;
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      mIdentifier = self->mIdentifier;
      identifier = [equal identifier];

      LOBYTE(v5) = [(NSString *)mIdentifier isEqualToString:identifier];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mPath = self->mPath;
  mWrapPath = self->mWrapPath;
  mIsFilled = self->mIsFilled;
  mIdentifier = self->mIdentifier;
  mLineJoin = self->mLineJoin;
  x = self->mEndPoint.x;
  y = self->mEndPoint.y;

  return [v4 initWithPath:mPath wrapPath:mWrapPath endPoint:mIsFilled isFilled:mIdentifier identifier:mLineJoin lineJoin:{x, y}];
}

- (CGImage)newLineEndImageOnRight:(BOOL)right forContentsScale:(double)scale withSize:(CGSize)size
{
  width = size.width;
  rightCopy = right;
  v9 = TSDBitmapContextCreate(11, size.width * scale);
  CGContextScaleCTM(v9, scale, scale);
  CGContextSetRGBFillColor(v9, 0.0, 0.0, 0.0, 1.0);
  CGContextSetRGBStrokeColor(v9, 0.0, 0.0, 0.0, 1.0);
  v10 = *MEMORY[0x277CBF2C0];
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v23.a = *MEMORY[0x277CBF2C0];
  *&v23.c = v11;
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  *&v23.tx = v12;
  v13 = -width;
  if (rightCopy)
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
  identifier = [(TSDLineEnd *)self identifier];

  return [(NSString *)identifier isEqualToString:@"none"];
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
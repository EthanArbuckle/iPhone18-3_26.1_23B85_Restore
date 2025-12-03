@interface EQKitRule
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (EQKitRule)initWithHeight:(double)height depth:(double)depth width:(double)width cgColor:(CGColor *)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitRule

- (EQKitRule)initWithHeight:(double)height depth:(double)depth width:(double)width cgColor:(CGColor *)color
{
  v14.receiver = self;
  v14.super_class = EQKitRule;
  v10 = [(EQKitRule *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->mHeight = height;
    v10->mDepth = depth;
    v10->mWidth = width;
    if (color)
    {
      v12 = CFRetain(color);
    }

    else
    {
      v12 = 0;
    }

    v11->mCGColor = v12;
  }

  return v11;
}

- (void)dealloc
{
  CGColorRelease(self->mCGColor);
  v3.receiver = self;
  v3.super_class = EQKitRule;
  [(EQKitRule *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(EQKitRule *)self height];
  v6 = v5;
  [(EQKitRule *)self depth];
  v8 = v7;
  [(EQKitRule *)self width];
  mCGColor = self->mCGColor;

  return [v4 initWithHeight:mCGColor depth:v6 width:v8 cgColor:v9];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if (!equal)
  {
    goto LABEL_10;
  }

  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  [(EQKitRule *)self height];
  v7 = v6;
  [equal height];
  if (v7 != v8 || (-[EQKitRule depth](self, "depth"), v10 = v9, [equal depth], v10 != v11) || (-[EQKitRule width](self, "width"), v13 = v12, objc_msgSend(equal, "width"), v13 != v14))
  {
LABEL_10:
    LOBYTE(v5) = 0;
    return v5;
  }

  color = [(EQKitRule *)self color];
  color2 = [equal color];

  LOBYTE(v5) = CGColorEqualToColor(color, color2);
  return v5;
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  if (context)
  {
    y = offset.y;
    x = offset.x;
    [(EQKitRule *)self width];
    v9 = v8;
    [(EQKitBox *)self vsize];
    if (v9 > 0.0)
    {
      v11 = v10;
      if (v10 > 0.0)
      {
        if (self->mCGColor)
        {
          CGContextSaveGState(context);
          CGContextSetFillColorWithColor(context, self->mCGColor);
        }

        [(EQKitRule *)self height];
        v13 = y - v12;
        v14 = x + v9;
        v15 = -v9;
        if (v9 >= 0.0)
        {
          v15 = v9;
          v14 = x;
        }

        v16 = -v11;
        if (v11 < 0.0)
        {
          v13 = v11 + v13;
        }

        else
        {
          v16 = v11;
        }

        CGContextFillRect(context, *&v14);
        if (self->mCGColor)
        {

          CGContextRestoreGState(context);
        }
      }
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  v4 = *(spec + 6);
  if (v4 == 2)
  {
    offset.x = offset.x + self->mWidth;
  }

  else if (v4)
  {
    return 1;
  }

  EQKit::OpticalKern::Spec::appendEntry(spec, offset, self->mHeight);
  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitRule *)self height];
  v6 = v5;
  [(EQKitRule *)self depth];
  v8 = v7;
  [(EQKitRule *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f", v4, self, v6, v8, v9];
}

@end
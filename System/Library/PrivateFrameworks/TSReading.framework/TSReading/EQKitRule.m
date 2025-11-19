@interface EQKitRule
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (EQKitRule)initWithHeight:(double)a3 depth:(double)a4 width:(double)a5 cgColor:(CGColor *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4;
@end

@implementation EQKitRule

- (EQKitRule)initWithHeight:(double)a3 depth:(double)a4 width:(double)a5 cgColor:(CGColor *)a6
{
  v14.receiver = self;
  v14.super_class = EQKitRule;
  v10 = [(EQKitRule *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->mHeight = a3;
    v10->mDepth = a4;
    v10->mWidth = a5;
    if (a6)
    {
      v12 = CFRetain(a6);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(EQKitRule *)self height];
  v6 = v5;
  [(EQKitRule *)self depth];
  v8 = v7;
  [(EQKitRule *)self width];
  mCGColor = self->mCGColor;

  return [v4 initWithHeight:mCGColor depth:v6 width:v8 cgColor:v9];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  [(EQKitRule *)self height];
  v7 = v6;
  [a3 height];
  if (v7 != v8 || (-[EQKitRule depth](self, "depth"), v10 = v9, [a3 depth], v10 != v11) || (-[EQKitRule width](self, "width"), v13 = v12, objc_msgSend(a3, "width"), v13 != v14))
  {
LABEL_10:
    LOBYTE(v5) = 0;
    return v5;
  }

  v15 = [(EQKitRule *)self color];
  v16 = [a3 color];

  LOBYTE(v5) = CGColorEqualToColor(v15, v16);
  return v5;
}

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  if (a3)
  {
    y = a4.y;
    x = a4.x;
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
          CGContextSaveGState(a3);
          CGContextSetFillColorWithColor(a3, self->mCGColor);
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

        CGContextFillRect(a3, *&v14);
        if (self->mCGColor)
        {

          CGContextRestoreGState(a3);
        }
      }
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  v4 = *(a3 + 6);
  if (v4 == 2)
  {
    a4.x = a4.x + self->mWidth;
  }

  else if (v4)
  {
    return 1;
  }

  EQKit::OpticalKern::Spec::appendEntry(a3, a4, self->mHeight);
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
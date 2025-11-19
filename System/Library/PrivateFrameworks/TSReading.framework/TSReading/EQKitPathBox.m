@interface EQKitPathBox
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (CGRect)erasableBounds;
- (CGRect)p_cacheErasableBounds;
- (EQKitPathBox)initWithCGPath:(CGPath *)a3 height:(double)a4 paddingLeft:(double)a5 paddingRight:(double)a6 cgColor:(CGColor *)a7 drawingMode:(int)a8 lineWidth:(double)a9;
- (double)depth;
- (double)width;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)p_cacheDimensions;
- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4;
@end

@implementation EQKitPathBox

- (EQKitPathBox)initWithCGPath:(CGPath *)a3 height:(double)a4 paddingLeft:(double)a5 paddingRight:(double)a6 cgColor:(CGColor *)a7 drawingMode:(int)a8 lineWidth:(double)a9
{
  v20.receiver = self;
  v20.super_class = EQKitPathBox;
  v16 = [(EQKitPathBox *)&v20 init];
  if (v16)
  {
    if (a3)
    {
      MutableCopy = CGPathCreateMutableCopy(a3);
    }

    else
    {
      MutableCopy = 0;
    }

    v16->mCGPath = MutableCopy;
    v16->mHeight = a4;
    v16->mPaddingLeft = a5;
    v16->mPaddingRight = a6;
    if (a7)
    {
      v18 = CFRetain(a7);
    }

    else
    {
      v18 = 0;
    }

    v16->mCGColor = v18;
    v16->mDrawingMode = a8;
    v16->mLineWidth = a9;
  }

  return v16;
}

- (void)dealloc
{
  CGPathRelease(self->mCGPath);
  CGColorRelease(self->mCGColor);
  v3.receiver = self;
  v3.super_class = EQKitPathBox;
  [(EQKitPathBox *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitPathBox *)self cgPath];
  [(EQKitPathBox *)self height];
  v7 = v6;
  [(EQKitPathBox *)self paddingLeft];
  v9 = v8;
  [(EQKitPathBox *)self paddingRight];
  v11 = v10;
  v12 = [(EQKitPathBox *)self color];
  v13 = [(EQKitPathBox *)self drawingMode];
  [(EQKitPathBox *)self lineWidth];

  return [v4 initWithCGPath:v5 height:v12 paddingLeft:v13 paddingRight:v7 cgColor:v9 drawingMode:v11 lineWidth:v14];
}

- (BOOL)isEqual:(id)a3
{
  v3 = self;
  v4 = self == a3;
  LOBYTE(self) = self == a3;
  if (a3)
  {
    if (!v4)
    {
      LODWORD(self) = [a3 isMemberOfClass:objc_opt_class()];
      if (self)
      {
        [(EQKitPathBox *)v3 height];
        v7 = v6;
        [a3 height];
        if (v7 != v8)
        {
          goto LABEL_16;
        }

        [(EQKitPathBox *)v3 paddingLeft];
        v10 = v9;
        [a3 paddingLeft];
        if (v10 != v11)
        {
          goto LABEL_16;
        }

        [(EQKitPathBox *)v3 paddingRight];
        v13 = v12;
        [a3 paddingRight];
        if (v13 != v14)
        {
          goto LABEL_16;
        }

        LODWORD(self) = CGColorEqualToColor(-[EQKitPathBox color](v3, "color"), [a3 color]);
        if (!self)
        {
          return self;
        }

        v15 = [(EQKitPathBox *)v3 drawingMode];
        if (v15 != [a3 drawingMode] || (-[EQKitPathBox lineWidth](v3, "lineWidth"), v17 = v16, objc_msgSend(a3, "lineWidth"), v17 != v18))
        {
LABEL_16:
          LOBYTE(self) = 0;
          return self;
        }

        v19 = [(EQKitPathBox *)v3 cgPath];
        self = [a3 cgPath];
        if (v19 == self)
        {
          LOBYTE(self) = 1;
        }

        else
        {
          v20 = self;
          LOBYTE(self) = 0;
          if (v19 && v20)
          {

            LOBYTE(self) = CGPathEqualToPath(v19, v20);
          }
        }
      }
    }
  }

  return self;
}

- (double)depth
{
  if (!self->mDimensionsValid)
  {
    [(EQKitPathBox *)self p_cacheDimensions];
    self->mDimensionsValid = 1;
  }

  return self->mDepth;
}

- (double)width
{
  if (!self->mDimensionsValid)
  {
    [(EQKitPathBox *)self p_cacheDimensions];
    self->mDimensionsValid = 1;
  }

  return self->mWidth;
}

- (CGRect)erasableBounds
{
  if (self->mErasableBoundsValid)
  {
    x = self->mErasableBounds.origin.x;
    y = self->mErasableBounds.origin.y;
    width = self->mErasableBounds.size.width;
    height = self->mErasableBounds.size.height;
  }

  else
  {
    [(EQKitPathBox *)self p_cacheErasableBounds];
    self->mErasableBounds.origin.x = x;
    self->mErasableBounds.origin.y = y;
    self->mErasableBounds.size.width = width;
    self->mErasableBounds.size.height = height;
    self->mErasableBoundsValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  if (a3 && self->mCGPath)
  {
    y = a4.y;
    x = a4.x;
    CGContextSaveGState(a3);
    CGContextTranslateCTM(a3, x + self->mPaddingLeft, y - self->mHeight);
    CGContextAddPath(a3, self->mCGPath);
    mCGColor = self->mCGColor;
    if (mCGColor)
    {
      CGContextSetFillColorWithColor(a3, mCGColor);
      CGContextSetStrokeColorWithColor(a3, self->mCGColor);
    }

    CGContextSetLineWidth(a3, self->mLineWidth);
    CGContextDrawPath(a3, self->mDrawingMode);

    CGContextRestoreGState(a3);
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  mCGPath = self->mCGPath;
  if (mCGPath)
  {
    v6.x = a4.x + self->mPaddingLeft;
    v6.y = a4.y - self->mHeight;
    EQKit::OpticalKern::Spec::appendEntry(a3, v6, mCGPath);
  }

  return mCGPath != 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitPathBox *)self height];
  v6 = v5;
  [(EQKitPathBox *)self depth];
  v8 = v7;
  [(EQKitPathBox *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f", v4, self, v6, v8, v9];
}

- (void)p_cacheDimensions
{
  self->mDepth = 0.0;
  self->mWidth = 0.0;
  mCGPath = self->mCGPath;
  if (mCGPath)
  {
    PathBoundingBox = CGPathGetPathBoundingBox(mCGPath);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if (!CGRectIsEmpty(PathBoundingBox))
    {
      v11.origin.x = x;
      v11.origin.y = y;
      v11.size.width = width;
      v11.size.height = height;
      v8 = CGRectGetHeight(v11);
      [(EQKitPathBox *)self height];
      self->mDepth = v8 - v9;
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      self->mWidth = CGRectGetWidth(v12) + self->mPaddingLeft + self->mPaddingRight;
    }
  }
}

- (CGRect)p_cacheErasableBounds
{
  v4 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  mCGPath = self->mCGPath;
  if (mCGPath)
  {
    PathBoundingBox = CGPathGetPathBoundingBox(mCGPath);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if (!CGRectIsEmpty(PathBoundingBox))
    {
      [(EQKitPathBox *)self height];
      v3 = y - v12;
      v4 = x + self->mPaddingLeft;
      v5 = width;
      v6 = height;
    }
  }

  v13 = v4;
  v14 = v3;
  v15 = v5;
  v16 = v6;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end
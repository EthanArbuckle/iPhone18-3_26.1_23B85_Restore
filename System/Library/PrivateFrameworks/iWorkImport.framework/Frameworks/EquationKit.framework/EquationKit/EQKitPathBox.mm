@interface EQKitPathBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (CGRect)erasableBounds;
- (CGRect)p_cacheErasableBounds;
- (EQKitPathBox)initWithCGPath:(CGPath *)path height:(double)height paddingLeft:(double)left paddingRight:(double)right cgColor:(CGColor *)color drawingMode:(int)mode lineWidth:(double)width;
- (double)depth;
- (double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_cacheDimensions;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitPathBox

- (EQKitPathBox)initWithCGPath:(CGPath *)path height:(double)height paddingLeft:(double)left paddingRight:(double)right cgColor:(CGColor *)color drawingMode:(int)mode lineWidth:(double)width
{
  v20.receiver = self;
  v20.super_class = EQKitPathBox;
  v16 = [(EQKitPathBox *)&v20 init];
  if (v16)
  {
    if (path)
    {
      v17 = MEMORY[0x277C8C900](path);
    }

    else
    {
      v17 = 0;
    }

    v16->mCGPath = v17;
    v16->mHeight = height;
    v16->mPaddingLeft = left;
    v16->mPaddingRight = right;
    if (color)
    {
      v18 = CFRetain(color);
    }

    else
    {
      v18 = 0;
    }

    v16->mCGColor = v18;
    v16->mDrawingMode = mode;
    v16->mLineWidth = width;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_cgPath(self, v9, v10, v11);
  objc_msgSend_height(self, v13, v14, v15);
  objc_msgSend_paddingLeft(self, v16, v17, v18);
  objc_msgSend_paddingRight(self, v19, v20, v21);
  v25 = objc_msgSend_color(self, v22, v23, v24);
  objc_msgSend_drawingMode(self, v26, v27, v28);
  objc_msgSend_lineWidth(self, v29, v30, v31);

  return MEMORY[0x2821F9670](v8, sel_initWithCGPath_height_paddingLeft_paddingRight_cgColor_drawingMode_lineWidth_, v12, v25);
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  v4 = self == equal;
  LOBYTE(self) = self == equal;
  if (equal)
  {
    if (!v4)
    {
      v6 = objc_opt_class();
      LODWORD(self) = objc_msgSend_isMemberOfClass_(equal, v7, v6, v8);
      if (self)
      {
        objc_msgSend_height(selfCopy, v9, v10, v11);
        v13 = v12;
        objc_msgSend_height(equal, v14, v15, v16);
        if (v13 != v20)
        {
          goto LABEL_16;
        }

        objc_msgSend_paddingLeft(selfCopy, v17, v18, v19);
        v22 = v21;
        objc_msgSend_paddingLeft(equal, v23, v24, v25);
        if (v22 != v29)
        {
          goto LABEL_16;
        }

        objc_msgSend_paddingRight(selfCopy, v26, v27, v28);
        v31 = v30;
        objc_msgSend_paddingRight(equal, v32, v33, v34);
        if (v31 != v38)
        {
          goto LABEL_16;
        }

        v39 = objc_msgSend_color(selfCopy, v35, v36, v37);
        v43 = objc_msgSend_color(equal, v40, v41, v42);
        LODWORD(self) = CGColorEqualToColor(v39, v43);
        if (!self)
        {
          return self;
        }

        v47 = objc_msgSend_drawingMode(selfCopy, v44, v45, v46);
        if (v47 != objc_msgSend_drawingMode(equal, v48, v49, v50) || (objc_msgSend_lineWidth(selfCopy, v51, v52, v53), v55 = v54, objc_msgSend_lineWidth(equal, v56, v57, v58), v55 != v62))
        {
LABEL_16:
          LOBYTE(self) = 0;
          return self;
        }

        v63 = objc_msgSend_cgPath(selfCopy, v59, v60, v61);
        self = objc_msgSend_cgPath(equal, v64, v65, v66);
        if (v63 == self)
        {
          LOBYTE(self) = 1;
        }

        else
        {
          selfCopy2 = self;
          LOBYTE(self) = 0;
          if (v63 && selfCopy2)
          {

            LOBYTE(self) = CGPathEqualToPath(v63, selfCopy2);
          }
        }
      }
    }
  }

  return self;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitPathBox;
  return [(EQKitBox *)&v3 hash];
}

- (double)depth
{
  if (!self->mDimensionsValid)
  {
    objc_msgSend_p_cacheDimensions(self, a2, v2, v3);
    self->mDimensionsValid = 1;
  }

  return self->mDepth;
}

- (double)width
{
  if (!self->mDimensionsValid)
  {
    objc_msgSend_p_cacheDimensions(self, a2, v2, v3);
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
    objc_msgSend_p_cacheErasableBounds(self, a2, v2, v3);
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

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  if (context && self->mCGPath)
  {
    y = offset.y;
    x = offset.x;
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, x + self->mPaddingLeft, y - self->mHeight);
    CGContextAddPath(context, self->mCGPath);
    mCGColor = self->mCGColor;
    if (mCGColor)
    {
      CGContextSetFillColorWithColor(context, mCGColor);
      CGContextSetStrokeColorWithColor(context, self->mCGColor);
    }

    CGContextSetLineWidth(context, self->mLineWidth);
    CGContextDrawPath(context, self->mDrawingMode);

    CGContextRestoreGState(context);
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  mCGPath = self->mCGPath;
  if (mCGPath)
  {
    sub_275CD836C(spec, mCGPath, offset.x + self->mPaddingLeft, offset.y - self->mHeight);
  }

  return mCGPath != 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objc_msgSend_height(self, v5, v6, v7);
  v9 = v8;
  objc_msgSend_depth(self, v10, v11, v12);
  v14 = v13;
  objc_msgSend_width(self, v15, v16, v17);
  return objc_msgSend_stringWithFormat_(v3, v18, @"<%@ %p>: height=%f depth=%f width=%f", v19, v4, self, v9, v14, v20);
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
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      v8 = CGRectGetHeight(v14);
      objc_msgSend_height(self, v9, v10, v11);
      self->mDepth = v8 - v12;
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      self->mWidth = CGRectGetWidth(v15) + self->mPaddingLeft + self->mPaddingRight;
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
      objc_msgSend_height(self, v12, v13, v14);
      v3 = y - v15;
      v4 = x + self->mPaddingLeft;
      v5 = width;
      v6 = height;
    }
  }

  v16 = v4;
  v17 = v3;
  v18 = v5;
  v19 = v6;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end
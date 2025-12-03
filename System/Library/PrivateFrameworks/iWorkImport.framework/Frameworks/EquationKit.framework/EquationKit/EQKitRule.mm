@interface EQKitRule
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (EQKitRule)initWithHeight:(double)height depth:(double)depth width:(double)width cgColor:(CGColor *)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
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
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  objc_msgSend_height(self, v9, v10, v11);
  v13 = v12;
  objc_msgSend_depth(self, v14, v15, v16);
  v18 = v17;
  objc_msgSend_width(self, v19, v20, v21);
  mCGColor = self->mCGColor;

  return objc_msgSend_initWithHeight_depth_width_cgColor_(v8, v22, mCGColor, v23, v13, v18, v24);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(isMemberOfClass) = 1;
    return isMemberOfClass;
  }

  if (!equal)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(equal, v6, v5, v7);
  if (!isMemberOfClass)
  {
    return isMemberOfClass;
  }

  objc_msgSend_height(self, v9, v10, v11);
  v13 = v12;
  objc_msgSend_height(equal, v14, v15, v16);
  if (v13 != v20 || (objc_msgSend_depth(self, v17, v18, v19), v22 = v21, objc_msgSend_depth(equal, v23, v24, v25), v22 != v29) || (objc_msgSend_width(self, v26, v27, v28), v31 = v30, objc_msgSend_width(equal, v32, v33, v34), v31 != v38))
  {
LABEL_10:
    LOBYTE(isMemberOfClass) = 0;
    return isMemberOfClass;
  }

  v39 = objc_msgSend_color(self, v35, v36, v37);
  v43 = objc_msgSend_color(equal, v40, v41, v42);

  LOBYTE(isMemberOfClass) = CGColorEqualToColor(v39, v43);
  return isMemberOfClass;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitRule;
  return [(EQKitBox *)&v3 hash];
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  if (context)
  {
    y = offset.y;
    x = offset.x;
    objc_msgSend_width(self, a2, context, v4);
    v10 = v9;
    objc_msgSend_vsize(self, v11, v12, v13);
    if (v10 > 0.0)
    {
      v18 = v17;
      if (v17 > 0.0)
      {
        if (self->mCGColor)
        {
          CGContextSaveGState(context);
          CGContextSetFillColorWithColor(context, self->mCGColor);
        }

        objc_msgSend_height(self, v14, v15, v16);
        v20 = y - v19;
        v21 = x + v10;
        v22 = -v10;
        if (v10 >= 0.0)
        {
          v22 = v10;
          v21 = x;
        }

        v23 = -v18;
        if (v18 < 0.0)
        {
          v20 = v18 + v20;
        }

        else
        {
          v23 = v18;
        }

        CGContextFillRect(context, *&v21);
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

  sub_275CD8470(spec, offset.x, offset.y, self->mHeight);
  return 1;
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

@end
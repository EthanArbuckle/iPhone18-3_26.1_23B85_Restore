@interface EQKitCompoundBox
- (BOOL)isEqual:(id)equal;
- (CGRect)erasableBounds;
- (CGRect)p_cacheErasableBounds;
- (EQKitCompoundBox)initWithChildBoxes:(id)boxes;
- (double)depth;
- (double)height;
- (double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
@end

@implementation EQKitCompoundBox

- (EQKitCompoundBox)initWithChildBoxes:(id)boxes
{
  v9.receiver = self;
  v9.super_class = EQKitCompoundBox;
  v7 = [(EQKitCompoundBox *)&v9 init];
  if (v7)
  {
    v7->mChildBoxes = objc_msgSend_copy(boxes, v4, v5, v6);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitCompoundBox;
  [(EQKitCompoundBox *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v13 = objc_msgSend_childBoxes(self, v9, v10, v11);

  return objc_msgSend_initWithChildBoxes_(v8, v12, v13, v14);
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
        v12 = objc_msgSend_childBoxes(selfCopy, v9, v10, v11);
        self = objc_msgSend_childBoxes(equal, v13, v14, v15);
        if (v12 == self)
        {
          LOBYTE(self) = 1;
        }

        else
        {
          selfCopy2 = self;
          LOBYTE(self) = 0;
          if (v12 && selfCopy2)
          {

            LOBYTE(self) = objc_msgSend_isEqual_(v12, v16, selfCopy2, v17);
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
  v3.super_class = EQKitCompoundBox;
  return [(EQKitBox *)&v3 hash];
}

- (double)height
{
  if (!self->mDimensionsValid)
  {
    objc_msgSend_p_cacheDimensionsForHeight_depth_width_(self, a2, &self->mHeight, &self->mDepth, &self->mWidth);
    self->mDimensionsValid = 1;
  }

  return self->mHeight;
}

- (double)depth
{
  if (!self->mDimensionsValid)
  {
    objc_msgSend_p_cacheDimensionsForHeight_depth_width_(self, a2, &self->mHeight, &self->mDepth, &self->mWidth);
    self->mDimensionsValid = 1;
  }

  return self->mDepth;
}

- (double)width
{
  if (!self->mDimensionsValid)
  {
    objc_msgSend_p_cacheDimensionsForHeight_depth_width_(self, a2, &self->mHeight, &self->mDepth, &self->mWidth);
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objc_msgSend_height(self, v5, v6, v7);
  v9 = v8;
  objc_msgSend_depth(self, v10, v11, v12);
  v14 = v13;
  objc_msgSend_width(self, v15, v16, v17);
  v19 = v18;
  v23 = objc_msgSend_childBoxes(self, v20, v21, v22);
  return objc_msgSend_stringWithFormat_(v3, v24, @"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@", v25, v4, self, v9, v14, v19, v23);
}

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  if (height)
  {
    *height = 0.0;
  }

  if (depth)
  {
    *depth = 0.0;
  }

  if (width)
  {
    *width = 0.0;
  }
}

- (CGRect)p_cacheErasableBounds
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end
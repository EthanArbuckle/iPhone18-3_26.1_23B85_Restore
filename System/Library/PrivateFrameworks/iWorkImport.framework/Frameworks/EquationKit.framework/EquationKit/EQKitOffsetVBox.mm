@interface EQKitOffsetVBox
- (BOOL)isEqual:(id)equal;
- (EQKitOffsetVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index offset:(double)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
@end

@implementation EQKitOffsetVBox

- (EQKitOffsetVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index offset:(double)offset
{
  v7.receiver = self;
  v7.super_class = EQKitOffsetVBox;
  result = [(EQKitVBox *)&v7 initWithChildBoxes:boxes pivotIndex:index];
  if (result)
  {
    result->mOffset = offset;
  }

  return result;
}

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  v8.receiver = self;
  v8.super_class = EQKitOffsetVBox;
  [(EQKitVBox *)&v8 p_cacheDimensionsForHeight:height depth:depth width:width];
  if (height)
  {
    *height = self->mOffset + *height;
  }

  if (depth)
  {
    *depth = *depth - self->mOffset;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_childBoxes(self, v9, v10, v11);
  v16 = objc_msgSend_pivotIndex(self, v13, v14, v15);
  objc_msgSend_offset(self, v17, v18, v19);

  return objc_msgSend_initWithChildBoxes_pivotIndex_offset_(v8, v20, v12, v16);
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
        v12 = objc_msgSend_pivotIndex(selfCopy, v9, v10, v11);
        if (v12 == objc_msgSend_pivotIndex(equal, v13, v14, v15) && (objc_msgSend_offset(selfCopy, v16, v17, v18), v20 = v19, objc_msgSend_offset(equal, v21, v22, v23), v20 == v27))
        {
          v28 = objc_msgSend_childBoxes(selfCopy, v24, v25, v26);
          self = objc_msgSend_childBoxes(equal, v29, v30, v31);
          if (v28 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            selfCopy2 = self;
            LOBYTE(self) = 0;
            if (v28 && selfCopy2)
            {

              LOBYTE(self) = objc_msgSend_isEqual_(v28, v32, selfCopy2, v33);
            }
          }
        }

        else
        {
          LOBYTE(self) = 0;
        }
      }
    }
  }

  return self;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitOffsetVBox;
  return [(EQKitVBox *)&v3 hash];
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
  v27 = objc_msgSend_pivotIndex(self, v24, v25, v26);
  objc_msgSend_offset(self, v28, v29, v30);
  return objc_msgSend_stringWithFormat_(v3, v31, @"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@ pivotIndex=%lu offset=%f", v32, v4, self, v9, v14, v19, v23, v27, v33);
}

@end
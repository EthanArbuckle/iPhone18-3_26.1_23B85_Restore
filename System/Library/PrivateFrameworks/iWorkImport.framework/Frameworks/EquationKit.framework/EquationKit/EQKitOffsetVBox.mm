@interface EQKitOffsetVBox
- (BOOL)isEqual:(id)a3;
- (EQKitOffsetVBox)initWithChildBoxes:(id)a3 pivotIndex:(unint64_t)a4 offset:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5;
@end

@implementation EQKitOffsetVBox

- (EQKitOffsetVBox)initWithChildBoxes:(id)a3 pivotIndex:(unint64_t)a4 offset:(double)a5
{
  v7.receiver = self;
  v7.super_class = EQKitOffsetVBox;
  result = [(EQKitVBox *)&v7 initWithChildBoxes:a3 pivotIndex:a4];
  if (result)
  {
    result->mOffset = a5;
  }

  return result;
}

- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5
{
  v8.receiver = self;
  v8.super_class = EQKitOffsetVBox;
  [(EQKitVBox *)&v8 p_cacheDimensionsForHeight:a3 depth:a4 width:a5];
  if (a3)
  {
    *a3 = self->mOffset + *a3;
  }

  if (a4)
  {
    *a4 = *a4 - self->mOffset;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, a3, v7);
  v12 = objc_msgSend_childBoxes(self, v9, v10, v11);
  v16 = objc_msgSend_pivotIndex(self, v13, v14, v15);
  objc_msgSend_offset(self, v17, v18, v19);

  return objc_msgSend_initWithChildBoxes_pivotIndex_offset_(v8, v20, v12, v16);
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
      v6 = objc_opt_class();
      LODWORD(self) = objc_msgSend_isMemberOfClass_(a3, v7, v6, v8);
      if (self)
      {
        v12 = objc_msgSend_pivotIndex(v3, v9, v10, v11);
        if (v12 == objc_msgSend_pivotIndex(a3, v13, v14, v15) && (objc_msgSend_offset(v3, v16, v17, v18), v20 = v19, objc_msgSend_offset(a3, v21, v22, v23), v20 == v27))
        {
          v28 = objc_msgSend_childBoxes(v3, v24, v25, v26);
          self = objc_msgSend_childBoxes(a3, v29, v30, v31);
          if (v28 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v34 = self;
            LOBYTE(self) = 0;
            if (v28 && v34)
            {

              LOBYTE(self) = objc_msgSend_isEqual_(v28, v32, v34, v33);
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
@interface EQKitHVSpace
- (BOOL)isEqual:(id)a3;
- (EQKitHVSpace)initWithWidth:(double)a3 height:(double)a4 depth:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation EQKitHVSpace

- (EQKitHVSpace)initWithWidth:(double)a3 height:(double)a4 depth:(double)a5
{
  v9.receiver = self;
  v9.super_class = EQKitHVSpace;
  result = [(EQKitHVSpace *)&v9 init];
  if (result)
  {
    result->mWidth = a3;
    result->mHeight = a4;
    result->mDepth = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, a3, v7);
  objc_msgSend_width(self, v9, v10, v11);
  v13 = v12;
  objc_msgSend_height(self, v14, v15, v16);
  v18 = v17;
  objc_msgSend_depth(self, v19, v20, v21);

  return objc_msgSend_initWithWidth_height_depth_(v8, v22, v23, v24, v13, v18, v25);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(isMemberOfClass) = 1;
    return isMemberOfClass;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  v5 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(a3, v6, v5, v7);
  if (isMemberOfClass)
  {
    objc_msgSend_width(self, v9, v10, v11);
    v13 = v12;
    objc_msgSend_width(a3, v14, v15, v16);
    if (v13 == v20)
    {
      objc_msgSend_height(self, v17, v18, v19);
      v22 = v21;
      objc_msgSend_height(a3, v23, v24, v25);
      if (v22 == v29)
      {
        objc_msgSend_depth(self, v26, v27, v28);
        v31 = v30;
        objc_msgSend_depth(a3, v32, v33, v34);
        LOBYTE(isMemberOfClass) = v31 == v35;
        return isMemberOfClass;
      }
    }

LABEL_8:
    LOBYTE(isMemberOfClass) = 0;
  }

  return isMemberOfClass;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitHVSpace;
  return [(EQKitBox *)&v3 hash];
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
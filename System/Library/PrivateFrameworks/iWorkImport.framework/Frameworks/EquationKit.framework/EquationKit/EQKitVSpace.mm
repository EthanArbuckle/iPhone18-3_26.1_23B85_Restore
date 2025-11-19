@interface EQKitVSpace
- (BOOL)isEqual:(id)a3;
- (EQKitVSpace)initWithHeight:(double)a3 depth:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation EQKitVSpace

- (EQKitVSpace)initWithHeight:(double)a3 depth:(double)a4
{
  v7.receiver = self;
  v7.super_class = EQKitVSpace;
  result = [(EQKitVSpace *)&v7 init];
  if (result)
  {
    result->mHeight = a3;
    result->mDepth = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, a3, v7);
  objc_msgSend_height(self, v9, v10, v11);
  v13 = v12;
  objc_msgSend_depth(self, v14, v15, v16);

  return objc_msgSend_initWithHeight_depth_(v8, v17, v18, v19, v13, v20);
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
    goto LABEL_7;
  }

  v5 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(a3, v6, v5, v7);
  if (isMemberOfClass)
  {
    objc_msgSend_height(self, v9, v10, v11);
    v13 = v12;
    objc_msgSend_height(a3, v14, v15, v16);
    if (v13 == v20)
    {
      objc_msgSend_depth(self, v17, v18, v19);
      v22 = v21;
      objc_msgSend_depth(a3, v23, v24, v25);
      LOBYTE(isMemberOfClass) = v22 == v26;
      return isMemberOfClass;
    }

LABEL_7:
    LOBYTE(isMemberOfClass) = 0;
  }

  return isMemberOfClass;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitVSpace;
  return [(EQKitBox *)&v3 hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objc_msgSend_height(self, v5, v6, v7);
  v9 = v8;
  objc_msgSend_depth(self, v10, v11, v12);
  return objc_msgSend_stringWithFormat_(v3, v13, @"<%@ %p>: height=%f depth=%f", v14, v4, self, v9, v15);
}

@end
@interface EQKitHSpace
- (BOOL)isEqual:(id)a3;
- (EQKitHSpace)initWithWidth:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation EQKitHSpace

- (EQKitHSpace)initWithWidth:(double)a3
{
  v5.receiver = self;
  v5.super_class = EQKitHSpace;
  result = [(EQKitHSpace *)&v5 init];
  if (result)
  {
    result->mWidth = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, a3, v7);
  objc_msgSend_width(self, v9, v10, v11);

  return objc_msgSend_initWithWidth_(v8, v12, v13, v14);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(isMemberOfClass) = 1;
  }

  else if (a3)
  {
    v5 = objc_opt_class();
    isMemberOfClass = objc_msgSend_isMemberOfClass_(a3, v6, v5, v7);
    if (isMemberOfClass)
    {
      objc_msgSend_width(self, v9, v10, v11);
      v13 = v12;
      objc_msgSend_width(a3, v14, v15, v16);
      LOBYTE(isMemberOfClass) = v13 == v17;
    }
  }

  else
  {
    LOBYTE(isMemberOfClass) = 0;
  }

  return isMemberOfClass;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitHSpace;
  return [(EQKitBox *)&v3 hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objc_msgSend_width(self, v5, v6, v7);
  return objc_msgSend_stringWithFormat_(v3, v8, @"<%@ %p>: width=%f", v9, v4, self, v10);
}

@end
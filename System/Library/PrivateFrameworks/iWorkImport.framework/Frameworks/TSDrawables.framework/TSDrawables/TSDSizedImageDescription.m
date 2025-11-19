@interface TSDSizedImageDescription
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSizedImageDescription:(id)a3;
- (CGSize)size;
- (TSDSizedImageDescription)initWithSize:(CGSize)a3 isWideGamut:(BOOL)a4 hasBakedMask:(BOOL)a5;
- (unint64_t)hash;
@end

@implementation TSDSizedImageDescription

- (TSDSizedImageDescription)initWithSize:(CGSize)a3 isWideGamut:(BOOL)a4 hasBakedMask:(BOOL)a5
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = TSDSizedImageDescription;
  result = [(TSDSizedImageDescription *)&v10 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_isWideGamut = a4;
    result->_hasBakedMask = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    isEqualToSizedImageDescription = objc_msgSend_isEqualToSizedImageDescription_(self, v6, v5);
  }

  else
  {
    isEqualToSizedImageDescription = 0;
  }

  return isEqualToSizedImageDescription;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], a2, v2, self->_size.width, self->_size.height);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v8 = self->_isWideGamut ^ self->_hasBakedMask;

  return v7 ^ v8;
}

- (BOOL)isEqualToSizedImageDescription:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    objc_msgSend_size(self, v4, v5);
    v8 = v7;
    v10 = v9;
    objc_msgSend_size(v6, v11, v12);
    v17 = v8 == v16 && v10 == v15;
    if (v17 && (isWideGamut = objc_msgSend_isWideGamut(self, v13, v14), isWideGamut == objc_msgSend_isWideGamut(v6, v19, v20)))
    {
      hasBakedMask = objc_msgSend_hasBakedMask(self, v21, v22);
      v23 = hasBakedMask ^ objc_msgSend_hasBakedMask(v6, v25, v26) ^ 1;
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  return v23;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
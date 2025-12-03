@interface TSDSizedImageDescription
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSizedImageDescription:(id)description;
- (CGSize)size;
- (TSDSizedImageDescription)initWithSize:(CGSize)size isWideGamut:(BOOL)gamut hasBakedMask:(BOOL)mask;
- (unint64_t)hash;
@end

@implementation TSDSizedImageDescription

- (TSDSizedImageDescription)initWithSize:(CGSize)size isWideGamut:(BOOL)gamut hasBakedMask:(BOOL)mask
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = TSDSizedImageDescription;
  result = [(TSDSizedImageDescription *)&v10 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_isWideGamut = gamut;
    result->_hasBakedMask = mask;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
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

- (BOOL)isEqualToSizedImageDescription:(id)description
{
  descriptionCopy = description;
  if (self == descriptionCopy)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    objc_msgSend_size(self, v4, v5);
    v8 = v7;
    v10 = v9;
    objc_msgSend_size(descriptionCopy, v11, v12);
    v17 = v8 == v16 && v10 == v15;
    if (v17 && (isWideGamut = objc_msgSend_isWideGamut(self, v13, v14), isWideGamut == objc_msgSend_isWideGamut(descriptionCopy, v19, v20)))
    {
      hasBakedMask = objc_msgSend_hasBakedMask(self, v21, v22);
      v23 = hasBakedMask ^ objc_msgSend_hasBakedMask(descriptionCopy, v25, v26) ^ 1;
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
@interface VGRotationTranslation
- (BOOL)isEqual:(id)equal;
- (VGRotationTranslation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGRotationTranslation

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEA90];
  coderCopy = coder;
  v7 = [v4 dataWithBytes:self->_anon_10 length:16];
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:self->_translation length:16];
  [coderCopy encodeObject:v7 forKey:@"rotation"];
  [coderCopy encodeObject:v6 forKey:@"translation"];
}

- (VGRotationTranslation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = VGRotationTranslation;
  v5 = [(VGRotationTranslation *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rotation"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translation"];
    [v6 getBytes:v5->_anon_10 length:16];
    [v7 getBytes:v5->_translation length:16];
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(VGRotationTranslation *)self rotation];
    if ((vminvq_u32(vceqq_f32(v6, v5[1])) & 0x80000000) != 0)
    {
      [(VGRotationTranslation *)self translation];
      v9 = vceqq_f32(v8, v5[2]);
      v9.i32[3] = v9.i32[2];
      v7 = vminvq_u32(v9) >> 31;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end
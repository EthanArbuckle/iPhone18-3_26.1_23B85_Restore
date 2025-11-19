@interface VGRotationTranslation
- (BOOL)isEqual:(id)a3;
- (VGRotationTranslation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGRotationTranslation

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = a3;
  v7 = [v4 dataWithBytes:self->_anon_10 length:16];
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:self->_translation length:16];
  [v5 encodeObject:v7 forKey:@"rotation"];
  [v5 encodeObject:v6 forKey:@"translation"];
}

- (VGRotationTranslation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VGRotationTranslation;
  v5 = [(VGRotationTranslation *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rotation"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translation"];
    [v6 getBytes:v5->_anon_10 length:16];
    [v7 getBytes:v5->_translation length:16];
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
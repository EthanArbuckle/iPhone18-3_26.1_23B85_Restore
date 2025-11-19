@interface _SFAESKeySpecifier
- (_SFAESKeySpecifier)initWithBitSize:(int64_t)a3;
- (_SFAESKeySpecifier)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)keyLengthInBytes;
@end

@implementation _SFAESKeySpecifier

- (int64_t)keyLengthInBytes
{
  v2 = *(self->_aesKeySpecifierInternal + 1);
  if (v2 < 3)
  {
    return 8 * v2 + 16;
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SFKey.m" lineNumber:305 description:@"unexected AES key bit size"];

  return result;
}

- (_SFAESKeySpecifier)initWithBitSize:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = _SFAESKeySpecifier;
  v4 = [(_SFAESKeySpecifier *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(SFAESKeySpecifier_Ivars);
    aesKeySpecifierInternal = v4->_aesKeySpecifierInternal;
    v4->_aesKeySpecifierInternal = v5;

    *(v4->_aesKeySpecifierInternal + 1) = a3;
  }

  return v4;
}

- (_SFAESKeySpecifier)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFAESKeySpecifier;
  return [(_SFAESKeySpecifier *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *(self->_aesKeySpecifierInternal + 1);

  return [v4 initWithBitSize:v5];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = _SFAESKeySpecifier;
  v4 = [(_SFAESKeySpecifier *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ bitSize: %ld", v4, 8 * -[_SFAESKeySpecifier keyLengthInBytes](self, "keyLengthInBytes")];

  return v5;
}

@end
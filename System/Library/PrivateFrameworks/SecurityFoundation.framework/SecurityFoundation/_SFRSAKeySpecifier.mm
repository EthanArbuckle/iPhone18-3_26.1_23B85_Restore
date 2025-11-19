@interface _SFRSAKeySpecifier
- (_SFRSAKeySpecifier)initWithBitSize:(int64_t)a3;
- (_SFRSAKeySpecifier)initWithCoder:(id)a3;
@end

@implementation _SFRSAKeySpecifier

- (_SFRSAKeySpecifier)initWithBitSize:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = _SFRSAKeySpecifier;
  v4 = [(_SFRSAKeySpecifier *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(SFRSAKeySpecifier_Ivars);
    rsaKeySpecifierInternal = v4->_rsaKeySpecifierInternal;
    v4->_rsaKeySpecifierInternal = v5;

    *(v4->_rsaKeySpecifierInternal + 1) = a3;
  }

  return v4;
}

- (_SFRSAKeySpecifier)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFRSAKeySpecifier;
  return [(_SFRSAKeySpecifier *)&v4 init];
}

@end
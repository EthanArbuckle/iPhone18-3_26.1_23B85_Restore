@interface _SFECKeySpecifier
- (_SFECKeySpecifier)initWithCoder:(id)a3;
- (_SFECKeySpecifier)initWithCurve:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _SFECKeySpecifier

- (_SFECKeySpecifier)initWithCurve:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = _SFECKeySpecifier;
  v4 = [(_SFECKeySpecifier *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(SFECKeySpecifier_Ivars);
    ecKeySpecifierInternal = v4->_ecKeySpecifierInternal;
    v4->_ecKeySpecifierInternal = v5;

    *(v4->_ecKeySpecifierInternal + 1) = a3;
  }

  return v4;
}

- (_SFECKeySpecifier)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFECKeySpecifier;
  return [(_SFECKeySpecifier *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = *(self->_ecKeySpecifierInternal + 1);

  return [v4 initWithCurve:v5];
}

- (id)description
{
  if (*(self->_ecKeySpecifierInternal + 1) >= 8uLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = @"nistp521-compressed";
  }

  v7.receiver = self;
  v7.super_class = _SFECKeySpecifier;
  v3 = [(_SFECKeySpecifier *)&v7 description];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@" curve: %@", v2];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

@end
@interface STOpaquePasscode
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOpaquePasscode:(id)a3;
- (STOpaquePasscode)initWithCoder:(id)a3;
- (STOpaquePasscode)initWithPasscode:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation STOpaquePasscode

- (STOpaquePasscode)initWithPasscode:(id)a3
{
  v8.receiver = self;
  v8.super_class = STOpaquePasscode;
  v3 = a3;
  v4 = [(STOpaquePasscode *)&v8 init];
  v5 = [v3 copy];

  passcode = v4->_passcode;
  v4->_passcode = v5;

  return v4;
}

- (STOpaquePasscode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];

  v6 = [(STOpaquePasscode *)self initWithPasscode:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  passcode = self->_passcode;

  return [v4 initWithPasscode:passcode];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STOpaquePasscode *)self isEqualToOpaquePasscode:v4];
  }

  return v5;
}

- (BOOL)isEqualToOpaquePasscode:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = [a3 passcode];
  v5 = [(STOpaquePasscode *)self passcode];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(STOpaquePasscode *)self passcode];
  v3 = [v2 hash];

  return v3;
}

@end
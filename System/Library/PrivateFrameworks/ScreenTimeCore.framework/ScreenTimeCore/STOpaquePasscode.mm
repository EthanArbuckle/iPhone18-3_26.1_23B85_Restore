@interface STOpaquePasscode
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOpaquePasscode:(id)passcode;
- (STOpaquePasscode)initWithCoder:(id)coder;
- (STOpaquePasscode)initWithPasscode:(id)passcode;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation STOpaquePasscode

- (STOpaquePasscode)initWithPasscode:(id)passcode
{
  v8.receiver = self;
  v8.super_class = STOpaquePasscode;
  passcodeCopy = passcode;
  v4 = [(STOpaquePasscode *)&v8 init];
  v5 = [passcodeCopy copy];

  passcode = v4->_passcode;
  v4->_passcode = v5;

  return v4;
}

- (STOpaquePasscode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];

  v6 = [(STOpaquePasscode *)self initWithPasscode:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  passcode = self->_passcode;

  return [v4 initWithPasscode:passcode];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STOpaquePasscode *)self isEqualToOpaquePasscode:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToOpaquePasscode:(id)passcode
{
  if (passcode == self)
  {
    return 1;
  }

  passcode = [passcode passcode];
  passcode2 = [(STOpaquePasscode *)self passcode];
  v6 = [passcode isEqualToString:passcode2];

  return v6;
}

- (unint64_t)hash
{
  passcode = [(STOpaquePasscode *)self passcode];
  v3 = [passcode hash];

  return v3;
}

@end
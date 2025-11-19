@interface _UIMainMenuSessionIdentifier
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuSessionIdentifier)initWithCoder:(id)a3;
- (id)_initWithIdentifierNumber:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _UIMainMenuSessionIdentifier

- (id)_initWithIdentifierNumber:(unint64_t)a3
{
  result = [(_UIMainMenuSessionIdentifier *)self init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (_UIMainMenuSessionIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuSessionIdentifier *)self init];
  if (v5)
  {
    v5->_identifierNumber = [v4 decodeIntegerForKey:@"SessionIdentifierNumber"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_identifierNumber == v4->_identifierNumber;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIMainMenuSessionIdentifier alloc];
  identifierNumber = self->_identifierNumber;

  return [(_UIMainMenuSessionIdentifier *)v4 _initWithIdentifierNumber:identifierNumber];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:self->_identifierNumber withName:@"_identifierNumber"];
  v5 = [v3 build];

  return v5;
}

@end
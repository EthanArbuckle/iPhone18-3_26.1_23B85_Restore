@interface _UIMainMenuDeferredElementIdentifier
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIMainMenuDeferredElementIdentifier)initWithCoder:(id)a3;
- (id)_initWithIdentifierNumber:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIMainMenuDeferredElementIdentifier

- (id)_initWithIdentifierNumber:(unint64_t)a3
{
  result = [(_UIMainMenuDeferredElementIdentifier *)self init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (_UIMainMenuDeferredElementIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuDeferredElementIdentifier *)self init];
  if (v5)
  {
    v5->_identifierNumber = [v4 decodeIntegerForKey:@"DeferredElementIdentifierNumber"];
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
  v4 = [_UIMainMenuDeferredElementIdentifier alloc];
  identifierNumber = self->_identifierNumber;

  return [(_UIMainMenuDeferredElementIdentifier *)v4 _initWithIdentifierNumber:identifierNumber];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:self->_identifierNumber withName:@"_identifierNumber"];
  v5 = [v3 build];

  return v5;
}

@end
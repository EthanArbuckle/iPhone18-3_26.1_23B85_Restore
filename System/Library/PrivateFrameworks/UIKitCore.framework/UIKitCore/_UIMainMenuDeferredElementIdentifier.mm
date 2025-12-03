@interface _UIMainMenuDeferredElementIdentifier
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIMainMenuDeferredElementIdentifier)initWithCoder:(id)coder;
- (id)_initWithIdentifierNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIMainMenuDeferredElementIdentifier

- (id)_initWithIdentifierNumber:(unint64_t)number
{
  result = [(_UIMainMenuDeferredElementIdentifier *)self init];
  if (result)
  {
    *(result + 1) = number;
  }

  return result;
}

- (_UIMainMenuDeferredElementIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuDeferredElementIdentifier *)self init];
  if (v5)
  {
    v5->_identifierNumber = [coderCopy decodeIntegerForKey:@"DeferredElementIdentifierNumber"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_identifierNumber == equalCopy->_identifierNumber;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIMainMenuDeferredElementIdentifier alloc];
  identifierNumber = self->_identifierNumber;

  return [(_UIMainMenuDeferredElementIdentifier *)v4 _initWithIdentifierNumber:identifierNumber];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:self->_identifierNumber withName:@"_identifierNumber"];
  build = [v3 build];

  return build;
}

@end
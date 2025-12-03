@interface _UIMainMenuIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToUIMenuIdentifier:(id)identifier;
- (NSString)description;
- (_UIMainMenuIdentifier)initWithCoder:(id)coder;
- (id)_initWithUIMenuIdentifier:(id)identifier identifierNumber:(unint64_t)number isBaseMenuIdentifier:(BOOL)menuIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuIdentifier

- (id)_initWithUIMenuIdentifier:(id)identifier identifierNumber:(unint64_t)number isBaseMenuIdentifier:(BOOL)menuIdentifier
{
  identifierCopy = identifier;
  v10 = [(_UIMainMenuIdentifier *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_uiMenuIdentifier, identifier);
    v11->_identifierNumber = number;
    v11->_isBaseMenuIdentifier = menuIdentifier;
  }

  return v11;
}

- (BOOL)isEquivalentToUIMenuIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_isBaseMenuIdentifier)
  {
    v5 = self->_uiMenuIdentifier;
    v6 = identifierCopy;
    v7 = v6;
    if (v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0;
      if (v6 && v5)
      {
        v8 = [(NSString *)v5 isEqual:v6];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  uiMenuIdentifier = self->_uiMenuIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uiMenuIdentifier forKey:@"UIMenuIdentifier"];
  [coderCopy encodeInteger:self->_identifierNumber forKey:@"MenuIdentifierNumber"];
  [coderCopy encodeBool:self->_isBaseMenuIdentifier forKey:@"IsBaseMenuIdentifier"];
}

- (_UIMainMenuIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuIdentifier *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"UIMenuIdentifier"];
    uiMenuIdentifier = v5->_uiMenuIdentifier;
    v5->_uiMenuIdentifier = v7;

    v5->_identifierNumber = [coderCopy decodeIntegerForKey:@"MenuIdentifierNumber"];
    v5->_isBaseMenuIdentifier = [coderCopy decodeBoolForKey:@"IsBaseMenuIdentifier"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      uiMenuIdentifier = v7->_uiMenuIdentifier;
      v9 = self->_uiMenuIdentifier;
      v10 = uiMenuIdentifier;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        if (!v9 || !v10)
        {

          goto LABEL_14;
        }

        v12 = [(NSString *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_14;
        }
      }

      if (self->_identifierNumber == v7->_identifierNumber)
      {
        v13 = self->_isBaseMenuIdentifier == v7->_isBaseMenuIdentifier;
LABEL_15:

        goto LABEL_16;
      }

LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    v13 = 0;
  }

LABEL_16:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIMainMenuIdentifier alloc];
  uiMenuIdentifier = self->_uiMenuIdentifier;
  identifierNumber = self->_identifierNumber;
  isBaseMenuIdentifier = self->_isBaseMenuIdentifier;

  return [(_UIMainMenuIdentifier *)v4 _initWithUIMenuIdentifier:uiMenuIdentifier identifierNumber:identifierNumber isBaseMenuIdentifier:isBaseMenuIdentifier];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_uiMenuIdentifier withName:@"_uiMenuIdentifier"];
  v4 = [v3 appendUnsignedInteger:self->_identifierNumber withName:@"_identifierNumber"];
  v5 = [v3 appendBool:self->_isBaseMenuIdentifier withName:@"_isBaseMenuIdentifier"];
  build = [v3 build];

  return build;
}

@end
@interface _UIMainMenuDeferredElement
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIMainMenuDeferredElement)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier uiDeferredMenuElement:(id)element;
- (id)_initWithUIDeferredMenuElement:(id)element;
@end

@implementation _UIMainMenuDeferredElement

- (id)_initWithIdentifier:(id)identifier uiDeferredMenuElement:(id)element
{
  identifierCopy = identifier;
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = _UIMainMenuDeferredElement;
  v9 = [(_UIMainMenuDeferredElement *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_uiDeferredMenuElement, element);
    localProvidedElements = v10->_localProvidedElements;
    v10->_localProvidedElements = 0;
  }

  return v10;
}

- (id)_initWithUIDeferredMenuElement:(id)element
{
  elementCopy = element;
  v5 = [_UIMainMenuDeferredElementIdentifier alloc];
  ++_UIMainMenuElementIdentifierNumberGenerate_lastMenuElementIdentifier;
  v6 = [(_UIMainMenuDeferredElementIdentifier *)v5 _initWithIdentifierNumber:?];
  v7 = [(_UIMainMenuDeferredElement *)self _initWithIdentifier:v6 uiDeferredMenuElement:elementCopy];

  return v7;
}

- (_UIMainMenuDeferredElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuDeferredElement *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"DeferredElementIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    localProvidedElements = v5->_localProvidedElements;
    v5->_localProvidedElements = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      identifier = v7->_identifier;
      v9 = self->_identifier;
      v10 = identifier;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        v12 = [(_UIMainMenuDeferredElementIdentifier *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_17;
        }
      }

      uiDeferredMenuElement = self->_uiDeferredMenuElement;
      v14 = v7->_uiDeferredMenuElement;
      v9 = uiDeferredMenuElement;
      v15 = v14;
      v11 = v15;
      if (v9 == v15)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = 0;
        if (v9 && v15)
        {
          LOBYTE(v12) = [(_UIMainMenuDeferredElementIdentifier *)v9 isEqual:v15];
        }
      }

      goto LABEL_16;
    }

    LOBYTE(v12) = 0;
  }

LABEL_18:

  return v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_uiDeferredMenuElement withName:@"uiDeferredMenuElement"];
  build = [v3 build];

  return build;
}

@end
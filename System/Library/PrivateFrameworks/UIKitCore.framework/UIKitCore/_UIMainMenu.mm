@interface _UIMainMenu
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIMainMenu)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier uiMenu:(id)menu children:(id)children;
- (id)_initWithUIMenu:(id)menu children:(id)children isPartOfBaseMenu:(BOOL)baseMenu;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenu

- (id)_initWithIdentifier:(id)identifier uiMenu:(id)menu children:(id)children
{
  identifierCopy = identifier;
  menuCopy = menu;
  childrenCopy = children;
  v21.receiver = self;
  v21.super_class = _UIMainMenu;
  v13 = [(_UIMainMenu *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    children = [menuCopy children];
    v16 = [children count];

    if (v16)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v14 file:@"_UIMainMenuElement.m" lineNumber:347 description:@"_UIMainMenu initializer should only take in a UIMenu with empty children. This is a UIKit internal bug."];
    }

    _safeCopy = [menuCopy _safeCopy];
    uiMenu = v14->_uiMenu;
    v14->_uiMenu = _safeCopy;

    objc_storeStrong(&v14->_children, children);
  }

  return v14;
}

- (id)_initWithUIMenu:(id)menu children:(id)children isPartOfBaseMenu:(BOOL)baseMenu
{
  childrenCopy = children;
  menuCopy = menu;
  v9 = [_UIMainMenuIdentifier alloc];
  identifier = [menuCopy identifier];
  ++_UIMainMenuElementIdentifierNumberGenerate_lastMenuElementIdentifier;
  v11 = [_UIMainMenuIdentifier _initWithUIMenuIdentifier:v9 identifierNumber:"_initWithUIMenuIdentifier:identifierNumber:isBaseMenuIdentifier:" isBaseMenuIdentifier:identifier];

  v12 = [(_UIMainMenu *)self _initWithIdentifier:v11 uiMenu:menuCopy children:childrenCopy];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_uiMenu forKey:@"UIMenu"];
  [coderCopy encodeObject:self->_children forKey:@"Children"];
}

- (_UIMainMenu)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenu *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"UIMenu"];
    uiMenu = v5->_uiMenu;
    v5->_uiMenu = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = objc_opt_self();
    v16 = objc_opt_self();
    v17 = [v12 setWithObjects:{v13, v14, v15, v16, 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"Children"];
    children = v5->_children;
    v5->_children = v18;
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
          goto LABEL_22;
        }

        v12 = [(_UIMainMenuIdentifier *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_23;
        }
      }

      uiMenu = v7->_uiMenu;
      v9 = self->_uiMenu;
      v14 = uiMenu;
      v11 = v14;
      if (v9 == v14)
      {

LABEL_17:
        children = self->_children;
        v16 = v7->_children;
        v9 = children;
        v17 = v16;
        v11 = v17;
        if (v9 == v17)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v17)
          {
            LOBYTE(v12) = [(_UIMainMenuIdentifier *)v9 isEqual:v17];
          }
        }

        goto LABEL_22;
      }

      LOBYTE(v12) = 0;
      if (v9 && v14)
      {
        v12 = [(_UIMainMenuIdentifier *)v9 isEqual:v14];

        if (!v12)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    LOBYTE(v12) = 0;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(_UIMainMenuIdentifier *)self->_identifier hash];
  v4 = [(UIMenu *)self->_uiMenu hash]^ v3;
  return v4 ^ [(NSArray *)self->_children hash];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_uiMenu withName:@"uiMenu"];
  [v3 appendArraySection:self->_children withName:@"children" skipIfEmpty:0];
  build = [v3 build];

  return build;
}

@end
@interface _UIMainMenu
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIMainMenu)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 uiMenu:(id)a4 children:(id)a5;
- (id)_initWithUIMenu:(id)a3 children:(id)a4 isPartOfBaseMenu:(BOOL)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenu

- (id)_initWithIdentifier:(id)a3 uiMenu:(id)a4 children:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = _UIMainMenu;
  v13 = [(_UIMainMenu *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    v15 = [v11 children];
    v16 = [v15 count];

    if (v16)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:v14 file:@"_UIMainMenuElement.m" lineNumber:347 description:@"_UIMainMenu initializer should only take in a UIMenu with empty children. This is a UIKit internal bug."];
    }

    v17 = [v11 _safeCopy];
    uiMenu = v14->_uiMenu;
    v14->_uiMenu = v17;

    objc_storeStrong(&v14->_children, a5);
  }

  return v14;
}

- (id)_initWithUIMenu:(id)a3 children:(id)a4 isPartOfBaseMenu:(BOOL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [_UIMainMenuIdentifier alloc];
  v10 = [v8 identifier];
  ++_UIMainMenuElementIdentifierNumberGenerate_lastMenuElementIdentifier;
  v11 = [_UIMainMenuIdentifier _initWithUIMenuIdentifier:v9 identifierNumber:"_initWithUIMenuIdentifier:identifierNumber:isBaseMenuIdentifier:" isBaseMenuIdentifier:v10];

  v12 = [(_UIMainMenu *)self _initWithIdentifier:v11 uiMenu:v8 children:v7];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_uiMenu forKey:@"UIMenu"];
  [v5 encodeObject:self->_children forKey:@"Children"];
}

- (_UIMainMenu)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenu *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"UIMenu"];
    uiMenu = v5->_uiMenu;
    v5->_uiMenu = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = objc_opt_self();
    v16 = objc_opt_self();
    v17 = [v12 setWithObjects:{v13, v14, v15, v16, 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"Children"];
    children = v5->_children;
    v5->_children = v18;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
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
  v6 = [v3 build];

  return v6;
}

@end
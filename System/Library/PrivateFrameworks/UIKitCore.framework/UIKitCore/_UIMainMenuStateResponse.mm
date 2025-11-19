@interface _UIMainMenuStateResponse
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuState)menuState;
- (_UIMainMenuStateResponse)initWithCoder:(id)a3;
- (id)_initWithMenuStates:(id)a3 uncategorizedMenuState:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuStateResponse

- (id)_initWithMenuStates:(id)a3 uncategorizedMenuState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UIMainMenuStateResponse;
  v9 = [(_UIMainMenuStateResponse *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_menuStates, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (_UIMainMenuState)menuState
{
  v2 = [(NSDictionary *)self->_menuStates allValues];
  v3 = [v2 firstObject];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  menuStates = self->_menuStates;
  v5 = a3;
  [v5 encodeObject:menuStates forKey:@"MenuStates"];
  [v5 encodeObject:self->_uncategorizedMenuState forKey:@"UncategorizedMenuState"];
}

- (_UIMainMenuStateResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuStateResponse *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = [v6 setWithObjects:{v7, v8, v9, 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"MenuStates"];
    menuStates = v5->_menuStates;
    v5->_menuStates = v11;

    v13 = objc_opt_self();
    v14 = [v4 decodeObjectOfClass:v13 forKey:@"UncategorizedMenuState"];
    uncategorizedMenuState = v5->_uncategorizedMenuState;
    v5->_uncategorizedMenuState = v14;
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
      menuStates = v7->_menuStates;
      v9 = self->_menuStates;
      v10 = menuStates;
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

        v12 = [(NSDictionary *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_17;
        }
      }

      uncategorizedMenuState = self->_uncategorizedMenuState;
      v14 = v7->_uncategorizedMenuState;
      v9 = uncategorizedMenuState;
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
          LOBYTE(v12) = [(NSDictionary *)v9 isEqual:v15];
        }
      }

      goto LABEL_16;
    }

    LOBYTE(v12) = 0;
  }

LABEL_18:

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_menuStates withName:@"menuStates" skipIfNil:1];
  v5 = [v3 appendObject:self->_uncategorizedMenuState withName:@"uncategorizedMenuState" skipIfNil:1];
  v6 = [v3 build];

  return v6;
}

@end
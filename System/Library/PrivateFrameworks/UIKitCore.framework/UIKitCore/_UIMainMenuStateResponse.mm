@interface _UIMainMenuStateResponse
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuState)menuState;
- (_UIMainMenuStateResponse)initWithCoder:(id)coder;
- (id)_initWithMenuStates:(id)states uncategorizedMenuState:(id)state;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuStateResponse

- (id)_initWithMenuStates:(id)states uncategorizedMenuState:(id)state
{
  statesCopy = states;
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = _UIMainMenuStateResponse;
  v9 = [(_UIMainMenuStateResponse *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_menuStates, states);
    objc_storeStrong(p_isa + 2, state);
  }

  return p_isa;
}

- (_UIMainMenuState)menuState
{
  allValues = [(NSDictionary *)self->_menuStates allValues];
  firstObject = [allValues firstObject];

  return firstObject;
}

- (void)encodeWithCoder:(id)coder
{
  menuStates = self->_menuStates;
  coderCopy = coder;
  [coderCopy encodeObject:menuStates forKey:@"MenuStates"];
  [coderCopy encodeObject:self->_uncategorizedMenuState forKey:@"UncategorizedMenuState"];
}

- (_UIMainMenuStateResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuStateResponse *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = [v6 setWithObjects:{v7, v8, v9, 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"MenuStates"];
    menuStates = v5->_menuStates;
    v5->_menuStates = v11;

    v13 = objc_opt_self();
    v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"UncategorizedMenuState"];
    uncategorizedMenuState = v5->_uncategorizedMenuState;
    v5->_uncategorizedMenuState = v14;
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
  build = [v3 build];

  return build;
}

@end
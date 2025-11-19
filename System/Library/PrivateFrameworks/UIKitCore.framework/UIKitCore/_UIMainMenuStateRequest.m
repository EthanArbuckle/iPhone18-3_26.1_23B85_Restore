@interface _UIMainMenuStateRequest
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuStateRequest)initWithCoder:(id)a3;
- (_UIMainMenuStateRequest)initWithMenuIdentifier:(id)a3 session:(id)a4;
- (_UIMainMenuStateRequest)initWithMenuIdentifiers:(id)a3 session:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuStateRequest

- (_UIMainMenuStateRequest)initWithMenuIdentifier:(id)a3 session:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  v9 = [(_UIMainMenuStateRequest *)self initWithMenuIdentifiers:v8 session:v7];

  return v9;
}

- (_UIMainMenuStateRequest)initWithMenuIdentifiers:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_UIMainMenuStateRequest *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_menuIdentifiers, a3);
    objc_storeStrong(&v10->_providedSession, a4);
    v11 = [v8 identifier];
    sessionIdentifier = v10->_sessionIdentifier;
    v10->_sessionIdentifier = v11;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  menuIdentifiers = self->_menuIdentifiers;
  v5 = a3;
  [v5 encodeObject:menuIdentifiers forKey:@"MenuIdentifiers"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"SessionIdentifier"];
  [v5 encodeBool:self->_includeUncategorizedMenuState forKey:@"IncludeUncategorizedMenuState"];
}

- (_UIMainMenuStateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuStateRequest *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"MenuIdentifiers"];
    menuIdentifiers = v5->_menuIdentifiers;
    v5->_menuIdentifiers = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"SessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v13;

    v5->_includeUncategorizedMenuState = [v4 decodeBoolForKey:@"IncludeUncategorizedMenuState"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      menuIdentifiers = v7->_menuIdentifiers;
      v9 = self->_menuIdentifiers;
      v10 = menuIdentifiers;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        if (!v9 || !v10)
        {
          goto LABEL_16;
        }

        v12 = [(NSSet *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_17;
        }
      }

      sessionIdentifier = v7->_sessionIdentifier;
      v9 = self->_sessionIdentifier;
      v15 = sessionIdentifier;
      v11 = v15;
      if (v9 == v15)
      {

LABEL_19:
        v13 = self->_includeUncategorizedMenuState == v7->_includeUncategorizedMenuState;
        goto LABEL_20;
      }

      if (v9 && v15)
      {
        v16 = [(NSSet *)v9 isEqual:v15];

        if (v16)
        {
          goto LABEL_19;
        }

LABEL_17:
        v13 = 0;
LABEL_20:

        goto LABEL_21;
      }

LABEL_16:

      goto LABEL_17;
    }

    v13 = 0;
  }

LABEL_21:

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_menuIdentifiers withName:@"menuIdentifiers"];
  v5 = [v3 appendObject:self->_providedSession withName:@"session" skipIfNil:1];
  v6 = [v3 appendObject:self->_sessionIdentifier withName:@"_sessionIdentifier"];
  v7 = [v3 appendBool:self->_includeUncategorizedMenuState withName:@"includeUncategorizedMenuState" ifEqualTo:1];
  v8 = [v3 build];

  return v8;
}

@end
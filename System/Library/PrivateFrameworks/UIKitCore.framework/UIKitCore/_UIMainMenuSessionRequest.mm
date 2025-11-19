@interface _UIMainMenuSessionRequest
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuSessionRequest)init;
- (_UIMainMenuSessionRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setInitialMenuStateIdentifier:(id)a3;
- (void)setSessionToEnd:(id)a3;
@end

@implementation _UIMainMenuSessionRequest

- (_UIMainMenuSessionRequest)init
{
  v3.receiver = self;
  v3.super_class = _UIMainMenuSessionRequest;
  return [(_UIMainMenuSessionRequest *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  beginNewSession = self->_beginNewSession;
  v5 = a3;
  [v5 encodeBool:beginNewSession forKey:@"BeginNewSession"];
  [v5 encodeObject:self->_sessionIdentifierToEnd forKey:@"SessionIdentifierToEnd"];
  [v5 encodeObject:self->_initialMenuStateIdentifiers forKey:@"InitialMenuStateIdentifiers"];
  [v5 encodeBool:self->_includeUncategorizedMenuState forKey:@"IncludeUncategorizedMenuState"];
  [v5 encodeBool:self->_requiresHostSideInvokableKeyboardShortcuts forKey:@"RequiresHostSideInvokableKeyboardShortcuts"];
}

- (_UIMainMenuSessionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuSessionRequest *)self init];
  if (v5)
  {
    v5->_beginNewSession = [v4 decodeBoolForKey:@"BeginNewSession"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"SessionIdentifierToEnd"];
    sessionIdentifierToEnd = v5->_sessionIdentifierToEnd;
    v5->_sessionIdentifierToEnd = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_self();
    v11 = objc_opt_self();
    v12 = [v9 setWithObjects:{v10, v11, 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"InitialMenuStateIdentifiers"];
    initialMenuStateIdentifiers = v5->_initialMenuStateIdentifiers;
    v5->_initialMenuStateIdentifiers = v13;

    v5->_includeUncategorizedMenuState = [v4 decodeBoolForKey:@"IncludeUncategorizedMenuState"];
    v5->_requiresHostSideInvokableKeyboardShortcuts = [v4 decodeBoolForKey:@"RequiresHostSideInvokableKeyboardShortcuts"];
  }

  return v5;
}

- (void)setSessionToEnd:(id)a3
{
  v5 = a3;
  sessionIdentifierToEnd = self->_providedSessionToEnd;
  v7 = v5;
  v11 = v7;
  if (sessionIdentifierToEnd == v7)
  {

LABEL_9:
    v9 = v11;
    goto LABEL_10;
  }

  if (!v7 || !sessionIdentifierToEnd)
  {

    goto LABEL_8;
  }

  v8 = [(_UIMainMenuSession *)sessionIdentifierToEnd isEqual:v7];

  v9 = v11;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_providedSessionToEnd, a3);
    v10 = [(_UIMainMenuSession *)v11 identifier];
    sessionIdentifierToEnd = self->_sessionIdentifierToEnd;
    self->_sessionIdentifierToEnd = v10;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setInitialMenuStateIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:?];
  }

  else
  {
    v4 = 0;
  }

  initialMenuStateIdentifiers = self->_initialMenuStateIdentifiers;
  self->_initialMenuStateIdentifiers = v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = v7;
      if (self->_beginNewSession != v7->_beginNewSession)
      {
        goto LABEL_21;
      }

      sessionIdentifierToEnd = v7->_sessionIdentifierToEnd;
      v10 = self->_sessionIdentifierToEnd;
      v11 = sessionIdentifierToEnd;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        if (!v10 || !v11)
        {
          goto LABEL_17;
        }

        v13 = [(_UIMainMenuSessionIdentifier *)v10 isEqual:v11];

        if (!v13)
        {
          goto LABEL_21;
        }
      }

      initialMenuStateIdentifiers = v8->_initialMenuStateIdentifiers;
      v10 = self->_initialMenuStateIdentifiers;
      v16 = initialMenuStateIdentifiers;
      v12 = v16;
      if (v10 == v16)
      {

LABEL_19:
        if (self->_includeUncategorizedMenuState == v8->_includeUncategorizedMenuState)
        {
          v14 = self->_requiresHostSideInvokableKeyboardShortcuts == v8->_requiresHostSideInvokableKeyboardShortcuts;
LABEL_22:

          goto LABEL_23;
        }

LABEL_21:
        v14 = 0;
        goto LABEL_22;
      }

      if (v10 && v16)
      {
        v17 = [(_UIMainMenuSessionIdentifier *)v10 isEqual:v16];

        if (!v17)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_21;
    }

    v14 = 0;
  }

LABEL_23:

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_beginNewSession withName:@"beginNewSession" ifEqualTo:1];
  v5 = [v3 appendObject:self->_providedSessionToEnd withName:@"sessionToEnd" skipIfNil:1];
  v6 = [v3 appendObject:self->_sessionIdentifierToEnd withName:@"_sessionIdentifierToEnd" skipIfNil:1];
  v7 = [v3 appendObject:self->_initialMenuStateIdentifiers withName:@"initialMenuStateIdentifiers" skipIfNil:1];
  v8 = [v3 appendBool:self->_includeUncategorizedMenuState withName:@"_includeUncategorizedMenuState" ifEqualTo:1];
  v9 = [v3 appendBool:self->_requiresHostSideInvokableKeyboardShortcuts withName:@"requiresHostSideInvokableKeyboardShortcuts" ifEqualTo:1];
  v10 = [v3 build];

  return v10;
}

@end
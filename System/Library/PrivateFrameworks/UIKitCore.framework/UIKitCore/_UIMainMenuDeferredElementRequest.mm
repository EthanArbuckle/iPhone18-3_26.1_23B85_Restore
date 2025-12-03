@interface _UIMainMenuDeferredElementRequest
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuDeferredElementRequest)initWithCoder:(id)coder;
- (_UIMainMenuDeferredElementRequest)initWithDeferredElementIdentifier:(id)identifier session:(id)session;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuDeferredElementRequest

- (_UIMainMenuDeferredElementRequest)initWithDeferredElementIdentifier:(id)identifier session:(id)session
{
  identifierCopy = identifier;
  sessionCopy = session;
  v9 = [(_UIMainMenuDeferredElementRequest *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deferredElementIdentifier, identifier);
    objc_storeStrong(&v10->_providedSession, session);
    identifier = [sessionCopy identifier];
    sessionIdentifier = v10->_sessionIdentifier;
    v10->_sessionIdentifier = identifier;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  deferredElementIdentifier = self->_deferredElementIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:deferredElementIdentifier forKey:@"DeferredElementIdentifier"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"SessionIdentifier"];
}

- (_UIMainMenuDeferredElementRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuDeferredElementRequest *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"DeferredElementIdentifier"];
    deferredElementIdentifier = v5->_deferredElementIdentifier;
    v5->_deferredElementIdentifier = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"SessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v10;
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
      deferredElementIdentifier = v7->_deferredElementIdentifier;
      v9 = self->_deferredElementIdentifier;
      v10 = deferredElementIdentifier;
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

      sessionIdentifier = self->_sessionIdentifier;
      v14 = v7->_sessionIdentifier;
      v9 = sessionIdentifier;
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

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_deferredElementIdentifier withName:@"deferredElementIdentifier"];
  v5 = [v3 appendObject:self->_providedSession withName:@"session" skipIfNil:1];
  v6 = [v3 appendObject:self->_sessionIdentifier withName:@"_sessionIdentifier"];
  build = [v3 build];

  return build;
}

@end
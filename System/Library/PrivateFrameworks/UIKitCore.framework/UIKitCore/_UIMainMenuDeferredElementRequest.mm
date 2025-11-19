@interface _UIMainMenuDeferredElementRequest
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuDeferredElementRequest)initWithCoder:(id)a3;
- (_UIMainMenuDeferredElementRequest)initWithDeferredElementIdentifier:(id)a3 session:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuDeferredElementRequest

- (_UIMainMenuDeferredElementRequest)initWithDeferredElementIdentifier:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_UIMainMenuDeferredElementRequest *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deferredElementIdentifier, a3);
    objc_storeStrong(&v10->_providedSession, a4);
    v11 = [v8 identifier];
    sessionIdentifier = v10->_sessionIdentifier;
    v10->_sessionIdentifier = v11;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  deferredElementIdentifier = self->_deferredElementIdentifier;
  v5 = a3;
  [v5 encodeObject:deferredElementIdentifier forKey:@"DeferredElementIdentifier"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"SessionIdentifier"];
}

- (_UIMainMenuDeferredElementRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuDeferredElementRequest *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"DeferredElementIdentifier"];
    deferredElementIdentifier = v5->_deferredElementIdentifier;
    v5->_deferredElementIdentifier = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"SessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v10;
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
  v7 = [v3 build];

  return v7;
}

@end
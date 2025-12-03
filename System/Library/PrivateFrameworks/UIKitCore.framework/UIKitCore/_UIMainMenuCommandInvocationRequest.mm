@interface _UIMainMenuCommandInvocationRequest
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuCommandInvocationRequest)initWithCoder:(id)coder;
- (_UIMainMenuCommandInvocationRequest)initWithCommand:(id)command session:(id)session;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuCommandInvocationRequest

- (_UIMainMenuCommandInvocationRequest)initWithCommand:(id)command session:(id)session
{
  commandCopy = command;
  sessionCopy = session;
  v9 = [(_UIMainMenuCommandInvocationRequest *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_providedCommand, command);
    identifier = [commandCopy identifier];
    commandIdentifier = v10->_commandIdentifier;
    v10->_commandIdentifier = identifier;

    objc_storeStrong(&v10->_providedSession, session);
    identifier2 = [sessionCopy identifier];
    sessionIdentifier = v10->_sessionIdentifier;
    v10->_sessionIdentifier = identifier2;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  commandIdentifier = self->_commandIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:commandIdentifier forKey:@"CommandIdentifier"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"SessionIdentifier"];
  [coderCopy encodeObject:self->_authenticationMessage forKey:@"AuthenticationMessage"];
  [coderCopy encodeObject:self->_sessionRequest forKey:@"SessionRequest"];
}

- (_UIMainMenuCommandInvocationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuCommandInvocationRequest *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"CommandIdentifier"];
    commandIdentifier = v5->_commandIdentifier;
    v5->_commandIdentifier = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"SessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"AuthenticationMessage"];
    authenticationMessage = v5->_authenticationMessage;
    v5->_authenticationMessage = v13;

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"SessionRequest"];
    sessionRequest = v5->_sessionRequest;
    v5->_sessionRequest = v16;
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
      commandIdentifier = v7->_commandIdentifier;
      v9 = self->_commandIdentifier;
      v10 = commandIdentifier;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
          goto LABEL_28;
        }

        v12 = [(_UIMainMenuCommandIdentifier *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_29;
        }
      }

      sessionIdentifier = v7->_sessionIdentifier;
      v9 = self->_sessionIdentifier;
      v14 = sessionIdentifier;
      v11 = v14;
      if (v9 == v14)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v14)
        {
          goto LABEL_28;
        }

        v12 = [(_UIMainMenuCommandIdentifier *)v9 isEqual:v14];

        if (!v12)
        {
          goto LABEL_29;
        }
      }

      authenticationMessage = v7->_authenticationMessage;
      v9 = self->_authenticationMessage;
      v16 = authenticationMessage;
      v11 = v16;
      if (v9 == v16)
      {

LABEL_23:
        sessionRequest = self->_sessionRequest;
        v18 = v7->_sessionRequest;
        v9 = sessionRequest;
        v19 = v18;
        v11 = v19;
        if (v9 == v19)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v19)
          {
            LOBYTE(v12) = [(_UIMainMenuCommandIdentifier *)v9 isEqual:v19];
          }
        }

        goto LABEL_28;
      }

      LOBYTE(v12) = 0;
      if (v9 && v16)
      {
        v12 = [(_UIMainMenuCommandIdentifier *)v9 isEqual:v16];

        if (!v12)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    LOBYTE(v12) = 0;
  }

LABEL_30:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(_UIMainMenuCommandIdentifier *)self->_commandIdentifier hash];
  v4 = [(_UIMainMenuSessionIdentifier *)self->_sessionIdentifier hash]^ v3;
  v5 = [(BKSHIDEventAuthenticationMessage *)self->_authenticationMessage hash];
  return v4 ^ v5 ^ [(_UIMainMenuSessionRequest *)self->_sessionRequest hash];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_providedCommand withName:@"command" skipIfNil:1];
  v5 = [v3 appendObject:self->_commandIdentifier withName:@"_commandIdentifier" skipIfNil:1];
  v6 = [v3 appendObject:self->_providedSession withName:@"session" skipIfNil:1];
  v7 = [v3 appendObject:self->_sessionIdentifier withName:@"_sessionIdentifier"];
  v8 = [v3 appendObject:self->_authenticationMessage withName:@"authenticationMessage" skipIfNil:1];
  v9 = [v3 appendObject:self->_sessionRequest withName:@"sessionRequest" skipIfNil:1];
  build = [v3 build];

  return build;
}

@end
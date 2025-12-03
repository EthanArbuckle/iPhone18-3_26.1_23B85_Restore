@interface _UIMainMenuSessionResponse
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuSessionResponse)initWithCoder:(id)coder;
- (id)_initWithSession:(id)session menuStateResponse:(id)response;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuSessionResponse

- (id)_initWithSession:(id)session menuStateResponse:(id)response
{
  sessionCopy = session;
  responseCopy = response;
  v12.receiver = self;
  v12.super_class = _UIMainMenuSessionResponse;
  v9 = [(_UIMainMenuSessionResponse *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(p_isa + 2, response);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)coder
{
  session = self->_session;
  coderCopy = coder;
  [coderCopy encodeObject:session forKey:@"Session"];
  [coderCopy encodeObject:self->_menuStateResponse forKey:@"MenuStateResponse"];
}

- (_UIMainMenuSessionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuSessionResponse *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"Session"];
    session = v5->_session;
    v5->_session = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"MenuStateResponse"];
    menuStateResponse = v5->_menuStateResponse;
    v5->_menuStateResponse = v10;
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
      session = v7->_session;
      v9 = self->_session;
      v10 = session;
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

        v12 = [(_UIMainMenuSession *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_17;
        }
      }

      menuStateResponse = self->_menuStateResponse;
      v14 = v7->_menuStateResponse;
      v9 = menuStateResponse;
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
          LOBYTE(v12) = [(_UIMainMenuSession *)v9 isEqual:v15];
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
  v4 = [v3 appendObject:self->_session withName:@"session" skipIfNil:1];
  v5 = [v3 appendObject:self->_menuStateResponse withName:@"menuStateResponse" skipIfNil:1];
  build = [v3 build];

  return build;
}

@end
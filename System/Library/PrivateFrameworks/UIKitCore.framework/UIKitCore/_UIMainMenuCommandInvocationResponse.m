@interface _UIMainMenuCommandInvocationResponse
+ (id)_response;
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuCommandInvocationResponse)initWithCoder:(id)a3;
- (id)description;
@end

@implementation _UIMainMenuCommandInvocationResponse

+ (id)_response
{
  v2 = objc_opt_new();

  return v2;
}

- (_UIMainMenuCommandInvocationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuCommandInvocationResponse *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"SessionResponse"];
    sessionResponse = v5->_sessionResponse;
    v5->_sessionResponse = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      sessionResponse = v7->_sessionResponse;
      v9 = self->_sessionResponse;
      v10 = sessionResponse;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [(_UIMainMenuSessionResponse *)v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_sessionResponse withName:@"sessionResponse" skipIfNil:1];
  v5 = [v3 build];

  return v5;
}

@end
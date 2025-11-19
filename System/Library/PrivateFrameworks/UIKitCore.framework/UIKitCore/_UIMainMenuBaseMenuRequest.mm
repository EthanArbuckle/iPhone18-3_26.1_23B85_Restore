@interface _UIMainMenuBaseMenuRequest
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuBaseMenuRequest)init;
- (_UIMainMenuBaseMenuRequest)initWithCoder:(id)a3;
- (id)description;
@end

@implementation _UIMainMenuBaseMenuRequest

- (_UIMainMenuBaseMenuRequest)init
{
  v3.receiver = self;
  v3.super_class = _UIMainMenuBaseMenuRequest;
  return [(_UIMainMenuBaseMenuRequest *)&v3 init];
}

- (_UIMainMenuBaseMenuRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuBaseMenuRequest *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"SessionRequest"];
    sessionRequest = v5->_sessionRequest;
    v5->_sessionRequest = v7;
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
      sessionRequest = v7->_sessionRequest;
      v9 = self->_sessionRequest;
      v10 = sessionRequest;
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
          v12 = [(_UIMainMenuSessionRequest *)v9 isEqual:v10];
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
  v4 = [v3 appendObject:self->_sessionRequest withName:@"sessionRequest" skipIfNil:1];
  v5 = [v3 build];

  return v5;
}

@end
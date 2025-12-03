@interface _UIMainMenuBaseMenuRequest
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuBaseMenuRequest)init;
- (_UIMainMenuBaseMenuRequest)initWithCoder:(id)coder;
- (id)description;
@end

@implementation _UIMainMenuBaseMenuRequest

- (_UIMainMenuBaseMenuRequest)init
{
  v3.receiver = self;
  v3.super_class = _UIMainMenuBaseMenuRequest;
  return [(_UIMainMenuBaseMenuRequest *)&v3 init];
}

- (_UIMainMenuBaseMenuRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuBaseMenuRequest *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"SessionRequest"];
    sessionRequest = v5->_sessionRequest;
    v5->_sessionRequest = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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
  build = [v3 build];

  return build;
}

@end
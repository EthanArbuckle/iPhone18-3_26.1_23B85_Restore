@interface _UIMainMenuDeferredElementResponse
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuDeferredElementResponse)initWithCoder:(id)coder;
- (id)_initWithDeferredElementState:(id)state;
- (id)description;
@end

@implementation _UIMainMenuDeferredElementResponse

- (id)_initWithDeferredElementState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = _UIMainMenuDeferredElementResponse;
  v6 = [(_UIMainMenuDeferredElementResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deferredElementState, state);
  }

  return v7;
}

- (_UIMainMenuDeferredElementResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuDeferredElementResponse *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"DeferredElementState"];
    deferredElementState = v5->_deferredElementState;
    v5->_deferredElementState = v7;
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
      deferredElementState = v7->_deferredElementState;
      v9 = self->_deferredElementState;
      v10 = deferredElementState;
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
          v12 = [(_UIMainMenuDeferredElementState *)v9 isEqual:v10];
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
  v4 = [v3 appendObject:self->_deferredElementState withName:@"deferredElementState" skipIfNil:1];
  build = [v3 build];

  return build;
}

@end
@interface ICTVUserState
- (BOOL)isEqual:(id)a3;
- (ICTVUserState)initWithBlock:(id)a3;
- (ICTVUserState)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithBlock:(id)a3;
@end

@implementation ICTVUserState

- (NSString)description
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(ICTVUserState *)self isActiveWatchKitUser])
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v4 forKeyedSubscript:@"activeWatchKitUser"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p [%@]>", objc_opt_class(), self, v3];

  return v5;
}

- (ICTVUserState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICTVUserState;
  v5 = [(ICTVUserState *)&v7 init];
  if (v5)
  {
    v5->_activeWatchKitUser = [v4 decodeBoolForKey:@"activeWatchKitUser"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICTVUserState *)self isActiveWatchKitUser];
      v7 = [(ICTVUserState *)v5 isActiveWatchKitUser];

      v8 = v6 ^ v7 ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [ICTVUserState alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__ICTVUserState_copyWithBlock___block_invoke;
  v9[3] = &unk_1E7BF5BB8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(ICTVUserState *)v5 initWithBlock:v9];

  return v7;
}

- (ICTVUserState)initWithBlock:(id)a3
{
  v5 = a3;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICTVUserState.m" lineNumber:24 description:@"ICTVUserState instance already exists"];
  }

  v9.receiver = self;
  v9.super_class = ICTVUserState;
  v6 = [(ICTVUserState *)&v9 init];
  if (v6)
  {
    v5[2](v5, v6);
    v6->_frozen = 1;
  }

  return v6;
}

@end
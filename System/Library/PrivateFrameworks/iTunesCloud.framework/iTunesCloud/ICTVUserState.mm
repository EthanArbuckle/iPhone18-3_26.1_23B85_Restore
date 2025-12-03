@interface ICTVUserState
- (BOOL)isEqual:(id)equal;
- (ICTVUserState)initWithBlock:(id)block;
- (ICTVUserState)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithBlock:(id)block;
@end

@implementation ICTVUserState

- (NSString)description
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(ICTVUserState *)self isActiveWatchKitUser])
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = MEMORY[0x1E695E110];
  }

  [dictionary setObject:v4 forKeyedSubscript:@"activeWatchKitUser"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p [%@]>", objc_opt_class(), self, dictionary];

  return v5;
}

- (ICTVUserState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ICTVUserState;
  v5 = [(ICTVUserState *)&v7 init];
  if (v5)
  {
    v5->_activeWatchKitUser = [coderCopy decodeBoolForKey:@"activeWatchKitUser"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isActiveWatchKitUser = [(ICTVUserState *)self isActiveWatchKitUser];
      isActiveWatchKitUser2 = [(ICTVUserState *)v5 isActiveWatchKitUser];

      v8 = isActiveWatchKitUser ^ isActiveWatchKitUser2 ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [ICTVUserState alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__ICTVUserState_copyWithBlock___block_invoke;
  v9[3] = &unk_1E7BF5BB8;
  v9[4] = self;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [(ICTVUserState *)v5 initWithBlock:v9];

  return v7;
}

- (ICTVUserState)initWithBlock:(id)block
{
  blockCopy = block;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICTVUserState.m" lineNumber:24 description:@"ICTVUserState instance already exists"];
  }

  v9.receiver = self;
  v9.super_class = ICTVUserState;
  v6 = [(ICTVUserState *)&v9 init];
  if (v6)
  {
    blockCopy[2](blockCopy, v6);
    v6->_frozen = 1;
  }

  return v6;
}

@end
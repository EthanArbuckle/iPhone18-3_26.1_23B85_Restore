@interface _UIRemoteKeyboardsToken
+ (id)uniqueToken;
- (BOOL)isEqual:(id)equal;
- (_UIRemoteKeyboardsToken)init;
- (id)description;
@end

@implementation _UIRemoteKeyboardsToken

+ (id)uniqueToken
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (_UIRemoteKeyboardsToken)init
{
  v5.receiver = self;
  v5.super_class = _UIRemoteKeyboardsToken;
  v2 = [(_UIRemoteKeyboardsToken *)&v5 init];
  if (v2)
  {
    if (qword_1ED4997D0 != -1)
    {
      dispatch_once(&qword_1ED4997D0, &__block_literal_global_1128);
    }

    v3 = dword_1ED499718++;
    v2->_identifier = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_identifier == equalCopy[2];

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UIRemoteKeyboardsToken;
  v3 = [(_UIRemoteKeyboardsToken *)&v7 description];
  sceneIdentityString = [(_UIRemoteKeyboardsToken *)self sceneIdentityString];
  v5 = [v3 stringByAppendingFormat:@" scene identity string %@", sceneIdentityString];

  return v5;
}

@end
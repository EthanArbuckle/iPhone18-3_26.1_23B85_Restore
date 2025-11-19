@interface _UIRemoteKeyboardsToken
+ (id)uniqueToken;
- (BOOL)isEqual:(id)a3;
- (_UIRemoteKeyboardsToken)init;
- (id)description;
@end

@implementation _UIRemoteKeyboardsToken

+ (id)uniqueToken
{
  v2 = objc_alloc_init(a1);

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_identifier == v4[2];

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UIRemoteKeyboardsToken;
  v3 = [(_UIRemoteKeyboardsToken *)&v7 description];
  v4 = [(_UIRemoteKeyboardsToken *)self sceneIdentityString];
  v5 = [v3 stringByAppendingFormat:@" scene identity string %@", v4];

  return v5;
}

@end
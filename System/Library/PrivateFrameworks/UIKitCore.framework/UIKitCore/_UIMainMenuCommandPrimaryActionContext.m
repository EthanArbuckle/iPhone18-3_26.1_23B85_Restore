@interface _UIMainMenuCommandPrimaryActionContext
- (id)_initWithCommand:(id)a3 needsAuthenticationMessage:(BOOL)a4;
@end

@implementation _UIMainMenuCommandPrimaryActionContext

- (id)_initWithCommand:(id)a3 needsAuthenticationMessage:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _UIMainMenuCommandPrimaryActionContext;
  v8 = [(_UIMainMenuCommandPrimaryActionContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_command, a3);
    v9->_needsAuthenticationMessage = a4;
  }

  return v9;
}

@end
@interface _UIMainMenuCommandPrimaryActionContext
- (id)_initWithCommand:(id)command needsAuthenticationMessage:(BOOL)message;
@end

@implementation _UIMainMenuCommandPrimaryActionContext

- (id)_initWithCommand:(id)command needsAuthenticationMessage:(BOOL)message
{
  commandCopy = command;
  v11.receiver = self;
  v11.super_class = _UIMainMenuCommandPrimaryActionContext;
  v8 = [(_UIMainMenuCommandPrimaryActionContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_command, command);
    v9->_needsAuthenticationMessage = message;
  }

  return v9;
}

@end
@interface TIKeyboardInteractionProtocolBase
- (TIKeyboardInteractionProtocolBase)initWithCoder:(id)coder;
- (TIKeyboardInteractionProtocolBase)initWithKeyboardState:(id)state;
@end

@implementation TIKeyboardInteractionProtocolBase

- (TIKeyboardInteractionProtocolBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolBase;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolBase)initWithKeyboardState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolBase;
  v6 = [(TIKeyboardInteractionProtocolBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyboardState, state);
  }

  return v7;
}

@end
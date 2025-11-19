@interface TIKeyboardInteractionProtocolBase
- (TIKeyboardInteractionProtocolBase)initWithCoder:(id)a3;
- (TIKeyboardInteractionProtocolBase)initWithKeyboardState:(id)a3;
@end

@implementation TIKeyboardInteractionProtocolBase

- (TIKeyboardInteractionProtocolBase)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolBase;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolBase)initWithKeyboardState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolBase;
  v6 = [(TIKeyboardInteractionProtocolBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyboardState, a3);
  }

  return v7;
}

@end
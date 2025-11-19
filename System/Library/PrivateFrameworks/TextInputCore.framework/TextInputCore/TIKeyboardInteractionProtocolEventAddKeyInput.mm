@interface TIKeyboardInteractionProtocolEventAddKeyInput
- (TIKeyboardInteractionProtocolEventAddKeyInput)initWithCoder:(id)a3;
- (TIKeyboardInteractionProtocolEventAddKeyInput)initWithKeyInput:(id)a3 keyboardState:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)sendTo:(id)a3;
@end

@implementation TIKeyboardInteractionProtocolEventAddKeyInput

- (void)sendTo:(id)a3
{
  keyboardInput = self->_keyboardInput;
  v5 = a3;
  v6 = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [v5 addKeyInput:keyboardInput keyboardState:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventAddKeyInput;
  v4 = a3;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_keyboardInput forKey:{@"keyboardInput", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventAddKeyInput)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddKeyInput;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardInput"];
    keyboardInput = v5->_keyboardInput;
    v5->_keyboardInput = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolEventAddKeyInput)initWithKeyInput:(id)a3 keyboardState:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TIKeyboardInteractionProtocolEventAddKeyInput;
  v8 = [(TIKeyboardInteractionProtocolBase *)&v11 initWithKeyboardState:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyboardInput, a3);
  }

  return v9;
}

@end
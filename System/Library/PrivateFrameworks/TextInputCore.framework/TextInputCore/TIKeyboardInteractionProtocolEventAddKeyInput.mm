@interface TIKeyboardInteractionProtocolEventAddKeyInput
- (TIKeyboardInteractionProtocolEventAddKeyInput)initWithCoder:(id)coder;
- (TIKeyboardInteractionProtocolEventAddKeyInput)initWithKeyInput:(id)input keyboardState:(id)state;
- (void)encodeWithCoder:(id)coder;
- (void)sendTo:(id)to;
@end

@implementation TIKeyboardInteractionProtocolEventAddKeyInput

- (void)sendTo:(id)to
{
  keyboardInput = self->_keyboardInput;
  toCopy = to;
  keyboardState = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [toCopy addKeyInput:keyboardInput keyboardState:keyboardState];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventAddKeyInput;
  coderCopy = coder;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_keyboardInput forKey:{@"keyboardInput", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventAddKeyInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAddKeyInput;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardInput"];
    keyboardInput = v5->_keyboardInput;
    v5->_keyboardInput = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolEventAddKeyInput)initWithKeyInput:(id)input keyboardState:(id)state
{
  inputCopy = input;
  v11.receiver = self;
  v11.super_class = TIKeyboardInteractionProtocolEventAddKeyInput;
  v8 = [(TIKeyboardInteractionProtocolBase *)&v11 initWithKeyboardState:state];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyboardInput, input);
  }

  return v9;
}

@end
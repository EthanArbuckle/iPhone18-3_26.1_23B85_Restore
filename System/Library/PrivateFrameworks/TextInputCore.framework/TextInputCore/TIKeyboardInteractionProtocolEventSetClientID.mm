@interface TIKeyboardInteractionProtocolEventSetClientID
- (TIKeyboardInteractionProtocolEventSetClientID)initWithClientID:(id)d keyboardState:(id)state;
- (TIKeyboardInteractionProtocolEventSetClientID)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)sendTo:(id)to;
@end

@implementation TIKeyboardInteractionProtocolEventSetClientID

- (void)sendTo:(id)to
{
  clientID = self->_clientID;
  toCopy = to;
  keyboardState = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [toCopy setClientID:clientID keyboardState:keyboardState];
}

- (TIKeyboardInteractionProtocolEventSetClientID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventSetClientID;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventSetClientID;
  coderCopy = coder;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_clientID forKey:{@"clientID", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventSetClientID)initWithClientID:(id)d keyboardState:(id)state
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = TIKeyboardInteractionProtocolEventSetClientID;
  v8 = [(TIKeyboardInteractionProtocolBase *)&v11 initWithKeyboardState:state];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientID, d);
  }

  return v9;
}

@end
@interface TIKeyboardInteractionProtocolEventSetClientID
- (TIKeyboardInteractionProtocolEventSetClientID)initWithClientID:(id)a3 keyboardState:(id)a4;
- (TIKeyboardInteractionProtocolEventSetClientID)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)sendTo:(id)a3;
@end

@implementation TIKeyboardInteractionProtocolEventSetClientID

- (void)sendTo:(id)a3
{
  clientID = self->_clientID;
  v5 = a3;
  v6 = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [v5 setClientID:clientID keyboardState:v6];
}

- (TIKeyboardInteractionProtocolEventSetClientID)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventSetClientID;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventSetClientID;
  v4 = a3;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_clientID forKey:{@"clientID", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventSetClientID)initWithClientID:(id)a3 keyboardState:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TIKeyboardInteractionProtocolEventSetClientID;
  v8 = [(TIKeyboardInteractionProtocolBase *)&v11 initWithKeyboardState:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientID, a3);
  }

  return v9;
}

@end
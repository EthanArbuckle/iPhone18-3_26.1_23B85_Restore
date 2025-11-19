@interface RPWirelessPairingSession
- (BOOL)invalidated;
- (RPWirelessPairingSession)initWithUnderlyingObject:(id)a3;
- (void)endSession;
- (void)registerInvalidationHandlerOnQueue:(id)a3 handler:(id)a4;
@end

@implementation RPWirelessPairingSession

- (RPWirelessPairingSession)initWithUnderlyingObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RPWirelessPairingSession;
  v6 = [(RPWirelessPairingSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingObject, a3);
  }

  return v7;
}

- (void)registerInvalidationHandlerOnQueue:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RPWirelessPairingSession *)self underlyingObject];
  [v8 registerInvalidationHandlerWithInvokingOnQueue:v7 handler:v6];
}

- (void)endSession
{
  v2 = [(RPWirelessPairingSession *)self underlyingObject];
  [v2 endSession];
}

- (BOOL)invalidated
{
  v2 = [(RPWirelessPairingSession *)self underlyingObject];
  v3 = [v2 invalidated];

  return v3;
}

@end
@interface RPWirelessPairingSession
- (BOOL)invalidated;
- (RPWirelessPairingSession)initWithUnderlyingObject:(id)object;
- (void)endSession;
- (void)registerInvalidationHandlerOnQueue:(id)queue handler:(id)handler;
@end

@implementation RPWirelessPairingSession

- (RPWirelessPairingSession)initWithUnderlyingObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = RPWirelessPairingSession;
  v6 = [(RPWirelessPairingSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingObject, object);
  }

  return v7;
}

- (void)registerInvalidationHandlerOnQueue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  underlyingObject = [(RPWirelessPairingSession *)self underlyingObject];
  [underlyingObject registerInvalidationHandlerWithInvokingOnQueue:queueCopy handler:handlerCopy];
}

- (void)endSession
{
  underlyingObject = [(RPWirelessPairingSession *)self underlyingObject];
  [underlyingObject endSession];
}

- (BOOL)invalidated
{
  underlyingObject = [(RPWirelessPairingSession *)self underlyingObject];
  invalidated = [underlyingObject invalidated];

  return invalidated;
}

@end
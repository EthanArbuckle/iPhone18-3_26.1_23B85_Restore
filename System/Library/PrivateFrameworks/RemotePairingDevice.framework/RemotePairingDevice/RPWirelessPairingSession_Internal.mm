@interface RPWirelessPairingSession_Internal
- (BOOL)invalidated;
- (void)endSession;
- (void)registerInvalidationHandlerWithInvokingOnQueue:(id)queue handler:(id)handler;
@end

@implementation RPWirelessPairingSession_Internal

- (BOOL)invalidated
{
  selfCopy = self;
  v3 = sub_261F9A568();

  return v3;
}

- (void)endSession
{
  selfCopy = self;
  sub_261F9A6C4();
}

- (void)registerInvalidationHandlerWithInvokingOnQueue:(id)queue handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  queueCopy = queue;
  selfCopy = self;
  sub_261F9A794(queueCopy, sub_261F98B48, v7);
}

@end
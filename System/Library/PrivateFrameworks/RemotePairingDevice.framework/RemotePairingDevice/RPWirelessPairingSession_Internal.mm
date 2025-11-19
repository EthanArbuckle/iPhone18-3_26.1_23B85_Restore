@interface RPWirelessPairingSession_Internal
- (BOOL)invalidated;
- (void)endSession;
- (void)registerInvalidationHandlerWithInvokingOnQueue:(id)a3 handler:(id)a4;
@end

@implementation RPWirelessPairingSession_Internal

- (BOOL)invalidated
{
  v2 = self;
  v3 = sub_261F9A568();

  return v3;
}

- (void)endSession
{
  v2 = self;
  sub_261F9A6C4();
}

- (void)registerInvalidationHandlerWithInvokingOnQueue:(id)a3 handler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_261F9A794(v8, sub_261F98B48, v7);
}

@end
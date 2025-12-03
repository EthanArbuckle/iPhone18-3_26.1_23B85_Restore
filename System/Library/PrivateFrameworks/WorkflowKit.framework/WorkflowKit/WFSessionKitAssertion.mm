@interface WFSessionKitAssertion
- (BOOL)takeWithError:(id *)error;
- (id)failureHandler;
- (id)resultHandler;
- (void)addCompletionHandlerIfRunning:(id)running;
- (void)cancel;
- (void)setFailureHandler:(id)handler;
- (void)setResultHandler:(id)handler;
- (void)startTimeoutTimer;
@end

@implementation WFSessionKitAssertion

- (id)resultHandler
{
  v2 = SessionKitAssertion.resultHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1CA51B070;
    v6[3] = &block_descriptor_48_0;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setResultHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1CA51ED78;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  SessionKitAssertion.resultHandler.setter(v4, v5);
}

- (id)failureHandler
{
  v2 = SessionKitAssertion.failureHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1CA51B738;
    v6[3] = &block_descriptor_19;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFailureHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1CA51F12C;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  SessionKitAssertion.failureHandler.setter(v4, v5);
}

- (BOOL)takeWithError:(id *)error
{
  selfCopy = self;
  SessionKitAssertion.take()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_1CA948AC8();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (void)startTimeoutTimer
{
  selfCopy = self;
  SessionKitAssertion.startTimeoutTimer()();
}

- (void)cancel
{
  selfCopy = self;
  SessionKitAssertion.cancel()();
}

- (void)addCompletionHandlerIfRunning:(id)running
{
  v4 = _Block_copy(running);
  _Block_copy(v4);
  selfCopy = self;
  sub_1CA51E210(selfCopy, v4);
  _Block_release(v4);
}

@end
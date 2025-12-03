@interface IntelligentRoutingManager
- (NSArray)topOfListRoutesUniqueIdentifiers;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateContext:(id)context;
- (void)session:(id)session suspendedWithReason:(int64_t)reason;
- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended;
- (void)updateStateWithCurrentCalls:(id)calls;
@end

@implementation IntelligentRoutingManager

- (void)session:(id)session didUpdateContext:(id)context
{
  sub_100006AF0(0, &qword_1006A9970, IRContext_ptr);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  selfCopy = self;
  sub_100033108();
}

- (NSArray)topOfListRoutesUniqueIdentifiers
{
  selfCopy = self;
  sub_100019378();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)updateStateWithCurrentCalls:(id)calls
{
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10002D5B0(v4);
}

- (void)session:(id)session suspendedWithReason:(int64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  sub_1003D7324(sessionCopy);
}

- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended
{
  sessionCopy = session;
  selfCopy = self;
  sub_1003D74D0(sessionCopy, ended, suspended);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_1003D76C4();
}

@end
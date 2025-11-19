@interface IntelligentRoutingManager
- (NSArray)topOfListRoutesUniqueIdentifiers;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateContext:(id)a4;
- (void)session:(id)a3 suspendedWithReason:(int64_t)a4;
- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5;
- (void)updateStateWithCurrentCalls:(id)a3;
@end

@implementation IntelligentRoutingManager

- (void)session:(id)a3 didUpdateContext:(id)a4
{
  sub_100006AF0(0, &qword_1006A9970, IRContext_ptr);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_100033108();
}

- (NSArray)topOfListRoutesUniqueIdentifiers
{
  v2 = self;
  sub_100019378();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)updateStateWithCurrentCalls:(id)a3
{
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10002D5B0(v4);
}

- (void)session:(id)a3 suspendedWithReason:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_1003D7324(v5);
}

- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_1003D74D0(v8, a4, a5);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1003D76C4();
}

@end
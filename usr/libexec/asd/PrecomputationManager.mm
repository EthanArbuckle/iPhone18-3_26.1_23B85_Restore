@interface PrecomputationManager
+ (_TtC3asd21PrecomputationManager)shared;
- (void)captureWithBindings:(id)a3;
- (void)clearAllBindings;
- (void)triggerDuePrecomputationsWithDataProtectionClass:(int64_t)a3 shouldDefer:(id)a4 completionHandler:;
@end

@implementation PrecomputationManager

+ (_TtC3asd21PrecomputationManager)shared
{
  v2 = static PrecomputationManager.shared.getter();

  return v2;
}

- (void)triggerDuePrecomputationsWithDataProtectionClass:(int64_t)a3 shouldDefer:(id)a4 completionHandler:
{
  v5 = v4;
  v8 = _Block_copy(a4);
  v9 = _Block_copy(v5);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = self;
  v11 = self;

  sub_1000CAD58(&unk_1005CCD08, v10);
}

- (void)clearAllBindings
{
  v2 = self;
  PrecomputationManager.clearAllBindings()();
}

- (void)captureWithBindings:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  PrecomputationManager.capture(withBindings:)(v4);
}

@end
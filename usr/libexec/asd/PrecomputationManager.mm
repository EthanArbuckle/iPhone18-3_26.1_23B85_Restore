@interface PrecomputationManager
+ (_TtC3asd21PrecomputationManager)shared;
- (void)captureWithBindings:(id)bindings;
- (void)clearAllBindings;
- (void)triggerDuePrecomputationsWithDataProtectionClass:(int64_t)class shouldDefer:(id)defer completionHandler:;
@end

@implementation PrecomputationManager

+ (_TtC3asd21PrecomputationManager)shared
{
  v2 = static PrecomputationManager.shared.getter();

  return v2;
}

- (void)triggerDuePrecomputationsWithDataProtectionClass:(int64_t)class shouldDefer:(id)defer completionHandler:
{
  v5 = v4;
  v8 = _Block_copy(defer);
  v9 = _Block_copy(v5);
  v10 = swift_allocObject();
  v10[2] = class;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = self;
  selfCopy = self;

  sub_1000CAD58(&unk_1005CCD08, v10);
}

- (void)clearAllBindings
{
  selfCopy = self;
  PrecomputationManager.clearAllBindings()();
}

- (void)captureWithBindings:(id)bindings
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PrecomputationManager.capture(withBindings:)(v4);
}

@end
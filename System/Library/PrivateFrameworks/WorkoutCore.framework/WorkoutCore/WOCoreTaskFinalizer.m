@interface WOCoreTaskFinalizer
+ (void)finalizeWithIdentifier:(id)a3;
@end

@implementation WOCoreTaskFinalizer

+ (void)finalizeWithIdentifier:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (one-time initialization token for shared != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  TaskFinalizer.finalize(identifier:)(v3, v5);
}

@end
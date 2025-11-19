@interface WOChronicle
+ (WOChronicle)shared;
- (void)dumpReport;
- (void)recordWithClassName:(id)a3 classInstance:(unint64_t)a4 selector:(SEL)a5;
@end

@implementation WOChronicle

+ (WOChronicle)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static Chronicle.shared;

  return v3;
}

- (void)recordWithClassName:(id)a3 classInstance:(unint64_t)a4 selector:(SEL)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  Chronicle.record(className:classInstance:selector:)(v8, v10, a4, a5);
}

- (void)dumpReport
{
  v2 = self;
  Chronicle.dumpReport()();
}

@end
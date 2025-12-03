@interface WOChronicle
+ (WOChronicle)shared;
- (void)dumpReport;
- (void)recordWithClassName:(id)name classInstance:(unint64_t)instance selector:(SEL)selector;
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

- (void)recordWithClassName:(id)name classInstance:(unint64_t)instance selector:(SEL)selector
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  Chronicle.record(className:classInstance:selector:)(v8, v10, instance, selector);
}

- (void)dumpReport
{
  selfCopy = self;
  Chronicle.dumpReport()();
}

@end
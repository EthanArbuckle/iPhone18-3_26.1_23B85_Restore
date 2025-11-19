@interface DataProtectionSuspensionMonitor
- (_TtC14WidgetRenderer31DataProtectionSuspensionMonitor)init;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
@end

@implementation DataProtectionSuspensionMonitor

- (void)applicationWillEnterForeground
{
  v2 = self;
  sub_1DADBD22C();
}

- (void)applicationDidEnterBackground
{
  v2 = self;
  sub_1DAE4CC1C();
}

- (_TtC14WidgetRenderer31DataProtectionSuspensionMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface NotificationContent
- (BOOL)shouldCallMlDaemon;
- (NSString)debugDescription;
- (NSString)description;
- (_TtC33iCloudSubscriptionOptimizerClient19NotificationContent)init;
@end

@implementation NotificationContent

- (BOOL)shouldCallMlDaemon
{
  sub_275A3D6C4();
  v2 = sub_275A3D6B4();
  return v2 == sub_275A3D6B4();
}

- (NSString)description
{
  selfCopy = self;
  sub_275A3DA84();
  MEMORY[0x277C860D0](0xD00000000000001DLL, 0x8000000275A3F3B0);
  sub_275A3D6E4();
  sub_275A3DAA4();
  MEMORY[0x277C860D0](10589, 0xE200000000000000);

  v3 = sub_275A3D924();

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(NotificationContent *)self description];

  return v2;
}

- (_TtC33iCloudSubscriptionOptimizerClient19NotificationContent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
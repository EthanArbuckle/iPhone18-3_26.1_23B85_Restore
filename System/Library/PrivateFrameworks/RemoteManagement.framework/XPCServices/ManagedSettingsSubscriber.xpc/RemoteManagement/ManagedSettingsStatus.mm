@interface ManagedSettingsStatus
+ (id)supportedStatusClasses;
+ (id)supportedStatusKeys;
- (_TtC25ManagedSettingsSubscriber21ManagedSettingsStatus)init;
- (void)queryForStatusWithKeyPaths:(id)paths store:(id)store completionHandler:(id)handler;
@end

@implementation ManagedSettingsStatus

+ (id)supportedStatusKeys
{
  managedSettingsSchemas = [objc_opt_self() managedSettingsSchemas];
  sub_10000B858(0, &qword_10001CD48, RMModelStatusSchema_ptr);
  v3 = sub_1000113EC();

  sub_10000BFD0(v3);
  v4.super.isa = sub_1000115FC().super.isa;

  return v4.super.isa;
}

+ (id)supportedStatusClasses
{
  sub_100001550(&qword_10001CAD0, &qword_100012920);
  v2.super.isa = sub_10001158C().super.isa;

  return v2.super.isa;
}

- (void)queryForStatusWithKeyPaths:(id)paths store:(id)store completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_10001159C();
  _Block_copy(v7);
  storeCopy = store;
  selfCopy = self;
  sub_10000E5A0(v8, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (_TtC25ManagedSettingsSubscriber21ManagedSettingsStatus)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ManagedSettingsStatus();
  return [(ManagedSettingsStatus *)&v3 init];
}

@end
@interface ManagedSettingsStatus
+ (id)supportedStatusClasses;
+ (id)supportedStatusKeys;
- (_TtC25ManagedSettingsSubscriber21ManagedSettingsStatus)init;
- (void)queryForStatusWithKeyPaths:(id)a3 store:(id)a4 completionHandler:(id)a5;
@end

@implementation ManagedSettingsStatus

+ (id)supportedStatusKeys
{
  v2 = [objc_opt_self() managedSettingsSchemas];
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

- (void)queryForStatusWithKeyPaths:(id)a3 store:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_10001159C();
  _Block_copy(v7);
  v9 = a4;
  v10 = self;
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
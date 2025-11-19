@interface ManagedSettingsApplicator
+ (void)removeLegacyProtoAccountSettingsIfNeeded;
- (BOOL)applyWebContentFilter;
- (_TtC15ScreenTimeAgent25ManagedSettingsApplicator)init;
- (void)addWebContentFilterPoliciesFrom:(id)a3;
@end

@implementation ManagedSettingsApplicator

- (void)addWebContentFilterPoliciesFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000CEE5C(v4);
}

- (BOOL)applyWebContentFilter
{
  v3 = sub_1000A0F74(0, &qword_1001E1470, MOLocalSettingsStore_ptr);
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 sharedInstance];
  v8[3] = sub_1000A0F74(0, &qword_1001E1458, AKAccountManager_ptr);
  v8[4] = sub_1000B3788(&qword_1001E1460, &qword_1001E1458, AKAccountManager_ptr);
  v8[0] = v6;
  LOBYTE(v3) = sub_1000CF5B4(v3, &off_1001E13E8, v8);

  sub_1000A5148(v8, &qword_1001E1468, &unk_100141B50);
  return v3 & 1;
}

- (_TtC15ScreenTimeAgent25ManagedSettingsApplicator)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC15ScreenTimeAgent25ManagedSettingsApplicator_webContentFilterPolicyByStoreName) = &_swiftEmptyDictionarySingleton;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(ManagedSettingsApplicator *)&v5 init];
}

+ (void)removeLegacyProtoAccountSettingsIfNeeded
{
  v2 = [objc_opt_self() sharedInstance];
  v3[3] = sub_1000A0F74(0, &qword_1001E1458, AKAccountManager_ptr);
  v3[4] = sub_1000B3788(&qword_1001E1460, &qword_1001E1458, AKAccountManager_ptr);
  v3[0] = v2;
  sub_1000D0078(v3);
  sub_1000A5148(v3, &qword_1001E1468, &unk_100141B50);
}

@end
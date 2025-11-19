@interface iCloudCalendarUnifiedSettingsProvider
- (iCloudCalendarUnifiedSettingsProvider)init;
- (id)accountsForAccountManager:(id)a3;
- (void)navigateToiCloudCalendarSettings;
- (void)navigateToiCloudCalendarSettingsWith:(id)a3;
@end

@implementation iCloudCalendarUnifiedSettingsProvider

- (void)navigateToiCloudCalendarSettings
{
  v2 = self;
  sub_2755069B8(0, 0);
}

- (void)navigateToiCloudCalendarSettingsWith:(id)a3
{
  if (a3)
  {
    v4 = sub_275508F04();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_2755069B8(v4, v6);
}

- (iCloudCalendarUnifiedSettingsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)accountsForAccountManager:(id)a3
{
  v4 = a3;
  v5 = self;
  _s29iCloudCalendarUnifiedSettings01iabcD8ProviderC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0();

  type metadata accessor for AIDAServiceType();
  sub_275508C10();
  sub_275508E50(&qword_2809F49A0);
  v6 = sub_275508EC4();

  return v6;
}

@end
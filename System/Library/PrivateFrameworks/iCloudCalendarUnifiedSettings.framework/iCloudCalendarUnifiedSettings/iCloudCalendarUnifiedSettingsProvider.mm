@interface iCloudCalendarUnifiedSettingsProvider
- (iCloudCalendarUnifiedSettingsProvider)init;
- (id)accountsForAccountManager:(id)manager;
- (void)navigateToiCloudCalendarSettings;
- (void)navigateToiCloudCalendarSettingsWith:(id)with;
@end

@implementation iCloudCalendarUnifiedSettingsProvider

- (void)navigateToiCloudCalendarSettings
{
  selfCopy = self;
  sub_2755069B8(0, 0);
}

- (void)navigateToiCloudCalendarSettingsWith:(id)with
{
  if (with)
  {
    v4 = sub_275508F04();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_2755069B8(v4, v6);
}

- (iCloudCalendarUnifiedSettingsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)accountsForAccountManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  _s29iCloudCalendarUnifiedSettings01iabcD8ProviderC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0();

  type metadata accessor for AIDAServiceType();
  sub_275508C10();
  sub_275508E50(&qword_2809F49A0);
  v6 = sub_275508EC4();

  return v6;
}

@end
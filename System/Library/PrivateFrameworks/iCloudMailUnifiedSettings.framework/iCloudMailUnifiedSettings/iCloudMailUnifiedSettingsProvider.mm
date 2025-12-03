@interface iCloudMailUnifiedSettingsProvider
- (iCloudMailUnifiedSettingsProvider)init;
- (id)accountsForAccountManager:(id)manager;
- (void)navigateToiCloudMailSettings;
- (void)navigateToiCloudMailSettingsWith:(id)with;
@end

@implementation iCloudMailUnifiedSettingsProvider

- (void)navigateToiCloudMailSettings
{
  selfCopy = self;
  sub_2755632AC(0, 0);
}

- (void)navigateToiCloudMailSettingsWith:(id)with
{
  if (with)
  {
    v4 = sub_275565B9C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_2755632AC(v4, v6);
}

- (iCloudMailUnifiedSettingsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)accountsForAccountManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  iCloudMailUnifiedSettingsProvider.accounts(for:)(managerCopy);

  type metadata accessor for AIDAServiceType();
  sub_2755658BC();
  sub_275565908();
  v6 = sub_275565B4C();

  return v6;
}

@end
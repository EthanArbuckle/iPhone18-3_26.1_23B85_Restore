@interface iCloudMailUnifiedSettingsProvider
- (iCloudMailUnifiedSettingsProvider)init;
- (id)accountsForAccountManager:(id)a3;
- (void)navigateToiCloudMailSettings;
- (void)navigateToiCloudMailSettingsWith:(id)a3;
@end

@implementation iCloudMailUnifiedSettingsProvider

- (void)navigateToiCloudMailSettings
{
  v2 = self;
  sub_2755632AC(0, 0);
}

- (void)navigateToiCloudMailSettingsWith:(id)a3
{
  if (a3)
  {
    v4 = sub_275565B9C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_2755632AC(v4, v6);
}

- (iCloudMailUnifiedSettingsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)accountsForAccountManager:(id)a3
{
  v4 = a3;
  v5 = self;
  iCloudMailUnifiedSettingsProvider.accounts(for:)(v4);

  type metadata accessor for AIDAServiceType();
  sub_2755658BC();
  sub_275565908();
  v6 = sub_275565B4C();

  return v6;
}

@end
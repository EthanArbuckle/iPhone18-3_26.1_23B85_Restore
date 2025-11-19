@interface iCloudCalendarUnifiedSettingsProviderObjc
- (iCloudCalendarUnifiedSettingsProviderObjc)initWithAccountManager:(id)a3 presenter:(id)a4;
- (iCloudCalendarUnifiedSettingsProviderObjc)initWithPresenter:(id)a3;
@end

@implementation iCloudCalendarUnifiedSettingsProviderObjc

- (iCloudCalendarUnifiedSettingsProviderObjc)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = iCloudCalendarUnifiedSettingsProviderObjc;
  v8 = [(iCloudCalendarUnifiedSettingsProviderObjc *)&v12 init];
  if (v8)
  {
    v9 = [[iCloudCalendarUnifiedSettingsProvider alloc] initWithAccountManager:v6 presenter:v7];
    provider = v8->provider;
    v8->provider = v9;
  }

  return v8;
}

- (iCloudCalendarUnifiedSettingsProviderObjc)initWithPresenter:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = iCloudCalendarUnifiedSettingsProviderObjc;
  v5 = [(iCloudCalendarUnifiedSettingsProviderObjc *)&v9 init];
  if (v5)
  {
    v6 = [[iCloudCalendarUnifiedSettingsProvider alloc] initWithPresenter:v4];
    provider = v5->provider;
    v5->provider = v6;
  }

  return v5;
}

@end
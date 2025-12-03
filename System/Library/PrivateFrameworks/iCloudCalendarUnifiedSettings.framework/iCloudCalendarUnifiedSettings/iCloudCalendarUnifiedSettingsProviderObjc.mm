@interface iCloudCalendarUnifiedSettingsProviderObjc
- (iCloudCalendarUnifiedSettingsProviderObjc)initWithAccountManager:(id)manager presenter:(id)presenter;
- (iCloudCalendarUnifiedSettingsProviderObjc)initWithPresenter:(id)presenter;
@end

@implementation iCloudCalendarUnifiedSettingsProviderObjc

- (iCloudCalendarUnifiedSettingsProviderObjc)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = iCloudCalendarUnifiedSettingsProviderObjc;
  v8 = [(iCloudCalendarUnifiedSettingsProviderObjc *)&v12 init];
  if (v8)
  {
    v9 = [[iCloudCalendarUnifiedSettingsProvider alloc] initWithAccountManager:managerCopy presenter:presenterCopy];
    provider = v8->provider;
    v8->provider = v9;
  }

  return v8;
}

- (iCloudCalendarUnifiedSettingsProviderObjc)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v9.receiver = self;
  v9.super_class = iCloudCalendarUnifiedSettingsProviderObjc;
  v5 = [(iCloudCalendarUnifiedSettingsProviderObjc *)&v9 init];
  if (v5)
  {
    v6 = [[iCloudCalendarUnifiedSettingsProvider alloc] initWithPresenter:presenterCopy];
    provider = v5->provider;
    v5->provider = v6;
  }

  return v5;
}

@end
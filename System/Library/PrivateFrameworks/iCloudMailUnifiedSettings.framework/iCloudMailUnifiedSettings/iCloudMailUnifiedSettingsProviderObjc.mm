@interface iCloudMailUnifiedSettingsProviderObjc
- (iCloudMailUnifiedSettingsProviderObjc)initWithAccountManager:(id)manager presenter:(id)presenter;
- (iCloudMailUnifiedSettingsProviderObjc)initWithPresenter:(id)presenter;
@end

@implementation iCloudMailUnifiedSettingsProviderObjc

- (iCloudMailUnifiedSettingsProviderObjc)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = iCloudMailUnifiedSettingsProviderObjc;
  v8 = [(iCloudMailUnifiedSettingsProviderObjc *)&v12 init];
  if (v8)
  {
    v9 = [[iCloudMailUnifiedSettingsProvider alloc] initWithAccountManager:managerCopy presenter:presenterCopy];
    provider = v8->provider;
    v8->provider = v9;
  }

  return v8;
}

- (iCloudMailUnifiedSettingsProviderObjc)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v9.receiver = self;
  v9.super_class = iCloudMailUnifiedSettingsProviderObjc;
  v5 = [(iCloudMailUnifiedSettingsProviderObjc *)&v9 init];
  if (v5)
  {
    v6 = [[iCloudMailUnifiedSettingsProvider alloc] initWithPresenter:presenterCopy];
    provider = v5->provider;
    v5->provider = v6;
  }

  return v5;
}

@end
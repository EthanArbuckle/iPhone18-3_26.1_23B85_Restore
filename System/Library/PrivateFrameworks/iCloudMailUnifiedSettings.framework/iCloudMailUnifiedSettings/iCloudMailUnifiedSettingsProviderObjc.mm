@interface iCloudMailUnifiedSettingsProviderObjc
- (iCloudMailUnifiedSettingsProviderObjc)initWithAccountManager:(id)a3 presenter:(id)a4;
- (iCloudMailUnifiedSettingsProviderObjc)initWithPresenter:(id)a3;
@end

@implementation iCloudMailUnifiedSettingsProviderObjc

- (iCloudMailUnifiedSettingsProviderObjc)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = iCloudMailUnifiedSettingsProviderObjc;
  v8 = [(iCloudMailUnifiedSettingsProviderObjc *)&v12 init];
  if (v8)
  {
    v9 = [[iCloudMailUnifiedSettingsProvider alloc] initWithAccountManager:v6 presenter:v7];
    provider = v8->provider;
    v8->provider = v9;
  }

  return v8;
}

- (iCloudMailUnifiedSettingsProviderObjc)initWithPresenter:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = iCloudMailUnifiedSettingsProviderObjc;
  v5 = [(iCloudMailUnifiedSettingsProviderObjc *)&v9 init];
  if (v5)
  {
    v6 = [[iCloudMailUnifiedSettingsProvider alloc] initWithPresenter:v4];
    provider = v5->provider;
    v5->provider = v6;
  }

  return v5;
}

@end
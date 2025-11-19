@interface iCloudMailAccountProvider
- (iCloudMailAccountProvider)initWithAccountStore:(id)a3 appleAccount:(id)a4 presenter:(id)a5;
@end

@implementation iCloudMailAccountProvider

- (iCloudMailAccountProvider)initWithAccountStore:(id)a3 appleAccount:(id)a4 presenter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = iCloudMailAccountProvider;
  v11 = [(iCloudMailAccountProvider *)&v15 init];
  if (v11)
  {
    v12 = [[iCloudMailAccountProviderSwift alloc] initWithPresenter:v10 appleAccount:v9 accountStore:v8];
    provider = v11->provider;
    v11->provider = v12;
  }

  return v11;
}

@end
@interface iCloudMailAccountProvider
- (iCloudMailAccountProvider)initWithAccountStore:(id)store appleAccount:(id)account presenter:(id)presenter;
@end

@implementation iCloudMailAccountProvider

- (iCloudMailAccountProvider)initWithAccountStore:(id)store appleAccount:(id)account presenter:(id)presenter
{
  storeCopy = store;
  accountCopy = account;
  presenterCopy = presenter;
  v15.receiver = self;
  v15.super_class = iCloudMailAccountProvider;
  v11 = [(iCloudMailAccountProvider *)&v15 init];
  if (v11)
  {
    v12 = [[iCloudMailAccountProviderSwift alloc] initWithPresenter:presenterCopy appleAccount:accountCopy accountStore:storeCopy];
    provider = v11->provider;
    v11->provider = v12;
  }

  return v11;
}

@end
@interface SESDefaultNFCApplication
- (SESDefaultNFCApplication)initWithBundleId:(id)id displayName:(id)name rawDomain:(id)domain;
@end

@implementation SESDefaultNFCApplication

- (SESDefaultNFCApplication)initWithBundleId:(id)id displayName:(id)name rawDomain:(id)domain
{
  idCopy = id;
  nameCopy = name;
  domainCopy = domain;
  v15.receiver = self;
  v15.super_class = SESDefaultNFCApplication;
  v12 = [(SESDefaultNFCApplication *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleId, id);
    objc_storeStrong(&v13->_localizedDisplayName, name);
    objc_storeStrong(&v13->_domain, domain);
  }

  return v13;
}

@end
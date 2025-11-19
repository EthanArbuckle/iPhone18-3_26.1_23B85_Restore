@interface SESDefaultNFCApplication
- (SESDefaultNFCApplication)initWithBundleId:(id)a3 displayName:(id)a4 rawDomain:(id)a5;
@end

@implementation SESDefaultNFCApplication

- (SESDefaultNFCApplication)initWithBundleId:(id)a3 displayName:(id)a4 rawDomain:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SESDefaultNFCApplication;
  v12 = [(SESDefaultNFCApplication *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleId, a3);
    objc_storeStrong(&v13->_localizedDisplayName, a4);
    objc_storeStrong(&v13->_domain, a5);
  }

  return v13;
}

@end
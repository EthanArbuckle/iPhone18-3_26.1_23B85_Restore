@interface PKBundleProxy
- (NSDictionary)entitlements;
- (NSString)bundleIdentifier;
- (NSString)bundleVersion;
- (NSString)localizedName;
- (NSURL)bundleURL;
- (NSURL)dataContainerURL;
- (PKBundleProxy)initWithLSBundleProxy:(id)proxy;
@end

@implementation PKBundleProxy

- (PKBundleProxy)initWithLSBundleProxy:(id)proxy
{
  proxyCopy = proxy;
  v9.receiver = self;
  v9.super_class = PKBundleProxy;
  v6 = [(PKBundleProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lsObject, proxy);
  }

  return v7;
}

- (NSURL)bundleURL
{
  lsObject = [(PKBundleProxy *)self lsObject];
  bundleURL = [lsObject bundleURL];

  return bundleURL;
}

- (NSString)bundleIdentifier
{
  lsObject = [(PKBundleProxy *)self lsObject];
  bundleIdentifier = [lsObject bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)localizedName
{
  lsObject = [(PKBundleProxy *)self lsObject];
  localizedName = [lsObject localizedName];

  return localizedName;
}

- (NSDictionary)entitlements
{
  lsObject = [(PKBundleProxy *)self lsObject];
  entitlements = [lsObject entitlements];

  return entitlements;
}

- (NSURL)dataContainerURL
{
  lsObject = [(PKBundleProxy *)self lsObject];
  dataContainerURL = [lsObject dataContainerURL];

  return dataContainerURL;
}

- (NSString)bundleVersion
{
  lsObject = [(PKBundleProxy *)self lsObject];
  bundleVersion = [lsObject bundleVersion];

  return bundleVersion;
}

@end
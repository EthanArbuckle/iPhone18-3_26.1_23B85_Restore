@interface PKBundleProxy
- (NSDictionary)entitlements;
- (NSString)bundleIdentifier;
- (NSString)bundleVersion;
- (NSString)localizedName;
- (NSURL)bundleURL;
- (NSURL)dataContainerURL;
- (PKBundleProxy)initWithLSBundleProxy:(id)a3;
@end

@implementation PKBundleProxy

- (PKBundleProxy)initWithLSBundleProxy:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKBundleProxy;
  v6 = [(PKBundleProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lsObject, a3);
  }

  return v7;
}

- (NSURL)bundleURL
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 bundleURL];

  return v3;
}

- (NSString)bundleIdentifier
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (NSString)localizedName
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 localizedName];

  return v3;
}

- (NSDictionary)entitlements
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 entitlements];

  return v3;
}

- (NSURL)dataContainerURL
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 dataContainerURL];

  return v3;
}

- (NSString)bundleVersion
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 bundleVersion];

  return v3;
}

@end
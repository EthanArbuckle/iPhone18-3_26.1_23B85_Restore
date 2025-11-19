@interface SPBeaconSharingAppBundleIdentifier
- (SPBeaconSharingAppBundleIdentifier)initWithCoder:(id)a3;
- (SPBeaconSharingAppBundleIdentifier)initWithIdentifier:(id)a3 appName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconSharingAppBundleIdentifier

- (SPBeaconSharingAppBundleIdentifier)initWithIdentifier:(id)a3 appName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPBeaconSharingAppBundleIdentifier;
  v9 = [(SPBeaconSharingAppBundleIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, a3);
    objc_storeStrong(&v10->_appName, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeObject:self->_appName forKey:@"appName"];
}

- (SPBeaconSharingAppBundleIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];

  appName = self->_appName;
  self->_appName = v7;

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconSharingAppBundleIdentifier alloc];
  v5 = [(SPBeaconSharingAppBundleIdentifier *)self bundleIdentifier];
  v6 = [(SPBeaconSharingAppBundleIdentifier *)self appName];
  v7 = [(SPBeaconSharingAppBundleIdentifier *)v4 initWithIdentifier:v5 appName:v6];

  return v7;
}

@end
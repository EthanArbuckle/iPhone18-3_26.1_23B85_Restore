@interface SPBeaconSharingAppBundleIdentifier
- (SPBeaconSharingAppBundleIdentifier)initWithCoder:(id)coder;
- (SPBeaconSharingAppBundleIdentifier)initWithIdentifier:(id)identifier appName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconSharingAppBundleIdentifier

- (SPBeaconSharingAppBundleIdentifier)initWithIdentifier:(id)identifier appName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = SPBeaconSharingAppBundleIdentifier;
  v9 = [(SPBeaconSharingAppBundleIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, identifier);
    objc_storeStrong(&v10->_appName, name);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_appName forKey:@"appName"];
}

- (SPBeaconSharingAppBundleIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];

  appName = self->_appName;
  self->_appName = v7;

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconSharingAppBundleIdentifier alloc];
  bundleIdentifier = [(SPBeaconSharingAppBundleIdentifier *)self bundleIdentifier];
  appName = [(SPBeaconSharingAppBundleIdentifier *)self appName];
  v7 = [(SPBeaconSharingAppBundleIdentifier *)v4 initWithIdentifier:bundleIdentifier appName:appName];

  return v7;
}

@end
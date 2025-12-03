@interface BAAppStorePrepareDescriptor
+ (id)descriptorWithAppBundleIdentifier:(id)identifier appStoreMetadata:(id)metadata client:(unint64_t)client;
- (BAAppStorePrepareDescriptor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BAAppStorePrepareDescriptor

- (BAAppStorePrepareDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BAAppStorePrepareDescriptor;
  v5 = [(BAAppStorePrepareDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    v8 = sub_100016348();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"appStoreMetadata"];
    appStoreMetadata = v5->_appStoreMetadata;
    v5->_appStoreMetadata = v9;

    v5->_cellularPolicy = [coderCopy decodeIntegerForKey:@"cellularPolicy"];
    v5->_clientType = [coderCopy decodeIntegerForKey:@"clientType"];
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appBundleIdentifier = [(BAAppStorePrepareDescriptor *)self appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleIdentifier"];

  appStoreMetadata = [(BAAppStorePrepareDescriptor *)self appStoreMetadata];
  [coderCopy encodeObject:appStoreMetadata forKey:@"appStoreMetadata"];

  [coderCopy encodeInteger:-[BAAppStorePrepareDescriptor cellularPolicy](self forKey:{"cellularPolicy"), @"cellularPolicy"}];
  [coderCopy encodeInteger:-[BAAppStorePrepareDescriptor clientType](self forKey:{"clientType"), @"clientType"}];
  [coderCopy encodeBool:-[BAAppStorePrepareDescriptor userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
}

+ (id)descriptorWithAppBundleIdentifier:(id)identifier appStoreMetadata:(id)metadata client:(unint64_t)client
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  v9 = sub_100048CCC([BAAppStorePrepareDescriptor alloc], identifierCopy, metadataCopy, client);

  return v9;
}

@end
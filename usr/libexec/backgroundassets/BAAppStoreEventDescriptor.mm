@interface BAAppStoreEventDescriptor
+ (id)descriptorWithAppBundleIdentifier:(id)identifier appBundleURL:(id)l event:(unint64_t)event client:(unint64_t)client;
- (BAAppStoreEventDescriptor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BAAppStoreEventDescriptor

- (BAAppStoreEventDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BAAppStoreEventDescriptor;
  v5 = [(BAAppStoreEventDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleURL"];
    appBundleURL = v5->_appBundleURL;
    v5->_appBundleURL = v8;

    v5->_eventType = [coderCopy decodeIntegerForKey:@"eventType"];
    v5->_clientType = [coderCopy decodeIntegerForKey:@"clientType"];
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
    v5->_automaticInstall = [coderCopy decodeBoolForKey:@"automaticInstall"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appBundleIdentifier = [(BAAppStoreEventDescriptor *)self appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleIdentifier"];

  appBundleURL = [(BAAppStoreEventDescriptor *)self appBundleURL];
  [coderCopy encodeObject:appBundleURL forKey:@"appBundleURL"];

  [coderCopy encodeInteger:-[BAAppStoreEventDescriptor eventType](self forKey:{"eventType"), @"eventType"}];
  [coderCopy encodeInteger:-[BAAppStoreEventDescriptor clientType](self forKey:{"clientType"), @"clientType"}];
  [coderCopy encodeBool:-[BAAppStoreEventDescriptor userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [coderCopy encodeBool:-[BAAppStoreEventDescriptor automaticInstall](self forKey:{"automaticInstall"), @"automaticInstall"}];
}

+ (id)descriptorWithAppBundleIdentifier:(id)identifier appBundleURL:(id)l event:(unint64_t)event client:(unint64_t)client
{
  lCopy = l;
  identifierCopy = identifier;
  v11 = sub_100048DEC([BAAppStoreEventDescriptor alloc], identifierCopy, lCopy, event, client);

  return v11;
}

@end
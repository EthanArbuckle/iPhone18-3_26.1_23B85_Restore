@interface BAAppStoreEventDescriptor
+ (id)descriptorWithAppBundleIdentifier:(id)a3 appBundleURL:(id)a4 event:(unint64_t)a5 client:(unint64_t)a6;
- (BAAppStoreEventDescriptor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BAAppStoreEventDescriptor

- (BAAppStoreEventDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BAAppStoreEventDescriptor;
  v5 = [(BAAppStoreEventDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleURL"];
    appBundleURL = v5->_appBundleURL;
    v5->_appBundleURL = v8;

    v5->_eventType = [v4 decodeIntegerForKey:@"eventType"];
    v5->_clientType = [v4 decodeIntegerForKey:@"clientType"];
    v5->_userInitiated = [v4 decodeBoolForKey:@"userInitiated"];
    v5->_automaticInstall = [v4 decodeBoolForKey:@"automaticInstall"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(BAAppStoreEventDescriptor *)self appBundleIdentifier];
  [v6 encodeObject:v4 forKey:@"appBundleIdentifier"];

  v5 = [(BAAppStoreEventDescriptor *)self appBundleURL];
  [v6 encodeObject:v5 forKey:@"appBundleURL"];

  [v6 encodeInteger:-[BAAppStoreEventDescriptor eventType](self forKey:{"eventType"), @"eventType"}];
  [v6 encodeInteger:-[BAAppStoreEventDescriptor clientType](self forKey:{"clientType"), @"clientType"}];
  [v6 encodeBool:-[BAAppStoreEventDescriptor userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [v6 encodeBool:-[BAAppStoreEventDescriptor automaticInstall](self forKey:{"automaticInstall"), @"automaticInstall"}];
}

+ (id)descriptorWithAppBundleIdentifier:(id)a3 appBundleURL:(id)a4 event:(unint64_t)a5 client:(unint64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = sub_100048DEC([BAAppStoreEventDescriptor alloc], v10, v9, a5, a6);

  return v11;
}

@end
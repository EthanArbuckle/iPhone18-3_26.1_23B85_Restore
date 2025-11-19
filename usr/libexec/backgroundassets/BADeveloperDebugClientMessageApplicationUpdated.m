@interface BADeveloperDebugClientMessageApplicationUpdated
- (BADeveloperDebugClientMessageApplicationUpdated)initWithAppBundleIdentifier:(id)a3;
- (BADeveloperDebugClientMessageApplicationUpdated)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BADeveloperDebugClientMessageApplicationUpdated

- (BADeveloperDebugClientMessageApplicationUpdated)initWithAppBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BADeveloperDebugClientMessageApplicationUpdated;
  v6 = [(BADeveloperDebugClientMessage *)&v9 initWithMessageOperation:3];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appBundleIdentifier, a3);
  }

  return v7;
}

- (BADeveloperDebugClientMessageApplicationUpdated)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BADeveloperDebugClientMessageApplicationUpdated;
  v5 = [(BADeveloperDebugClientMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BAApplicationIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BADeveloperDebugClientMessageApplicationUpdated;
  v4 = a3;
  [(BADeveloperDebugClientMessage *)&v6 encodeWithCoder:v4];
  v5 = [(BADeveloperDebugClientMessageApplicationUpdated *)self appBundleIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"BAApplicationIdentifier"];
}

@end
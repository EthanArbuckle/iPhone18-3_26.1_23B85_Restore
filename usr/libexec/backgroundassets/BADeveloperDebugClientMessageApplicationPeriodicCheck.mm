@interface BADeveloperDebugClientMessageApplicationPeriodicCheck
- (BADeveloperDebugClientMessageApplicationPeriodicCheck)initWithAppBundleIdentifier:(id)identifier;
- (BADeveloperDebugClientMessageApplicationPeriodicCheck)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BADeveloperDebugClientMessageApplicationPeriodicCheck

- (BADeveloperDebugClientMessageApplicationPeriodicCheck)initWithAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = BADeveloperDebugClientMessageApplicationPeriodicCheck;
  v6 = [(BADeveloperDebugClientMessage *)&v9 initWithMessageOperation:4];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appBundleIdentifier, identifier);
  }

  return v7;
}

- (BADeveloperDebugClientMessageApplicationPeriodicCheck)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BADeveloperDebugClientMessageApplicationPeriodicCheck;
  v5 = [(BADeveloperDebugClientMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BAApplicationIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BADeveloperDebugClientMessageApplicationPeriodicCheck;
  coderCopy = coder;
  [(BADeveloperDebugClientMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(BADeveloperDebugClientMessageApplicationPeriodicCheck *)self appBundleIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"BAApplicationIdentifier"];
}

@end
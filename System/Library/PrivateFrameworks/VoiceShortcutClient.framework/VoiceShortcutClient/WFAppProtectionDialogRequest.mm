@interface WFAppProtectionDialogRequest
- (WFAppProtectionDialogRequest)initWithAppBundleIdentifier:(id)identifier;
- (WFAppProtectionDialogRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppProtectionDialogRequest

- (WFAppProtectionDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFAppProtectionDialogRequest;
  v5 = [(WFDialogRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFAppProtectionDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFAppProtectionDialogRequest *)self bundleIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleIdentifier"];
}

- (WFAppProtectionDialogRequest)initWithAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[WFDialogAttribution alloc] initWithTitle:0 icon:0];
  v10.receiver = self;
  v10.super_class = WFAppProtectionDialogRequest;
  v7 = [(WFDialogRequest *)&v10 initWithAttribution:v6 prompt:0];

  if (v7)
  {
    objc_storeStrong(&v7->_bundleIdentifier, identifier);
    v8 = v7;
  }

  return v7;
}

@end
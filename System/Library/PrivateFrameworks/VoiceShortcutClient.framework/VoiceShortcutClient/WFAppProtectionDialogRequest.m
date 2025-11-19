@interface WFAppProtectionDialogRequest
- (WFAppProtectionDialogRequest)initWithAppBundleIdentifier:(id)a3;
- (WFAppProtectionDialogRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAppProtectionDialogRequest

- (WFAppProtectionDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFAppProtectionDialogRequest;
  v5 = [(WFDialogRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFAppProtectionDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v6 encodeWithCoder:v4];
  v5 = [(WFAppProtectionDialogRequest *)self bundleIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];
}

- (WFAppProtectionDialogRequest)initWithAppBundleIdentifier:(id)a3
{
  v5 = a3;
  v6 = [[WFDialogAttribution alloc] initWithTitle:0 icon:0];
  v10.receiver = self;
  v10.super_class = WFAppProtectionDialogRequest;
  v7 = [(WFDialogRequest *)&v10 initWithAttribution:v6 prompt:0];

  if (v7)
  {
    objc_storeStrong(&v7->_bundleIdentifier, a3);
    v8 = v7;
  }

  return v7;
}

@end
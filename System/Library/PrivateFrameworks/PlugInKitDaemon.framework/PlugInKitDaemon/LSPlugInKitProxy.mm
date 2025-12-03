@interface LSPlugInKitProxy
- (id)launchdIdentifier;
- (id)launchdVersion;
@end

@implementation LSPlugInKitProxy

- (id)launchdIdentifier
{
  bundleIdentifier = [(LSPlugInKitProxy *)self bundleIdentifier];

  return bundleIdentifier;
}

- (id)launchdVersion
{
  bundleVersion = [(LSPlugInKitProxy *)self bundleVersion];

  return bundleVersion;
}

@end
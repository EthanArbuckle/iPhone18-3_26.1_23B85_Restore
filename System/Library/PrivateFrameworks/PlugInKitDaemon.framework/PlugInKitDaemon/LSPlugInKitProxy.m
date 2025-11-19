@interface LSPlugInKitProxy
- (id)launchdIdentifier;
- (id)launchdVersion;
@end

@implementation LSPlugInKitProxy

- (id)launchdIdentifier
{
  v2 = [(LSPlugInKitProxy *)self bundleIdentifier];

  return v2;
}

- (id)launchdVersion
{
  v2 = [(LSPlugInKitProxy *)self bundleVersion];

  return v2;
}

@end
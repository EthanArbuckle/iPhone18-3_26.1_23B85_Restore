@interface NSExtension(UserNotificationsCore)
- (id)uns_extensionContainerBundleIdentifier;
- (id)uns_extensionContainerBundleProxy;
- (uint64_t)uns_isExtensionSessionBeingDebugged:()UserNotificationsCore;
@end

@implementation NSExtension(UserNotificationsCore)

- (id)uns_extensionContainerBundleProxy
{
  v1 = MEMORY[0x1E6963678];
  identifier = [self identifier];
  v3 = [v1 pluginKitProxyForIdentifier:identifier];
  containingBundle = [v3 containingBundle];

  return containingBundle;
}

- (id)uns_extensionContainerBundleIdentifier
{
  uns_extensionContainerBundleProxy = [self uns_extensionContainerBundleProxy];
  bundleIdentifier = [uns_extensionContainerBundleProxy bundleIdentifier];

  return bundleIdentifier;
}

- (uint64_t)uns_isExtensionSessionBeingDebugged:()UserNotificationsCore
{
  v1 = [self pidForRequestIdentifier:?];

  return MEMORY[0x1EEDF0218](v1);
}

@end
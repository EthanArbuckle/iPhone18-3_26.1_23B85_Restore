@interface NSExtension(UserNotificationsCore)
- (id)uns_extensionContainerBundleIdentifier;
- (id)uns_extensionContainerBundleProxy;
- (uint64_t)uns_isExtensionSessionBeingDebugged:()UserNotificationsCore;
@end

@implementation NSExtension(UserNotificationsCore)

- (id)uns_extensionContainerBundleProxy
{
  v1 = MEMORY[0x1E6963678];
  v2 = [a1 identifier];
  v3 = [v1 pluginKitProxyForIdentifier:v2];
  v4 = [v3 containingBundle];

  return v4;
}

- (id)uns_extensionContainerBundleIdentifier
{
  v1 = [a1 uns_extensionContainerBundleProxy];
  v2 = [v1 bundleIdentifier];

  return v2;
}

- (uint64_t)uns_isExtensionSessionBeingDebugged:()UserNotificationsCore
{
  v1 = [a1 pidForRequestIdentifier:?];

  return MEMORY[0x1EEDF0218](v1);
}

@end
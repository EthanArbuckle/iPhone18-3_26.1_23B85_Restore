@interface RBLaunchdInterface
+ (id)interface;
- (id)instancePropertiesFromJobProperties:(id)properties;
- (id)instancePropertiesFromOverlay:(id)overlay;
- (id)jobWithPlist:(id)plist;
- (id)jobWithPlist:(id)plist domain:(id)domain;
- (id)submitExtensionWithExecutableURL:(id)l properties:(id)properties domain:(id)domain error:(id *)error;
@end

@implementation RBLaunchdInterface

+ (id)interface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__RBLaunchdInterface_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (interface_onceToken != -1)
  {
    dispatch_once(&interface_onceToken, block);
  }

  v2 = interface_singleton;

  return v2;
}

void __31__RBLaunchdInterface_interface__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___RBLaunchdInterface;
  v1 = [objc_msgSendSuper2(&v3 alloc)];
  v2 = interface_singleton;
  interface_singleton = v1;
}

- (id)submitExtensionWithExecutableURL:(id)l properties:(id)properties domain:(id)domain error:(id *)error
{
  lCopy = l;
  propertiesCopy = properties;
  domainCopy = domain;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [RBLaunchdInterface submitExtensionWithExecutableURL:a2 properties:self domain:? error:?];
  }

  v17 = 0;
  v14 = [MEMORY[0x277CEBF28] submitExtensionAtURL:lCopy properties:propertiesCopy domain:domainCopy error:&v17];
  v15 = v17;
  if (!(v14 | v15))
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLaunchdErrorDomain" code:45 userInfo:0];
  }

  if (error && !v14)
  {
    v15 = v15;
    *error = v15;
  }

  return v14;
}

- (id)jobWithPlist:(id)plist
{
  v3 = MEMORY[0x277CEBF28];
  plistCopy = plist;
  v5 = [[v3 alloc] initWithPlist:plistCopy];

  return v5;
}

- (id)jobWithPlist:(id)plist domain:(id)domain
{
  v5 = MEMORY[0x277CEBF28];
  domainCopy = domain;
  plistCopy = plist;
  v8 = [[v5 alloc] initWithPlist:plistCopy domain:domainCopy];

  return v8;
}

- (id)instancePropertiesFromOverlay:(id)overlay
{
  overlayCopy = overlay;
  v4 = objc_opt_new();
  v5 = [overlayCopy objectForKeyedSubscript:@"XPCService"];
  v6 = [v5 objectForKeyedSubscript:@"_SandboxProfile"];
  [v4 setSandboxProfile:v6];

  v7 = [overlayCopy objectForKeyedSubscript:@"XPCService"];

  v8 = [v7 objectForKeyedSubscript:@"EnvironmentVariables"];
  [v4 setEnvironmentVariables:v8];

  return v4;
}

- (id)instancePropertiesFromJobProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = objc_opt_new();
  sandboxProfile = [propertiesCopy sandboxProfile];
  [v4 setSandboxProfile:sandboxProfile];

  environmentVariables = [propertiesCopy environmentVariables];

  [v4 setEnvironmentVariables:environmentVariables];

  return v4;
}

- (void)submitExtensionWithExecutableURL:(uint64_t)a1 properties:(uint64_t)a2 domain:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
}

@end
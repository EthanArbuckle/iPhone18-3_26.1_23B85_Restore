@interface RBLaunchdInterface
+ (id)interface;
- (id)instancePropertiesFromJobProperties:(id)a3;
- (id)instancePropertiesFromOverlay:(id)a3;
- (id)jobWithPlist:(id)a3;
- (id)jobWithPlist:(id)a3 domain:(id)a4;
- (id)submitExtensionWithExecutableURL:(id)a3 properties:(id)a4 domain:(id)a5 error:(id *)a6;
@end

@implementation RBLaunchdInterface

+ (id)interface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__RBLaunchdInterface_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)submitExtensionWithExecutableURL:(id)a3 properties:(id)a4 domain:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [RBLaunchdInterface submitExtensionWithExecutableURL:a2 properties:self domain:? error:?];
  }

  v17 = 0;
  v14 = [MEMORY[0x277CEBF28] submitExtensionAtURL:v11 properties:v12 domain:v13 error:&v17];
  v15 = v17;
  if (!(v14 | v15))
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSLaunchdErrorDomain" code:45 userInfo:0];
  }

  if (a6 && !v14)
  {
    v15 = v15;
    *a6 = v15;
  }

  return v14;
}

- (id)jobWithPlist:(id)a3
{
  v3 = MEMORY[0x277CEBF28];
  v4 = a3;
  v5 = [[v3 alloc] initWithPlist:v4];

  return v5;
}

- (id)jobWithPlist:(id)a3 domain:(id)a4
{
  v5 = MEMORY[0x277CEBF28];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithPlist:v7 domain:v6];

  return v8;
}

- (id)instancePropertiesFromOverlay:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"XPCService"];
  v6 = [v5 objectForKeyedSubscript:@"_SandboxProfile"];
  [v4 setSandboxProfile:v6];

  v7 = [v3 objectForKeyedSubscript:@"XPCService"];

  v8 = [v7 objectForKeyedSubscript:@"EnvironmentVariables"];
  [v4 setEnvironmentVariables:v8];

  return v4;
}

- (id)instancePropertiesFromJobProperties:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 sandboxProfile];
  [v4 setSandboxProfile:v5];

  v6 = [v3 environmentVariables];

  [v4 setEnvironmentVariables:v6];

  return v4;
}

- (void)submitExtensionWithExecutableURL:(uint64_t)a1 properties:(uint64_t)a2 domain:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
}

@end
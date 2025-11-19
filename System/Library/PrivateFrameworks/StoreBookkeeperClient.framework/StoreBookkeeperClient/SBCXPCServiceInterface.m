@interface SBCXPCServiceInterface
+ (id)newListener;
+ (id)serviceClientInterface;
+ (id)serviceInterface;
+ (id)serviceName;
- (id)newServiceConnection;
@end

@implementation SBCXPCServiceInterface

+ (id)serviceClientInterface
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBCXPCService.m" lineNumber:134 description:{@"Subclass %@ must implement +%@", v6, v7}];

  return 0;
}

+ (id)serviceInterface
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBCXPCService.m" lineNumber:128 description:{@"Subclass %@ must implement +%@", v6, v7}];

  return 0;
}

+ (id)serviceName
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBCXPCService.m" lineNumber:122 description:{@"Subclass %@ must implement +%@", v6, v7}];

  return 0;
}

+ (id)newListener
{
  v2 = [a1 serviceName];
  v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v2];

  return v3;
}

- (id)newServiceConnection
{
  v2 = [objc_opt_class() serviceName];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v2 options:0];
  v4 = [objc_opt_class() serviceInterface];
  [v3 setRemoteObjectInterface:v4];

  v5 = [objc_opt_class() serviceClientInterface];
  [v3 setExportedInterface:v5];

  return v3;
}

@end
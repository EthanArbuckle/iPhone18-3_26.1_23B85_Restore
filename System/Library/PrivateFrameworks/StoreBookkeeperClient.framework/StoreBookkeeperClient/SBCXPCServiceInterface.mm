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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBCXPCService.m" lineNumber:134 description:{@"Subclass %@ must implement +%@", v6, v7}];

  return 0;
}

+ (id)serviceInterface
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBCXPCService.m" lineNumber:128 description:{@"Subclass %@ must implement +%@", v6, v7}];

  return 0;
}

+ (id)serviceName
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBCXPCService.m" lineNumber:122 description:{@"Subclass %@ must implement +%@", v6, v7}];

  return 0;
}

+ (id)newListener
{
  serviceName = [self serviceName];
  v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:serviceName];

  return v3;
}

- (id)newServiceConnection
{
  serviceName = [objc_opt_class() serviceName];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:serviceName options:0];
  serviceInterface = [objc_opt_class() serviceInterface];
  [v3 setRemoteObjectInterface:serviceInterface];

  serviceClientInterface = [objc_opt_class() serviceClientInterface];
  [v3 setExportedInterface:serviceClientInterface];

  return v3;
}

@end
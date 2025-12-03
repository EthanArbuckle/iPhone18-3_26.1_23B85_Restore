@interface _UIViewServiceViewControllerDeputyXPCInterface
+ (id)interfaceWithExportedInterface:(id)interface remoteViewControllerInterface:(id)controllerInterface;
@end

@implementation _UIViewServiceViewControllerDeputyXPCInterface

+ (id)interfaceWithExportedInterface:(id)interface remoteViewControllerInterface:(id)controllerInterface
{
  interfaceCopy = interface;
  controllerInterfaceCopy = controllerInterface;
  v7 = objc_alloc_init(_UIViewServiceViewControllerDeputyXPCInterface);
  exportedInterface = v7->_exportedInterface;
  v7->_exportedInterface = interfaceCopy;
  v9 = interfaceCopy;

  remoteViewControllerInterface = v7->_remoteViewControllerInterface;
  v7->_remoteViewControllerInterface = controllerInterfaceCopy;

  return v7;
}

@end
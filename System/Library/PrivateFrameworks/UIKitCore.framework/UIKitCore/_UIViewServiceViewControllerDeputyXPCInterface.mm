@interface _UIViewServiceViewControllerDeputyXPCInterface
+ (id)interfaceWithExportedInterface:(id)a3 remoteViewControllerInterface:(id)a4;
@end

@implementation _UIViewServiceViewControllerDeputyXPCInterface

+ (id)interfaceWithExportedInterface:(id)a3 remoteViewControllerInterface:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_UIViewServiceViewControllerDeputyXPCInterface);
  exportedInterface = v7->_exportedInterface;
  v7->_exportedInterface = v5;
  v9 = v5;

  remoteViewControllerInterface = v7->_remoteViewControllerInterface;
  v7->_remoteViewControllerInterface = v6;

  return v7;
}

@end
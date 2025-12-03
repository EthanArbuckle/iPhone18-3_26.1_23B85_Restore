@interface _UISecureControlService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_UISecureControlService)init;
@end

@implementation _UISecureControlService

- (_UISecureControlService)init
{
  v8.receiver = self;
  v8.super_class = _UISecureControlService;
  v2 = [(_UISecureControlService *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(_UISecureControlSizeTool);
    sizeTool = v2->_sizeTool;
    v2->_sizeTool = v3;

    v5 = [[UISSlotMachine alloc] initWithSlotDrawer:v2->_sizeTool options:3];
    slotMachine = v2->_slotMachine;
    v2->_slotMachine = v5;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = UISSecureControlServiceInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

@end
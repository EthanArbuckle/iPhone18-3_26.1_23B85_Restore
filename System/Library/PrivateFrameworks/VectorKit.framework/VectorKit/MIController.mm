@interface MIController
+ (id)sharedController;
- (MIController)init;
- (void)activateController:(id)controller;
- (void)deactivateController;
- (void)decodeDebugTreeData:(id)data;
- (void)handleXPCEvent:(id)event;
- (void)recievedData:(id)data;
- (void)sendData:(id)data;
@end

@implementation MIController

- (void)decodeDebugTreeData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKey:@"Client Request ID"];
  v17 = [dataCopy objectForKey:@"Data Request"];
  v6 = objc_alloc_init(VKDebugTree);
  [(VKDebugTree *)v6 setOptions:v17];
  [(VKDebugTree *)v6 populateData:self->_mapView];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v5 forKey:@"Data Response ID"];
  carDisplayType = [(VKMapView *)self->_mapView carDisplayType];
  if (carDisplayType > 2)
  {
    v9 = "none";
  }

  else
  {
    v9 = off_1E7B306B0[carDisplayType];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v17}];
  [dictionary setObject:v10 forKey:@"Display Type"];

  logTree = [(VKDebugTree *)v6 logTree];
  v12 = [logTree dataUsingEncoding:4];
  v19 = 0;
  v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:&v19];
  v14 = v5;
  v15 = v19;
  [dictionary setObject:v13 forKey:@"Data"];
  v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:0];
  [(MIController *)self sendData:v16];
}

- (void)sendData:(id)data
{
  dataCopy = data;
  if (self->_connection)
  {
    v7 = dataCopy;
    v5 = CFDataCreate(0, [v7 bytes], objc_msgSend(v7, "length"));
    v6 = _CFXPCCreateXPCMessageWithCFObject();
    xpc_connection_send_message(self->_connection, v6);
    CFRelease(v5);

    dataCopy = v7;
  }
}

- (void)recievedData:(id)data
{
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:0];
  if (v4)
  {
    [(MIController *)self decodeDebugTreeData:v4];
  }
}

- (void)handleXPCEvent:(id)event
{
  eventCopy = event;
  v4 = MEMORY[0x1B8C632E0]();
  if (v4 == MEMORY[0x1E69E9E80])
  {
    v6 = _CFXPCCreateCFObjectFromXPCMessage();
    [(MIController *)self recievedData:v6];
    CFRelease(v6);
  }

  else if (v4 == MEMORY[0x1E69E9E98] && self->_isActive)
  {
    v5 = MEMORY[0x1B8C632D0](eventCopy);
    free(v5);
    [(MIController *)self deactivateController];
  }
}

- (void)deactivateController
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v4 = self->_connection;
    self->_connection = 0;
  }

  self->_isActive = 0;
}

- (void)activateController:(id)controller
{
  controllerCopy = controller;
  objc_storeStrong(&self->_mapView, controller);
  mach_service = xpc_connection_create_mach_service("com.apple.mapinspectord", self->_queue, 2uLL);
  connection = self->_connection;
  self->_connection = mach_service;

  v8 = self->_connection;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __35__MIController_activateController___block_invoke;
  handler[3] = &unk_1E7B3A408;
  handler[4] = self;
  xpc_connection_set_event_handler(v8, handler);
  xpc_connection_resume(self->_connection);
  [(MIController *)self sendData:0];
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:&unk_1F2A88848 format:200 options:0 error:0];
  [(MIController *)self sendData:v9];
  self->_isActive = 1;
}

- (MIController)init
{
  v8.receiver = self;
  v8.super_class = MIController;
  v2 = [(MIController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Maps.MIController", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    connection = v2->_connection;
    v2->_connection = 0;

    v2->_isActive = 0;
  }

  return v2;
}

+ (id)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MIController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MIController sharedController]::onceToken != -1)
  {
    dispatch_once(&+[MIController sharedController]::onceToken, block);
  }

  v2 = +[MIController sharedController]::sharedController;

  return v2;
}

void __32__MIController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[MIController sharedController]::sharedController;
  +[MIController sharedController]::sharedController = v1;
}

@end
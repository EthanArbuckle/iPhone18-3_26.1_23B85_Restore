@interface TIPreferencesControllerService
+ (id)sharedPreferencesController;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TIPreferencesControllerService)init;
- (void)dealloc;
@end

@implementation TIPreferencesControllerService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = objc_alloc_init(TIPreferencesControllerServiceHandler);
  [connectionCopy setExportedObject:v6];

  v7 = +[TIPreferencesControllerClient serviceInterface];
  [connectionCopy setExportedInterface:v7];

  dispatchQueue = [(TIPreferencesControllerService *)self dispatchQueue];
  [connectionCopy _setQueue:dispatchQueue];

  [connectionCopy resume];
  return 1;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = TIPreferencesControllerService;
  [(TIPreferencesControllerService *)&v3 dealloc];
}

- (TIPreferencesControllerService)init
{
  v9.receiver = self;
  v9.super_class = TIPreferencesControllerService;
  v2 = [(TIPreferencesControllerService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.preferences-service", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.TextInput.preferences"];
    listener = v2->_listener;
    v2->_listener = v6;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener _setQueue:v2->_dispatchQueue];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

+ (id)sharedPreferencesController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__TIPreferencesControllerService_sharedPreferencesController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedPreferencesController_once_806 != -1)
  {
    dispatch_once(&sharedPreferencesController_once_806, block);
  }

  v2 = sharedPreferencesController_sharedController_807;

  return v2;
}

uint64_t __61__TIPreferencesControllerService_sharedPreferencesController__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedPreferencesController_sharedController_807;
  sharedPreferencesController_sharedController_807 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
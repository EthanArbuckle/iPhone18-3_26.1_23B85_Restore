@interface UIKeyboardUIService
+ (id)serviceInterface;
+ (id)sharedService;
- (CAContext)context;
- (UIKeyboardUIService)init;
- (int)createSlot:(CGSize)slot;
- (void)clearSlots;
- (void)createContext;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation UIKeyboardUIService

void __27__UIKeyboardUIService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.inputservice.keyboardui"];
  [v3 setService:@"com.apple.inputservice.keyboardui"];
  [v3 setDelegate:*(a1 + 32)];
}

- (UIKeyboardUIService)init
{
  v17.receiver = self;
  v17.super_class = UIKeyboardUIService;
  v2 = [(UIKeyboardUIService *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.inputservice.keyboardui", v4);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    slots = v2->_slots;
    v2->_slots = v7;

    v9 = MEMORY[0x1E698F4B8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __27__UIKeyboardUIService_init__block_invoke;
    v15[3] = &unk_1E711FFF0;
    v10 = v2;
    v16 = v10;
    v11 = [v9 listenerWithConfigurator:v15];
    v12 = v10[1];
    v10[1] = v11;

    [v10[1] activate];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_clearSlots name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  }

  return v2;
}

+ (id)sharedService
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  [(UIKeyboardUIService *)self clearSlots];
  v3.receiver = self;
  v3.super_class = UIKeyboardUIService;
  [(UIKeyboardUIService *)&v3 dealloc];
}

- (void)clearSlots
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_slots;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        context = [(UIKeyboardUIService *)self context];
        [context deleteSlot:{objc_msgSend(v8, "unsignedIntValue")}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

+ (id)serviceInterface
{
  if (qword_1ED4A1028 != -1)
  {
    dispatch_once(&qword_1ED4A1028, &__block_literal_global_13_4);
  }

  v3 = qword_1ED4A1020;

  return v3;
}

void __39__UIKeyboardUIService_serviceInterface__block_invoke()
{
  v4 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"com.apple.inputservice.keyboardui"];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F00B6058];
  [v4 setServer:v0];

  v1 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F016D710];
  [v4 setClient:v1];

  [v4 setClientMessagingExpectation:1];
  v2 = [v4 copy];
  v3 = qword_1ED4A1020;
  qword_1ED4A1020 = v2;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v7 = self->_dispatchQueue;
  serviceInterface = [objc_opt_class() serviceInterface];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __65__UIKeyboardUIService_listener_didReceiveConnection_withContext___block_invoke;
  v15 = &unk_1E7123298;
  selfCopy = self;
  v17 = connectionCopy;
  v18 = v7;
  v19 = serviceInterface;
  v9 = serviceInterface;
  v10 = v7;
  v11 = connectionCopy;
  [v11 configureConnection:&v12];
  [v11 activate];
}

void __65__UIKeyboardUIService_listener_didReceiveConnection_withContext___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v5 = [[UIKeyboardUIHandle alloc] initWithService:a1[4] connection:a1[5]];
  [v3 setTargetQueue:a1[6]];
  v4 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v4];

  [v3 setInterface:a1[7]];
  [v3 setInterfaceTarget:v5];
  [v3 setInvalidationHandler:&__block_literal_global_26_4];
  [v3 setInterruptionHandler:&__block_literal_global_29_6];
}

void __65__UIKeyboardUIService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = KeyboardUIServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection: %@", &v4, 0xCu);
  }
}

void __65__UIKeyboardUIService_listener_didReceiveConnection_withContext___block_invoke_27(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = KeyboardUIServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Interrupting connection: %@", &v4, 0xCu);
  }

  [v2 invalidate];
}

- (void)createContext
{
  v10[5] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E4D0];
  v4 = *MEMORY[0x1E69796A0];
  v9[0] = *MEMORY[0x1E69796C0];
  v9[1] = v4;
  v10[0] = v3;
  v10[1] = @"SnapshotContext";
  v5 = *MEMORY[0x1E69796B8];
  v9[2] = *MEMORY[0x1E69796B0];
  v9[3] = v5;
  v10[2] = v3;
  v10[3] = v3;
  v9[4] = *MEMORY[0x1E6979690];
  v10[4] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v7 = [MEMORY[0x1E6979320] remoteContextWithOptions:v6];
  context = self->_context;
  self->_context = v7;
}

- (CAContext)context
{
  context = self->_context;
  if (!context)
  {
    [(UIKeyboardUIService *)self createContext];
    context = self->_context;
  }

  return context;
}

- (int)createSlot:(CGSize)slot
{
  height = slot.height;
  width = slot.width;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(NSMutableArray *)self->_slots count]>= 3)
  {
    firstObject = [(NSMutableArray *)self->_slots firstObject];
    unsignedIntValue = [firstObject unsignedIntValue];

    context = [(UIKeyboardUIService *)self context];
    [context deleteSlot:unsignedIntValue];

    [(NSMutableArray *)self->_slots removeObjectAtIndex:0];
  }

  context2 = [(UIKeyboardUIService *)self context];
  v10 = [context2 createImageSlot:1 hasAlpha:{width, height}];

  slots = self->_slots;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  [(NSMutableArray *)slots addObject:v12];

  return v10;
}

@end
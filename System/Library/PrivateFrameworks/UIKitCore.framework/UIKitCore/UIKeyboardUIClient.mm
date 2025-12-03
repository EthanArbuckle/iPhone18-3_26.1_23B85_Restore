@interface UIKeyboardUIClient
+ (id)serviceInterface;
+ (id)sharedInstance;
- (UIKeyboardUIClient)init;
- (id)snapshotViewForOptions:(unint64_t)options;
- (void)_initConnectionIfNeeded;
- (void)dealloc;
- (void)setKeyboardAlpha:(double)alpha force:(BOOL)force;
@end

@implementation UIKeyboardUIClient

+ (id)serviceInterface
{
  if (qword_1ED49F6E8 != -1)
  {
    dispatch_once(&qword_1ED49F6E8, &__block_literal_global_4_10);
  }

  v3 = qword_1ED49F6E0;

  return v3;
}

void __38__UIKeyboardUIClient_serviceInterface__block_invoke()
{
  v4 = [MEMORY[0x1E698F470] interfaceWithIdentifier:0x1EFBA0590];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F00B6058];
  [v4 setServer:v0];

  v1 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F016D710];
  [v4 setClient:v1];

  [v4 setClientMessagingExpectation:1];
  v2 = [v4 copy];
  v3 = qword_1ED49F6E0;
  qword_1ED49F6E0 = v2;
}

+ (id)sharedInstance
{
  if (qword_1ED49F6F0 != -1)
  {
    dispatch_once(&qword_1ED49F6F0, &__block_literal_global_12_6);
  }

  v3 = qword_1ED49F6F8;

  return v3;
}

void __36__UIKeyboardUIClient_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(UIKeyboardUIClient);
  v1 = qword_1ED49F6F8;
  qword_1ED49F6F8 = v0;
}

- (UIKeyboardUIClient)init
{
  v5.receiver = self;
  v5.super_class = UIKeyboardUIClient;
  v2 = [(UIKeyboardUIClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIKeyboardUIClient *)v2 _initConnectionIfNeeded];
  }

  return v3;
}

- (void)dealloc
{
  [(BSServiceConnectionClient *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = UIKeyboardUIClient;
  [(UIKeyboardUIClient *)&v4 dealloc];
}

- (void)_initConnectionIfNeeded
{
  location[3] = *MEMORY[0x1E69E9840];
  if (!self->_connection)
  {
    v3 = [MEMORY[0x1E698F498] endpointForMachName:0x1EFBA0590 service:0x1EFBA0590 instance:0];
    if (v3)
    {
      serviceInterface = [objc_opt_class() serviceInterface];
      objc_initWeak(location, self);
      v5 = KeyboardUIClientLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Trying to establish BSServiceConnection to keyboard UI service.", buf, 2u);
      }

      v6 = [MEMORY[0x1E698F490] connectionWithEndpoint:v3];
      connection = self->_connection;
      self->_connection = v6;

      v8 = self->_connection;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __45__UIKeyboardUIClient__initConnectionIfNeeded__block_invoke;
      v15[3] = &unk_1E7118EB8;
      v9 = serviceInterface;
      v16 = v9;
      selfCopy = self;
      objc_copyWeak(&v18, location);
      [(BSServiceConnectionClient *)v8 configureConnection:v15];
      [(BSServiceConnectionClient *)self->_connection activate];
      v10 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
      v11 = self->_connection;
      v20 = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      v13 = [(BSServiceConnectionClient *)v11 remoteTargetWithLaunchingAssertionAttributes:v12];
      remoteTarget = self->_remoteTarget;
      self->_remoteTarget = v13;

      objc_destroyWeak(&v18);
      objc_destroyWeak(location);
    }

    else
    {
      v9 = KeyboardUIClientLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = @"com.apple.inputservice.keyboardui";
        _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Failed to create endpoint for %@", location, 0xCu);
      }
    }
  }
}

void __45__UIKeyboardUIClient__initConnectionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTargetQueue:MEMORY[0x1E69E96A0]];
  v4 = [MEMORY[0x1E698F500] userInteractive];
  [v3 setServiceQuality:v4];

  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  [v3 setActivationHandler:&__block_literal_global_22_1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__UIKeyboardUIClient__initConnectionIfNeeded__block_invoke_23;
  v7[3] = &unk_1E7118E90;
  objc_copyWeak(&v8, (a1 + 48));
  [v3 setInterruptionHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__UIKeyboardUIClient__initConnectionIfNeeded__block_invoke_24;
  v5[3] = &unk_1E7118E90;
  objc_copyWeak(&v6, (a1 + 48));
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void __45__UIKeyboardUIClient__initConnectionIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = KeyboardUIClientLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "BSServiceConnection for keyboard UI is activated: %@", &v4, 0xCu);
  }
}

void __45__UIKeyboardUIClient__initConnectionIfNeeded__block_invoke_23(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = KeyboardUIClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "BSServiceConnection for keyboard UI was interrupted: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 1) invalidate];
    v7 = v6[1];
    v6[1] = 0;

    v8 = v6[2];
    v6[2] = 0;
  }
}

void __45__UIKeyboardUIClient__initConnectionIfNeeded__block_invoke_24(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = KeyboardUIClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "BSServiceConnection for keyboard UI was invalidated: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 1) invalidate];
    v7 = v6[1];
    v6[1] = 0;

    v8 = v6[2];
    v6[2] = 0;
  }
}

- (id)snapshotViewForOptions:(unint64_t)options
{
  [(UIKeyboardUIClient *)self _initConnectionIfNeeded];
  remoteTarget = self->_remoteTarget;
  if (remoteTarget && ([MEMORY[0x1E696AD98] numberWithUnsignedInteger:options], v6 = objc_claimAutoreleasedReturnValue(), -[UIKeyboardUIServiceProtocol snapshotForOptions:](remoteTarget, "snapshotForOptions:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = [UIKeyboardUISnapshotView alloc];
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
    [v7 size];
    v13 = [(UIView *)v8 initWithFrame:v9, v10, v11, v12];
    [(UIKeyboardUISnapshotView *)v13 setSnapshot:v7];
    v14 = KeyboardUIClientLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Received keyboard snapshot", buf, 2u);
    }
  }

  else
  {
    v15 = KeyboardUIClientLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Failed to retrieve snapshot.", v18, 2u);
    }

    v16 = [UIView alloc];
    v13 = [(UIView *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  return v13;
}

- (void)setKeyboardAlpha:(double)alpha force:(BOOL)force
{
  forceCopy = force;
  v16 = *MEMORY[0x1E69E9840];
  v7 = KeyboardUIClientLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218240;
    alphaCopy = alpha;
    v14 = 1024;
    v15 = forceCopy;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Setting keyboard alpha: %f, force=%d", &v12, 0x12u);
  }

  remoteTarget = self->_remoteTarget;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:alpha];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:forceCopy];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  [(UIKeyboardUIServiceProtocol *)remoteTarget setKeyboardAlpha:v9 force:v10 processId:v11];
}

@end
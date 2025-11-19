@interface SBSSystemApertureLayoutMonitor
- (SBSSystemApertureLayoutMonitor)init;
- (void)addObserver:(id)a3;
- (void)init;
- (void)invalidate;
- (void)removeObserver:(id)a3;
- (void)systemApertureLayoutDidChange:(id)a3;
@end

@implementation SBSSystemApertureLayoutMonitor

- (SBSSystemApertureLayoutMonitor)init
{
  v22.receiver = self;
  v22.super_class = SBSSystemApertureLayoutMonitor;
  v3 = [(SBSSystemApertureLayoutMonitor *)&v22 init];
  if (v3)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 isEqualToString:@"com.apple.springboard"];

    if (v6)
    {
      [(SBSSystemApertureLayoutMonitor *)a2 init];
    }

    v3->_isValid = 1;
    v7 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    observers = v3->_observers;
    v3->_observers = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v10;

    v12 = MEMORY[0x1E698F498];
    v13 = [MEMORY[0x1E698F498] defaultShellMachName];
    v14 = +[SBSSystemApertureLayoutMonitorServiceSpecification identifier];
    v15 = [v12 endpointForMachName:v13 service:v14 instance:0];

    v16 = [MEMORY[0x1E698F490] connectionWithEndpoint:v15];
    connection = v3->_connection;
    v3->_connection = v16;

    v18 = v3->_connection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __38__SBSSystemApertureLayoutMonitor_init__block_invoke;
    v20[3] = &unk_1E735ED88;
    v21 = v3;
    [(BSServiceConnection *)v18 configureConnection:v20];
    [(BSServiceConnection *)v3->_connection activate];
  }

  return v3;
}

void __38__SBSSystemApertureLayoutMonitor_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBSSystemApertureLayoutMonitorServiceSpecification interface];
  [v5 setInterface:v3];

  [v5 setInterfaceTarget:*(a1 + 32)];
  v4 = +[SBSSystemApertureLayoutMonitorServiceSpecification serviceQuality];
  [v5 setServiceQuality:v4];

  [v5 setTargetQueue:*(*(a1 + 32) + 16)];
  [v5 setInvalidationHandler:&__block_literal_global_46];
  [v5 setInterruptionHandler:&__block_literal_global_16];
}

void __38__SBSSystemApertureLayoutMonitor_init__block_invoke_2()
{
  v0 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __38__SBSSystemApertureLayoutMonitor_init__block_invoke_2_cold_1(v0);
  }
}

void __38__SBSSystemApertureLayoutMonitor_init__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__SBSSystemApertureLayoutMonitor_init__block_invoke_14_cold_1(v3);
  }

  [v2 activate];
}

- (void)invalidate
{
  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  [(NSPointerArray *)self->_observers compact];
  while ([(NSPointerArray *)self->_observers count])
  {
    [(NSPointerArray *)self->_observers removePointerAtIndex:[(NSPointerArray *)self->_observers count]- 1];
  }

  self->_isValid = 0;
}

- (void)addObserver:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(NSPointerArray *)self->_observers compact];
  v4 = [(NSPointerArray *)self->_observers count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while ([(NSPointerArray *)self->_observers pointerAtIndex:v6]!= v7)
    {
      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    [(NSPointerArray *)self->_observers addPointer:v7];
    if ([(NSArray *)self->_frames count])
    {
      [v7 systemApertureLayoutDidChange:self->_frames];
    }
  }
}

- (void)removeObserver:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(NSPointerArray *)self->_observers compact];
  v4 = [(NSPointerArray *)self->_observers count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while ([(NSPointerArray *)self->_observers pointerAtIndex:v6]!= v7)
    {
      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_observers removePointerAtIndex:v6];
  }

LABEL_7:
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__SBSSystemApertureLayoutMonitor_systemApertureLayoutDidChange___block_invoke;
  v6[3] = &unk_1E735F7F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __64__SBSSystemApertureLayoutMonitor_systemApertureLayoutDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (([*(*(a1 + 32) + 32) isEqualToArray:*(a1 + 40)] & 1) == 0)
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    [*(*(a1 + 32) + 24) compact];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [*(*(a1 + 32) + 24) copy];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 systemApertureLayoutDidChange:*(*(a1 + 32) + 32)];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSSystemApertureLayoutMonitor.m" lineNumber:42 description:{@"Within SpringBoard, use SBSystemApertureLayoutDidChangeNotification."}];
}

@end
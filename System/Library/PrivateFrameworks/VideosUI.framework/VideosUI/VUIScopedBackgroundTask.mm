@interface VUIScopedBackgroundTask
- (VUIScopedBackgroundTask)initWithIdentifier:(id)a3 expirationHandler:(id)a4;
- (void)_endTask;
- (void)dealloc;
@end

@implementation VUIScopedBackgroundTask

- (VUIScopedBackgroundTask)initWithIdentifier:(id)a3 expirationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = VUIScopedBackgroundTask;
  v8 = [(VUIScopedBackgroundTask *)&v22 init];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __64__VUIScopedBackgroundTask_initWithIdentifier_expirationHandler___block_invoke;
    v17 = &unk_1E872DE00;
    objc_copyWeak(&v20, &location);
    v9 = v6;
    v18 = v9;
    v19 = v7;
    v10 = _Block_copy(&v14);
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v12 = [v11 beginBackgroundTaskWithName:v9 expirationHandler:v10];

    [(VUIScopedBackgroundTask *)v8 setTaskIdentifier:v12];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __64__VUIScopedBackgroundTask_initWithIdentifier_expirationHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138412546;
      v7 = v4;
      v8 = 2048;
      v9 = [WeakRetained taskIdentifier];
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIScopedBackgroundTask with identifier %@ (%lu) expired. Ending background task", &v6, 0x16u);
    }

    [WeakRetained _endTask];
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

- (void)dealloc
{
  [(VUIScopedBackgroundTask *)self _endTask];
  v3.receiver = self;
  v3.super_class = VUIScopedBackgroundTask;
  [(VUIScopedBackgroundTask *)&v3 dealloc];
}

- (void)_endTask
{
  v3 = [(VUIScopedBackgroundTask *)self taskIdentifier];
  v4 = *MEMORY[0x1E69DDBE8];
  if (v3 != *MEMORY[0x1E69DDBE8])
  {
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 endBackgroundTask:{-[VUIScopedBackgroundTask taskIdentifier](self, "taskIdentifier")}];

    [(VUIScopedBackgroundTask *)self setTaskIdentifier:v4];
  }
}

@end
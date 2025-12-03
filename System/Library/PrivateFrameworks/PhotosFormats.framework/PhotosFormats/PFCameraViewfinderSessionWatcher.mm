@interface PFCameraViewfinderSessionWatcher
- (PFCameraViewfinderSessionWatcher)initWithDispatchQueue:(id)queue delegate:(id)delegate;
- (PFCameraViewfinderSessionWatcherDelegate)delegate;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionWillBegin:(id)begin;
- (void)dealloc;
- (void)stopWatching;
@end

@implementation PFCameraViewfinderSessionWatcher

- (PFCameraViewfinderSessionWatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  ++self->_counter;
  v5 = atomic_load(&self->_isCameraRunning);
  if (v5)
  {
    atomic_store(0, &self->_isCameraRunning);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained cameraWatcherDidChangeState:self];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = atomic_load(&self->_isCameraRunning);
    if (v7)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFCameraViewfinderSessionWatcher] viewfinderSessionDidEnd:, _isCameraRunning state: %@", &v9, 0xCu);
  }
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  ++self->_counter;
  v5 = atomic_load(&self->_isCameraRunning);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, &self->_isCameraRunning);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained cameraWatcherDidChangeState:self];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = atomic_load(&self->_isCameraRunning);
    if (v7)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFCameraViewfinderSessionWatcher] viewfinderSessionDidBegin:, _isCameraRunning state: %@", &v9, 0xCu);
  }
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionWillBegin:(id)begin
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v5 = atomic_load(&self->_isCameraRunning);
  if ((v5 & 1) == 0)
  {
    atomic_store(1u, &self->_isCameraRunning);
    ++self->_counter;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained cameraWatcherDidChangeState:self];

    counter = self->_counter;
    v8 = dispatch_time(0, 5000000000);
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__PFCameraViewfinderSessionWatcher_cameraViewfinder_viewfinderSessionWillBegin___block_invoke;
    v12[3] = &unk_1E7B653F8;
    v12[4] = self;
    v12[5] = counter;
    dispatch_after(v8, queue, v12);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v10 = atomic_load(&self->_isCameraRunning);
    if (v10)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFCameraViewfinderSessionWatcher] cameraViewfinder:viewfinderSessionWillBegin:, _isCameraRunning state: %@", buf, 0xCu);
  }
}

void __80__PFCameraViewfinderSessionWatcher_cameraViewfinder_viewfinderSessionWillBegin___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == *(v1 + 16))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFCameraViewfinderSessionWatcher] cameraViewfinder:viewfinderSessionWillBegin: called but session didn't begin 5s later, manually setting _isCameraRunning to NO", v4, 2u);
      v1 = *(a1 + 32);
    }

    atomic_store(0, (v1 + 32));
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained cameraWatcherDidChangeState:*(a1 + 32)];
  }
}

- (void)stopWatching
{
  [(FigCameraViewfinder *)self->_viewFinder setDelegate:0 queue:0];
  viewFinder = self->_viewFinder;

  [(FigCameraViewfinder *)viewFinder stop];
}

- (void)dealloc
{
  [(FigCameraViewfinder *)self->_viewFinder stop];
  v3.receiver = self;
  v3.super_class = PFCameraViewfinderSessionWatcher;
  [(PFCameraViewfinderSessionWatcher *)&v3 dealloc];
}

- (PFCameraViewfinderSessionWatcher)initWithDispatchQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PFCameraViewfinderSessionWatcher;
  v9 = [(PFCameraViewfinderSessionWatcher *)&v14 init];
  v10 = v9;
  if (v9)
  {
    atomic_store(0, &v9->_isCameraRunning);
    v9->_counter = 0;
    objc_storeStrong(&v9->_queue, queue);
    cameraViewfinder = [MEMORY[0x1E698F748] cameraViewfinder];
    viewFinder = v10->_viewFinder;
    v10->_viewFinder = cameraViewfinder;

    [(FigCameraViewfinder *)v10->_viewFinder setDelegate:v10 queue:queueCopy];
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end
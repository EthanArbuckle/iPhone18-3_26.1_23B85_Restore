@interface PXAutoloopVideoTask
- (NSError)error;
- (PXAutoloopVideoTask)init;
- (PXAutoloopVideoTaskDelegate)delegate;
- (double)progress;
- (int64_t)status;
- (void)_performIvarRead:(id)read;
- (void)_performIvarWrite:(id)write;
- (void)_reset;
- (void)performTaskWithInput:(id)input;
- (void)runWithInput:(id)input;
- (void)setDelegate:(id)delegate;
- (void)setError:(id)error;
- (void)setProgress:(double)progress;
- (void)setStatus:(int64_t)status;
- (void)setTemporaryFilesDirectory:(id)directory;
@end

@implementation PXAutoloopVideoTask

- (void)_performIvarWrite:(id)write
{
  ivarQueue = self->_ivarQueue;
  if (ivarQueue)
  {
    dispatch_barrier_sync(ivarQueue, write);
  }

  else
  {
    (*(write + 2))(write);
  }
}

- (void)_performIvarRead:(id)read
{
  readCopy = read;
  block = readCopy;
  if (self->_ivarQueue && (v5 = [(PXAutoloopVideoTask *)self _isOnIvarQueue], readCopy = block, !v5))
  {
    dispatch_sync(self->_ivarQueue, block);
  }

  else
  {
    (*(readCopy + 2))(readCopy);
  }
}

- (void)setStatus:(int64_t)status
{
  if ([(PXAutoloopVideoTask *)self status]!= status)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__PXAutoloopVideoTask_setStatus___block_invoke;
    v11[3] = &unk_1E77498A0;
    v11[4] = self;
    v11[5] = status;
    [(PXAutoloopVideoTask *)self _performIvarWrite:v11];
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33__PXAutoloopVideoTask_setStatus___block_invoke_2;
    v6[3] = &unk_1E7749A28;
    v6[4] = self;
    v6[5] = &v7;
    [(PXAutoloopVideoTask *)self _performIvarRead:v6];
    if (*(v8 + 24) == 1)
    {
      delegate = [(PXAutoloopVideoTask *)self delegate];
      [delegate autoloopVideoTaskStatusDidChange:self];
    }

    _Block_object_dispose(&v7, 8);
  }
}

- (int64_t)status
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__PXAutoloopVideoTask_status__block_invoke;
  v4[3] = &unk_1E7749A28;
  v4[4] = self;
  v4[5] = &v5;
  [(PXAutoloopVideoTask *)self _performIvarRead:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setProgress:(double)progress
{
  [(PXAutoloopVideoTask *)self progress];
  if (v5 != progress)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__PXAutoloopVideoTask_setProgress___block_invoke;
    v12[3] = &unk_1E77498A0;
    v12[4] = self;
    *&v12[5] = progress;
    [(PXAutoloopVideoTask *)self _performIvarWrite:v12];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__PXAutoloopVideoTask_setProgress___block_invoke_2;
    v7[3] = &unk_1E7749A28;
    v7[4] = self;
    v7[5] = &v8;
    [(PXAutoloopVideoTask *)self _performIvarRead:v7];
    if (*(v9 + 24) == 1)
    {
      delegate = [(PXAutoloopVideoTask *)self delegate];
      [delegate autoloopVideoTaskProgressDidChange:self];
    }

    _Block_object_dispose(&v8, 8);
  }
}

double __35__PXAutoloopVideoTask_setProgress___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 48) = result;
  return result;
}

- (double)progress
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__PXAutoloopVideoTask_progress__block_invoke;
  v4[3] = &unk_1E7749A28;
  v4[4] = self;
  v4[5] = &v5;
  [(PXAutoloopVideoTask *)self _performIvarRead:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double __31__PXAutoloopVideoTask_progress__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setError:(id)error
{
  errorCopy = error;
  error = [(PXAutoloopVideoTask *)self error];

  if (error != errorCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__PXAutoloopVideoTask_setError___block_invoke;
    v6[3] = &unk_1E774C620;
    v6[4] = self;
    v7 = errorCopy;
    [(PXAutoloopVideoTask *)self _performIvarWrite:v6];
  }
}

- (NSError)error
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__39298;
  v9 = __Block_byref_object_dispose__39299;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PXAutoloopVideoTask_error__block_invoke;
  v4[3] = &unk_1E7749A28;
  v4[4] = self;
  v4[5] = &v5;
  [(PXAutoloopVideoTask *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setTemporaryFilesDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = directoryCopy;
  if (self->_temporaryFilesDirectory != directoryCopy)
  {
    v9 = directoryCopy;
    v6 = [(NSString *)directoryCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      temporaryFilesDirectory = self->_temporaryFilesDirectory;
      self->_temporaryFilesDirectory = v7;

      v5 = v9;
    }
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(PXAutoloopVideoTask *)self delegate];

  if (delegate != delegateCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__PXAutoloopVideoTask_setDelegate___block_invoke;
    v6[3] = &unk_1E774C620;
    v6[4] = self;
    v7 = delegateCopy;
    [(PXAutoloopVideoTask *)self _performIvarWrite:v6];
  }
}

uint64_t __35__PXAutoloopVideoTask_setDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 32), *(a1 + 40));
  *(*(a1 + 32) + 64) = objc_opt_respondsToSelector() & 1;
  result = objc_opt_respondsToSelector();
  *(*(a1 + 32) + 65) = result & 1;
  return result;
}

- (PXAutoloopVideoTaskDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__39298;
  v9 = __Block_byref_object_dispose__39299;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__PXAutoloopVideoTask_delegate__block_invoke;
  v4[3] = &unk_1E7749A28;
  v4[4] = self;
  v4[5] = &v5;
  [(PXAutoloopVideoTask *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __31__PXAutoloopVideoTask_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)performTaskWithInput:(id)input
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAutoloopVideoTask.m" lineNumber:72 description:{@"The method %@ in %@ must be overridden.", v5, v7}];
}

- (void)runWithInput:(id)input
{
  inputCopy = input;
  if ([(PXAutoloopVideoTask *)self _isRunning])
  {
    [(PXAutoloopVideoTask *)self cancel];
  }

  [(PXAutoloopVideoTask *)self _reset];
  [(PXAutoloopVideoTask *)self setStatus:2];
  objc_initWeak(&location, self);
  performQueue = self->_performQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PXAutoloopVideoTask_runWithInput___block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v9, &location);
  v8 = inputCopy;
  v6 = inputCopy;
  dispatch_async(performQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __36__PXAutoloopVideoTask_runWithInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performTaskWithInput:*(a1 + 32)];
}

- (void)_reset
{
  [(PXAutoloopVideoTask *)self setStatus:0];
  [(PXAutoloopVideoTask *)self setProgress:0.0];

  [(PXAutoloopVideoTask *)self setError:0];
}

- (PXAutoloopVideoTask)init
{
  v10.receiver = self;
  v10.super_class = PXAutoloopVideoTask;
  v2 = [(PXAutoloopVideoTask *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.PXAutoloopVideoTask.perform", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_create("com.apple.PXAutoloopVideoTask.ivars", MEMORY[0x1E69E96A8]);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = MEMORY[0x1E696AD98];
    atomic_fetch_add(init_ivarQueueCounter, 1u);
    v8 = [v7 numberWithInt:?];
    *(v2 + 3) = v8;
    dispatch_queue_set_specific(*(v2 + 2), PXAutoloopVideoTaskIvarQueueContext, v8, 0);
    objc_storeWeak(v2 + 4, 0);
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;
  }

  return v2;
}

@end
@interface VUIMPMediaLibraryConnectOperation
- (VUIMPMediaLibraryConnectOperation)init;
- (VUIMPMediaLibraryConnectOperation)initWithMediaLibrary:(id)library;
- (void)_notifyClientOfProgress:(float)progress;
- (void)_startProgressTimer;
- (void)_stopProgressTimer;
- (void)executionDidBegin;
@end

@implementation VUIMPMediaLibraryConnectOperation

- (VUIMPMediaLibraryConnectOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMPMediaLibraryConnectOperation)initWithMediaLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  }

  v9.receiver = self;
  v9.super_class = VUIMPMediaLibraryConnectOperation;
  v6 = [(VUIMPMediaLibraryConnectOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaLibrary, library);
  }

  return v7;
}

- (void)executionDidBegin
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mediaLibrary = [(VUIMPMediaLibraryConnectOperation *)self mediaLibrary];
    name = [mediaLibrary name];
    *buf = 138412290;
    v10 = name;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Starting connection to %@", buf, 0xCu);
  }

  [(VUIMPMediaLibraryConnectOperation *)self _startProgressTimer];
  objc_initWeak(buf, self);
  mediaLibrary2 = [(VUIMPMediaLibraryConnectOperation *)self mediaLibrary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__VUIMPMediaLibraryConnectOperation_executionDidBegin__block_invoke;
  v7[3] = &unk_1E8736448;
  objc_copyWeak(&v8, buf);
  [mediaLibrary2 connectWithCompletionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __54__VUIMPMediaLibraryConnectOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setSuccess:v3 == 0];
    [v5 setError:v3];
    [v5 _stopProgressTimer];
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 mediaLibrary];
      v8 = [v7 name];
      v9 = VUIBoolLogString();
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Connect attempt finished to %@ (Success = %@)", &v10, 0x16u);
    }

    [v5 finishExecutionIfPossible];
  }
}

- (void)_startProgressTimer
{
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, 0);
  v4 = dispatch_time(0, 500000000);
  dispatch_source_set_timer(v3, v4, 0x1DCD6500uLL, 0);
  [(VUIMPMediaLibraryConnectOperation *)self setProgressTimer:v3];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__VUIMPMediaLibraryConnectOperation__startProgressTimer__block_invoke;
  v5[3] = &unk_1E872E4B8;
  objc_copyWeak(&v6, &location);
  dispatch_source_set_event_handler(v3, v5);
  dispatch_activate(v3);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__VUIMPMediaLibraryConnectOperation__startProgressTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained mediaLibrary];
    [v2 connectionProgress];
    v4 = v3;

    LODWORD(v5) = v4;
    [v6 _notifyClientOfProgress:v5];
    WeakRetained = v6;
  }
}

- (void)_stopProgressTimer
{
  source = [(VUIMPMediaLibraryConnectOperation *)self progressTimer];
  [(VUIMPMediaLibraryConnectOperation *)self setProgressTimer:0];
  dispatch_source_cancel(source);
}

- (void)_notifyClientOfProgress:(float)progress
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mediaLibrary = [(VUIMPMediaLibraryConnectOperation *)self mediaLibrary];
    name = [mediaLibrary name];
    *&v8 = progress;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    v12 = 138412546;
    v13 = name;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Connection progress to %@ (Progress = %@)", &v12, 0x16u);
  }

  progressBlock = [(VUIMPMediaLibraryConnectOperation *)self progressBlock];
  v11 = progressBlock;
  if (progressBlock)
  {
    (*(progressBlock + 16))(progressBlock, progress);
  }
}

@end
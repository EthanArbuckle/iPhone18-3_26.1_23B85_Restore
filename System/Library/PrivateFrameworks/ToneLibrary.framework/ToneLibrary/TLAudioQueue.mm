@interface TLAudioQueue
+ (TLAudioQueue)sharedAudioQueue;
- (BOOL)_shouldAssumeRunningOnAudioQueue;
- (id)_init;
- (void)assertNotRunningOnAudioQueue;
- (void)assertRunningOnAudioQueue;
- (void)performSynchronousTaskWithOptions:(unint64_t)options block:(id)block;
@end

@implementation TLAudioQueue

+ (TLAudioQueue)sharedAudioQueue
{
  if (sharedAudioQueue__TLAudioQueueSharedInstanceOnceToken != -1)
  {
    +[TLAudioQueue sharedAudioQueue];
  }

  v3 = sharedAudioQueue__TLAudioQueueSharedInstance;

  return v3;
}

uint64_t __32__TLAudioQueue_sharedAudioQueue__block_invoke()
{
  sharedAudioQueue__TLAudioQueueSharedInstance = [[TLAudioQueue alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v14.receiver = self;
  v14.super_class = TLAudioQueue;
  v2 = [(TLAudioQueue *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    bundleIdentifier = [v6 bundleIdentifier];
    v8 = [v5 stringWithFormat:@"%@.%@", bundleIdentifier, v4];

    v9 = dispatch_queue_create([v8 UTF8String], 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", v4, @"AssumeRunningOnAudioQueue"];
    assumeRunningOnAudioQueueThreadLocalStorageKey = v2->_assumeRunningOnAudioQueueThreadLocalStorageKey;
    v2->_assumeRunningOnAudioQueueThreadLocalStorageKey = v11;
  }

  return v2;
}

- (void)performSynchronousTaskWithOptions:(unint64_t)options block:(id)block
{
  if (options)
  {
    v6 = MEMORY[0x1E696AF00];
    blockCopy = block;
    currentThread = [v6 currentThread];
    blockCopy2 = [currentThread threadDictionary];

    v9 = self->_assumeRunningOnAudioQueueThreadLocalStorageKey;
    v10 = [blockCopy2 objectForKey:v9];
    [blockCopy2 setValue:MEMORY[0x1E695E118] forKey:v9];
    blockCopy[2](blockCopy);

    [blockCopy2 setValue:v10 forKey:v9];
  }

  else
  {
    serialQueue = self->_serialQueue;
    blockCopy2 = block;
    dispatch_sync(serialQueue, blockCopy2);
  }
}

- (void)assertRunningOnAudioQueue
{
  if (![(TLAudioQueue *)self _shouldAssumeRunningOnAudioQueue])
  {
    serialQueue = self->_serialQueue;

    dispatch_assert_queue_V2(serialQueue);
  }
}

- (void)assertNotRunningOnAudioQueue
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(TLAudioQueue *)self _shouldAssumeRunningOnAudioQueue])
  {
    v3 = TLLogGeneral();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

    if (v4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Utilities/TLAudioQueue.m"];
      v6 = TLLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v5 lastPathComponent];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v11 = 136381443;
        v12 = "[TLAudioQueue assertNotRunningOnAudioQueue]";
        v13 = 2113;
        v14 = lastPathComponent;
        v15 = 2049;
        v16 = 79;
        v17 = 2113;
        v18 = callStackSymbols;
        _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v11, 0x2Au);
      }
    }

    else
    {
      v5 = TLLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(TLToneStoreDownloadStoreServicesController *)v5 _assertRunningOnAccessQueue];
      }
    }

    v9 = TLLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TLAudioQueue *)v9 assertNotRunningOnAudioQueue];
    }
  }

  dispatch_assert_queue_not_V2(self->_serialQueue);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldAssumeRunningOnAudioQueue
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKey:self->_assumeRunningOnAudioQueueThreadLocalStorageKey];
  LOBYTE(currentThread) = [v5 BOOLValue];

  return currentThread;
}

@end
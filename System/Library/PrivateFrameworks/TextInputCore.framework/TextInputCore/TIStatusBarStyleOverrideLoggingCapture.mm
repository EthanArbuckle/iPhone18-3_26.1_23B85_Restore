@interface TIStatusBarStyleOverrideLoggingCapture
+ (int64_t)_decrementLoggingCaptureOverride;
+ (int64_t)_incrementLoggingCaptureOverride;
+ (void)_statusBarStyleOverrideLoggingCapture:(BOOL)capture;
- (TIStatusBarStyleOverrideLoggingCapture)init;
- (void)dealloc;
@end

@implementation TIStatusBarStyleOverrideLoggingCapture

- (void)dealloc
{
  [objc_opt_class() releaseLoggingCaptureOverride];
  v3.receiver = self;
  v3.super_class = TIStatusBarStyleOverrideLoggingCapture;
  [(TIStatusBarStyleOverrideLoggingCapture *)&v3 dealloc];
}

- (TIStatusBarStyleOverrideLoggingCapture)init
{
  v4.receiver = self;
  v4.super_class = TIStatusBarStyleOverrideLoggingCapture;
  v2 = [(TIStatusBarStyleOverrideLoggingCapture *)&v4 init];
  if (v2)
  {
    [objc_opt_class() acquireLoggingCaptureOverride];
  }

  return v2;
}

uint64_t __71__TIStatusBarStyleOverrideLoggingCapture_releaseLoggingCaptureOverride__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _decrementLoggingCaptureOverride];
  if (result == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _statusBarStyleOverrideLoggingCapture:0];
  }

  return result;
}

uint64_t __71__TIStatusBarStyleOverrideLoggingCapture_acquireLoggingCaptureOverride__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _incrementLoggingCaptureOverride];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _statusBarStyleOverrideLoggingCapture:1];
  }

  return result;
}

+ (void)_statusBarStyleOverrideLoggingCapture:(BOOL)capture
{
  captureCopy = capture;
  *&v19[5] = *MEMORY[0x277D85DE8];
  v4 = _sbsOverrideLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Release";
    if (captureCopy)
    {
      v5 = "Acquire";
    }

    v18 = 136315138;
    *v19 = v5;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEFAULT, "%s 'LoggingCapture' style override assertion", &v18, 0xCu);
  }

  v6 = _statusBarStyleOverrideLoggingCapture__pid;
  if (!_statusBarStyleOverrideLoggingCapture__pid)
  {
    v6 = getpid();
    _statusBarStyleOverrideLoggingCapture__pid = v6;
  }

  v7 = _statusBarStyleOverrideLoggingCapture__assertion;
  if (v6 && !_statusBarStyleOverrideLoggingCapture__assertion)
  {
    mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
    v9 = [mEMORY[0x277D6F470] BOOLForKey:54];

    if (v9)
    {
      v10 = 0x8000;
    }

    else
    {
      v10 = 0x200000;
    }

    v11 = [MEMORY[0x277D66C48] assertionWithStatusBarStyleOverrides:v10 forPID:_statusBarStyleOverrideLoggingCapture__pid exclusive:0 showsWhenForeground:1];
    v12 = _statusBarStyleOverrideLoggingCapture__assertion;
    _statusBarStyleOverrideLoggingCapture__assertion = v11;

    v6 = _statusBarStyleOverrideLoggingCapture__pid;
    v7 = _statusBarStyleOverrideLoggingCapture__assertion;
  }

  if (v6 && v7)
  {
    if (captureCopy)
    {
      if (_statusBarStyleOverrideLoggingCapture__timer)
      {
        [_statusBarStyleOverrideLoggingCapture__timer invalidate];
        v13 = _statusBarStyleOverrideLoggingCapture__timer;
        _statusBarStyleOverrideLoggingCapture__timer = 0;
      }

      if ((_statusBarStyleOverrideLoggingCapture__assertionAcquired & 1) == 0)
      {
        [_statusBarStyleOverrideLoggingCapture__assertion acquireWithHandler:&__block_literal_global_14382 invalidationHandler:&__block_literal_global_11];
        [_statusBarStyleOverrideLoggingCapture__assertion setStatusString:@"Recording Keyboard Data"];
      }
    }

    else if (_statusBarStyleOverrideLoggingCapture__assertionAcquired == 1 && !_statusBarStyleOverrideLoggingCapture__timer)
    {
      v16 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:&__block_literal_global_17_14385 block:2.0];
      v17 = _statusBarStyleOverrideLoggingCapture__timer;
      _statusBarStyleOverrideLoggingCapture__timer = v16;
    }
  }

  else
  {
    v14 = _sbsOverrideLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 67109376;
      v19[0] = _statusBarStyleOverrideLoggingCapture__pid;
      LOWORD(v19[1]) = 2048;
      *(&v19[1] + 2) = _statusBarStyleOverrideLoggingCapture__assertion;
      _os_log_error_impl(&dword_22CA55000, v14, OS_LOG_TYPE_ERROR, "Couldn't get pid %d or assertion %p.", &v18, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TIStatusBarStyleOverrideLoggingCapture__statusBarStyleOverrideLoggingCapture___block_invoke_14()
{
  result = [_statusBarStyleOverrideLoggingCapture__assertion invalidate];
  _statusBarStyleOverrideLoggingCapture__assertionAcquired = 0;
  return result;
}

void __80__TIStatusBarStyleOverrideLoggingCapture__statusBarStyleOverrideLoggingCapture___block_invoke_8()
{
  v0 = _sbsOverrideLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22CA55000, v0, OS_LOG_TYPE_DEFAULT, "'LoggingCapture' style override assertion was invalidated.", v1, 2u);
  }

  _statusBarStyleOverrideLoggingCapture__assertionAcquired = 0;
}

void __80__TIStatusBarStyleOverrideLoggingCapture__statusBarStyleOverrideLoggingCapture___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _sbsOverrideLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "Failed to acquire";
    if (a2)
    {
      v4 = "Acquired";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEFAULT, "%s 'LoggingCapture' style override assertion.", &v6, 0xCu);
  }

  _statusBarStyleOverrideLoggingCapture__assertionAcquired = a2;
  v5 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_decrementLoggingCaptureOverride
{
  _loggingCaptureOverrideCountPtr = [self _loggingCaptureOverrideCountPtr];
  v4 = *_loggingCaptureOverrideCountPtr;
  if (*_loggingCaptureOverrideCountPtr <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *_loggingCaptureOverrideCountPtr;
  }

  *[self _loggingCaptureOverrideCountPtr] = v5 - 1;
  return v4;
}

+ (int64_t)_incrementLoggingCaptureOverride
{
  v3 = *[self _loggingCaptureOverrideCountPtr];
  *[self _loggingCaptureOverrideCountPtr] = v3 + 1;
  return v3;
}

@end
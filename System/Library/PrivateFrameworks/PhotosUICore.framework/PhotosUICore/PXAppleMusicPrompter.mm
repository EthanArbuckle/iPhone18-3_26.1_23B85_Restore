@interface PXAppleMusicPrompter
+ (void)showPromptsIfNeededWithCompletion:(id)a3;
- (PXAppleMusicPrompter)initWithCompletion:(id)a3;
- (void)_handleAppleMusicPlaybackStatus:(int64_t)a3 error:(id)a4;
- (void)_handleTCCAccessResult:(unsigned __int8)a3;
- (void)_promptingFinished;
- (void)_requestAppleMusicPlaybackStatus;
- (void)_requestAppleMusicTCCAccessIfNeeded;
- (void)_start;
@end

@implementation PXAppleMusicPrompter

- (void)_promptingFinished
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXAppleMusicPrompter.m" lineNumber:97 description:{@"%s must be called on the main thread", "-[PXAppleMusicPrompter _promptingFinished]"}];
  }

  v6 = [(PXAppleMusicPrompter *)self completion];
  if (v6)
  {
    v6[2]();
  }

  v4 = _prompter;
  _prompter = 0;
}

- (void)_handleAppleMusicPlaybackStatus:(int64_t)a3 error:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXAppleMusicPrompter.m" lineNumber:87 description:{@"%s must be called on the main thread", "-[PXAppleMusicPrompter _handleAppleMusicPlaybackStatus:error:]"}];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    if ((a3 - 1) > 2)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_1E772D358[a3 - 1];
    }

    v9 = v8;
    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PXAppleMusicPrompter] Got Apple Music Playback Status: %@", buf, 0xCu);
  }

  if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PXAppleMusicPrompter] Got Apple Music Playback Status Error: %@", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PXAppleMusicPrompter] Because Apple Music playback status is not enabled, no further prompting is needed.", buf, 2u);
  }

  [(PXAppleMusicPrompter *)self _promptingFinished];
}

- (void)_requestAppleMusicPlaybackStatus
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PXAppleMusicPrompter] Checking Apple Music subscription status…", buf, 2u);
  }

  appleMusicStatusProvider = self->_appleMusicStatusProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PXAppleMusicPrompter__requestAppleMusicPlaybackStatus__block_invoke;
  v4[3] = &unk_1E772D3A0;
  v4[4] = self;
  [(PXAppleMusicStatusProvider *)appleMusicStatusProvider requestStatusForCapability:1 handler:v4];
}

- (void)_handleTCCAccessResult:(unsigned __int8)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXAppleMusicPrompter.m" lineNumber:67 description:{@"%s must be called on the main thread", "-[PXAppleMusicPrompter _handleTCCAccessResult:]"}];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = @"YES";
    if (!v3)
    {
      v6 = @"NO";
    }

    v7 = v6;
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PXAppleMusicPrompter] Received Media Library TCC access request result: %@", buf, 0xCu);
  }

  if (v3)
  {
    [(PXAppleMusicPrompter *)self _requestAppleMusicPlaybackStatus];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PXAppleMusicPrompter] Because TCC access is not granted, no further prompting is needed.", buf, 2u);
    }

    [(PXAppleMusicPrompter *)self _promptingFinished];
  }
}

- (void)_requestAppleMusicTCCAccessIfNeeded
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXAppleMusicPrompter.m" lineNumber:57 description:{@"%s must be called on the main thread", "-[PXAppleMusicPrompter _requestAppleMusicTCCAccessIfNeeded]"}];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PXAppleMusicPrompter] Checking Media Library TCC Access…", buf, 2u);
  }

  TCCAccessRequest();
}

- (void)_start
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXAppleMusicPrompter.m" lineNumber:52 description:{@"%s must be called on the main thread", "-[PXAppleMusicPrompter _start]"}];
  }

  [(PXAppleMusicPrompter *)self _requestAppleMusicTCCAccessIfNeeded];
}

- (PXAppleMusicPrompter)initWithCompletion:(id)a3
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXAppleMusicPrompter.m" lineNumber:43 description:{@"%s must be called on the main thread", "-[PXAppleMusicPrompter initWithCompletion:]"}];
  }

  v10.receiver = self;
  v10.super_class = PXAppleMusicPrompter;
  v5 = [(PXAppleMusicPrompter *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(PXDefaultAppleMusicStatusProvider);
    appleMusicStatusProvider = v5->_appleMusicStatusProvider;
    v5->_appleMusicStatusProvider = v6;
  }

  return v5;
}

+ (void)showPromptsIfNeededWithCompletion:(id)a3
{
  v9 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PXAppleMusicPrompter.m" lineNumber:31 description:{@"%s must be called on the main thread", "+[PXAppleMusicPrompter showPromptsIfNeededWithCompletion:]"}];
  }

  if (_prompter)
  {
    v5 = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    (*(v9 + 2))(v9);
  }

  else
  {
    v6 = [[PXAppleMusicPrompter alloc] initWithCompletion:v9];
    v7 = _prompter;
    _prompter = v6;

    [_prompter _start];
  }

  v5 = v9;
LABEL_8:
}

@end
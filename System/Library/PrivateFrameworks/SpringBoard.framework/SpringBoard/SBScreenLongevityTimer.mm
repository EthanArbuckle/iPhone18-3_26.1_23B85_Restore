@interface SBScreenLongevityTimer
- (BOOL)_isValidCurrentTimer:(id)a3;
- (SBScreenLongevityTimer)init;
- (SBScreenLongevityTimerDelegate)delegate;
- (double)elapsedTime;
- (void)dealloc;
- (void)dimTimerFired;
- (void)invalidate;
- (void)scheduleFaceDetection;
- (void)start;
- (void)startFaceDetection;
@end

@implementation SBScreenLongevityTimer

- (SBScreenLongevityTimer)init
{
  v9.receiver = self;
  v9.super_class = SBScreenLongevityTimer;
  v2 = [(SBScreenLongevityTimer *)&v9 init];
  if (v2)
  {
    v3 = +[SBScreenLongevityDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v3;

    [(SBScreenLongevitySettings *)v2->_settings dimInterval];
    v2->_dimInterval = v5;
    [(SBScreenLongevitySettings *)v2->_settings waitInterval];
    v2->_waitInterval = v6;
    [(SBScreenLongevitySettings *)v2->_settings minimalFaceDetectionInterval];
    v2->_minimalFaceDetectionInterval = v7;
  }

  return v2;
}

- (void)dealloc
{
  [(SBScreenLongevityTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBScreenLongevityTimer;
  [(SBScreenLongevityTimer *)&v3 dealloc];
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(NSTimer *)self->_timer isValid])
  {
    v3 = SBLogScreenLongevityController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Dimming timer invalidate %{public}@", &v5, 0xCu);
    }

    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (double)elapsedTime
{
  v3 = [(NSTimer *)self->_timer isValid];
  result = 0.0;
  if (v3)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    return v5 - self->_startTime;
  }

  return result;
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = SBLogScreenLongevityController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Dimming timer start %{public}@", buf, 0xCu);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_startTime = v4;
  if (self->_waitInterval >= self->_dimInterval)
  {
    objc_initWeak(buf, self);
    v5 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__SBScreenLongevityTimer_start__block_invoke;
    block[3] = &unk_2783B0E88;
    block[4] = self;
    objc_copyWeak(&v11, buf);
    v6 = MEMORY[0x277D85CD0];
    v7 = block;
  }

  else
  {
    objc_initWeak(buf, self);
    v5 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__SBScreenLongevityTimer_start__block_invoke_3;
    v8[3] = &unk_2783B0E88;
    v8[4] = self;
    objc_copyWeak(&v9, buf);
    v6 = MEMORY[0x277D85CD0];
    v7 = v8;
  }

  dispatch_async(v6, v7);
  objc_destroyWeak(v5 + 5);
  objc_destroyWeak(buf);
}

void __31__SBScreenLongevityTimer_start__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = MEMORY[0x277CBEBB8];
  v5 = *(*(a1 + 32) + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__SBScreenLongevityTimer_start__block_invoke_2;
  v9[3] = &unk_2783AA438;
  objc_copyWeak(&v10, (a1 + 40));
  v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v9 block:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  objc_destroyWeak(&v10);
}

void __31__SBScreenLongevityTimer_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [WeakRetained _isValidCurrentTimer:v3];

  if (a1)
  {
    [WeakRetained dimTimerFired];
  }
}

void __31__SBScreenLongevityTimer_start__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = MEMORY[0x277CBEBB8];
  v5 = *(*(a1 + 32) + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__SBScreenLongevityTimer_start__block_invoke_4;
  v9[3] = &unk_2783AA438;
  objc_copyWeak(&v10, (a1 + 40));
  v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v9 block:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  objc_destroyWeak(&v10);
}

void __31__SBScreenLongevityTimer_start__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [WeakRetained _isValidCurrentTimer:v3];

  if (a1)
  {
    [WeakRetained startFaceDetection];
  }
}

- (void)startFaceDetection
{
  v6 = *MEMORY[0x277D85DE8];
  self->_currentFaceDetectionTimerInterval = self->_dimInterval - self->_waitInterval + self->_minimalFaceDetectionInterval;
  v3 = SBLogScreenLongevityController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Dimming timer start face detection %{public}@", &v4, 0xCu);
  }

  [(SBScreenLongevityTimer *)self scheduleFaceDetection];
}

- (void)dimTimerFired
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dimTimerDidExpireForTimer:self];
}

- (void)scheduleFaceDetection
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained faceDetectionTimerDidExpire:self];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (v4 - self->_startTime <= self->_dimInterval)
  {
    self->_currentFaceDetectionTimerInterval = self->_currentFaceDetectionTimerInterval * 0.5;
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SBScreenLongevityTimer_scheduleFaceDetection__block_invoke;
    block[3] = &unk_2783B0E88;
    block[4] = self;
    objc_copyWeak(&v6, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {

    [(SBScreenLongevityTimer *)self dimTimerFired];
  }
}

void __47__SBScreenLongevityTimer_scheduleFaceDetection__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = MEMORY[0x277CBEBB8];
  v5 = *(*(a1 + 32) + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SBScreenLongevityTimer_scheduleFaceDetection__block_invoke_2;
  v9[3] = &unk_2783AA438;
  objc_copyWeak(&v10, (a1 + 40));
  v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v9 block:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  objc_destroyWeak(&v10);
}

void __47__SBScreenLongevityTimer_scheduleFaceDetection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [WeakRetained _isValidCurrentTimer:v3];

  if (a1)
  {
    [WeakRetained scheduleFaceDetection];
  }
}

- (BOOL)_isValidCurrentTimer:(id)a3
{
  if (self->_timer == a3)
  {
    return [a3 isValid];
  }

  else
  {
    return 0;
  }
}

- (SBScreenLongevityTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
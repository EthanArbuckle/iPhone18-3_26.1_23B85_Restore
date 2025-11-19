@interface SBWalletPrearmRecognizer
- (SBWalletPrearmRecognizer)initWithDelegate:(id)a3;
- (double)_computeDoubleTapTimeout;
- (void)_invalidate;
- (void)_invalidateForFailureReason:(unint64_t)a3;
- (void)_invalidateForSuccess;
- (void)dealloc;
- (void)invalidate;
- (void)menuButtonDoublePress;
- (void)menuButtonSinglePress;
- (void)startRecognizing;
@end

@implementation SBWalletPrearmRecognizer

- (SBWalletPrearmRecognizer)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBWalletPrearmRecognizer;
  v5 = [(SBWalletPrearmRecognizer *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SBWalletPrearmRecognizer *)v5 _computeDoubleTapTimeout];
    v6->_timeout = v7;
    objc_storeWeak(&v6->_delegate, v4);
  }

  return v6;
}

- (void)dealloc
{
  if (!self->_invalidated && self->_timer)
  {
    PKLegacyStockholmLog();
    v3 = SBLogLockScreenMesaWalletPreArm();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Deallocated while active", buf, 2u);
    }

    [(SBWalletPrearmRecognizer *)self _invalidateForFailureReason:0];
  }

  v4.receiver = self;
  v4.super_class = SBWalletPrearmRecognizer;
  [(SBWalletPrearmRecognizer *)&v4 dealloc];
}

- (void)startRecognizing
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWalletPrearmRecognizer.m" lineNumber:59 description:@"Cannot start recognizing an invalidated recognizer."];
}

void __44__SBWalletPrearmRecognizer_startRecognizing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateForFailureReason:0];
}

- (void)invalidate
{
  PKLegacyStockholmLog();
  v3 = SBLogLockScreenMesaWalletPreArm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Invalidated by caller", v4, 2u);
  }

  [(SBWalletPrearmRecognizer *)self _invalidate];
}

- (void)menuButtonSinglePress
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = self->_timer != 0;
  PKLegacyStockholmLog();
  v3 = SBLogLockScreenMesaWalletPreArm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self->_timer != 0;
    *buf = 67109120;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "SinglePressReceived (timer active? %d)", buf, 8u);
  }

  if (self->_timer)
  {
    [(SBWalletPrearmRecognizer *)self _invalidateForFailureReason:1, v5];
  }
}

- (void)menuButtonDoublePress
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = self->_timer != 0;
  PKLegacyStockholmLog();
  v3 = SBLogLockScreenMesaWalletPreArm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self->_timer != 0;
    *buf = 67109120;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "DoublePressReceived (timer active? %d)", buf, 8u);
  }

  if (self->_timer)
  {
    PKLegacyStockholmLog();
    v5 = SBLogLockScreenMesaWalletPreArm();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Recognized", buf, 2u);
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"SBBiometricEventTimestampNotificationPrearmMatch" object:0 userInfo:0];

    [(SBWalletPrearmRecognizer *)self _invalidateForSuccess];
  }
}

- (void)_invalidateForFailureReason:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = @"SinglePress";
  }

  else
  {
    v5 = @"Timeout";
  }

  v9 = v5;
  PKLegacyStockholmLog();
  v6 = SBLogLockScreenMesaWalletPreArm();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Failed for %@", buf, 0xCu);
  }

  [(SBWalletPrearmRecognizer *)self _invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained walletPrearmRecognizer:self didFailToRecognizeForReason:a3];
}

- (void)_invalidateForSuccess
{
  [(SBWalletPrearmRecognizer *)self _invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained walletPrearmRecognizerDidRecognize:self];
}

- (void)_invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(BSAbsoluteMachTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (double)_computeDoubleTapTimeout
{
  v2 = _AXSTripleClickCopyOptions();
  v3 = [v2 count];

  if (v3)
  {
    v4 = 2.0;
  }

  else
  {
    v4 = 1.0;
  }

  _AXSHomeClickSpeed();
  result = v4 * v5;
  if (result < 0.349999994)
  {
    return 0.349999994;
  }

  return result;
}

@end
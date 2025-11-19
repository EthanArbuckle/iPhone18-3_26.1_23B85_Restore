@interface SBFDeviceBlockTimer
- (SBFDeviceBlockTimer)initWithDeviceBlockStatusProvider:(id)a3;
- (void)_clearTimer;
- (void)_scheduleTimerIfNecessaryAndUpdateState;
- (void)dealloc;
@end

@implementation SBFDeviceBlockTimer

- (SBFDeviceBlockTimer)initWithDeviceBlockStatusProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBFDeviceBlockTimer;
  v5 = [(SBFDeviceBlockTimer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBFDeviceBlockTimer *)v5 _setBlockStatusProvider:v4];
    [(SBFDeviceBlockTimer *)v6 _scheduleTimerIfNecessaryAndUpdateState];
  }

  return v6;
}

- (void)dealloc
{
  [(SBFDeviceBlockTimer *)self _clearTimer];
  v3.receiver = self;
  v3.super_class = SBFDeviceBlockTimer;
  [(SBFDeviceBlockTimer *)&v3 dealloc];
}

- (void)_clearTimer
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)_scheduleTimerIfNecessaryAndUpdateState
{
  if (([(SBFBlockStatusProvider *)self->_blockStatusProvider isPermanentlyBlocked]& 1) != 0)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v28 = [v3 localizedStringForKey:@"CONNECT_TO_ITUNES" value:&stru_1F3D19FF0 table:@"DeviceBlock"];
      v4 = 0.0;
LABEL_6:

      v15 = v28;
      goto LABEL_8;
    }
  }

  else
  {
    [(SBFBlockStatusProvider *)self->_blockStatusProvider timeIntervalUntilUnblockedSinceReferenceDate];
    v6 = v5;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = v6 - v7;
    if (v8 > 0.0)
    {
      v9 = v8 / 60.0;
      v10 = ceil(v9);
      v4 = (v9 - (vcvtpd_s64_f64(v9) - 1)) * 60.0;
      v3 = objc_alloc_init(MEMORY[0x1E696AB70]);
      [v3 setUnitsStyle:3];
      v11 = [v3 stringFromTimeInterval:v10 * 60.0];
      [(SBFDeviceBlockTimer *)self setTimeoutText:v11];
      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"TRY_AGAIN_AFTER_TIMEOUT" value:&stru_1F3D19FF0 table:@"DeviceBlock"];
      v28 = [v12 stringWithFormat:v14, v11];

      goto LABEL_6;
    }
  }

  v15 = 0;
  v4 = 0.0;
LABEL_8:
  v29 = v15;
  [(SBFDeviceBlockTimer *)self setSubtitleText:?];
  v16 = MEMORY[0x1E696AEC0];
  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"DEVICE_BLOCKED" value:&stru_1F3D19FF0 table:@"DeviceBlock"];
  v19 = [MEMORY[0x1E698E730] sharedInstance];
  v20 = [v19 localizedProductName];
  v21 = [v16 stringWithFormat:v18, v20];
  [(SBFDeviceBlockTimer *)self setTitleText:v21];

  [(SBFDeviceBlockTimer *)self setUserRequestedEraseEnabled:[(SBFBlockStatusProvider *)self->_blockStatusProvider isUserRequestedEraseEnabled]];
  handler = self->_handler;
  if (handler)
  {
    handler[2]();
  }

  [(SBFDeviceBlockTimer *)self _clearTimer];
  if (v4 > 0.0 && self->_enabled)
  {
    v23 = objc_alloc(MEMORY[0x1E695DFF0]);
    v24 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v4];
    v25 = [v23 initWithFireDate:v24 interval:self target:sel__scheduleTimerIfNecessaryAndUpdateState selector:0 userInfo:0 repeats:0.0];
    timer = self->_timer;
    self->_timer = v25;

    v27 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v27 addTimer:self->_timer forMode:*MEMORY[0x1E695DA28]];
  }
}

@end
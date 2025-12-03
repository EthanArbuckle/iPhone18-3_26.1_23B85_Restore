@interface BKDisplayBrightnessUpdateTransactionManager
+ (BKDisplayBrightnessUpdateTransactionManager)sharedInstance;
- (float)systemDisplayBrightness;
- (id)_initWithBrightnessController:(id)controller;
- (void)_beginUpdateTransaction:(id)transaction;
- (void)_endUpdateTransaction:(id)transaction;
- (void)_lock_commitDisplayBrightness;
- (void)restoreSystemDisplayBrightness;
- (void)setDisplayBrightness:(float)brightness permanently:(BOOL)permanently;
- (void)synchronizeALSPreferencesAndSystemDisplayBrightness;
@end

@implementation BKDisplayBrightnessUpdateTransactionManager

- (void)_lock_commitDisplayBrightness
{
  if (self->_commitPending)
  {
    [(BKDisplayBrightnessController *)self->_brightnessController brightnessLevel];
    v4 = v3;
    [(BKDisplayBrightnessController *)self->_brightnessController setBrightnessLevel:@"commitDisplayBrightness" reason:7 options:?];
    if (vabds_f32(self->_systemDisplayBrightness, v4) < 0.0001)
    {
      sub_100077C70();
      v5 = +[BKSDefaults externalDefaults];
      springBoardDefaults = [v5 springBoardDefaults];
      *&v7 = v4;
      [springBoardDefaults setBrightness:v7];
    }

    self->_commitPending = 0;
  }
}

- (void)_endUpdateTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  --self->_numPendingTransactions;
  v6 = BKLogBacklight();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    numPendingTransactions = self->_numPendingTransactions;
    v14 = 138543618;
    v15 = transactionCopy;
    v16 = 1024;
    LODWORD(v17) = numPendingTransactions;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ending transaction: %{public}@; %d remain", &v14, 0x12u);
  }

  v8 = self->_numPendingTransactions;
  if (v8 < 0)
  {
    v10 = [NSString stringWithFormat:@"There shouldn't be a negative number of pending transactions"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138544642;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"BKDisplayBrightnessUpdateTransactionManager.m";
      v22 = 1024;
      v23 = 292;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v14, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000755ECLL);
  }

  if (!v8)
  {
    [(BSInvalidatable *)self->_suppressBrightnessNotifications invalidate];
    suppressBrightnessNotifications = self->_suppressBrightnessNotifications;
    self->_suppressBrightnessNotifications = 0;

    [(BKDisplayBrightnessUpdateTransactionManager *)self _lock_commitDisplayBrightness];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_beginUpdateTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  numPendingTransactions = self->_numPendingTransactions;
  self->_numPendingTransactions = numPendingTransactions + 1;
  if (!numPendingTransactions)
  {
    v6 = [(BKDisplayBrightnessController *)self->_brightnessController suppressBrightnessNotificationsForReason:@"update-transaction"];
    suppressBrightnessNotifications = self->_suppressBrightnessNotifications;
    self->_suppressBrightnessNotifications = v6;
  }

  v8 = BKLogBacklight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_numPendingTransactions;
    v10 = 138543618;
    v11 = transactionCopy;
    v12 = 1024;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Begin transaction: %{public}@; %d now exist", &v10, 0x12u);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)restoreSystemDisplayBrightness
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_shouldRestoreSystemBrightness)
  {
    systemDisplayBrightness = self->_systemDisplayBrightness;
    if (systemDisplayBrightness >= 0.0)
    {
      self->_shouldRestoreSystemBrightness = 0;
      brightnessController = self->_brightnessController;
      v6 = NSStringFromSelector(a2);
      *&v7 = systemDisplayBrightness;
      [(BKDisplayBrightnessController *)brightnessController setBrightnessLevel:v6 reason:10 options:v7];

      sub_100077D2C();
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (float)systemDisplayBrightness
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  systemDisplayBrightness = self->_systemDisplayBrightness;
  os_unfair_lock_unlock(&self->_lock);
  return systemDisplayBrightness;
}

- (void)setDisplayBrightness:(float)brightness permanently:(BOOL)permanently
{
  permanentlyCopy = permanently;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  numPendingTransactions = self->_numPendingTransactions;
  if (numPendingTransactions)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if (permanentlyCopy)
  {
    v10 = @"setDisplayBrightness (permanent)";
  }

  else
  {
    v10 = @"setDisplayBrightness (transient)";
  }

  *&v7 = brightness;
  [(BKDisplayBrightnessController *)self->_brightnessController setBrightnessLevel:v10 reason:v9 options:v7];
  if (permanentlyCopy || self->_systemDisplayBrightness < 0.0)
  {
    self->_systemDisplayBrightness = brightness;
    if (numPendingTransactions)
    {
LABEL_10:
      self->_commitPending = 1;
      goto LABEL_13;
    }
  }

  else
  {
    self->_shouldRestoreSystemBrightness = 1;
    if (numPendingTransactions)
    {
      goto LABEL_10;
    }
  }

  [(BKDisplayBrightnessUpdateTransactionManager *)self _lock_commitDisplayBrightness];
LABEL_13:

  os_unfair_lock_unlock(&self->_lock);
}

- (void)synchronizeALSPreferencesAndSystemDisplayBrightness
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  *&v3 = self->_systemDisplayBrightness;
  [(BKDisplayBrightnessController *)self->_brightnessController setBrightnessLevel:@"synchronizeALSPreferencesAndDisplayBrightness" reason:2 options:v3];
  if (sub_100077D2C())
  {
    [(BKDisplayBrightnessController *)self->_brightnessController brightnessLevel];
    self->_systemDisplayBrightness = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_initWithBrightnessController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = BKDisplayBrightnessUpdateTransactionManager;
  v6 = [(BKDisplayBrightnessUpdateTransactionManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_lock._os_unfair_lock_opaque = 0;
    v6->_commitPending = 0;
    v8 = +[BKSDefaults externalDefaults];
    springBoardDefaults = [v8 springBoardDefaults];
    [springBoardDefaults brightness];
    v7->_systemDisplayBrightness = v10;

    objc_storeStrong(&v7->_brightnessController, controller);
  }

  return v7;
}

+ (BKDisplayBrightnessUpdateTransactionManager)sharedInstance
{
  if (qword_100126088 != -1)
  {
    dispatch_once(&qword_100126088, &stru_1000FC4F0);
  }

  v3 = qword_100126080;

  return v3;
}

@end
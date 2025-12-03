@interface BKDisplayBrightnessController
+ (BKDisplayBrightnessController)sharedInstance;
- (BOOL)isALSSupported;
- (BOOL)isAutoBrightnessAvailable;
- (BOOL)isBrightnessLevelControlAvailable;
- (float)brightnessLevel;
- (id)_initWithBrightnessSystem:(id)system systemShellSentinel:(id)sentinel orientationManager:(id)manager;
- (id)propertyForKey:(id)key;
- (id)suppressBrightnessNotificationsForReason:(id)reason;
- (int)displayBrightnessCurve;
- (void)appendDescriptionToStream:(id)stream;
- (void)clientDied:(id)died;
- (void)dealloc;
- (void)orientationManager:(id)manager userInterfaceOrientationMayHaveChanged:(int64_t)changed isDeviceOrientationLocked:(BOOL)locked;
- (void)setBrightnessLevel:(float)level reason:(id)reason options:(unint64_t)options;
- (void)setMinimumBrightnessLevel:(float)level fadeDuration:(float)duration;
- (void)setProperty:(id)property forKey:(id)key;
@end

@implementation BKDisplayBrightnessController

+ (BKDisplayBrightnessController)sharedInstance
{
  if (qword_1001260E8 != -1)
  {
    dispatch_once(&qword_1001260E8, &stru_1000FCCA8);
  }

  v3 = qword_1001260E0;

  return v3;
}

- (float)brightnessLevel
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  brightnessLevel = self->_brightnessLevel;
  os_unfair_lock_unlock(&self->_lock);
  return brightnessLevel;
}

- (void)orientationManager:(id)manager userInterfaceOrientationMayHaveChanged:(int64_t)changed isDeviceOrientationLocked:(BOOL)locked
{
  v6 = [NSNumber numberWithInteger:sub_1000916BC(manager)];
  [(BKDisplayBrightnessController *)self setProperty:v6 forKey:@"CBUIOrientation"];
}

- (void)clientDied:(id)died
{
  diedCopy = died;
  v5 = [diedCopy pid];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BSMutableIntegerMap *)self->_backlightClientPerPID removeObjectForKey:v5];
  [diedCopy invalidate];

  sub_10008E6D8(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)appendDescriptionToStream:(id)stream
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008ECDC;
  v9[3] = &unk_1000FD128;
  streamCopy = stream;
  v10 = streamCopy;
  selfCopy = self;
  [streamCopy appendProem:self block:v9];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008ED18;
  v6[3] = &unk_1000FD128;
  v7 = streamCopy;
  selfCopy2 = self;
  v5 = streamCopy;
  [v5 appendBodySectionWithName:@"brightnessFreeze" block:v6];
}

- (void)setProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  propertyCopy = property;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  sub_10008EAD4(self, propertyCopy, keyCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BrightnessSystem *)self->_brightnessSystem copyPropertyForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (int)displayBrightnessCurve
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  brightnessLevelCurve = self->_brightnessLevelCurve;
  os_unfair_lock_unlock(&self->_lock);
  return brightnessLevelCurve;
}

- (BOOL)isALSSupported
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  isAlsSupported = [(BrightnessSystem *)self->_brightnessSystem isAlsSupported];
  os_unfair_lock_unlock(&self->_lock);
  return isAlsSupported;
}

- (BOOL)isBrightnessLevelControlAvailable
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BrightnessSystem *)self->_brightnessSystem copyPropertyForKey:@"CBBrightnessControlAvailable"];
  bOOLValue = [v3 BOOLValue];

  os_unfair_lock_unlock(&self->_lock);
  return bOOLValue;
}

- (BOOL)isAutoBrightnessAvailable
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BrightnessSystem *)self->_brightnessSystem copyPropertyForKey:@"CBAutoBrightnessAvailable"];
  bOOLValue = [v3 BOOLValue];

  os_unfair_lock_unlock(&self->_lock);
  return bOOLValue;
}

- (void)setBrightnessLevel:(float)level reason:(id)reason options:(unint64_t)options
{
  reasonCopy = reason;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v9 = reasonCopy;
  if (self && (self->_brightnessLevel != level || self->_previousBrightnessLevelOptions != options))
  {
    v10 = BKLogBacklight();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    if (!options)
    {
      v13 = @"none";
      goto LABEL_13;
    }

    v11 = objc_alloc_init(NSMutableArray);
    v12 = v11;
    if (options)
    {
      [v11 addObject:@"commit"];
      if ((options & 4) == 0)
      {
LABEL_8:
        if ((options & 2) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_34;
      }
    }

    else if ((options & 4) == 0)
    {
      goto LABEL_8;
    }

    [v12 addObject:@"notifyClients"];
    if ((options & 2) == 0)
    {
LABEL_9:
      if ((options & 8) == 0)
      {
LABEL_11:
        v13 = [v12 componentsJoinedByString:{@", "}];

LABEL_13:
        *buf = 134218498;
        *&buf[4] = level;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "brightness change:%g reason:%{public}@ options:%@", buf, 0x20u);

LABEL_14:
        if ((options & 2) != 0)
        {
          *&v14 = level;
          v15 = [NSNumber numberWithFloat:v14, @"Brightness"];
          v24[1] = @"Commit";
          *buf = v15;
          v16 = [NSNumber numberWithBool:options & 1];
          *&buf[8] = v16;
          v17 = [NSDictionary dictionaryWithObjects:buf forKeys:v24 count:2];

          if ((options & 8) != 0)
          {
            v18 = @"DisplayInitialBrightness";
          }

          else
          {
            v18 = @"DisplayBrightness";
          }

          previousBrightnessLevelKey = self->_previousBrightnessLevelKey;
          if (!BSEqualObjects() || (previousBrightnessLevelValue = self->_previousBrightnessLevelValue, (BSEqualObjects() & 1) == 0))
          {
            v21 = self->_previousBrightnessLevelKey;
            self->_previousBrightnessLevelKey = &v18->isa;

            objc_storeStrong(&self->_previousBrightnessLevelValue, v17);
            sub_10008EAD4(self, v17, v18);
          }
        }

        notificationToken = self->_notificationToken;
        if (notificationToken == -1)
        {
          if (notify_register_check("UIBacklightLevelChangedNotification", &self->_notificationToken))
          {
LABEL_28:
            self->_brightnessLevel = level;
            self->_previousBrightnessLevelOptions = options;
            goto LABEL_29;
          }

          notificationToken = self->_notificationToken;
        }

        notify_set_state(notificationToken, (((roundf((fminf(fmaxf(level, 0.0), 1.0) * 100.0) / 5.0) * 5.0) / 100.0) * 1000000.0));
        if ((options & 4) != 0)
        {
          v23 = (level * 1000000.0);
          if (self->_previousDarwinNotificationBrightnessLevel != v23 && ([(BSCompoundAssertion *)self->_suppressClientNotificationsAssertion isActive]& 1) == 0)
          {
            notify_post("UIBacklightLevelChangedNotification");
            self->_previousDarwinNotificationBrightnessLevel = v23;
          }
        }

        goto LABEL_28;
      }

LABEL_10:
      [v12 addObject:@"setInitialLevel"];
      goto LABEL_11;
    }

LABEL_34:
    [v12 addObject:@"notifyBrightnessSystem"];
    if ((options & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMinimumBrightnessLevel:(float)level fadeDuration:(float)duration
{
  if (level >= 0.0)
  {
    levelCopy = level;
  }

  else
  {
    levelCopy = 0.0;
  }

  v7 = BKLogBacklight();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218240;
    v13 = levelCopy;
    v14 = 2048;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting minimum brightness level: %f with fade duration %f", &v12, 0x16u);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (duration <= 0.0)
  {
    v10 = @"BrightnessMinPhysical";
  }

  else
  {
    *&v8 = duration;
    v9 = [NSNumber numberWithFloat:v8];
    sub_10008EAD4(self, v9, @"DisplayBrightnessFadePeriod");

    v10 = @"BrightnessMinPhysicalWithFade";
  }

  *&v8 = levelCopy;
  v11 = [NSNumber numberWithFloat:v8];
  sub_10008EAD4(self, v11, v10);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)suppressBrightnessNotificationsForReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BSCompoundAssertion *)self->_suppressClientNotificationsAssertion acquireForReason:reasonCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_suppressClientNotificationsAssertion invalidate];
  [(BSInvalidatable *)self->_orientationManagerObserving invalidate];
  notificationToken = self->_notificationToken;
  if (notificationToken != -1)
  {
    notify_cancel(notificationToken);
  }

  v4.receiver = self;
  v4.super_class = BKDisplayBrightnessController;
  [(BKDisplayBrightnessController *)&v4 dealloc];
}

- (id)_initWithBrightnessSystem:(id)system systemShellSentinel:(id)sentinel orientationManager:(id)manager
{
  systemCopy = system;
  sentinelCopy = sentinel;
  managerCopy = manager;
  v30.receiver = self;
  v30.super_class = BKDisplayBrightnessController;
  v12 = [(BKDisplayBrightnessController *)&v30 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_notificationToken = -1;
    objc_storeStrong(&v12->_brightnessSystem, system);
    v14 = [BSCompoundAssertion assertionWithIdentifier:@"BKDisplayBrightnessController suppress-darwin-notifications"];
    v15 = *(v13 + 136);
    *(v13 + 136) = v14;

    *(v13 + 16) = 1;
    v16 = +[BKSDefaults localDefaults];
    brightnessCurve = [v16 brightnessCurve];

    os_unfair_lock_lock((v13 + 8));
    sub_10008F20C(v13, brightnessCurve, 0);
    os_unfair_lock_unlock((v13 + 8));
    objc_initWeak(&location, v13);
    v18 = *(v13 + 128);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10008FCA4;
    v27[3] = &unk_1000FCCD0;
    objc_copyWeak(&v28, &location);
    [v18 registerNotificationBlock:v27];
    v19 = &_dispatch_main_q;
    objc_copyWeak(&v26, &location);
    v20 = BSLogAddStateCaptureBlock();

    [v13 setBacklightLocked:1 forReason:@"BKSystemApplicationBacklightLockReason"];
    v21 = [sentinelCopy addSystemShellObserver:v13 reason:@"display brightness startup lock"];
    v22 = *(v13 + 56);
    *(v13 + 56) = v21;

    objc_storeWeak((v13 + 64), managerCopy);
    v23 = sub_1000924EC(managerCopy, v13);
    v24 = *(v13 + 72);
    *(v13 + 72) = v23;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v13;
}

@end
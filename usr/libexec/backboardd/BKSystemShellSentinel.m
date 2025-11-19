@interface BKSystemShellSentinel
+ (BKSystemShellSentinel)sharedInstance;
+ (id)dataMigrationQueue;
- (BKSystemShellDescriptor)primarySystemShell;
- (BKSystemShellSentinel)init;
- (BOOL)_lock_blockSystemApp;
- (BOOL)_lock_unblockSystemApp;
- (BOOL)_pingSystemShellForCollectiveWatchdog:(id)a3;
- (BOOL)auditTokenRepresentsSystemApp:(id *)a3;
- (BOOL)blockSystemApp;
- (BOOL)collectiveWatchdogPing;
- (BOOL)unblockSystemApp;
- (NSArray)systemShells;
- (NSSet)shellsFinishedStartup;
- (NSString)activeAlternateSystemAppBundleIdentifier;
- (NSString)description;
- (id)_collectivePingSystemShellSet;
- (id)_lock_currentConnectionShell;
- (id)systemShellState;
- (void)_addSystemShellToCollectivePingSet:(id)a3;
- (void)_lock_bootstrapSystemApp;
- (void)_lock_checkInWithRemoteCompletionBlock:(id)a3;
- (void)_lock_completeCheckInForShell:(id)a3;
- (void)_lock_completeCheckInForShell:(id)a3 completionBlock:(id)a4;
- (void)_lock_handleRelaunchRequestFromSystemApp:(id)a3 withOptions:(unint64_t)a4;
- (void)_lock_updatePrimarySystemApp;
- (void)_removeSystemShellFromCollectivePingSet:(id)a3;
- (void)checkInAfterDataMigrationUsingCompletionBlock:(id)a3;
- (void)checkInBypassingDataMigrationUsingCompletionBlock:(id)a3;
- (void)dataMigratorDidComplete;
- (void)finishedLaunching;
- (void)invalidate;
- (void)restartWithOptions:(id)a3;
- (void)setActiveAlternateSystemAppBundleIdentifier:(id)a3;
- (void)setWatchdogMonitoringEnabled:(id)a3;
- (void)startServerWithoutDataMigration;
- (void)systemShellDidConnect:(id)a3 connection:(id)a4;
- (void)terminateShellWithJobLabel:(id)a3;
@end

@implementation BKSystemShellSentinel

+ (BKSystemShellSentinel)sharedInstance
{
  if (qword_100126050 != -1)
  {
    dispatch_once(&qword_100126050, &stru_1000FC320);
  }

  v3 = qword_100126048;

  return v3;
}

- (BOOL)collectiveWatchdogPing
{
  [(BKSystemShellSentinel *)self _collectivePingSystemShellSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = BKLogSystemShell();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "watchdog ping: %{public}@", buf, 0xCu);
        }

        if (![(BKSystemShellSentinel *)self _pingSystemShellForCollectiveWatchdog:v8])
        {
          v11 = BKLogSystemShell();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v18 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ reported not alive, which is fairly unusual", buf, 0xCu);
          }

          v10 = 0;
          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (id)_collectivePingSystemShellSet
{
  os_unfair_lock_lock(&self->_collectivePingDataLock);
  v3 = [(NSMutableSet *)self->_collectivePingDataLock_collectivePingShells copy];
  os_unfair_lock_unlock(&self->_collectivePingDataLock);

  return v3;
}

- (void)terminateShellWithJobLabel:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = BKLogSystemShell();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disable watchdog for job label: %{public}@", buf, 0xCu);
  }

  sub_10002BCBC([v4 UTF8String], 0);
  v6 = [(NSMutableOrderedSet *)self->_lock_connectedSystemApps copy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  v9 = v7;
  if (!v8)
  {
    goto LABEL_20;
  }

  v10 = v8;
  v11 = *v25;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v25 != v11)
    {
      objc_enumerationMutation(v7);
    }

    v13 = *(*(&v24 + 1) + 8 * v12);
    v14 = v13 ? v13[2] : 0;
    v15 = v14;
    v16 = [v15 jobLabel];
    v17 = [v4 isEqualToString:v16];

    if (v17)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v18 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v10 = v18;
      if (!v18)
      {
        v9 = v7;
        goto LABEL_20;
      }

      goto LABEL_5;
    }
  }

  v9 = v13;

  if (v13)
  {
    v19 = BKLogSystemShell();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Shell exists; will terminate %{public}@", buf, 0xCu);
    }

    v20 = v9[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072024;
    block[3] = &unk_1000FD150;
    v23 = v20;
    v21 = v20;
    dispatch_async(&_dispatch_main_q, block);

LABEL_20:
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setWatchdogMonitoringEnabled:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(BKSystemShellSentinel *)self _lock_currentConnectionShell];
  v5 = [v4 BOOLValue];

  sub_100070188(v6, v5);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)restartWithOptions:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(BKSystemShellSentinel *)self _lock_currentConnectionShell];
  v5 = [v4 unsignedIntValue];

  [(BKSystemShellSentinel *)self _lock_handleRelaunchRequestFromSystemApp:v6 withOptions:v5];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)finishedLaunching
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSystemShellSentinel *)self _lock_currentConnectionShell];
  v4 = BKLogSystemShell();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = *(v3 + 16);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 bundleIdentifier];
    if (v3)
    {
      v8 = *(v3 + 32);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v9 timeIntervalSinceNow];
    *buf = 138543618;
    v40 = v7;
    v41 = 2048;
    v42 = -v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System shell %{public}@ finished startup after %.2fs.", buf, 0x16u);
  }

  if (v3)
  {
    *(v3 + 10) = 1;
  }

  [(NSMutableSet *)self->_lock_shellsFinishedStartup addObject:v3];
  lock_systemApp = self->_lock_systemApp;
  if (lock_systemApp == v3)
  {
    v12 = IORegistryEntryFromPath(kIOMainPortDefault, "IOPower:/IOPowerConnection/IOPMrootDomain");
    IORegistryEntrySetCFProperty(v12, @"System Boot Complete", kCFBooleanTrue);
    if (v3)
    {
      v13 = *(v3 + 16);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v14 systemIdleSleepInterval];
    v16 = v15;

    v17 = v16;
    if (v16 <= 1)
    {
      v17 = 1;
    }

    valuePtr = v17;
    v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    IORegistryEntrySetCFProperty(v12, @"System Idle Seconds", v18);
    CFRelease(v18);
    v19 = (v16 * 1000.0);
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v36 = v19;
    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v36);
    IORegistryEntrySetCFProperty(v12, @"System Idle Milliseconds", v20);
    CFRelease(v20);
    v21 = BKLogSystemShell();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v40) = valuePtr;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Setting system idle interval to %d.", buf, 8u);
    }

    if (!self->_enableIdleSleepAssertionID)
    {
      v22 = BKLogSystemShell();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Telling IOKit that idle sleep is now enabled.", buf, 2u);
      }

      IOPMAssertionCreateWithName(@"EnableIdleSleep", 0xFFu, @"com.apple.backboardd.enable-idle-sleep", &self->_enableIdleSleepAssertionID);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007263C;
    block[3] = &unk_1000FD150;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  if (v3)
  {
    v23 = *(v3 + 16);
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_systemApp == v3)
  {
    v25 = [(BSCompoundAssertion *)self->_observers context];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v32;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v31 + 1) + 8 * i) systemShellDidFinishLaunching:v24];
        }

        v27 = [v25 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v27);
    }

    v30 = +[BKSDefaults localDefaults];
    [v30 setHideAppleLogoOnLaunch:0];
  }
}

- (void)checkInBypassingDataMigrationUsingCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(BKSystemShellSentinel *)self _lock_checkInWithRemoteCompletionBlock:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)checkInAfterDataMigrationUsingCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[BKSystemShellSentinel dataMigrationQueue];
  dispatch_assert_queue_V2(v5);

  os_unfair_lock_lock(&self->_lock);
  [(BKSystemShellSentinel *)self _lock_checkInWithRemoteCompletionBlock:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_checkInWithRemoteCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(BKSystemShellSentinel *)self _lock_currentConnectionShell];
  v6 = BKLogSystemShell();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "checkIn: %{public}@", &v9, 0xCu);
    }

    [(BKSystemShellSentinel *)self _lock_completeCheckInForShell:v5 completionBlock:v4];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "checkIn: shell not found for current connection", &v9, 2u);
    }

    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v4[2](v4, v8);

    v4 = v8;
  }
}

- (void)_lock_completeCheckInForShell:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100072ADC;
  v20[3] = &unk_1000FC468;
  v20[4] = self;
  v8 = v6;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = objc_retainBlock(v20);
  if (v8 && (v8[11] & 1) != 0)
  {
    v11 = 1;
LABEL_9:
    v17 = BKLogSystemShell();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_100070110(v8);
      lock_systemAppBlocked = self->_lock_systemAppBlocked;
      *buf = 138543874;
      v24 = v18;
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      v28 = lock_systemAppBlocked;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "checkInAndWaitForDataMigration: Telling %{public}@ it can start immediately (alternate:%{BOOL}u blocked:%{BOOL}u)", buf, 0x18u);
    }

    (v10[2])(v10);
    goto LABEL_12;
  }

  if (!self->_lock_systemAppBlocked)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v12 = BKLogSystemShell();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_100070110(v8);
    v14 = self->_lock_systemAppBlocked;
    *buf = 138543618;
    v24 = v13;
    v25 = 1024;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Pending %{public}@ completion because systemAppBlocked:%{BOOL}u", buf, 0x12u);
  }

  lock_checkinCompletionsBySystemApp = self->_lock_checkinCompletionsBySystemApp;
  v16 = [v10 copy];
  [(NSMapTable *)lock_checkinCompletionsBySystemApp setObject:v16 forKey:v8];

LABEL_12:
  [(BKSystemShellSentinel *)self _lock_updatePrimarySystemApp];
}

- (void)_lock_completeCheckInForShell:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = BKLogSystemShell();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 138543362;
    *(&v14 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "completeCheckInForShell: %{public}@", &v14, 0xCu);
  }

  v6 = sub_100005110();
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 8);
    *&v14 = _NSConcreteStackBlock;
    *(&v14 + 1) = 3221225472;
    v15 = sub_1000924E4;
    v16 = &unk_1000FD150;
    v17 = v7;
    dispatch_async(v8, &v14);
  }

  if (v4)
  {
    *(v4 + 4) = 256;
  }

  v9 = +[NSDate date];
  v10 = v9;
  if (v4)
  {
    objc_storeStrong(v4 + 4, v9);

    v11 = *(v4 + 2);
  }

  else
  {

    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 watchdogType];

  if (v13)
  {
    sub_100070188(v4, 1);
  }

  else
  {
    [(BKSystemShellSentinel *)self _addSystemShellToCollectivePingSet:v4];
  }
}

- (BOOL)_lock_unblockSystemApp
{
  os_unfair_lock_assert_owner(&self->_lock);
  lock_systemAppBlocked = self->_lock_systemAppBlocked;
  if (lock_systemAppBlocked)
  {
    lock_activeAlternateSystemAppJobLabel = self->_lock_activeAlternateSystemAppJobLabel;
    if (lock_activeAlternateSystemAppJobLabel)
    {
      sub_10002BCBC([(NSString *)lock_activeAlternateSystemAppJobLabel UTF8String], 0);
    }

    self->_lock_systemAppBlocked = 0;
    v5 = BKLogSystemShell();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unblocking system apps.", v7, 2u);
    }

    [(BKSystemShellSentinel *)self _lock_bootstrapSystemApp];
  }

  return lock_systemAppBlocked;
}

- (BOOL)_lock_blockSystemApp
{
  os_unfair_lock_assert_owner(&self->_lock);
  lock_systemAppBlocked = self->_lock_systemAppBlocked;
  if (!lock_systemAppBlocked)
  {
    self->_lock_systemAppBlocked = 1;
    v4 = BKLogSystemShell();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Blocking system apps.", buf, 2u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_lock_connectedSystemApps;
    v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          sub_100070188(*(*(&v25 + 1) + 8 * i), 0);
        }

        v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v7);
    }

    lock_connectedSystemApps = self->_lock_connectedSystemApps;
    if (self->_shellListener)
    {
      [(NSMutableOrderedSet *)lock_connectedSystemApps bs_map:&stru_1000FC420];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100073058;
      v24 = block[3] = &unk_1000FD150;
      v11 = v24;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v11 = [(NSMutableOrderedSet *)lock_connectedSystemApps bs_map:&stru_1000FC440];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (j = 0; j != v13; j = j + 1)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * j);
            v17 = BKLogSystemShell();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v30 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Killing %{public}@.", buf, 0xCu);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v31 count:16];
        }

        while (v13);
      }
    }
  }

  return !lock_systemAppBlocked;
}

- (void)_lock_handleRelaunchRequestFromSystemApp:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = BKLogSystemShell();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = BKSRestartActionOptionsDescription();
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling exit request from %{public}@ with options: %{public}@", &v10, 0x16u);
  }

  if (v4)
  {
    v9 = +[BKSDefaults localDefaults];
    [v9 setHideAppleLogoOnLaunch:1];
  }

  sub_1000296D4();
  exit(0);
}

- (void)_lock_updatePrimarySystemApp
{
  os_unfair_lock_assert_owner(&self->_lock);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v3 = self->_lock_connectedSystemApps;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v51;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v50 + 1) + 8 * i);
        if (v8 && !v8->_pendingCheckIn && v8->_checkedIn)
        {
          v20 = BKLogSystemShell();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v57 = v8;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating primary system app to: %{public}@", buf, 0xCu);
          }

          v21 = v8;
          goto LABEL_43;
        }
      }

      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (self->_lock_systemAppBlocked)
  {
    v3 = self->_lock_activeAlternateSystemAppBundleIdentifier;
    if (v3)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v9 = self->_lock_connectedSystemApps;
      v10 = [(NSMutableOrderedSet *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v47;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v47 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v46 + 1) + 8 * v13);
            if (v14)
            {
              v15 = v14[2];
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;
            v17 = [v16 bundleIdentifier];
            v18 = [v17 isEqualToString:v3];

            if (v18)
            {
              v21 = v14;

              if (!v14)
              {
                goto LABEL_39;
              }

              v24 = BKLogSystemShell();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v57 = v21;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updating primary system the alternate system app: %{public}@", buf, 0xCu);
              }

              goto LABEL_42;
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v19 = [(NSMutableOrderedSet *)v9 countByEnumeratingWithState:&v46 objects:v55 count:16];
          v11 = v19;
          if (v19)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_39:
    v24 = BKLogSystemShell();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updating primary system to nil because we are waiting for the alternate system app to launch", buf, 2u);
    }

    v21 = 0;
LABEL_42:

    goto LABEL_43;
  }

  if (!self->_lock_systemApp || ![(NSMutableOrderedSet *)self->_lock_connectedSystemApps containsObject:?])
  {
    v21 = [(NSMutableOrderedSet *)self->_lock_connectedSystemApps firstObject];
    v3 = BKLogSystemShell();
    if (os_log_type_enabled(&v3->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v57 = v21;
      _os_log_impl(&_mh_execute_header, &v3->super.super, OS_LOG_TYPE_DEFAULT, "Updating primary system first app: %{public}@", buf, 0xCu);
    }

LABEL_43:

    goto LABEL_44;
  }

  v22 = BKLogSystemShell();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    lock_systemApp = self->_lock_systemApp;
    *buf = 138543362;
    v57 = lock_systemApp;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating primary system app to the old _systemApp: %{public}@", buf, 0xCu);
  }

  v21 = self->_lock_systemApp;
LABEL_44:
  p_lock_systemApp = &self->_lock_systemApp;
  if (self->_lock_systemApp != v21)
  {
    objc_storeStrong(&self->_lock_systemApp, v21);
    v26 = *p_lock_systemApp;
    v27 = BKLogSystemShell();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        v29 = *p_lock_systemApp;
        if (*p_lock_systemApp)
        {
          v29 = v29->_descriptor;
        }

        v30 = v29;
        v31 = [(BKSystemShellClient *)v30 bundleIdentifier];
        *buf = 138543362;
        v57 = v31;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Now monitoring %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No system apps remain. Waiting for one to spawn...", buf, 2u);
      }

      if (self->_enableIdleSleepAssertionID)
      {
        v32 = BKLogSystemShell();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Telling IOKit that idle sleep is now disabled.", buf, 2u);
        }

        IOPMAssertionRelease(self->_enableIdleSleepAssertionID);
        self->_enableIdleSleepAssertionID = 0;
      }
    }
  }

  v33 = [(BSCompoundAssertion *)self->_observers context];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v34 = [v33 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v43;
    do
    {
      v37 = 0;
      do
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v42 + 1) + 8 * v37);
        if (objc_opt_respondsToSelector())
        {
          if (v21)
          {
            descriptor = v21->_descriptor;
          }

          else
          {
            descriptor = 0;
          }

          v40 = descriptor;
          [v38 systemShellChangedWithPrimary:v40];
        }

        v37 = v37 + 1;
      }

      while (v35 != v37);
      v41 = [v33 countByEnumeratingWithState:&v42 objects:v54 count:16];
      v35 = v41;
    }

    while (v41);
  }
}

- (void)_lock_bootstrapSystemApp
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_systemAppBlocked && [(NSMapTable *)self->_lock_checkinCompletionsBySystemApp count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(NSMapTable *)self->_lock_checkinCompletionsBySystemApp objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v8 + 1) + 8 * v7) + 16))();
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMapTable *)self->_lock_checkinCompletionsBySystemApp removeAllObjects];
  }

  [(BKSystemShellSentinel *)self _lock_updatePrimarySystemApp];
}

- (id)_lock_currentConnectionShell
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = +[BSServiceConnection currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 pid];

  lock_pidToClient = self->_lock_pidToClient;
  v7 = [NSNumber numberWithInt:v5];
  v8 = [(NSMutableDictionary *)lock_pidToClient objectForKeyedSubscript:v7];

  return v8;
}

- (BOOL)_pingSystemShellForCollectiveWatchdog:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3[2];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 watchdogType];

  if (v7 != 1)
  {
    v8 = v4 ? v4[2] : 0;
    v9 = v8;
    [v9 pid];
    v10 = BSPIDIsBeingDebugged();

    if ((v10 & 1) == 0)
    {
      if (v4)
      {
        v12 = v4[3];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 remoteTarget];

      v15 = [v14 collectiveWatchdogPing];
      v11 = v15;
      if (v4)
      {
        if (v15 == *(v4 + 12))
        {
LABEL_21:

          goto LABEL_22;
        }

        v16 = BKLogSystemShell();
        v17 = v16;
        if (!v11)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "watchdogPing: system app claims it's no longer alive", buf, 2u);
          }

LABEL_20:
          *(v4 + 12) = v11;
          goto LABEL_21;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v17 = BKLogSystemShell();
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19[0] = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "watchdogPing: system app is now alive", v19, 2u);
      }

      if (!v4)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v11 = 1;
LABEL_22:

  return v11;
}

- (void)_removeSystemShellFromCollectivePingSet:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_collectivePingDataLock);
  [(NSMutableSet *)self->_collectivePingDataLock_collectivePingShells removeObject:v4];

  os_unfair_lock_unlock(&self->_collectivePingDataLock);
}

- (void)_addSystemShellToCollectivePingSet:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_collectivePingDataLock);
  collectivePingDataLock_collectivePingShells = self->_collectivePingDataLock_collectivePingShells;
  if (!collectivePingDataLock_collectivePingShells)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = self->_collectivePingDataLock_collectivePingShells;
    self->_collectivePingDataLock_collectivePingShells = v5;

    collectivePingDataLock_collectivePingShells = self->_collectivePingDataLock_collectivePingShells;
  }

  [(NSMutableSet *)collectivePingDataLock_collectivePingShells addObject:v7];
  os_unfair_lock_unlock(&self->_collectivePingDataLock);
}

- (void)systemShellDidConnect:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  v9 = [BKSystemShellClient alloc];
  v10 = v7;
  v11 = v8;
  if (v9)
  {
    v24.receiver = v9;
    v24.super_class = BKSystemShellClient;
    v12 = [(BKSystemShellSentinel *)&v24 init];
    v9 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_heartbeat, a4);
      objc_storeStrong(&v9->_descriptor, a3);
      v13 = objc_alloc_init(NSDate);
      connectDate = v9->_connectDate;
      v9->_connectDate = v13;
    }
  }

  if (v9)
  {
    v9->_pendingCheckIn = 1;
  }

  v15 = [v10 bundleIdentifier];
  v16 = [v15 isEqualToString:self->_lock_activeAlternateSystemAppBundleIdentifier];

  if (v16)
  {
    if (v9)
    {
      v9->_isAlternateShell = 1;
    }

    v17 = [v10 jobLabel];
    lock_activeAlternateSystemAppJobLabel = self->_lock_activeAlternateSystemAppJobLabel;
    self->_lock_activeAlternateSystemAppJobLabel = v17;

    v19 = BKLogSystemShell();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(BKSystemShellClient *)v9 description];
      LODWORD(v24.receiver) = 138543362;
      *(&v24.receiver + 4) = v20;
      v21 = "Alternate system shell connected: %{public}@";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, &v24, 0xCu);
    }
  }

  else
  {
    v19 = BKLogSystemShell();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(BKSystemShellClient *)v9 description];
      LODWORD(v24.receiver) = 138543362;
      *(&v24.receiver + 4) = v20;
      v21 = "System shell connected: %{public}@";
      goto LABEL_13;
    }
  }

  lock_pidToClient = self->_lock_pidToClient;
  v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 pid]);
  [(NSMutableDictionary *)lock_pidToClient setObject:v9 forKey:v23];

  [(NSMutableOrderedSet *)self->_lock_connectedSystemApps addObject:v9];
  [(BKSystemShellSentinel *)self _lock_updatePrimarySystemApp];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)unblockSystemApp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSystemShellSentinel *)self _lock_unblockSystemApp];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)blockSystemApp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSystemShellSentinel *)self _lock_blockSystemApp];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)dataMigratorDidComplete
{
  v3 = [(BSCompoundAssertion *)self->_observers context];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 systemShellWillBootstrap];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  os_unfair_lock_lock(&self->_lock);
  [(BKSystemShellSentinel *)self _lock_bootstrapSystemApp];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)startServerWithoutDataMigration
{
  [(BKSystemShellServiceListener *)self->_shellListener activate];
  controlListener = self->_controlListener;

  [(BKSystemShellControlServiceListener *)controlListener activate];
}

- (id)systemShellState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(BKSystemShellSentinelState);
  lock_systemApp = self->_lock_systemApp;
  if (lock_systemApp)
  {
    lock_systemApp = lock_systemApp->_descriptor;
  }

  v6 = lock_systemApp;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, v6, 16);
  }

  v7 = [(NSMutableOrderedSet *)self->_lock_connectedSystemApps array];
  v9 = [v7 bs_map:&stru_1000FC3C0];
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v8, v9, 24);
  }

  v10 = [(NSMutableSet *)self->_lock_shellsFinishedStartup bs_map:&stru_1000FC3E0];
  v12 = v10;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v11, v10, 32);

    v3->_waitingForAlternateShellsToFinish = self->_lock_systemAppBlocked;
  }

  else
  {
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)shellsFinishedStartup
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_shellsFinishedStartup bs_map:&stru_1000FC3A0];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)systemShells
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableOrderedSet *)self->_lock_connectedSystemApps array];
  v4 = [v3 bs_map:&stru_1000FC380];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BKSystemShellDescriptor)primarySystemShell
{
  os_unfair_lock_lock(&self->_lock);
  lock_systemApp = self->_lock_systemApp;
  if (lock_systemApp)
  {
    lock_systemApp = lock_systemApp->_descriptor;
  }

  v4 = lock_systemApp;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSString)activeAlternateSystemAppBundleIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSString *)self->_lock_activeAlternateSystemAppBundleIdentifier copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setActiveAlternateSystemAppBundleIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  lock_activeAlternateSystemAppBundleIdentifier = self->_lock_activeAlternateSystemAppBundleIdentifier;
  self->_lock_activeAlternateSystemAppBundleIdentifier = v5;

  lock_activeAlternateSystemAppJobLabel = self->_lock_activeAlternateSystemAppJobLabel;
  self->_lock_activeAlternateSystemAppJobLabel = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)auditTokenRepresentsSystemApp:(id *)a3
{
  v4 = BSPIDForAuditToken();
  if (v4 < 1)
  {
    return 0;
  }

  v5 = v4;
  os_unfair_lock_lock(&self->_lock);
  lock_pidToClient = self->_lock_pidToClient;
  v7 = [NSNumber numberWithInt:v5];
  v8 = [(NSMutableDictionary *)lock_pidToClient objectForKey:v7];
  v9 = v8 != 0;

  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendBool:self->_lock_systemAppBlocked withName:@"systemAppBlocked"];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000747E0;
  v11 = &unk_1000FD128;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:0 multilinePrefix:0 block:&v8];
  v6 = [v5 build];

  return v6;
}

- (void)invalidate
{
  [(BSCompoundAssertion *)self->_observers invalidate];
  observers = self->_observers;
  self->_observers = 0;
}

- (BKSystemShellSentinel)init
{
  v2 = self;
  v3 = [[BKSystemShellServiceListener alloc] initWithSentinel:self];
  v4 = [[BKSystemShellControlServiceListener alloc] initWithSentinel:v2];
  v5 = v3;
  v6 = v4;
  if (v2)
  {
    v22.receiver = v2;
    v22.super_class = BKSystemShellSentinel;
    v7 = [(BKSystemShellSentinel *)&v22 init];
    v2 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_shellListener, v3);
      objc_storeStrong(&v2->_controlListener, v4);
      v2->_lock._os_unfair_lock_opaque = 0;
      v2->_collectivePingDataLock._os_unfair_lock_opaque = 0;
      lock_systemApp = v2->_lock_systemApp;
      v2->_lock_systemApp = 0;

      v9 = +[NSMapTable strongToStrongObjectsMapTable];
      lock_checkinCompletionsBySystemApp = v2->_lock_checkinCompletionsBySystemApp;
      v2->_lock_checkinCompletionsBySystemApp = v9;

      v11 = objc_alloc_init(NSMutableOrderedSet);
      lock_connectedSystemApps = v2->_lock_connectedSystemApps;
      v2->_lock_connectedSystemApps = v11;

      v13 = objc_alloc_init(NSMutableSet);
      lock_shellsFinishedStartup = v2->_lock_shellsFinishedStartup;
      v2->_lock_shellsFinishedStartup = v13;

      v15 = objc_alloc_init(BKSystemAppHeartbeat);
      heartbeat = v2->_heartbeat;
      v2->_heartbeat = v15;

      v17 = objc_alloc_init(NSMutableDictionary);
      lock_pidToClient = v2->_lock_pidToClient;
      v2->_lock_pidToClient = v17;

      v19 = [BSCompoundAssertion assertionWithIdentifier:@"BKSystemShellSentinelObservers"];
      observers = v2->_observers;
      v2->_observers = v19;
    }
  }

  return v2;
}

+ (id)dataMigrationQueue
{
  if (qword_100126058 != -1)
  {
    dispatch_once(&qword_100126058, &stru_1000FC340);
  }

  v3 = qword_100126060;

  return v3;
}

@end
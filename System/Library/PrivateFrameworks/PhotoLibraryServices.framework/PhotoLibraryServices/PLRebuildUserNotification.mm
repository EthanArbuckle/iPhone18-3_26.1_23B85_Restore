@interface PLRebuildUserNotification
- (BOOL)_shouldShowUserNotification;
- (PLRebuildUserNotification)initWithMessage:(id)message;
- (int64_t)showAlertAndWaitForResponse;
- (void)_snoozeForHours:(unint64_t)hours;
@end

@implementation PLRebuildUserNotification

- (void)_snoozeForHours:(unint64_t)hours
{
  v12 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:hours * 60.0 * 60.0];
  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134218242;
    hoursCopy = hours;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "PLRebuildUserNotification snooze for %tu hour(s) until %@", &v8, 0x16u);
  }

  [v6 timeIntervalSinceReferenceDate];
  [standardUserDefaults setDouble:@"PLRebuildUserNotificationSnoozeUntilTime" forKey:?];
  [standardUserDefaults setObject:self->_message forKey:@"PLRebuildUserNotificationSnoozeLastMessageKey"];
}

- (BOOL)_shouldShowUserNotification
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[PLDeviceRestoreMigrationSupport isDataMigrationInProgress])
  {
    standardUserDefaults = PLBackendGetLog();
    if (os_log_type_enabled(standardUserDefaults, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19BF1F000, standardUserDefaults, OS_LOG_TYPE_INFO, "PLRebuildUserNotification: Data migration is in progress. Not showing the alert.", &v13, 2u);
    }

    v4 = 0;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults doubleForKey:@"PLRebuildUserNotificationSnoozeUntilTime"];
    v6 = v5;
    v7 = [standardUserDefaults stringForKey:@"PLRebuildUserNotificationSnoozeLastMessageKey"];
    v8 = [MEMORY[0x1E695DF00] now];
    if ([v7 isEqualToString:self->_message] && (objc_msgSend(v8, "timeIntervalSinceReferenceDate"), v9 < v6))
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v6];
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Should NOT show PLRebuildUserNotification because of snooze until %@", &v13, 0xCu);
      }

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (int64_t)showAlertAndWaitForResponse
{
  v25[7] = *MEMORY[0x1E69E9840];
  if ([(PLRebuildUserNotification *)self _shouldShowUserNotification])
  {
    v3 = *MEMORY[0x1E695EE58];
    v25[0] = @"Photos Library Rebuild";
    v4 = *MEMORY[0x1E695EE60];
    v24[0] = v3;
    v24[1] = v4;
    message = [(PLRebuildUserNotification *)self message];
    v6 = *MEMORY[0x1E695EE78];
    v25[1] = message;
    v25[2] = @"Not now";
    v7 = *MEMORY[0x1E695EE70];
    v24[2] = v6;
    v24[3] = v7;
    v8 = *MEMORY[0x1E695EE98];
    v25[3] = @"Rebuild";
    v25[4] = @"Ignore for 1 hour";
    v9 = *MEMORY[0x1E695EE68];
    v24[4] = v8;
    v24[5] = v9;
    v24[6] = *MEMORY[0x1E69D44D0];
    v25[5] = MEMORY[0x1E695E118];
    v25[6] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];

    error = 0;
    v11 = CFUserNotificationCreate(0, 60.0, 3uLL, &error, v10);
    v12 = PLBackendGetLog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        message = self->_message;
        *buf = 138412290;
        v23 = message;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "PLRebuildUserNotification waiting for response to message: %@", buf, 0xCu);
      }

      v20 = 0;
      CFUserNotificationReceiveResponse(v11, 60.0, &v20);
      CFRelease(v11);
      v15 = v20 & 3;
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v15];
        *buf = 138412290;
        v23 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "PLRebuildUserNotification buttonPressed is %@", buf, 0xCu);
      }

      if (v15 <= 1)
      {
        if (v15)
        {
          v18 = 1;
LABEL_18:

          return v18;
        }

LABEL_16:
        v18 = 2;
        goto LABEL_18;
      }

      if (v15 == 2)
      {
        [(PLRebuildUserNotification *)self _snoozeForHours:1];
        goto LABEL_16;
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v23) = error;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Could not create user notification for rebuild: %d", buf, 8u);
      }
    }

    v18 = 0;
    goto LABEL_18;
  }

  return 2;
}

- (PLRebuildUserNotification)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = PLRebuildUserNotification;
  v6 = [(PLRebuildUserNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

@end
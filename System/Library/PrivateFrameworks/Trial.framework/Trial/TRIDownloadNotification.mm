@interface TRIDownloadNotification
+ (BOOL)_errorIsInsufficientDiskSpaceCloudKitError:(id)error;
+ (BOOL)_notifyDownloadUpdateForKey:(id)key withState:(unint64_t)state;
+ (BOOL)notifyDownloadFailedForKey:(id)key withCloudKitError:(id)error;
+ (id)_descriptionForErrorCode:(unint64_t)code;
+ (id)_dispatchQueue;
+ (id)_notificationWithState:(unint64_t)state;
+ (id)generalErrorFromDownloadNotificationError:(id)error;
+ (id)immediateDownloadNotificationKeyForNamespaceNames:(id)names;
+ (id)notificationNameForKey:(id)key;
+ (id)registerDownloadNotificationForKey:(id)key queue:(id)queue usingBlock:(id)block;
+ (void)deregisterNotificationWithToken:(id)token;
- (TRIDownloadNotification)initWithType:(unint64_t)type progress:(unint64_t)progress error:(id)error;
@end

@implementation TRIDownloadNotification

- (TRIDownloadNotification)initWithType:(unint64_t)type progress:(unint64_t)progress error:(id)error
{
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = TRIDownloadNotification;
  v10 = [(TRIDownloadNotification *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v10->_progress = progress;
    objc_storeStrong(&v10->_error, error);
  }

  return v11;
}

+ (id)registerDownloadNotificationForKey:(id)key queue:(id)queue usingBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  queueCopy = queue;
  blockCopy = block;
  v10 = [TRIDownloadNotification notificationNameForKey:keyCopy];
  if (!queueCopy)
  {
    queueCopy = +[TRIDownloadNotification _dispatchQueue];
  }

  out_token = 0;
  uTF8String = [v10 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __79__TRIDownloadNotification_registerDownloadNotificationForKey_queue_usingBlock___block_invoke;
  handler[3] = &unk_27885E2A0;
  v12 = keyCopy;
  v22 = v12;
  v13 = blockCopy;
  v23 = v13;
  v14 = notify_register_dispatch(uTF8String, &out_token, queueCopy, handler);
  if (v14)
  {
    v15 = v14;
    v16 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v26 = v15;
      _os_log_error_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", buf, 0xCu);
    }

    v17 = 0;
  }

  else
  {
    v18 = [TRINotificationState alloc];
    v17 = [(TRINotificationState *)v18 initWithToken:out_token];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

void __79__TRIDownloadNotification_registerDownloadNotificationForKey_queue_usingBlock___block_invoke(uint64_t a1, uint64_t token)
{
  v19 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v4 = [TRIDownloadNotification _notificationWithState:state64];
  v5 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [v4 type];
    v8 = [v4 progress];
    *buf = 138412802;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_DEFAULT, "received download notification for notification key %@, with type %lu and progress: %lu", buf, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [[TRINotificationState alloc] initWithToken:token];
  (*(v9 + 16))(v9, v10, v4);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)deregisterNotificationWithToken:(id)token
{
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    notify_cancel([tokenCopy token]);
  }
}

+ (BOOL)notifyDownloadFailedForKey:(id)key withCloudKitError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  errorCopy = error;
  if (keyCopy)
  {
    v8 = [self _errorIsInsufficientDiskSpaceCloudKitError:errorCopy];
    if (errorCopy)
    {
      userInfo = [errorCopy userInfo];
      v10 = [userInfo objectForKeyedSubscript:@"CKPartialErrors"];

      if (v10)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [v11 objectForKey:{*(*(&v21 + 1) + 8 * i), v21}];
              v8 |= [self _errorIsInsufficientDiskSpaceCloudKitError:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v13);
        }
      }
    }

    if (v8)
    {
      v17 = 4;
    }

    else
    {
      v17 = 1;
    }

    v18 = [TRIDownloadNotification notifyDownloadFailedForKey:keyCopy withError:v17, v21];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)_errorIsInsufficientDiskSpaceCloudKitError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"CKErrorDomain"])
    {
      v6 = [v4 code] == 140;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)immediateDownloadNotificationKeyForNamespaceNames:(id)names
{
  v17 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"SIRI_DICTATION_ASSETS", @"SIRI_UNDERSTANDING_ASR_ASSISTANT", @"SIRI_TEXT_TO_SPEECH", @"TRIAL_INTEGRATION_TEST1", @"TRIAL_INTEGRATION_TEST2", @"BIFROST_DEV_1", @"BIFROST_DEV_2", @"BIFROST_PROD_1", @"BIFROST_PROD_2", @"SPRINGBOARD_HOME", @"HEALTH_FEATURE_AVAILABILITY", @"SIRI_TTS_DEVICE_TRAINING", @"REMINDERS_GROCERY", @"BLACKPEARL_SPARROW", 0}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = namesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v4 containsObject:v9])
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ImmediateDownload-%@", v9];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)_notifyDownloadUpdateForKey:(id)key withState:(unint64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [TRIDownloadNotification notificationNameForKey:key];
  uTF8String = [v5 UTF8String];
  out_token = 0;
  v7 = +[TRIDownloadNotification _dispatchQueue];
  v8 = notify_register_dispatch(uTF8String, &out_token, v7, &__block_literal_global_2);

  notify_set_state(out_token, state);
  notify_cancel(out_token);
  if (v8)
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v18 = v8;
      v10 = "notify_register_dispatch error: %lu";
LABEL_10:
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
    }
  }

  else
  {
    v11 = notify_post(uTF8String);
    if (!v11)
    {
      v13 = 1;
      goto LABEL_7;
    }

    v12 = v11;
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v18 = v12;
      v10 = "notify_post error: %lu";
      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)notificationNameForKey:(id)key
{
  v3 = MEMORY[0x277CCACA8];
  keyCopy = key;
  keyCopy = [[v3 alloc] initWithFormat:@"%@.%@", @"com.apple.trial.Download", keyCopy];

  return keyCopy;
}

+ (id)_dispatchQueue
{
  v2 = MEMORY[0x277D425A0];
  uTF8String = [@"com.apple.trial.Download" UTF8String];

  return [v2 autoreleasingSerialQueueWithLabel:uTF8String qosClass:17];
}

+ (id)_descriptionForErrorCode:(unint64_t)code
{
  if (code - 1 > 3)
  {
    return @"Unknown error.";
  }

  else
  {
    return off_27885E2E0[code - 1];
  }
}

+ (id)_notificationWithState:(unint64_t)state
{
  v4 = 0;
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = state >> 60;
  if (state >> 60 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_11;
      }

      v6 = [TRIDownloadNotification alloc];
      v7 = 1;
      v8 = 100;
    }

    else
    {
      v6 = [TRIDownloadNotification alloc];
      v8 = state & 0xFFFFFFFFFFFFFFFLL;
      v7 = 0;
    }

LABEL_9:
    v4 = [(TRIDownloadNotification *)v6 initWithType:v7 progress:v8 error:0];
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_11;
    }

    v6 = [TRIDownloadNotification alloc];
    v8 = state & 0xFFFFFFFFFFFFFFFLL;
    v7 = 3;
    goto LABEL_9;
  }

  v10 = objc_alloc(MEMORY[0x277CCA9B8]);
  v16 = *MEMORY[0x277CCA450];
  0xFFFFFFFFFFFFFFFLL = [self _descriptionForErrorCode:state & 0xFFFFFFFFFFFFFFFLL];
  v17[0] = 0xFFFFFFFFFFFFFFFLL;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v13 = [v10 initWithDomain:@"com.apple.trial" code:state & 0xFFFFFFFFFFFFFFFLL userInfo:v12];

  v4 = [[TRIDownloadNotification alloc] initWithType:2 progress:0 error:v13];
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)generalErrorFromDownloadNotificationError:(id)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_10;
  }

  code = [errorCopy code];
  if (code > 1)
  {
    if (code != 2)
    {
      if (code == 3)
      {
        v15 = objc_alloc(MEMORY[0x277CCA9B8]);
        v18 = *MEMORY[0x277CCA450];
        v19 = @"Download cancelled.";
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v9 = v15;
        v10 = 14;
      }

      else
      {
        if (code != 4)
        {
          goto LABEL_12;
        }

        v7 = objc_alloc(MEMORY[0x277CCA9B8]);
        v22 = *MEMORY[0x277CCA450];
        v23[0] = @"System does not have enough disk space available.";
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        v9 = v7;
        v10 = 4;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!code)
  {
LABEL_10:
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Unknown download error.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = v12;
    v10 = 1;
    goto LABEL_11;
  }

  if (code != 1)
  {
    goto LABEL_12;
  }

  v11 = objc_alloc(MEMORY[0x277CCA9B8]);
  v20 = *MEMORY[0x277CCA450];
  v21 = @"Download encountered a network error.";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v9 = v11;
  v10 = 15;
LABEL_11:
  v3 = [v9 initWithDomain:@"TRIGeneralErrorDomain" code:v10 userInfo:v8];

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
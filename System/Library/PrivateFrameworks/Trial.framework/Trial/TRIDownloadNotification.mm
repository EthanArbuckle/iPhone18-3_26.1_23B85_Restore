@interface TRIDownloadNotification
+ (BOOL)_errorIsInsufficientDiskSpaceCloudKitError:(id)a3;
+ (BOOL)_notifyDownloadUpdateForKey:(id)a3 withState:(unint64_t)a4;
+ (BOOL)notifyDownloadFailedForKey:(id)a3 withCloudKitError:(id)a4;
+ (id)_descriptionForErrorCode:(unint64_t)a3;
+ (id)_dispatchQueue;
+ (id)_notificationWithState:(unint64_t)a3;
+ (id)generalErrorFromDownloadNotificationError:(id)a3;
+ (id)immediateDownloadNotificationKeyForNamespaceNames:(id)a3;
+ (id)notificationNameForKey:(id)a3;
+ (id)registerDownloadNotificationForKey:(id)a3 queue:(id)a4 usingBlock:(id)a5;
+ (void)deregisterNotificationWithToken:(id)a3;
- (TRIDownloadNotification)initWithType:(unint64_t)a3 progress:(unint64_t)a4 error:(id)a5;
@end

@implementation TRIDownloadNotification

- (TRIDownloadNotification)initWithType:(unint64_t)a3 progress:(unint64_t)a4 error:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = TRIDownloadNotification;
  v10 = [(TRIDownloadNotification *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v10->_progress = a4;
    objc_storeStrong(&v10->_error, a5);
  }

  return v11;
}

+ (id)registerDownloadNotificationForKey:(id)a3 queue:(id)a4 usingBlock:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [TRIDownloadNotification notificationNameForKey:v7];
  if (!v8)
  {
    v8 = +[TRIDownloadNotification _dispatchQueue];
  }

  out_token = 0;
  v11 = [v10 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __79__TRIDownloadNotification_registerDownloadNotificationForKey_queue_usingBlock___block_invoke;
  handler[3] = &unk_27885E2A0;
  v12 = v7;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  v14 = notify_register_dispatch(v11, &out_token, v8, handler);
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

+ (void)deregisterNotificationWithToken:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    notify_cancel([v3 token]);
  }
}

+ (BOOL)notifyDownloadFailedForKey:(id)a3 withCloudKitError:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [a1 _errorIsInsufficientDiskSpaceCloudKitError:v7];
    if (v7)
    {
      v9 = [v7 userInfo];
      v10 = [v9 objectForKeyedSubscript:@"CKPartialErrors"];

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
              v8 |= [a1 _errorIsInsufficientDiskSpaceCloudKitError:v16];
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

    v18 = [TRIDownloadNotification notifyDownloadFailedForKey:v6 withError:v17, v21];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)_errorIsInsufficientDiskSpaceCloudKitError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:@"CKErrorDomain"])
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

+ (id)immediateDownloadNotificationKeyForNamespaceNames:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"SIRI_DICTATION_ASSETS", @"SIRI_UNDERSTANDING_ASR_ASSISTANT", @"SIRI_TEXT_TO_SPEECH", @"TRIAL_INTEGRATION_TEST1", @"TRIAL_INTEGRATION_TEST2", @"BIFROST_DEV_1", @"BIFROST_DEV_2", @"BIFROST_PROD_1", @"BIFROST_PROD_2", @"SPRINGBOARD_HOME", @"HEALTH_FEATURE_AVAILABILITY", @"SIRI_TTS_DEVICE_TRAINING", @"REMINDERS_GROCERY", @"BLACKPEARL_SPARROW", 0}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

+ (BOOL)_notifyDownloadUpdateForKey:(id)a3 withState:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [TRIDownloadNotification notificationNameForKey:a3];
  v6 = [v5 UTF8String];
  out_token = 0;
  v7 = +[TRIDownloadNotification _dispatchQueue];
  v8 = notify_register_dispatch(v6, &out_token, v7, &__block_literal_global_2);

  notify_set_state(out_token, a4);
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
    v11 = notify_post(v6);
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

+ (id)notificationNameForKey:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [[v3 alloc] initWithFormat:@"%@.%@", @"com.apple.trial.Download", v4];

  return v5;
}

+ (id)_dispatchQueue
{
  v2 = MEMORY[0x277D425A0];
  v3 = [@"com.apple.trial.Download" UTF8String];

  return [v2 autoreleasingSerialQueueWithLabel:v3 qosClass:17];
}

+ (id)_descriptionForErrorCode:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown error.";
  }

  else
  {
    return off_27885E2E0[a3 - 1];
  }
}

+ (id)_notificationWithState:(unint64_t)a3
{
  v4 = 0;
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3 >> 60;
  if (a3 >> 60 <= 1)
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
      v8 = a3 & 0xFFFFFFFFFFFFFFFLL;
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
    v8 = a3 & 0xFFFFFFFFFFFFFFFLL;
    v7 = 3;
    goto LABEL_9;
  }

  v10 = objc_alloc(MEMORY[0x277CCA9B8]);
  v16 = *MEMORY[0x277CCA450];
  v11 = [a1 _descriptionForErrorCode:a3 & 0xFFFFFFFFFFFFFFFLL];
  v17[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v13 = [v10 initWithDomain:@"com.apple.trial" code:a3 & 0xFFFFFFFFFFFFFFFLL userInfo:v12];

  v4 = [[TRIDownloadNotification alloc] initWithType:2 progress:0 error:v13];
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)generalErrorFromDownloadNotificationError:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = [v4 code];
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
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
        if (v6 != 4)
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

  if (!v6)
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

  if (v6 != 1)
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
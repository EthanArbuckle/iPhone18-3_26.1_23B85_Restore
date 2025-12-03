@interface TRIPersistentUserSettings
+ (id)settingsWithKeyValueStore:(id)store;
- (TRIPersistentUserSettings)initWithKeyValueStore:(id)store;
- (id)persistedActiveDictationLocales;
- (id)persistedMapsBucketId;
- (id)persistedMapsDeviceCountryCode;
- (id)persistedSiriLocale;
- (int64_t)persistedAIState;
- (unsigned)persistedDiagnosticsUsageEnabled;
- (unsigned)persistedIsSiriEnabled;
- (unsigned)persistedOptOutStatus;
- (void)persistAIState:(int64_t)state;
- (void)persistActiveDictationLocales:(id)locales;
- (void)persistDiagnosticsUsageEnabled:(unsigned __int8)enabled;
- (void)persistIsSiriEnabled:(unsigned __int8)enabled;
- (void)persistMapsBucketId:(id)id;
- (void)persistMapsDeviceCountryCode:(id)code;
- (void)persistOptOutStatus:(unsigned __int8)status;
- (void)persistSiriLocale:(id)locale;
@end

@implementation TRIPersistentUserSettings

- (TRIPersistentUserSettings)initWithKeyValueStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = TRIPersistentUserSettings;
  v6 = [(TRIPersistentUserSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyValueStore, store);
  }

  return v7;
}

+ (id)settingsWithKeyValueStore:(id)store
{
  storeCopy = store;
  v4 = [[TRIPersistentUserSettings alloc] initWithKeyValueStore:storeCopy];

  return v4;
}

- (unsigned)persistedOptOutStatus
{
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (!keyValueStore)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }

    goto LABEL_9;
  }

  keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
  v5 = [keyValueStore2 blobForKey:@"com.apple.triald.optout.experiment" usingTransaction:0];

  if (![v5 length])
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "No persisted opt-out state found", v9, 2u);
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = *[v5 bytes];
LABEL_10:

  return v6;
}

- (void)persistOptOutStatus:(unsigned __int8)status
{
  statusCopy = status;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&statusCopy length:1];
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (keyValueStore)
  {
    if (v4)
    {
LABEL_3:
      keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
      [keyValueStore2 setBlob:v4 forKey:@"com.apple.triald.optout.experiment" usingTransaction:0];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }

    if (v4)
    {
      goto LABEL_3;
    }
  }

  keyValueStore2 = TRILogCategory_Server();
  if (os_log_type_enabled(keyValueStore2, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_26F567000, keyValueStore2, OS_LOG_TYPE_ERROR, "Data to be persisted for opt-out status was nil", v8, 2u);
  }

LABEL_9:
}

- (unsigned)persistedIsSiriEnabled
{
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (!keyValueStore)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }

    goto LABEL_9;
  }

  keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
  v5 = [keyValueStore2 blobForKey:@"com.apple.triald.persisted.userSettingsIsSiriEnabled" usingTransaction:0];

  if (![v5 length])
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "No persisted siri enablement state found", v9, 2u);
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = *[v5 bytes];
LABEL_10:

  return v6;
}

- (void)persistIsSiriEnabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&enabledCopy length:1];
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (keyValueStore)
  {
    if (v4)
    {
LABEL_3:
      keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
      [keyValueStore2 setBlob:v4 forKey:@"com.apple.triald.persisted.userSettingsIsSiriEnabled" usingTransaction:0];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }

    if (v4)
    {
      goto LABEL_3;
    }
  }

  keyValueStore2 = TRILogCategory_Server();
  if (os_log_type_enabled(keyValueStore2, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_26F567000, keyValueStore2, OS_LOG_TYPE_ERROR, "Data to be persisted for siri enablement was nil", v8, 2u);
  }

LABEL_9:
}

- (id)persistedSiriLocale
{
  v19 = *MEMORY[0x277D85DE8];
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (keyValueStore)
  {
    keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
    v5 = [keyValueStore2 blobForKey:@"com.apple.triald.persisted.userSettingsSiriLocale" usingTransaction:0];

    if (v5 && [v5 length])
    {
      v6 = MEMORY[0x277CCAAC8];
      v7 = objc_autoreleasePoolPush();
      v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v7);
      v16 = 0;
      v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v5 error:&v16];
      v10 = v16;

      if (v10)
      {
        v11 = TRILogCategory_Server();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unable to unarchive siri locale from Trial persisted storage, encountered: %@", buf, 0xCu);
        }

        v12 = &stru_287FA0430;
      }

      else
      {
        v13 = &stru_287FA0430;
        if (v9)
        {
          v13 = v9;
        }

        v12 = v13;
      }
    }

    else
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "No persisted siri locale found", buf, 2u);
      }

      v12 = &stru_287FA0430;
    }
  }

  else
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }

    v12 = &stru_287FA0430;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)persistSiriLocale:(id)locale
{
  v19 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  if (!localeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPersistentUserSettings.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"siriLocale"}];
  }

  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (!keyValueStore)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }
  }

  v16 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:localeCopy requiringSecureCoding:0 error:&v16];
  v9 = v16;
  if (!v9)
  {
    if (v8)
    {
      keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
      [keyValueStore2 setBlob:v8 forKey:@"com.apple.triald.persisted.userSettingsSiriLocale" usingTransaction:0];
      goto LABEL_14;
    }

    keyValueStore2 = TRILogCategory_Server();
    if (!os_log_type_enabled(keyValueStore2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v11 = "Data to be persisted for siri locale was nil";
    v12 = keyValueStore2;
    v13 = 2;
    goto LABEL_10;
  }

  keyValueStore2 = TRILogCategory_Server();
  if (os_log_type_enabled(keyValueStore2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v9;
    v11 = "Unable to archive siri locale from Trial persisted storage, encountered: %@";
    v12 = keyValueStore2;
    v13 = 12;
LABEL_10:
    _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)persistedActiveDictationLocales
{
  v19 = *MEMORY[0x277D85DE8];
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];
  v3 = [keyValueStore blobForKey:@"com.apple.triald.persisted.activeDictationLocales" usingTransaction:0];

  if (v3 && [v3 length])
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    v16 = 0;
    v9 = [v4 unarchivedObjectOfClasses:v8 fromData:v3 error:&v16];
    v10 = v16;

    if (v10)
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unable to unarchive dictation locales from Trial persisted storage, encountered: %@", buf, 0xCu);
      }

      v12 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
      if (v9)
      {
        v13 = v9;
      }

      v12 = v13;
    }
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "No persisted dictation locales found", buf, 2u);
    }

    v12 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)persistActiveDictationLocales:(id)locales
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:locales requiringSecureCoding:0 error:&v11];
  v5 = v11;
  if (!v5)
  {
    if (v4)
    {
      keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];
      [keyValueStore setBlob:v4 forKey:@"com.apple.triald.persisted.activeDictationLocales" usingTransaction:0];
      goto LABEL_8;
    }

    keyValueStore = TRILogCategory_Server();
    if (!os_log_type_enabled(keyValueStore, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v7 = "Data to be persisted for dictation locales was nil";
    v8 = keyValueStore;
    v9 = 2;
    goto LABEL_4;
  }

  keyValueStore = TRILogCategory_Server();
  if (os_log_type_enabled(keyValueStore, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v13 = v5;
    v7 = "Unable to archive dictation locales from Trial persisted storage, encountered: %@";
    v8 = keyValueStore;
    v9 = 12;
LABEL_4:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
  }

LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

- (unsigned)persistedDiagnosticsUsageEnabled
{
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (!keyValueStore)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }

    goto LABEL_9;
  }

  keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
  v5 = [keyValueStore2 blobForKey:@"com.apple.triald.persisted.diagnosticsUsageEnabled" usingTransaction:0];

  if (![v5 length])
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "No persisted diagnostics and usage state found", v9, 2u);
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = *[v5 bytes];
LABEL_10:

  return v6;
}

- (void)persistDiagnosticsUsageEnabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&enabledCopy length:1];
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (keyValueStore)
  {
    if (v4)
    {
LABEL_3:
      keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
      [keyValueStore2 setBlob:v4 forKey:@"com.apple.triald.persisted.diagnosticsUsageEnabled" usingTransaction:0];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }

    if (v4)
    {
      goto LABEL_3;
    }
  }

  keyValueStore2 = TRILogCategory_Server();
  if (os_log_type_enabled(keyValueStore2, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_26F567000, keyValueStore2, OS_LOG_TYPE_ERROR, "Data to be persisted for diagnostics and usage was nil", v8, 2u);
  }

LABEL_9:
}

- (int64_t)persistedAIState
{
  v14 = *MEMORY[0x277D85DE8];
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (!keyValueStore)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "No key-value store present for persisted AI State retrieval", buf, 2u);
    }

    goto LABEL_14;
  }

  keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
  v5 = [keyValueStore2 blobForKey:@"com.apple.triald.persisted.AIState" usingTransaction:0];

  if (!v5 || ![v5 length])
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = @"com.apple.triald.persisted.AIState";
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "No persisted AI State and usage state found for key: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v11 = 0;
  if ([v5 length]< 8)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = [v5 length];
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Blob length (%lu) is insufficient for reading persisted AI State", buf, 0xCu);
    }

LABEL_14:
    v6 = -1;
    goto LABEL_15;
  }

  [v5 getBytes:&v11 length:8];
  v6 = v11;
LABEL_15:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)persistAIState:(int64_t)state
{
  stateCopy = state;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&stateCopy length:8];
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (keyValueStore)
  {
    if (v4)
    {
LABEL_3:
      keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
      [keyValueStore2 setBlob:v4 forKey:@"com.apple.triald.persisted.AIState" usingTransaction:0];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }

    if (v4)
    {
      goto LABEL_3;
    }
  }

  keyValueStore2 = TRILogCategory_Server();
  if (os_log_type_enabled(keyValueStore2, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_26F567000, keyValueStore2, OS_LOG_TYPE_ERROR, "Data to be persisted for Apple Intelligence and usage was nil", v8, 2u);
  }

LABEL_9:
}

- (id)persistedMapsBucketId
{
  v16 = *MEMORY[0x277D85DE8];
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];
  v3 = [keyValueStore blobForKey:@"com.apple.triald.persisted.Maps.BucketId" usingTransaction:0];

  if (v3 && [v3 length])
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_autoreleasePoolPush();
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    v13 = 0;
    v7 = [v4 unarchivedObjectOfClasses:v6 fromData:v3 error:&v13];
    v8 = v13;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Unable to unarchive maps bucket id from Trial persisted storage, encountered: %@", buf, 0xCu);
      }

      v9 = &unk_287FC4DF8;
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = @"com.apple.triald.persisted.Maps.BucketId";
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "No persisted Maps Bucket ID found for key: %{public}@", buf, 0xCu);
    }

    v9 = &unk_287FC4DF8;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)persistMapsBucketId:(id)id
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPersistentUserSettings.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"mapsBucketId != nil"}];
  }

  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];

  if (!keyValueStore)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "No key-value store present", buf, 2u);
    }
  }

  v16 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:idCopy requiringSecureCoding:0 error:&v16];
  v9 = v16;
  if (!v9)
  {
    if (v8)
    {
      keyValueStore2 = [(TRIPersistentUserSettings *)self keyValueStore];
      [keyValueStore2 setBlob:v8 forKey:@"com.apple.triald.persisted.Maps.BucketId" usingTransaction:0];
      goto LABEL_14;
    }

    keyValueStore2 = TRILogCategory_Server();
    if (!os_log_type_enabled(keyValueStore2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v11 = "Data to be persisted for maps bucket id was nil";
    v12 = keyValueStore2;
    v13 = 2;
    goto LABEL_10;
  }

  keyValueStore2 = TRILogCategory_Server();
  if (os_log_type_enabled(keyValueStore2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v9;
    v11 = "Unable to archive maps bucket id from Trial persisted storage, encountered: %@";
    v12 = keyValueStore2;
    v13 = 12;
LABEL_10:
    _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)persistedMapsDeviceCountryCode
{
  v17 = *MEMORY[0x277D85DE8];
  keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];
  v3 = [keyValueStore blobForKey:@"com.apple.triald.persisted.Maps.DeviceCountryCode" usingTransaction:0];

  if (v3 && [v3 length])
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_autoreleasePoolPush();
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v5);
    v14 = 0;
    v7 = [v4 unarchivedObjectOfClasses:v6 fromData:v3 error:&v14];
    v8 = v14;

    if (v8)
    {
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v8;
        _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Unable to unarchive Maps country code from Trial persisted storage, encountered: %@", buf, 0xCu);
      }

      v10 = &stru_287FA0430;
    }

    else
    {
      v11 = &stru_287FA0430;
      if (v7)
      {
        v11 = v7;
      }

      v10 = v11;
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "No persisted Maps country code found", buf, 2u);
    }

    v10 = &stru_287FA0430;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)persistMapsDeviceCountryCode:(id)code
{
  v14 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  if (!codeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPersistentUserSettings.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"countryCode"}];
  }

  v11 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:codeCopy requiringSecureCoding:0 error:&v11];
  v7 = v11;
  if (v6)
  {
    keyValueStore = [(TRIPersistentUserSettings *)self keyValueStore];
    [keyValueStore setBlob:v6 forKey:@"com.apple.triald.persisted.Maps.DeviceCountryCode" usingTransaction:0];
  }

  else
  {
    keyValueStore = TRILogCategory_Server();
    if (os_log_type_enabled(keyValueStore, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_26F567000, keyValueStore, OS_LOG_TYPE_ERROR, "Data to be persisted for Maps country code was nil, encountered: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end
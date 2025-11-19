@interface UIDictationConnectionPreferences
+ (id)sharedInstance;
- (BOOL)isOnDeviceDictationSupportAvailableForLanguage:(id)a3;
- (BOOL)isOnDeviceDictationSupportMissingAssetForLanguage:(id)a3;
- (BOOL)isOnDeviceEmojiRecognitionSupportAvailableForLanguage:(id)a3;
- (BOOL)isSmartLanguageSelectionEnabled;
- (id)getOfflineDictationStatusForLanguage:(id)a3;
- (id)initSingleton;
- (void)afPreferencesChanged:(id)a3;
@end

@implementation UIDictationConnectionPreferences

void __50__UIDictationConnectionPreferences_sharedInstance__block_invoke()
{
  v0 = [[UIDictationConnectionPreferences alloc] initSingleton];
  v1 = qword_1ED49F220;
  qword_1ED49F220 = v0;
}

- (id)initSingleton
{
  v15.receiver = self;
  v15.super_class = UIDictationConnectionPreferences;
  v2 = [(UIDictationConnectionPreferences *)&v15 init];
  if (!v2)
  {
    goto LABEL_8;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v3 = qword_1ED49F238;
  v24 = qword_1ED49F238;
  if (!qword_1ED49F238)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAFPreferencesClass_block_invoke_0;
    v19 = &unk_1E70F2F20;
    v20 = &v21;
    __getAFPreferencesClass_block_invoke_0(&v16);
    v3 = v22[3];
  }

  v4 = v3;
  _Block_object_dispose(&v21, 8);
  v5 = [v3 sharedPreferences];
  afPreferences = v2->_afPreferences;
  v2->_afPreferences = v5;

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v8 = qword_1ED49F240;
  v24 = qword_1ED49F240;
  if (!qword_1ED49F240)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAFPreferencesDidChangeNotificationSymbolLoc_block_invoke;
    v19 = &unk_1E70F2F20;
    v20 = &v21;
    v9 = AssistantServicesLibrary_0();
    v10 = dlsym(v9, "AFPreferencesDidChangeNotification");
    *(v20[1] + 24) = v10;
    qword_1ED49F240 = *(v20[1] + 24);
    v8 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v8)
  {
    [v7 addObserver:v2 selector:sel_afPreferencesChanged_ name:*v8 object:0];

    v11 = v2;
LABEL_8:

    return v2;
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNotificationName getAFPreferencesDidChangeNotification(void)"];
  [v13 handleFailureInFunction:v14 file:@"UIDictationConnection.m" lineNumber:66 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

+ (id)sharedInstance
{
  if (qword_1ED49F228 != -1)
  {
    dispatch_once(&qword_1ED49F228, &__block_literal_global_591);
  }

  v3 = qword_1ED49F220;

  return v3;
}

- (void)afPreferencesChanged:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__UIDictationConnectionPreferences_afPreferencesChanged___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__UIDictationConnectionPreferences_afPreferencesChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIDictationPreferencesDidChange" object:*(a1 + 32)];
}

- (id)getOfflineDictationStatusForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(UIDictationConnectionPreferences *)self afPreferences];
  v6 = [v5 offlineDictationStatus];

  v7 = [UIDictationUtilities _remapDictationLocaleFromLanguage:v4];

  v8 = [v7 languageIdentifier];

  v9 = [v6 objectForKeyedSubscript:v8];

  return v9;
}

- (BOOL)isSmartLanguageSelectionEnabled
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    afPreferences = self->_afPreferences;

    LOBYTE(v3) = [(AFPreferences *)afPreferences isSmartLanguageSelectionEnabled];
  }

  return v3;
}

- (BOOL)isOnDeviceDictationSupportAvailableForLanguage:(id)a3
{
  v3 = [(UIDictationConnectionPreferences *)self getOfflineDictationStatusForLanguage:a3];
  if (v3)
  {
    v4 = getAFOfflineDictationStatusHighQualityKey();
    v5 = [v3 objectForKeyedSubscript:v4];

    v6 = getAFOfflineDictationStatusInstalledKey();
    v7 = [v3 objectForKeyedSubscript:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 BOOLValue];
    }

    else
    {
      v8 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 BOOLValue];
    }

    else
    {
      v10 = 0;
    }

    v9 = v8 & v10;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isOnDeviceDictationSupportMissingAssetForLanguage:(id)a3
{
  v3 = [(UIDictationConnectionPreferences *)self getOfflineDictationStatusForLanguage:a3];
  if (v3)
  {
    v4 = getAFOfflineDictationStatusHighQualityKey();
    v5 = [v3 objectForKeyedSubscript:v4];

    v6 = getAFOfflineDictationStatusInstalledKey();
    v7 = [v3 objectForKeyedSubscript:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 BOOLValue];
    }

    else
    {
      v8 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 1;
    }

    v9 = v8 & v10;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isOnDeviceEmojiRecognitionSupportAvailableForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(UIDictationConnectionPreferences *)self getOfflineDictationStatusForLanguage:v4];
  if (!v5)
  {
    v12 = 0;
LABEL_13:

    return v12;
  }

  v6 = getAFOfflineDictationStatusInstalledKey();
  v7 = [v5 objectForKeyedSubscript:v6];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v8 = getAFOfflineDictationStatusEmojiRecognitionKeySymbolLoc_ptr;
  v20 = getAFOfflineDictationStatusEmojiRecognitionKeySymbolLoc_ptr;
  if (!getAFOfflineDictationStatusEmojiRecognitionKeySymbolLoc_ptr)
  {
    v9 = AssistantServicesLibrary_0();
    v18[3] = dlsym(v9, "AFOfflineDictationStatusEmojiRecognitionKey");
    getAFOfflineDictationStatusEmojiRecognitionKeySymbolLoc_ptr = v18[3];
    v8 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v8)
  {
    v10 = [v5 objectForKeyedSubscript:*v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 BOOLValue];
    }

    else
    {
      v11 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v7 BOOLValue];
    }

    else
    {
      v13 = 0;
    }

    v12 = v11 & v13;

    goto LABEL_13;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAFOfflineDictationStatusEmojiRecognitionKey(void)"];
  [v15 handleFailureInFunction:v16 file:@"UIDictationConnection.m" lineNumber:70 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

@end
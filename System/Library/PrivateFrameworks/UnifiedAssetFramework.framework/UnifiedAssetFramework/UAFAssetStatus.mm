@interface UAFAssetStatus
+ (BOOL)dictationAvailableForLanguage:(id)language;
+ (id)mockAssetStatus;
+ (id)stringFromUAFAssetState:(unint64_t)state;
- (UAFAssetStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UAFAssetStatus

+ (id)mockAssetStatus
{
  v17 = *MEMORY[0x1E69E9840];
  if (!+[UAFCommonUtilities isInternalInstall])
  {
    v9 = 0;
    goto LABEL_24;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.siri.asset"];

  v4 = [v3 objectForKey:@"Mock Download State"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 description];
        v13 = 136315394;
        v14 = "+[UAFAssetStatus mockAssetStatus]";
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings Using mock download state: %@", &v13, 0x16u);
      }

      if ([v4 isEqualToString:@"NotStarted"])
      {
        v7 = 0;
        v8 = 2;
LABEL_22:
        v9 = objc_alloc_init(UAFAssetStatus);
        [(UAFAssetStatus *)v9 setState:v8];
        [(UAFAssetStatus *)v9 setValue:v7];

        goto LABEL_23;
      }

      if ([v4 isEqualToString:@"Downloading"])
      {
        v10 = [v3 objectForKey:@"Mock Progress"];
        if (!v10)
        {
          v7 = 0;
          v8 = 3;
          goto LABEL_21;
        }

        objc_opt_class();
        v8 = 3;
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_13;
        }
      }

      else
      {
        if ([v4 isEqualToString:@"Finished"])
        {
          v7 = 0;
          v8 = 5;
          goto LABEL_22;
        }

        if (![v4 isEqualToString:@"OutOfSpace"])
        {
          v7 = 0;
          v8 = 0;
          goto LABEL_22;
        }

        v10 = [v3 objectForKey:@"Mock Space Required"];
        if (!v10)
        {
          v7 = 0;
          v8 = 6;
          goto LABEL_21;
        }

        objc_opt_class();
        v8 = 6;
        if (objc_opt_isKindOfClass())
        {
LABEL_13:
          v10 = v10;
          v7 = v10;
LABEL_21:

          goto LABEL_22;
        }
      }

      v7 = 0;
      goto LABEL_21;
    }
  }

  v9 = 0;
LABEL_23:

LABEL_24:
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)stringFromUAFAssetState:(unint64_t)state
{
  if (state - 1 > 5)
  {
    return @"UAFAssetStateUnknown";
  }

  else
  {
    return off_1E7FFDE00[state - 1];
  }
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"state"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (UAFAssetStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UAFAssetStatus;
  v5 = [(UAFAssetStatus *)&v9 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v6 = [coderCopy decodeObjectForKey:@"value"];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

+ (BOOL)dictationAvailableForLanguage:(id)language
{
  v34 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v4 = languageCopy;
  if (languageCopy)
  {
    v5 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "+[UAFAssetStatus dictationAvailableForLanguage:]";
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s #settings Checking to see if on-device dictation assets are available for %{public}@", buf, 0x16u);
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v7 = _MergedGlobals_7;
    v30 = _MergedGlobals_7;
    if (!_MergedGlobals_7)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAFPreferencesClass_block_invoke_0;
      v32 = &unk_1E7FFD1D8;
      v33 = &v27;
      __getAFPreferencesClass_block_invoke_0(buf);
      v7 = v28[3];
    }

    v8 = v7;
    _Block_object_dispose(&v27, 8);
    sharedPreferences = [v7 sharedPreferences];
    offlineDictationStatus = [sharedPreferences offlineDictationStatus];
    v11 = offlineDictationStatus;
    if (!offlineDictationStatus)
    {
      v12 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "+[UAFAssetStatus dictationAvailableForLanguage:]";
        _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s #settings offlineDictationStatus is nil!", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_40;
    }

    v12 = [offlineDictationStatus objectForKeyedSubscript:v5];
    if (!v12)
    {
      v16 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "+[UAFAssetStatus dictationAvailableForLanguage:]";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s #settings offlineDictationStatusForLanguage is nil for %{public}@!", buf, 0x16u);
      }

      v18 = 0;
      goto LABEL_39;
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v13 = qword_1ED7D1118;
    v30 = qword_1ED7D1118;
    if (!qword_1ED7D1118)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAFOfflineDictationStatusHighQualityKeySymbolLoc_block_invoke;
      v32 = &unk_1E7FFD1D8;
      v33 = &v27;
      v14 = AssistantServicesLibrary_3();
      v15 = dlsym(v14, "AFOfflineDictationStatusHighQualityKey");
      *(v33[1] + 24) = v15;
      qword_1ED7D1118 = *(v33[1] + 24);
      v13 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (v13)
    {
      v16 = [v12 objectForKeyedSubscript:*v13];
      if (!v16)
      {
        v19 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "+[UAFAssetStatus dictationAvailableForLanguage:]";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s #settings isHighQualityValue is nil for %{public}@!", buf, 0x16u);
        }

        goto LABEL_35;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v16 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v20 = qword_1ED7D1120;
      v30 = qword_1ED7D1120;
      if (!qword_1ED7D1120)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAFOfflineDictationStatusInstalledKeySymbolLoc_block_invoke;
        v32 = &unk_1E7FFD1D8;
        v33 = &v27;
        v21 = AssistantServicesLibrary_3();
        v22 = dlsym(v21, "AFOfflineDictationStatusInstalledKey");
        *(v33[1] + 24) = v22;
        qword_1ED7D1120 = *(v33[1] + 24);
        v20 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (v20)
      {
        v19 = [v12 objectForKeyedSubscript:*v20];
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            bOOLValue2 = [v19 BOOLValue];
          }

          else
          {
            bOOLValue2 = 0;
          }

          v18 = bOOLValue & bOOLValue2;
          goto LABEL_38;
        }

        v24 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "+[UAFAssetStatus dictationAvailableForLanguage:]";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          _os_log_error_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_ERROR, "%s #settings isInstalledValue is nil for %{public}@!", buf, 0x16u);
        }

        v19 = 0;
LABEL_35:
        v18 = 0;
LABEL_38:

LABEL_39:
LABEL_40:

        goto LABEL_41;
      }
    }

    dlerror();
    abort_report_np();
    __break(1u);
  }

  v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "+[UAFAssetStatus dictationAvailableForLanguage:]";
    _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s #settings dictation language is nil!", buf, 0xCu);
  }

  v18 = 0;
LABEL_41:

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

@end
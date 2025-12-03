@interface UAFGestalt
+ (BOOL)deviceMatch:(id)match onMatch:(id)onMatch;
+ (BOOL)dictionaryIsValid:(id)valid;
+ (BOOL)isKeySupported:(id)supported key:(id)key;
+ (BOOL)predicateMatch:(id)match;
+ (UAFGestalt)sharedManager;
+ (id)dictionaryForGestalt:(id)gestalt;
+ (id)urlForGestalt:(id)gestalt;
- (BOOL)query:(id)query forKey:(id)key;
- (UAFGestalt)init;
- (id)queryAllSupportedKeys:(id)keys;
@end

@implementation UAFGestalt

+ (UAFGestalt)sharedManager
{
  if (_MergedGlobals_12 != -1)
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
  }

  v3 = qword_1ED7D1190;

  return v3;
}

void __27__UAFGestalt_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(UAFGestalt);
  v1 = qword_1ED7D1190;
  qword_1ED7D1190 = v0;
}

- (UAFGestalt)init
{
  v6.receiver = self;
  v6.super_class = UAFGestalt;
  v2 = [(UAFGestalt *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (BOOL)dictionaryIsValid:(id)valid
{
  v19 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v4 = validCopy;
  if (validCopy)
  {
    v5 = [validCopy objectForKeyedSubscript:@"FileType"];
    v6 = v5;
    if (v5 && ([v5 isEqualToString:@"GestaltConfiguration"]& 1) != 0)
    {
      v7 = [v4 objectForKeyedSubscript:@"FileVersion"];
      v8 = v7;
      if (v7 && ([v7 isEqualToString:@"1.0.0"]& 1) != 0)
      {
        v9 = 1;
LABEL_16:

        goto LABEL_17;
      }

      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315650;
        v14 = "+[UAFGestalt dictionaryIsValid:]";
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = @"1.0.0";
        _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Mismatched file version %@ vs %@", &v13, 0x20u);
      }
    }

    else
    {
      v8 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315650;
        v14 = "+[UAFGestalt dictionaryIsValid:]";
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = @"GestaltConfiguration";
        _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Mismatched file type %@ vs %@", &v13, 0x20u);
      }
    }

    v9 = 0;
    goto LABEL_16;
  }

  v6 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "+[UAFGestalt dictionaryIsValid:]";
    _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, "%s dictionary is null", &v13, 0xCu);
  }

  v9 = 0;
LABEL_17:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)predicateMatch:(id)match
{
  v31 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  v4 = [matchCopy objectForKeyedSubscript:@"TargetingPredicate"];
  if (v4)
  {
    v5 = v4;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [&unk_1F3B73290 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(&unk_1F3B73290);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v10];
          if ([v5 containsString:v11])
          {
            v12 = [UAFCommonUtilities mobileGestaltQuery:v10];
            if (!v12)
            {
              v19 = UAFGetLogCategory(&UAFLogContextClient);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v27 = "+[UAFGestalt predicateMatch:]";
                v28 = 2112;
                v29 = v10;
                _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s No mobile gestalt answer for %@", buf, 0x16u);
              }

              v18 = 0;
              goto LABEL_21;
            }

            v13 = v12;
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v12];
            v15 = [v5 stringByReplacingOccurrencesOfString:v11 withString:v14];

            v5 = v15;
          }
        }

        v7 = [&unk_1F3B73290 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v16 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "+[UAFGestalt predicateMatch:]";
      v28 = 2114;
      v29 = v5;
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Evaluating predicate string: '%{public}@'", buf, 0x16u);
    }

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:v5];
    v18 = [v17 evaluateWithObject:0];
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "+[UAFGestalt predicateMatch:]";
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Missing predicate string", buf, 0xCu);
    }

    v18 = 0;
  }

LABEL_21:

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (BOOL)isKeySupported:(id)supported key:(id)key
{
  keyCopy = key;
  v6 = [supported objectForKeyedSubscript:@"SupportedKeys"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 containsObject:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)deviceMatch:(id)match onMatch:(id)onMatch
{
  v31 = *MEMORY[0x1E69E9840];
  onMatchCopy = onMatch;
  v6 = [match objectForKeyedSubscript:@"ValidConfigs"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "+[UAFGestalt deviceMatch:onMatch:]";
      v27 = 2112;
      v28 = @"ValidConfigs";
      v29 = 2112;
      v30 = v6;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Invalid %@ value: %@", buf, 0x20u);
    }

    v15 = 0;
    goto LABEL_27;
  }

  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
    v15 = 0;
    goto LABEL_26;
  }

  v9 = v8;
  v19 = v6;
  v10 = *v21;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v14 = [v13 objectForKeyedSubscript:@"TargetingType"];
        if ([(__CFString *)v14 isEqualToString:@"GestaltPredicate"])
        {
          if (![UAFGestalt predicateMatch:v13])
          {

            continue;
          }

          onMatchCopy[2](onMatchCopy, v13);
          v15 = 1;
          v6 = v19;
        }

        else
        {
          v6 = v19;
          if ([(__CFString *)v14 isEqualToString:@"AllDevices"])
          {
            onMatchCopy[2](onMatchCopy, v13);
            v15 = 1;
          }

          else
          {
            v16 = UAFGetLogCategory(&UAFLogContextClient);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v26 = "+[UAFGestalt deviceMatch:onMatch:]";
              v27 = 2112;
              v28 = v14;
              _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Unknown targeting type: %@", buf, 0x16u);
            }

            v15 = 0;
          }
        }

        goto LABEL_26;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  v15 = 0;
  v6 = v19;
LABEL_26:

LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)urlForGestalt:(id)gestalt
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = MEMORY[0x1E696AEC0];
  gestaltCopy = gestalt;
  v6 = +[UAFCommonUtilities rootDirectory];
  gestaltCopy = [v4 stringWithFormat:@"file://%@%@/Gestalt/%@.plist", v6, @"/System/Library/UnifiedAssetFramework", gestaltCopy];
  v8 = [v3 URLWithString:gestaltCopy];

  v9 = MEMORY[0x1E695DFF8];
  v10 = MEMORY[0x1E696AEC0];
  v11 = +[UAFCommonUtilities rootDirectory];
  gestaltCopy2 = [v10 stringWithFormat:@"file://%@%@/Gestalt/%@.plist", v11, @"/AppleInternal/Library/UnifiedAssetFramework", gestaltCopy];

  v13 = [v9 URLWithString:gestaltCopy2];

  memset(v19, 0, sizeof(v19));
  if (!+[UAFCommonUtilities isInternalInstall](UAFCommonUtilities, "isInternalInstall") || ([v13 path], v14 = objc_claimAutoreleasedReturnValue(), v15 = +[UAFCommonUtilities stat:withBuf:error:](UAFCommonUtilities, "stat:withBuf:error:", v14, v19, 0), v14, v16 = v13, v15))
  {
    v16 = v8;
  }

  v17 = v16;

  return v17;
}

+ (id)dictionaryForGestalt:(id)gestalt
{
  v23 = *MEMORY[0x1E69E9840];
  gestaltCopy = gestalt;
  v4 = [UAFGestalt urlForGestalt:gestaltCopy];
  if (v4)
  {
    v16 = 0;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v4 error:&v16];
    v6 = v16;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      if ([UAFGestalt dictionaryIsValid:v5])
      {
        v13 = v5;
LABEL_15:

        goto LABEL_16;
      }

      v9 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v18 = "+[UAFGestalt dictionaryForGestalt:]";
        v10 = "%s Dictionary is not valid";
        v11 = v9;
        v12 = 12;
        goto LABEL_20;
      }
    }

    else
    {
      v9 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "+[UAFGestalt dictionaryForGestalt:]";
        v19 = 2112;
        v20 = v4;
        v21 = 2112;
        v22 = v7;
        v10 = "%s Error reading %@: %@";
        v11 = v9;
        v12 = 32;
LABEL_20:
        _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }
    }

    v13 = 0;
    goto LABEL_15;
  }

  v7 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "+[UAFGestalt dictionaryForGestalt:]";
    v19 = 2112;
    v20 = gestaltCopy;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Could not find config file for %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_16:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)query:(id)query forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [UAFGestalt dictionaryForGestalt:queryCopy];
  if (v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __27__UAFGestalt_query_forKey___block_invoke;
    v12[3] = &unk_1E7FFE2A0;
    v14 = &v15;
    v13 = keyCopy;
    if (![UAFGestalt deviceMatch:v7 onMatch:v12])
    {
      v8 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[UAFGestalt query:forKey:]";
        v21 = 2114;
        v22 = queryCopy;
        _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s No matching configs for %{public}@", buf, 0x16u);
      }
    }

    v9 = *(v16 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

BOOL __27__UAFGestalt_query_forKey___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [UAFGestalt isKeySupported:a2 key:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)queryAllSupportedKeys:(id)keys
{
  v21 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v4 = [UAFGestalt dictionaryForGestalt:keysCopy];
  v5 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__UAFGestalt_queryAllSupportedKeys___block_invoke;
    v10[3] = &unk_1E7FFE2C8;
    v10[4] = &v11;
    if (![UAFGestalt deviceMatch:v4 onMatch:v10])
    {
      v6 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[UAFGestalt queryAllSupportedKeys:]";
        v19 = 2114;
        v20 = keysCopy;
        _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s No matching configs for %{public}@", buf, 0x16u);
      }

      v7 = v12[5];
      v12[5] = v5;
    }

    v5 = v12[5];
  }

  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

void __36__UAFGestalt_queryAllSupportedKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"SupportedKeys"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end
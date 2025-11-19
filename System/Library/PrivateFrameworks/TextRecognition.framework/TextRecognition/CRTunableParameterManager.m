@interface CRTunableParameterManager
+ (id)sharedManager;
- (CRTunableParameterManager)init;
- (id)_overrideDictionary:(id)a3 withParametersFromDictionary:(id)a4 currentKeyPath:(id)a5;
- (id)overrideDictionary:(id)a3 withParametersFromDictionaryAtKeyPath:(id)a4;
- (id)parameterDictionaryForKeyPath:(id)a3;
- (id)parameterForKeyPath:(id)a3;
- (void)_processOverriddenKeyPath:(id)a3 withValue:(id)a4;
@end

@implementation CRTunableParameterManager

- (CRTunableParameterManager)init
{
  v32 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = CRTunableParameterManager;
  v2 = [(CRTunableParameterManager *)&v29 init];
  if (v2)
  {
    v3 = getenv("CR_TUNABLE_PARAMETER_FILE");
    if (v3)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithCString:v3 encoding:4];
    }

    else
    {
      v4 = @"/tmp/CRParameters.json";
    }

    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      v7 = CROSLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEFAULT, "******************", buf, 2u);
      }

      v8 = CROSLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_DEFAULT, "* Reading tunable parameters from:", buf, 2u);
      }

      v9 = CROSLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v4;
        _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_DEFAULT, "* %@", buf, 0xCu);
      }

      v10 = CROSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_DEFAULT, "******************", buf, 2u);
      }

      if ([(__CFString *)v4 hasSuffix:@".json"])
      {
        v28 = 0;
        v11 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v4 encoding:4 error:&v28];
        v12 = v28;
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v24 = [v11 dataUsingEncoding:4];
          v27 = 0;
          v25 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v24 options:4 error:&v27];
          v13 = v27;
          parametersDict = v2->_parametersDict;
          v2->_parametersDict = v25;

          if (!v13)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_20;
      }

      if ([(__CFString *)v4 hasSuffix:@".plist"])
      {
        v14 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
        v13 = 0;
LABEL_33:
        v20 = v2->_parametersDict;
        v2->_parametersDict = v14;

LABEL_34:
        v21 = [MEMORY[0x1E695DFA8] set];
        overriddenKeyPaths = v2->_overriddenKeyPaths;
        v2->_overriddenKeyPaths = v21;

        return v2;
      }
    }

    v13 = 0;
LABEL_20:
    v15 = CROSLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v15, OS_LOG_TYPE_ERROR, "!!!!!!!!!!!!!!!!!!", buf, 2u);
    }

    v16 = CROSLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_ERROR, "! Cannot read tunable parameters from:", buf, 2u);
    }

    v17 = CROSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v4;
      _os_log_impl(&dword_1B40D2000, v17, OS_LOG_TYPE_ERROR, "! %@", buf, 0xCu);
    }

    if (v13)
    {
      v18 = CROSLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v13;
        _os_log_impl(&dword_1B40D2000, v18, OS_LOG_TYPE_ERROR, "! %@", buf, 0xCu);
      }
    }

    v19 = CROSLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v19, OS_LOG_TYPE_ERROR, "!!!!!!!!!!!!!!!!!!", buf, 2u);
    }

    v14 = MEMORY[0x1E695E0F8];
    goto LABEL_33;
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CRTunableParameterManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED95FD58 != -1)
  {
    dispatch_once(&qword_1ED95FD58, block);
  }

  v2 = _MergedGlobals_10;

  return v2;
}

void __42__CRTunableParameterManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_10;
  _MergedGlobals_10 = v0;
}

- (id)parameterForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(CRTunableParameterManager *)self parametersDict];
  v6 = [v5 valueForKeyPath:v4];

  [(CRTunableParameterManager *)self _processOverriddenKeyPath:v4 withValue:v6];

  return v6;
}

- (id)parameterDictionaryForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(CRTunableParameterManager *)self parametersDict];
  v6 = [v5 valueForKeyPath:v4];

  [(CRTunableParameterManager *)self _processOverriddenKeyPath:v4 withValue:v6];

  return v6;
}

- (id)overrideDictionary:(id)a3 withParametersFromDictionaryAtKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRTunableParameterManager *)self parameterDictionaryForKeyPath:v7];
  if (v8)
  {
    v9 = [(CRTunableParameterManager *)self _overrideDictionary:v6 withParametersFromDictionary:v8 currentKeyPath:v7];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (void)_processOverriddenKeyPath:(id)a3 withValue:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(CRTunableParameterManager *)self overriddenKeyPaths];
    v9 = [v8 containsObject:v6];

    if ((v9 & 1) == 0)
    {
      v10 = [(CRTunableParameterManager *)self overriddenKeyPaths];
      [v10 addObject:v6];

      v11 = CROSLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 description];
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_DEFAULT, "* Overriding tunable parameter at key path '%@' with value: %@", &v13, 0x16u);
      }
    }
  }
}

- (id)_overrideDictionary:(id)a3 withParametersFromDictionary:(id)a4 currentKeyPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a3];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __93__CRTunableParameterManager__overrideDictionary_withParametersFromDictionary_currentKeyPath___block_invoke;
  v19 = &unk_1E7BC2000;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = self;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [v11 enumerateKeysAndObjectsUsingBlock:&v16];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:{v11, v16, v17, v18, v19}];

  return v14;
}

void __93__CRTunableParameterManager__overrideDictionary_withParametersFromDictionary_currentKeyPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v13];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *(a1 + 40), v13];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 56);
      v9 = [*(a1 + 32) objectForKeyedSubscript:v13];
      v10 = [v8 _overrideDictionary:v5 withParametersFromDictionary:v9 currentKeyPath:v7];
      [*(a1 + 48) setObject:v10 forKeyedSubscript:v13];
    }

    else
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:v13];
      [*(a1 + 48) setObject:v11 forKeyedSubscript:v13];

      v12 = *(a1 + 56);
      v9 = [*(a1 + 32) objectForKeyedSubscript:v13];
      [v12 _processOverriddenKeyPath:v7 withValue:v9];
    }
  }
}

@end
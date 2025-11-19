@interface BYTestingSurrogateBehaviorManager
+ (id)sharedInstance;
- (BOOL)_enabledForDomain:(id)a3;
- (BOOL)_hasEnabledValueForDomain:(id)a3;
- (BOOL)enabledForDomain:(id)a3;
- (BYTestingSurrogateBehaviorManager)init;
- (id)_allDomains;
- (id)_behaviorDictionaryFromBehavior:(id)a3 count:(unint64_t)a4;
- (id)_behaviorFromBehaviorDictionary:(id)a3 returningCount:(unint64_t *)a4;
- (id)_behaviorFromBehaviorsArray:(id)a3 returningCount:(unint64_t *)a4;
- (id)_behaviorsForDomain:(id)a3 behaviorName:(id)a4;
- (id)acquireNextBehaviorWithName:(id)a3 domain:(id)a4;
- (void)_addBehaviorsFromConfigurationFilesIfNecessary;
- (void)_setBehaviors:(id)a3 forDomain:(id)a4 behaviorName:(id)a5;
- (void)_setEnabled:(BOOL)a3 forDomain:(id)a4;
- (void)_setNamedBehaviorsFromDictionary:(id)a3 forDomain:(id)a4;
- (void)addBehavior:(id)a3 withName:(id)a4 domain:(id)a5 count:(unint64_t)a6 replacingAllOthers:(BOOL)a7;
@end

@implementation BYTestingSurrogateBehaviorManager

+ (id)sharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!sharedInstance_sharedInstance_1)
  {
    v3 = objc_alloc_init(BYTestingSurrogateBehaviorManager);
    v4 = sharedInstance_sharedInstance_1;
    sharedInstance_sharedInstance_1 = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedInstance_sharedInstance_1;

  return v5;
}

- (BYTestingSurrogateBehaviorManager)init
{
  v4.receiver = self;
  v4.super_class = BYTestingSurrogateBehaviorManager;
  v2 = [(BYTestingSurrogateBehaviorManager *)&v4 init];
  if (v2 && os_variant_has_internal_ui())
  {
    [(BYTestingSurrogateBehaviorManager *)v2 _addBehaviorsFromConfigurationFilesIfNecessary];
  }

  return v2;
}

- (void)_addBehaviorsFromConfigurationFilesIfNecessary
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(BYTestingSurrogateBehaviorManager *)v2 _allDomains];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v19 = *v23;
    v17 = v2;
    do
    {
      v20 = v4;
      for (i = 0; i != v20; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        if (![(BYTestingSurrogateBehaviorManager *)v2 _hasEnabledValueForDomain:v6])
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PurpleBuddy-%@.plist", v6];
          v8 = [@"/AppleInternal/System/Library/" stringByAppendingPathComponent:v7];
          v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
          v10 = objc_alloc(MEMORY[0x1E695DF20]);
          v21 = 0;
          v11 = [v10 initWithContentsOfURL:v9 error:&v21];
          v18 = v21;
          if (v11)
          {
            v12 = _BYLoggingFacility();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = MEMORY[0x1E696AD98];
              v14 = [v11 allKeys];
              v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
              *buf = 138412546;
              v27 = v6;
              v28 = 2112;
              v29 = v15;
              _os_log_impl(&dword_1B862F000, v12, OS_LOG_TYPE_DEFAULT, "Enabling testing surrogate functionality for domain %@ with %@ behavior names", buf, 0x16u);

              v2 = v17;
            }

            [(BYTestingSurrogateBehaviorManager *)v2 _setNamedBehaviorsFromDictionary:v11 forDomain:v6];
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)_allDomains
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(BYTestingSurrogateBehaviorManager *)self domainSoftwareUpdate];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)_hasEnabledValueForDomain:(id)a3
{
  v3 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForEnablementOfDomain:a3];
  v4 = CFPreferencesCopyValue(v3, @"com.apple.purplebuddy.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_enabledForDomain:(id)a3
{
  v3 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForEnablementOfDomain:a3];
  v4 = CFPreferencesCopyValue(v3, @"com.apple.purplebuddy.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_setEnabled:(BOOL)a3 forDomain:(id)a4
{
  v4 = a3;
  v5 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForEnablementOfDomain:a4];
  if (v4)
  {
    v6 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E695E8B8];
  v8 = *MEMORY[0x1E695E8B0];

  CFPreferencesSetValue(v5, v6, @"com.apple.purplebuddy.notbackedup", v7, v8);
}

- (id)_behaviorsForDomain:(id)a3 behaviorName:(id)a4
{
  v4 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForDomain:a3 behaviorName:a4];
  v5 = CFPreferencesCopyValue(v4, @"com.apple.purplebuddy.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  return v5;
}

- (void)_setBehaviors:(id)a3 forDomain:(id)a4 behaviorName:(id)a5
{
  value = a3;
  v8 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForDomain:a4 behaviorName:a5];
  CFPreferencesSetValue(v8, value, @"com.apple.purplebuddy.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
}

- (void)_setNamedBehaviorsFromDictionary:(id)a3 forDomain:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v6 allKeys];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = *MEMORY[0x1E695E8B8];
    v12 = *MEMORY[0x1E695E8B0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForDomain:v7 behaviorName:v14];
        v16 = [v6 objectForKeyedSubscript:v14];
        CFPreferencesSetValue(v15, v16, @"com.apple.purplebuddy.notbackedup", v11, v12);
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)enabledForDomain:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(BYTestingSurrogateBehaviorManager *)v5 _enabledForDomain:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)_behaviorFromBehaviorDictionary:(id)a3 returningCount:(unint64_t *)a4
{
  v5 = a3;
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = 0;
    goto LABEL_28;
  }

  v6 = [v5 objectForKeyedSubscript:@"duration"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v5 objectForKeyedSubscript:@"error"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v8 = [v7 objectForKeyedSubscript:@"domain"];
      if (!v8)
      {
        goto LABEL_13;
      }

      v9 = v8;
      v10 = [v7 objectForKeyedSubscript:@"domain"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_13;
      }

      v12 = [v7 objectForKeyedSubscript:@"code"];
      if (!v12 || (v13 = v12, [v7 objectForKeyedSubscript:@"code"], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v15 = objc_opt_isKindOfClass(), v14, v13, (v15 & 1) == 0))
      {
LABEL_13:
        v20 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v16 = MEMORY[0x1E696ABC0];
      v17 = [v7 objectForKeyedSubscript:@"domain"];
      v18 = [v7 objectForKeyedSubscript:@"code"];
      v19 = [v16 errorWithDomain:v17 code:objc_msgSend(v18 userInfo:{"integerValue"), 0}];
    }

    else
    {
      v19 = 0;
    }

    v21 = [v5 objectForKeyedSubscript:@"results"];
    if (v21)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v22 = [v5 objectForKeyedSubscript:@"count"];
    v23 = v22;
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = 0;
        goto LABEL_24;
      }

      v22 = [v23 unsignedIntegerValue];
    }

    *a4 = v22;
    v20 = objc_alloc_init(BYTestingSurrogateBehavior);
    -[BYTestingSurrogateBehavior setDuration:](v20, "setDuration:", [v6 integerValue]);
    [(BYTestingSurrogateBehavior *)v20 setError:v19];
    [(BYTestingSurrogateBehavior *)v20 setResults:v21];
LABEL_24:

    goto LABEL_25;
  }

  v20 = 0;
LABEL_27:

LABEL_28:

  return v20;
}

- (id)_behaviorFromBehaviorsArray:(id)a3 returningCount:(unint64_t *)a4
{
  v6 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [(BYTestingSurrogateBehaviorManager *)self _behaviorFromBehaviorDictionary:v7 returningCount:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_behaviorDictionaryFromBehavior:(id)a3 count:(unint64_t)a4
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = MEMORY[0x1E696AD98];
  [v5 duration];
  v8 = [v7 numberWithDouble:?];
  [v6 setObject:v8 forKeyedSubscript:@"duration"];

  v9 = [v5 error];

  if (v9)
  {
    v22[0] = @"domain";
    v10 = [v5 error];
    v11 = [v10 domain];
    v22[1] = @"code";
    v23[0] = v11;
    v12 = MEMORY[0x1E696AD98];
    v13 = [v5 error];
    v14 = [v12 numberWithInteger:{objc_msgSend(v13, "code")}];
    v23[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [v6 setObject:v15 forKeyedSubscript:@"error"];
  }

  v16 = [v5 results];

  if (v16)
  {
    v17 = [v5 results];
    [v6 setObject:v17 forKeyedSubscript:@"results"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v6 setObject:v18 forKeyedSubscript:@"count"];

  v19 = [v6 copy];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)acquireNextBehaviorWithName:(id)a3 domain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(BYTestingSurrogateBehaviorManager *)v8 _behaviorsForDomain:v7 behaviorName:v6];
  v23 = 0;
  v10 = [(BYTestingSurrogateBehaviorManager *)v8 _behaviorFromBehaviorsArray:v9 returningCount:&v23];
  if (v10)
  {
    v11 = v23;
    if (v23)
    {
      v12 = [v9 mutableCopy];
      v13 = v12;
      v14 = v11 - 1;
      if (v11 == 1)
      {
        [v12 removeObjectAtIndex:0];
      }

      else
      {
        v15 = [v12 objectAtIndexedSubscript:0];
        v16 = [v15 mutableCopy];

        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
        [v16 setObject:v17 forKeyedSubscript:@"count"];

        [v13 setObject:v16 atIndexedSubscript:0];
      }

      [(BYTestingSurrogateBehaviorManager *)v8 _setBehaviors:v13 forDomain:v7 behaviorName:v6];
    }
  }

  objc_sync_exit(v8);
  if (!v10)
  {
    v20 = v19 = MEMORY[0x1E695DF30];
    v21 = [v19 exceptionWithName:@"Unspecified or malformed testing behavior" reason:v20 userInfo:0];

    v22 = _BYLoggingFacility();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [BYTestingSurrogateBehaviorManager acquireNextBehaviorWithName:v21 domain:v22];
    }

    objc_exception_throw(v21);
  }

  return v10;
}

- (void)addBehavior:(id)a3 withName:(id)a4 domain:(id)a5 count:(unint64_t)a6 replacingAllOthers:(BOOL)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  objc_sync_enter(v14);
  [(BYTestingSurrogateBehaviorManager *)v14 _setEnabled:1 forDomain:v13];
  v15 = [(BYTestingSurrogateBehaviorManager *)v14 _behaviorDictionaryFromBehavior:v18 count:a6];
  if (a7)
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v16 = [(BYTestingSurrogateBehaviorManager *)v14 _behaviorsForDomain:v13 behaviorName:v12];
  }

  v17 = [v16 arrayByAddingObject:v15];

  [(BYTestingSurrogateBehaviorManager *)v14 _setBehaviors:v17 forDomain:v13 behaviorName:v12];
  objc_sync_exit(v14);
}

- (void)acquireNextBehaviorWithName:(uint64_t)a1 domain:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Throwing %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
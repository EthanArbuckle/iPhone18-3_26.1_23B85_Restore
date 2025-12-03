@interface BYTestingSurrogateBehaviorManager
+ (id)sharedInstance;
- (BOOL)_enabledForDomain:(id)domain;
- (BOOL)_hasEnabledValueForDomain:(id)domain;
- (BOOL)enabledForDomain:(id)domain;
- (BYTestingSurrogateBehaviorManager)init;
- (id)_allDomains;
- (id)_behaviorDictionaryFromBehavior:(id)behavior count:(unint64_t)count;
- (id)_behaviorFromBehaviorDictionary:(id)dictionary returningCount:(unint64_t *)count;
- (id)_behaviorFromBehaviorsArray:(id)array returningCount:(unint64_t *)count;
- (id)_behaviorsForDomain:(id)domain behaviorName:(id)name;
- (id)acquireNextBehaviorWithName:(id)name domain:(id)domain;
- (void)_addBehaviorsFromConfigurationFilesIfNecessary;
- (void)_setBehaviors:(id)behaviors forDomain:(id)domain behaviorName:(id)name;
- (void)_setEnabled:(BOOL)enabled forDomain:(id)domain;
- (void)_setNamedBehaviorsFromDictionary:(id)dictionary forDomain:(id)domain;
- (void)addBehavior:(id)behavior withName:(id)name domain:(id)domain count:(unint64_t)count replacingAllOthers:(BOOL)others;
@end

@implementation BYTestingSurrogateBehaviorManager

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sharedInstance_sharedInstance_1)
  {
    v3 = objc_alloc_init(BYTestingSurrogateBehaviorManager);
    v4 = sharedInstance_sharedInstance_1;
    sharedInstance_sharedInstance_1 = v3;
  }

  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _allDomains = [(BYTestingSurrogateBehaviorManager *)selfCopy _allDomains];
  v4 = [_allDomains countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v19 = *v23;
    v17 = selfCopy;
    do
    {
      v20 = v4;
      for (i = 0; i != v20; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(_allDomains);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        if (![(BYTestingSurrogateBehaviorManager *)selfCopy _hasEnabledValueForDomain:v6])
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
              allKeys = [v11 allKeys];
              v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(allKeys, "count")}];
              *buf = 138412546;
              v27 = v6;
              v28 = 2112;
              v29 = v15;
              _os_log_impl(&dword_1B862F000, v12, OS_LOG_TYPE_DEFAULT, "Enabling testing surrogate functionality for domain %@ with %@ behavior names", buf, 0x16u);

              selfCopy = v17;
            }

            [(BYTestingSurrogateBehaviorManager *)selfCopy _setNamedBehaviorsFromDictionary:v11 forDomain:v6];
          }
        }
      }

      v4 = [_allDomains countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)_allDomains
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  domainSoftwareUpdate = [(BYTestingSurrogateBehaviorManager *)self domainSoftwareUpdate];
  v8[0] = domainSoftwareUpdate;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)_hasEnabledValueForDomain:(id)domain
{
  v3 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForEnablementOfDomain:domain];
  v4 = CFPreferencesCopyValue(v3, @"com.apple.purplebuddy.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_enabledForDomain:(id)domain
{
  v3 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForEnablementOfDomain:domain];
  v4 = CFPreferencesCopyValue(v3, @"com.apple.purplebuddy.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)_setEnabled:(BOOL)enabled forDomain:(id)domain
{
  enabledCopy = enabled;
  v5 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForEnablementOfDomain:domain];
  if (enabledCopy)
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

- (id)_behaviorsForDomain:(id)domain behaviorName:(id)name
{
  v4 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForDomain:domain behaviorName:name];
  v5 = CFPreferencesCopyValue(v4, @"com.apple.purplebuddy.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  return v5;
}

- (void)_setBehaviors:(id)behaviors forDomain:(id)domain behaviorName:(id)name
{
  value = behaviors;
  v8 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForDomain:domain behaviorName:name];
  CFPreferencesSetValue(v8, value, @"com.apple.purplebuddy.notbackedup", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
}

- (void)_setNamedBehaviorsFromDictionary:(id)dictionary forDomain:(id)domain
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  domainCopy = domain;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [dictionaryCopy allKeys];
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
        v15 = [(BYTestingSurrogateBehaviorManager *)self _preferenceKeyForDomain:domainCopy behaviorName:v14];
        v16 = [dictionaryCopy objectForKeyedSubscript:v14];
        CFPreferencesSetValue(v15, v16, @"com.apple.purplebuddy.notbackedup", v11, v12);
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)enabledForDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(BYTestingSurrogateBehaviorManager *)selfCopy _enabledForDomain:domainCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)_behaviorFromBehaviorDictionary:(id)dictionary returningCount:(unint64_t *)count
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = 0;
    goto LABEL_28;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"error"];
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

    v21 = [dictionaryCopy objectForKeyedSubscript:@"results"];
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

    unsignedIntegerValue = [dictionaryCopy objectForKeyedSubscript:@"count"];
    v23 = unsignedIntegerValue;
    if (unsignedIntegerValue)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = 0;
        goto LABEL_24;
      }

      unsignedIntegerValue = [v23 unsignedIntegerValue];
    }

    *count = unsignedIntegerValue;
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

- (id)_behaviorFromBehaviorsArray:(id)array returningCount:(unint64_t *)count
{
  arrayCopy = array;
  if (arrayCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [arrayCopy count])
  {
    v7 = [arrayCopy objectAtIndexedSubscript:0];
    v8 = [(BYTestingSurrogateBehaviorManager *)self _behaviorFromBehaviorDictionary:v7 returningCount:count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_behaviorDictionaryFromBehavior:(id)behavior count:(unint64_t)count
{
  v23[2] = *MEMORY[0x1E69E9840];
  behaviorCopy = behavior;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = MEMORY[0x1E696AD98];
  [behaviorCopy duration];
  v8 = [v7 numberWithDouble:?];
  [v6 setObject:v8 forKeyedSubscript:@"duration"];

  error = [behaviorCopy error];

  if (error)
  {
    v22[0] = @"domain";
    error2 = [behaviorCopy error];
    domain = [error2 domain];
    v22[1] = @"code";
    v23[0] = domain;
    v12 = MEMORY[0x1E696AD98];
    error3 = [behaviorCopy error];
    v14 = [v12 numberWithInteger:{objc_msgSend(error3, "code")}];
    v23[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [v6 setObject:v15 forKeyedSubscript:@"error"];
  }

  results = [behaviorCopy results];

  if (results)
  {
    results2 = [behaviorCopy results];
    [v6 setObject:results2 forKeyedSubscript:@"results"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [v6 setObject:v18 forKeyedSubscript:@"count"];

  v19 = [v6 copy];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)acquireNextBehaviorWithName:(id)name domain:(id)domain
{
  nameCopy = name;
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(BYTestingSurrogateBehaviorManager *)selfCopy _behaviorsForDomain:domainCopy behaviorName:nameCopy];
  v23 = 0;
  v10 = [(BYTestingSurrogateBehaviorManager *)selfCopy _behaviorFromBehaviorsArray:v9 returningCount:&v23];
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

      [(BYTestingSurrogateBehaviorManager *)selfCopy _setBehaviors:v13 forDomain:domainCopy behaviorName:nameCopy];
    }
  }

  objc_sync_exit(selfCopy);
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

- (void)addBehavior:(id)behavior withName:(id)name domain:(id)domain count:(unint64_t)count replacingAllOthers:(BOOL)others
{
  behaviorCopy = behavior;
  nameCopy = name;
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BYTestingSurrogateBehaviorManager *)selfCopy _setEnabled:1 forDomain:domainCopy];
  v15 = [(BYTestingSurrogateBehaviorManager *)selfCopy _behaviorDictionaryFromBehavior:behaviorCopy count:count];
  if (others)
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v16 = [(BYTestingSurrogateBehaviorManager *)selfCopy _behaviorsForDomain:domainCopy behaviorName:nameCopy];
  }

  v17 = [v16 arrayByAddingObject:v15];

  [(BYTestingSurrogateBehaviorManager *)selfCopy _setBehaviors:v17 forDomain:domainCopy behaviorName:nameCopy];
  objc_sync_exit(selfCopy);
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
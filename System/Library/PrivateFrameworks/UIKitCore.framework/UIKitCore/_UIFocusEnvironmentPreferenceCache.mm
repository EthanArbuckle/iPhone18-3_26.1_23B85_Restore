@interface _UIFocusEnvironmentPreferenceCache
- (_UIFocusEnvironmentPreferenceCache)init;
- (id)deepestPrimaryPreferredEnvironmentForEnvironment:(id)environment;
- (id)preferredEnvironmentsForEnvironment:(id)environment isFinal:(BOOL *)final;
- (void)setPreferredEnvironments:(id)environments forEnvironment:(id)environment;
- (void)setResolvedPreference:(id)preference forEnvironment:(id)environment;
@end

@implementation _UIFocusEnvironmentPreferenceCache

- (_UIFocusEnvironmentPreferenceCache)init
{
  v6.receiver = self;
  v6.super_class = _UIFocusEnvironmentPreferenceCache;
  v2 = [(_UIFocusEnvironmentPreferenceCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:514 valueOptions:512];
    environmentsMap = v2->_environmentsMap;
    v2->_environmentsMap = v3;
  }

  return v2;
}

- (id)preferredEnvironmentsForEnvironment:(id)environment isFinal:(BOOL *)final
{
  v13[1] = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  environmentsMap = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v8 = [environmentsMap objectForKey:environmentCopy];

  if (v8)
  {
    if ([v8 isResolved])
    {
      if (final)
      {
        *final = 1;
      }

      resolvedEnvironment = [v8 resolvedEnvironment];
      if (resolvedEnvironment)
      {
        resolvedEnvironment2 = [v8 resolvedEnvironment];
        v13[0] = resolvedEnvironment2;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      if (final)
      {
        *final = 0;
      }

      resolvedEnvironment = [v8 childNodes];
      v11 = [resolvedEnvironment bs_map:&__block_literal_global_554];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setResolvedPreference:(id)preference forEnvironment:(id)environment
{
  preferenceCopy = preference;
  environmentCopy = environment;
  environmentsMap = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v9 = [environmentsMap objectForKey:environmentCopy];

  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceCache.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"node != nil"}];
  }

  [v9 resolve:preferenceCopy];
}

- (void)setPreferredEnvironments:(id)environments forEnvironment:(id)environment
{
  v43 = *MEMORY[0x1E69E9840];
  environmentsCopy = environments;
  environmentCopy = environment;
  environmentsMap = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v9 = [environmentsMap objectForKey:environmentCopy];

  if (!v9)
  {
    v9 = [[_UIFocusEnvironmentPreferenceCacheNode alloc] initWithEnvironment:environmentCopy];
    environmentsMap2 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
    [environmentsMap2 setObject:v9 forKey:environmentCopy];
  }

  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __78___UIFocusEnvironmentPreferenceCache_setPreferredEnvironments_forEnvironment___block_invoke;
  v34 = &unk_1E7122E10;
  v11 = environmentCopy;
  v35 = v11;
  selfCopy = self;
  v12 = [environmentsCopy bs_compactMap:&v31];
  childNodes = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
  if (childNodes)
  {
    v14 = childNodes;
    childNodes2 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
    v16 = [childNodes2 isEqualToArray:v12];

    if ((v16 & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          environment = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 environment];
          if (environment)
          {
            v27 = MEMORY[0x1E696AEC0];
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v26 = [v27 stringWithFormat:@"<%@: %p>", v29, environment, v31, v32, v33, v34];
          }

          else
          {
            v26 = @"(nil)";
          }

          childNodes3 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
          *buf = 138412802;
          v38 = v26;
          v39 = 2112;
          v40 = childNodes3;
          v41 = 2112;
          v42 = v12;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Modifying preferred environments for an environment. This indicates an unstable PFE chain. Results might be unreliable. Environment %@ had these childs before:\n%@\nnow has:\n%@", buf, 0x20u);
        }
      }

      else
      {
        v17 = *(__UILogGetCategoryCachedImpl("Assert", &setPreferredEnvironments_forEnvironment____s_category) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          environment2 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 environment];
          if (environment2)
          {
            v19 = MEMORY[0x1E696AEC0];
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = [v19 stringWithFormat:@"<%@: %p>", v21, environment2, v31, v32, v33, v34];
          }

          else
          {
            v22 = @"(nil)";
          }

          v23 = v22;
          childNodes4 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
          *buf = 138412802;
          v38 = v22;
          v39 = 2112;
          v40 = childNodes4;
          v41 = 2112;
          v42 = v12;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Modifying preferred environments for an environment. This indicates an unstable PFE chain. Results might be unreliable. Environment %@ had these childs before:\n%@\nnow has:\n%@", buf, 0x20u);
        }
      }
    }
  }

  [(_UIFocusEnvironmentPreferenceCacheNode *)v9 setChildNodes:v12];
}

- (id)deepestPrimaryPreferredEnvironmentForEnvironment:(id)environment
{
  environmentCopy = environment;
  environmentsMap = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v6 = [environmentsMap objectForKey:environmentCopy];

  childNodes = [v6 childNodes];
  v8 = [childNodes count];

  if (v8)
  {
    do
    {
      childNodes2 = [v6 childNodes];
      firstObject = [childNodes2 firstObject];

      childNodes3 = [firstObject childNodes];
      v12 = [childNodes3 count];

      v6 = firstObject;
    }

    while (v12);
  }

  else
  {
    firstObject = v6;
  }

  environment = [firstObject environment];

  return environment;
}

@end
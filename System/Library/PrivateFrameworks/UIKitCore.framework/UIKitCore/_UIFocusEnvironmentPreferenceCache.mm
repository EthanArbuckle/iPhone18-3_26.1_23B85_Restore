@interface _UIFocusEnvironmentPreferenceCache
- (_UIFocusEnvironmentPreferenceCache)init;
- (id)deepestPrimaryPreferredEnvironmentForEnvironment:(id)a3;
- (id)preferredEnvironmentsForEnvironment:(id)a3 isFinal:(BOOL *)a4;
- (void)setPreferredEnvironments:(id)a3 forEnvironment:(id)a4;
- (void)setResolvedPreference:(id)a3 forEnvironment:(id)a4;
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

- (id)preferredEnvironmentsForEnvironment:(id)a3 isFinal:(BOOL *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    if ([v8 isResolved])
    {
      if (a4)
      {
        *a4 = 1;
      }

      v9 = [v8 resolvedEnvironment];
      if (v9)
      {
        v10 = [v8 resolvedEnvironment];
        v13[0] = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      if (a4)
      {
        *a4 = 0;
      }

      v9 = [v8 childNodes];
      v11 = [v9 bs_map:&__block_literal_global_554];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setResolvedPreference:(id)a3 forEnvironment:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceCache.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"node != nil"}];
  }

  [v9 resolve:v11];
}

- (void)setPreferredEnvironments:(id)a3 forEnvironment:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v9 = [[_UIFocusEnvironmentPreferenceCacheNode alloc] initWithEnvironment:v7];
    v10 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
    [v10 setObject:v9 forKey:v7];
  }

  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __78___UIFocusEnvironmentPreferenceCache_setPreferredEnvironments_forEnvironment___block_invoke;
  v34 = &unk_1E7122E10;
  v11 = v7;
  v35 = v11;
  v36 = self;
  v12 = [v6 bs_compactMap:&v31];
  v13 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
  if (v13)
  {
    v14 = v13;
    v15 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
    v16 = [v15 isEqualToArray:v12];

    if ((v16 & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v25 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 environment];
          if (v25)
          {
            v27 = MEMORY[0x1E696AEC0];
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v26 = [v27 stringWithFormat:@"<%@: %p>", v29, v25, v31, v32, v33, v34];
          }

          else
          {
            v26 = @"(nil)";
          }

          v30 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
          *buf = 138412802;
          v38 = v26;
          v39 = 2112;
          v40 = v30;
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
          v18 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 environment];
          if (v18)
          {
            v19 = MEMORY[0x1E696AEC0];
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = [v19 stringWithFormat:@"<%@: %p>", v21, v18, v31, v32, v33, v34];
          }

          else
          {
            v22 = @"(nil)";
          }

          v23 = v22;
          v24 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
          *buf = 138412802;
          v38 = v22;
          v39 = 2112;
          v40 = v24;
          v41 = 2112;
          v42 = v12;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Modifying preferred environments for an environment. This indicates an unstable PFE chain. Results might be unreliable. Environment %@ had these childs before:\n%@\nnow has:\n%@", buf, 0x20u);
        }
      }
    }
  }

  [(_UIFocusEnvironmentPreferenceCacheNode *)v9 setChildNodes:v12];
}

- (id)deepestPrimaryPreferredEnvironmentForEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 childNodes];
  v8 = [v7 count];

  if (v8)
  {
    do
    {
      v9 = [v6 childNodes];
      v10 = [v9 firstObject];

      v11 = [v10 childNodes];
      v12 = [v11 count];

      v6 = v10;
    }

    while (v12);
  }

  else
  {
    v10 = v6;
  }

  v13 = [v10 environment];

  return v13;
}

@end
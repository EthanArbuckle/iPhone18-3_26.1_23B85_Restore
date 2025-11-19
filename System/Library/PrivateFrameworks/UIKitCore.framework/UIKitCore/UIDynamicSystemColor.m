@interface UIDynamicSystemColor
- (BOOL)isEqual:(id)a3;
- (id)_resolvedColorWithTraitCollection:(id)a3;
- (id)description;
- (id)initWithName:(void *)a3 colorsByThemeKey:;
- (unint64_t)hash;
@end

@implementation UIDynamicSystemColor

- (unint64_t)hash
{
  v2 = [(UIColor *)self _systemColorName];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UIColor *)self _systemColorName];
  v7 = [v3 stringWithFormat:@"<%@: %p name = %@>", v5, self, v6];;

  return v7;
}

- (id)initWithName:(void *)a3 colorsByThemeKey:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v8 = [v5 length];
    if (has_internal_diagnostics)
    {
      if (!v8)
      {
        v15 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "bad color name", buf, 2u);
        }
      }
    }

    else if (!v8)
    {
      v17 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B908) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "bad color name", buf, 2u);
      }
    }

    v9 = os_variant_has_internal_diagnostics();
    v10 = _UIThemeKeyLeastSpecific();
    v11 = [v6 objectForKeyedSubscript:v10];

    if (v9)
    {
      if (!v11)
      {
        v16 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "must specify an 'any' fallback color", buf, 2u);
        }
      }
    }

    else if (!v11)
    {
      v18 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B910) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "must specify an 'any' fallback color", buf, 2u);
      }
    }

    v19.receiver = a1;
    v19.super_class = UIDynamicSystemColor;
    a1 = objc_msgSendSuper2(&v19, sel_init);
    if (a1)
    {
      v12 = [v6 copy];
      v13 = *(a1 + 3);
      *(a1 + 3) = v12;

      [a1 _setSystemColorName:v5];
      *(a1 + 8) = 0;
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(UIColor *)v4 _systemColorName];
      v6 = [(UIColor *)self _systemColorName];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_resolvedColorWithTraitCollection:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__106;
  v20 = __Block_byref_object_dispose__106;
  v21 = 0;
  v5 = _UITraitCollectionReplacingStyleForBackgroundColorIfNeccessary(v4, self);

  os_unfair_lock_lock(&self->_cachedColorLock);
  v6 = _UIThemeKeyValueFromTraitCollection(v5);
  v7 = v6;
  cachedColor = self->_cachedColor;
  if (cachedColor && self->_cachedThemeKey == v6)
  {
    objc_storeStrong(v17 + 5, cachedColor);
  }

  else
  {
    os_unfair_lock_unlock(&self->_cachedColorLock);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__UIDynamicSystemColor__resolvedColorWithTraitCollection___block_invoke;
    v15[3] = &unk_1E710BCC8;
    v15[4] = self;
    v15[5] = &v16;
    [(UITraitCollection *)v5 _enumerateThemeKeysForLookup:v15];
    os_unfair_lock_lock(&self->_cachedColorLock);
    objc_storeStrong(&self->_cachedColor, v17[5]);
    self->_cachedThemeKey = v7;
  }

  os_unfair_lock_unlock(&self->_cachedColorLock);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v10 = v17[5];
  if (has_internal_diagnostics)
  {
    if (!v10)
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v23 = self;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Dynamic color couldn't be resolved: %@", buf, 0xCu);
      }
    }
  }

  else if (!v10)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &_resolvedColorWithTraitCollection____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = self;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Dynamic color couldn't be resolved: %@", buf, 0xCu);
    }
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __58__UIDynamicSystemColor__resolvedColorWithTraitCollection___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(*(a1 + 32) + 24) objectForKey:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

@end
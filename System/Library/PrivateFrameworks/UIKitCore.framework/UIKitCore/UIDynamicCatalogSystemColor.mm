@interface UIDynamicCatalogSystemColor
- (BOOL)isEqual:(id)equal;
- (id)_resolvedColorWithTraitCollection:(id)collection;
- (id)description;
- (unint64_t)hash;
- (void)initWithName:(uint64_t)name coreUIColorName:;
@end

@implementation UIDynamicCatalogSystemColor

- (unint64_t)hash
{
  _systemColorName = [(UIColor *)self _systemColorName];
  v3 = [_systemColorName hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _systemColorName = [(UIColor *)self _systemColorName];
  v7 = [v3 stringWithFormat:@"<%@: %p name = %@>", v5, self, _systemColorName];;

  return v7;
}

- (void)initWithName:(uint64_t)name coreUIColorName:
{
  v5 = a2;
  if (self)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v7 = [v5 length];
    if (has_internal_diagnostics)
    {
      if (!v7)
      {
        v10 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "bad color name", buf, 2u);
        }
      }
    }

    else if (!v7)
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &initWithName_coreUIColorName____s_category) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "bad color name", buf, 2u);
      }
    }

    v12.receiver = self;
    v12.super_class = UIDynamicCatalogSystemColor;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      *(v8 + 8) = 0;
      *(v8 + 3) = name;
      [v8 _setSystemColorName:v5];
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _systemColorName = [(UIColor *)equalCopy _systemColorName];
      _systemColorName2 = [(UIColor *)self _systemColorName];
      v7 = [_systemColorName isEqualToString:_systemColorName2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_resolvedColorWithTraitCollection:(id)collection
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = _UITraitCollectionReplacingStyleForBackgroundColorIfNeccessary(collection, self);
  v5 = _UIThemeKeyValueFromTraitCollection(v4);
  os_unfair_lock_lock(&self->_colorCacheLock);
  cachedColor = self->_cachedColor;
  if (cachedColor && self->_cachedThemeKey == v5)
  {
    v7 = cachedColor;
  }

  else
  {
    v21 = v5;
    os_unfair_lock_unlock(&self->_colorCacheLock);
    cuiColorName = self->_cuiColorName;
    v9 = v4;
    v10 = 4 * ([v9 userInterfaceIdiom] == 3);
    v11 = [v9 userInterfaceStyle] == 2;
    v12 = [v9 accessibilityContrast] == 1;
    v13 = [v9 _vibrancy] == 2;
    displayGamut = [v9 displayGamut];

    v22 = 0;
    *buf = cuiColorName;
    *&buf[8] = v10;
    *&buf[16] = 0;
    v24 = v11;
    v25 = v12;
    v26 = v13;
    v27 = displayGamut == 1;
    v15 = [MEMORY[0x1E6999378] colorWithTraits:buf error:&v22];
    v16 = v22;
    if (v15)
    {
      v7 = -[UIColor initWithCGColor:]([UIColor alloc], "initWithCGColor:", [v15 cgColor]);
      v17 = v21;
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v20 = __UIFaultDebugAssertLog();
        v17 = v21;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218242;
          *&buf[4] = cuiColorName;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_fault_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "Unable to lookup color %tu in CoreUI: %@", buf, 0x16u);
        }
      }

      else
      {
        v18 = *(__UILogGetCategoryCachedImpl("Assert", &_UIColorFromCoreUI___s_category) + 8);
        v17 = v21;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = cuiColorName;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Unable to lookup color %tu in CoreUI: %@", buf, 0x16u);
        }
      }

      v7 = +[UIColor clearColor];
    }

    os_unfair_lock_lock(&self->_colorCacheLock);
    objc_storeStrong(&self->_cachedColor, v7);
    self->_cachedThemeKey = v17;
  }

  os_unfair_lock_unlock(&self->_colorCacheLock);

  return v7;
}

@end
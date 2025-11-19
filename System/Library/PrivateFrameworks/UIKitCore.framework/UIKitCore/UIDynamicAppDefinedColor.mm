@interface UIDynamicAppDefinedColor
- (BOOL)isEqual:(id)a3;
- (id)_generateColorsByTraitCollection;
- (id)_resolvedColorWithTraitCollection:(id)a3;
- (id)description;
- (id)initWithColorsByTraitCollection:(id *)a1;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDynamicAppDefinedColor

- (id)initWithColorsByTraitCollection:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    if (![v3 count])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Requires one or more colors"];
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __60__UIDynamicAppDefinedColor_initWithColorsByTraitCollection___block_invoke;
    v16 = &unk_1E710BCF0;
    v5 = v4;
    v17 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:&v13];

    v6 = _UIThemeKeyLeastSpecific();
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Dynamic color dictionary must specify a fallback color with unspecified idiom, unspecified style, and unspecified or SRGB gamut"}];
    }

    v8 = v5;
    if (![v8 count])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel__initWithColorsByThemeKey_ object:v2 file:@"UIColor.m" lineNumber:5196 description:{@"Invalid parameter not satisfying: %@", @"colorsByThemeKey.count > 0", v13, v14, v15, v16}];
    }

    v18.receiver = v2;
    v18.super_class = UIDynamicAppDefinedColor;
    v9 = objc_msgSendSuper2(&v18, sel_init);
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 3, v4);
    }

    v2 = v10;
  }

  return v2;
}

void __60__UIDynamicAppDefinedColor_initWithColorsByTraitCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [(UITraitCollection *)v8 _themeKey];
  v7 = [*(a1 + 32) objectForKey:v6];

  if (v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Dynamic color dictionary contains a redundant trait collection: %@", v8}];
  }

  [*(a1 + 32) setObject:v5 forKey:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicAppDefinedColor *)&self->super.super.super.isa _generateColorsByTraitCollection];
  [v4 encodeObject:v5 forKey:@"UIDynamicAppDefinedColorsByTraitCollection"];

  v6.receiver = self;
  v6.super_class = UIDynamicAppDefinedColor;
  [(UIColor *)&v6 encodeWithCoder:v4];
}

- (id)_generateColorsByTraitCollection
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1[3], "count")}];
    v3 = v1[3];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__UIDynamicAppDefinedColor__generateColorsByTraitCollection__block_invoke;
    v5[3] = &unk_1E710BD18;
    v1 = v2;
    v6 = v1;
    [v3 enumerateKeysAndObjectsUsingBlock:v5];
  }

  return v1;
}

void __60__UIDynamicAppDefinedColor__generateColorsByTraitCollection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  objc_opt_self();
  v6 = _UITraitCollectionFromThemeKey(a2);
  [v4 setObject:v5 forKey:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSDictionary *)v4->_colorsByThemeKey isEqual:self->_colorsByThemeKey];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_resolvedColorWithTraitCollection:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__106;
  v16 = __Block_byref_object_dispose__106;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__UIDynamicAppDefinedColor__resolvedColorWithTraitCollection___block_invoke;
  v11[3] = &unk_1E710BCC8;
  v11[4] = self;
  v11[5] = &v12;
  [(UITraitCollection *)v4 _enumerateThemeKeysForLookup:v11];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = v13[5];
  if (has_internal_diagnostics)
  {
    if (!v6)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v19 = self;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Dynamic color couldn't be resolved: %@", buf, 0xCu);
      }
    }
  }

  else if (!v6)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_resolvedColorWithTraitCollection____s_category_1887) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = self;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Dynamic color couldn't be resolved: %@", buf, 0xCu);
    }
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__UIDynamicAppDefinedColor__resolvedColorWithTraitCollection___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UIDynamicAppDefinedColor *)&self->super.super.super.isa _generateColorsByTraitCollection];
  v7 = [v3 stringWithFormat:@"<%@: %p colors = %@>", v5, self, v6];;

  return v7;
}

@end
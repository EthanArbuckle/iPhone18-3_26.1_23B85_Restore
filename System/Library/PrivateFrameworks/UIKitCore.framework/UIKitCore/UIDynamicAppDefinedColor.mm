@interface UIDynamicAppDefinedColor
- (BOOL)isEqual:(id)equal;
- (id)_generateColorsByTraitCollection;
- (id)_resolvedColorWithTraitCollection:(id)collection;
- (id)description;
- (id)initWithColorsByTraitCollection:(id *)collection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDynamicAppDefinedColor

- (id)initWithColorsByTraitCollection:(id *)collection
{
  collectionCopy = collection;
  if (collection)
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithColorsByThemeKey_ object:collectionCopy file:@"UIColor.m" lineNumber:5196 description:{@"Invalid parameter not satisfying: %@", @"colorsByThemeKey.count > 0", v13, v14, v15, v16}];
    }

    v18.receiver = collectionCopy;
    v18.super_class = UIDynamicAppDefinedColor;
    v9 = objc_msgSendSuper2(&v18, sel_init);
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 3, v4);
    }

    collectionCopy = v10;
  }

  return collectionCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _generateColorsByTraitCollection = [(UIDynamicAppDefinedColor *)&self->super.super.super.isa _generateColorsByTraitCollection];
  [coderCopy encodeObject:_generateColorsByTraitCollection forKey:@"UIDynamicAppDefinedColorsByTraitCollection"];

  v6.receiver = self;
  v6.super_class = UIDynamicAppDefinedColor;
  [(UIColor *)&v6 encodeWithCoder:coderCopy];
}

- (id)_generateColorsByTraitCollection
{
  selfCopy = self;
  if (self)
  {
    v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(self[3], "count")}];
    v3 = selfCopy[3];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__UIDynamicAppDefinedColor__generateColorsByTraitCollection__block_invoke;
    v5[3] = &unk_1E710BD18;
    selfCopy = v2;
    v6 = selfCopy;
    [v3 enumerateKeysAndObjectsUsingBlock:v5];
  }

  return selfCopy;
}

void __60__UIDynamicAppDefinedColor__generateColorsByTraitCollection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  objc_opt_self();
  v6 = _UITraitCollectionFromThemeKey(a2);
  [v4 setObject:v5 forKey:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSDictionary *)equalCopy->_colorsByThemeKey isEqual:self->_colorsByThemeKey];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_resolvedColorWithTraitCollection:(id)collection
{
  v20 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
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
  [(UITraitCollection *)collectionCopy _enumerateThemeKeysForLookup:v11];
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
        selfCopy2 = self;
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
      selfCopy2 = self;
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
  _generateColorsByTraitCollection = [(UIDynamicAppDefinedColor *)&self->super.super.super.isa _generateColorsByTraitCollection];
  v7 = [v3 stringWithFormat:@"<%@: %p colors = %@>", v5, self, _generateColorsByTraitCollection];;

  return v7;
}

@end
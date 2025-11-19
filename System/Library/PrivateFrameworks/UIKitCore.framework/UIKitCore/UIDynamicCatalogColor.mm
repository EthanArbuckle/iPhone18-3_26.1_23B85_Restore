@interface UIDynamicCatalogColor
- (BOOL)isEqual:(id)a3;
- (id)_debugCatalogBundleIdentifier;
- (id)_resolvedColorWithTraitCollection:(id)a3;
- (id)description;
- (id)initWithName:(void *)a3 assetManager:(void *)a4 genericColor:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDynamicCatalogColor

- (id)initWithName:(void *)a3 assetManager:(void *)a4 genericColor:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (v8)
  {
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_9:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:sel_initWithName_assetManager_genericColor_ object:a1 file:@"UIColor.m" lineNumber:5051 description:{@"Invalid parameter not satisfying: %@", @"assetManager != nil"}];

    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:sel_initWithName_assetManager_genericColor_ object:a1 file:@"UIColor.m" lineNumber:5050 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];

  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_10:
  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:sel_initWithName_assetManager_genericColor_ object:a1 file:@"UIColor.m" lineNumber:5052 description:{@"Invalid parameter not satisfying: %@", @"genericColor != nil"}];

LABEL_5:
  v16.receiver = a1;
  v16.super_class = UIDynamicCatalogColor;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  a1 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 3, a2);
    objc_storeStrong(a1 + 4, a3);
    objc_storeStrong(a1 + 5, a4);
    *(a1 + 12) = 0;
  }

LABEL_7:

  return a1;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"UIDynamicCatalogName"];
  assetManager = self->_assetManager;
  if (assetManager)
  {
    v7 = [(_UIAssetManager *)assetManager bundle];
    v8 = [v7 bundleIdentifier];
    [v5 encodeObject:v8 forKey:@"UIDynamicCatalogBundleIdentifier"];

    v9 = [v7 executablePath];
    v10 = [v9 lastPathComponent];
    [v5 encodeObject:v10 forKey:@"UIDynamicCatalogBundleLibraryName"];
  }

  else
  {
    [v5 encodeBool:1 forKey:@"UIDynamicCatalogUseNibBundle"];
  }

  v11.receiver = self;
  v11.super_class = UIDynamicCatalogColor;
  [(UIColor *)&v11 encodeWithCoder:v5];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_assetManager == v4->_assetManager && [(NSString *)self->_name isEqualToString:v4->_name];
  }

  return v5;
}

- (id)_resolvedColorWithTraitCollection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cachedColorLock);
  v5 = _UIThemeKeyValueFromTraitCollection(v4);
  v6 = v5;
  cachedColor = self->_cachedColor;
  if (cachedColor && self->_cachedThemeKey == v5)
  {
    v8 = cachedColor;
  }

  else
  {
    os_unfair_lock_unlock(&self->_cachedColorLock);
    v9 = [(_UIAssetManager *)self->_assetManager resolvedColorNamed:self->_name withTraitCollection:v4];
    genericColor = v9;
    if (!v9)
    {
      genericColor = self->_genericColor;
    }

    v8 = genericColor;

    os_unfair_lock_lock(&self->_cachedColorLock);
    objc_storeStrong(&self->_cachedColor, genericColor);
    self->_cachedThemeKey = v6;
  }

  os_unfair_lock_unlock(&self->_cachedColorLock);

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p name = %@>", v5, self, self->_name];;

  return v6;
}

- (id)_debugCatalogBundleIdentifier
{
  v2 = [(_UIAssetManager *)self->_assetManager bundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end
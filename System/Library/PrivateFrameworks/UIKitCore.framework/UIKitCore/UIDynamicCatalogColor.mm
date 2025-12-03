@interface UIDynamicCatalogColor
- (BOOL)isEqual:(id)equal;
- (id)_debugCatalogBundleIdentifier;
- (id)_resolvedColorWithTraitCollection:(id)collection;
- (id)description;
- (id)initWithName:(void *)name assetManager:(void *)manager genericColor:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDynamicCatalogColor

- (id)initWithName:(void *)name assetManager:(void *)manager genericColor:
{
  v8 = a2;
  nameCopy = name;
  managerCopy = manager;
  if (!self)
  {
    goto LABEL_7;
  }

  if (v8)
  {
    if (nameCopy)
    {
      goto LABEL_4;
    }

LABEL_9:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithName_assetManager_genericColor_ object:self file:@"UIColor.m" lineNumber:5051 description:{@"Invalid parameter not satisfying: %@", @"assetManager != nil"}];

    if (managerCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel_initWithName_assetManager_genericColor_ object:self file:@"UIColor.m" lineNumber:5050 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];

  if (!nameCopy)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (managerCopy)
  {
    goto LABEL_5;
  }

LABEL_10:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:sel_initWithName_assetManager_genericColor_ object:self file:@"UIColor.m" lineNumber:5052 description:{@"Invalid parameter not satisfying: %@", @"genericColor != nil"}];

LABEL_5:
  v16.receiver = self;
  v16.super_class = UIDynamicCatalogColor;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  self = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 3, a2);
    objc_storeStrong(self + 4, name);
    objc_storeStrong(self + 5, manager);
    *(self + 12) = 0;
  }

LABEL_7:

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"UIDynamicCatalogName"];
  assetManager = self->_assetManager;
  if (assetManager)
  {
    bundle = [(_UIAssetManager *)assetManager bundle];
    bundleIdentifier = [bundle bundleIdentifier];
    [coderCopy encodeObject:bundleIdentifier forKey:@"UIDynamicCatalogBundleIdentifier"];

    executablePath = [bundle executablePath];
    lastPathComponent = [executablePath lastPathComponent];
    [coderCopy encodeObject:lastPathComponent forKey:@"UIDynamicCatalogBundleLibraryName"];
  }

  else
  {
    [coderCopy encodeBool:1 forKey:@"UIDynamicCatalogUseNibBundle"];
  }

  v11.receiver = self;
  v11.super_class = UIDynamicCatalogColor;
  [(UIColor *)&v11 encodeWithCoder:coderCopy];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_assetManager == equalCopy->_assetManager && [(NSString *)self->_name isEqualToString:equalCopy->_name];
  }

  return v5;
}

- (id)_resolvedColorWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  os_unfair_lock_lock(&self->_cachedColorLock);
  v5 = _UIThemeKeyValueFromTraitCollection(collectionCopy);
  v6 = v5;
  cachedColor = self->_cachedColor;
  if (cachedColor && self->_cachedThemeKey == v5)
  {
    v8 = cachedColor;
  }

  else
  {
    os_unfair_lock_unlock(&self->_cachedColorLock);
    v9 = [(_UIAssetManager *)self->_assetManager resolvedColorNamed:self->_name withTraitCollection:collectionCopy];
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
  bundle = [(_UIAssetManager *)self->_assetManager bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

@end
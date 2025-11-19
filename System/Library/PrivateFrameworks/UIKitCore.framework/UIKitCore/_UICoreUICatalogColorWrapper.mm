@interface _UICoreUICatalogColorWrapper
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCoreUICatalogColor:(id)a3;
- (CGColor)cgColorForTraitCollection:(id)a3;
- (_UICoreUICatalogColorWrapper)initWithCoder:(id)a3;
- (_UICoreUICatalogColorWrapper)initWithName:(id)a3 bundleID:(id)a4 fallbackColor:(id)a5;
- (id)_uikit_valueForTraitCollection:(id)a3;
- (id)cachedColorForDisplayGamut:(int64_t)a3;
- (id)colorCache;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setCachedColor:(id)a3 forDisplayGamut:(int64_t)a4;
@end

@implementation _UICoreUICatalogColorWrapper

- (_UICoreUICatalogColorWrapper)initWithName:(id)a3 bundleID:(id)a4 fallbackColor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = _UICoreUICatalogColorWrapper;
  v12 = [(_UICoreUICatalogColorWrapper *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_bundleID, a4);
    objc_storeStrong(&v13->_fallbackColor, a5);
    if (!v13->_bundleID)
    {
      v14 = [MEMORY[0x1E696AAE8] currentNibLoadingBundle];
      v15 = [v14 bundleIdentifier];
      nibLoadingBundleID = v13->_nibLoadingBundleID;
      v13->_nibLoadingBundleID = v15;
    }
  }

  return v13;
}

- (id)colorCache
{
  colorCache = self->_colorCache;
  if (!colorCache)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_colorCache;
    self->_colorCache = v4;

    colorCache = self->_colorCache;
  }

  return colorCache;
}

- (id)cachedColorForDisplayGamut:(int64_t)a3
{
  v4 = [(_UICoreUICatalogColorWrapper *)self colorCache];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (void)setCachedColor:(id)a3 forDisplayGamut:(int64_t)a4
{
  v6 = a3;
  v8 = [(_UICoreUICatalogColorWrapper *)self colorCache];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v8 setObject:v6 forKey:v7];
}

- (CGColor)cgColorForTraitCollection:(id)a3
{
  v3 = [(_UICoreUICatalogColorWrapper *)self _uikit_valueForTraitCollection:a3];
  v4 = [v3 CGColor];

  return v4;
}

- (id)_uikit_valueForTraitCollection:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__117;
  v24 = __Block_byref_object_dispose__117;
  v25 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___UICoreUICatalogColorWrapper__uikit_valueForTraitCollection___block_invoke;
  aBlock[3] = &unk_1E710D8F8;
  v19 = &v20;
  aBlock[4] = self;
  v5 = v4;
  v18 = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (self->_bundleID)
  {
    (*(v6 + 2))(v6);
  }

  else
  {
    (*(v6 + 2))(v6, self->_nibLoadingBundleID);
    v8 = _UIMainBundleIdentifier();
    (v7)[2](v7, v8);
  }

  fallbackColor = v21[5];
  if (!fallbackColor)
  {
    if (self->_hasLoggedFailure)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x1E695DF70] array];
    v11 = v10;
    if (self->_bundleID)
    {
      [v10 addObject:?];
    }

    else
    {
      if (self->_nibLoadingBundleID)
      {
        [v10 addObject:?];
      }

      v12 = _UIMainBundleIdentifier();
      [v11 addObject:v12];
    }

    name = self->_name;
    v14 = [v11 componentsJoinedByString:{@", "}];
    NSLog(&cfstr_WarningUnableT.isa, name, v14);

    self->_hasLoggedFailure = 1;
    fallbackColor = v21[5];
    if (!fallbackColor)
    {
LABEL_12:
      fallbackColor = self->_fallbackColor;
    }
  }

  v15 = fallbackColor;

  _Block_object_dispose(&v20, 8);

  return v15;
}

- (_UICoreUICatalogColorWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UICoreUICatalogColorWrapper;
  v5 = [(_UICoreUICatalogColorWrapper *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIAssetName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectForKey:@"UIAssetBundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectForKey:@"UIFallbackColor"];
    fallbackColor = v5->_fallbackColor;
    v5->_fallbackColor = v10;

    if (!v5->_bundleID)
    {
      v12 = [MEMORY[0x1E696AAE8] currentNibLoadingBundle];
      v13 = [v12 bundleIdentifier];
      nibLoadingBundleID = v5->_nibLoadingBundleID;
      v5->_nibLoadingBundleID = v13;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"UIAssetName"];
  [v5 encodeObject:self->_bundleID forKey:@"UIAssetBundleID"];
  [v5 encodeObject:self->_fallbackColor forKey:@"UIFallbackColor"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->_bundleID)
  {
    bundleID = self->_bundleID;
  }

  else
  {
    bundleID = @"<main>";
  }

  v7 = [(_UICoreUICatalogColorWrapper *)self name];
  v8 = [v3 stringWithFormat:@"<%@: %p: %@ %@>", v5, self, bundleID, v7];

  return v8;
}

- (BOOL)isEqualToCoreUICatalogColor:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      name = self->_name;
      v8 = [(_UICoreUICatalogColorWrapper *)v6 name];
      if (name == v8 || (v9 = self->_name, [(_UICoreUICatalogColorWrapper *)v6 name], v3 = objc_claimAutoreleasedReturnValue(), [(NSString *)v9 isEqualToString:v3]))
      {
        bundleID = self->_bundleID;
        v12 = [(_UICoreUICatalogColorWrapper *)v6 bundleID];
        if (bundleID == v12)
        {
          v10 = 1;
        }

        else
        {
          v13 = self->_bundleID;
          v14 = [(_UICoreUICatalogColorWrapper *)v6 bundleID];
          v10 = [(NSString *)v13 isEqualToString:v14];
        }

        if (name == v8)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UICoreUICatalogColorWrapper *)self isEqualToCoreUICatalogColor:v4];

  return v5;
}

@end
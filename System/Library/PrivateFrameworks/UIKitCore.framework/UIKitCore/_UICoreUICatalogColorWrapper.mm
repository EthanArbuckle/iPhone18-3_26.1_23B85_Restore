@interface _UICoreUICatalogColorWrapper
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCoreUICatalogColor:(id)color;
- (CGColor)cgColorForTraitCollection:(id)collection;
- (_UICoreUICatalogColorWrapper)initWithCoder:(id)coder;
- (_UICoreUICatalogColorWrapper)initWithName:(id)name bundleID:(id)d fallbackColor:(id)color;
- (id)_uikit_valueForTraitCollection:(id)collection;
- (id)cachedColorForDisplayGamut:(int64_t)gamut;
- (id)colorCache;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setCachedColor:(id)color forDisplayGamut:(int64_t)gamut;
@end

@implementation _UICoreUICatalogColorWrapper

- (_UICoreUICatalogColorWrapper)initWithName:(id)name bundleID:(id)d fallbackColor:(id)color
{
  nameCopy = name;
  dCopy = d;
  colorCopy = color;
  v18.receiver = self;
  v18.super_class = _UICoreUICatalogColorWrapper;
  v12 = [(_UICoreUICatalogColorWrapper *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_bundleID, d);
    objc_storeStrong(&v13->_fallbackColor, color);
    if (!v13->_bundleID)
    {
      currentNibLoadingBundle = [MEMORY[0x1E696AAE8] currentNibLoadingBundle];
      bundleIdentifier = [currentNibLoadingBundle bundleIdentifier];
      nibLoadingBundleID = v13->_nibLoadingBundleID;
      v13->_nibLoadingBundleID = bundleIdentifier;
    }
  }

  return v13;
}

- (id)colorCache
{
  colorCache = self->_colorCache;
  if (!colorCache)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_colorCache;
    self->_colorCache = dictionary;

    colorCache = self->_colorCache;
  }

  return colorCache;
}

- (id)cachedColorForDisplayGamut:(int64_t)gamut
{
  colorCache = [(_UICoreUICatalogColorWrapper *)self colorCache];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:gamut];
  v6 = [colorCache objectForKey:v5];

  return v6;
}

- (void)setCachedColor:(id)color forDisplayGamut:(int64_t)gamut
{
  colorCopy = color;
  colorCache = [(_UICoreUICatalogColorWrapper *)self colorCache];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:gamut];
  [colorCache setObject:colorCopy forKey:v7];
}

- (CGColor)cgColorForTraitCollection:(id)collection
{
  v3 = [(_UICoreUICatalogColorWrapper *)self _uikit_valueForTraitCollection:collection];
  cGColor = [v3 CGColor];

  return cGColor;
}

- (id)_uikit_valueForTraitCollection:(id)collection
{
  collectionCopy = collection;
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
  v5 = collectionCopy;
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

    array = [MEMORY[0x1E695DF70] array];
    v11 = array;
    if (self->_bundleID)
    {
      [array addObject:?];
    }

    else
    {
      if (self->_nibLoadingBundleID)
      {
        [array addObject:?];
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

- (_UICoreUICatalogColorWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _UICoreUICatalogColorWrapper;
  v5 = [(_UICoreUICatalogColorWrapper *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIAssetName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectForKey:@"UIAssetBundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectForKey:@"UIFallbackColor"];
    fallbackColor = v5->_fallbackColor;
    v5->_fallbackColor = v10;

    if (!v5->_bundleID)
    {
      currentNibLoadingBundle = [MEMORY[0x1E696AAE8] currentNibLoadingBundle];
      bundleIdentifier = [currentNibLoadingBundle bundleIdentifier];
      nibLoadingBundleID = v5->_nibLoadingBundleID;
      v5->_nibLoadingBundleID = bundleIdentifier;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"UIAssetName"];
  [coderCopy encodeObject:self->_bundleID forKey:@"UIAssetBundleID"];
  [coderCopy encodeObject:self->_fallbackColor forKey:@"UIFallbackColor"];
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

  name = [(_UICoreUICatalogColorWrapper *)self name];
  v8 = [v3 stringWithFormat:@"<%@: %p: %@ %@>", v5, self, bundleID, name];

  return v8;
}

- (BOOL)isEqualToCoreUICatalogColor:(id)color
{
  colorCopy = color;
  if (colorCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = colorCopy;
      name = self->_name;
      name = [(_UICoreUICatalogColorWrapper *)v6 name];
      if (name == name || (v9 = self->_name, [(_UICoreUICatalogColorWrapper *)v6 name], v3 = objc_claimAutoreleasedReturnValue(), [(NSString *)v9 isEqualToString:v3]))
      {
        bundleID = self->_bundleID;
        bundleID = [(_UICoreUICatalogColorWrapper *)v6 bundleID];
        if (bundleID == bundleID)
        {
          v10 = 1;
        }

        else
        {
          v13 = self->_bundleID;
          bundleID2 = [(_UICoreUICatalogColorWrapper *)v6 bundleID];
          v10 = [(NSString *)v13 isEqualToString:bundleID2];
        }

        if (name == name)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UICoreUICatalogColorWrapper *)self isEqualToCoreUICatalogColor:equalCopy];

  return v5;
}

@end
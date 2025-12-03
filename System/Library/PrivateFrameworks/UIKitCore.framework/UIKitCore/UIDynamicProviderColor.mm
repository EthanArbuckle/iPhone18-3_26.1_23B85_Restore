@interface UIDynamicProviderColor
- (BOOL)isEqual:(id)equal;
- (UIDynamicProviderColor)initWithProvider:(id)provider;
- (id)_resolvedColorWithTraitCollection:(id)collection;
- (id)description;
- (id)replacementObjectForCoder:(id)coder;
@end

@implementation UIDynamicProviderColor

- (UIDynamicProviderColor)initWithProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    v10.receiver = self;
    v10.super_class = UIDynamicProviderColor;
    v5 = [(UIDynamicProviderColor *)&v10 init];
    if (v5)
    {
      v6 = [providerCopy copy];
      provider = v5->_provider;
      v5->_provider = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)replacementObjectForCoder:(id)coder
{
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  v33 = userInterfaceIdiom;
  v6 = userInterfaceIdiom < 2 || userInterfaceIdiom - 5 < 6;
  v38 = v6;
  v28 = +[UITraitCollection _currentTraitCollectionIfExists];
  v36 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = 0;
    v29 = v8;
    v35 = *(&xmmword_18A64BFB0 + v7);
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(&xmmword_18A64BFB0 + v7);
    }

    v11 = 1;
    do
    {
      v12 = 0;
      v31 = v11;
      v13 = byte_18A67C890[v9];
      v14 = 1;
      do
      {
        v32 = v14;
        v15 = 0;
        v16 = *(&xmmword_18A64C520 + v12);
        v17 = 1;
        do
        {
          v18 = *(&xmmword_18A64C520 + v15);
          v19 = _UIThemeKeyFromTraitValues(v33, v35, v13, v16, v18, 0);
          objc_opt_self();
          v20 = _UITraitCollectionFromThemeKey(v19);
          [UITraitCollection setCurrentTraitCollection:v20];
          v21 = (*(self->_provider + 2))();
          if (!v21)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"UIColor.m" lineNumber:5348 description:@"Dynamic color provider must return a non-nil color"];
          }

          v22 = _UIThemeKeyFromTraitValues(-1, v10, v13, v16, v18, 0);
          objc_opt_self();
          v23 = _UITraitCollectionFromThemeKey(v22);
          [v34 setObject:v21 forKey:v23];

          v24 = v38 & v36 & v17;
          v15 = 1;
          v17 = 0;
        }

        while ((v24 & 1) != 0);
        v12 = 1;
        v14 = 0;
      }

      while ((v38 & v32 & 1) != 0);
      v11 = 0;
      v9 = 1u;
    }

    while ((v31 & 1) != 0);
    v8 = 0;
    v36 = 1;
    v7 = 1;
  }

  while ((v29 & 1) != 0);
  [UITraitCollection setCurrentTraitCollection:v28];
  v26 = [UIColor _dynamicColorWithColorsByTraitCollection:v34];

  return v26;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_provider == self->_provider;
  }

  return v5;
}

- (id)_resolvedColorWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = +[UITraitCollection _currentTraitCollectionIfExists];
  [UITraitCollection setCurrentTraitCollection:collectionCopy];
  v7 = (*(self->_provider + 2))();
  [UITraitCollection setCurrentTraitCollection:v6];
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIColor.m" lineNumber:5397 description:{@"Dynamic color provider must return a non-nil color. %@ resolved with %@", self, collectionCopy}];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _Block_copy(self->_provider);
  v7 = [v3 stringWithFormat:@"<%@: %p provider = %@>", v5, self, v6];;

  return v7;
}

@end
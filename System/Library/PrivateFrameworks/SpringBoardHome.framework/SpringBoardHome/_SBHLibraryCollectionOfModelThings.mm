@interface _SBHLibraryCollectionOfModelThings
- (BOOL)examineModelValidityWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (SBFolderIconImageCache)folderIconImageCache;
- (SBHIconImageCache)iconImageCache;
- (SBHIconModel)iconModel;
- (SBHLibraryCategoryMapProvider)categoryMapProvider;
- (SBIconListLayoutProvider)listLayoutProvider;
- (SBIconViewProviding)iconViewProvider;
- (SBRootFolder)rootFolder;
- (_SBHLibraryCollectionOfModelThings)initWithIconViewProvider:(id)provider iconModel:(id)model rootFolder:(id)folder listLayoutProvider:(id)layoutProvider iconImageCache:(id)cache folderIconImageCache:(id)imageCache categoryMapProvider:(id)mapProvider;
@end

@implementation _SBHLibraryCollectionOfModelThings

- (_SBHLibraryCollectionOfModelThings)initWithIconViewProvider:(id)provider iconModel:(id)model rootFolder:(id)folder listLayoutProvider:(id)layoutProvider iconImageCache:(id)cache folderIconImageCache:(id)imageCache categoryMapProvider:(id)mapProvider
{
  providerCopy = provider;
  modelCopy = model;
  folderCopy = folder;
  layoutProviderCopy = layoutProvider;
  cacheCopy = cache;
  imageCacheCopy = imageCache;
  mapProviderCopy = mapProvider;
  v25.receiver = self;
  v25.super_class = _SBHLibraryCollectionOfModelThings;
  v22 = [(_SBHLibraryCollectionOfModelThings *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_iconViewProvider, providerCopy);
    objc_storeWeak(&v23->_iconModel, modelCopy);
    objc_storeWeak(&v23->_rootFolder, folderCopy);
    objc_storeWeak(&v23->_listLayoutProvider, layoutProviderCopy);
    objc_storeWeak(&v23->_iconImageCache, cacheCopy);
    objc_storeWeak(&v23->_folderIconImageCache, imageCacheCopy);
    objc_storeWeak(&v23->_categoryMapProvider, mapProviderCopy);
  }

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = equalCopy;
    WeakRetained = objc_loadWeakRetained(equalCopy + 1);
    v9 = objc_loadWeakRetained(&self->_iconViewProvider);
    v25 = BSEqualObjects();

    v10 = objc_loadWeakRetained(v7 + 2);
    v11 = objc_loadWeakRetained(&self->_iconModel);
    LOBYTE(WeakRetained) = BSEqualObjects();

    v12 = objc_loadWeakRetained(v7 + 3);
    v13 = objc_loadWeakRetained(&self->_rootFolder);
    LOBYTE(v10) = BSEqualObjects();

    v14 = objc_loadWeakRetained(v7 + 4);
    v15 = objc_loadWeakRetained(&self->_listLayoutProvider);
    LOBYTE(v12) = BSEqualObjects();

    v16 = objc_loadWeakRetained(v7 + 5);
    v17 = objc_loadWeakRetained(&self->_iconImageCache);
    LOBYTE(v14) = BSEqualObjects();

    v18 = objc_loadWeakRetained(v7 + 6);
    v19 = objc_loadWeakRetained(&self->_folderIconImageCache);
    v20 = BSEqualObjects();

    v21 = objc_loadWeakRetained(v7 + 7);
    v22 = objc_loadWeakRetained(&self->_categoryMapProvider);
    LOBYTE(v7) = BSEqualObjects();

    v23 = v25 & WeakRetained & v10 & v12 & v14 & v20 & v7;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (BOOL)examineModelValidityWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  v6 = objc_loadWeakRetained(&self->_iconModel);
  v7 = objc_loadWeakRetained(&self->_rootFolder);

  v8 = objc_loadWeakRetained(&self->_listLayoutProvider);
  v9 = objc_loadWeakRetained(&self->_iconImageCache);

  v10 = objc_loadWeakRetained(&self->_folderIconImageCache);
  v11 = objc_loadWeakRetained(&self->_categoryMapProvider);

  if (WeakRetained)
  {
    v12 = v6 == 0;
  }

  else
  {
    v12 = 1;
  }

  v18 = v12 || v7 == 0 || v8 == 0 || v9 == 0 || v10 == 0 || v11 == 0;
  if (error && v18)
  {
    errorCopy = error;
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = v20;
    if (WeakRetained)
    {
      if (v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      [v20 addObject:@"_iconViewProvider"];
      if (v6)
      {
LABEL_26:
        if (v7)
        {
          goto LABEL_27;
        }

        goto LABEL_35;
      }
    }

    [v21 addObject:@"_iconModel"];
    if (v7)
    {
LABEL_27:
      if (v8)
      {
        goto LABEL_28;
      }

      goto LABEL_36;
    }

LABEL_35:
    [v21 addObject:@"_rootFolder"];
    if (v8)
    {
LABEL_28:
      if (v9)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }

LABEL_36:
    [v21 addObject:@"_listLayoutProvider"];
    if (v9)
    {
LABEL_29:
      if (v10)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }

LABEL_37:
    [v21 addObject:@"_iconImageCache"];
    if (v10)
    {
LABEL_30:
      if (v11)
      {
LABEL_31:
        [v19 setObject:v21 forKeyedSubscript:@"missingModelItems"];
        *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBHLibraryErrorDomain" code:1 userInfo:v19];

        return v18 ^ 1;
      }

LABEL_39:
      [v21 addObject:@"_categoryMapProvider"];
      goto LABEL_31;
    }

LABEL_38:
    [v21 addObject:@"_folderIconImageCache"];
    if (v11)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  return v18 ^ 1;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (SBHIconModel)iconModel
{
  WeakRetained = objc_loadWeakRetained(&self->_iconModel);

  return WeakRetained;
}

- (SBRootFolder)rootFolder
{
  WeakRetained = objc_loadWeakRetained(&self->_rootFolder);

  return WeakRetained;
}

- (SBIconListLayoutProvider)listLayoutProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_listLayoutProvider);

  return WeakRetained;
}

- (SBHIconImageCache)iconImageCache
{
  WeakRetained = objc_loadWeakRetained(&self->_iconImageCache);

  return WeakRetained;
}

- (SBFolderIconImageCache)folderIconImageCache
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIconImageCache);

  return WeakRetained;
}

- (SBHLibraryCategoryMapProvider)categoryMapProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryMapProvider);

  return WeakRetained;
}

@end
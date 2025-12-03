@interface PXDisplayTitleInfo
+ (id)displayTitleInfoForDetailsOfAssetCollection:(id)collection withTitleCategory:(int64_t)category defaultTitle:(id)title defaultTitleCategory:(int64_t)titleCategory titleKey:(id)key titleCategoryKey:(id)categoryKey defaultSubtitle:(id)subtitle subtitleKey:(id)self0 simulatedLoadingDelay:(double)self1 preferredAttributesPromise:(id)self2;
- (PXDisplayTitleInfo)init;
- (PXDisplayTitleInfo)initWithAssetCollection:(id)collection useVerboseSmartDescription:(BOOL)description;
- (PXDisplayTitleInfo)initWithTitle:(id)title subtitle:(id)subtitle fontName:(id)name;
- (void)_setAssetCollection:(id)collection;
- (void)_updatePropertiesFromAssetCollection;
- (void)performChanges:(id)changes;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)setFontName:(id)name;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation PXDisplayTitleInfo

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  _assetCollection = [(PXDisplayTitleInfo *)self _assetCollection];
  if (_assetCollection)
  {
    v5 = [queueCopy changeDetailsForObject:_assetCollection];
    v6 = v5;
    if (v5)
    {
      objectAfterChanges = [v5 objectAfterChanges];

      if (objectAfterChanges)
      {
        [(PXDisplayTitleInfo *)self _setAssetCollection:objectAfterChanges];
        _assetCollection = objectAfterChanges;
      }

      else
      {
        _assetCollection = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)setFontName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_fontName != nameCopy)
  {
    v9 = nameCopy;
    v6 = [(NSString *)nameCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      fontName = self->_fontName;
      self->_fontName = v7;

      [(PXDisplayTitleInfo *)self signalChange:4];
      v5 = v9;
    }
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = subtitleCopy;
  if (self->_subtitle != subtitleCopy)
  {
    v9 = subtitleCopy;
    v6 = [(NSString *)subtitleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      subtitle = self->_subtitle;
      self->_subtitle = v7;

      [(PXDisplayTitleInfo *)self signalChange:2];
      v5 = v9;
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_title != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      title = self->_title;
      self->_title = v7;

      [(PXDisplayTitleInfo *)self signalChange:1];
      v5 = v9;
    }
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXDisplayTitleInfo;
  [(PXDisplayTitleInfo *)&v3 performChanges:changes];
}

- (void)_updatePropertiesFromAssetCollection
{
  _assetCollection = [(PXDisplayTitleInfo *)self _assetCollection];
  assetCollectionType = [_assetCollection assetCollectionType];
  v6 = assetCollectionType;
  if (_assetCollection)
  {
    if (assetCollectionType == 6)
    {
      v7 = _assetCollection;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        if ([(PXDisplayTitleInfo *)self useVerboseSmartDescription])
        {
          [_assetCollection verboseSmartDescription];
        }

        else
        {
          [_assetCollection smartDescription];
        }
        localizedTitle = ;
        dateDescription = [_assetCollection dateDescription];

        goto LABEL_12;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v13 = NSStringFromClass(v20);
      px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayTitleInfo.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v13, px_descriptionForAssertionMessage}];

LABEL_15:
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXDisplayTitleInfo.m" lineNumber:65 description:{@"missing asset collection %@", self}];

    if (v6 == 6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayTitleInfo.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v13}];
      goto LABEL_15;
    }
  }

  localizedTitle = [_assetCollection localizedTitle];
  dateDescription = [_assetCollection localizedSubtitle];
  if (v6 != 4 && v6 != 8)
  {
LABEL_12:
    defaultHelper = [off_1E77217B8 defaultHelper];
    v15 = [defaultHelper titleForDisplayableText:localizedTitle titleCategory:objc_msgSend(_assetCollection options:{"titleCategory"), 1}];

    localizedTitle = v15;
  }

  titleFontName = [_assetCollection titleFontName];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__PXDisplayTitleInfo__updatePropertiesFromAssetCollection__block_invoke;
  v22[3] = &unk_1E7748200;
  v23 = localizedTitle;
  v24 = dateDescription;
  v25 = titleFontName;
  v17 = titleFontName;
  v18 = dateDescription;
  v19 = localizedTitle;
  [(PXDisplayTitleInfo *)self performChanges:v22];
}

void __58__PXDisplayTitleInfo__updatePropertiesFromAssetCollection__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setSubtitle:a1[5]];
  [v4 setFontName:a1[6]];
}

- (void)_setAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (self->__assetCollection != collectionCopy)
  {
    v6 = collectionCopy;
    objc_storeStrong(&self->__assetCollection, collection);
    [(PXDisplayTitleInfo *)self _updatePropertiesFromAssetCollection];
    collectionCopy = v6;
  }
}

- (PXDisplayTitleInfo)initWithAssetCollection:(id)collection useVerboseSmartDescription:(BOOL)description
{
  descriptionCopy = description;
  v16 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v8 = [(PXDisplayTitleInfo *)self initWithTitle:&stru_1F1741150 subtitle:0 fontName:&stru_1F1741150];
  v9 = collectionCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;

    if (v10)
    {
      if (v8)
      {
        objc_storeStrong(&v8->__assetCollection, collection);
        photoLibrary = [(PHAssetCollection *)v8->__assetCollection photoLibrary];
        [photoLibrary px_registerChangeObserver:v8];

        [(PXDisplayTitleInfo *)v8 setUseVerboseSmartDescription:descriptionCopy];
        [(PXDisplayTitleInfo *)v8 _updatePropertiesFromAssetCollection];
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "[PXDisplayTitleInfo] unsupported asset collection: %@", &v14, 0xCu);
  }

  v10 = 0;
LABEL_10:

  return v8;
}

- (PXDisplayTitleInfo)initWithTitle:(id)title subtitle:(id)subtitle fontName:(id)name
{
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = PXDisplayTitleInfo;
  v11 = [(PXDisplayTitleInfo *)&v21 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1F1741150;
    }

    objc_storeStrong(&v11->_title, v14);

    v15 = [subtitleCopy copy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1F1741150;
    }

    objc_storeStrong(&v11->_subtitle, v17);

    v18 = [nameCopy copy];
    fontName = v11->_fontName;
    v11->_fontName = v18;
  }

  return v11;
}

- (PXDisplayTitleInfo)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayTitleInfo.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXDisplayTitleInfo init]"}];

  abort();
}

+ (id)displayTitleInfoForDetailsOfAssetCollection:(id)collection withTitleCategory:(int64_t)category defaultTitle:(id)title defaultTitleCategory:(int64_t)titleCategory titleKey:(id)key titleCategoryKey:(id)categoryKey defaultSubtitle:(id)subtitle subtitleKey:(id)self0 simulatedLoadingDelay:(double)self1 preferredAttributesPromise:(id)self2
{
  location[2] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  titleCopy = title;
  keyCopy = key;
  categoryKeyCopy = categoryKey;
  subtitleCopy = subtitle;
  subtitleKeyCopy = subtitleKey;
  promiseCopy = promise;
  if (subtitleCopy)
  {
    localizedSubtitle = subtitleCopy;
  }

  else
  {
    localizedSubtitle = [collectionCopy localizedSubtitle];
  }

  v24 = localizedSubtitle;
  v25 = collectionCopy;
  v40 = categoryKeyCopy;
  v26 = [MEMORY[0x1E6978650] titleFontNameForTitleCategory:category];
  v27 = v26;
  if (promiseCopy)
  {
    v28 = keyCopy;
    v36 = v26;
    v29 = [[PXDisplayTitleInfo alloc] initWithTitle:@" " subtitle:@" " fontName:v26];
    v30 = v24;
    if (displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise__onceToken != -1)
    {
      dispatch_once(&displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise__onceToken, &__block_literal_global_228687);
    }

    v39 = v29;
    objc_initWeak(location, v29);
    v31 = displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise__backgroundQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __221__PXDisplayTitleInfo_displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise___block_invoke_2;
    block[3] = &unk_1E7748250;
    v42 = v28;
    v43 = titleCopy;
    v32 = v40;
    v44 = v40;
    v49[1] = titleCategory;
    v45 = subtitleKeyCopy;
    v46 = v30;
    v48 = promiseCopy;
    v47 = collectionCopy;
    v49[2] = *&delay;
    objc_copyWeak(v49, location);
    dispatch_async(v31, block);
    objc_destroyWeak(v49);

    objc_destroyWeak(location);
    v33 = v36;
  }

  else
  {
    v33 = v26;
    v34 = PLUIGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v25;
      _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEFAULT, "No preferred attributes promise for asset collection %@", location, 0xCu);
    }

    v39 = [[PXDisplayTitleInfo alloc] initWithTitle:titleCopy subtitle:subtitleCopy fontName:v27];
    v28 = keyCopy;
    v32 = v40;
    v30 = v24;
  }

  return v39;
}

void __221__PXDisplayTitleInfo_displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  [v2 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 96)];
  [v2 setObject:v3 forKeyedSubscript:*(a1 + 48)];

  [v2 setObject:*(a1 + 64) forKeyedSubscript:*(a1 + 56)];
  v4 = (*(*(a1 + 80) + 16))();
  v5 = PLUIGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 72);
    *buf = 138412546;
    v28 = v7;
    v29 = 2112;
    v30 = v4;
    v8 = "Preferred attributes for asset collection %@: %@";
    v9 = v5;
    v10 = 22;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 72);
    *buf = 138412290;
    v28 = v11;
    v8 = "Preferred attributes promise returned nothing for asset collection %@";
    v9 = v5;
    v10 = 12;
  }

  _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  if (*(a1 + 104) > 0.0)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:?];
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 96);
  v14 = *(a1 + 64);
  if (v4)
  {
    v15 = [v4 objectForKeyedSubscript:*(a1 + 32)];

    v16 = [v4 objectForKeyedSubscript:*(a1 + 48)];
    v13 = [v16 integerValue];

    v17 = [v4 objectForKeyedSubscript:*(a1 + 56)];

    v14 = v17;
    v12 = v15;
  }

  v18 = [MEMORY[0x1E6978650] titleFontNameForTitleCategory:v13];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __221__PXDisplayTitleInfo_displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise___block_invoke_221;
  v22[3] = &unk_1E7748228;
  objc_copyWeak(&v26, (a1 + 88));
  v23 = v12;
  v24 = v14;
  v25 = v18;
  v19 = v18;
  v20 = v14;
  v21 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v22);

  objc_destroyWeak(&v26);
}

void __221__PXDisplayTitleInfo_displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise___block_invoke_221(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __221__PXDisplayTitleInfo_displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise___block_invoke_2_222;
  v3[3] = &unk_1E7748200;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  [WeakRetained performChanges:v3];
}

void __221__PXDisplayTitleInfo_displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise___block_invoke_2_222(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setSubtitle:a1[5]];
  [v4 setFontName:a1[6]];
}

void __221__PXDisplayTitleInfo_displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.photos.preferredattributespromise", v0);
  v2 = displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise__backgroundQueue;
  displayTitleInfoForDetailsOfAssetCollection_withTitleCategory_defaultTitle_defaultTitleCategory_titleKey_titleCategoryKey_defaultSubtitle_subtitleKey_simulatedLoadingDelay_preferredAttributesPromise__backgroundQueue = v1;
}

@end
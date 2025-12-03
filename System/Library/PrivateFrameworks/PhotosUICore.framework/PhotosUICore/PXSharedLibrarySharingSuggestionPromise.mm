@interface PXSharedLibrarySharingSuggestionPromise
+ (BOOL)isNewWithSuggestedDate:(id)date considerNewAfterDate:(id)afterDate;
- (NSString)identifier;
- (PHAssetCollection)containerCollection;
- (PXDisplayCollection)displayCollection;
- (PXSharedLibrarySharingSuggestionPromise)init;
- (PXSharedLibrarySharingSuggestionPromise)initWithContainer:(id)container considerNewAfterDate:(id)date lightweightPlaceholder:(BOOL)placeholder;
- (PXSharedLibrarySharingSuggestionPromise)initWithPromise:(id)promise considerNewAfterDate:(id)date;
- (id)copyIfNeededWithUpdatedConsiderNewAfterDate:(id)date;
- (id)fetchAssetCollections;
- (void)_fulfill;
- (void)_loadLightweightProperties;
- (void)_updateIsNew;
- (void)markAsRead;
@end

@implementation PXSharedLibrarySharingSuggestionPromise

- (void)markAsRead
{
  containerCollection = [(PXSharedLibrarySharingSuggestionPromise *)self containerCollection];
  photoLibrary = [containerCollection photoLibrary];

  px_sharedLibrarySharingSuggestionsCountsManager = [photoLibrary px_sharedLibrarySharingSuggestionsCountsManager];
  [px_sharedLibrarySharingSuggestionsCountsManager markAnyNotificationsAsRead];
  [px_sharedLibrarySharingSuggestionsCountsManager markAllSuggestionsAsRead];
}

- (PXDisplayCollection)displayCollection
{
  container = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  px_sl_containerCollection = [container px_sl_containerCollection];

  return px_sl_containerCollection;
}

- (PHAssetCollection)containerCollection
{
  container = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  px_sl_containerCollection = [container px_sl_containerCollection];

  return px_sl_containerCollection;
}

- (id)fetchAssetCollections
{
  container = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  px_sl_fetchAssetCollections = [container px_sl_fetchAssetCollections];

  return px_sl_fetchAssetCollections;
}

- (id)copyIfNeededWithUpdatedConsiderNewAfterDate:(id)date
{
  dateCopy = date;
  suggestedDate = [(PXSharedLibrarySharingSuggestionPromise *)self suggestedDate];
  v6 = [PXSharedLibrarySharingSuggestionPromise isNewWithSuggestedDate:suggestedDate considerNewAfterDate:dateCopy];

  if (v6 == [(PXSharedLibrarySharingSuggestionPromise *)self isNew])
  {
    v7 = 0;
  }

  else
  {
    v7 = [[PXSharedLibrarySharingSuggestionPromise alloc] initWithPromise:self considerNewAfterDate:dateCopy];
  }

  return v7;
}

- (void)_updateIsNew
{
  suggestedDate = [(PXSharedLibrarySharingSuggestionPromise *)self suggestedDate];
  considerNewAfterDate = [(PXSharedLibrarySharingSuggestionPromise *)self considerNewAfterDate];
  self->_isNew = [PXSharedLibrarySharingSuggestionPromise isNewWithSuggestedDate:suggestedDate considerNewAfterDate:considerNewAfterDate];
}

- (void)_fulfill
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = PLSharedLibraryGetLog();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 134217984;
      v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PXSharedLibrarySharingSuggestionPromise.fulfill", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
    }
  }

  container = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  v17 = 0;
  v18 = 0;
  v16 = 0;
  [container px_sl_getKeyAsset:&v18 suggestedDate:&v17 locations:&v16];
  v7 = v18;
  v8 = v18;
  v9 = v17;
  v10 = v17;
  v11 = v16;
  objc_storeStrong(&self->_keyAsset, v7);
  objc_storeStrong(&self->_suggestedDate, v9);
  locations = self->_locations;
  self->_locations = v11;

  [(PXSharedLibrarySharingSuggestionPromise *)self _updateIsNew];
  v13 = PLSharedLibraryGetLog();
  v14 = os_signpost_id_make_with_pointer(v13, self);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      *buf = 134217984;
      v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_END, v15, "PXSharedLibrarySharingSuggestionPromise.fulfill", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
    }
  }
}

- (void)_loadLightweightProperties
{
  container = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  px_sl_title = [container px_sl_title];
  title = self->_title;
  self->_title = px_sl_title;
}

- (NSString)identifier
{
  container = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  px_sl_identifier = [container px_sl_identifier];

  return px_sl_identifier;
}

- (PXSharedLibrarySharingSuggestionPromise)initWithPromise:(id)promise considerNewAfterDate:(id)date
{
  promiseCopy = promise;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = PXSharedLibrarySharingSuggestionPromise;
  v8 = [(PXSharedLibrarySharingSuggestionPromise *)&v20 init];
  if (v8)
  {
    container = [promiseCopy container];
    container = v8->_container;
    v8->_container = container;

    objc_storeStrong(&v8->_considerNewAfterDate, date);
    v8->_isPlaceholder = [promiseCopy isPlaceholder];
    title = [promiseCopy title];
    title = v8->_title;
    v8->_title = title;

    keyAsset = [promiseCopy keyAsset];
    keyAsset = v8->_keyAsset;
    v8->_keyAsset = keyAsset;

    suggestedDate = [promiseCopy suggestedDate];
    suggestedDate = v8->_suggestedDate;
    v8->_suggestedDate = suggestedDate;

    locations = [promiseCopy locations];
    locations = v8->_locations;
    v8->_locations = locations;

    [(PXSharedLibrarySharingSuggestionPromise *)v8 _updateIsNew];
  }

  return v8;
}

- (PXSharedLibrarySharingSuggestionPromise)initWithContainer:(id)container considerNewAfterDate:(id)date lightweightPlaceholder:(BOOL)placeholder
{
  containerCopy = container;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = PXSharedLibrarySharingSuggestionPromise;
  v11 = [(PXSharedLibrarySharingSuggestionPromise *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_container, container);
    objc_storeStrong(&v12->_considerNewAfterDate, date);
    v12->_isPlaceholder = placeholder;
    [(PXSharedLibrarySharingSuggestionPromise *)v12 _loadLightweightProperties];
    if (!placeholder)
    {
      [(PXSharedLibrarySharingSuggestionPromise *)v12 _fulfill];
    }
  }

  return v12;
}

- (PXSharedLibrarySharingSuggestionPromise)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsDataSourceManager.m" lineNumber:443 description:{@"%s is not available as initializer", "-[PXSharedLibrarySharingSuggestionPromise init]"}];

  abort();
}

+ (BOOL)isNewWithSuggestedDate:(id)date considerNewAfterDate:(id)afterDate
{
  result = 0;
  if (date)
  {
    if (afterDate)
    {
      return [afterDate compare:?] == -1;
    }
  }

  return result;
}

@end
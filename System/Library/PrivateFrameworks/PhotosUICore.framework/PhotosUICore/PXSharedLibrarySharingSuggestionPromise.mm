@interface PXSharedLibrarySharingSuggestionPromise
+ (BOOL)isNewWithSuggestedDate:(id)a3 considerNewAfterDate:(id)a4;
- (NSString)identifier;
- (PHAssetCollection)containerCollection;
- (PXDisplayCollection)displayCollection;
- (PXSharedLibrarySharingSuggestionPromise)init;
- (PXSharedLibrarySharingSuggestionPromise)initWithContainer:(id)a3 considerNewAfterDate:(id)a4 lightweightPlaceholder:(BOOL)a5;
- (PXSharedLibrarySharingSuggestionPromise)initWithPromise:(id)a3 considerNewAfterDate:(id)a4;
- (id)copyIfNeededWithUpdatedConsiderNewAfterDate:(id)a3;
- (id)fetchAssetCollections;
- (void)_fulfill;
- (void)_loadLightweightProperties;
- (void)_updateIsNew;
- (void)markAsRead;
@end

@implementation PXSharedLibrarySharingSuggestionPromise

- (void)markAsRead
{
  v2 = [(PXSharedLibrarySharingSuggestionPromise *)self containerCollection];
  v4 = [v2 photoLibrary];

  v3 = [v4 px_sharedLibrarySharingSuggestionsCountsManager];
  [v3 markAnyNotificationsAsRead];
  [v3 markAllSuggestionsAsRead];
}

- (PXDisplayCollection)displayCollection
{
  v2 = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  v3 = [v2 px_sl_containerCollection];

  return v3;
}

- (PHAssetCollection)containerCollection
{
  v2 = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  v3 = [v2 px_sl_containerCollection];

  return v3;
}

- (id)fetchAssetCollections
{
  v2 = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  v3 = [v2 px_sl_fetchAssetCollections];

  return v3;
}

- (id)copyIfNeededWithUpdatedConsiderNewAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibrarySharingSuggestionPromise *)self suggestedDate];
  v6 = [PXSharedLibrarySharingSuggestionPromise isNewWithSuggestedDate:v5 considerNewAfterDate:v4];

  if (v6 == [(PXSharedLibrarySharingSuggestionPromise *)self isNew])
  {
    v7 = 0;
  }

  else
  {
    v7 = [[PXSharedLibrarySharingSuggestionPromise alloc] initWithPromise:self considerNewAfterDate:v4];
  }

  return v7;
}

- (void)_updateIsNew
{
  v4 = [(PXSharedLibrarySharingSuggestionPromise *)self suggestedDate];
  v3 = [(PXSharedLibrarySharingSuggestionPromise *)self considerNewAfterDate];
  self->_isNew = [PXSharedLibrarySharingSuggestionPromise isNewWithSuggestedDate:v4 considerNewAfterDate:v3];
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

  v6 = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  v17 = 0;
  v18 = 0;
  v16 = 0;
  [v6 px_sl_getKeyAsset:&v18 suggestedDate:&v17 locations:&v16];
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
  v5 = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  v3 = [v5 px_sl_title];
  title = self->_title;
  self->_title = v3;
}

- (NSString)identifier
{
  v2 = [(PXSharedLibrarySharingSuggestionPromise *)self container];
  v3 = [v2 px_sl_identifier];

  return v3;
}

- (PXSharedLibrarySharingSuggestionPromise)initWithPromise:(id)a3 considerNewAfterDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = PXSharedLibrarySharingSuggestionPromise;
  v8 = [(PXSharedLibrarySharingSuggestionPromise *)&v20 init];
  if (v8)
  {
    v9 = [v6 container];
    container = v8->_container;
    v8->_container = v9;

    objc_storeStrong(&v8->_considerNewAfterDate, a4);
    v8->_isPlaceholder = [v6 isPlaceholder];
    v11 = [v6 title];
    title = v8->_title;
    v8->_title = v11;

    v13 = [v6 keyAsset];
    keyAsset = v8->_keyAsset;
    v8->_keyAsset = v13;

    v15 = [v6 suggestedDate];
    suggestedDate = v8->_suggestedDate;
    v8->_suggestedDate = v15;

    v17 = [v6 locations];
    locations = v8->_locations;
    v8->_locations = v17;

    [(PXSharedLibrarySharingSuggestionPromise *)v8 _updateIsNew];
  }

  return v8;
}

- (PXSharedLibrarySharingSuggestionPromise)initWithContainer:(id)a3 considerNewAfterDate:(id)a4 lightweightPlaceholder:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PXSharedLibrarySharingSuggestionPromise;
  v11 = [(PXSharedLibrarySharingSuggestionPromise *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_container, a3);
    objc_storeStrong(&v12->_considerNewAfterDate, a4);
    v12->_isPlaceholder = a5;
    [(PXSharedLibrarySharingSuggestionPromise *)v12 _loadLightweightProperties];
    if (!a5)
    {
      [(PXSharedLibrarySharingSuggestionPromise *)v12 _fulfill];
    }
  }

  return v12;
}

- (PXSharedLibrarySharingSuggestionPromise)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibrarySharingSuggestionsDataSourceManager.m" lineNumber:443 description:{@"%s is not available as initializer", "-[PXSharedLibrarySharingSuggestionPromise init]"}];

  abort();
}

+ (BOOL)isNewWithSuggestedDate:(id)a3 considerNewAfterDate:(id)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      return [a4 compare:?] == -1;
    }
  }

  return result;
}

@end
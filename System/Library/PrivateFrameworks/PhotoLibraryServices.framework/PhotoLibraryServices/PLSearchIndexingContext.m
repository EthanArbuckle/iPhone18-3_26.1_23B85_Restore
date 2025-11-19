@interface PLSearchIndexingContext
- (BOOL)isSharedLibraryEnabled;
- (PLSearchIndexingContext)initWithSceneTaxonomyProvider:(id)a3 csuTaxonomyObjectStore:(id)a4 locale:(id)a5 calendar:(id)a6 indexDateFormatter:(id)a7 countrySynonymProvider:(id)a8 delegate:(id)a9;
- (PLSearchIndexingContextDelegate)delegate;
- (id)description;
@end

@implementation PLSearchIndexingContext

- (PLSearchIndexingContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isSharedLibraryEnabled
{
  v2 = self;
  v3 = [(PLSearchIndexingContext *)self delegate];
  LOBYTE(v2) = [v3 isSharedLibraryEnabledForSearchIndexingContext:v2];

  return v2;
}

- (id)description
{
  v15[7] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p", objc_opt_class(), self];
  v15[0] = v3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sceneTaxonomyProvider: %@", self->_sceneTaxonomyProvider];
  v15[1] = v4;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"csuTaxonomyObjectStore: %@", self->_csuTaxonomyObjectStore];
  v15[2] = v5;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"locale: %@", self->_locale];
  v15[3] = v6;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"calendar: %@", self->_calendar];
  v15[4] = v7;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"searchIndexDateFormatter: %@", self->_searchIndexDateFormatter];
  v15[5] = v8;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isSharedLibraryEnabled: %d", -[PLSearchIndexingContext isSharedLibraryEnabled](self, "isSharedLibraryEnabled")];
  v15[6] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:7];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v10 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

- (PLSearchIndexingContext)initWithSceneTaxonomyProvider:(id)a3 csuTaxonomyObjectStore:(id)a4 locale:(id)a5 calendar:(id)a6 indexDateFormatter:(id)a7 countrySynonymProvider:(id)a8 delegate:(id)a9
{
  v16 = a3;
  v17 = a4;
  obj = a5;
  v18 = a5;
  v56 = a6;
  v52 = a7;
  v55 = a7;
  v53 = a8;
  v54 = a8;
  v19 = a9;
  if (!v17)
  {
    v20 = PLSearchBackendIndexManagerGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "CSU: csuTaxonomyObjectStore argument is nil", buf, 2u);
    }
  }

  if (!v16)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PLSearchIndexingContext.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"sceneTaxonomyProvider"}];
  }

  v21 = v18;
  if (!v18)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"PLSearchIndexingContext.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"locale"}];

    v21 = 0;
  }

  if (!v56)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"PLSearchIndexingContext.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];

    v21 = v18;
  }

  v57.receiver = self;
  v57.super_class = PLSearchIndexingContext;
  v22 = [(PLSearchIndexingContext *)&v57 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_sceneTaxonomyProvider, a3);
    objc_storeStrong(&v23->_csuTaxonomyObjectStore, a4);
    objc_storeStrong(&v23->_locale, obj);
    objc_storeStrong(&v23->_calendar, a6);
    objc_storeStrong(&v23->_searchIndexDateFormatter, v52);
    objc_storeWeak(&v23->_delegate, v19);
    v24 = objc_alloc_init(PLUtilityAssetPool);
    utilityAssetPool = v23->_utilityAssetPool;
    v23->_utilityAssetPool = v24;

    objc_storeStrong(&v23->_countrySynonymProvider, v53);
    v26 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosAlbumUUIDs" searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosAlbumUUIDsKey = v23->_photosAlbumUUIDsKey;
    v23->_photosAlbumUUIDsKey = v26;

    v28 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosAlbumAssetCounts" searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosAlbumAssetCountsKey = v23->_photosAlbumAssetCountsKey;
    v23->_photosAlbumAssetCountsKey = v28;

    v30 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosMemoryUUIDs" searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosMemoryUUIDsKey = v23->_photosMemoryUUIDsKey;
    v23->_photosMemoryUUIDsKey = v30;

    v32 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosMemoryAssetCounts" searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosMemoryAssetCountsKey = v23->_photosMemoryAssetCountsKey;
    v23->_photosMemoryAssetCountsKey = v32;

    v34 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosHighlightUUIDs" searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosHighlightUUIDsKey = v23->_photosHighlightUUIDsKey;
    v23->_photosHighlightUUIDsKey = v34;

    v36 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosHighlightAssetCounts" searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosHighlightAssetCountsKey = v23->_photosHighlightAssetCountsKey;
    v23->_photosHighlightAssetCountsKey = v36;

    v38 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosSensitiveLocation" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    photosSensitiveLocationKey = v23->_photosSensitiveLocationKey;
    v23->_photosSensitiveLocationKey = v38;

    v40 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosEmbeddingCount" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    photosEmbeddingCountKey = v23->_photosEmbeddingCountKey;
    v23->_photosEmbeddingCountKey = v40;

    v42 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosReverseLocationDataIsValid" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    photosReverseLocationDataIsValidKey = v23->_photosReverseLocationDataIsValidKey;
    v23->_photosReverseLocationDataIsValidKey = v42;

    v44 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"photosThumbnailMap" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    photosThumbnailMapKey = v23->_photosThumbnailMapKey;
    v23->_photosThumbnailMapKey = v44;
  }

  return v23;
}

@end
@interface PLSearchIndexConfiguration
+ (BOOL)shouldIndexFilenames;
+ (unint64_t)currentEmbeddingModelVersion;
+ (void)setShouldIndexFilenames:(BOOL)filenames;
- (CSUSearchableKnowledgeObjectStore)csuTaxonomyObjectStore;
- (PLSearchIndexConfiguration)initWithPathManager:(id)manager;
- (PLSearchIndexSceneTaxonomyProvider)sceneTaxonomyProvider;
- (PLSearchIndexingContext)indexingContext;
- (void)inLibraryPerform_refreshSharedLibraryEnabledWithManagedObjectContext:(id)context;
- (void)releaseIndexingContext;
@end

@implementation PLSearchIndexConfiguration

- (void)releaseIndexingContext
{
  indexingContext = self->_indexingContext;
  self->_indexingContext = 0;
}

- (void)inLibraryPerform_refreshSharedLibraryEnabledWithManagedObjectContext:(id)context
{
  v4 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:context];
  self->_isSharedLibraryEnabled = v4 != 0;
}

- (CSUSearchableKnowledgeObjectStore)csuTaxonomyObjectStore
{
  v16 = *MEMORY[0x1E69E9840];
  csuTaxonomyObjectStore = self->_csuTaxonomyObjectStore;
  if (!csuTaxonomyObjectStore)
  {
    pathManager = [(PLSearchIndexConfiguration *)self pathManager];
    v13 = 0;
    v5 = [pathManager internalDirectoryWithSubType:6 additionalPathComponents:0 createIfNeeded:0 error:&v13];
    v6 = v13;

    v12 = v6;
    v7 = [objc_alloc(MEMORY[0x1E6999150]) initExistingDB:v5 error:&v12];
    v8 = v12;

    v9 = self->_csuTaxonomyObjectStore;
    self->_csuTaxonomyObjectStore = v7;

    if (!self->_csuTaxonomyObjectStore || v8)
    {
      v10 = PLSearchBackendSceneTaxonomyGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "CSU: Failed to load CSU EntityStore. Error: %@", buf, 0xCu);
      }
    }

    csuTaxonomyObjectStore = self->_csuTaxonomyObjectStore;
  }

  return csuTaxonomyObjectStore;
}

- (PLSearchIndexSceneTaxonomyProvider)sceneTaxonomyProvider
{
  sceneTaxonomyProvider = self->_sceneTaxonomyProvider;
  if (!sceneTaxonomyProvider)
  {
    v4 = objc_alloc_init(PLSearchIndexSceneTaxonomyProvider);
    v5 = self->_sceneTaxonomyProvider;
    self->_sceneTaxonomyProvider = v4;

    sceneTaxonomyProvider = self->_sceneTaxonomyProvider;
  }

  return sceneTaxonomyProvider;
}

- (PLSearchIndexingContext)indexingContext
{
  indexingContext = self->_indexingContext;
  if (!indexingContext)
  {
    v4 = objc_alloc_init(PLSearchIndexDateFormatter);
    v5 = objc_alloc_init(PLSearchIndexCountrySynonymProvider);
    v6 = [PLSearchIndexingContext alloc];
    sceneTaxonomyProvider = [(PLSearchIndexConfiguration *)self sceneTaxonomyProvider];
    csuTaxonomyObjectStore = [(PLSearchIndexConfiguration *)self csuTaxonomyObjectStore];
    v9 = +[PLSearchIndexConfiguration locale];
    v10 = +[PLSearchIndexConfiguration calendar];
    v11 = [(PLSearchIndexingContext *)v6 initWithSceneTaxonomyProvider:sceneTaxonomyProvider csuTaxonomyObjectStore:csuTaxonomyObjectStore locale:v9 calendar:v10 indexDateFormatter:v4 countrySynonymProvider:v5 delegate:self];
    v12 = self->_indexingContext;
    self->_indexingContext = v11;

    indexingContext = self->_indexingContext;
  }

  return indexingContext;
}

- (PLSearchIndexConfiguration)initWithPathManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchIndexConfiguration.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  v11.receiver = self;
  v11.super_class = PLSearchIndexConfiguration;
  v7 = [(PLSearchIndexConfiguration *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_pathManager, manager);
  }

  return v8;
}

+ (void)setShouldIndexFilenames:(BOOL)filenames
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:filenames];
  v4 = _shouldIndexFilenamesNumber;
  _shouldIndexFilenamesNumber = v3;
}

+ (BOOL)shouldIndexFilenames
{
  v2 = _shouldIndexFilenamesNumber;
  if (!_shouldIndexFilenamesNumber)
  {
    if (shouldIndexFilenames_pred != -1)
    {
      dispatch_once(&shouldIndexFilenames_pred, &__block_literal_global_35760);
    }

    v3 = [MEMORY[0x1E696AD98] numberWithBool:shouldIndexFilenames_shouldIndexFilenames];
    v4 = _shouldIndexFilenamesNumber;
    _shouldIndexFilenamesNumber = v3;

    v2 = _shouldIndexFilenamesNumber;
  }

  return [v2 BOOLValue];
}

void __50__PLSearchIndexConfiguration_shouldIndexFilenames__block_invoke()
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v2 objectForKey:@"PLSearchIndexIncludeFilenames"];
  v1 = v0;
  if (v0)
  {
    shouldIndexFilenames_shouldIndexFilenames = [v0 BOOLValue];
  }
}

+ (unint64_t)currentEmbeddingModelVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getVCPMediaAnalyzerClass_softClass;
  v9 = getVCPMediaAnalyzerClass_softClass;
  if (!getVCPMediaAnalyzerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getVCPMediaAnalyzerClass_block_invoke;
    v5[3] = &unk_1E7577EA0;
    v5[4] = &v6;
    __getVCPMediaAnalyzerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 getUnifiedEmbeddingVersion];
}

@end
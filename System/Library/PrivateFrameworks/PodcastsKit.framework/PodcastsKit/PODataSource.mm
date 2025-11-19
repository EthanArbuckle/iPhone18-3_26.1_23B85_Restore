@interface PODataSource
+ (id)sharedInstance;
- (BOOL)isPodcastDataStale;
- (BOOL)isPodcastRevisionDataStale;
- (BOOL)isPodcastsInstalled;
- (NSMutableArray)podcastRevisions;
- (NSMutableDictionary)podcastCollectionsByUUID;
- (NSMutableDictionary)podcastStationsByUUID;
- (PODataSource)initWithPlistPath:(id)a3;
- (id)arrayFromPlistURL:(id)a3;
- (id)constructModelObjectOfClass:(Class)a3 fromDictionary:(id)a4;
- (id)constructModelObjectsFromDictionaries:(id)a3 withIndexPath:(id)a4 modelObjectClass:(Class)a5;
- (id)description;
- (id)domainObjectWithUUID:(id)a3;
- (id)podcastCollectionWithUUID:(id)a3;
- (id)podcastCollections;
- (id)podcastCollectionsMatchingString:(id)a3 maxResults:(int64_t)a4;
- (id)podcastModelObjectsInArray:(id)a3 matchingString:(id)a4 maxResults:(int64_t)a5;
- (id)podcastRevisionsSinceAnchor:(unint64_t)a3;
- (id)podcastStationWithUUID:(id)a3;
- (id)podcastStations;
- (id)podcastStationsMatchingString:(id)a3 maxResults:(int64_t)a4;
- (id)validity;
- (void)_withExtensionParseDataDictionary:(id)a3 revisionDictionary:(id)a4;
- (void)getContainerURL:(id)a3;
- (void)getDatabaseURL:(id)a3;
- (void)getRevisionURL:(id)a3;
- (void)getURLs:(id)a3;
- (void)initializeDataFromDictionary;
@end

@implementation PODataSource

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__PODataSource_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_predicate != -1)
  {
    dispatch_once(&sharedInstance_predicate, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __30__PODataSource_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (PODataSource)initWithPlistPath:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PODataSource;
  v5 = [(PODataSource *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [(PODataSource *)v5 setPodcastCollectionsByUUID:v6];

    v7 = [MEMORY[0x277CBEB38] dictionary];
    [(PODataSource *)v5 setPodcastStationsByUUID:v7];

    v8 = [MEMORY[0x277CBEB18] array];
    [(PODataSource *)v5 setPodcastRevisions:v8];

    [(PODataSource *)v5 setPlistBasePath:v4];
    [(PODataSource *)v5 initializeDataFromDictionary];
  }

  POLogInitIfNeeded();
  if (POLogContextSync)
  {
    v9 = POLogContextSync;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_25E9F0000, v9, OS_LOG_TYPE_INFO, "Data source is %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)arrayFromPlistURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 contentsAtPath:v5];

  if (v6)
  {
    v13 = 0;
    v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v13];
    v8 = v13;
    if (!v8)
    {
      v9 = 0;
      if (v7)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  POLogInitIfNeeded();
  if (POLogContextSync)
  {
    v10 = POLogContextSync;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [PODataSource arrayFromPlistURL:];
  }

  v11 = _MTLogCategorySiri();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [PODataSource arrayFromPlistURL:];
  }

  v9 = v8;
LABEL_14:

  return v7;
}

- (BOOL)isPodcastsInstalled
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.podcasts" allowPlaceholder:0 error:&v7];
  v3 = v7;
  if (v3)
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v4 = POLogContextSync;
    }

    else
    {
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25E9F0000, v4, OS_LOG_TYPE_INFO, "Could not load application record. If the Podcasts app is actually installed, this represents an error: %@.", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2 != 0;
}

- (void)getURLs:(id)a3
{
  v4 = a3;
  v5 = [(PODataSource *)self plistBasePath];

  if (v5)
  {
    v6 = [(PODataSource *)self plistBasePath];
    v7 = [v6 URLByAppendingPathComponent:@"PodcastsDB.plist"];

    v8 = [(PODataSource *)self plistBasePath];
    v9 = [v8 URLByAppendingPathComponent:@"PodcastsDiff.plist"];

    v4[2](v4, v7, v9, 0);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __24__PODataSource_getURLs___block_invoke;
    v10[3] = &unk_279A44C50;
    v11 = v4;
    [(PODataSource *)self getContainerURL:v10];
  }
}

void __24__PODataSource_getURLs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 URLByAppendingPathComponent:@"Documents/PodcastsDB.plist"];
  v7 = [v6 URLByAppendingPathComponent:@"Documents/PodcastsDiff.plist"];

  (*(*(a1 + 32) + 16))();
}

- (void)getDatabaseURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__PODataSource_getDatabaseURL___block_invoke;
  v6[3] = &unk_279A44C78;
  v7 = v4;
  v5 = v4;
  [(PODataSource *)self getURLs:v6];
}

- (void)getRevisionURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__PODataSource_getRevisionURL___block_invoke;
  v6[3] = &unk_279A44C78;
  v7 = v4;
  v5 = v4;
  [(PODataSource *)self getURLs:v6];
}

- (void)getContainerURL:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = container_query_create();
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    v5 = xpc_string_create("com.apple.podcasts");
    container_query_set_identifiers();
    if (!container_query_get_single_result())
    {
      if (container_query_get_last_error() && (v17 = container_error_copy_unlocalized_description()) != 0)
      {
        v18 = v17;
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
        v20 = v19;
        if (v19)
        {
          v30 = *MEMORY[0x277CCA068];
          v31[0] = v19;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        }

        else
        {
          v21 = 0;
        }

        free(v18);
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v25 = _MTLogCategorySiri();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v28 = 138412290;
        v29 = v20;
        _os_log_impl(&dword_25E9F0000, v25, OS_LOG_TYPE_INFO, "We could not access the podcasts container. This probably means the app isn't installed. Description: '%@'", &v28, 0xCu);
      }

      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PODataSourceErrorDomain" code:1 userInfo:v21];
      v3[2](v3, 0, v26);

      goto LABEL_39;
    }

    v6 = container_copy_sandbox_token();
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = v6;
    v8 = sandbox_extension_consume();
    v9 = _MTLogCategorySiri();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v28 = 134217984;
      v29 = v8;
      _os_log_impl(&dword_25E9F0000, v9, OS_LOG_TYPE_INFO, "Consumed sandbox token and received handle %lli", &v28, 0xCu);
    }

    free(v7);
    if (v8)
    {
      path = container_get_path();
      if (v8 == -1)
      {
        v23 = _MTLogCategorySiri();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_25E9F0000, v23, OS_LOG_TYPE_ERROR, "Something went wrong with getting the sandbox extension.", &v28, 2u);
        }

        v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PODataSourceErrorDomain" code:2 userInfo:0];
        v3[2](v3, 0, v24);

        if (!v4)
        {
          goto LABEL_39;
        }

LABEL_29:
        container_query_free();
LABEL_39:

        goto LABEL_40;
      }

      v11 = path;
    }

    else
    {
LABEL_9:
      v12 = _MTLogCategorySiri();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_25E9F0000, v12, OS_LOG_TYPE_INFO, "Handle is 0. Maybe we were not issued a token, the app is not sandboxed, or this extension is not needed to access the container.", &v28, 2u);
      }

      v11 = container_get_path();
      v8 = 0;
    }

    v13 = _MTLogCategorySiri();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v14)
      {
        v28 = 136315138;
        v29 = v11;
        _os_log_impl(&dword_25E9F0000, v13, OS_LOG_TYPE_INFO, "Found container path %s", &v28, 0xCu);
      }

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15 isDirectory:1];
      (v3)[2](v3, v16, 0);
    }

    else
    {
      if (v14)
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_25E9F0000, v13, OS_LOG_TYPE_INFO, "We could not access the podcasts container. This probably means the app isn't installed.", &v28, 2u);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PODataSourceErrorDomain" code:1 userInfo:0];
      v3[2](v3, 0, v15);
    }

    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = _MTLogCategorySiri();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v28 = 134217984;
        v29 = v8;
        _os_log_impl(&dword_25E9F0000, v22, OS_LOG_TYPE_INFO, "Releasing sandbox extension %lli", &v28, 0xCu);
      }

      sandbox_extension_release();
    }

    if (!v4)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_40:

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPodcastRevisionDataStale
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PODataSource_isPodcastRevisionDataStale__block_invoke;
  v4[3] = &unk_279A44CA0;
  v4[4] = self;
  v4[5] = &v5;
  [(PODataSource *)self getRevisionURL:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __42__PODataSource_isPodcastRevisionDataStale__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v5 path];
    v9 = [v7 attributesOfItemAtPath:v8 error:0];
    v10 = [v9 fileModificationDate];
    v11 = [*(a1 + 32) revisionsDataPlistLastModified];
    *(*(*(a1 + 40) + 8) + 24) = [v10 isEqual:v11] ^ 1;
  }

  else
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v12 = POLogContextSync;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __42__PODataSource_isPodcastRevisionDataStale__block_invoke_cold_1();
    }
  }
}

- (BOOL)isPodcastDataStale
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__PODataSource_isPodcastDataStale__block_invoke;
  v4[3] = &unk_279A44CA0;
  v4[4] = self;
  v4[5] = &v5;
  [(PODataSource *)self getDatabaseURL:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__PODataSource_isPodcastDataStale__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v5 path];
    v9 = [v7 attributesOfItemAtPath:v8 error:0];
    v10 = [v9 fileModificationDate];
    v11 = [*(a1 + 32) podcastDataPlistLastModified];
    *(*(*(a1 + 40) + 8) + 24) = [v10 isEqual:v11] ^ 1;
  }

  else
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v12 = POLogContextSync;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __34__PODataSource_isPodcastDataStale__block_invoke_cold_1();
    }
  }
}

- (NSMutableDictionary)podcastCollectionsByUUID
{
  v3 = self->_podcastCollectionsByUUID;
  objc_sync_enter(v3);
  if ([(PODataSource *)self isPodcastDataStale]&& ![(PODataSource *)self constructingData])
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v4 = POLogContextSync;
    }

    else
    {
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_25E9F0000, v4, OS_LOG_TYPE_INFO, "Podcast data is stale, going to reinitialize from plist.", v7, 2u);
    }

    [(PODataSource *)self initializeDataFromDictionary];
  }

  objc_sync_exit(v3);

  podcastCollectionsByUUID = self->_podcastCollectionsByUUID;

  return podcastCollectionsByUUID;
}

- (NSMutableDictionary)podcastStationsByUUID
{
  v3 = self->_podcastStationsByUUID;
  objc_sync_enter(v3);
  if ([(PODataSource *)self isPodcastDataStale]&& ![(PODataSource *)self constructingData])
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v4 = POLogContextSync;
    }

    else
    {
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_25E9F0000, v4, OS_LOG_TYPE_INFO, "Podcast data is stale, going to reinitialize from plist.", v7, 2u);
    }

    [(PODataSource *)self initializeDataFromDictionary];
  }

  objc_sync_exit(v3);

  podcastStationsByUUID = self->_podcastStationsByUUID;

  return podcastStationsByUUID;
}

- (id)validity
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PODataSource *)self databaseUUID];
  v5 = [(PODataSource *)self firstRevisionUUID];
  v6 = [v3 stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

- (NSMutableArray)podcastRevisions
{
  v3 = self->_podcastRevisions;
  objc_sync_enter(v3);
  if ([(PODataSource *)self isPodcastRevisionDataStale]&& ![(PODataSource *)self constructingData])
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v4 = POLogContextSync;
    }

    else
    {
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_25E9F0000, v4, OS_LOG_TYPE_INFO, "Podcast revision data is stale, going to reinitialize from plist.", v7, 2u);
    }

    [(PODataSource *)self initializeDataFromDictionary];
  }

  objc_sync_exit(v3);

  podcastRevisions = self->_podcastRevisions;

  return podcastRevisions;
}

- (void)initializeDataFromDictionary
{
  if ([(PODataSource *)self constructingData])
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v3 = POLogContextSync;
    }

    else
    {
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(PODataSource *)v3 initializeDataFromDictionary];
    }
  }

  else
  {
    [(PODataSource *)self setConstructingData:1];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __44__PODataSource_initializeDataFromDictionary__block_invoke;
    v4[3] = &unk_279A44CC8;
    v4[4] = self;
    [(PODataSource *)self getURLs:v4];
    [(PODataSource *)self setConstructingData:0];
  }
}

void __44__PODataSource_initializeDataFromDictionary__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v8 = POLogContextSync;
    }

    else
    {
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__PODataSource_initializeDataFromDictionary__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _withExtensionParseDataDictionary:a2 revisionDictionary:a3];
  }
}

- (void)_withExtensionParseDataDictionary:(id)a3 revisionDictionary:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PODataSource *)self arrayFromPlistURL:v6];
  v9 = [(PODataSource *)self arrayFromPlistURL:v7];
  POLogInitIfNeeded();
  v10 = MEMORY[0x277D86220];
  if (POLogContextSync)
  {
    v11 = POLogContextSync;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v76 = v6;
    _os_log_impl(&dword_25E9F0000, v11, OS_LOG_TYPE_INFO, "Constructing data source from %@", buf, 0xCu);
  }

  v64 = v7;
  if (!v8)
  {
    goto LABEL_38;
  }

  v12 = [v8 objectAtIndexedSubscript:0];
  v13 = [v12 objectForKeyedSubscript:@"children"];
  v14 = v13;
  if (!v13)
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v31 = POLogContextSync;
    }

    else
    {
      v31 = v10;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [PODataSource _withExtensionParseDataDictionary:revisionDictionary:];
    }

    goto LABEL_20;
  }

  if ([v13 count] == 2)
  {
    v60 = v9;
    v62 = v8;
    v15 = [v14 objectAtIndexedSubscript:0];
    v16 = [v15 objectForKeyedSubscript:@"children"];

    v17 = [v14 objectAtIndexedSubscript:1];
    v18 = [v17 objectForKeyedSubscript:@"children"];

    v19 = [MEMORY[0x277CCAA70] indexPathWithIndex:0];
    obj = v16;
    v20 = [(PODataSource *)self constructModelObjectsFromDictionaries:v16 withIndexPath:v19 modelObjectClass:objc_opt_class()];

    [(NSMutableDictionary *)self->_podcastCollectionsByUUID removeAllObjects];
    [(NSMutableDictionary *)self->_podcastCollectionsByUUID addEntriesFromDictionary:v20];
    v21 = [MEMORY[0x277CCAA70] indexPathWithIndex:1];
    v65 = v18;
    v22 = [(PODataSource *)self constructModelObjectsFromDictionaries:v18 withIndexPath:v21 modelObjectClass:objc_opt_class()];

    [(NSMutableDictionary *)self->_podcastStationsByUUID removeAllObjects];
    [(NSMutableDictionary *)self->_podcastStationsByUUID addEntriesFromDictionary:v22];
    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v24 = v6;
    v25 = [(NSMutableArray *)v6 path];
    v26 = [v23 attributesOfItemAtPath:v25 error:0];
    v27 = [v26 fileModificationDate];
    [(PODataSource *)self setPodcastDataPlistLastModified:v27];

    v10 = MEMORY[0x277D86220];
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v28 = POLogContextSync;
    }

    else
    {
      v28 = v10;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = v28;
      v30 = [(PODataSource *)self podcastDataPlistLastModified];
      *buf = 138412290;
      v76 = v30;
      _os_log_impl(&dword_25E9F0000, v29, OS_LOG_TYPE_INFO, "Podcast data last modified is %@", buf, 0xCu);
    }

    v6 = v24;
    v9 = v60;
    v8 = v62;
LABEL_20:
    v32 = [v12 objectForKeyedSubscript:@"uuid"];
    if (v32)
    {
      [(PODataSource *)self setDatabaseUUID:v32];
      POLogInitIfNeeded();
      if (POLogContextSync)
      {
        v33 = POLogContextSync;
      }

      else
      {
        v33 = v10;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = v33;
        [(PODataSource *)self databaseUUID];
        v36 = v35 = v9;
        *buf = 138412290;
        v76 = v36;
        _os_log_impl(&dword_25E9F0000, v34, OS_LOG_TYPE_INFO, "Database UUID is %@", buf, 0xCu);

        v9 = v35;
      }
    }

    else
    {
      POLogInitIfNeeded();
      if (POLogContextSync)
      {
        v38 = POLogContextSync;
      }

      else
      {
        v38 = v10;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [PODataSource _withExtensionParseDataDictionary:revisionDictionary:];
      }
    }

    v7 = v64;
LABEL_38:
    if (v9)
    {
      v63 = v8;
      v59 = v6;
      [(NSMutableArray *)self->_podcastRevisions removeAllObjects];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v61 = v9;
      obja = v9;
      v39 = [obja countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v71;
        v42 = 1;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v71 != v41)
            {
              objc_enumerationMutation(obja);
            }

            v44 = *(*(&v70 + 1) + 8 * i);
            if (v42)
            {
              v45 = [*(*(&v70 + 1) + 8 * i) objectForKeyedSubscript:@"uuid"];
              if (v45)
              {
                [(PODataSource *)self setFirstRevisionUUID:v45];
                POLogInitIfNeeded();
                if (POLogContextSync)
                {
                  v46 = POLogContextSync;
                }

                else
                {
                  v46 = v10;
                }

                if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  v47 = v46;
                  v48 = [(PODataSource *)self firstRevisionUUID];
                  *buf = 138412290;
                  v76 = v48;
                  _os_log_impl(&dword_25E9F0000, v47, OS_LOG_TYPE_INFO, "First Revision UUID is %@", buf, 0xCu);

                  v10 = MEMORY[0x277D86220];
                }
              }

              else
              {
                POLogInitIfNeeded();
                if (POLogContextSync)
                {
                  v49 = POLogContextSync;
                }

                else
                {
                  v49 = v10;
                }

                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  [(PODataSource *)&v68 _withExtensionParseDataDictionary:v69 revisionDictionary:v49];
                }
              }
            }

            v50 = [v44 objectForKeyedSubscript:@"podcasts"];
            if (v50)
            {
              [(PODataSource *)self constructRevisionsFromDictionary:v50 isPodcastCollections:1];
            }

            v51 = [v44 objectForKeyedSubscript:@"stations"];
            if (v51)
            {
              [(PODataSource *)self constructRevisionsFromDictionary:v51 isPodcastCollections:0];
            }

            v42 = 0;
          }

          v40 = [obja countByEnumeratingWithState:&v70 objects:v74 count:16];
          v42 = 0;
        }

        while (v40);
      }

      v52 = [MEMORY[0x277CCAA00] defaultManager];
      v7 = v64;
      v53 = [v64 path];
      v54 = [v52 attributesOfItemAtPath:v53 error:0];
      v55 = [v54 fileModificationDate];
      [(PODataSource *)self setRevisionsDataPlistLastModified:v55];

      POLogInitIfNeeded();
      if (POLogContextSync)
      {
        v56 = POLogContextSync;
      }

      else
      {
        v56 = v10;
      }

      v6 = v59;
      v9 = v61;
      v8 = v63;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        podcastRevisions = self->_podcastRevisions;
        *buf = 138412290;
        v76 = podcastRevisions;
        _os_log_impl(&dword_25E9F0000, v56, OS_LOG_TYPE_INFO, "Podcast revisions are %@", buf, 0xCu);
      }
    }

    goto LABEL_68;
  }

  POLogInitIfNeeded();
  if (POLogContextSync)
  {
    v37 = POLogContextSync;
  }

  else
  {
    v37 = v10;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    [PODataSource _withExtensionParseDataDictionary:revisionDictionary:];
  }

  v7 = v64;
LABEL_68:

  v58 = *MEMORY[0x277D85DE8];
}

- (id)constructModelObjectOfClass:(Class)a3 fromDictionary:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(a3);
  v7 = [v5 objectForKey:@"uuid"];
  [v6 setUuid:v7];

  v8 = [v5 objectForKey:@"title"];
  [v6 setTitle:v8];

  v9 = [v5 objectForKey:@"feedUrl"];
  [v6 setFeedUrl:v9];

  v10 = [v5 objectForKey:@"storeId"];

  [v6 setStoreId:v10];

  return v6;
}

- (id)constructModelObjectsFromDictionaries:(id)a3 withIndexPath:(id)a4 modelObjectClass:(Class)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v24;
    do
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [(PODataSource *)self constructModelObjectOfClass:a5 fromDictionary:*(*(&v23 + 1) + 8 * v15)];
        v13 = v16 + 1;
        v18 = [v9 indexPathByAddingIndex:v16];
        [v17 setIndexPath:v18];

        v19 = [v17 uuid];
        [v10 setObject:v17 forKeyedSubscript:v19];

        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)podcastModelObjectsInArray:(id)a3 matchingString:(id)a4 maxResults:(int64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v20 + 1) + 8 * v14);
      v16 = [v15 title];
      v17 = [v16 rangeOfString:v8 options:1];

      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v9 addObject:v15];
      }

      if (a5 >= 1 && [v9 count] == a5)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)podcastCollectionsMatchingString:(id)a3 maxResults:(int64_t)a4
{
  v6 = a3;
  v7 = [(PODataSource *)self podcastCollections];
  v8 = [(PODataSource *)self podcastModelObjectsInArray:v7 matchingString:v6 maxResults:a4];

  return v8;
}

- (id)podcastStationsMatchingString:(id)a3 maxResults:(int64_t)a4
{
  v6 = a3;
  v7 = [(PODataSource *)self podcastStations];
  v8 = [(PODataSource *)self podcastModelObjectsInArray:v7 matchingString:v6 maxResults:a4];

  return v8;
}

- (id)podcastCollectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(PODataSource *)self podcastCollectionsByUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)podcastCollections
{
  v2 = [(PODataSource *)self podcastCollectionsByUUID];
  v3 = [v2 allValues];

  return v3;
}

- (id)podcastStationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(PODataSource *)self podcastStationsByUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)podcastStations
{
  v2 = [(PODataSource *)self podcastStationsByUUID];
  v3 = [v2 allValues];

  return v3;
}

- (id)podcastRevisionsSinceAnchor:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(PODataSource *)self podcastRevisions];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 revisionID] >= a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)domainObjectWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(PODataSource *)self podcastCollectionsByUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(PODataSource *)self podcastStationsByUUID];
    v6 = [v7 objectForKeyedSubscript:v4];
  }

  v8 = [v6 SAMPCollection];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PODataSource *)self podcastCollectionsByUUID];
  v7 = [(PODataSource *)self podcastStationsByUUID];
  v8 = [v3 stringWithFormat:@"%@ (%p) podcast collections: %@, podcast stations: %@", v5, self, v6, v7];

  return v8;
}

- (void)arrayFromPlistURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_25E9F0000, v1, OS_LOG_TYPE_ERROR, "Error reading plist at %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)arrayFromPlistURL:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_25E9F0000, v1, OS_LOG_TYPE_FAULT, "Error reading plist from path: %@ - with error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __42__PODataSource_isPodcastRevisionDataStale__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_25E9F0000, v0, v1, "Failed to get revision URL for PODataSource with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __34__PODataSource_isPodcastDataStale__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_25E9F0000, v0, v1, "Failed to get database URL for PODataSource with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__PODataSource_initializeDataFromDictionary__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_25E9F0000, v0, v1, "Failed to get plist URLs for PODataSource with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_withExtensionParseDataDictionary:revisionDictionary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_25E9F0000, v0, v1, "First child's children isn't of length 2.  Dictionary at URL %@ is malformed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_withExtensionParseDataDictionary:revisionDictionary:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_25E9F0000, v0, v1, "Unable to locate root child array.  Dictionary at URL %@ is malformed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_withExtensionParseDataDictionary:revisionDictionary:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_25E9F0000, v0, v1, "Unable to get UUID for root object, sync data will not have proper validity.  Dictionary at URL %@ is malformed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_withExtensionParseDataDictionary:(os_log_t)log revisionDictionary:.cold.4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25E9F0000, log, OS_LOG_TYPE_ERROR, "Unable to get UUID for first revision.", buf, 2u);
}

@end
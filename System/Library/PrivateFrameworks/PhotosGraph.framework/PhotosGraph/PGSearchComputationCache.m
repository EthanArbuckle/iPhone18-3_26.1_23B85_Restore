@interface PGSearchComputationCache
+ (id)persistentStoreURLWithManager:(id)a3;
- (BOOL)momentAssetPairs:(id)a3 areValidWithAssociatedMomentUUIDs:(id)a4;
- (PGSearchComputationCache)initWithPersistentStoreURL:(id)a3 photoLibrary:(id)a4;
- (id)curationInformationForNode:(id)a3;
- (id)keyAssetLocalIdentifierForNodeIdentifier:(id)a3 withAssociatedMomentUUIDs:(id)a4;
- (id)locationInformationForLocationNode:(id)a3 locationMask:(unint64_t)a4;
- (void)invalidateCache;
- (void)save;
- (void)setCurationInformation:(id)a3 forNode:(id)a4;
- (void)setKeyAssetLocalIdentifier:(id)a3 forNodeIdentifier:(id)a4 withAssociatedMomentUUID:(id)a5;
- (void)setLocationInformation:(id)a3 forLocationNode:(id)a4 locationMask:(unint64_t)a5;
@end

@implementation PGSearchComputationCache

- (id)locationInformationForLocationNode:(id)a3 locationMask:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 UUID];
  if (v7 || ([v6 name], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [(NSMutableDictionary *)self->_locationInformationByNodeUUID objectForKeyedSubscript:v7];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v11 = [v9 objectForKeyedSubscript:v10];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot get unique UUID for node %@", &v14, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setLocationInformation:(id)a3 forLocationNode:(id)a4 locationMask:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 UUID];
  if (v10 || ([v9 name], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [(NSMutableDictionary *)self->_locationInformationByNodeUUID objectForKeyedSubscript:v10];
    if (!v12)
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_locationInformationByNodeUUID setObject:v12 forKeyedSubscript:v11];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    [v12 setObject:v8 forKeyedSubscript:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v15 = 138412290;
    v16 = v9;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot get unique UUID for node %@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)curationInformationForNode:(id)a3
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 name];
  }

  v8 = v7;

  v9 = [(NSMutableDictionary *)self->_curationInformationByNodeUUID objectForKeyedSubscript:v8];

  return v9;
}

- (void)setCurationInformation:(id)a3 forNode:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 UUID];
  if (v8 || ([v7 name], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [(NSMutableDictionary *)self->_curationInformationByNodeUUID setObject:v6 forKeyedSubscript:v8];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot get unique UUID for node %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)momentAssetPairs:(id)a3 areValidWithAssociatedMomentUUIDs:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] && objc_msgSend(v7, "count"))
  {
    v26 = self;
    v8 = [MEMORY[0x277CBEB58] set];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v14 momentUUID];
          v16 = [v7 containsObject:v15];

          if (v16)
          {
            v17 = [v14 assetUUID];
            [v8 addObject:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN %@", v8];
      v19 = [(PHPhotoLibrary *)v26->_photoLibrary librarySpecificFetchOptions];
      [v19 setInternalPredicate:v18];
      v31 = *MEMORY[0x277CD9AA8];
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      [v19 setFetchPropertySets:v20];

      [v19 setShouldPrefetchCount:1];
      [v19 setIncludeAssetSourceTypes:5];
      v21 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v19];
      v22 = [v21 count];
      v23 = v22 == [v8 count];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)keyAssetLocalIdentifierForNodeIdentifier:(id)a3 withAssociatedMomentUUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(NSMutableDictionary *)self->_momentAssetPairsByNodeUUID objectForKeyedSubscript:v6];
    if (v8)
    {
      if ([(PGSearchComputationCache *)self momentAssetPairs:v8 areValidWithAssociatedMomentUUIDs:v7])
      {
        v9 = [v8 firstObject];
        v10 = [v9 assetUUID];

        v11 = [MEMORY[0x277CD97A8] localIdentifierWithUUID:v10];

LABEL_10:
        goto LABEL_11;
      }

      [(NSMutableDictionary *)self->_momentAssetPairsByNodeUUID removeObjectForKey:v6];
    }

    v11 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Got nil uniqueNodeUUID to register key asset", v13, 2u);
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)setKeyAssetLocalIdentifier:(id)a3 forNodeIdentifier:(id)a4 withAssociatedMomentUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [(NSMutableDictionary *)self->_momentAssetPairsByNodeUUID objectForKeyedSubscript:v9];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableDictionary *)self->_momentAssetPairsByNodeUUID setObject:v11 forKeyedSubscript:v9];
    }

    v12 = [MEMORY[0x277CD97A8] uuidFromLocalIdentifier:v8];
    v13 = [[PGSearchThumbnailMomentAssetPairUUID alloc] initWithAssetUUID:v12 momentUUID:v10];
    [v11 addObject:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Got nil uniqueNodeUUID to register key asset", v14, 2u);
  }
}

- (void)invalidateCache
{
  [(NSMutableDictionary *)self->_momentAssetPairsByNodeUUID removeAllObjects];
  [(NSMutableDictionary *)self->_curationInformationByNodeUUID removeAllObjects];
  locationInformationByNodeUUID = self->_locationInformationByNodeUUID;

  [(NSMutableDictionary *)locationInformationByNodeUUID removeAllObjects];
}

- (void)save
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *&self->_momentAssetPairsByNodeUUID;
  v13[0] = @"thumbnails";
  v13[1] = @"curations";
  v14 = v3;
  v13[2] = @"locations";
  locationInformationByNodeUUID = self->_locationInformationByNodeUUID;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:v13 count:3];
  v10 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v10];
  v6 = v10;
  if (v5)
  {
    [v5 writeToURL:self->_persistentStoreURL atomically:1];
  }

  else
  {
    v7 = +[PGLogging sharedLogging];
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "Error writing zero keyword cache error: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (PGSearchComputationCache)initWithPersistentStoreURL:(id)a3 photoLibrary:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v44.receiver = self;
  v44.super_class = PGSearchComputationCache;
  v9 = [(PGSearchComputationCache *)&v44 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a4);
    objc_storeStrong(&v10->_persistentStoreURL, a3);
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v10->_persistentStoreURL];
    v12 = 0x277CBE000uLL;
    if (v11)
    {
      v41 = v8;
      v42 = v7;
      v40 = MEMORY[0x277CCAAC8];
      v13 = MEMORY[0x277CBEB98];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v39 = objc_opt_class();
      v20 = [v13 setWithObjects:{v14, v15, v16, v17, v18, v19, v39, objc_opt_class(), 0}];
      v43 = 0;
      v21 = [v40 unarchivedObjectOfClasses:v20 fromData:v11 error:&v43];
      v22 = v43;

      if (v22)
      {
        v23 = +[PGLogging sharedLogging];
        v24 = [v23 loggingConnection];

        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v22;
          _os_log_error_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "Error loading the search computation cache error: %@", buf, 0xCu);
        }
      }

      v8 = v41;
      v7 = v42;
      v12 = 0x277CBE000;
    }

    else
    {
      v21 = 0;
    }

    v25 = [v21 objectForKeyedSubscript:@"thumbnails"];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [*(v12 + 2872) dictionary];
    }

    momentAssetPairsByNodeUUID = v10->_momentAssetPairsByNodeUUID;
    v10->_momentAssetPairsByNodeUUID = v27;

    v29 = [v21 objectForKeyedSubscript:@"curations"];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [*(v12 + 2872) dictionary];
    }

    curationInformationByNodeUUID = v10->_curationInformationByNodeUUID;
    v10->_curationInformationByNodeUUID = v31;

    v33 = [v21 objectForKeyedSubscript:@"locations"];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = [*(v12 + 2872) dictionary];
    }

    locationInformationByNodeUUID = v10->_locationInformationByNodeUUID;
    v10->_locationInformationByNodeUUID = v35;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)persistentStoreURLWithManager:(id)a3
{
  v3 = [a3 graphPersistenceParentDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"PGSearchComputationCache.plist"];

  return v4;
}

@end
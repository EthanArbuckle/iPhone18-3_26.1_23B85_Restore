@interface PGSearchComputationCache
+ (id)persistentStoreURLWithManager:(id)manager;
- (BOOL)momentAssetPairs:(id)pairs areValidWithAssociatedMomentUUIDs:(id)ds;
- (PGSearchComputationCache)initWithPersistentStoreURL:(id)l photoLibrary:(id)library;
- (id)curationInformationForNode:(id)node;
- (id)keyAssetLocalIdentifierForNodeIdentifier:(id)identifier withAssociatedMomentUUIDs:(id)ds;
- (id)locationInformationForLocationNode:(id)node locationMask:(unint64_t)mask;
- (void)invalidateCache;
- (void)save;
- (void)setCurationInformation:(id)information forNode:(id)node;
- (void)setKeyAssetLocalIdentifier:(id)identifier forNodeIdentifier:(id)nodeIdentifier withAssociatedMomentUUID:(id)d;
- (void)setLocationInformation:(id)information forLocationNode:(id)node locationMask:(unint64_t)mask;
@end

@implementation PGSearchComputationCache

- (id)locationInformationForLocationNode:(id)node locationMask:(unint64_t)mask
{
  v16 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  uUID = [nodeCopy UUID];
  if (uUID || ([nodeCopy name], (uUID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = uUID;
    v9 = [(NSMutableDictionary *)self->_locationInformationByNodeUUID objectForKeyedSubscript:uUID];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mask];
    v11 = [v9 objectForKeyedSubscript:v10];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = nodeCopy;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot get unique UUID for node %@", &v14, 0xCu);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setLocationInformation:(id)information forLocationNode:(id)node locationMask:(unint64_t)mask
{
  v17 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  nodeCopy = node;
  uUID = [nodeCopy UUID];
  if (uUID || ([nodeCopy name], (uUID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = uUID;
    dictionary = [(NSMutableDictionary *)self->_locationInformationByNodeUUID objectForKeyedSubscript:uUID];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_locationInformationByNodeUUID setObject:dictionary forKeyedSubscript:v11];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mask];
    [dictionary setObject:informationCopy forKeyedSubscript:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v15 = 138412290;
    v16 = nodeCopy;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot get unique UUID for node %@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)curationInformationForNode:(id)node
{
  nodeCopy = node;
  uUID = [nodeCopy UUID];
  v6 = uUID;
  if (uUID)
  {
    name = uUID;
  }

  else
  {
    name = [nodeCopy name];
  }

  v8 = name;

  v9 = [(NSMutableDictionary *)self->_curationInformationByNodeUUID objectForKeyedSubscript:v8];

  return v9;
}

- (void)setCurationInformation:(id)information forNode:(id)node
{
  v13 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  nodeCopy = node;
  uUID = [nodeCopy UUID];
  if (uUID || ([nodeCopy name], (uUID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = uUID;
    [(NSMutableDictionary *)self->_curationInformationByNodeUUID setObject:informationCopy forKeyedSubscript:uUID];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = nodeCopy;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot get unique UUID for node %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)momentAssetPairs:(id)pairs areValidWithAssociatedMomentUUIDs:(id)ds
{
  v33 = *MEMORY[0x277D85DE8];
  pairsCopy = pairs;
  dsCopy = ds;
  if ([pairsCopy count] && objc_msgSend(dsCopy, "count"))
  {
    selfCopy = self;
    v8 = [MEMORY[0x277CBEB58] set];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = pairsCopy;
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
          momentUUID = [v14 momentUUID];
          v16 = [dsCopy containsObject:momentUUID];

          if (v16)
          {
            assetUUID = [v14 assetUUID];
            [v8 addObject:assetUUID];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN %@", v8];
      librarySpecificFetchOptions = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions setInternalPredicate:v18];
      v31 = *MEMORY[0x277CD9AA8];
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      [librarySpecificFetchOptions setFetchPropertySets:v20];

      [librarySpecificFetchOptions setShouldPrefetchCount:1];
      [librarySpecificFetchOptions setIncludeAssetSourceTypes:5];
      v21 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
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

- (id)keyAssetLocalIdentifierForNodeIdentifier:(id)identifier withAssociatedMomentUUIDs:(id)ds
{
  identifierCopy = identifier;
  dsCopy = ds;
  if (identifierCopy)
  {
    v8 = [(NSMutableDictionary *)self->_momentAssetPairsByNodeUUID objectForKeyedSubscript:identifierCopy];
    if (v8)
    {
      if ([(PGSearchComputationCache *)self momentAssetPairs:v8 areValidWithAssociatedMomentUUIDs:dsCopy])
      {
        firstObject = [v8 firstObject];
        assetUUID = [firstObject assetUUID];

        v11 = [MEMORY[0x277CD97A8] localIdentifierWithUUID:assetUUID];

LABEL_10:
        goto LABEL_11;
      }

      [(NSMutableDictionary *)self->_momentAssetPairsByNodeUUID removeObjectForKey:identifierCopy];
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

- (void)setKeyAssetLocalIdentifier:(id)identifier forNodeIdentifier:(id)nodeIdentifier withAssociatedMomentUUID:(id)d
{
  identifierCopy = identifier;
  nodeIdentifierCopy = nodeIdentifier;
  dCopy = d;
  if (nodeIdentifierCopy)
  {
    v11 = [(NSMutableDictionary *)self->_momentAssetPairsByNodeUUID objectForKeyedSubscript:nodeIdentifierCopy];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(NSMutableDictionary *)self->_momentAssetPairsByNodeUUID setObject:v11 forKeyedSubscript:nodeIdentifierCopy];
    }

    v12 = [MEMORY[0x277CD97A8] uuidFromLocalIdentifier:identifierCopy];
    v13 = [[PGSearchThumbnailMomentAssetPairUUID alloc] initWithAssetUUID:v12 momentUUID:dCopy];
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
    loggingConnection = [v7 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error writing zero keyword cache error: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (PGSearchComputationCache)initWithPersistentStoreURL:(id)l photoLibrary:(id)library
{
  v47 = *MEMORY[0x277D85DE8];
  lCopy = l;
  libraryCopy = library;
  v44.receiver = self;
  v44.super_class = PGSearchComputationCache;
  v9 = [(PGSearchComputationCache *)&v44 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    objc_storeStrong(&v10->_persistentStoreURL, l);
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v10->_persistentStoreURL];
    v12 = 0x277CBE000uLL;
    if (v11)
    {
      v41 = libraryCopy;
      v42 = lCopy;
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
        loggingConnection = [v23 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v22;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error loading the search computation cache error: %@", buf, 0xCu);
        }
      }

      libraryCopy = v41;
      lCopy = v42;
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
      dictionary = v25;
    }

    else
    {
      dictionary = [*(v12 + 2872) dictionary];
    }

    momentAssetPairsByNodeUUID = v10->_momentAssetPairsByNodeUUID;
    v10->_momentAssetPairsByNodeUUID = dictionary;

    v29 = [v21 objectForKeyedSubscript:@"curations"];
    v30 = v29;
    if (v29)
    {
      dictionary2 = v29;
    }

    else
    {
      dictionary2 = [*(v12 + 2872) dictionary];
    }

    curationInformationByNodeUUID = v10->_curationInformationByNodeUUID;
    v10->_curationInformationByNodeUUID = dictionary2;

    v33 = [v21 objectForKeyedSubscript:@"locations"];
    v34 = v33;
    if (v33)
    {
      dictionary3 = v33;
    }

    else
    {
      dictionary3 = [*(v12 + 2872) dictionary];
    }

    locationInformationByNodeUUID = v10->_locationInformationByNodeUUID;
    v10->_locationInformationByNodeUUID = dictionary3;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)persistentStoreURLWithManager:(id)manager
{
  graphPersistenceParentDirectoryURL = [manager graphPersistenceParentDirectoryURL];
  v4 = [graphPersistenceParentDirectoryURL URLByAppendingPathComponent:@"PGSearchComputationCache.plist"];

  return v4;
}

@end
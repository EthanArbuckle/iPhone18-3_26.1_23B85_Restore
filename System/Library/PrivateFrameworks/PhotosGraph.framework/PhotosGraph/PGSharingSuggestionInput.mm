@interface PGSharingSuggestionInput
- (NSArray)momentNodes;
- (PGSharingSuggestionInput)initWithAssetLocalIdentifiers:(id)a3 momentLocalIdentifiers:(id)a4 graph:(id)a5 photoLibrary:(id)a6;
- (PGSharingSuggestionInput)initWithMomentNodes:(id)a3;
- (PHFetchResult)assets;
- (PHFetchResult)moments;
- (id)description;
@end

@implementation PGSharingSuggestionInput

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGSharingSuggestionInput;
  v4 = [(PGSharingSuggestionInput *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ - Number of moments: %lu (%@) - Number of assets: %lu (%@)", v4, -[NSArray count](self->_momentLocalIdentifiers, "count"), self->_momentLocalIdentifiers, -[NSArray count](self->_assetLocalIdentifiers, "count"), self->_assetLocalIdentifiers];

  return v5;
}

- (PHFetchResult)moments
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = self->_momentLocalIdentifiers;
  objc_sync_enter(v3);
  if (!self->_moments)
  {
    v4 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v18[0] = v5;
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v18[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v4 setSortDescriptors:v7];

    v8 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithLocalIdentifiers:self->_momentLocalIdentifiers options:v4];
    moments = self->_moments;
    self->_moments = v8;

    if (![(PHFetchResult *)self->_moments count])
    {
      v10 = +[PGLogging sharedLogging];
      v11 = [v10 loggingConnection];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        momentLocalIdentifiers = self->_momentLocalIdentifiers;
        v16 = 138412290;
        v17 = momentLocalIdentifiers;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "[Sharing Suggestion] No moments found for %@, photo library might be out-of-date", &v16, 0xCu);
      }
    }
  }

  objc_sync_exit(v3);

  v13 = self->_moments;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (PHFetchResult)assets
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = self->_assetLocalIdentifiers;
  objc_sync_enter(v3);
  if (!self->_assets && [(NSArray *)self->_assetLocalIdentifiers count])
  {
    v4 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v18[0] = v5;
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v18[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v4 setSortDescriptors:v7];

    [v4 setIncludeGuestAssets:1];
    v8 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:self->_assetLocalIdentifiers options:v4];
    assets = self->_assets;
    self->_assets = v8;

    if (![(PHFetchResult *)self->_assets count])
    {
      v10 = +[PGLogging sharedLogging];
      v11 = [v10 loggingConnection];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = self->_assets;
        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "[Sharing Suggestion] No assets found for %@, photo library might be out-of-date", &v16, 0xCu);
      }
    }
  }

  objc_sync_exit(v3);

  v13 = self->_assets;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSArray)momentNodes
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = self->_momentLocalIdentifiers;
  objc_sync_enter(v3);
  if (!self->_momentNodes)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_momentLocalIdentifiers, "count")}];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_momentLocalIdentifiers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v6)
    {
      v7 = *v29;
      do
      {
        v8 = 0;
        do
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [MEMORY[0x277CD97B8] uuidFromLocalIdentifier:{*(*(&v28 + 1) + 8 * v8), v28}];
          [v4 addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v6);
    }

    v10 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v4 inGraph:self->_graph];
    v11 = [v10 count];
    if (v11 < [v4 count])
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v4];
      v13 = [v10 uuids];
      [v12 minusSet:v13];

      v14 = +[PGLogging sharedLogging];
      v15 = [v14 loggingConnection];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[Sharing Suggestion] No moment nodes found for moment UUIDs %@", &buf, 0xCu);
      }
    }

    if (![v10 count])
    {
      v16 = +[PGLogging sharedLogging];
      v17 = [v16 loggingConnection];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        momentLocalIdentifiers = self->_momentLocalIdentifiers;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = momentLocalIdentifiers;
        _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[Sharing Suggestion] No moment nodes found for %@, graph might be out-of-date", &buf, 0xCu);
      }
    }

    v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
    *&buf = v19;
    v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
    *(&buf + 1) = v20;
    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
    v34 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:3];

    v23 = [v10 sortedArrayUsingDescriptors:v22];
    momentNodes = self->_momentNodes;
    self->_momentNodes = v23;
  }

  objc_sync_exit(v3);

  v25 = self->_momentNodes;
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (PGSharingSuggestionInput)initWithMomentNodes:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PGSharingSuggestionInput;
  v5 = [(PGSharingSuggestionInput *)&v25 init];
  if (v5)
  {
    v6 = [v4 copy];
    momentNodes = v5->_momentNodes;
    v5->_momentNodes = v6;

    v8 = [v4 firstObject];
    v9 = [v8 graph];
    graph = v5->_graph;
    v5->_graph = v9;

    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v21 + 1) + 8 * v16) localIdentifier];
          [(NSArray *)v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    momentLocalIdentifiers = v5->_momentLocalIdentifiers;
    v5->_momentLocalIdentifiers = v11;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (PGSharingSuggestionInput)initWithAssetLocalIdentifiers:(id)a3 momentLocalIdentifiers:(id)a4 graph:(id)a5 photoLibrary:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PGSharingSuggestionInput;
  v15 = [(PGSharingSuggestionInput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetLocalIdentifiers, a3);
    objc_storeStrong(&v16->_momentLocalIdentifiers, a4);
    objc_storeStrong(&v16->_graph, a5);
    objc_storeStrong(&v16->_photoLibrary, a6);
  }

  return v16;
}

@end
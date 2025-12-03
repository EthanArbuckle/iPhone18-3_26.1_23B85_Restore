@interface PGPotentialMemory
- (NSDate)localEndDate;
- (NSDate)localStartDate;
- (NSDate)universalEndDate;
- (NSDate)universalStartDate;
- (PGGraphMomentNodeCollection)memoryMomentNodes;
- (PGPotentialMemory)initWithCategory:(unint64_t)category subcategory:(unint64_t)subcategory;
- (PGPotentialMemory)initWithCategory:(unint64_t)category subcategory:(unint64_t)subcategory momentNode:(id)node;
- (PGPotentialMemory)initWithCategory:(unint64_t)category subcategory:(unint64_t)subcategory momentNodes:(id)nodes sourceType:(int64_t)type;
- (double)computeContentScore;
- (id)buildAssetCollectionUsingMemoryController:(id)controller withMinimumNumberOfAssets:(unint64_t)assets;
- (id)memoryFeatureNodesInGraph:(id)graph;
- (unint64_t)memoryCategory;
- (void)_prepareForOverlapCheck;
- (void)_resetOverlapCheck;
@end

@implementation PGPotentialMemory

- (PGGraphMomentNodeCollection)memoryMomentNodes
{
  if ([(PGPotentialMemory *)self sourceType]== 1 && self->_momentNode)
  {
    momentNode = [(PGPotentialMemory *)self momentNode];
    collection = [momentNode collection];
  }

  else
  {
    v5 = [PGGraphMomentNodeCollection alloc];
    momentNodes = self->_momentNodes;
    momentNode = [(NSSet *)momentNodes anyObject];
    graph = [momentNode graph];
    collection = [(MAElementCollection *)v5 initWithSet:momentNodes graph:graph];
  }

  return collection;
}

- (id)memoryFeatureNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = objc_alloc(MEMORY[0x277CBEAD8]);
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  v11 = [v7 stringWithFormat:@"%@ must implement %@", v9, v10];
  v12 = [v5 initWithName:v6 reason:v11 userInfo:0];

  objc_exception_throw(v12);
}

- (unint64_t)memoryCategory
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (id)buildAssetCollectionUsingMemoryController:(id)controller withMinimumNumberOfAssets:(unint64_t)assets
{
  v59 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  photoLibrary = [controllerCopy photoLibrary];
  if (!assets)
  {
    v12 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:MEMORY[0x277CBEBF8] title:0 identifier:0 photoLibrary:photoLibrary];
    assetCollection = self->_assetCollection;
    self->_assetCollection = v12;

    v11 = self->_assetCollection;
    goto LABEL_41;
  }

  anyObject = self->_momentNode;
  if (!anyObject)
  {
    momentNodes = self->_momentNodes;
    if (!momentNodes)
    {
      goto LABEL_31;
    }

    v15 = [(NSSet *)momentNodes count];
    v16 = self->_momentNodes;
    if (v15 == 1)
    {
      anyObject = [(NSSet *)v16 anyObject];
      if (anyObject)
      {
        goto LABEL_3;
      }

      v16 = self->_momentNodes;
    }

    if (v16)
    {
      assetsCopy = assets;
      v41 = photoLibrary;
      v39 = objc_autoreleasePoolPush();
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      curationManager = [controllerCopy curationManager];
      defaultAssetFetchOptionsForMemoriesWithoutPrefetch = [curationManager defaultAssetFetchOptionsForMemoriesWithoutPrefetch];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      selfCopy = self;
      obj = self->_momentNodes;
      v46 = [(NSSet *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v46)
      {
        v44 = controllerCopy;
        v45 = *v54;
        while (2)
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v54 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v53 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            uuid = [v20 uuid];
            v23 = [controllerCopy momentForMomentID:uuid];
            if (!v23)
            {
              loggingConnection = [controllerCopy loggingConnection];
              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Memory Creation: Nil asset collection for momentNode, graph is out-of-sync with the photo library.", buf, 2u);
              }

              objc_autoreleasePoolPop(v21);
              self = selfCopy;
              photoLibrary = v41;
              v31 = v39;

              goto LABEL_37;
            }

            v24 = v23;
            v25 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v23 options:defaultAssetFetchOptionsForMemoriesWithoutPrefetch];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v26 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v50;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v50 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  localIdentifier = [*(*(&v49 + 1) + 8 * j) localIdentifier];
                  [v17 addObject:localIdentifier];
                }

                v27 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
              }

              while (v27);
            }

            objc_autoreleasePoolPop(v21);
            controllerCopy = v44;
          }

          v46 = [(NSSet *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      v31 = v39;
      self = selfCopy;
      photoLibrary = v41;
      if ([v17 count] >= assetsCopy)
      {
        v32 = [controllerCopy assetCollectionWithAssetLocalIdentifiers:v17];
        obja = selfCopy->_assetCollection;
        selfCopy->_assetCollection = v32;
      }

LABEL_37:

      objc_autoreleasePoolPop(v31);
    }

    else
    {
LABEL_31:
      loggingConnection2 = [controllerCopy loggingConnection];
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Memory Creation: buildAssetCollection called with no momentNode set.", buf, 2u);
      }
    }

    v9 = 0;
LABEL_39:
    v11 = self->_assetCollection;
    goto LABEL_40;
  }

LABEL_3:
  v9 = anyObject;
  uuid2 = [(PGGraphMomentNode *)anyObject uuid];
  if ([(PGGraphMomentNode *)v9 numberOfAssets]>= assets)
  {
    v33 = [controllerCopy momentForMomentID:uuid2];
    if ([v33 estimatedAssetCount] >= assets)
    {
      objc_storeStrong(&self->_assetCollection, v33);
    }

    goto LABEL_39;
  }

  v11 = 0;
LABEL_40:

LABEL_41:
  v36 = *MEMORY[0x277D85DE8];

  return v11;
}

- (double)computeContentScore
{
  v21 = *MEMORY[0x277D85DE8];
  momentNode = self->_momentNode;
  if (momentNode)
  {
    [(PGGraphMomentNode *)momentNode contentScore];
LABEL_16:
    self->_contentScore = result;
    goto LABEL_17;
  }

  momentNodes = self->_momentNodes;
  if (momentNodes)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = momentNodes;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v16 + 1) + 8 * i) contentScore];
          v10 = v10 + v12;
        }

        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    result = v10 / [(NSSet *)self->_momentNodes count];
    goto LABEL_16;
  }

  self->_contentScore = 0.0;
  v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  result = 0.0;
  if (v13)
  {
    *v15 = 0;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Memory Creation: computeContentScore called with no momentNode set.", v15, 2u);
    result = self->_contentScore;
  }

LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_resetOverlapCheck
{
  momentIDs = self->_momentIDs;
  self->_momentIDs = 0;

  numberOfAssetsByMomentIDs = self->_numberOfAssetsByMomentIDs;
  self->_numberOfAssetsByMomentIDs = 0;
}

- (void)_prepareForOverlapCheck
{
  v35[2] = *MEMORY[0x277D85DE8];
  momentNode = self->_momentNode;
  if (!momentNode)
  {
    v12 = [(NSSet *)self->_momentNodes count];
    v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v12];
    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v12];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    selfCopy = self;
    v15 = self->_momentNodes;
    v16 = [(NSSet *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          uuid = [v21 uuid];
          if (uuid)
          {
            [(NSSet *)v13 addObject:uuid];
            numberOfAssets = [v21 numberOfAssets];
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numberOfAssets];
            [(NSDictionary *)v14 setObject:v24 forKeyedSubscript:uuid];

            v18 += numberOfAssets;
          }
        }

        v17 = [(NSSet *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    [(NSDictionary *)v14 setObject:v25 forKeyedSubscript:@"totalNumberOfAssets"];

    momentIDs = selfCopy->_momentIDs;
    selfCopy->_momentIDs = v13;
    uuid2 = v13;

    numberOfAssetsByMomentIDs = selfCopy->_numberOfAssetsByMomentIDs;
    selfCopy->_numberOfAssetsByMomentIDs = v14;
    goto LABEL_16;
  }

  uuid2 = [(PGGraphMomentNode *)momentNode uuid];
  if (uuid2)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:uuid2];
    v6 = self->_momentIDs;
    self->_momentIDs = v5;

    numberOfAssets2 = [(PGGraphMomentNode *)self->_momentNode numberOfAssets];
    v34[0] = uuid2;
    numberOfAssetsByMomentIDs = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numberOfAssets2];
    v34[1] = @"totalNumberOfAssets";
    v35[0] = numberOfAssetsByMomentIDs;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:numberOfAssets2];
    v35[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v11 = self->_numberOfAssetsByMomentIDs;
    self->_numberOfAssetsByMomentIDs = v10;

LABEL_16:
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (NSDate)universalEndDate
{
  v21 = *MEMORY[0x277D85DE8];
  p_universalEndDate = &self->_universalEndDate;
  if (!self->_universalEndDate)
  {
    if (self->_momentNode)
    {
      universalEndDate = [(PGGraphMomentNode *)self->_momentNode universalEndDate];
      v4 = *p_universalEndDate;
      *p_universalEndDate = universalEndDate;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = self->_momentNodes;
      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          v9 = 0;
          do
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            universalEndDate2 = [*(*(&v16 + 1) + 8 * v9) universalEndDate];
            v11 = universalEndDate2;
            if (!*p_universalEndDate || ([universalEndDate2 timeIntervalSinceDate:?], v12 > 0.0))
            {
              objc_storeStrong(p_universalEndDate, v11);
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }
    }
  }

  v13 = *p_universalEndDate;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSDate)universalStartDate
{
  v21 = *MEMORY[0x277D85DE8];
  p_universalStartDate = &self->_universalStartDate;
  if (!self->_universalStartDate)
  {
    if (self->_momentNode)
    {
      universalStartDate = [(PGGraphMomentNode *)self->_momentNode universalStartDate];
      v4 = *p_universalStartDate;
      *p_universalStartDate = universalStartDate;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = self->_momentNodes;
      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          v9 = 0;
          do
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            universalStartDate2 = [*(*(&v16 + 1) + 8 * v9) universalStartDate];
            v11 = universalStartDate2;
            if (!*p_universalStartDate || ([universalStartDate2 timeIntervalSinceDate:?], v12 < 0.0))
            {
              objc_storeStrong(p_universalStartDate, v11);
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }
    }
  }

  v13 = *p_universalStartDate;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NSDate)localEndDate
{
  v19 = *MEMORY[0x277D85DE8];
  p_localEndDate = &self->_localEndDate;
  if (!self->_localEndDate)
  {
    if (self->_momentNode)
    {
      localEndDate = [(PGGraphMomentNode *)self->_momentNode localEndDate];
      v4 = *p_localEndDate;
      *p_localEndDate = localEndDate;
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = self->_momentNodes;
      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            localEndDate2 = [*(*(&v14 + 1) + 8 * i) localEndDate];
            if (!*p_localEndDate || [MEMORY[0x277D27690] compareDate:localEndDate2 toDate:*p_localEndDate toUnitGranularity:16] == 1)
            {
              objc_storeStrong(p_localEndDate, localEndDate2);
            }
          }

          v7 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }
    }
  }

  v11 = *p_localEndDate;
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSDate)localStartDate
{
  v19 = *MEMORY[0x277D85DE8];
  p_localStartDate = &self->_localStartDate;
  if (!self->_localStartDate)
  {
    if (self->_momentNode)
    {
      localStartDate = [(PGGraphMomentNode *)self->_momentNode localStartDate];
      v4 = *p_localStartDate;
      *p_localStartDate = localStartDate;
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = self->_momentNodes;
      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            localStartDate2 = [*(*(&v14 + 1) + 8 * i) localStartDate];
            if (!*p_localStartDate || [MEMORY[0x277D27690] compareDate:localStartDate2 toDate:*p_localStartDate toUnitGranularity:16] == -1)
            {
              objc_storeStrong(p_localStartDate, localStartDate2);
            }
          }

          v7 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }
    }
  }

  v11 = *p_localStartDate;
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PGPotentialMemory)initWithCategory:(unint64_t)category subcategory:(unint64_t)subcategory momentNodes:(id)nodes sourceType:(int64_t)type
{
  nodesCopy = nodes;
  v15.receiver = self;
  v15.super_class = PGPotentialMemory;
  v12 = [(PGPotentialMemory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_category = category;
    v12->_subcategory = subcategory;
    v12->_sourceType = type;
    objc_storeStrong(&v12->_momentNodes, nodes);
    v13->_score = -1.0;
    v13->_contentScore = -1.0;
  }

  return v13;
}

- (PGPotentialMemory)initWithCategory:(unint64_t)category subcategory:(unint64_t)subcategory momentNode:(id)node
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = PGPotentialMemory;
  v10 = [(PGPotentialMemory *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_category = category;
    v10->_subcategory = subcategory;
    v10->_sourceType = 1;
    objc_storeStrong(&v10->_momentNode, node);
    v11->_score = -1.0;
    v11->_contentScore = -1.0;
  }

  return v11;
}

- (PGPotentialMemory)initWithCategory:(unint64_t)category subcategory:(unint64_t)subcategory
{
  v7.receiver = self;
  v7.super_class = PGPotentialMemory;
  result = [(PGPotentialMemory *)&v7 init];
  if (result)
  {
    result->_category = category;
    result->_subcategory = subcategory;
    result->_score = -1.0;
    result->_contentScore = -1.0;
  }

  return result;
}

@end
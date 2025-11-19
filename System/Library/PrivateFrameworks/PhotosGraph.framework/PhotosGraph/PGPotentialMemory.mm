@interface PGPotentialMemory
- (NSDate)localEndDate;
- (NSDate)localStartDate;
- (NSDate)universalEndDate;
- (NSDate)universalStartDate;
- (PGGraphMomentNodeCollection)memoryMomentNodes;
- (PGPotentialMemory)initWithCategory:(unint64_t)a3 subcategory:(unint64_t)a4;
- (PGPotentialMemory)initWithCategory:(unint64_t)a3 subcategory:(unint64_t)a4 momentNode:(id)a5;
- (PGPotentialMemory)initWithCategory:(unint64_t)a3 subcategory:(unint64_t)a4 momentNodes:(id)a5 sourceType:(int64_t)a6;
- (double)computeContentScore;
- (id)buildAssetCollectionUsingMemoryController:(id)a3 withMinimumNumberOfAssets:(unint64_t)a4;
- (id)memoryFeatureNodesInGraph:(id)a3;
- (unint64_t)memoryCategory;
- (void)_prepareForOverlapCheck;
- (void)_resetOverlapCheck;
@end

@implementation PGPotentialMemory

- (PGGraphMomentNodeCollection)memoryMomentNodes
{
  if ([(PGPotentialMemory *)self sourceType]== 1 && self->_momentNode)
  {
    v3 = [(PGPotentialMemory *)self momentNode];
    v4 = [v3 collection];
  }

  else
  {
    v5 = [PGGraphMomentNodeCollection alloc];
    momentNodes = self->_momentNodes;
    v3 = [(NSSet *)momentNodes anyObject];
    v7 = [v3 graph];
    v4 = [(MAElementCollection *)v5 initWithSet:momentNodes graph:v7];
  }

  return v4;
}

- (id)memoryFeatureNodesInGraph:(id)a3
{
  v4 = a3;
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

- (id)buildAssetCollectionUsingMemoryController:(id)a3 withMinimumNumberOfAssets:(unint64_t)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 photoLibrary];
  if (!a4)
  {
    v12 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:MEMORY[0x277CBEBF8] title:0 identifier:0 photoLibrary:v7];
    assetCollection = self->_assetCollection;
    self->_assetCollection = v12;

    v11 = self->_assetCollection;
    goto LABEL_41;
  }

  v8 = self->_momentNode;
  if (!v8)
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
      v8 = [(NSSet *)v16 anyObject];
      if (v8)
      {
        goto LABEL_3;
      }

      v16 = self->_momentNodes;
    }

    if (v16)
    {
      v38 = a4;
      v41 = v7;
      v39 = objc_autoreleasePoolPush();
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = [v6 curationManager];
      v47 = [v18 defaultAssetFetchOptionsForMemoriesWithoutPrefetch];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v40 = self;
      obj = self->_momentNodes;
      v46 = [(NSSet *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v46)
      {
        v44 = v6;
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
            v22 = [v20 uuid];
            v23 = [v6 momentForMomentID:v22];
            if (!v23)
            {
              v35 = [v6 loggingConnection];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_ERROR, "Memory Creation: Nil asset collection for momentNode, graph is out-of-sync with the photo library.", buf, 2u);
              }

              objc_autoreleasePoolPop(v21);
              self = v40;
              v7 = v41;
              v31 = v39;

              goto LABEL_37;
            }

            v24 = v23;
            v25 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v23 options:v47];
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

                  v30 = [*(*(&v49 + 1) + 8 * j) localIdentifier];
                  [v17 addObject:v30];
                }

                v27 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
              }

              while (v27);
            }

            objc_autoreleasePoolPop(v21);
            v6 = v44;
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
      self = v40;
      v7 = v41;
      if ([v17 count] >= v38)
      {
        v32 = [v6 assetCollectionWithAssetLocalIdentifiers:v17];
        obja = v40->_assetCollection;
        v40->_assetCollection = v32;
      }

LABEL_37:

      objc_autoreleasePoolPop(v31);
    }

    else
    {
LABEL_31:
      v34 = [v6 loggingConnection];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_ERROR, "Memory Creation: buildAssetCollection called with no momentNode set.", buf, 2u);
      }
    }

    v9 = 0;
LABEL_39:
    v11 = self->_assetCollection;
    goto LABEL_40;
  }

LABEL_3:
  v9 = v8;
  v10 = [(PGGraphMomentNode *)v8 uuid];
  if ([(PGGraphMomentNode *)v9 numberOfAssets]>= a4)
  {
    v33 = [v6 momentForMomentID:v10];
    if ([v33 estimatedAssetCount] >= a4)
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
    v28 = self;
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
          v22 = [v21 uuid];
          if (v22)
          {
            [(NSSet *)v13 addObject:v22];
            v23 = [v21 numberOfAssets];
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
            [(NSDictionary *)v14 setObject:v24 forKeyedSubscript:v22];

            v18 += v23;
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

    momentIDs = v28->_momentIDs;
    v28->_momentIDs = v13;
    v4 = v13;

    numberOfAssetsByMomentIDs = v28->_numberOfAssetsByMomentIDs;
    v28->_numberOfAssetsByMomentIDs = v14;
    goto LABEL_16;
  }

  v4 = [(PGGraphMomentNode *)momentNode uuid];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
    v6 = self->_momentIDs;
    self->_momentIDs = v5;

    v7 = [(PGGraphMomentNode *)self->_momentNode numberOfAssets];
    v34[0] = v4;
    numberOfAssetsByMomentIDs = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v34[1] = @"totalNumberOfAssets";
    v35[0] = numberOfAssetsByMomentIDs;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
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
      v3 = [(PGGraphMomentNode *)self->_momentNode universalEndDate];
      v4 = *p_universalEndDate;
      *p_universalEndDate = v3;
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

            v10 = [*(*(&v16 + 1) + 8 * v9) universalEndDate];
            v11 = v10;
            if (!*p_universalEndDate || ([v10 timeIntervalSinceDate:?], v12 > 0.0))
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
      v3 = [(PGGraphMomentNode *)self->_momentNode universalStartDate];
      v4 = *p_universalStartDate;
      *p_universalStartDate = v3;
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

            v10 = [*(*(&v16 + 1) + 8 * v9) universalStartDate];
            v11 = v10;
            if (!*p_universalStartDate || ([v10 timeIntervalSinceDate:?], v12 < 0.0))
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
      v3 = [(PGGraphMomentNode *)self->_momentNode localEndDate];
      v4 = *p_localEndDate;
      *p_localEndDate = v3;
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

            v10 = [*(*(&v14 + 1) + 8 * i) localEndDate];
            if (!*p_localEndDate || [MEMORY[0x277D27690] compareDate:v10 toDate:*p_localEndDate toUnitGranularity:16] == 1)
            {
              objc_storeStrong(p_localEndDate, v10);
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
      v3 = [(PGGraphMomentNode *)self->_momentNode localStartDate];
      v4 = *p_localStartDate;
      *p_localStartDate = v3;
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

            v10 = [*(*(&v14 + 1) + 8 * i) localStartDate];
            if (!*p_localStartDate || [MEMORY[0x277D27690] compareDate:v10 toDate:*p_localStartDate toUnitGranularity:16] == -1)
            {
              objc_storeStrong(p_localStartDate, v10);
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

- (PGPotentialMemory)initWithCategory:(unint64_t)a3 subcategory:(unint64_t)a4 momentNodes:(id)a5 sourceType:(int64_t)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGPotentialMemory;
  v12 = [(PGPotentialMemory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_category = a3;
    v12->_subcategory = a4;
    v12->_sourceType = a6;
    objc_storeStrong(&v12->_momentNodes, a5);
    v13->_score = -1.0;
    v13->_contentScore = -1.0;
  }

  return v13;
}

- (PGPotentialMemory)initWithCategory:(unint64_t)a3 subcategory:(unint64_t)a4 momentNode:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PGPotentialMemory;
  v10 = [(PGPotentialMemory *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_category = a3;
    v10->_subcategory = a4;
    v10->_sourceType = 1;
    objc_storeStrong(&v10->_momentNode, a5);
    v11->_score = -1.0;
    v11->_contentScore = -1.0;
  }

  return v11;
}

- (PGPotentialMemory)initWithCategory:(unint64_t)a3 subcategory:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PGPotentialMemory;
  result = [(PGPotentialMemory *)&v7 init];
  if (result)
  {
    result->_category = a3;
    result->_subcategory = a4;
    result->_score = -1.0;
    result->_contentScore = -1.0;
  }

  return result;
}

@end
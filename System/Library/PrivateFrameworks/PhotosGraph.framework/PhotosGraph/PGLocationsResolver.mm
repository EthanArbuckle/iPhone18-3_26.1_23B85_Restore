@interface PGLocationsResolver
- (NSArray)resolvedLocationNodes;
- (NSArray)resolvedMomentNodes;
- (NSMapTable)resolvedLocationNodesToAddressNodesMapTable;
- (PGLocationsResolver)initWithMomentNodes:(id)a3 incompleteLocationResolver:(id)a4 locationHelper:(id)a5;
- (PGLocationsResolver)initWithSortedMomentNodes:(id)a3 incompleteLocationResolver:(id)a4 locationHelper:(id)a5;
- (void)_resolve;
- (void)setCreateLocationToAddressMapTable:(BOOL)a3;
- (void)setMaximumMissingLocationsThreshold:(float)a3;
@end

@implementation PGLocationsResolver

- (void)_resolve
{
  v108 = *MEMORY[0x277D85DE8];
  v82 = [MEMORY[0x277CBEB18] array];
  v83 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v79 = [MEMORY[0x277CBEB18] array];
  v81 = 0;
  if (self->_shouldCreateLocationToAddressMapTable)
  {
    v81 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = self->_sortedMoments;
  v76 = [(NSArray *)obj countByEnumeratingWithState:&v100 objects:v107 count:16];
  if (v76)
  {
    v75 = *v101;
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    while (1)
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v101 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v100 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 numberOfAssets];
        v10 = [v7 addressEdges];
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v96 objects:v106 count:16];
        if (!v12)
        {

          [(NSArray *)v79 addObject:v7];
          goto LABEL_61;
        }

        v13 = v12;
        v80 = v7;
        v77 = v8;
        v78 = i;
        v86 = 0;
        v88 = *v97;
        v14 = 0.0;
        v15 = 0.0;
        v16 = 0.0;
        v84 = v11;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v97 != v88)
            {
              objc_enumerationMutation(v84);
            }

            v18 = *(*(&v96 + 1) + 8 * j);
            v19 = objc_autoreleasePoolPush();
            v20 = [v18 targetNode];
            if (![(NSSet *)self->_ignoredAddressNodes count]|| ![(NSSet *)self->_ignoredAddressNodes containsObject:v20])
            {
              v21 = [(PGGraphLocationHelper *)self->_locationHelper closestLocationNodeFromLocationNode:v20 withDimension:6 reverse:0];
              if (v21)
              {
                goto LABEL_19;
              }

              v22 = +[PGLogging sharedLogging];
              v23 = [v22 loggingConnection];

              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "Cannot find city node from address node: %@. Will look for inEdges", buf, 0xCu);
              }

              v21 = [(PGGraphLocationHelper *)self->_locationHelper closestLocationNodeFromLocationNode:v20 withDimension:6 reverse:1];
              if (v21)
              {
LABEL_19:
                v24 = v21;
                v25 = [v21 label];
                v26 = [PGCommonTitleUtility dimensionForLabel:v25];

                if (v26 <= 6)
                {
                  [v20 isOcean];
                  v31 = 0;
                  goto LABEL_29;
                }

                *buf = 0;
                v27 = [(PGIncompleteLocationResolver *)self->_incompleteLocationResolver resolvedLocationNodeForIncompleteAddressNode:v20 withPreferredTargetDimension:6 resolvedDimension:buf];
                v28 = v27;
                if (v27)
                {
                  v29 = *buf >= v26;
                }

                else
                {
                  v29 = 1;
                }

                if (!v29)
                {
                  v30 = v27;

                  v26 = *buf;
                  v24 = v30;
                }

                v31 = v26 > 6;
                if (![v20 isOcean] || v26 <= 6)
                {
LABEL_29:
                  if (![(NSSet *)self->_ignoredLocationNodes count]|| ![(NSSet *)self->_ignoredLocationNodes containsObject:v24])
                  {
                    [v18 relevance];
                    v33 = v32;
                    [v18 relevance];
                    v35 = v34 * v9;
                    v36 = v14 + v35;
                    v37 = v15 + v35;
                    if (!v31)
                    {
                      v37 = v15;
                    }

                    if (v26 <= 8)
                    {
                      v15 = v37;
                    }

                    else
                    {
                      v14 = v36;
                    }

                    if (![(NSArray *)v82 containsObject:v24])
                    {
                      [(NSArray *)v82 addObject:v24];
                    }

                    v38 = [v83 objectForKey:v24];
                    v39 = [v18 universalStartDate];
                    v40 = v39;
                    if (!v38 || v39 && [v39 compare:v38] == -1)
                    {
                      [v83 setObject:v40 forKey:v24];
                    }

                    if ((v86 & 1) == 0)
                    {
                      [(NSArray *)v79 addObject:v80];
                    }

                    if (self->_shouldCreateLocationToAddressMapTable)
                    {
                      v41 = [(NSMapTable *)v81 objectForKey:v24];
                      if (!v41)
                      {
                        v41 = [MEMORY[0x277CBEB58] set];
                        [(NSMapTable *)v81 setObject:v41 forKey:v24];
                      }

                      [v41 addObject:v20];
                    }

                    v16 = v16 + v33;

                    goto LABEL_52;
                  }
                }
              }

              else
              {
                if ((v86 & 1) == 0)
                {
                  [(NSArray *)v79 addObject:v80];
                }

                v24 = 0;
LABEL_52:
                v86 = 1;
              }
            }

            objc_autoreleasePoolPop(v19);
          }

          v11 = v84;
          v13 = [v84 countByEnumeratingWithState:&v96 objects:v106 count:16];
        }

        while (v13);

        if (v15 > 0.0)
        {
          v4 = v4 + v15 / v16;
        }

        v8 = v77;
        i = v78;
        if (v14 > 0.0)
        {
          v3 = v3 + v14 / v16;
        }

LABEL_61:
        v5 = v5 + v9;

        objc_autoreleasePoolPop(v8);
      }

      v76 = [(NSArray *)obj countByEnumeratingWithState:&v100 objects:v107 count:16];
      if (!v76)
      {
        goto LABEL_65;
      }
    }
  }

  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
LABEL_65:

  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __31__PGLocationsResolver__resolve__block_invoke;
  v94[3] = &unk_278885298;
  v42 = v83;
  v95 = v42;
  [(NSArray *)v82 sortUsingComparator:v94];
  if (v4 > 0.0 || v3 > 0.0)
  {
    v85 = v42;
    v44 = v5 - v4 - v3;
    v45 = v44;
    v46 = v5;
    v47 = v45 / v46;
    v48 = 1.0 - self->_maximumMissingLocationsThreshold;
    if (v47 >= v48)
    {
      v50 = 6;
    }

    else
    {
      v49 = v4 + v44;
      if ((v49 / v46) >= v48)
      {
        v50 = 8;
      }

      else
      {
        v50 = 9;
      }
    }

    v51 = [(NSArray *)v82 count];
    v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:v51];
    v53 = [MEMORY[0x277CBEB58] setWithCapacity:v51];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v89 = v82;
    v54 = [(NSArray *)v89 countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v91;
      v87 = v52;
      do
      {
        for (k = 0; k != v55; ++k)
        {
          if (*v91 != v56)
          {
            objc_enumerationMutation(v89);
          }

          v58 = *(*(&v90 + 1) + 8 * k);
          v59 = [v58 label];
          v60 = [PGCommonTitleUtility dimensionForLabel:v59];

          if (v60 == v50)
          {
            if (([v53 containsObject:v58] & 1) == 0)
            {
              [v53 addObject:v58];
              [(NSArray *)v52 addObject:v58];
            }
          }

          else if (v60 >= v50)
          {
            if (self->_shouldCreateLocationToAddressMapTable)
            {
              [(NSMapTable *)v81 removeObjectForKey:v58];
            }
          }

          else
          {
            v61 = [(PGGraphLocationHelper *)self->_locationHelper closestLocationNodeFromLocationNode:v58 withDimension:v50 reverse:0];
            v62 = v61;
            if (v61)
            {
              v63 = [v61 label];
              v64 = [PGCommonTitleUtility dimensionForLabel:v63];

              v52 = v87;
              if (v64 == v50 && ([v53 containsObject:v62] & 1) == 0)
              {
                [v53 addObject:v62];
                [(NSArray *)v87 addObject:v62];
              }

              if (self->_shouldCreateLocationToAddressMapTable)
              {
                v65 = [(NSMapTable *)v81 objectForKey:v58];
                [(NSMapTable *)v81 removeObjectForKey:v58];
                v66 = [(NSMapTable *)v81 objectForKey:v62];
                if (!v66)
                {
                  v66 = [MEMORY[0x277CBEB58] set];
                  [(NSMapTable *)v81 setObject:v66 forKey:v62];
                }

                [v66 unionSet:v65];

                v52 = v87;
              }
            }
          }
        }

        v55 = [(NSArray *)v89 countByEnumeratingWithState:&v90 objects:v104 count:16];
      }

      while (v55);
    }

    v43 = v52;
    v42 = v85;
  }

  else
  {
    v43 = v82;
  }

  resolvedMomentNodes = self->_resolvedMomentNodes;
  self->_resolvedMomentNodes = v79;
  v68 = v79;

  resolvedLocationNodes = self->_resolvedLocationNodes;
  self->_resolvedLocationNodes = v43;
  v70 = v43;

  resolvedLocationNodesToAddressNodesMapTable = self->_resolvedLocationNodesToAddressNodesMapTable;
  self->_resolvedLocationNodesToAddressNodesMapTable = v81;
  v72 = v81;

  v73 = *MEMORY[0x277D85DE8];
}

uint64_t __31__PGLocationsResolver__resolve__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  if (v7)
  {
    if (v8)
    {
      v9 = [v7 compare:v8];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)setMaximumMissingLocationsThreshold:(float)a3
{
  if (self->_maximumMissingLocationsThreshold != a3)
  {
    v3 = 0.0;
    if (a3 >= 0.0)
    {
      v3 = a3;
    }

    if (a3 <= 1.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1.0;
    }

    self->_maximumMissingLocationsThreshold = v4;
  }
}

- (void)setCreateLocationToAddressMapTable:(BOOL)a3
{
  if (self->_shouldCreateLocationToAddressMapTable != a3)
  {
    self->_shouldCreateLocationToAddressMapTable = a3;
    resolvedLocationNodes = self->_resolvedLocationNodes;
    self->_resolvedLocationNodes = 0;

    resolvedMomentNodes = self->_resolvedMomentNodes;
    self->_resolvedMomentNodes = 0;

    resolvedLocationNodesToAddressNodesMapTable = self->_resolvedLocationNodesToAddressNodesMapTable;
    self->_resolvedLocationNodesToAddressNodesMapTable = 0;
  }
}

- (NSMapTable)resolvedLocationNodesToAddressNodesMapTable
{
  if (self->_shouldCreateLocationToAddressMapTable)
  {
    resolvedLocationNodesToAddressNodesMapTable = self->_resolvedLocationNodesToAddressNodesMapTable;
    if (!resolvedLocationNodesToAddressNodesMapTable)
    {
      [(PGLocationsResolver *)self _resolve];
      resolvedLocationNodesToAddressNodesMapTable = self->_resolvedLocationNodesToAddressNodesMapTable;
    }

    v5 = resolvedLocationNodesToAddressNodesMapTable;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)resolvedLocationNodes
{
  resolvedLocationNodes = self->_resolvedLocationNodes;
  if (!resolvedLocationNodes)
  {
    [(PGLocationsResolver *)self _resolve];
    resolvedLocationNodes = self->_resolvedLocationNodes;
  }

  return resolvedLocationNodes;
}

- (NSArray)resolvedMomentNodes
{
  resolvedMomentNodes = self->_resolvedMomentNodes;
  if (!resolvedMomentNodes)
  {
    [(PGLocationsResolver *)self _resolve];
    resolvedMomentNodes = self->_resolvedMomentNodes;
  }

  return resolvedMomentNodes;
}

- (PGLocationsResolver)initWithSortedMomentNodes:(id)a3 incompleteLocationResolver:(id)a4 locationHelper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = PGLocationsResolver;
  v12 = [(PGLocationsResolver *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_maximumMissingLocationsThreshold = 0.25;
    objc_storeStrong(&v12->_sortedMoments, a3);
    objc_storeStrong(&v13->_locationHelper, a5);
    if (v10)
    {
      v14 = v10;
      incompleteLocationResolver = v13->_incompleteLocationResolver;
      v13->_incompleteLocationResolver = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB98] setWithArray:v9];
      incompleteLocationResolver = [PGCommonTitleUtility addressNodesFromMomentNodes:v16];

      v17 = [[PGIncompleteLocationResolver alloc] initWithAddressNodes:incompleteLocationResolver locationHelper:v11];
      v18 = v13->_incompleteLocationResolver;
      v13->_incompleteLocationResolver = v17;
    }
  }

  return v13;
}

- (PGLocationsResolver)initWithMomentNodes:(id)a3 incompleteLocationResolver:(id)a4 locationHelper:(id)a5
{
  v20[3] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCAC98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v12}];
  v20[1] = v13;
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

  v16 = [v11 sortedArrayUsingDescriptors:v15];

  v17 = [(PGLocationsResolver *)self initWithSortedMomentNodes:v16 incompleteLocationResolver:v10 locationHelper:v9];
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end
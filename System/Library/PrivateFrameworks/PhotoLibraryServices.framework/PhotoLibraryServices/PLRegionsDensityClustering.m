@interface PLRegionsDensityClustering
- (PLRegionsDensityClustering)init;
- (id)_timeAndLocationBasedClusteringBlockWithTimeIntervalDistance:(double)a3;
- (id)performWithDataset:(id)a3 progressBlock:(id)a4;
@end

@implementation PLRegionsDensityClustering

- (id)performWithDataset:(id)a3 progressBlock:(id)a4
{
  v131 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v120 objects:v130 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v121;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v121 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v120 + 1) + 8 * i);
        [v12 pl_coordinate];
        latitude = v133.latitude;
        longitude = v133.longitude;
        if (CLLocationCoordinate2DIsValid(v133))
        {
          v15 = latitude != 0.0;
          if (longitude != 0.0)
          {
            v15 = 1;
          }

          if (v15 && (latitude != 40.0 || longitude != -100.0))
          {
            [v6 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v120 objects:v130 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v81 = [v6 sortedArrayUsingComparator:&__block_literal_global_3_96567];
    v89 = [v81 mutableCopy];
    v85 = v7;
    if (self->_includeDefiniteClusters)
    {
      if (self->_definiteClusterTimeIntervalDistance == 0.0)
      {
        [(PLRegionsDensityClustering *)self _locationBasedClusteringBlock];
      }

      else
      {
        [(PLRegionsDensityClustering *)self _timeAndLocationBasedClusteringBlockWithTimeIntervalDistance:?];
      }
      v17 = ;
      if (self->_algorithm)
      {
        v18 = 0;
      }

      else
      {
        v18 = [(PLDataClustering *)[PLDBSCANClustering alloc] initWithDistanceBlock:v17];
      }

      [(PLDataDensityClustering *)v18 setMaximumDistance:self->_definiteClusterMaximumDistanceUnit];
      v19 = vcvtmd_u64_f64(self->_definiteClusterMinimumNumberOfObjectsPercent * [v89 count]);
      if (self->_definiteClusterMinimumNumberOfObjects <= v19)
      {
        definiteClusterMinimumNumberOfObjects = v19;
      }

      else
      {
        definiteClusterMinimumNumberOfObjects = self->_definiteClusterMinimumNumberOfObjects;
      }

      [(PLDataDensityClustering *)v18 setMinimumNumberOfObjects:definiteClusterMinimumNumberOfObjects];
      v80 = v18;
      v84 = [(PLDBSCANClustering *)v18 performWithDataset:v89 progressBlock:0];
      if (self->_removeDefiniteClustersObjectsFromDataset)
      {
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v21 = v84;
        v22 = [v21 countByEnumeratingWithState:&v116 objects:v129 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v117;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v117 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [*(*(&v116 + 1) + 8 * j) objects];
              [v89 removeObjectsInArray:v26];
            }

            v23 = [v21 countByEnumeratingWithState:&v116 objects:v129 count:16];
          }

          while (v23);
        }
      }
    }

    else
    {
      v80 = 0;
      v84 = 0;
    }

    v82 = v6;
    if (self->_includeExtensiveClusters && [v89 count])
    {
      if (self->_extensiveClusterTimeIntervalDistance == 0.0)
      {
        [(PLRegionsDensityClustering *)self _locationBasedClusteringBlock];
      }

      else
      {
        [(PLRegionsDensityClustering *)self _timeAndLocationBasedClusteringBlockWithTimeIntervalDistance:?];
      }
      v27 = ;
      if (self->_algorithm)
      {
        v28 = 0;
      }

      else
      {
        v28 = [(PLDataClustering *)[PLDBSCANClustering alloc] initWithDistanceBlock:v27];
      }

      [(PLDataDensityClustering *)v28 setMaximumDistance:self->_extensiveClusterMaximumDistanceUnit];
      v29 = vcvtmd_u64_f64(self->_extensiveClusterMinimumNumberOfObjectsPercent * [v89 count]);
      if (self->_extensiveClusterMinimumNumberOfObjects <= v29)
      {
        extensiveClusterMinimumNumberOfObjects = v29;
      }

      else
      {
        extensiveClusterMinimumNumberOfObjects = self->_extensiveClusterMinimumNumberOfObjects;
      }

      [(PLDataDensityClustering *)v28 setMinimumNumberOfObjects:extensiveClusterMinimumNumberOfObjects];
      v79 = v28;
      v83 = [(PLDBSCANClustering *)v28 performWithDataset:v89 progressBlock:0];
      if (self->_removeExtensiveClustersObjectsFromDataset)
      {
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v31 = v83;
        v32 = [v31 countByEnumeratingWithState:&v112 objects:v128 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v113;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v113 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(*(&v112 + 1) + 8 * k) objects];
              [v89 removeObjectsInArray:v36];
            }

            v33 = [v31 countByEnumeratingWithState:&v112 objects:v128 count:16];
          }

          while (v33);
        }

        v6 = v82;
      }
    }

    else
    {
      v79 = 0;
      v83 = 0;
    }

    v91 = [MEMORY[0x1E695DF90] dictionary];
    v88 = objc_opt_new();
    if (self->_includeDefiniteClusters)
    {
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v37 = v84;
      v38 = [v37 countByEnumeratingWithState:&v108 objects:v127 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v109;
        do
        {
          for (m = 0; m != v39; ++m)
          {
            if (*v109 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v108 + 1) + 8 * m);
            v43 = [v42 objects];
            v44 = [v43 count];

            if (v44)
            {
              v45 = [v42 meanRegion:10.0];
              v46 = [v42 objects];
              [v91 setObject:v46 forKeyedSubscript:v45];

              if (self->_removeExtensiveClustersContainingDefiniteClusters)
              {
                [v88 addObject:v45];
              }
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v108 objects:v127 count:16];
        }

        while (v39);
      }

      v6 = v82;
    }

    v7 = v85;
    if (self->_includeExtensiveClusters)
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = v83;
      v90 = [obj countByEnumeratingWithState:&v104 objects:v126 count:16];
      if (v90)
      {
        v47 = *v105;
        v86 = *v105;
        do
        {
          for (n = 0; n != v90; ++n)
          {
            if (*v105 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v49 = *(*(&v104 + 1) + 8 * n);
            v50 = [v49 objects];
            v51 = [v50 count];

            if (v51)
            {
              v52 = [v49 meanRegion:100.0];
              v102 = 0;
              v103 = 0;
              [v52 center];
              v102 = v53;
              v103 = v54;
              if (self->_removeExtensiveClustersContainingDefiniteClusters)
              {
                v100 = 0u;
                v101 = 0u;
                v98 = 0u;
                v99 = 0u;
                v55 = v88;
                v56 = [v55 countByEnumeratingWithState:&v98 objects:v125 count:16];
                if (v56)
                {
                  v57 = v56;
                  v58 = *v99;
                  while (2)
                  {
                    for (ii = 0; ii != v57; ++ii)
                    {
                      if (*v99 != v58)
                      {
                        objc_enumerationMutation(v55);
                      }

                      [*(*(&v98 + 1) + 8 * ii) center];
                      v96 = v60;
                      v97 = v61;
                      if (([v52 containsCoordinate:?] & 1) == 0)
                      {
                        CLLocationCoordinate2DGetDistanceFrom();
                        if (v62 > (self->_definiteClusterMaximumDistanceUnit + self->_extensiveClusterMaximumDistanceUnit) * 0.5)
                        {
                          continue;
                        }
                      }

                      v7 = v85;
                      v47 = v86;
                      goto LABEL_95;
                    }

                    v57 = [v55 countByEnumeratingWithState:&v98 objects:v125 count:16];
                    v7 = v85;
                    if (v57)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v47 = v86;
              }

              v55 = [v49 objects];
              [v91 setObject:v55 forKeyedSubscript:v52];
LABEL_95:
            }
          }

          v90 = [obj countByEnumeratingWithState:&v104 objects:v126 count:16];
        }

        while (v90);
      }

      v6 = v82;
    }

    if (![v91 count] && objc_msgSend(v89, "count") >= 2)
    {
      if (self->_extensiveClusterTimeIntervalDistance == 0.0)
      {
        [(PLRegionsDensityClustering *)self _locationBasedClusteringBlock];
      }

      else
      {
        [(PLRegionsDensityClustering *)self _timeAndLocationBasedClusteringBlockWithTimeIntervalDistance:?];
      }
      v63 = ;
      v64 = [(PLDataClustering *)[PLDBSCANClustering alloc] initWithDistanceBlock:v63];
      -[PLDataDensityClustering setMaximumDistance:](v64, "setMaximumDistance:", dbl_19C60B060[[v89 count] > self->_definiteClusterMinimumNumberOfObjects]);
      [(PLDataDensityClustering *)v64 setMinimumNumberOfObjects:1];
      v65 = [(PLDBSCANClustering *)v64 performWithDataset:v89 progressBlock:0];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v66 = [v65 countByEnumeratingWithState:&v92 objects:v124 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v93;
        do
        {
          for (jj = 0; jj != v67; ++jj)
          {
            if (*v93 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v92 + 1) + 8 * jj);
            v71 = [v70 objects];
            v72 = [v71 count];

            if (v72)
            {
              v73 = [v70 meanRegion:500.0];
              v74 = [v70 objects];
              [v91 setObject:v74 forKeyedSubscript:v73];
            }
          }

          v67 = [v65 countByEnumeratingWithState:&v92 objects:v124 count:16];
        }

        while (v67);
      }

      v7 = v85;
    }

    if (![v91 count])
    {
      v75 = [PLDataCluster clusterWithObjects:v6];
      v76 = [v75 meanRegion:100.0];
      if (v76)
      {
        v77 = [v75 objects];
        [v91 setObject:v77 forKeyedSubscript:v76];
      }
    }
  }

  else
  {
    v91 = MEMORY[0x1E695E0F8];
  }

  return v91;
}

uint64_t __63__PLRegionsDensityClustering_performWithDataset_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 pl_date];
  v6 = [v4 pl_date];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_timeAndLocationBasedClusteringBlockWithTimeIntervalDistance:(double)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PLRegionsDensityClustering__timeAndLocationBasedClusteringBlockWithTimeIntervalDistance___block_invoke;
  aBlock[3] = &__block_descriptor_40_e65_d24__0___PLRegionsClusteringItem__8___PLRegionsClusteringItem__16l;
  *&aBlock[4] = a3;
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);

  return v4;
}

double __91__PLRegionsDensityClustering__timeAndLocationBasedClusteringBlockWithTimeIntervalDistance___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 pl_coordinate];
  [v5 pl_coordinate];
  v16 = v7;
  v17 = v8;
  CLLocationCoordinate2DGetDistanceFrom();
  v10 = v9;
  v11 = [v6 pl_date];

  v12 = [v5 pl_date];

  [v11 timeIntervalSinceDate:v12];
  v14 = fabs(v13) / *(a1 + 32);

  return v10 + v14;
}

uint64_t __59__PLRegionsDensityClustering__locationBasedClusteringBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 pl_coordinate];
  [v4 pl_coordinate];

  return CLLocationCoordinate2DGetDistanceFrom();
}

- (PLRegionsDensityClustering)init
{
  v3.receiver = self;
  v3.super_class = PLRegionsDensityClustering;
  result = [(PLRegionsDensityClustering *)&v3 init];
  if (result)
  {
    result->_algorithm = 0;
    result->_includeDefiniteClusters = 1;
    result->_definiteClusterTimeIntervalDistance = 7200.0;
    result->_definiteClusterMaximumDistanceUnit = 20.0;
    result->_definiteClusterMinimumNumberOfObjectsPercent = 0.25;
    result->_definiteClusterMinimumNumberOfObjects = 4;
    result->_removeDefiniteClustersObjectsFromDataset = 1;
    result->_includeExtensiveClusters = 1;
    result->_extensiveClusterTimeIntervalDistance = 0.0;
    result->_extensiveClusterMaximumDistanceUnit = 250.0;
    result->_extensiveClusterMinimumNumberOfObjectsPercent = 0.15;
    result->_extensiveClusterMinimumNumberOfObjects = 3;
    result->_removeExtensiveClustersObjectsFromDataset = 1;
    result->_removeExtensiveClustersContainingDefiniteClusters = 1;
  }

  return result;
}

@end
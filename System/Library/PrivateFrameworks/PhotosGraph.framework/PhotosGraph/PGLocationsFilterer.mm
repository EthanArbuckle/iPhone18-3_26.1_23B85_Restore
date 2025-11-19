@interface PGLocationsFilterer
- (NSArray)filteredLocationNodes;
- (PGLocationsFilterer)initWithSortedMomentNodes:(id)a3 locationNodes:(id)a4 incompleteLocationResolver:(id)a5;
- (id)_filteredSignificantLocationNodes;
@end

@implementation PGLocationsFilterer

- (id)_filteredSignificantLocationNodes
{
  v152 = *MEMORY[0x277D85DE8];
  v88 = self->_locationNodes;
  v82 = self;
  v83 = self->_sortedMomentNodes;
  v3 = [(NSArray *)v83 firstObject];
  v84 = [v3 graph];

  v86 = [v84 version] >= 0xCE && +[PGUserDefaults useExtendedCurationAssetCountForLocationTitles](PGUserDefaults, "useExtendedCurationAssetCountForLocationTitles");
  v95 = v82->_incompleteLocationResolver;
  if (![(NSArray *)v88 count])
  {
    v49 = v88;
    goto LABEL_94;
  }

  v4 = [(NSArray *)v88 firstObject];
  v94 = [v4 label];

  v91 = [PGCommonTitleUtility dimensionForLabel:v94];
  v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v92 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](v88, "count")}];
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = v83;
  v93 = [(NSArray *)obj countByEnumeratingWithState:&v141 objects:v151 count:16];
  if (v93)
  {
    v87 = 0;
    v89 = *v142;
    v6 = 0x277CCA000uLL;
    do
    {
      v7 = 0;
      do
      {
        if (*v142 != v89)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v96 = v7;
        v9 = *(*(&v141 + 1) + 8 * v7);
        context = objc_autoreleasePoolPush();
        v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v137 = 0;
        v138 = &v137;
        v139 = 0x2020000000;
        v140 = 0;
        v133 = 0;
        v134 = &v133;
        v135 = 0x2020000000;
        v136 = 0;
        v125[0] = MEMORY[0x277D85DD0];
        v125[1] = 3221225472;
        v125[2] = __56__PGLocationsFilterer__filteredSignificantLocationNodes__block_invoke;
        v125[3] = &unk_278882E28;
        v126 = v94;
        v127 = v95;
        v132 = v91;
        v11 = v92;
        v128 = v11;
        v130 = &v133;
        v131 = &v137;
        v12 = v10;
        v129 = v12;
        [v9 enumerateAddressEdgesAndNodesUsingBlock:v125];
        if (v138[3] > 0.0)
        {
          if (v86)
          {
            v13 = [v9 numberOfAssetsInExtendedCuration];
          }

          else
          {
            v13 = [v9 numberOfAssets];
          }

          if (!v13)
          {
            v13 = [v9 numberOfAssets];
          }

          v90 = v13;
          if (*(v134 + 24) == 1)
          {
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v14 = [v11 allValues];
            v15 = [v14 countByEnumeratingWithState:&v121 objects:v150 count:16];
            if (v15)
            {
              v98 = v14;
              v99 = *v122;
              do
              {
                v100 = v15;
                for (i = 0; i != v100; ++i)
                {
                  if (*v122 != v99)
                  {
                    objc_enumerationMutation(v98);
                  }

                  v17 = *(*(&v121 + 1) + 8 * i);
                  if ([v17 count] >= 2)
                  {
                    v119 = 0u;
                    v120 = 0u;
                    v117 = 0u;
                    v118 = 0u;
                    v18 = v17;
                    v19 = [v18 countByEnumeratingWithState:&v117 objects:v149 count:16];
                    if (v19)
                    {
                      v20 = *v118;
                      v21 = 0.0;
                      v22 = 0.0;
                      do
                      {
                        for (j = 0; j != v19; ++j)
                        {
                          if (*v118 != v20)
                          {
                            objc_enumerationMutation(v18);
                          }

                          v24 = [v12 objectForKey:*(*(&v117 + 1) + 8 * j)];
                          [v24 floatValue];
                          v26 = v25;

                          v22 = v22 + v26;
                          if (v21 < v26)
                          {
                            v21 = v26;
                          }
                        }

                        v19 = [v18 countByEnumeratingWithState:&v117 objects:v149 count:16];
                      }

                      while (v19);
                    }

                    else
                    {
                      v21 = 0.0;
                      v22 = 0.0;
                    }

                    v138[3] = v138[3] - (v22 - v21);
                    v27 = [v18 objectAtIndexedSubscript:0];
                    v28 = [*(v6 + 2992) numberWithDouble:v21];
                    [v12 setObject:v28 forKey:v27];

                    v29 = v6;
                    v115 = 0u;
                    v116 = 0u;
                    v113 = 0u;
                    v114 = 0u;
                    v30 = v18;
                    v31 = [v30 countByEnumeratingWithState:&v113 objects:v148 count:16];
                    if (v31)
                    {
                      v32 = *v114;
                      do
                      {
                        for (k = 0; k != v31; ++k)
                        {
                          if (*v114 != v32)
                          {
                            objc_enumerationMutation(v30);
                          }

                          v34 = *(*(&v113 + 1) + 8 * k);
                          if (([v34 isSameNodeAsNode:v27] & 1) == 0)
                          {
                            [v12 removeObjectForKey:v34];
                          }
                        }

                        v31 = [v30 countByEnumeratingWithState:&v113 objects:v148 count:16];
                      }

                      while (v31);
                    }

                    v6 = v29;
                  }
                }

                v14 = v98;
                v15 = [v98 countByEnumeratingWithState:&v121 objects:v150 count:16];
              }

              while (v15);
            }
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v35 = [v12 keyEnumerator];
          v36 = [v35 countByEnumeratingWithState:&v109 objects:v147 count:16];
          if (v36)
          {
            v37 = *v110;
            do
            {
              for (m = 0; m != v36; ++m)
              {
                if (*v110 != v37)
                {
                  objc_enumerationMutation(v35);
                }

                v39 = *(*(&v109 + 1) + 8 * m);
                v40 = [v12 objectForKey:v39];
                [v40 floatValue];
                v42 = v41;

                v43 = v138[3];
                v44 = [v5 objectForKey:v39];
                [v44 floatValue];
                v46 = v45;

                v47 = [*(v6 + 2992) numberWithDouble:v42 / v43 * v90 + v46];
                [v5 setObject:v47 forKey:v39];
              }

              v36 = [v35 countByEnumeratingWithState:&v109 objects:v147 count:16];
            }

            while (v36);
          }

          v87 += v90;
        }

        _Block_object_dispose(&v133, 8);
        _Block_object_dispose(&v137, 8);

        objc_autoreleasePoolPop(context);
        v7 = v96 + 1;
      }

      while (v96 + 1 != v93);
      v93 = [(NSArray *)obj countByEnumeratingWithState:&v141 objects:v151 count:16];
    }

    while (v93);
    v48 = v87;
  }

  else
  {
    v48 = 0.0;
  }

  v49 = [(NSArray *)v88 mutableCopy];
  v50 = [v5 count];
  v51 = v50;
  if (v50 >= 2)
  {
    if (v50 == 3)
    {
      filteringType = v82->_filteringType;
      v53 = 0.0;
      if (filteringType <= 2)
      {
        v54 = &unk_22F78C43C;
        goto LABEL_67;
      }
    }

    else
    {
      if (v50 != 2)
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v56 = [v5 keyEnumerator];
        v57 = [v56 countByEnumeratingWithState:&v105 objects:v146 count:16];
        v58 = v51;
        v59 = v48 / v51;
        if (v57)
        {
          v60 = *v106;
          v61 = 0.0;
          do
          {
            for (n = 0; n != v57; ++n)
            {
              if (*v106 != v60)
              {
                objc_enumerationMutation(v56);
              }

              v63 = [v5 objectForKey:*(*(&v105 + 1) + 8 * n)];
              [v63 floatValue];
              v65 = v64;

              v61 = v61 + ((v65 - v59) * (v65 - v59));
            }

            v57 = [v56 countByEnumeratingWithState:&v105 objects:v146 count:16];
          }

          while (v57);
        }

        else
        {
          v61 = 0.0;
        }

        v66 = sqrtf(v61 / v58);
        v67 = v82->_filteringType;
        v68 = 0.0;
        if (v67 <= 2)
        {
          v68 = flt_22F78C448[v67];
        }

        v69 = v59 - (v68 * v66);
        v70 = v59 + v66;
        if (v69 >= 0.0)
        {
          v70 = v69;
        }

        v55 = floorf(v70);
        goto LABEL_83;
      }

      filteringType = v82->_filteringType;
      v53 = 0.0;
      if (filteringType <= 2)
      {
        v54 = &unk_22F78C430;
LABEL_67:
        v53 = v54[filteringType];
      }
    }

    v55 = ceilf(v53 * v48);
LABEL_83:
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v71 = [v5 keyEnumerator];
    v72 = [v71 countByEnumeratingWithState:&v101 objects:v145 count:16];
    if (v72)
    {
      v73 = *v102;
      v74 = v55;
      do
      {
        for (ii = 0; ii != v72; ++ii)
        {
          if (*v102 != v73)
          {
            objc_enumerationMutation(v71);
          }

          v76 = *(*(&v101 + 1) + 8 * ii);
          v77 = [v5 objectForKey:v76];
          [v77 floatValue];
          v79 = v78;

          if (v79 < v74)
          {
            [(NSArray *)v49 removeObject:v76];
          }
        }

        v72 = [v71 countByEnumeratingWithState:&v101 objects:v145 count:16];
      }

      while (v72);
    }
  }

LABEL_94:
  v80 = *MEMORY[0x277D85DE8];

  return v49;
}

void __56__PGLocationsFilterer__filteredSignificantLocationNodes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 collection];
  v8 = [v7 nearestDeepParentLocationNodesWithLabel:*(a1 + 32)];
  v9 = [v8 anyNode];

  if (!v9)
  {
    v10 = [*(a1 + 40) resolvedLocationNodeForIncompleteAddressNode:v6 withTargetDimension:*(a1 + 80)];
    if (!v10)
    {
      goto LABEL_17;
    }

    v9 = v10;
  }

  v11 = [v9 name];
  v12 = v11;
  if (v11 && [v11 length])
  {
    v13 = [*(a1 + 48) objectForKeyedSubscript:v12];
    if (([v13 containsObject:v9] & 1) == 0)
    {
      if (!v13)
      {
        v13 = [MEMORY[0x277CBEB18] array];
        [*(a1 + 48) setObject:v13 forKeyedSubscript:v12];
      }

      [v13 addObject:v9];
    }

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = [v13 count] > 1;
    }

    [v5 relevance];
    v15 = v14;
    *(*(*(a1 + 72) + 8) + 24) = v14 + *(*(*(a1 + 72) + 8) + 24);
    v16 = [*(a1 + 56) objectForKey:v9];
    [v16 floatValue];
    v18 = v17;

    v19 = *(a1 + 56);
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15 + v18];
    [v19 setObject:v20 forKey:v9];
  }

  else
  {
    v21 = +[PGLogging sharedLogging];
    v22 = [v21 loggingConnection];

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v9;
      _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "Location Node has no name! %@", &v24, 0xCu);
    }
  }

LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
}

- (NSArray)filteredLocationNodes
{
  filteredLocationNodes = self->_filteredLocationNodes;
  if (!filteredLocationNodes)
  {
    v4 = [(PGLocationsFilterer *)self _filteredSignificantLocationNodes];
    v5 = self->_filteredLocationNodes;
    self->_filteredLocationNodes = v4;

    filteredLocationNodes = self->_filteredLocationNodes;
  }

  return filteredLocationNodes;
}

- (PGLocationsFilterer)initWithSortedMomentNodes:(id)a3 locationNodes:(id)a4 incompleteLocationResolver:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGLocationsFilterer;
  v12 = [(PGLocationsFilterer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_filteringType = 0;
    objc_storeStrong(&v12->_sortedMomentNodes, a3);
    objc_storeStrong(&v13->_locationNodes, a4);
    objc_storeStrong(&v13->_incompleteLocationResolver, a5);
  }

  return v13;
}

@end
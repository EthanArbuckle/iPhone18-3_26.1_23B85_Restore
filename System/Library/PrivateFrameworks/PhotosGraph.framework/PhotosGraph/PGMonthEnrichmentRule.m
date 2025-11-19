@interface PGMonthEnrichmentRule
- (PGMonthEnrichmentRule)initWithModelReader:(id)a3 loggingConnection:(id)a4;
- (double)promotionScoreForHighlightItemList:(id)a3;
- (id)_momentNodesAtWorkWithGraph:(id)a3;
- (id)bestItemsFromSortedItemsByWeekOfMonth:(id)a3 previouslySelectedItemsCountByWeek:(id)a4 maximumNumberOfItems:(unint64_t)a5 sortDescriptors:(id)a6;
- (id)sortedItemsByWeekOfMonthFromItems:(id)a3 sortDescriptors:(id)a4;
- (unsigned)_legacyVisibilityStateForItemPromotedToMonths:(id)a3;
- (unsigned)_visibilityStateForItemPromotedToMonths:(id)a3;
- (void)enumerateChildVisibilityStateForHighlightItemList:(id)a3 sharingFilter:(unsigned __int16)a4 withGraph:(id)a5 neighborScoreComputer:(id)a6 usingBlock:(id)a7 maximumNumberOfVisibleItems:(unint64_t)a8 maximumNumberOfVisibleRegularItems:(unint64_t)a9;
@end

@implementation PGMonthEnrichmentRule

- (id)sortedItemsByWeekOfMonthFromItems:(id)a3 sortDescriptors:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 startDate];
        v14 = [v7 components:4096 fromDate:v13];

        v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "weekOfMonth")}];
        v16 = [v6 objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = [MEMORY[0x277CBEB18] array];
          [v6 setObject:v16 forKeyedSubscript:v15];
        }

        [v16 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__PGMonthEnrichmentRule_sortedItemsByWeekOfMonthFromItems_sortDescriptors___block_invoke;
  v22[3] = &unk_278884F30;
  v23 = v20;
  v17 = v20;
  [v6 enumerateKeysAndObjectsUsingBlock:v22];

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)bestItemsFromSortedItemsByWeekOfMonth:(id)a3 previouslySelectedItemsCountByWeek:(id)a4 maximumNumberOfItems:(unint64_t)a5 sortDescriptors:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v45 = a6;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEA80] currentCalendar];
  v44 = a5;
  if ([v11 count] < a5)
  {
    v46 = a5;
    v43 = v11;
    v51 = v12;
    v49 = v13;
    do
    {
      if (![v9 count])
      {
        break;
      }

      v47 = [MEMORY[0x277CBEB18] array];
      v14 = [v9 allKeys];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v14;
      v15 = [v14 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v54;
        v48 = *v54;
        do
        {
          v18 = 0;
          v50 = v16;
          do
          {
            if (*v54 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v53 + 1) + 8 * v18);
            v20 = [v9 objectForKeyedSubscript:v19];
            v21 = [v10 objectForKeyedSubscript:v19];
            v22 = v21;
            if (v21)
            {
              v23 = [v21 unsignedIntegerValue];
              if (v23 == 1)
              {
                [v10 removeObjectForKey:v19];
              }

              else
              {
                v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23 - 1];
                [v10 setObject:v24 forKeyedSubscript:v19];
              }
            }

            else
            {
              v25 = v10;
              v26 = v9;
              v27 = [v20 firstObject];
              v28 = [v27 startDate];
              v29 = [v49 components:16 fromDate:v28];

              v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v29, "day")}];
              if (([v51 containsObject:v30] & 1) == 0)
              {
                [v47 addObject:v27];
              }

              if ([v20 count] == 1)
              {
                [v26 removeObjectForKey:v19];
              }

              else
              {
                [v20 removeObject:v27];
              }

              v9 = v26;
              v10 = v25;
              v17 = v48;
              v16 = v50;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v16);
      }

      v31 = v47;
      v32 = [v47 count];
      if (v46 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v46;
      }

      [v47 sortUsingDescriptors:v45];
      v11 = v43;
      v13 = v49;
      if (v33)
      {
        for (i = 0; i != v33; ++i)
        {
          v35 = [v31 objectAtIndexedSubscript:i];
          [v11 addObject:v35];
          v36 = [v35 startDate];
          [v13 components:16 fromDate:v36];
          v37 = v13;
          v39 = v38 = v11;

          v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v39, "day")}];
          [v51 addObject:v40];

          v31 = v47;
          v11 = v38;
          v13 = v37;
        }
      }

      v46 -= v33;

      v12 = v51;
    }

    while ([v11 count] < v44);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_momentNodesAtWorkWithGraph:(id)a3
{
  momentNodesAtWork = self->_momentNodesAtWork;
  if (!momentNodesAtWork)
  {
    v5 = [a3 meNodeCollection];
    v6 = [v5 workNodes];
    v7 = [v6 addressNodes];
    v8 = [v7 momentNodes];
    v9 = self->_momentNodesAtWork;
    self->_momentNodesAtWork = v8;

    momentNodesAtWork = self->_momentNodesAtWork;
  }

  return momentNodesAtWork;
}

- (unsigned)_visibilityStateForItemPromotedToMonths:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 type];

    if (v5 >= 8)
    {
      return 0;
    }

    else
    {
      return word_22F78C190[v5];
    }
  }

  else
  {
    v7 = [(PGMonthEnrichmentRule *)self _legacyVisibilityStateForItemPromotedToMonths:v4];

    return v7;
  }
}

- (unsigned)_legacyVisibilityStateForItemPromotedToMonths:(id)a3
{
  v3 = [a3 type];
  if (v3 > 7)
  {
    return 0;
  }

  else
  {
    return word_22F78C180[v3];
  }
}

- (void)enumerateChildVisibilityStateForHighlightItemList:(id)a3 sharingFilter:(unsigned __int16)a4 withGraph:(id)a5 neighborScoreComputer:(id)a6 usingBlock:(id)a7 maximumNumberOfVisibleItems:(unint64_t)a8 maximumNumberOfVisibleRegularItems:(unint64_t)a9
{
  obj = a4;
  v179[3] = *MEMORY[0x277D85DE8];
  v127 = a3;
  v125 = a5;
  v130 = a6;
  v12 = a7;
  v13 = MEMORY[0x277CCA920];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"type", 5];
  v179[0] = v14;
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"type", 6];
  v179[1] = v15;
  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"category", 1];
  v179[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:3];
  v18 = [v13 andPredicateWithSubpredicates:v17];

  if (_os_feature_enabled_impl())
  {
    v19 = MEMORY[0x277CCA920];
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"kind", 0];
    v21 = v20 = v18;
    v178[0] = v21;
    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"category", 1];
    v178[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:2];
    v24 = [v19 andPredicateWithSubpredicates:v23];

    v18 = v24;
  }

  if (obj > 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:off_278884F50[obj] ascending:0];
  }

  v120 = [v127 sortedChildHighlightItems];
  v26 = [v127 childHighlightItemsForHighlightFilter:obj];
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = __195__PGMonthEnrichmentRule_enumerateChildVisibilityStateForHighlightItemList_sharingFilter_withGraph_neighborScoreComputer_usingBlock_maximumNumberOfVisibleItems_maximumNumberOfVisibleRegularItems___block_invoke;
  v164[3] = &__block_descriptor_34_e44_B24__0___PGHighlightItem__8__NSDictionary_16l;
  v165 = obj;
  v27 = [MEMORY[0x277CCAC30] predicateWithBlock:v164];
  v119 = v26;
  v28 = [v26 filteredArrayUsingPredicate:v27];

  v129 = v28;
  v122 = v18;
  v126 = [v28 filteredArrayUsingPredicate:v18];
  v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"promotionScore" ascending:0];
  v177[0] = v29;
  v177[1] = v25;
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v177[2] = v30;
  v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v177[3] = v31;
  v128 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:4];

  v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %f", @"promotionScore", 0x3FECCCCCCCCCCCCDLL];
  v33 = _os_feature_enabled_impl();
  v34 = MEMORY[0x277CCA920];
  if (v33)
  {
    v176[0] = v32;
    v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"type", 5];
    v176[1] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:2];
    [v34 orPredicateWithSubpredicates:v36];
  }

  else
  {
    v175[0] = v32;
    v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"type", 3];
    v175[1] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:2];
    [v34 andPredicateWithSubpredicates:v36];
  }
  v37 = ;

  v118 = v37;
  v117 = [v126 filteredArrayUsingPredicate:v37];
  v38 = [PGMonthEnrichmentRule sortedItemsByWeekOfMonthFromItems:"sortedItemsByWeekOfMonthFromItems:sortDescriptors:" sortDescriptors:?];
  v39 = [MEMORY[0x277CBEB38] dictionary];
  v116 = v38;
  v40 = [(PGMonthEnrichmentRule *)self bestItemsFromSortedItemsByWeekOfMonth:v38 previouslySelectedItemsCountByWeek:v39 maximumNumberOfItems:a8 sortDescriptors:v128];

  v174[0] = v25;
  v41 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"promotionScore" ascending:0];
  v174[1] = v41;
  v42 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v174[2] = v42;
  v43 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v174[3] = v43;
  v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:4];

  v44 = v40;
  v45 = [v40 count];
  v121 = v25;
  if (a8 <= v45)
  {
    v78 = self;
  }

  else
  {
    v111 = a8 - v45;
    v112 = v45;
    v138 = v40;
    v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v126, "count")}];
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v47 = v126;
    v48 = [v47 countByEnumeratingWithState:&v160 objects:v173 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v161;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v161 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v160 + 1) + 8 * i) uuid];
          [v46 addObject:v52];
        }

        v49 = [v47 countByEnumeratingWithState:&v160 objects:v173 count:16];
      }

      while (v49);
    }

    v115 = v46;
    v114 = [PGGraphHighlightNodeCollection highlightNodesForArrayOfUUIDs:v46 inGraph:v125];
    v134 = [v114 highlightNodeByHighlightUUID];
    v133 = [(PGMonthEnrichmentRule *)self _momentNodesAtWorkWithGraph:v125];
    v131 = [MEMORY[0x277CBEB18] array];
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v53 = v47;
    v54 = [v53 countByEnumeratingWithState:&v156 objects:v172 count:16];
    v55 = v138;
    if (v54)
    {
      v56 = v54;
      v57 = *v157;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v157 != v57)
          {
            objc_enumerationMutation(v53);
          }

          v59 = *(*(&v156 + 1) + 8 * j);
          [v59 promotionScore];
          v61 = v60;
          if (([v55 containsObject:v59] & 1) == 0 && objc_msgSend(v59, "type") != 3 && v61 > 0.25)
          {
            v63 = [v59 uuid];
            v64 = [v134 objectForKeyedSubscript:v63];

            if (v64)
            {
              if (v61 >= 0.5 || [v59 numberOfAssetsInExtendedForSharingFilter:obj] > 4 || (objc_msgSend(v130, "neighborScoreWithHighlightNode:", v64), v65 >= 0.4))
              {
                v66 = [v64 collection];
                v67 = [v66 momentNodes];
                v68 = [v133 containsCollection:v67];

                v55 = v138;
                if ((v68 & 1) == 0)
                {
                  [v131 addObject:v59];
                }
              }
            }

            else
            {
              loggingConnection = self->_loggingConnection;
              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v171 = v59;
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Could not find highlight node for highlight %@: Graph might be out of date.", buf, 0xCu);
              }
            }
          }
        }

        v56 = [v53 countByEnumeratingWithState:&v156 objects:v172 count:16];
      }

      while (v56);
    }

    v70 = +[PGUserDefaults minimumNumberOfVisibleItems];
    v71 = v131;
    if ([v131 count] + v112 >= v70)
    {
      v123 = [(PGMonthEnrichmentRule *)self sortedItemsByWeekOfMonthFromItems:v131 sortDescriptors:v124];
      v79 = v111;
      if (v111 >= a9)
      {
        v79 = a9;
      }

      v113 = v79;
      v74 = [MEMORY[0x277CBEB38] dictionary];
      v77 = [MEMORY[0x277CBEA80] currentCalendar];
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      obja = v55;
      v80 = [obja countByEnumeratingWithState:&v152 objects:v169 count:16];
      if (v80)
      {
        v81 = v80;
        v139 = *v153;
        do
        {
          for (k = 0; k != v81; ++k)
          {
            if (*v153 != v139)
            {
              objc_enumerationMutation(obja);
            }

            v83 = [*(*(&v152 + 1) + 8 * k) startDate];
            [v77 components:4096 fromDate:v83];
            v85 = v84 = v77;

            v86 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v85, "weekOfMonth")}];
            v87 = MEMORY[0x277CCABB0];
            v88 = [v74 objectForKeyedSubscript:v86];
            v89 = [v87 numberWithUnsignedInteger:{objc_msgSend(v88, "unsignedIntegerValue") + 1}];
            [v74 setObject:v89 forKeyedSubscript:v86];

            v77 = v84;
          }

          v81 = [obja countByEnumeratingWithState:&v152 objects:v169 count:16];
        }

        while (v81);
      }

      v78 = self;
      v73 = v123;
      v90 = [(PGMonthEnrichmentRule *)self bestItemsFromSortedItemsByWeekOfMonth:v123 previouslySelectedItemsCountByWeek:v74 maximumNumberOfItems:v113 sortDescriptors:v124];
      v44 = [obja arrayByAddingObjectsFromArray:v90];

      v71 = v131;
    }

    else
    {
      v72 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %f", @"promotionScore", 0x3FD0000000000000];
      v73 = [v53 filteredArrayUsingPredicate:v72];

      v74 = [v73 sortedArrayUsingDescriptors:v128];
      v75 = [v74 count];
      if (v70 >= v75)
      {
        v76 = v75;
      }

      else
      {
        v76 = v70;
      }

      [v74 subarrayWithRange:{0, v76}];
      v44 = v77 = v55;
      v78 = self;
    }
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v91 = v44;
  v92 = [v91 countByEnumeratingWithState:&v148 objects:v168 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v149;
    do
    {
      for (m = 0; m != v93; ++m)
      {
        if (*v149 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v12[2](v12, *(*(&v148 + 1) + 8 * m), [(PGMonthEnrichmentRule *)v78 _visibilityStateForItemPromotedToMonths:*(*(&v148 + 1) + 8 * m)]);
      }

      v93 = [v91 countByEnumeratingWithState:&v148 objects:v168 count:16];
    }

    while (v93);
  }

  v96 = [v129 arrayByExcludingObjectsInArray:v91];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v97 = [v96 countByEnumeratingWithState:&v144 objects:v167 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v145;
    do
    {
      for (n = 0; n != v98; ++n)
      {
        if (*v145 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v101 = *(*(&v144 + 1) + 8 * n);
        [v101 promotionScore];
        if (v102 >= 0.25)
        {
          v104 = [v101 type];
          v103 = 0;
          if (v104 <= 7)
          {
            if (((1 << v104) & 0xA9) != 0)
            {
              v103 = 1;
            }

            else if (((1 << v104) & 0x16) != 0)
            {
              v103 = _os_feature_enabled_impl();
            }
          }
        }

        else
        {
          v103 = 0;
        }

        (v12)[2](v12, v101, v103);
      }

      v98 = [v96 countByEnumeratingWithState:&v144 objects:v167 count:16];
    }

    while (v98);
  }

  v105 = [v120 arrayByExcludingObjectsInArray:v129];
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v106 = [v105 countByEnumeratingWithState:&v140 objects:v166 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v141;
    do
    {
      for (ii = 0; ii != v107; ++ii)
      {
        if (*v141 != v108)
        {
          objc_enumerationMutation(v105);
        }

        v12[2](v12, *(*(&v140 + 1) + 8 * ii), 0);
      }

      v107 = [v105 countByEnumeratingWithState:&v140 objects:v166 count:16];
    }

    while (v107);
  }

  v110 = *MEMORY[0x277D85DE8];
}

- (double)promotionScoreForHighlightItemList:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 sortedChildHighlightItems];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) promotionScore];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (PGMonthEnrichmentRule)initWithModelReader:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGMonthEnrichmentRule;
  v9 = [(PGMonthEnrichmentRule *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modelReader, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
  }

  return v10;
}

@end
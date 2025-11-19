@interface PGTimeTitleUtility
+ (BOOL)_hasReachedNumberVisitsPerMonth:(unint64_t)a3 inEvents:(id)a4 withLocationNodes:(id)a5 startDateNode:(id)a6 endDateNode:(id)a7;
+ (BOOL)_hasReachedNumberVisitsPerYear:(unint64_t)a3 inEvents:(id)a4 withLocationNodes:(id)a5 startDateNode:(id)a6 endDateNode:(id)a7;
+ (BOOL)_momentNodes:(id)a3 coverCompleteMonth:(BOOL)a4 coverCompleteYear:(BOOL)a5;
+ (BOOL)_yearIsNeededForDisplayingDate:(id)a3;
+ (BOOL)yearIsNeededForDisplayingDate:(id)a3;
+ (id)_commonLocationLabelForLocationNodes:(id)a3;
+ (id)_dateNodesFromMomentNodes:(id)a3 featuredYearNodes:(id)a4 momentsLocalStartDate:(id *)a5 momentsLocalEndDate:(id *)a6;
+ (id)_featuredDateNodesFromDateNodes:(id)a3 featuredYearNodes:(id)a4;
+ (id)_locationNodesForTimeTitleFromLocationNodes:(id)a3;
+ (id)_numberOfYearsAgoWithEventNodes:(id)a3 relativeToDateComponents:(id)a4;
+ (id)_splitTimeTitleWithLocalStartDate:(id)a3 endDate:(id)a4 startDateNode:(id)a5 endDateNode:(id)a6 allowedFormats:(unint64_t)a7 locale:(id)a8;
+ (id)numberOfYearsAgoWithMomentNodes:(id)a3 relativeToDateComponents:(id)a4 useOrdinal:(BOOL)a5;
+ (id)peopleTimeTitleWithEventNodes:(id)a3 requireMultipleYears:(BOOL)a4;
+ (id)significantDateNodesFromMomentNodes:(id)a3 dateFormatterType:(unint64_t)a4;
+ (id)splitTimeTitleWithDateInterval:(id)a3 allowedFormats:(unint64_t)a4;
+ (id)splitTimeTitleWithOptions:(id)a3;
+ (id)timeTitleWithDateInterval:(id)a3 allowedFormats:(unint64_t)a4;
+ (id)timeTitleWithOptions:(id)a3;
+ (int64_t)numberOfYearsFromDate:(id)a3 toDate:(id)a4;
+ (unint64_t)_dateIntervalFormatterTypeWithEventNodes:(id)a3 allowedFormats:(unint64_t)a4;
+ (void)_enumerateNeighborMomentNodesOfMomentNodes:(id)a3 usingBlock:(id)a4;
@end

@implementation PGTimeTitleUtility

+ (int64_t)numberOfYearsFromDate:(id)a3 toDate:(id)a4
{
  v5 = MEMORY[0x277D27690];
  v6 = a4;
  v7 = [v5 components:4 fromDate:a3];
  v8 = [MEMORY[0x277D27690] components:4 fromDate:v6];

  v9 = [MEMORY[0x277D27690] components:4 fromDateComponents:v7 toDateComponents:v8 options:0];
  v10 = [v9 year];

  return v10;
}

+ (id)_locationNodesForTimeTitleFromLocationNodes:(id)a3
{
  v3 = a3;
  v4 = [v3 anyObject];
  if (v4)
  {
    v5 = [PGGraphNodeCollection alloc];
    v6 = [v4 graph];
    v7 = [(MAElementCollection *)v5 initWithSet:v3 graph:v6];

    v8 = +[PGGraphAreaNode filter];
    v9 = [v8 relation];
    v10 = [(MANodeCollection *)PGGraphAreaNodeCollection nodesRelatedToNodes:v7 withRelation:v9];

    v11 = +[PGGraphLocationNode filter];
    v12 = [v11 relation];
    v13 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:v7 withRelation:v12];

    v14 = [v10 addressNodes];
    v15 = [v14 cityNodes];
    v16 = [v13 collectionByFormingUnionWith:v15];

    v17 = [v16 temporarySet];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  return v17;
}

+ (id)significantDateNodesFromMomentNodes:(id)a3 dateFormatterType:(unint64_t)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PGTimeTitleUtility_significantDateNodesFromMomentNodes_dateFormatterType___block_invoke;
  aBlock[3] = &__block_descriptor_40_e35___NSString_16__0__PGGraphDateNode_8l;
  aBlock[4] = a4;
  v30 = _Block_copy(aBlock);
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v31 = [MEMORY[0x277CBEB58] set];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = [v12 numberOfAssets];
        v9 += v13;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __76__PGTimeTitleUtility_significantDateNodesFromMomentNodes_dateFormatterType___block_invoke_2;
        v36[3] = &unk_278881058;
        v37 = v31;
        v39 = v30;
        v38 = v6;
        v40 = v13;
        [v12 enumerateDateNodesUsingBlock:v36];
      }

      v8 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v8);
    v14 = v9;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [v6 allKeys];
  v16 = [v15 count];
  if (v16 >= 2)
  {
    v17 = v16;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [v6 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * j)];
          v24 = [v23 objectForKeyedSubscript:@"numberOfAssets"];
          v25 = [v24 unsignedIntegerValue];

          if (v25 / v14 < 0.4 / v17)
          {
            v26 = [v23 objectForKeyedSubscript:@"dateNodes"];
            [v31 minusSet:v26];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v20);
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v31;
}

id __76__PGTimeTitleUtility_significantDateNodesFromMomentNodes_dateFormatterType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 dayNodes];
  v6 = [v5 anyNode];
  v7 = [v6 name];

  v8 = [v3 collection];
  v9 = [v8 monthNodes];
  v10 = [v9 anyNode];
  v11 = [v10 name];

  v12 = [v3 collection];

  v13 = [v12 yearNodes];
  v14 = [v13 anyNode];
  v15 = [v14 name];

  v16 = *(a1 + 32);
  if (v16 <= 6)
  {
    if (((1 << v16) & 0x33) != 0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", v15, v11, v7];
    }

    else
    {
      if (((1 << v16) & 0x44) == 0)
      {
        v17 = v15;
        goto LABEL_7;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v15, v11, v20];
    }
    v17 = ;
LABEL_7:
    v18 = v17;
    goto LABEL_8;
  }

  v18 = 0;
LABEL_8:

  return v18;
}

void __76__PGTimeTitleUtility_significantDateNodesFromMomentNodes_dateFormatterType___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  [*(a1 + 32) addObject:v10];
  v3 = (*(*(a1 + 48) + 16))();
  v4 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"dateNodes"];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v6 = [MEMORY[0x277CBEB58] set];

    [v4 setObject:v6 forKeyedSubscript:@"dateNodes"];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v3];
    v5 = v6;
  }

  v7 = [v4 objectForKeyedSubscript:@"numberOfAssets"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56) + v8];
  [v4 setObject:v9 forKeyedSubscript:@"numberOfAssets"];

  [v5 addObject:v10];
}

+ (id)_dateNodesFromMomentNodes:(id)a3 featuredYearNodes:(id)a4 momentsLocalStartDate:(id *)a5 momentsLocalEndDate:(id *)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if ([v9 count])
  {
    v11 = MEMORY[0x277CBEB98];
    v37 = v10;
    if (v10)
    {
      v12 = [v10 years];
      v13 = [v11 setWithArray:v12];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    *a5 = [MEMORY[0x277CBEAA8] distantFuture];
    *a6 = [MEMORY[0x277CBEAA8] distantPast];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v38 = v9;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          v20 = [v19 localStartDate];
          v21 = [v19 localEndDate];
          if (![v13 count])
          {
            *a5 = [v20 earlierDate:*a5];
LABEL_17:
            *a6 = [v21 laterDate:*a6];
            goto LABEL_18;
          }

          v22 = [MEMORY[0x277D27690] yearFromDate:v20];
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
          v24 = [v13 containsObject:v23];

          if (v24)
          {
            *a5 = [v20 earlierDate:*a5];
          }

          v25 = [MEMORY[0x277D27690] yearFromDate:v21];
          v26 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
          v27 = [v13 containsObject:v26];

          if (v27)
          {
            goto LABEL_17;
          }

LABEL_18:
        }

        v16 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v16);
    }

    v28 = [PGGraphMomentNodeCollection alloc];
    v29 = [obj anyObject];
    v30 = [v29 graph];
    v31 = [(MAElementCollection *)v28 initWithSet:obj graph:v30];

    v32 = [(PGGraphMomentNodeCollection *)v31 dateNodes];
    v10 = v37;
    if (v37)
    {
      v33 = [v37 dateNodes];
      v34 = [v32 collectionByIntersecting:v33];

      v32 = v34;
    }

    v9 = v38;
    v14 = [v32 set];
  }

  else
  {
    *a5 = 0;
    *a6 = 0;
    v14 = [MEMORY[0x277CBEB98] set];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_commonLocationLabelForLocationNodes:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 label];
        v12 = [PGCommonTitleUtility dimensionForLabel:v11];

        if (v6 < v12)
        {
          v13 = [v10 label];

          v6 = v12;
          v7 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)_hasReachedNumberVisitsPerYear:(unint64_t)a3 inEvents:(id)a4 withLocationNodes:(id)a5 startDateNode:(id)a6 endDateNode:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a1 _commonLocationLabelForLocationNodes:v13];
  if (v16)
  {
    v29 = v12;
    v17 = [v14 month];
    v18 = [v14 isEqual:v15];
    v19 = v17;
    if ((v18 & 1) == 0)
    {
      v19 = [v15 month];
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __106__PGTimeTitleUtility__hasReachedNumberVisitsPerYear_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke;
    aBlock[3] = &unk_278881010;
    v34 = v17;
    v35 = v19;
    v31 = v16;
    v32 = v13;
    v33 = &v37;
    v36 = a3;
    v20 = _Block_copy(aBlock);
    v21 = [v14 collection];
    v22 = [v21 yearNodes];
    v23 = [v22 anyNode];

    if ([v14 isEqual:v15])
    {
      v24 = 0;
    }

    else
    {
      v26 = [v15 collection];
      v27 = [v26 yearNodes];
      v24 = [v27 anyNode];
    }

    v20[2](v20, v23);
    if (v24 && ([v24 isSameNodeAsNode:v23] & 1) == 0)
    {
      v20[2](v20, v24);
    }

    v25 = v38[3] >= a3;

    _Block_object_dispose(&v37, 8);
    v12 = v29;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __106__PGTimeTitleUtility__hasReachedNumberVisitsPerYear_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __106__PGTimeTitleUtility__hasReachedNumberVisitsPerYear_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_2;
  v6[3] = &unk_278880FE8;
  v10 = *(a1 + 56);
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v11 = *(a1 + 72);
  [a2 enumerateNeighborNodesThroughEdgesWithLabel:@"YEAR" domain:400 usingBlock:v6];
}

void __106__PGTimeTitleUtility__hasReachedNumberVisitsPerYear_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 month];
  if (v6 != *(a1 + 56) && v6 != *(a1 + 64))
  {
    v7 = [v5 collection];
    v8 = [v7 momentNodes];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __106__PGTimeTitleUtility__hasReachedNumberVisitsPerYear_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_3;
    v11[3] = &unk_278880FC0;
    v12 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = 1;
    v10 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    [v8 enumerateNodesUsingBlock:v11];

    if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 72))
    {
      *a3 = 1;
    }
  }
}

void __106__PGTimeTitleUtility__hasReachedNumberVisitsPerYear_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 collection];
  v6 = [v5 addressNodes];
  v7 = [v6 deepParentLocationNodesWithLabel:*(a1 + 32)];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __106__PGTimeTitleUtility__hasReachedNumberVisitsPerYear_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_4;
  v10[3] = &unk_278880F98;
  v8 = *(a1 + 40);
  v14 = *(a1 + 56);
  v9 = *(a1 + 48);
  v11 = v8;
  v12 = v9;
  v13 = a3;
  [v7 enumerateNodesUsingBlock:v10];
}

uint64_t __106__PGTimeTitleUtility__hasReachedNumberVisitsPerYear_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (*(a1 + 56) == 1 && result != 0)
  {
    v7 = *(a1 + 48);
    ++*(*(*(a1 + 40) + 8) + 24);
    *v7 = 1;
    *a3 = 1;
  }

  return result;
}

+ (BOOL)_hasReachedNumberVisitsPerMonth:(unint64_t)a3 inEvents:(id)a4 withLocationNodes:(id)a5 startDateNode:(id)a6 endDateNode:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a1 _commonLocationLabelForLocationNodes:v13];
  if (v16)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 1;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __107__PGTimeTitleUtility__hasReachedNumberVisitsPerMonth_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke;
    v26 = &unk_278880F70;
    v31 = a1;
    v27 = v12;
    v28 = v16;
    v29 = v13;
    v30 = &v33;
    v32 = a3;
    v17 = _Block_copy(&v23);
    v18 = [v14 month];
    v19 = v18;
    if (([v14 isEqual:v15] & 1) == 0)
    {
      v19 = [v15 month];
    }

    v17[2](v17, v18);
    v20 = v34;
    if (v18 != v19 && v34[3] < a3)
    {
      v17[2](v17, v19);
      v20 = v34;
    }

    v21 = v20[3] >= a3;

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __107__PGTimeTitleUtility__hasReachedNumberVisitsPerMonth_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__PGTimeTitleUtility__hasReachedNumberVisitsPerMonth_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_2;
  v7[3] = &unk_278880F48;
  v11 = a2;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  v12 = *(a1 + 72);
  [v3 _enumerateNeighborMomentNodesOfMomentNodes:v4 usingBlock:v7];
}

void __107__PGTimeTitleUtility__hasReachedNumberVisitsPerMonth_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_2(void *a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v7 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__PGTimeTitleUtility__hasReachedNumberVisitsPerMonth_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_3;
  v13[3] = &unk_278880F20;
  v8 = a1[7];
  v13[4] = &v14;
  v13[5] = v8;
  [v7 enumerateDateNodesUsingBlock:v13];
  if (v15[3])
  {
    v9 = [v7 collection];
    v10 = [v9 addressNodes];
    v11 = [v10 deepParentLocationNodesWithLabel:a1[4]];
    v12 = [v11 temporarySet];

    if ([v12 count])
    {
      if ([v12 intersectsSet:a1[5]])
      {
        ++*(*(a1[6] + 8) + 24);
      }

      if (*(*(a1[6] + 8) + 24) >= a1[8])
      {
        *a4 = 1;
      }
    }
  }

  else
  {
    *a3 = 1;
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __107__PGTimeTitleUtility__hasReachedNumberVisitsPerMonth_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 month];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (void)_enumerateNeighborMomentNodesOfMomentNodes:(id)a3 usingBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 anyObject];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PGTimeTitleUtility__enumerateNeighborMomentNodesOfMomentNodes_usingBlock___block_invoke;
  aBlock[3] = &unk_278880EF8;
  v8 = v5;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v16 = v18;
  v17 = &v20;
  v11 = _Block_copy(aBlock);
  v11[2](v11, 1);
  if ((v21[3] & 1) == 0)
  {
    v11[2](v11, 0);
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);
}

void __76__PGTimeTitleUtility__enumerateNeighborMomentNodesOfMomentNodes_usingBlock___block_invoke(uint64_t a1, char a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__PGTimeTitleUtility__enumerateNeighborMomentNodesOfMomentNodes_usingBlock___block_invoke_2;
  v6[3] = &unk_278880ED0;
  v8 = a2;
  v7 = *(a1 + 32);
  v3 = _Block_copy(v6);
  v4 = *(a1 + 40);
  do
  {
    v5 = v4;
    v4 = v3[2](v3, v4);

    if (!v4)
    {
      break;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v4, *(*(a1 + 56) + 8) + 24, *(*(a1 + 64) + 8) + 24);
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      break;
    }
  }

  while (!*(*(*(a1 + 56) + 8) + 24));
}

id __76__PGTimeTitleUtility__enumerateNeighborMomentNodesOfMomentNodes_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  do
  {
    if (*(a1 + 40))
    {
      [v4 nextMomentNode];
    }

    else
    {
      [v4 previousMomentNode];
    }
    v5 = ;

    if (!v5)
    {
      break;
    }

    v4 = v5;
  }

  while (([*(a1 + 32) containsObject:v5] & 1) != 0);

  return v5;
}

+ (BOOL)_momentNodes:(id)a3 coverCompleteMonth:(BOOL)a4 coverCompleteYear:(BOOL)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 count])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v8 = [MEMORY[0x277CCAB58] indexSet];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v10)
    {
      v11 = *v29;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __72__PGTimeTitleUtility__momentNodes_coverCompleteMonth_coverCompleteYear___block_invoke;
        v21[3] = &unk_278880EA8;
        v26 = a4;
        v27 = a5;
        v22 = v8;
        v25 = a1;
        v14 = v9;
        v23 = v14;
        v24 = &v32;
        [v13 enumerateDateNodesUsingBlock:v21];
        LOBYTE(v13) = *(v33 + 24);

        if (v13)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v15 = *(v33 + 24);
    v16 = v15 ^ 1;
    _Block_object_dispose(&v32, 8);
    v7 = v19;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void __72__PGTimeTitleUtility__momentNodes_coverCompleteMonth_coverCompleteYear___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 64) == 1)
  {
    v7 = [v5 collection];
    v8 = [v7 monthNodes];
  }

  else
  {
    if (*(a1 + 65) != 1)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v7 = [v5 collection];
    v8 = [v7 yearNodes];
  }

  v9 = v8;
  v10 = [v8 anyNode];

LABEL_7:
  v11 = [v10 calendarUnitValue];
  v12 = [*(a1 + 32) containsIndex:v11];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && (v12 & 1) == 0)
  {
    [*(a1 + 32) addIndex:v11];
    v13 = *(a1 + 56);
    v14 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__PGTimeTitleUtility__momentNodes_coverCompleteMonth_coverCompleteYear___block_invoke_2;
    v17[3] = &unk_278880E80;
    v21 = *(a1 + 64);
    v15 = v6;
    v22 = *(a1 + 65);
    v16 = *(a1 + 48);
    v18 = v15;
    v19 = v16;
    v20 = v11;
    [v13 _enumerateNeighborMomentNodesOfMomentNodes:v14 usingBlock:v17];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }
}

void __72__PGTimeTitleUtility__momentNodes_coverCompleteMonth_coverCompleteYear___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__PGTimeTitleUtility__momentNodes_coverCompleteMonth_coverCompleteYear___block_invoke_3;
  v11[3] = &unk_278880E58;
  v16 = *(a1 + 56);
  v8 = *(a1 + 32);
  v17 = *(a1 + 57);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = a4;
  [a2 enumerateDateNodesUsingBlock:v11];
  *a3 = 1;
}

void __72__PGTimeTitleUtility__momentNodes_coverCompleteMonth_coverCompleteYear___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  if (*(a1 + 64) == 1)
  {
    v5 = [*(a1 + 32) collection];
    v6 = [v5 monthNodes];
LABEL_5:
    v7 = v6;
    v8 = [v6 anyNode];

    goto LABEL_7;
  }

  if (*(a1 + 65) == 1)
  {
    v5 = [*(a1 + 32) collection];
    v6 = [v5 yearNodes];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:
  *(*(*(a1 + 40) + 8) + 24) = [v8 calendarUnitValue] == *(a1 + 48);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
    **(a1 + 56) = 1;
  }
}

+ (unint64_t)_dateIntervalFormatterTypeWithEventNodes:(id)a3 allowedFormats:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 count])
  {
    v7 = v4 & 1;
    if ((v4 & 0xE) != 0)
    {
      v8 = [a1 _eventNodesCoverCompleteMonth:v6];
      if ((v4 & 1) == 0 || v8)
      {
        v9 = 2;
        if ((v4 & 2) == 0)
        {
          v9 = v4 & 1;
        }

        if ((v4 & 8) != 0)
        {
          v7 = 6;
        }

        else
        {
          v7 = v9;
        }

        if ((v4 & 4) != 0)
        {
          v10 = [a1 _eventNodesCoverCompleteYear:v6];
          if ((v4 & 0xB) != 0)
          {
            v11 = v10;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            v7 = 3;
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)yearIsNeededForDisplayingDate:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x277D27690];
  v4 = a3;
  v5 = [v3 currentLocalDate];
  v6 = [v3 compareDate:v5 toDate:v4 toUnitGranularity:4];

  return v6 != 0;
}

+ (BOOL)_yearIsNeededForDisplayingDate:(id)a3
{
  v3 = MEMORY[0x277D27690];
  v4 = a3;
  v5 = [v3 currentLocalDate];
  v6 = [v3 compareDate:v5 toDate:v4 toUnitGranularity:4];

  return v6 != 0;
}

+ (id)numberOfYearsAgoWithMomentNodes:(id)a3 relativeToDateComponents:(id)a4 useOrdinal:(BOOL)a5
{
  v5 = a5;
  v6 = [a1 _numberOfYearsAgoWithEventNodes:a3 relativeToDateComponents:a4];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v8 setNumberStyle:6];
      v9 = [v8 stringFromNumber:v7];
    }

    else
    {
      v9 = [v6 stringValue];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_numberOfYearsAgoWithEventNodes:(id)a3 relativeToDateComponents:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__18218;
  v40 = __Block_byref_object_dispose__18219;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__18218;
  v34 = __Block_byref_object_dispose__18219;
  v35 = 0;
  v7 = [v6 year];
  v8 = [v6 month];
  v9 = [v6 day];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __79__PGTimeTitleUtility__numberOfYearsAgoWithEventNodes_relativeToDateComponents___block_invoke;
        v25[3] = &unk_278880E30;
        v25[6] = v9;
        v25[7] = v8;
        v25[4] = &v30;
        v25[5] = &v36;
        [v13 enumerateDateNodesUsingBlock:v25];
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v10);
  }

  v14 = v37[5];
  if (v14)
  {
    goto LABEL_12;
  }

  v15 = +[PGLogging sharedLogging];
  v16 = [v15 loggingConnection];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "No matching date node found. Falling back to any date node from event nodes", buf, 2u);
  }

  objc_storeStrong(v37 + 5, v31[5]);
  v14 = v37[5];
  if (v14)
  {
LABEL_12:
    v17 = [v14 year];
    if (v17 > v7)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v17 - v7];
      goto LABEL_18;
    }
  }

  else
  {
    v19 = +[PGLogging sharedLogging];
    v20 = [v19 loggingConnection];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cannot generate ordinalYearsAgo string. Reason: No date node found.", buf, 2u);
    }
  }

  v18 = 0;
LABEL_18:
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void __79__PGTimeTitleUtility__numberOfYearsAgoWithEventNodes_relativeToDateComponents___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1[4] + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  v12 = v6;
  if (!v9)
  {
    objc_storeStrong(v8, a2);
    v6 = v12;
  }

  v10 = [v6 month];
  v11 = [v12 day];
  if (a1[6] == v10 && a1[7] == v11)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)peopleTimeTitleWithEventNodes:(id)a3 requireMultipleYears:(BOOL)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    v13 = 0;
    goto LABEL_22;
  }

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestampUTCStart" ascending:1];
  v38[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v9 = [v8 firstObject];
  v10 = [v8 lastObject];
  v11 = [v9 localStartDate];
  if ([v9 isSameNodeAsNode:v10])
  {
    v12 = v11;
  }

  else
  {
    v12 = [v10 localStartDate];
  }

  v14 = v12;
  if (v11)
  {
    v15 = [v9 graph];
    v16 = [v15 dateNodeForLocalDate:v11];
    v17 = v16;
    if (v14 == v11)
    {
      v18 = v16;
    }

    else
    {
      v18 = [v15 dateNodeForLocalDate:v14];
    }

    v19 = v18;
    v37 = v15;
    v20 = [v17 yearNode];
    v35 = v20;
    v36 = v19;
    if ([v17 isSameNodeAsNode:v19])
    {
      v21 = v20;
      [v21 calendarUnitValue];
    }

    else
    {
      v32 = a4;
      [v19 yearNode];
      v21 = v22 = v20;
      v23 = [v22 calendarUnitValue];
      if (v22 != v21)
      {
        v24 = v23;
        v31 = v10;
        v25 = [v21 calendarUnitValue];
        v26 = objc_alloc_init(MEMORY[0x277D3AC40]);
        v27 = v26;
        if (v24 != v25)
        {
          v33 = [v26 stringFromStartDate:v11 endDate:v14 type:3];
          v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v34 = [v28 localizedStringForKey:@"PGPeopleSubtitleFormatWithYears %@" value:@"PGPeopleSubtitleFormatWithYears %@" table:@"Localizable"];

          v13 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v34, v33];

          v10 = v31;
          goto LABEL_20;
        }

        v10 = v31;
        if (v32)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }
    }

    v27 = objc_alloc_init(MEMORY[0x277D3AC40]);
    if (a4)
    {
LABEL_18:
      v13 = 0;
      goto LABEL_20;
    }

LABEL_16:
    v13 = [v27 stringFromStartDate:v11 endDate:v14 type:3];
LABEL_20:

    goto LABEL_21;
  }

  v13 = 0;
LABEL_21:

LABEL_22:
  v29 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_splitTimeTitleWithLocalStartDate:(id)a3 endDate:(id)a4 startDateNode:(id)a5 endDateNode:(id)a6 allowedFormats:(unint64_t)a7 locale:(id)a8
{
  v9 = a7;
  v14 = a3;
  v41 = a4;
  v15 = a5;
  v16 = a6;
  v42 = a8;
  if (v15)
  {
    v17 = [v15 year];
    v18 = [v15 month];
  }

  else
  {
    v17 = [MEMORY[0x277D27690] yearFromDate:v14];
    v18 = [MEMORY[0x277D27690] monthFromDate:v14];
  }

  v39 = v18;
  v40 = v14;
  if (v16)
  {
    v19 = [v16 year];
    v20 = [v16 month];
  }

  else
  {
    v19 = [MEMORY[0x277D27690] yearFromDate:v41];
    v20 = [MEMORY[0x277D27690] monthFromDate:v41];
  }

  v38 = v20;
  if (v9)
  {
    v22 = 0;
    v23 = 0;
    v21 = 4;
LABEL_14:
    v24 = 3;
    goto LABEL_15;
  }

  if ((v9 & 2) != 0)
  {
    v22 = 0;
    v23 = 0;
    v21 = 6;
    goto LABEL_14;
  }

  if ((v9 & 4) != 0)
  {
    v36 = [a1 _canUseOverTheYearsForStartYear:v17 endYear:v19];
    v23 = 0;
    v24 = 0;
    v21 = 3;
    if ((v9 & 0x10) != 0)
    {
      v22 = 0;
      if ((v36 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_41;
    }

    v22 = 0;
  }

  else
  {
    if ((v9 & 0x10) != 0)
    {
      v21 = 0;
LABEL_41:
      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v37 localizedStringForKey:@"PGTimeTitleFormatOverTheYears" value:@"PGTimeTitleFormatOverTheYears" table:@"Localizable"];

      v23 = 1;
      v24 = v21;
      v21 = 0;
      goto LABEL_15;
    }

    v24 = 0;
    v22 = 0;
    v21 = 0;
    v23 = 1;
  }

LABEL_15:
  if (v17 != v19 && v22 == 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v28 = objc_alloc_init(MEMORY[0x277D3AC40]);
  [v28 setLocale:v42];
  if (v23)
  {
    v29 = v40;
    v30 = v41;
    if (!v22)
    {
      goto LABEL_32;
    }

LABEL_31:
    [v27 addObject:v22];
    goto LABEL_32;
  }

  v32 = v39 == v38 && v17 == v19;
  v29 = v40;
  v30 = v41;
  v33 = [v28 stringFromStartDate:v40 endDate:v41 type:v21 showLongMonthFormatIfNeeded:v32];

  v22 = v33;
  if (v33)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v26)
  {
    v34 = [v28 stringFromStartDate:v29 endDate:v30 type:v26 showLongMonthFormatIfNeeded:0];
    if (v34)
    {
      [v27 addObject:v34];
    }
  }

  return v27;
}

+ (id)splitTimeTitleWithDateInterval:(id)a3 allowedFormats:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 startDate];
  v8 = [v6 endDate];

  v9 = [a1 _splitTimeTitleWithLocalStartDate:v7 endDate:v8 startDateNode:0 endDateNode:0 allowedFormats:a4 locale:0];

  return v9;
}

+ (id)splitTimeTitleWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 momentNodes];
  v6 = [v4 allowedFormats];
  v25 = 0;
  v26 = 0;
  v7 = [a1 _dateNodesFromMomentNodes:v5 featuredYearNodes:0 momentsLocalStartDate:&v26 momentsLocalEndDate:&v25];
  v8 = v26;
  v9 = v25;
  v23 = 0;
  v24 = 0;
  [PGCommonTitleUtility startAndEndDateNodeFromDateNodes:v7 startDateNode:&v24 endDateNode:&v23];
  v10 = v24;
  v11 = v23;
  if (!v8 || ![v7 count])
  {
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_14;
  }

  if ([v4 filterDates] && objc_msgSend(v5, "count") == 1)
  {
    v12 = [v10 dayNode];
    if ([v10 isSameNodeAsNode:v11])
    {
      v22 = v12;
      [v22 calendarUnitValue];
    }

    else
    {
      v22 = [v11 dayNode];
      v14 = [v12 calendarUnitValue];
      if (v22 != v12 && v14 != [v22 calendarUnitValue])
      {
        v20 = [MEMORY[0x277D27690] components:32 fromDate:v9];
        v19 = [v20 hour];

        if (v19 > 11)
        {
          goto LABEL_12;
        }
      }
    }

    v21 = v12;
    v15 = v8;

    v16 = v10;
    v11 = v16;
    v9 = v15;
    v12 = v21;
LABEL_12:
  }

  v17 = [v4 locale];
  v13 = [a1 _splitTimeTitleWithLocalStartDate:v8 endDate:v9 startDateNode:v10 endDateNode:v11 allowedFormats:v6 locale:v17];

LABEL_14:

  return v13;
}

+ (id)timeTitleWithDateInterval:(id)a3 allowedFormats:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 startDate];
  v8 = [v6 endDate];

  v9 = [MEMORY[0x277D27690] yearFromDate:v7];
  v10 = [MEMORY[0x277D27690] yearFromDate:v8];
  v11 = ((a4 << 61) >> 63) & 3;
  if ((a4 & 2) != 0)
  {
    v11 = 2;
  }

  v12 = (a4 & 1) == 0 && (a4 & 6) == 0;
  if (a4)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  if ((a4 & 0x10) != 0)
  {
    if ((v12 | [a1 _canUseOverTheYearsForStartYear:v9 endYear:v10]))
    {
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v14 localizedStringForKey:@"PGTimeTitleFormatOverTheYears" value:@"PGTimeTitleFormatOverTheYears" table:@"Localizable"];
      goto LABEL_21;
    }
  }

  else if ((a4 & 0x20) != 0)
  {
    v14 = [MEMORY[0x277D27690] currentLocalDate];
    v15 = [a1 numberOfYearsFromDate:v7 toDate:v14];
    v16 = [a1 numberOfYearsFromDate:v8 toDate:v14];
    if (v16 == v15 && (v16 - 1) < 0x32)
    {
      v17 = [MEMORY[0x277D27690] monthFromDate:v14];
      v18 = [MEMORY[0x277D27690] monthFromDate:v8];
      if (v15 != 1 || v17 == v18)
      {
        v21 = MEMORY[0x277CCACA8];
        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = [v19 localizedStringForKey:@"PGMemoryTitleFormatWithNumberOfYears %lu" value:@"PGMemoryTitleFormatWithNumberOfYears %lu" table:@"Localizable"];
        v20 = [v21 localizedStringWithFormat:v22, v15];
      }

      else
      {
        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"PGRelativeDateLastYear" value:@"PGRelativeDateLastYear" table:@"Localizable"];
      }

LABEL_21:
      if (v20)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

LABEL_22:
  v23 = objc_alloc_init(MEMORY[0x277D3AC40]);
  v20 = [v23 stringFromStartDate:v7 endDate:v8 type:v13];

LABEL_23:

  return v20;
}

+ (id)_featuredDateNodesFromDateNodes:(id)a3 featuredYearNodes:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PGGraphDateNodeCollection alloc];
  v8 = [v5 graph];
  v9 = [(MAElementCollection *)v7 initWithSet:v6 graph:v8];

  v10 = [v5 dateNodes];

  v11 = [(MAElementCollection *)v9 collectionByIntersecting:v10];

  v12 = [v11 set];

  return v12;
}

+ (id)timeTitleWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 momentNodes];
  v6 = [v4 allowedFormats];
  v117 = [MEMORY[0x277D27690] currentLocalDate];
  if (![v5 count])
  {
    if ((v6 & 0x10) != 0)
    {
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v30 localizedStringForKey:@"PGTimeTitleFormatOverTheYears" value:@"PGTimeTitleFormatOverTheYears" table:@"Localizable"];
    }

    else
    {
      v16 = 0;
    }

    v31 = v16;
    goto LABEL_74;
  }

  v7 = [v4 locationNodes];
  v8 = [a1 _locationNodesForTimeTitleFromLocationNodes:v7];

  v100 = [v4 filterDates];
  v9 = [v4 featuredYearNodes];
  v122 = 0;
  v123[0] = 0;
  v10 = [a1 _dateNodesFromMomentNodes:v5 featuredYearNodes:v9 momentsLocalStartDate:v123 momentsLocalEndDate:&v122];
  v11 = v123[0];
  v116 = v122;

  v120 = 0;
  v121 = 0;
  [PGCommonTitleUtility startAndEndDateNodeFromDateNodes:v10 startDateNode:&v121 endDateNode:&v120];
  v12 = v121;
  v13 = v120;
  v14 = [v12 monthNode];
  v115 = v14;
  if ([v12 isSameNodeAsNode:v13])
  {
    v15 = v14;
  }

  else
  {
    v15 = [v13 monthNode];
  }

  v114 = v15;
  v17 = [v12 yearNode];
  v113 = v17;
  if ([v12 isSameNodeAsNode:v13])
  {
    v18 = v17;
  }

  else
  {
    v18 = [v13 yearNode];
  }

  v112 = v18;
  v104 = [a1 numberOfYearsFromDate:v11 toDate:v117];
  v98 = [MEMORY[0x277D27690] monthFromDate:v117];
  v19 = [v115 calendarUnitValue];
  v109 = v13;
  v110 = v12;
  v93 = v19;
  if (v115 != v114)
  {
    v19 = [v114 calendarUnitValue];
  }

  v102 = v19;
  v20 = [a1 numberOfYearsFromDate:v116 toDate:v117];
  v95 = [MEMORY[0x277D27690] yearFromDate:v117];
  v108 = [v17 calendarUnitValue];
  v21 = v108;
  if (v113 != v112)
  {
    v21 = [v112 calendarUnitValue];
  }

  v106 = v10;
  v107 = v8;
  v111 = v5;
  if ([v8 count])
  {
    v22 = 0;
    if ([v5 count])
    {
      v23 = v11;
      if (v11)
      {
        v91 = v21;
        v24 = [v12 localDate];
        v25 = [v109 localDate];
        [v25 timeIntervalSinceDate:v24];
        v27 = vcvtpd_u64_f64(v26 / 86400.0) + 1;
        v28 = v27 < 2 || (v6 & 0xE) == 0;
        v22 = v6 & 1;
        if (!v28)
        {
          v29 = [a1 _hasReachedNumberVisitsPerMonth:3 inEvents:v111 withLocationNodes:v107 startDateNode:v12 endDateNode:v109];
          if (v27 > 9 || (v22 = v6 & 1, (v29 & 1) == 0))
          {
            v55 = 2;
            if ((v6 & 2) == 0)
            {
              v55 = v6 & 1;
            }

            if ((v6 & 8) != 0)
            {
              v22 = 6;
            }

            else
            {
              v22 = v55;
            }

            if ((v6 & 4) != 0 && v27 >= 5 && ([a1 _hasReachedNumberVisitsPerYear:3 inEvents:v111 withLocationNodes:v107 startDateNode:v12 endDateNode:v109] & 1) == 0)
            {
              v56 = [v12 isEqual:v109];
              if (!(v108 == v91 ? v56 : 1))
              {
                v22 = 3;
              }
            }
          }
        }

        v5 = v111;
        v21 = v91;
      }
    }

    else
    {
      v23 = v11;
    }
  }

  else
  {
    v23 = v11;
    v22 = 0;
  }

  if ((v6 & 0x40) != 0)
  {
    v32 = 4;
  }

  else
  {
    v32 = v22;
  }

  if (!v32)
  {
    v32 = [a1 _dateIntervalFormatterTypeWithEventNodes:v5 allowedFormats:v6];
  }

  v33 = [a1 _canUseOverTheYearsForStartYear:v108 endYear:v21];
  if ((v6 & 0x10) != 0 && (!v32 || v32 == 3 && v33))
  {
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = v34;
    v36 = @"PGTimeTitleFormatOverTheYears";
    goto LABEL_47;
  }

  if ((v6 & 0x20) == 0 || v20 != v104 || (v20 - 1) > 0x31)
  {
    if (v23)
    {
      if (v32 == 1)
      {
        v37 = 1;
        goto LABEL_65;
      }

      if (v98 == v102 && v95 == v21)
      {
        v40 = v6 & 1;
      }

      else
      {
        v40 = 0;
      }

      if ((v40 & 1) == 0 && (v6 & 2) != 0 && v95 == v21)
      {
        v37 = 2;
        goto LABEL_65;
      }

      if (v40)
      {
        v37 = 1;
      }

      else
      {
        v37 = v32;
      }

      if (v37)
      {
LABEL_65:
        v43 = v23;
        v45 = v106;
        v44 = v107;
        v105 = v37;
        if (!v100)
        {
          goto LABEL_107;
        }

        if (v37 > 5 || ((1 << v37) & 0x32) == 0 || [v111 count] != 1)
        {
          if (![v4 filterForSignificantDateNodes])
          {
            goto LABEL_107;
          }

          if (v37 == 3)
          {
            goto LABEL_81;
          }

          if (v37 != 2)
          {
            goto LABEL_107;
          }

          if (v93 == v102)
          {
LABEL_81:
            if (v108 == v21)
            {
LABEL_107:
              v35 = objc_alloc_init(MEMORY[0x277D3AC40]);
              v71 = [v4 locale];
              [v35 setLocale:v71];

              if ((v6 & 0x40) != 0)
              {
                v46 = v43;
              }

              else
              {
                v46 = v116;
              }

              v38 = [v35 stringFromStartDate:v43 endDate:v46 type:v105];
              if (v105 == 3 && v108 != v21 && [v4 usePeopleSubtitleFormatWithYears])
              {
                v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v73 = [v72 localizedStringForKey:@"PGPeopleSubtitleFormatWithYears %@" value:@"PGPeopleSubtitleFormatWithYears %@" table:@"Localizable"];

                v74 = [MEMORY[0x277CCACA8] stringWithFormat:v73, v38];

                v38 = v74;
              }

              goto LABEL_60;
            }
          }

          v49 = [a1 significantDateNodesFromMomentNodes:v111 dateFormatterType:v37];
          v50 = [v4 featuredYearNodes];
          v51 = [v50 count];

          if (v51)
          {
            v52 = [v4 featuredYearNodes];
            v53 = [a1 _featuredDateNodesFromDateNodes:v49 featuredYearNodes:v52];

            v49 = v53;
          }

          v54 = [v49 count];
          if (v54 == [v106 count])
          {

            goto LABEL_107;
          }

          v118 = 0;
          v119 = 0;
          v103 = v49;
          [PGCommonTitleUtility startAndEndDateNodeFromDateNodes:v49 startDateNode:&v119 endDateNode:&v118];
          v75 = v119;
          v76 = v118;
          v101 = v75;
          v77 = [v75 localDate];
          v99 = v76;
          v78 = [v76 localDate];
          v38 = 0;
          v94 = v77;
          if (v77)
          {
            v79 = v78;
            if (v78)
            {
              v80 = objc_alloc_init(MEMORY[0x277D3AC40]);
              [v4 locale];
              v82 = v81 = v43;
              [v80 setLocale:v82];

              v97 = v81;
              v38 = [v80 stringFromStartDate:v81 endDate:v116 type:v105];
              v92 = v80;
              v83 = [v80 stringFromStartDate:v94 endDate:v79 type:v105];
              v84 = [v83 length];
              if (v84 < [v38 length])
              {
                v85 = v83;

                v38 = v85;
              }

              if (v105 == 3 && (v86 = [MEMORY[0x277D27690] yearFromDate:v94], v86 != objc_msgSend(MEMORY[0x277D27690], "yearFromDate:", v79)))
              {
                v87 = v92;
                if ([v4 usePeopleSubtitleFormatWithYears])
                {
                  v88 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v90 = [v88 localizedStringForKey:@"PGPeopleSubtitleFormatWithYears %@" value:@"PGPeopleSubtitleFormatWithYears %@" table:@"Localizable"];

                  v89 = [MEMORY[0x277CCACA8] stringWithFormat:v90, v38];

                  v38 = v89;
                }

                v43 = v97;
              }

              else
              {
                v43 = v81;
                v87 = v92;
              }

              v45 = v106;
            }
          }

          else
          {
            v79 = v78;
          }

          v69 = v94;
          goto LABEL_106;
        }

        v47 = [v110 dayNode];
        v103 = v47;
        if ([v110 isSameNodeAsNode:v109])
        {
          v101 = v47;
          [v101 calendarUnitValue];
        }

        else
        {
          v58 = [v109 dayNode];
          v59 = [v47 calendarUnitValue];
          v101 = v58;
          if (v58 != v47)
          {
            v60 = v59;
            v61 = [v58 calendarUnitValue];
            v62 = v43;
            v63 = v61;
            v96 = v62;
            v64 = v62;
            if (v60 != v63)
            {
              v65 = [MEMORY[0x277D27690] components:32 fromDate:v116];
              v66 = [v65 hour];

              if (v66 >= 12)
              {
                v67 = v116;

                v64 = v67;
              }
            }

            v68 = v96;
            goto LABEL_105;
          }
        }

        v64 = v43;
        v68 = v43;
LABEL_105:
        v69 = objc_alloc_init(MEMORY[0x277D3AC40]);
        v70 = [v4 locale];
        [v69 setLocale:v70];

        v43 = v68;
        v99 = v64;
        v38 = [v69 stringFromStartDate:v68 endDate:v64 type:v105];
        v44 = v107;
LABEL_106:

        if (!v38)
        {
          goto LABEL_107;
        }

LABEL_72:
        v46 = v116;
        goto LABEL_73;
      }
    }

    v38 = 0;
    v43 = v23;
    v45 = v106;
    v44 = v107;
    goto LABEL_72;
  }

  if (v104 != 1 || v98 == v102)
  {
    v41 = MEMORY[0x277CCACA8];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v42 = [v35 localizedStringForKey:@"PGMemoryTitleFormatWithNumberOfYears %lu" value:@"PGMemoryTitleFormatWithNumberOfYears %lu" table:@"Localizable"];
    v38 = [v41 localizedStringWithFormat:v42, v104];

    goto LABEL_59;
  }

  v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v35 = v34;
  v36 = @"PGRelativeDateLastYear";
LABEL_47:
  v38 = [v34 localizedStringForKey:v36 value:v36 table:@"Localizable"];
LABEL_59:
  v43 = v23;
  v45 = v106;
  v44 = v107;
  v46 = v116;
LABEL_60:

LABEL_73:
  v31 = v38;

  v5 = v111;
LABEL_74:

  return v31;
}

@end
@interface PGTimeTitleUtility
+ (BOOL)_hasReachedNumberVisitsPerMonth:(unint64_t)month inEvents:(id)events withLocationNodes:(id)nodes startDateNode:(id)node endDateNode:(id)dateNode;
+ (BOOL)_hasReachedNumberVisitsPerYear:(unint64_t)year inEvents:(id)events withLocationNodes:(id)nodes startDateNode:(id)node endDateNode:(id)dateNode;
+ (BOOL)_momentNodes:(id)nodes coverCompleteMonth:(BOOL)month coverCompleteYear:(BOOL)year;
+ (BOOL)_yearIsNeededForDisplayingDate:(id)date;
+ (BOOL)yearIsNeededForDisplayingDate:(id)date;
+ (id)_commonLocationLabelForLocationNodes:(id)nodes;
+ (id)_dateNodesFromMomentNodes:(id)nodes featuredYearNodes:(id)yearNodes momentsLocalStartDate:(id *)date momentsLocalEndDate:(id *)endDate;
+ (id)_featuredDateNodesFromDateNodes:(id)nodes featuredYearNodes:(id)yearNodes;
+ (id)_locationNodesForTimeTitleFromLocationNodes:(id)nodes;
+ (id)_numberOfYearsAgoWithEventNodes:(id)nodes relativeToDateComponents:(id)components;
+ (id)_splitTimeTitleWithLocalStartDate:(id)date endDate:(id)endDate startDateNode:(id)node endDateNode:(id)dateNode allowedFormats:(unint64_t)formats locale:(id)locale;
+ (id)numberOfYearsAgoWithMomentNodes:(id)nodes relativeToDateComponents:(id)components useOrdinal:(BOOL)ordinal;
+ (id)peopleTimeTitleWithEventNodes:(id)nodes requireMultipleYears:(BOOL)years;
+ (id)significantDateNodesFromMomentNodes:(id)nodes dateFormatterType:(unint64_t)type;
+ (id)splitTimeTitleWithDateInterval:(id)interval allowedFormats:(unint64_t)formats;
+ (id)splitTimeTitleWithOptions:(id)options;
+ (id)timeTitleWithDateInterval:(id)interval allowedFormats:(unint64_t)formats;
+ (id)timeTitleWithOptions:(id)options;
+ (int64_t)numberOfYearsFromDate:(id)date toDate:(id)toDate;
+ (unint64_t)_dateIntervalFormatterTypeWithEventNodes:(id)nodes allowedFormats:(unint64_t)formats;
+ (void)_enumerateNeighborMomentNodesOfMomentNodes:(id)nodes usingBlock:(id)block;
@end

@implementation PGTimeTitleUtility

+ (int64_t)numberOfYearsFromDate:(id)date toDate:(id)toDate
{
  v5 = MEMORY[0x277D27690];
  toDateCopy = toDate;
  v7 = [v5 components:4 fromDate:date];
  v8 = [MEMORY[0x277D27690] components:4 fromDate:toDateCopy];

  v9 = [MEMORY[0x277D27690] components:4 fromDateComponents:v7 toDateComponents:v8 options:0];
  year = [v9 year];

  return year;
}

+ (id)_locationNodesForTimeTitleFromLocationNodes:(id)nodes
{
  nodesCopy = nodes;
  anyObject = [nodesCopy anyObject];
  if (anyObject)
  {
    v5 = [PGGraphNodeCollection alloc];
    graph = [anyObject graph];
    v7 = [(MAElementCollection *)v5 initWithSet:nodesCopy graph:graph];

    v8 = +[PGGraphAreaNode filter];
    relation = [v8 relation];
    v10 = [(MANodeCollection *)PGGraphAreaNodeCollection nodesRelatedToNodes:v7 withRelation:relation];

    v11 = +[PGGraphLocationNode filter];
    relation2 = [v11 relation];
    v13 = [(MANodeCollection *)PGGraphLocationNodeCollection nodesRelatedToNodes:v7 withRelation:relation2];

    addressNodes = [v10 addressNodes];
    cityNodes = [addressNodes cityNodes];
    v16 = [v13 collectionByFormingUnionWith:cityNodes];

    temporarySet = [v16 temporarySet];
  }

  else
  {
    temporarySet = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  return temporarySet;
}

+ (id)significantDateNodesFromMomentNodes:(id)nodes dateFormatterType:(unint64_t)type
{
  v48 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PGTimeTitleUtility_significantDateNodesFromMomentNodes_dateFormatterType___block_invoke;
  aBlock[3] = &__block_descriptor_40_e35___NSString_16__0__PGGraphDateNode_8l;
  aBlock[4] = type;
  v30 = _Block_copy(aBlock);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v31 = [MEMORY[0x277CBEB58] set];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = nodesCopy;
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
        numberOfAssets = [v12 numberOfAssets];
        v9 += numberOfAssets;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __76__PGTimeTitleUtility_significantDateNodesFromMomentNodes_dateFormatterType___block_invoke_2;
        v36[3] = &unk_278881058;
        v37 = v31;
        v39 = v30;
        v38 = dictionary;
        v40 = numberOfAssets;
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

  allKeys = [dictionary allKeys];
  v16 = [allKeys count];
  if (v16 >= 2)
  {
    v17 = v16;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = allKeys;
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

          v23 = [dictionary objectForKeyedSubscript:*(*(&v32 + 1) + 8 * j)];
          v24 = [v23 objectForKeyedSubscript:@"numberOfAssets"];
          unsignedIntegerValue = [v24 unsignedIntegerValue];

          if (unsignedIntegerValue / v14 < 0.4 / v17)
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

+ (id)_dateNodesFromMomentNodes:(id)nodes featuredYearNodes:(id)yearNodes momentsLocalStartDate:(id *)date momentsLocalEndDate:(id *)endDate
{
  v45 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  yearNodesCopy = yearNodes;
  if ([nodesCopy count])
  {
    v11 = MEMORY[0x277CBEB98];
    v37 = yearNodesCopy;
    if (yearNodesCopy)
    {
      years = [yearNodesCopy years];
      v13 = [v11 setWithArray:years];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    *date = [MEMORY[0x277CBEAA8] distantFuture];
    *endDate = [MEMORY[0x277CBEAA8] distantPast];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v38 = nodesCopy;
    obj = nodesCopy;
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
          localStartDate = [v19 localStartDate];
          localEndDate = [v19 localEndDate];
          if (![v13 count])
          {
            *date = [localStartDate earlierDate:*date];
LABEL_17:
            *endDate = [localEndDate laterDate:*endDate];
            goto LABEL_18;
          }

          v22 = [MEMORY[0x277D27690] yearFromDate:localStartDate];
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
          v24 = [v13 containsObject:v23];

          if (v24)
          {
            *date = [localStartDate earlierDate:*date];
          }

          v25 = [MEMORY[0x277D27690] yearFromDate:localEndDate];
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
    anyObject = [obj anyObject];
    graph = [anyObject graph];
    v31 = [(MAElementCollection *)v28 initWithSet:obj graph:graph];

    dateNodes = [(PGGraphMomentNodeCollection *)v31 dateNodes];
    yearNodesCopy = v37;
    if (v37)
    {
      dateNodes2 = [v37 dateNodes];
      v34 = [dateNodes collectionByIntersecting:dateNodes2];

      dateNodes = v34;
    }

    nodesCopy = v38;
    v14 = [dateNodes set];
  }

  else
  {
    *date = 0;
    *endDate = 0;
    v14 = [MEMORY[0x277CBEB98] set];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_commonLocationLabelForLocationNodes:(id)nodes
{
  v21 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [nodesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(nodesCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        label = [v10 label];
        v12 = [PGCommonTitleUtility dimensionForLabel:label];

        if (v6 < v12)
        {
          label2 = [v10 label];

          v6 = v12;
          v7 = label2;
        }
      }

      v5 = [nodesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (BOOL)_hasReachedNumberVisitsPerYear:(unint64_t)year inEvents:(id)events withLocationNodes:(id)nodes startDateNode:(id)node endDateNode:(id)dateNode
{
  eventsCopy = events;
  nodesCopy = nodes;
  nodeCopy = node;
  dateNodeCopy = dateNode;
  v16 = [self _commonLocationLabelForLocationNodes:nodesCopy];
  if (v16)
  {
    v29 = eventsCopy;
    month = [nodeCopy month];
    v18 = [nodeCopy isEqual:dateNodeCopy];
    month2 = month;
    if ((v18 & 1) == 0)
    {
      month2 = [dateNodeCopy month];
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __106__PGTimeTitleUtility__hasReachedNumberVisitsPerYear_inEvents_withLocationNodes_startDateNode_endDateNode___block_invoke;
    aBlock[3] = &unk_278881010;
    v34 = month;
    v35 = month2;
    v31 = v16;
    v32 = nodesCopy;
    v33 = &v37;
    yearCopy = year;
    v20 = _Block_copy(aBlock);
    collection = [nodeCopy collection];
    yearNodes = [collection yearNodes];
    anyNode = [yearNodes anyNode];

    if ([nodeCopy isEqual:dateNodeCopy])
    {
      anyNode2 = 0;
    }

    else
    {
      collection2 = [dateNodeCopy collection];
      yearNodes2 = [collection2 yearNodes];
      anyNode2 = [yearNodes2 anyNode];
    }

    v20[2](v20, anyNode);
    if (anyNode2 && ([anyNode2 isSameNodeAsNode:anyNode] & 1) == 0)
    {
      v20[2](v20, anyNode2);
    }

    v25 = v38[3] >= year;

    _Block_object_dispose(&v37, 8);
    eventsCopy = v29;
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

+ (BOOL)_hasReachedNumberVisitsPerMonth:(unint64_t)month inEvents:(id)events withLocationNodes:(id)nodes startDateNode:(id)node endDateNode:(id)dateNode
{
  eventsCopy = events;
  nodesCopy = nodes;
  nodeCopy = node;
  dateNodeCopy = dateNode;
  v16 = [self _commonLocationLabelForLocationNodes:nodesCopy];
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
    selfCopy = self;
    v27 = eventsCopy;
    v28 = v16;
    v29 = nodesCopy;
    v30 = &v33;
    monthCopy = month;
    v17 = _Block_copy(&v23);
    month = [nodeCopy month];
    month2 = month;
    if (([nodeCopy isEqual:dateNodeCopy] & 1) == 0)
    {
      month2 = [dateNodeCopy month];
    }

    v17[2](v17, month);
    v20 = v34;
    if (month != month2 && v34[3] < month)
    {
      v17[2](v17, month2);
      v20 = v34;
    }

    v21 = v20[3] >= month;

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

+ (void)_enumerateNeighborMomentNodesOfMomentNodes:(id)nodes usingBlock:(id)block
{
  nodesCopy = nodes;
  blockCopy = block;
  anyObject = [nodesCopy anyObject];
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
  v8 = nodesCopy;
  v13 = v8;
  v9 = anyObject;
  v14 = v9;
  v10 = blockCopy;
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

+ (BOOL)_momentNodes:(id)nodes coverCompleteMonth:(BOOL)month coverCompleteYear:(BOOL)year
{
  v37 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = nodesCopy;
    v9 = nodesCopy;
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
        monthCopy = month;
        yearCopy = year;
        v22 = indexSet;
        selfCopy = self;
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
    nodesCopy = v19;
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

+ (unint64_t)_dateIntervalFormatterTypeWithEventNodes:(id)nodes allowedFormats:(unint64_t)formats
{
  formatsCopy = formats;
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    v7 = formatsCopy & 1;
    if ((formatsCopy & 0xE) != 0)
    {
      v8 = [self _eventNodesCoverCompleteMonth:nodesCopy];
      if ((formatsCopy & 1) == 0 || v8)
      {
        v9 = 2;
        if ((formatsCopy & 2) == 0)
        {
          v9 = formatsCopy & 1;
        }

        if ((formatsCopy & 8) != 0)
        {
          v7 = 6;
        }

        else
        {
          v7 = v9;
        }

        if ((formatsCopy & 4) != 0)
        {
          v10 = [self _eventNodesCoverCompleteYear:nodesCopy];
          if ((formatsCopy & 0xB) != 0)
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

+ (BOOL)yearIsNeededForDisplayingDate:(id)date
{
  if (!date)
  {
    return 0;
  }

  v3 = MEMORY[0x277D27690];
  dateCopy = date;
  currentLocalDate = [v3 currentLocalDate];
  v6 = [v3 compareDate:currentLocalDate toDate:dateCopy toUnitGranularity:4];

  return v6 != 0;
}

+ (BOOL)_yearIsNeededForDisplayingDate:(id)date
{
  v3 = MEMORY[0x277D27690];
  dateCopy = date;
  currentLocalDate = [v3 currentLocalDate];
  v6 = [v3 compareDate:currentLocalDate toDate:dateCopy toUnitGranularity:4];

  return v6 != 0;
}

+ (id)numberOfYearsAgoWithMomentNodes:(id)nodes relativeToDateComponents:(id)components useOrdinal:(BOOL)ordinal
{
  ordinalCopy = ordinal;
  v6 = [self _numberOfYearsAgoWithEventNodes:nodes relativeToDateComponents:components];
  v7 = v6;
  if (v6)
  {
    if (ordinalCopy)
    {
      v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v8 setNumberStyle:6];
      stringValue = [v8 stringFromNumber:v7];
    }

    else
    {
      stringValue = [v6 stringValue];
    }
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

+ (id)_numberOfYearsAgoWithEventNodes:(id)nodes relativeToDateComponents:(id)components
{
  v43 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  componentsCopy = components;
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
  year = [componentsCopy year];
  month = [componentsCopy month];
  v9 = [componentsCopy day];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = nodesCopy;
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
        v25[7] = month;
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
  loggingConnection = [v15 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "No matching date node found. Falling back to any date node from event nodes", buf, 2u);
  }

  objc_storeStrong(v37 + 5, v31[5]);
  v14 = v37[5];
  if (v14)
  {
LABEL_12:
    year2 = [v14 year];
    if (year2 > year)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:year2 - year];
      goto LABEL_18;
    }
  }

  else
  {
    v19 = +[PGLogging sharedLogging];
    loggingConnection2 = [v19 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Cannot generate ordinalYearsAgo string. Reason: No date node found.", buf, 2u);
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

+ (id)peopleTimeTitleWithEventNodes:(id)nodes requireMultipleYears:(BOOL)years
{
  v38[1] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  if (![nodesCopy count])
  {
    v13 = 0;
    goto LABEL_22;
  }

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestampUTCStart" ascending:1];
  v38[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v8 = [nodesCopy sortedArrayUsingDescriptors:v7];

  firstObject = [v8 firstObject];
  lastObject = [v8 lastObject];
  localStartDate = [firstObject localStartDate];
  if ([firstObject isSameNodeAsNode:lastObject])
  {
    localStartDate2 = localStartDate;
  }

  else
  {
    localStartDate2 = [lastObject localStartDate];
  }

  v14 = localStartDate2;
  if (localStartDate)
  {
    graph = [firstObject graph];
    v16 = [graph dateNodeForLocalDate:localStartDate];
    v17 = v16;
    if (v14 == localStartDate)
    {
      v18 = v16;
    }

    else
    {
      v18 = [graph dateNodeForLocalDate:v14];
    }

    v19 = v18;
    v37 = graph;
    yearNode = [v17 yearNode];
    v35 = yearNode;
    v36 = v19;
    if ([v17 isSameNodeAsNode:v19])
    {
      v21 = yearNode;
      [v21 calendarUnitValue];
    }

    else
    {
      yearsCopy = years;
      [v19 yearNode];
      v21 = v22 = yearNode;
      calendarUnitValue = [v22 calendarUnitValue];
      if (v22 != v21)
      {
        v24 = calendarUnitValue;
        v31 = lastObject;
        calendarUnitValue2 = [v21 calendarUnitValue];
        v26 = objc_alloc_init(MEMORY[0x277D3AC40]);
        v27 = v26;
        if (v24 != calendarUnitValue2)
        {
          v33 = [v26 stringFromStartDate:localStartDate endDate:v14 type:3];
          v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v34 = [v28 localizedStringForKey:@"PGPeopleSubtitleFormatWithYears %@" value:@"PGPeopleSubtitleFormatWithYears %@" table:@"Localizable"];

          v13 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v34, v33];

          lastObject = v31;
          goto LABEL_20;
        }

        lastObject = v31;
        if (yearsCopy)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }
    }

    v27 = objc_alloc_init(MEMORY[0x277D3AC40]);
    if (years)
    {
LABEL_18:
      v13 = 0;
      goto LABEL_20;
    }

LABEL_16:
    v13 = [v27 stringFromStartDate:localStartDate endDate:v14 type:3];
LABEL_20:

    goto LABEL_21;
  }

  v13 = 0;
LABEL_21:

LABEL_22:
  v29 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_splitTimeTitleWithLocalStartDate:(id)date endDate:(id)endDate startDateNode:(id)node endDateNode:(id)dateNode allowedFormats:(unint64_t)formats locale:(id)locale
{
  formatsCopy = formats;
  dateCopy = date;
  endDateCopy = endDate;
  nodeCopy = node;
  dateNodeCopy = dateNode;
  localeCopy = locale;
  if (nodeCopy)
  {
    year = [nodeCopy year];
    month = [nodeCopy month];
  }

  else
  {
    year = [MEMORY[0x277D27690] yearFromDate:dateCopy];
    month = [MEMORY[0x277D27690] monthFromDate:dateCopy];
  }

  v39 = month;
  v40 = dateCopy;
  if (dateNodeCopy)
  {
    year2 = [dateNodeCopy year];
    month2 = [dateNodeCopy month];
  }

  else
  {
    year2 = [MEMORY[0x277D27690] yearFromDate:endDateCopy];
    month2 = [MEMORY[0x277D27690] monthFromDate:endDateCopy];
  }

  v38 = month2;
  if (formatsCopy)
  {
    v22 = 0;
    v23 = 0;
    v21 = 4;
LABEL_14:
    v24 = 3;
    goto LABEL_15;
  }

  if ((formatsCopy & 2) != 0)
  {
    v22 = 0;
    v23 = 0;
    v21 = 6;
    goto LABEL_14;
  }

  if ((formatsCopy & 4) != 0)
  {
    v36 = [self _canUseOverTheYearsForStartYear:year endYear:year2];
    v23 = 0;
    v24 = 0;
    v21 = 3;
    if ((formatsCopy & 0x10) != 0)
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
    if ((formatsCopy & 0x10) != 0)
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
  if (year != year2 && v22 == 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v28 = objc_alloc_init(MEMORY[0x277D3AC40]);
  [v28 setLocale:localeCopy];
  if (v23)
  {
    v29 = v40;
    v30 = endDateCopy;
    if (!v22)
    {
      goto LABEL_32;
    }

LABEL_31:
    [v27 addObject:v22];
    goto LABEL_32;
  }

  v32 = v39 == v38 && year == year2;
  v29 = v40;
  v30 = endDateCopy;
  v33 = [v28 stringFromStartDate:v40 endDate:endDateCopy type:v21 showLongMonthFormatIfNeeded:v32];

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

+ (id)splitTimeTitleWithDateInterval:(id)interval allowedFormats:(unint64_t)formats
{
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v9 = [self _splitTimeTitleWithLocalStartDate:startDate endDate:endDate startDateNode:0 endDateNode:0 allowedFormats:formats locale:0];

  return v9;
}

+ (id)splitTimeTitleWithOptions:(id)options
{
  optionsCopy = options;
  momentNodes = [optionsCopy momentNodes];
  allowedFormats = [optionsCopy allowedFormats];
  v25 = 0;
  v26 = 0;
  v7 = [self _dateNodesFromMomentNodes:momentNodes featuredYearNodes:0 momentsLocalStartDate:&v26 momentsLocalEndDate:&v25];
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

  if ([optionsCopy filterDates] && objc_msgSend(momentNodes, "count") == 1)
  {
    dayNode = [v10 dayNode];
    if ([v10 isSameNodeAsNode:v11])
    {
      dayNode2 = dayNode;
      [dayNode2 calendarUnitValue];
    }

    else
    {
      dayNode2 = [v11 dayNode];
      calendarUnitValue = [dayNode calendarUnitValue];
      if (dayNode2 != dayNode && calendarUnitValue != [dayNode2 calendarUnitValue])
      {
        v20 = [MEMORY[0x277D27690] components:32 fromDate:v9];
        hour = [v20 hour];

        if (hour > 11)
        {
          goto LABEL_12;
        }
      }
    }

    v21 = dayNode;
    v15 = v8;

    v16 = v10;
    v11 = v16;
    v9 = v15;
    dayNode = v21;
LABEL_12:
  }

  locale = [optionsCopy locale];
  v13 = [self _splitTimeTitleWithLocalStartDate:v8 endDate:v9 startDateNode:v10 endDateNode:v11 allowedFormats:allowedFormats locale:locale];

LABEL_14:

  return v13;
}

+ (id)timeTitleWithDateInterval:(id)interval allowedFormats:(unint64_t)formats
{
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v9 = [MEMORY[0x277D27690] yearFromDate:startDate];
  v10 = [MEMORY[0x277D27690] yearFromDate:endDate];
  v11 = ((formats << 61) >> 63) & 3;
  if ((formats & 2) != 0)
  {
    v11 = 2;
  }

  v12 = (formats & 1) == 0 && (formats & 6) == 0;
  if (formats)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  if ((formats & 0x10) != 0)
  {
    if ((v12 | [self _canUseOverTheYearsForStartYear:v9 endYear:v10]))
    {
      currentLocalDate = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [currentLocalDate localizedStringForKey:@"PGTimeTitleFormatOverTheYears" value:@"PGTimeTitleFormatOverTheYears" table:@"Localizable"];
      goto LABEL_21;
    }
  }

  else if ((formats & 0x20) != 0)
  {
    currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
    v15 = [self numberOfYearsFromDate:startDate toDate:currentLocalDate];
    v16 = [self numberOfYearsFromDate:endDate toDate:currentLocalDate];
    if (v16 == v15 && (v16 - 1) < 0x32)
    {
      v17 = [MEMORY[0x277D27690] monthFromDate:currentLocalDate];
      v18 = [MEMORY[0x277D27690] monthFromDate:endDate];
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
  v20 = [v23 stringFromStartDate:startDate endDate:endDate type:v13];

LABEL_23:

  return v20;
}

+ (id)_featuredDateNodesFromDateNodes:(id)nodes featuredYearNodes:(id)yearNodes
{
  yearNodesCopy = yearNodes;
  nodesCopy = nodes;
  v7 = [PGGraphDateNodeCollection alloc];
  graph = [yearNodesCopy graph];
  v9 = [(MAElementCollection *)v7 initWithSet:nodesCopy graph:graph];

  dateNodes = [yearNodesCopy dateNodes];

  v11 = [(MAElementCollection *)v9 collectionByIntersecting:dateNodes];

  v12 = [v11 set];

  return v12;
}

+ (id)timeTitleWithOptions:(id)options
{
  optionsCopy = options;
  momentNodes = [optionsCopy momentNodes];
  allowedFormats = [optionsCopy allowedFormats];
  currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
  if (![momentNodes count])
  {
    if ((allowedFormats & 0x10) != 0)
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

  locationNodes = [optionsCopy locationNodes];
  v8 = [self _locationNodesForTimeTitleFromLocationNodes:locationNodes];

  filterDates = [optionsCopy filterDates];
  featuredYearNodes = [optionsCopy featuredYearNodes];
  v122 = 0;
  v123[0] = 0;
  v10 = [self _dateNodesFromMomentNodes:momentNodes featuredYearNodes:featuredYearNodes momentsLocalStartDate:v123 momentsLocalEndDate:&v122];
  v11 = v123[0];
  v116 = v122;

  v120 = 0;
  v121 = 0;
  [PGCommonTitleUtility startAndEndDateNodeFromDateNodes:v10 startDateNode:&v121 endDateNode:&v120];
  v12 = v121;
  v13 = v120;
  monthNode = [v12 monthNode];
  v115 = monthNode;
  if ([v12 isSameNodeAsNode:v13])
  {
    monthNode2 = monthNode;
  }

  else
  {
    monthNode2 = [v13 monthNode];
  }

  v114 = monthNode2;
  yearNode = [v12 yearNode];
  v113 = yearNode;
  if ([v12 isSameNodeAsNode:v13])
  {
    yearNode2 = yearNode;
  }

  else
  {
    yearNode2 = [v13 yearNode];
  }

  v112 = yearNode2;
  v104 = [self numberOfYearsFromDate:v11 toDate:currentLocalDate];
  v98 = [MEMORY[0x277D27690] monthFromDate:currentLocalDate];
  calendarUnitValue = [v115 calendarUnitValue];
  v109 = v13;
  v110 = v12;
  v93 = calendarUnitValue;
  if (v115 != v114)
  {
    calendarUnitValue = [v114 calendarUnitValue];
  }

  v102 = calendarUnitValue;
  v20 = [self numberOfYearsFromDate:v116 toDate:currentLocalDate];
  v95 = [MEMORY[0x277D27690] yearFromDate:currentLocalDate];
  calendarUnitValue2 = [yearNode calendarUnitValue];
  calendarUnitValue3 = calendarUnitValue2;
  if (v113 != v112)
  {
    calendarUnitValue3 = [v112 calendarUnitValue];
  }

  v106 = v10;
  v107 = v8;
  v111 = momentNodes;
  if ([v8 count])
  {
    v22 = 0;
    if ([momentNodes count])
    {
      v23 = v11;
      if (v11)
      {
        v91 = calendarUnitValue3;
        localDate = [v12 localDate];
        localDate2 = [v109 localDate];
        [localDate2 timeIntervalSinceDate:localDate];
        v27 = vcvtpd_u64_f64(v26 / 86400.0) + 1;
        v28 = v27 < 2 || (allowedFormats & 0xE) == 0;
        v22 = allowedFormats & 1;
        if (!v28)
        {
          v29 = [self _hasReachedNumberVisitsPerMonth:3 inEvents:v111 withLocationNodes:v107 startDateNode:v12 endDateNode:v109];
          if (v27 > 9 || (v22 = allowedFormats & 1, (v29 & 1) == 0))
          {
            v55 = 2;
            if ((allowedFormats & 2) == 0)
            {
              v55 = allowedFormats & 1;
            }

            if ((allowedFormats & 8) != 0)
            {
              v22 = 6;
            }

            else
            {
              v22 = v55;
            }

            if ((allowedFormats & 4) != 0 && v27 >= 5 && ([self _hasReachedNumberVisitsPerYear:3 inEvents:v111 withLocationNodes:v107 startDateNode:v12 endDateNode:v109] & 1) == 0)
            {
              v56 = [v12 isEqual:v109];
              if (!(calendarUnitValue2 == v91 ? v56 : 1))
              {
                v22 = 3;
              }
            }
          }
        }

        momentNodes = v111;
        calendarUnitValue3 = v91;
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

  if ((allowedFormats & 0x40) != 0)
  {
    v32 = 4;
  }

  else
  {
    v32 = v22;
  }

  if (!v32)
  {
    v32 = [self _dateIntervalFormatterTypeWithEventNodes:momentNodes allowedFormats:allowedFormats];
  }

  v33 = [self _canUseOverTheYearsForStartYear:calendarUnitValue2 endYear:calendarUnitValue3];
  if ((allowedFormats & 0x10) != 0 && (!v32 || v32 == 3 && v33))
  {
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = v34;
    v36 = @"PGTimeTitleFormatOverTheYears";
    goto LABEL_47;
  }

  if ((allowedFormats & 0x20) == 0 || v20 != v104 || (v20 - 1) > 0x31)
  {
    if (v23)
    {
      if (v32 == 1)
      {
        v37 = 1;
        goto LABEL_65;
      }

      if (v98 == v102 && v95 == calendarUnitValue3)
      {
        v40 = allowedFormats & 1;
      }

      else
      {
        v40 = 0;
      }

      if ((v40 & 1) == 0 && (allowedFormats & 2) != 0 && v95 == calendarUnitValue3)
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
        if (!filterDates)
        {
          goto LABEL_107;
        }

        if (v37 > 5 || ((1 << v37) & 0x32) == 0 || [v111 count] != 1)
        {
          if (![optionsCopy filterForSignificantDateNodes])
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
            if (calendarUnitValue2 == calendarUnitValue3)
            {
LABEL_107:
              v35 = objc_alloc_init(MEMORY[0x277D3AC40]);
              locale = [optionsCopy locale];
              [v35 setLocale:locale];

              if ((allowedFormats & 0x40) != 0)
              {
                v46 = v43;
              }

              else
              {
                v46 = v116;
              }

              v104 = [v35 stringFromStartDate:v43 endDate:v46 type:v105];
              if (v105 == 3 && calendarUnitValue2 != calendarUnitValue3 && [optionsCopy usePeopleSubtitleFormatWithYears])
              {
                v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v73 = [v72 localizedStringForKey:@"PGPeopleSubtitleFormatWithYears %@" value:@"PGPeopleSubtitleFormatWithYears %@" table:@"Localizable"];

                v74 = [MEMORY[0x277CCACA8] stringWithFormat:v73, v104];

                v104 = v74;
              }

              goto LABEL_60;
            }
          }

          v49 = [self significantDateNodesFromMomentNodes:v111 dateFormatterType:v37];
          featuredYearNodes2 = [optionsCopy featuredYearNodes];
          v51 = [featuredYearNodes2 count];

          if (v51)
          {
            featuredYearNodes3 = [optionsCopy featuredYearNodes];
            v53 = [self _featuredDateNodesFromDateNodes:v49 featuredYearNodes:featuredYearNodes3];

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
          localDate3 = [v75 localDate];
          v99 = v76;
          localDate4 = [v76 localDate];
          v104 = 0;
          v94 = localDate3;
          if (localDate3)
          {
            v79 = localDate4;
            if (localDate4)
            {
              v80 = objc_alloc_init(MEMORY[0x277D3AC40]);
              [optionsCopy locale];
              v82 = v81 = v43;
              [v80 setLocale:v82];

              v97 = v81;
              v104 = [v80 stringFromStartDate:v81 endDate:v116 type:v105];
              v92 = v80;
              v83 = [v80 stringFromStartDate:v94 endDate:v79 type:v105];
              v84 = [v83 length];
              if (v84 < [v104 length])
              {
                v85 = v83;

                v104 = v85;
              }

              if (v105 == 3 && (v86 = [MEMORY[0x277D27690] yearFromDate:v94], v86 != objc_msgSend(MEMORY[0x277D27690], "yearFromDate:", v79)))
              {
                v87 = v92;
                if ([optionsCopy usePeopleSubtitleFormatWithYears])
                {
                  v88 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v90 = [v88 localizedStringForKey:@"PGPeopleSubtitleFormatWithYears %@" value:@"PGPeopleSubtitleFormatWithYears %@" table:@"Localizable"];

                  v89 = [MEMORY[0x277CCACA8] stringWithFormat:v90, v104];

                  v104 = v89;
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
            v79 = localDate4;
          }

          v69 = v94;
          goto LABEL_106;
        }

        dayNode = [v110 dayNode];
        v103 = dayNode;
        if ([v110 isSameNodeAsNode:v109])
        {
          v101 = dayNode;
          [v101 calendarUnitValue];
        }

        else
        {
          dayNode2 = [v109 dayNode];
          calendarUnitValue4 = [dayNode calendarUnitValue];
          v101 = dayNode2;
          if (dayNode2 != dayNode)
          {
            v60 = calendarUnitValue4;
            calendarUnitValue5 = [dayNode2 calendarUnitValue];
            v62 = v43;
            v63 = calendarUnitValue5;
            v96 = v62;
            v64 = v62;
            if (v60 != v63)
            {
              v65 = [MEMORY[0x277D27690] components:32 fromDate:v116];
              hour = [v65 hour];

              if (hour >= 12)
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
        locale2 = [optionsCopy locale];
        [v69 setLocale:locale2];

        v43 = v68;
        v99 = v64;
        v104 = [v69 stringFromStartDate:v68 endDate:v64 type:v105];
        v44 = v107;
LABEL_106:

        if (!v104)
        {
          goto LABEL_107;
        }

LABEL_72:
        v46 = v116;
        goto LABEL_73;
      }
    }

    v104 = 0;
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
    v104 = [v41 localizedStringWithFormat:v42, v104];

    goto LABEL_59;
  }

  v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v35 = v34;
  v36 = @"PGRelativeDateLastYear";
LABEL_47:
  v104 = [v34 localizedStringForKey:v36 value:v36 table:@"Localizable"];
LABEL_59:
  v43 = v23;
  v45 = v106;
  v44 = v107;
  v46 = v116;
LABEL_60:

LABEL_73:
  v31 = v104;

  momentNodes = v111;
LABEL_74:

  return v31;
}

@end
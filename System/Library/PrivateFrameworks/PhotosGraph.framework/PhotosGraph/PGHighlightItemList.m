@interface PGHighlightItemList
+ (id)timeSortDescriptors;
+ (void)updateParentHighlightItemLists:(id)a3 withChildHighlightItems:(id)a4;
- (NSArray)extendedCuratedAssets;
- (NSArray)sortedChildHighlightItems;
- (NSArray)sortedHighlightItemModelObjects;
- (NSDate)endDate;
- (NSDate)localEndDate;
- (NSDate)localStartDate;
- (NSDate)startDate;
- (NSDateComponents)localDateComponents;
- (NSSet)addedHighlightItems;
- (NSSet)removedHighlightItems;
- (NSString)description;
- (NSString)uuid;
- (PGHighlightItemList)initWithParentHighlightItem:(id)a3 childHighlightItems:(id)a4;
- (id)initAsNewList;
- (unsigned)mixedSharingCompositionKeyAssetRelationship;
- (unsigned)sharingComposition;
- (unsigned)visibilityStateForHighlightFilter:(unsigned __int16)a3;
- (void)_updateHighlightItemsOrdering;
- (void)addHighlightItem:(id)a3;
- (void)removeHighlightItem:(id)a3;
- (void)setVisibilityState:(unsigned __int16)a3 forSharingFilter:(unsigned __int16)a4;
@end

@implementation PGHighlightItemList

- (void)setVisibilityState:(unsigned __int16)a3 forSharingFilter:(unsigned __int16)a4
{
  if (a4 <= 2u)
  {
    *(&self->_visibilityStatePrivate + (a4 & 0x7FFF)) = a3;
  }
}

- (unsigned)visibilityStateForHighlightFilter:(unsigned __int16)a3
{
  if (a3 > 2u)
  {
    return 0;
  }

  else
  {
    return *(&self->_visibilityStatePrivate + (a3 & 0x7FFF));
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGHighlightItemList;
  v4 = [(PGHighlightItemList *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ [(%@) - (%@)] (%ld) time periods", v4, self->_localStartDate, self->_localEndDate, -[NSMutableOrderedSet count](self->_internalHighlightItems, "count")];

  return v5;
}

- (void)_updateHighlightItemsOrdering
{
  v28 = *MEMORY[0x277D85DE8];
  internalHighlightItems = self->_internalHighlightItems;
  v4 = [objc_opt_class() timeSortDescriptors];
  [(NSMutableOrderedSet *)internalHighlightItems sortUsingDescriptors:v4];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_internalHighlightItems;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v23 + 1) + 8 * i) kind] != 3)
        {
          v10 = [(NSMutableOrderedSet *)self->_internalHighlightItems firstObject];
          v11 = [v10 startDate];
          startDate = self->_startDate;
          self->_startDate = v11;

          v13 = [(NSMutableOrderedSet *)self->_internalHighlightItems lastObject];
          v14 = [v13 endDate];
          endDate = self->_endDate;
          self->_endDate = v14;

          v16 = [(NSMutableOrderedSet *)self->_internalHighlightItems firstObject];
          v17 = [v16 localStartDate];
          localStartDate = self->_localStartDate;
          self->_localStartDate = v17;

          v19 = [(NSMutableOrderedSet *)self->_internalHighlightItems lastObject];
          v20 = [v19 localEndDate];
          localEndDate = self->_localEndDate;
          self->_localEndDate = v20;

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeHighlightItem:(id)a3
{
  v4 = a3;
  if ([(NSMutableOrderedSet *)self->_internalHighlightItems containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_internalHighlightItems removeObject:v4];
    if ([(NSMutableSet *)self->_internalAddedHighlightItems containsObject:v4])
    {
      [(NSMutableSet *)self->_internalAddedHighlightItems removeObject:v4];
    }

    else
    {
      [(NSMutableSet *)self->_internalRemovedHighlightItems addObject:v4];
    }

    [(PGHighlightItemList *)self _updateHighlightItemsOrdering];
  }
}

- (void)addHighlightItem:(id)a3
{
  v4 = a3;
  if (([(NSMutableOrderedSet *)self->_internalHighlightItems containsObject:?]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_internalHighlightItems addObject:v4];
    if ([(NSMutableSet *)self->_internalRemovedHighlightItems containsObject:v4])
    {
      [(NSMutableSet *)self->_internalRemovedHighlightItems removeObject:v4];
    }

    else
    {
      [(NSMutableSet *)self->_internalAddedHighlightItems addObject:v4];
    }

    [(PGHighlightItemList *)self _updateHighlightItemsOrdering];
  }
}

- (NSSet)removedHighlightItems
{
  v2 = [(NSMutableSet *)self->_internalRemovedHighlightItems copy];

  return v2;
}

- (NSSet)addedHighlightItems
{
  v2 = [(NSMutableSet *)self->_internalAddedHighlightItems copy];

  return v2;
}

- (NSArray)sortedChildHighlightItems
{
  v2 = [(NSMutableOrderedSet *)self->_internalHighlightItems array];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)extendedCuratedAssets
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    v3 = [(PGHighlightItemList *)self parentHighlightItem];
    v4 = [v3 extendedCuratedAssets];
  }

  else
  {
    v4 = self->_extendedCuratedAssets;
  }

  return v4;
}

- (unsigned)mixedSharingCompositionKeyAssetRelationship
{
  if (![(PGHighlightItemList *)self isCandidateForReuse])
  {
    return self->_mixedSharingCompositionKeyAssetRelationship;
  }

  v3 = [(PGHighlightItemList *)self parentHighlightItem];
  v4 = [v3 mixedSharingCompositionKeyAssetRelationship];

  return v4;
}

- (NSArray)sortedHighlightItemModelObjects
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableOrderedSet count](self->_internalHighlightItems, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_internalHighlightItems;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 modelObject];

        if (v10)
        {
          v11 = [v9 modelObject];
          [v3 addObject:v11];
        }
      }

      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)uuid
{
  v2 = [(PGHighlightItemList *)self parentHighlightItem];
  v3 = [v2 uuid];

  return v3;
}

- (NSDateComponents)localDateComponents
{
  v3 = [(PGHighlightItemList *)self startDate];
  v4 = [(PGHighlightItemList *)self endDate];
  [v4 timeIntervalSinceDate:v3];
  v6 = [v3 dateByAddingTimeInterval:v5 * 0.5];
  v7 = [(PGHighlightItemList *)self localStartDate];
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  if (v7)
  {
    [v3 timeIntervalSinceDate:v7];
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v10];
  v12 = [v8 componentsInTimeZone:v11 fromDate:v6];

  return v12;
}

- (unsigned)sharingComposition
{
  if (![(PGHighlightItemList *)self isCandidateForReuse])
  {
    return self->_sharingComposition;
  }

  v3 = [(PGHighlightItemList *)self parentHighlightItem];
  v4 = [v3 sharingComposition];

  return v4;
}

- (NSDate)localEndDate
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    v3 = [(PGHighlightItemList *)self parentHighlightItem];
    v4 = [v3 localEndDate];
  }

  else
  {
    v4 = self->_localEndDate;
  }

  return v4;
}

- (NSDate)localStartDate
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    v3 = [(PGHighlightItemList *)self parentHighlightItem];
    v4 = [v3 localStartDate];
  }

  else
  {
    v4 = self->_localStartDate;
  }

  return v4;
}

- (NSDate)endDate
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    v3 = [(PGHighlightItemList *)self parentHighlightItem];
    v4 = [v3 endDate];
  }

  else
  {
    v4 = self->_endDate;
  }

  return v4;
}

- (NSDate)startDate
{
  if ([(PGHighlightItemList *)self isCandidateForReuse])
  {
    v3 = [(PGHighlightItemList *)self parentHighlightItem];
    v4 = [v3 startDate];
  }

  else
  {
    v4 = self->_startDate;
  }

  return v4;
}

- (id)initAsNewList
{
  v10.receiver = self;
  v10.super_class = PGHighlightItemList;
  v2 = [(PGHighlightItemList *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB40] orderedSet];
    internalHighlightItems = v2->_internalHighlightItems;
    v2->_internalHighlightItems = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    internalAddedHighlightItems = v2->_internalAddedHighlightItems;
    v2->_internalAddedHighlightItems = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    internalRemovedHighlightItems = v2->_internalRemovedHighlightItems;
    v2->_internalRemovedHighlightItems = v7;
  }

  return v2;
}

- (PGHighlightItemList)initWithParentHighlightItem:(id)a3 childHighlightItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = PGHighlightItemList;
  v9 = [(PGHighlightItemList *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentHighlightItem, a3);
    v11 = [v7 modelObject];
    modelObject = v10->_modelObject;
    v10->_modelObject = v11;

    v13 = [MEMORY[0x277CBEB40] orderedSetWithArray:v8];
    internalHighlightItems = v10->_internalHighlightItems;
    v10->_internalHighlightItems = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    internalAddedHighlightItems = v10->_internalAddedHighlightItems;
    v10->_internalAddedHighlightItems = v15;

    v17 = [MEMORY[0x277CBEB58] set];
    internalRemovedHighlightItems = v10->_internalRemovedHighlightItems;
    v10->_internalRemovedHighlightItems = v17;

    v10->_sharingComposition = [v7 sharingComposition];
    v10->_kind = [v7 kind];
    v10->_type = [v7 type];
    v10->_category = [v7 category];
    [(PGHighlightItemList *)v10 _updateHighlightItemsOrdering];
  }

  return v10;
}

+ (void)updateParentHighlightItemLists:(id)a3 withChildHighlightItems:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = [v13 uuid];
        [v7 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v10);
  }

  v30 = v8;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v33 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v33)
  {
    v32 = *v40;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * j);
        v17 = [v16 internalAddedHighlightItems];
        [v17 removeAllObjects];

        v18 = [v16 internalRemovedHighlightItems];
        [v18 removeAllObjects];

        v34 = v16;
        v19 = [v16 internalHighlightItems];
        v20 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v19, "count")}];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v36;
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v35 + 1) + 8 * k);
              v27 = [v26 uuid];
              v28 = [v7 objectForKeyedSubscript:v27];

              if (!v28)
              {
                v28 = v26;
              }

              [v20 addObject:v28];
            }

            v23 = [v21 countByEnumeratingWithState:&v35 objects:v47 count:16];
          }

          while (v23);
        }

        [v34 setInternalHighlightItems:v20];
        [v34 _updateHighlightItemsOrdering];
      }

      v33 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v33);
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (id)timeSortDescriptors
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
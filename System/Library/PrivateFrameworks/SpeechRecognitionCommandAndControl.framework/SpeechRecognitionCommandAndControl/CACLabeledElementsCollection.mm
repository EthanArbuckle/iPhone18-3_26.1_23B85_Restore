@interface CACLabeledElementsCollection
+ (BOOL)canShowElementActionsForElement:(id)element;
+ (id)_elementActionManager;
+ (id)labeledElementsFromTextMarkerRanges:(id)ranges axElement:(id)element;
- (BOOL)isCollecting;
- (BOOL)isEmpty;
- (CACLabeledElementsCollection)init;
- (id)_initWithCollection:(id)collection;
- (id)collectedElements;
- (id)collectedElementsWithTitle:(id)title;
- (id)collectedElementsWithTrait:(unint64_t)trait;
- (id)copyListOfCollectedElementsSorted;
- (id)copyTableOfCollectedElementsByTitle;
- (id)copyTableOfCollectedElementsByTrait;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newlyCollectedElements;
- (unint64_t)collectionCount;
- (void)addLabeledElementWithItemElement:(id)element orderingPriority:(int64_t)priority elementsByTitle:(id)title elementsByTrait:(id)trait elementsSorted:(id)sorted;
- (void)cancelCollecting;
- (void)resetCollectedFlagForAllElements;
- (void)updateWithAXElements:(id)elements;
@end

@implementation CACLabeledElementsCollection

+ (id)labeledElementsFromTextMarkerRanges:(id)ranges axElement:(id)element
{
  v37 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  elementCopy = element;
  v7 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = rangesCopy;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    v16 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        nsRange = [v18 nsRange];
        [elementCopy rectForRange:{nsRange, v20}];
        x = v39.origin.x;
        y = v39.origin.y;
        width = v39.size.width;
        height = v39.size.height;
        v41.origin.x = v12;
        v41.origin.y = v13;
        v41.size.width = v14;
        v41.size.height = v15;
        if (!CGRectEqualToRect(v39, v41))
        {
          [elementCopy visibleFrame];
          v42.origin.x = v25;
          v42.origin.y = v26;
          v42.size.width = v27;
          v42.size.height = v28;
          v40.origin.x = x;
          v40.origin.y = y;
          v40.size.width = width;
          v40.size.height = height;
          if (CGRectIntersectsRect(v40, v42))
          {
            height = [[CACLabeledElement alloc] initWithElement:elementCopy recognitionStrings:0 rectangle:x, y, width, height];
            v30 = height;
            if (height)
            {
              [(CACLabeledElement *)height setTextMarkerRange:v18];
              [(CACLabeledElement *)v30 setNumber:v16];
              [v7 addObject:v30];
              ++v16;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)_elementActionManager
{
  if (_elementActionManager_onceToken_1 != -1)
  {
    +[CACLabeledElementsCollection _elementActionManager];
  }

  v3 = _elementActionManager_sElementActionManager_1;

  return v3;
}

void __53__CACLabeledElementsCollection__elementActionManager__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CE7808]);
  v3 = +[CACAXDragManager sharedManager];
  v1 = [v0 initWithDragManager:v3];
  v2 = _elementActionManager_sElementActionManager_1;
  _elementActionManager_sElementActionManager_1 = v1;
}

+ (BOOL)canShowElementActionsForElement:(id)element
{
  elementCopy = element;
  v5 = +[CACDisplayManager sharedManager];
  carPlayConnected = [v5 carPlayConnected];

  if (carPlayConnected)
  {
    v7 = 0;
  }

  else
  {
    _elementActionManager = [self _elementActionManager];
    v7 = [_elementActionManager canShowActionsForElement:elementCopy];
  }

  return v7;
}

- (CACLabeledElementsCollection)init
{
  v11.receiver = self;
  v11.super_class = CACLabeledElementsCollection;
  v2 = [(CACLabeledElementsCollection *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentCollectionTransactionID = 0.0;
    v2->_cachedCollectionTransactionID = 0.0;
    v4 = objc_opt_new();
    cachedElementsByTitle = v3->_cachedElementsByTitle;
    v3->_cachedElementsByTitle = v4;

    v6 = objc_opt_new();
    cachedElementsByTrait = v3->_cachedElementsByTrait;
    v3->_cachedElementsByTrait = v6;

    array = [MEMORY[0x277CBEB18] array];
    cachedElementsSorted = v3->_cachedElementsSorted;
    v3->_cachedElementsSorted = array;
  }

  return v3;
}

- (id)_initWithCollection:(id)collection
{
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = CACLabeledElementsCollection;
  v5 = [(CACLabeledElementsCollection *)&v16 init];
  if (v5)
  {
    axElements = [collectionCopy axElements];
    v7 = [axElements copy];
    axElements = v5->_axElements;
    v5->_axElements = v7;

    copyTableOfCollectedElementsByTitle = [collectionCopy copyTableOfCollectedElementsByTitle];
    cachedElementsByTitle = v5->_cachedElementsByTitle;
    v5->_cachedElementsByTitle = copyTableOfCollectedElementsByTitle;

    copyTableOfCollectedElementsByTrait = [collectionCopy copyTableOfCollectedElementsByTrait];
    cachedElementsByTrait = v5->_cachedElementsByTrait;
    v5->_cachedElementsByTrait = copyTableOfCollectedElementsByTrait;

    copyListOfCollectedElementsSorted = [collectionCopy copyListOfCollectedElementsSorted];
    cachedElementsSorted = v5->_cachedElementsSorted;
    v5->_cachedElementsSorted = copyListOfCollectedElementsSorted;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 _initWithCollection:self];
}

- (void)cancelCollecting
{
  obj = self;
  objc_sync_enter(obj);
  obj->_currentCollectionTransactionID = 0.0;
  obj->_cachedCollectionTransactionID = 0.0;
  [(NSMutableDictionary *)obj->_cachedElementsByTitle removeAllObjects];
  [(NSMutableDictionary *)obj->_cachedElementsByTrait removeAllObjects];
  [(NSMutableArray *)obj->_cachedElementsSorted removeAllObjects];
  objc_sync_exit(obj);
}

- (BOOL)isCollecting
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentCollectionTransactionID != 0.0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isEmpty
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_cachedElementsByTitle count]== 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)updateWithAXElements:(id)elements
{
  v43 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = v5;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_currentCollectionTransactionID = v6;
  selfCopy->_cachedCollectionTransactionID = v6;
  array = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = elementsCopy;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v9)
  {
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        [(NSArray *)array addObjectsFromArray:*(*(&v36 + 1) + 8 * i)];
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  axElements = selfCopy->_axElements;
  selfCopy->_axElements = array;

  selfCopy->_areElementsNumbered = 0;
  objc_sync_exit(selfCopy);

  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  if (selfCopy->_currentCollectionTransactionID != v6)
  {
    goto LABEL_29;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = obj;
  v27 = [v23 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (!v27)
  {

LABEL_29:
    objc_sync_enter(selfCopy);
LABEL_30:
    [(NSMutableDictionary *)selfCopy->_cachedElementsByTitle removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_cachedElementsByTitle addEntriesFromDictionary:v13];
    [(NSMutableDictionary *)selfCopy->_cachedElementsByTrait removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_cachedElementsByTrait addEntriesFromDictionary:v14];
    [(NSMutableArray *)selfCopy->_cachedElementsSorted removeAllObjects];
    [(NSMutableArray *)selfCopy->_cachedElementsSorted addObjectsFromArray:v15];
    goto LABEL_31;
  }

  v24 = 0;
  v26 = *v33;
  v16 = 1;
  do
  {
    for (j = 0; j != v27; ++j)
    {
      if (*v33 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v18 = *(*(&v32 + 1) + 8 * j);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v20)
      {
        v21 = *v29;
        while (2)
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v19);
            }

            [(CACLabeledElementsCollection *)selfCopy addLabeledElementWithItemElement:*(*(&v28 + 1) + 8 * k) orderingPriority:v16 elementsByTitle:v13 elementsByTrait:v14 elementsSorted:v15];
            if (selfCopy->_currentCollectionTransactionID != v6)
            {
              v24 = 1;
              goto LABEL_24;
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      ++v16;
    }

    v27 = [v23 countByEnumeratingWithState:&v32 objects:v41 count:16];
  }

  while (v27);

  objc_sync_enter(selfCopy);
  if ((v24 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (selfCopy->_currentCollectionTransactionID == v6)
  {
    selfCopy->_currentCollectionTransactionID = 0.0;
  }

  objc_sync_exit(selfCopy);
}

- (unint64_t)collectionCount
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_cachedElementsByTitle allValues];
  v4 = 0;
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) count];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);
  return v4;
}

- (id)collectedElements
{
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [array addObjectsFromArray:selfCopy->_cachedElementsSorted];
  objc_sync_exit(selfCopy);

  return array;
}

- (id)newlyCollectedElements
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  collectedElements = [(CACLabeledElementsCollection *)selfCopy collectedElements];
  v6 = [collectedElements countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(collectedElements);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 hasBeenCollected] & 1) == 0)
        {
          [array addObject:v9];
          [v9 setHasBeenCollected:1];
        }
      }

      v6 = [collectedElements countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);

  return array;
}

- (void)resetCollectedFlagForAllElements
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  collectedElements = [(CACLabeledElementsCollection *)selfCopy collectedElements];
  v4 = [collectedElements countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(collectedElements);
        }

        [*(*(&v7 + 1) + 8 * v6++) setHasBeenCollected:0];
      }

      while (v4 != v6);
      v4 = [collectedElements countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (id)copyTableOfCollectedElementsByTitle
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = selfCopy->_cachedElementsByTitle;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)selfCopy->_cachedElementsByTitle objectForKey:v9, v13];
        v11 = [v10 copy];

        [v3 setObject:v11 forKey:v9];
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  return v3;
}

- (id)copyListOfCollectedElementsSorted
{
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [v3 addObjectsFromArray:selfCopy->_cachedElementsSorted];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)collectedElementsWithTitle:(id)title
{
  titleCopy = title;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedElementsByTitle = selfCopy->_cachedElementsByTitle;
  lowercaseString = [titleCopy lowercaseString];
  v8 = [(NSMutableDictionary *)cachedElementsByTitle objectForKey:lowercaseString];
  v9 = [v8 copy];

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)copyTableOfCollectedElementsByTrait
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = selfCopy->_cachedElementsByTrait;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)selfCopy->_cachedElementsByTrait objectForKey:v9, v13];
        v11 = [v10 copy];

        [v3 setObject:v11 forKey:v9];
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  return v3;
}

- (id)collectedElementsWithTrait:(unint64_t)trait
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedElementsByTrait = selfCopy->_cachedElementsByTrait;
  v6 = [(CACLabeledElementsCollection *)selfCopy _keyFromTrait:trait];
  v7 = [(NSMutableDictionary *)cachedElementsByTrait objectForKey:v6];
  v8 = [v7 copy];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)addLabeledElementWithItemElement:(id)element orderingPriority:(int64_t)priority elementsByTitle:(id)title elementsByTrait:(id)trait elementsSorted:(id)sorted
{
  v49 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  titleCopy = title;
  traitCopy = trait;
  sortedCopy = sorted;
  v14 = MEMORY[0x277CBEB18];
  v42 = elementCopy;
  recognitionStrings = [elementCopy recognitionStrings];
  if (recognitionStrings)
  {
    recognitionStrings2 = [elementCopy recognitionStrings];
    v43 = [v14 arrayWithArray:recognitionStrings2];
  }

  else
  {
    v43 = [v14 arrayWithArray:MEMORY[0x277CBEBF8]];
  }

  v17 = v43;
  if ([v43 count])
  {
    v18 = 0;
    do
    {
      v19 = +[CACAppElementsEvaluationManager sharedManager];
      v20 = [v43 objectAtIndex:v18];
      v21 = [v19 isRecognitionString:v20 supportedForElement:elementCopy];

      if (v21)
      {
        ++v18;
        v17 = v43;
      }

      else
      {
        v17 = v43;
        [v43 removeObjectAtIndex:v18];
      }
    }

    while (v18 < [v17 count]);
  }

  v22 = [CACLabeledElement alloc];
  [elementCopy visibleFrame];
  v23 = [(CACLabeledElement *)v22 initWithElement:elementCopy recognitionStrings:v17 rectangle:?];
  if (v23)
  {
    obj = self;
    objc_sync_enter(obj);
    element = [(CACLabeledElement *)v23 element];
    if ([CACLabeledElementsCollection canShowElementActionsForElement:element])
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    [(CACLabeledElement *)v23 setBadgeIndicatorMask:v25];

    [(CACLabeledElement *)v23 setOrderingPriority:priority];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = v17;
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v27)
    {
      v28 = *v45;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v44 + 1) + 8 * i);
          lowercaseString = [v30 lowercaseString];
          array = [titleCopy objectForKey:lowercaseString];

          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            lowercaseString2 = [v30 lowercaseString];
            [titleCopy setObject:array forKey:lowercaseString2];
          }

          [array addObject:v23];
        }

        v27 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v27);
    }

    traits = [v42 traits];
    v35 = 1;
    v36 = 64;
    do
    {
      if ((v35 & traits) != 0)
      {
        v37 = [(CACLabeledElementsCollection *)obj _keyFromTrait:v35];
        array2 = [traitCopy objectForKey:v37];
        if (!array2)
        {
          array2 = [MEMORY[0x277CBEB18] array];
          [traitCopy setObject:array2 forKey:v37];
        }

        [array2 addObject:v23];
      }

      v35 *= 2;
      --v36;
    }

    while (v36);
    [sortedCopy addObject:v23];
    objc_sync_exit(obj);
  }
}

@end
@interface RESection
- (BOOL)containsElementWithId:(id)id;
- (RESection)initWithSectionDescriptor:(id)descriptor comparator:(id)comparator;
- (RESectionDelegate)delegate;
- (id)_createSectionForGroup:(id)group;
- (id)_groupForIdentifier:(id)identifier;
- (id)_groupIdentifierForElement:(id)element;
- (id)elementIdAtIndex:(unint64_t)index;
- (id)section:(id)section groupForIdentifier:(id)identifier;
- (int64_t)_compareElement:(id)element toElement:(id)toElement level:(unint64_t)level;
- (int64_t)_mappedIndexFromIndex:(int64_t)index;
- (int64_t)count;
- (int64_t)indexOfElementWithId:(id)id;
- (int64_t)visibleCount;
- (void)_performOrEnqueueBlock:(id)block;
- (void)_removeElementWithId:(id)id;
- (void)_removeSection:(id)section;
- (void)addElement:(id)element forceHidden:(BOOL)hidden;
- (void)performBatchUpdates:(id)updates;
- (void)removeElementWithId:(id)id;
- (void)sectionDidUpdateContentOrder:(id)order;
- (void)setComparator:(id)comparator;
- (void)updateElementWithId:(id)id withNewFeatureSet:(id)set forceHidden:(BOOL)hidden;
@end

@implementation RESection

- (RESection)initWithSectionDescriptor:(id)descriptor comparator:(id)comparator
{
  descriptorCopy = descriptor;
  comparatorCopy = comparator;
  v34.receiver = self;
  v34.super_class = RESection;
  v9 = [(RESection *)&v34 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, descriptor);
    v11 = [comparatorCopy copy];
    comparator = v10->_comparator;
    v10->_comparator = v11;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    elements = v10->_elements;
    v10->_elements = dictionary;

    v15 = [MEMORY[0x277CBEB58] set];
    hiddenElements = v10->_hiddenElements;
    v10->_hiddenElements = v15;

    v10->_allowsSubsections = [descriptorCopy allowsSubsections];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    subsections = v10->_subsections;
    v10->_subsections = dictionary2;

    array = [MEMORY[0x277CBEB18] array];
    batchBlocks = v10->_batchBlocks;
    v10->_batchBlocks = array;

    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(comparatorCopy, "comparisonLevels")}];
    objc_initWeak(&location, v10);
    invertRanking = [descriptorCopy invertRanking];
    for (i = 0; i < [comparatorCopy comparisonLevels]; ++i)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __50__RESection_initWithSectionDescriptor_comparator___block_invoke;
      v30[3] = &unk_2785FB330;
      objc_copyWeak(v31, &location);
      v32 = invertRanking;
      v31[1] = i;
      v24 = MEMORY[0x22AABC5E0](v30);
      [v21 addObject:v24];

      objc_destroyWeak(v31);
    }

    v25 = -[REElementQueue initWithMaximumRelevantElementsCount:comparators:]([REElementQueue alloc], "initWithMaximumRelevantElementsCount:comparators:", [descriptorCopy maxElementCount], v21);
    queue = v10->_queue;
    v10->_queue = v25;

    maxElementCount = [(_RESectionDescriptor *)v10->_descriptor maxElementCount];
    if (maxElementCount >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = maxElementCount;
    }

    [(RESection *)v10 setMaximumElements:v28];
    objc_destroyWeak(&location);
  }

  return v10;
}

uint64_t __50__RESection_initWithSectionDescriptor_comparator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    v9 = v5;
    v10 = v6;
  }

  else
  {
    v9 = v6;
    v10 = v5;
  }

  v11 = [WeakRetained _compareElement:v9 toElement:v10 level:*(a1 + 40)];

  return v11;
}

- (void)setComparator:(id)comparator
{
  if (self->_comparator != comparator)
  {
    v23[9] = v3;
    v23[10] = v4;
    comparatorCopy = comparator;
    v7 = RELogForDomain(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(RESection *)self setComparator:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = [comparatorCopy copy];
    comparator = self->_comparator;
    self->_comparator = v14;

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __27__RESection_setComparator___block_invoke;
    v23[3] = &unk_2785F9AB8;
    v23[4] = self;
    [(RESection *)self performBatchUpdates:v23];
    v16 = RELogForDomain(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(RESection *)self setComparator:v16, v17, v18, v19, v20, v21, v22];
    }
  }
}

void __27__RESection_setComparator___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = [*(*(a1 + 32) + 24) copy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__RESection_setComparator___block_invoke_2;
  v9[3] = &unk_2785FB358;
  v9[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v9];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__RESection_setComparator___block_invoke_3;
  v6[3] = &unk_2785FB380;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
}

void __27__RESection_setComparator___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [*(a1 + 40) addElement:v6 forceHidden:{objc_msgSend(v5, "containsObject:", a2)}];
}

- (int64_t)_compareElement:(id)element toElement:(id)toElement level:(unint64_t)level
{
  v39 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  toElementCopy = toElement;
  v10 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:elementCopy];
  v11 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:toElementCopy];
  v12 = v11;
  if (!self->_allowsSubsections)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  if (!v10)
  {
    if (v11)
    {
      if (![v11 visibleCount])
      {
        v18 = 1;
        goto LABEL_22;
      }

      v19 = 0;
LABEL_31:
      elements = self->_elements;
      v30 = [v12 elementIdAtIndex:0];
      v20 = [(NSMutableDictionary *)elements objectForKeyedSubscript:v30];

      if (v19)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  visibleCount = [v10 visibleCount];
  v14 = visibleCount;
  if (!v12)
  {
    if (!visibleCount)
    {
      v18 = -1;
      goto LABEL_22;
    }

LABEL_30:
    v27 = self->_elements;
    v28 = [v10 elementIdAtIndex:0];
    v19 = [(NSMutableDictionary *)v27 objectForKeyedSubscript:v28];

    if (v12)
    {
      goto LABEL_31;
    }

    v20 = 0;
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_10:
    v19 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:elementCopy];
LABEL_11:
    if (!v20)
    {
      v20 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:toElementCopy];
    }

    v21 = [(REMLElementComparator *)self->_comparator compareElement:v19 toElement:v20 level:level];
    v22 = REStringFromRankingOrder(v21);
    v23 = RELogForDomain(6);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      identifier = [v19 identifier];
      [v20 identifier];
      *buf = 138412802;
      v34 = v22;
      v35 = 2112;
      v36 = identifier;
      v38 = v37 = 2112;
      v31 = v38;
      _os_log_debug_impl(&dword_22859F000, v23, OS_LOG_TYPE_DEBUG, "Comparator (%@) [%@] to [%@]", buf, 0x20u);
    }

    if (v21 == -1)
    {
      v24 = -1;
    }

    else
    {
      v24 = 0;
    }

    if (v21 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v24;
    }

    goto LABEL_22;
  }

  visibleCount2 = [v12 visibleCount];
  if (!(v14 | visibleCount2))
  {
    name = [v10 name];
    name2 = [v12 name];
    v18 = [name compare:name2];

    goto LABEL_22;
  }

  if (v14)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

  if (v14 && visibleCount2)
  {
    goto LABEL_30;
  }

LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_groupForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(RESection *)self delegate];
  v6 = [delegate section:self groupForIdentifier:identifierCopy];

  return v6;
}

- (id)_groupIdentifierForElement:(id)element
{
  if (self->_allowsSubsections)
  {
    featureMap = [element featureMap];
    v5 = +[REFeature groupFeature];
    v6 = [featureMap featureValueForFeature:v5];

    if (v6)
    {
      stringValue = [v6 stringValue];
      if ([stringValue length])
      {
        v8 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:stringValue];

        if (v8 || ([(RESection *)self _groupForIdentifier:stringValue], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
        {
          v9 = stringValue;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_createSectionForGroup:(id)group
{
  v3 = 0;
  if (group && self->_allowsSubsections)
  {
    groupCopy = group;
    v6 = objc_alloc_init(RESectionDescriptor);
    -[RESectionDescriptor setMaxElementCount:](v6, "setMaxElementCount:", [groupCopy maxElementCount]);
    groupIdentifier = [groupCopy groupIdentifier];
    [(RESectionDescriptor *)v6 setName:groupIdentifier];

    v8 = [[_RESectionDescriptor alloc] initWithSectionDescriptor:v6];
    v3 = [[RESection alloc] initWithSectionDescriptor:v8 comparator:self->_comparator];
    v3->_allowsSubsections = 0;
    [(RESection *)v3 setDelegate:self];
    subsections = self->_subsections;
    groupIdentifier2 = [groupCopy groupIdentifier];

    [(NSMutableDictionary *)subsections setObject:v3 forKeyedSubscript:groupIdentifier2];
  }

  return v3;
}

- (void)_removeSection:(id)section
{
  sectionCopy = section;
  v5 = sectionCopy;
  if (self->_allowsSubsections)
  {
    v8 = sectionCopy;
    v6 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:sectionCopy];
    v7 = v6;
    if (v6)
    {
      [v6 setDelegate:0];
      [(NSMutableDictionary *)self->_subsections removeObjectForKey:v8];
    }

    v5 = v8;
  }

  MEMORY[0x2821F96F8](sectionCopy, v5);
}

- (int64_t)count
{
  allowsSubsections = self->_allowsSubsections;
  v4 = [(REElementQueue *)self->_queue count];
  v5 = v4;
  if (!allowsSubsections)
  {
    return v4;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    subsections = self->_subsections;
    v9 = [(REElementQueue *)self->_queue elementAtIndex:v6];
    v10 = [(NSMutableDictionary *)subsections objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 count];
    }

    else
    {
      v11 = 1;
    }

    v7 += v11;

    ++v6;
  }

  while (v5 != v6);
  return v7;
}

- (int64_t)visibleCount
{
  allowsSubsections = self->_allowsSubsections;
  visibleCount = [(REElementQueue *)self->_queue visibleCount];
  v5 = visibleCount;
  if (!allowsSubsections)
  {
    return visibleCount;
  }

  if (!visibleCount)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    subsections = self->_subsections;
    v9 = [(REElementQueue *)self->_queue elementAtIndex:v6];
    v10 = [(NSMutableDictionary *)subsections objectForKeyedSubscript:v9];

    if (v10)
    {
      visibleCount2 = [v10 visibleCount];
    }

    else
    {
      visibleCount2 = 1;
    }

    v7 += visibleCount2;

    ++v6;
  }

  while (v5 != v6);
  return v7;
}

- (void)addElement:(id)element forceHidden:(BOOL)hidden
{
  elementCopy = element;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__RESection_addElement_forceHidden___block_invoke;
  v8[3] = &unk_2785FB3A8;
  v8[4] = self;
  v9 = elementCopy;
  hiddenCopy = hidden;
  v7 = elementCopy;
  [(RESection *)self _performOrEnqueueBlock:v8];
}

- (void)removeElementWithId:(id)id
{
  idCopy = id;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__RESection_removeElementWithId___block_invoke;
  v6[3] = &unk_2785F9AE0;
  v6[4] = self;
  v7 = idCopy;
  v5 = idCopy;
  [(RESection *)self _performOrEnqueueBlock:v6];
}

- (void)_removeElementWithId:(id)id
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:idCopy];
  v6 = [(RESection *)self _groupIdentifierForElement:v5];
  if (v6)
  {
    v7 = RELogForDomain(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412802;
      selfCopy = self;
      v16 = 2112;
      v17 = idCopy;
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&dword_22859F000, v7, OS_LOG_TYPE_DEBUG, "%@ remove element %@ from subsection %@", &v14, 0x20u);
    }

    v8 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = v8;
      [v8 removeElementWithId:idCopy];
      [(NSMutableDictionary *)self->_elements removeObjectForKey:idCopy];
      [(NSMutableSet *)self->_hiddenElements removeObject:idCopy];
      if (![v9 count])
      {
        [(REElementQueue *)self->_queue removeElement:v6];
        [(NSMutableDictionary *)self->_subsections removeObjectForKey:v6];
        v10 = RELogForDomain(6);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [RESection _removeElementWithId:];
        }
      }

      goto LABEL_16;
    }

    v11 = RELogForDomain(6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [RESection _addElement:forceHidden:];
    }
  }

  v12 = RELogForDomain(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [RESection _removeElementWithId:];
  }

  [(REElementQueue *)self->_queue removeElement:idCopy];
  [(NSMutableDictionary *)self->_elements removeObjectForKey:idCopy];
  [(NSMutableSet *)self->_hiddenElements removeObject:idCopy];
LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateElementWithId:(id)id withNewFeatureSet:(id)set forceHidden:(BOOL)hidden
{
  idCopy = id;
  setCopy = set;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__RESection_updateElementWithId_withNewFeatureSet_forceHidden___block_invoke;
  v12[3] = &unk_2785FB3D0;
  v12[4] = self;
  v13 = idCopy;
  v14 = setCopy;
  hiddenCopy = hidden;
  v10 = setCopy;
  v11 = idCopy;
  [(RESection *)self _performOrEnqueueBlock:v12];
}

void __64__RESection__updateElementWithId_withNewFeatureSet_forceHidden___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 featureMap];
  [v6 setValue:a3 forFeature:v5];
}

- (void)_performOrEnqueueBlock:(id)block
{
  if (self->_performingBatch)
  {
    batchBlocks = self->_batchBlocks;
    delegate = MEMORY[0x22AABC5E0](block, a2);
    [(NSMutableArray *)batchBlocks addObject:?];
  }

  else
  {
    (*(block + 2))(block, a2);
    delegate = [(RESection *)self delegate];
    [delegate sectionDidUpdateContentOrder:self];
  }
}

- (void)performBatchUpdates:(id)updates
{
  updatesCopy = updates;
  v5 = updatesCopy;
  self->_performingBatch = 1;
  if (updatesCopy)
  {
    (*(updatesCopy + 2))(updatesCopy);
  }

  self->_performingBatch = 0;
  if ([(NSMutableArray *)self->_batchBlocks count])
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__RESection_performBatchUpdates___block_invoke;
    v8[3] = &unk_2785F9AB8;
    v8[4] = self;
    [(REElementQueue *)queue performBatchUpdates:v8];
    [(NSMutableArray *)self->_batchBlocks removeAllObjects];
    delegate = [(RESection *)self delegate];
    [delegate sectionDidUpdateContentOrder:self];
  }
}

void __33__RESection_performBatchUpdates___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 64);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)containsElementWithId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:id];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)indexOfElementWithId:(id)id
{
  idCopy = id;
  v5 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:idCopy];

  if (!v5)
  {
    goto LABEL_11;
  }

  queue = self->_queue;
  if (!self->_subsections)
  {
    v9 = [(REElementQueue *)queue indexOfElement:idCopy];
    goto LABEL_15;
  }

  visibleCount = [(REElementQueue *)queue visibleCount];
  if (visibleCount >= 1)
  {
    v8 = visibleCount;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = [(REElementQueue *)self->_queue elementAtIndex:v10];
      if ([v11 isEqualToString:idCopy])
      {
        break;
      }

      v12 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v11];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 indexOfElementWithId:idCopy];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 += v14;

          break;
        }

        visibleCount2 = [v13 visibleCount];
      }

      else
      {
        visibleCount2 = 1;
      }

      v9 += visibleCount2;

      if (v8 == ++v10)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_15:

  return v9;
}

- (id)elementIdAtIndex:(unint64_t)index
{
  indexCopy = index;
  allowsSubsections = self->_allowsSubsections;
  queue = self->_queue;
  if (!allowsSubsections)
  {
    v13 = [(REElementQueue *)queue elementAtIndex:index];
    goto LABEL_15;
  }

  visibleCount = [(REElementQueue *)queue visibleCount];
  if (visibleCount < 1)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_15;
  }

  v8 = visibleCount;
  v9 = 0;
  while (1)
  {
    v10 = [(REElementQueue *)self->_queue elementAtIndex:v9];
    v11 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v10];
    v12 = v11;
    if (!v11)
    {
      break;
    }

    if ([v11 visibleCount] > indexCopy)
    {
      v14 = [v12 elementIdAtIndex:indexCopy];
      goto LABEL_14;
    }

    indexCopy -= [v12 visibleCount];
LABEL_9:

    if (v8 == ++v9)
    {
      goto LABEL_10;
    }
  }

  if (indexCopy)
  {
    --indexCopy;
    goto LABEL_9;
  }

  v14 = v10;
LABEL_14:
  v13 = v14;

LABEL_15:

  return v13;
}

- (int64_t)_mappedIndexFromIndex:(int64_t)index
{
  if (!self->_allowsSubsections)
  {
    return index;
  }

  if (index < 1)
  {
    return 0;
  }

  v5 = 0;
  for (i = 0; i != index; ++i)
  {
    v7 = [(REElementQueue *)self->_queue elementAtIndex:i];
    v8 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      visibleCount = [v8 visibleCount];
    }

    else
    {
      visibleCount = 1;
    }

    v5 += visibleCount;
  }

  return v5;
}

- (void)sectionDidUpdateContentOrder:(id)order
{
  orderCopy = order;
  v5 = RELogForDomain(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(RESection *)orderCopy sectionDidUpdateContentOrder:v5, v6, v7, v8, v9, v10, v11];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__RESection_sectionDidUpdateContentOrder___block_invoke;
  v13[3] = &unk_2785F9AE0;
  v13[4] = self;
  v14 = orderCopy;
  v12 = orderCopy;
  [(RESection *)self _performOrEnqueueBlock:v13];
}

void __42__RESection_sectionDidUpdateContentOrder___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) name];
  [v2 updatePositionForElement:v3 hidden:{objc_msgSend(*(a1 + 40), "visibleCount") == 0}];
}

- (id)section:(id)section groupForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(RESection *)self delegate];
  v7 = [delegate section:self groupForIdentifier:identifierCopy];

  return v7;
}

- (RESectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setComparator:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_22859F000, a2, a3, "%@ begin loading new comparator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setComparator:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_22859F000, a2, a3, "%@ finish loading new comparator", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addElement:forceHidden:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2(&dword_22859F000, v0, v1, "%@ creating new subsection %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_addElement:forceHidden:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2(&dword_22859F000, v0, v1, "%@ not creating new subsection for identifier %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_addElement:forceHidden:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2(&dword_22859F000, v0, v1, "%@ no subsections available for element %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_removeElementWithId:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2(&dword_22859F000, v0, v1, "%@ removing empty subsection %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_removeElementWithId:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2(&dword_22859F000, v0, v1, "%@ remove element %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sectionDidUpdateContentOrder:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_22859F000, a2, a3, "Section (%@) did update content", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end
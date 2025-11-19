@interface RESection
- (BOOL)containsElementWithId:(id)a3;
- (RESection)initWithSectionDescriptor:(id)a3 comparator:(id)a4;
- (RESectionDelegate)delegate;
- (id)_createSectionForGroup:(id)a3;
- (id)_groupForIdentifier:(id)a3;
- (id)_groupIdentifierForElement:(id)a3;
- (id)elementIdAtIndex:(unint64_t)a3;
- (id)section:(id)a3 groupForIdentifier:(id)a4;
- (int64_t)_compareElement:(id)a3 toElement:(id)a4 level:(unint64_t)a5;
- (int64_t)_mappedIndexFromIndex:(int64_t)a3;
- (int64_t)count;
- (int64_t)indexOfElementWithId:(id)a3;
- (int64_t)visibleCount;
- (void)_performOrEnqueueBlock:(id)a3;
- (void)_removeElementWithId:(id)a3;
- (void)_removeSection:(id)a3;
- (void)addElement:(id)a3 forceHidden:(BOOL)a4;
- (void)performBatchUpdates:(id)a3;
- (void)removeElementWithId:(id)a3;
- (void)sectionDidUpdateContentOrder:(id)a3;
- (void)setComparator:(id)a3;
- (void)updateElementWithId:(id)a3 withNewFeatureSet:(id)a4 forceHidden:(BOOL)a5;
@end

@implementation RESection

- (RESection)initWithSectionDescriptor:(id)a3 comparator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34.receiver = self;
  v34.super_class = RESection;
  v9 = [(RESection *)&v34 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, a3);
    v11 = [v8 copy];
    comparator = v10->_comparator;
    v10->_comparator = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    elements = v10->_elements;
    v10->_elements = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    hiddenElements = v10->_hiddenElements;
    v10->_hiddenElements = v15;

    v10->_allowsSubsections = [v7 allowsSubsections];
    v17 = [MEMORY[0x277CBEB38] dictionary];
    subsections = v10->_subsections;
    v10->_subsections = v17;

    v19 = [MEMORY[0x277CBEB18] array];
    batchBlocks = v10->_batchBlocks;
    v10->_batchBlocks = v19;

    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "comparisonLevels")}];
    objc_initWeak(&location, v10);
    v22 = [v7 invertRanking];
    for (i = 0; i < [v8 comparisonLevels]; ++i)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __50__RESection_initWithSectionDescriptor_comparator___block_invoke;
      v30[3] = &unk_2785FB330;
      objc_copyWeak(v31, &location);
      v32 = v22;
      v31[1] = i;
      v24 = MEMORY[0x22AABC5E0](v30);
      [v21 addObject:v24];

      objc_destroyWeak(v31);
    }

    v25 = -[REElementQueue initWithMaximumRelevantElementsCount:comparators:]([REElementQueue alloc], "initWithMaximumRelevantElementsCount:comparators:", [v7 maxElementCount], v21);
    queue = v10->_queue;
    v10->_queue = v25;

    v27 = [(_RESectionDescriptor *)v10->_descriptor maxElementCount];
    if (v27 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
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

- (void)setComparator:(id)a3
{
  if (self->_comparator != a3)
  {
    v23[9] = v3;
    v23[10] = v4;
    v6 = a3;
    v7 = RELogForDomain(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(RESection *)self setComparator:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = [v6 copy];
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

- (int64_t)_compareElement:(id)a3 toElement:(id)a4 level:(unint64_t)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v8];
  v11 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v9];
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

  v13 = [v10 visibleCount];
  v14 = v13;
  if (!v12)
  {
    if (!v13)
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
    v19 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v8];
LABEL_11:
    if (!v20)
    {
      v20 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v9];
    }

    v21 = [(REMLElementComparator *)self->_comparator compareElement:v19 toElement:v20 level:a5];
    v22 = REStringFromRankingOrder(v21);
    v23 = RELogForDomain(6);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v32 = [v19 identifier];
      [v20 identifier];
      *buf = 138412802;
      v34 = v22;
      v35 = 2112;
      v36 = v32;
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

  v15 = [v12 visibleCount];
  if (!(v14 | v15))
  {
    v16 = [v10 name];
    v17 = [v12 name];
    v18 = [v16 compare:v17];

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

  if (v14 && v15)
  {
    goto LABEL_30;
  }

LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_groupForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RESection *)self delegate];
  v6 = [v5 section:self groupForIdentifier:v4];

  return v6;
}

- (id)_groupIdentifierForElement:(id)a3
{
  if (self->_allowsSubsections)
  {
    v4 = [a3 featureMap];
    v5 = +[REFeature groupFeature];
    v6 = [v4 featureValueForFeature:v5];

    if (v6)
    {
      v7 = [v6 stringValue];
      if ([v7 length])
      {
        v8 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v7];

        if (v8 || ([(RESection *)self _groupForIdentifier:v7], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
        {
          v9 = v7;
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

- (id)_createSectionForGroup:(id)a3
{
  v3 = 0;
  if (a3 && self->_allowsSubsections)
  {
    v5 = a3;
    v6 = objc_alloc_init(RESectionDescriptor);
    -[RESectionDescriptor setMaxElementCount:](v6, "setMaxElementCount:", [v5 maxElementCount]);
    v7 = [v5 groupIdentifier];
    [(RESectionDescriptor *)v6 setName:v7];

    v8 = [[_RESectionDescriptor alloc] initWithSectionDescriptor:v6];
    v3 = [[RESection alloc] initWithSectionDescriptor:v8 comparator:self->_comparator];
    v3->_allowsSubsections = 0;
    [(RESection *)v3 setDelegate:self];
    subsections = self->_subsections;
    v10 = [v5 groupIdentifier];

    [(NSMutableDictionary *)subsections setObject:v3 forKeyedSubscript:v10];
  }

  return v3;
}

- (void)_removeSection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allowsSubsections)
  {
    v8 = v4;
    v6 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      [v6 setDelegate:0];
      [(NSMutableDictionary *)self->_subsections removeObjectForKey:v8];
    }

    v5 = v8;
  }

  MEMORY[0x2821F96F8](v4, v5);
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
  v4 = [(REElementQueue *)self->_queue visibleCount];
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
      v11 = [v10 visibleCount];
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

- (void)addElement:(id)a3 forceHidden:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__RESection_addElement_forceHidden___block_invoke;
  v8[3] = &unk_2785FB3A8;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(RESection *)self _performOrEnqueueBlock:v8];
}

- (void)removeElementWithId:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__RESection_removeElementWithId___block_invoke;
  v6[3] = &unk_2785F9AE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(RESection *)self _performOrEnqueueBlock:v6];
}

- (void)_removeElementWithId:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v4];
  v6 = [(RESection *)self _groupIdentifierForElement:v5];
  if (v6)
  {
    v7 = RELogForDomain(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&dword_22859F000, v7, OS_LOG_TYPE_DEBUG, "%@ remove element %@ from subsection %@", &v14, 0x20u);
    }

    v8 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = v8;
      [v8 removeElementWithId:v4];
      [(NSMutableDictionary *)self->_elements removeObjectForKey:v4];
      [(NSMutableSet *)self->_hiddenElements removeObject:v4];
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

  [(REElementQueue *)self->_queue removeElement:v4];
  [(NSMutableDictionary *)self->_elements removeObjectForKey:v4];
  [(NSMutableSet *)self->_hiddenElements removeObject:v4];
LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateElementWithId:(id)a3 withNewFeatureSet:(id)a4 forceHidden:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__RESection_updateElementWithId_withNewFeatureSet_forceHidden___block_invoke;
  v12[3] = &unk_2785FB3D0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
  [(RESection *)self _performOrEnqueueBlock:v12];
}

void __64__RESection__updateElementWithId_withNewFeatureSet_forceHidden___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 featureMap];
  [v6 setValue:a3 forFeature:v5];
}

- (void)_performOrEnqueueBlock:(id)a3
{
  if (self->_performingBatch)
  {
    batchBlocks = self->_batchBlocks;
    v5 = MEMORY[0x22AABC5E0](a3, a2);
    [(NSMutableArray *)batchBlocks addObject:?];
  }

  else
  {
    (*(a3 + 2))(a3, a2);
    v5 = [(RESection *)self delegate];
    [v5 sectionDidUpdateContentOrder:self];
  }
}

- (void)performBatchUpdates:(id)a3
{
  v4 = a3;
  v5 = v4;
  self->_performingBatch = 1;
  if (v4)
  {
    (*(v4 + 2))(v4);
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
    v7 = [(RESection *)self delegate];
    [v7 sectionDidUpdateContentOrder:self];
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

- (BOOL)containsElementWithId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)indexOfElementWithId:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v4];

  if (!v5)
  {
    goto LABEL_11;
  }

  queue = self->_queue;
  if (!self->_subsections)
  {
    v9 = [(REElementQueue *)queue indexOfElement:v4];
    goto LABEL_15;
  }

  v7 = [(REElementQueue *)queue visibleCount];
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = [(REElementQueue *)self->_queue elementAtIndex:v10];
      if ([v11 isEqualToString:v4])
      {
        break;
      }

      v12 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v11];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 indexOfElementWithId:v4];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 += v14;

          break;
        }

        v15 = [v13 visibleCount];
      }

      else
      {
        v15 = 1;
      }

      v9 += v15;

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

- (id)elementIdAtIndex:(unint64_t)a3
{
  v3 = a3;
  allowsSubsections = self->_allowsSubsections;
  queue = self->_queue;
  if (!allowsSubsections)
  {
    v13 = [(REElementQueue *)queue elementAtIndex:a3];
    goto LABEL_15;
  }

  v7 = [(REElementQueue *)queue visibleCount];
  if (v7 < 1)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_15;
  }

  v8 = v7;
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

    if ([v11 visibleCount] > v3)
    {
      v14 = [v12 elementIdAtIndex:v3];
      goto LABEL_14;
    }

    v3 -= [v12 visibleCount];
LABEL_9:

    if (v8 == ++v9)
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    --v3;
    goto LABEL_9;
  }

  v14 = v10;
LABEL_14:
  v13 = v14;

LABEL_15:

  return v13;
}

- (int64_t)_mappedIndexFromIndex:(int64_t)a3
{
  if (!self->_allowsSubsections)
  {
    return a3;
  }

  if (a3 < 1)
  {
    return 0;
  }

  v5 = 0;
  for (i = 0; i != a3; ++i)
  {
    v7 = [(REElementQueue *)self->_queue elementAtIndex:i];
    v8 = [(NSMutableDictionary *)self->_subsections objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 visibleCount];
    }

    else
    {
      v10 = 1;
    }

    v5 += v10;
  }

  return v5;
}

- (void)sectionDidUpdateContentOrder:(id)a3
{
  v4 = a3;
  v5 = RELogForDomain(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(RESection *)v4 sectionDidUpdateContentOrder:v5, v6, v7, v8, v9, v10, v11];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__RESection_sectionDidUpdateContentOrder___block_invoke;
  v13[3] = &unk_2785F9AE0;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [(RESection *)self _performOrEnqueueBlock:v13];
}

void __42__RESection_sectionDidUpdateContentOrder___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) name];
  [v2 updatePositionForElement:v3 hidden:{objc_msgSend(*(a1 + 40), "visibleCount") == 0}];
}

- (id)section:(id)a3 groupForIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(RESection *)self delegate];
  v7 = [v6 section:self groupForIdentifier:v5];

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
@interface REUIRelevanceEngineController
- (BOOL)_isElementHidden:(id)hidden;
- (BOOL)_sectionHasContent:(id)content;
- (BOOL)elementIsAvailable:(id)available;
- (BOOL)relevanceEngine:(id)engine isElementAtPathVisible:(id)visible;
- (NSSet)disabledDataSources;
- (REUIRelevanceEngineController)initWithRelevanceEngine:(id)engine;
- (REUIRelevanceEngineController)initWithRelevanceEngine:(id)engine sectionOrder:(id)order;
- (REUIRelevanceEngineControllerDelegate)delegate;
- (id)_contentAtIndexPath:(id)path;
- (id)_contentForElement:(id)element;
- (id)_controllerIndexPathForEngineIndexPath:(id)path;
- (id)_engineIndexPathForControllerIndexPath:(id)path;
- (id)_indexPathForElementWithIdentifier:(id)identifier;
- (id)_indexPathForSectionPath:(id)path;
- (id)_sectionAtIndex:(int64_t)index;
- (id)_sectionPathForIndexPath:(id)path;
- (id)actionAtIndexPath:(id)path;
- (id)contentAtIndexPath:(id)path;
- (id)elementAtIndexPath:(id)path;
- (id)elementIdentifierAtIndexPath:(id)path;
- (id)elementsOrdered:(unint64_t)ordered relativeToElement:(id)element;
- (id)generateDiffableSnapshot;
- (id)identifierForElementAtIndexPath:(id)path;
- (id)indexPathForElementWithIdentifier:(id)identifier;
- (id)interactionTypeForElement:(id)element;
- (id)metadataForElementWithIdentifier:(id)identifier;
- (id)predictedContentForSectionAtIndex:(unint64_t)index atDate:(id)date limit:(int64_t)limit;
- (id)predictedElementsForSectionAtIndex:(unint64_t)index atDate:(id)date limit:(int64_t)limit;
- (id)predictionForElementAtIndexPath:(id)path;
- (int64_t)_indexForSection:(id)section;
- (unint64_t)_numberOfItemsInSectionAtIndex:(unint64_t)index;
- (unint64_t)numberOfItemsInSectionAtIndex:(unint64_t)index;
- (void)_enumerateEngineElementsInSection:(unint64_t)section withOptions:(unint64_t)options usingBlock:(id)block;
- (void)_enumerateEngineElementsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)_loadNewRelevanceEngine:(id)engine withCompletion:(id)completion;
- (void)_performBatchUpdateUsingBlock:(id)block completion:(id)completion;
- (void)_performOperations:(id)operations toSection:(unint64_t)section;
- (void)_performOrEnqueueOperation:(id)operation;
- (void)_setElement:(id)element atIndexPath:(id)path hidden:(BOOL)hidden;
- (void)dealloc;
- (void)elemenAtIndexPathDidDisplay:(id)display;
- (void)elementAtIndexPathDidEndDisplay:(id)display;
- (void)elementAtIndexPathWasSelected:(id)selected;
- (void)makeCurrent;
- (void)relevanceEngine:(id)engine didInsertElement:(id)element atPath:(id)path;
- (void)relevanceEngine:(id)engine didMoveElement:(id)element fromPath:(id)path toPath:(id)toPath;
- (void)relevanceEngine:(id)engine didReloadElement:(id)element atPath:(id)path;
- (void)relevanceEngine:(id)engine didRemoveElement:(id)element atPath:(id)path;
- (void)relevanceEngineDidBeginUpdatingRelevance:(id)relevance;
- (void)relevanceEngineDidFinishUpdatingRelevance:(id)relevance;
- (void)resignCurrent;
- (void)setAllowsLocationUse:(BOOL)use;
- (void)setDataSource:(id)source enabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)setWantsLiveDataSources:(BOOL)sources;
@end

@implementation REUIRelevanceEngineController

- (REUIRelevanceEngineController)initWithRelevanceEngine:(id)engine
{
  v26 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  configuration = [engineCopy configuration];
  sectionDescriptors = [configuration sectionDescriptors];

  v8 = [sectionDescriptors countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(sectionDescriptors);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        historicSectionDescriptor = [v12 historicSectionDescriptor];
        v14 = historicSectionDescriptor;
        if (historicSectionDescriptor)
        {
          name = [historicSectionDescriptor name];
          [array addObject:name];
        }

        name2 = [v12 name];
        [array addObject:name2];
      }

      v9 = [sectionDescriptors countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [array copy];
  v18 = [(REUIRelevanceEngineController *)self initWithRelevanceEngine:engineCopy sectionOrder:v17];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (REUIRelevanceEngineController)initWithRelevanceEngine:(id)engine sectionOrder:(id)order
{
  engineCopy = engine;
  orderCopy = order;
  v33.receiver = self;
  v33.super_class = REUIRelevanceEngineController;
  v8 = [(REUIRelevanceEngineController *)&v33 init];
  if (v8)
  {
    v9 = [orderCopy copy];
    sectionOrder = v8->_sectionOrder;
    v8->_sectionOrder = v9;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sectionNameOrdering = v8->_sectionNameOrdering;
    v8->_sectionNameOrdering = dictionary;

    v13 = v8->_sectionOrder;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __70__REUIRelevanceEngineController_initWithRelevanceEngine_sectionOrder___block_invoke;
    v31[3] = &unk_279AF5E70;
    v14 = v8;
    v32 = v14;
    [(NSArray *)v13 enumerateObjectsUsingBlock:v31];
    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(orderCopy, "count")}];
    currentElementStates = v14->_currentElementStates;
    v14->_currentElementStates = v15;

    v17 = objc_alloc_init(_REUIControllerTrainingContext);
    trainingContext = v14->_trainingContext;
    v14->_trainingContext = v17;

    [(_REUIControllerTrainingContext *)v14->_trainingContext setDelegate:v14];
    [engineCopy addTrainingContext:v14->_trainingContext];
    v19 = objc_alloc_init(MEMORY[0x277D44480]);
    preferences = v14->_preferences;
    v14->_preferences = v19;

    [engineCopy setPreferences:v14->_preferences forObject:v14];
    *&v14->_isShowingContentElements = 0;
    [(REUIRelevanceEngineController *)v14 setMinimumPositiveDwellTime:1.5];
    [(REUIRelevanceEngineController *)v14 setMaximumNegativeDwellTime:0.5];
    [(REUIRelevanceEngineController *)v14 setOnScreenElementCount:3];
    array = [MEMORY[0x277CBEB18] array];
    if ([(NSArray *)v8->_sectionOrder count])
    {
      v22 = 0;
      do
      {
        indexSet = [MEMORY[0x277CCAB58] indexSet];
        [array addObject:indexSet];

        ++v22;
      }

      while (v22 < [(NSArray *)v8->_sectionOrder count]);
    }

    v24 = [array copy];
    hiddenIndices = v14->_hiddenIndices;
    v14->_hiddenIndices = v24;

    v26 = [MEMORY[0x277CBEB58] set];
    hiddenBundleIdentifiers = v14->_hiddenBundleIdentifiers;
    v14->_hiddenBundleIdentifiers = v26;

    array2 = [MEMORY[0x277CBEB18] array];
    pendingOperations = v14->_pendingOperations;
    v14->_pendingOperations = array2;

    [(REUIRelevanceEngineController *)v14 _loadNewRelevanceEngine:engineCopy withCompletion:0];
  }

  return v8;
}

void __70__REUIRelevanceEngineController_initWithRelevanceEngine_sectionOrder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(*(a1 + 32) + 8) setObject:v7 forKeyedSubscript:v6];
}

- (void)dealloc
{
  [(RERelevanceEngine *)self->_engine removeTrainingContext:self->_trainingContext];
  [(RERelevanceEngine *)self->_engine removeObserver:self];
  [(RERelevanceEngine *)self->_engine removePreferencesForObject:self];
  v3.receiver = self;
  v3.super_class = REUIRelevanceEngineController;
  [(REUIRelevanceEngineController *)&v3 dealloc];
}

- (id)_sectionAtIndex:(int64_t)index
{
  if (index < 0 || [(NSArray *)self->_sectionOrder count]<= index)
  {
    v5 = *MEMORY[0x277CBE660];
    RERaiseInternalException();
  }

  sectionOrder = self->_sectionOrder;

  return [(NSArray *)sectionOrder objectAtIndexedSubscript:index];
}

- (int64_t)_indexForSection:(id)section
{
  sectionCopy = section;
  v5 = [(NSMutableDictionary *)self->_sectionNameOrdering objectForKeyedSubscript:sectionCopy];
  if (!v5)
  {
    v6 = *MEMORY[0x277CBE660];
    v9 = sectionCopy;
    RERaiseInternalException();
  }

  integerValue = [v5 integerValue];

  return integerValue;
}

- (id)_sectionPathForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[REUIRelevanceEngineController _sectionAtIndex:](self, "_sectionAtIndex:", [pathCopy section]);
  item = [pathCopy item];

  v7 = [MEMORY[0x277D444B0] sectionPathWithSectionName:v5 element:item];

  return v7;
}

- (id)_indexPathForSectionPath:(id)path
{
  pathCopy = path;
  sectionName = [pathCopy sectionName];
  v6 = [(REUIRelevanceEngineController *)self _indexForSection:sectionName];

  element = [pathCopy element];
  v8 = MEMORY[0x277CCAA70];

  return [v8 indexPathForItem:element inSection:v6];
}

- (id)_controllerIndexPathForEngineIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    section = [pathCopy section];
    item = [pathCopy item];

    v7 = [(NSArray *)self->_hiddenIndices objectAtIndexedSubscript:section];
    if ([v7 containsIndex:item])
    {
      v8 = 0;
    }

    else
    {
      v9 = [v7 countOfIndexesInRange:{0, item}];
      v8 = [MEMORY[0x277CCAA70] indexPathForItem:item - v9 inSection:section];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_engineIndexPathForControllerIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  item = [pathCopy item];
  v7 = [(NSArray *)self->_hiddenIndices objectAtIndexedSubscript:section];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__REUIRelevanceEngineController__engineIndexPathForControllerIndexPath___block_invoke;
  v13[3] = &unk_279AF5EC0;
  v8 = v7;
  v14 = v8;
  v9 = MEMORY[0x2667182D0](v13);
  for (i = v9[2](v9, 0); item; --item)
  {
    i += v9[2](v9, i + 1) + 1;
  }

  v11 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:section];

  return v11;
}

uint64_t __72__REUIRelevanceEngineController__engineIndexPathForControllerIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  if (![*(a1 + 32) containsIndex:a2])
  {
    return 0;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = "";
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__REUIRelevanceEngineController__engineIndexPathForControllerIndexPath___block_invoke_2;
  v7[3] = &unk_279AF5E98;
  v7[4] = &v8;
  [v4 enumerateRangesInRange:a2 options:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, v7}];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __72__REUIRelevanceEngineController__engineIndexPathForControllerIndexPath___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *a4 = 1;
  return result;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateCallbacks = *&self->_delegateCallbacks & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateCallbacks = *&self->_delegateCallbacks & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateCallbacks = *&self->_delegateCallbacks & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateCallbacks = *&self->_delegateCallbacks & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateCallbacks = *&self->_delegateCallbacks & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateCallbacks = *&self->_delegateCallbacks & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_delegateCallbacks = *&self->_delegateCallbacks & 0xFFBF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *&self->_delegateCallbacks = *&self->_delegateCallbacks & 0xFF7F | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *&self->_delegateCallbacks = *&self->_delegateCallbacks & 0xFEFF | v12;
  }
}

- (unint64_t)numberOfItemsInSectionAtIndex:(unint64_t)index
{
  v4 = [(REUIRelevanceEngineController *)self _sectionAtIndex:index];
  v5 = [(NSMutableDictionary *)self->_currentElementStates objectForKeyedSubscript:v4];
  v6 = [v5 count];

  return v6;
}

- (unint64_t)_numberOfItemsInSectionAtIndex:(unint64_t)index
{
  engine = self->_engine;
  v6 = [(REUIRelevanceEngineController *)self _sectionAtIndex:?];
  v7 = [(RERelevanceEngine *)engine numberOfElementsInSection:v6];

  v8 = [(NSArray *)self->_hiddenIndices objectAtIndexedSubscript:index];
  if ([v8 count] <= v7)
  {
    v9 = v7 - [v8 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)elementAtIndexPath:(id)path
{
  v4 = [(REUIRelevanceEngineController *)self _engineIndexPathForControllerIndexPath:path];
  v5 = [(REUIRelevanceEngineController *)self _sectionPathForIndexPath:v4];
  v6 = [(RERelevanceEngine *)self->_engine elementAtPath:v5];

  return v6;
}

- (id)contentAtIndexPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = -[REUIRelevanceEngineController _sectionAtIndex:](self, "_sectionAtIndex:", [pathCopy section]);
  v6 = [pathCopy row];
  v7 = [(NSMutableDictionary *)self->_currentElementStates objectForKeyedSubscript:v5];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    content = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_currentElementStates objectForKeyedSubscript:v5];
    v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    content = [v10 content];
  }

  return content;
}

- (id)indexPathForElementWithIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_currentElementStates;
  v22 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v22)
  {
    v6 = *v31;
    selfCopy = self;
    v25 = v5;
    v21 = *v31;
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v23 = v8;
        v9 = [(NSMutableDictionary *)self->_currentElementStates objectForKeyedSubscript:?];
        v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v27;
          while (2)
          {
            v14 = 0;
            v15 = v12;
            v12 += v11;
            do
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v9);
              }

              identifier = [*(*(&v26 + 1) + 8 * v14) identifier];
              v17 = [identifier isEqualToString:identifierCopy];

              if (v17)
              {
                v18 = [MEMORY[0x277CCAA70] indexPathForItem:v15 inSection:{-[REUIRelevanceEngineController _indexForSection:](selfCopy, "_indexForSection:", v23)}];

                v5 = v25;
                goto LABEL_19;
              }

              ++v15;
              ++v14;
            }

            while (v11 != v14);
            v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        ++v7;
        v6 = v21;
        self = selfCopy;
        v5 = v25;
      }

      while (v7 != v22);
      v18 = 0;
      v22 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)generateDiffableSnapshot
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_sectionOrder;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
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

        v18 = *(*(&v14 + 1) + 8 * i);
        v9 = v18;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:{1, v14}];
        [v3 appendSectionsWithIdentifiers:v10];

        v11 = [(NSMutableDictionary *)self->_currentElementStates objectForKeyedSubscript:v9];
        [v3 appendItemsWithIdentifiers:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_contentAtIndexPath:(id)path
{
  v4 = [(REUIRelevanceEngineController *)self _elementAtIndexPath:path];
  v5 = [(REUIRelevanceEngineController *)self _contentForElement:v4];

  return v5;
}

- (id)actionAtIndexPath:(id)path
{
  v3 = [(REUIRelevanceEngineController *)self elementAtIndexPath:path];
  action = [v3 action];

  return action;
}

- (id)identifierForElementAtIndexPath:(id)path
{
  v3 = [(REUIRelevanceEngineController *)self elementAtIndexPath:path];
  identifier = [v3 identifier];

  return identifier;
}

- (id)predictionForElementAtIndexPath:(id)path
{
  v4 = [(REUIRelevanceEngineController *)self _engineIndexPathForControllerIndexPath:path];
  v5 = [(REUIRelevanceEngineController *)self _sectionPathForIndexPath:v4];
  v6 = [(RERelevanceEngine *)self->_engine predictionForElementAtPath:v5];

  return v6;
}

- (id)elementIdentifierAtIndexPath:(id)path
{
  v3 = [(REUIRelevanceEngineController *)self elementAtIndexPath:path];
  identifier = [v3 identifier];

  return identifier;
}

- (id)_indexPathForElementWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __68__REUIRelevanceEngineController__indexPathForElementWithIdentifier___block_invoke;
  v14 = &unk_279AF5EE8;
  v5 = identifierCopy;
  v15 = v5;
  v16 = &v17;
  [(REUIRelevanceEngineController *)self _enumerateEngineElementsWithOptions:0 usingBlock:&v11];
  if (v18[5])
  {
    v6 = [(REUIRelevanceEngineController *)self _controllerIndexPathForEngineIndexPath:v11, v12, v13, v14];
    v7 = v18[5];
    v18[5] = v6;

    v8 = v18[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __68__REUIRelevanceEngineController__indexPathForElementWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = [a3 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)metadataForElementWithIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(REUIRelevanceEngineController *)self indexPathForElementWithIdentifier:identifierCopy];

  if (v5)
  {
    v6 = -[REUIRelevanceEngineController _sectionAtIndex:](self, "_sectionAtIndex:", [v5 section]);
    v7 = [(NSMutableDictionary *)self->_currentElementStates objectForKeyedSubscript:v6];
    v8 = [v7 objectAtIndex:{objc_msgSend(v5, "row")}];

    if (v8)
    {
      v13 = @"REMetadataBundleIdentifierKey";
      bundleIdentifier = [v8 bundleIdentifier];
      v14[0] = bundleIdentifier;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSSet)disabledDataSources
{
  v2 = [(NSMutableSet *)self->_hiddenBundleIdentifiers copy];

  return v2;
}

- (void)setDataSource:(id)source enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v22 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v7 = [(REUIRelevanceEngineController *)self isDataSourceEnabled:sourceCopy];
  v8 = RELogForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disabled";
    *buf = 138412802;
    selfCopy = self;
    v18 = 2112;
    if (enabledCopy)
    {
      v9 = @"enabled";
    }

    v19 = v9;
    v20 = 2112;
    v21 = sourceCopy;
    _os_log_impl(&dword_261AAC000, v8, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", buf, 0x20u);
  }

  if (v7 != enabledCopy)
  {
    if (enabledCopy)
    {
      [(NSMutableSet *)self->_hiddenBundleIdentifiers removeObject:sourceCopy];
    }

    engine = self->_engine;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__REUIRelevanceEngineController_setDataSource_enabled___block_invoke;
    v13[3] = &unk_279AF5F38;
    v13[4] = self;
    v11 = sourceCopy;
    v14 = v11;
    v15 = enabledCopy;
    [(REUIRelevanceEngineController *)self relevanceEngine:engine performBatchUpdateBlock:v13 completion:&__block_literal_global];
    if ((enabledCopy & 1) == 0)
    {
      [(NSMutableSet *)self->_hiddenBundleIdentifiers addObject:v11];
    }

    [(RERelevanceEnginePreferences *)self->_preferences setDisabledDataSourceIdentifiers:self->_hiddenBundleIdentifiers];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__REUIRelevanceEngineController_setDataSource_enabled___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__REUIRelevanceEngineController_setDataSource_enabled___block_invoke_2;
  v5[3] = &unk_279AF5F10;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 _enumerateEngineElementsWithOptions:0 usingBlock:v5];
}

void __55__REUIRelevanceEngineController_setDataSource_enabled___block_invoke_2(uint64_t a1, void *a2, void *a3, int a4)
{
  v11 = a2;
  v7 = a3;
  v8 = [v7 bundleIdentifier];
  if ([v8 isEqualToString:*(a1 + 32)])
  {
    v9 = [*(a1 + 40) _isElementHidden:v7];

    if ((v9 & 1) == 0)
    {
      v10 = *(a1 + 48);
      if (v10 == a4)
      {
        [*(a1 + 40) _setElement:v7 atIndexPath:v11 hidden:v10 ^ 1u];
      }
    }
  }

  else
  {
  }
}

- (void)setAllowsLocationUse:(BOOL)use
{
  if (self->_allowsLocationUse != use)
  {
    useCopy = use;
    self->_allowsLocationUse = use;
    v6 = [(RERelevanceEnginePreferences *)self->_preferences mode]& 0xFFFFFFFFFFFFFFFELL;
    preferences = self->_preferences;

    [(RERelevanceEnginePreferences *)preferences setMode:v6 | useCopy];
  }
}

- (void)setWantsLiveDataSources:(BOOL)sources
{
  if (self->_wantsLiveDataSources != sources)
  {
    sourcesCopy = sources;
    self->_wantsLiveDataSources = sources;
    v6 = [(RERelevanceEnginePreferences *)self->_preferences mode]& 0xFFFFFFFFFFFFFFFDLL;
    v7 = 2;
    if (!sourcesCopy)
    {
      v7 = 0;
    }

    preferences = self->_preferences;

    [(RERelevanceEnginePreferences *)preferences setMode:v6 | v7];
  }
}

- (void)makeCurrent
{
  [(REUIRelevanceEngineController *)self setWantsLiveDataSources:1];
  trainingContext = self->_trainingContext;

  [(RETrainingContext *)trainingContext becomeCurrent];
}

- (void)resignCurrent
{
  [(REUIRelevanceEngineController *)self setWantsLiveDataSources:0];
  if ([(REUITrainingContext *)self->_trainingContext resetsWhenResignsCurrent])
  {
    trainingContext = self->_trainingContext;

    [(REUITrainingContext *)trainingContext resetContext];
  }
}

- (id)predictedContentForSectionAtIndex:(unint64_t)index atDate:(id)date limit:(int64_t)limit
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(REUIRelevanceEngineController *)self predictedElementsForSectionAtIndex:index atDate:date limit:limit];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(REUIRelevanceEngineController *)self _contentForElement:*(*(&v17 + 1) + 8 * i), v17];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)predictedElementsForSectionAtIndex:(unint64_t)index atDate:(id)date limit:(int64_t)limit
{
  dateCopy = date;
  if (limit >= 0x7FFFFFFFFFFFFFFFLL)
  {
    limitCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    limitCopy = limit;
  }

  v10 = MEMORY[0x277CBEB18];
  v11 = [(REUIRelevanceEngineController *)self _numberOfItemsInSectionAtIndex:index];
  if (limitCopy >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = limitCopy;
  }

  v13 = [v10 arrayWithCapacity:v12];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__REUIRelevanceEngineController_predictedElementsForSectionAtIndex_atDate_limit___block_invoke;
  v18[3] = &unk_279AF5F80;
  v20 = dateCopy;
  v21 = limitCopy;
  v19 = v13;
  v14 = dateCopy;
  v15 = v13;
  [(REUIRelevanceEngineController *)self _enumerateEngineElementsInSection:index withOptions:0 usingBlock:v18];
  v16 = [v15 copy];

  return v16;
}

void __81__REUIRelevanceEngineController_predictedElementsForSectionAtIndex_atDate_limit___block_invoke(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([*(a1 + 32) count] < *(a1 + 48) && (a4 & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v6;
    v7 = [v6 relevanceProviders];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [v13 irrelevantDate];
            v15 = [v14 laterDate:*(a1 + 40)];
            v16 = [v15 isEqualToDate:*(a1 + 40)];

            if (v16)
            {

              v6 = v18;
              goto LABEL_14;
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = v18;
    [*(a1 + 32) addObject:v18];
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_loadNewRelevanceEngine:(id)engine withCompletion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v8 = MEMORY[0x277CBEB38];
  v9 = self->_engine;
  dictionary = [v8 dictionary];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__REUIRelevanceEngineController__loadNewRelevanceEngine_withCompletion___block_invoke;
  v22[3] = &unk_279AF5FA8;
  v11 = dictionary;
  v23 = v11;
  [(REUIRelevanceEngineController *)self _enumerateEngineElementsWithOptions:0 usingBlock:v22];
  [(RERelevanceEngine *)v9 removeObserver:self];
  engine = self->_engine;
  self->_engine = engineCopy;
  v13 = engineCopy;

  [(RERelevanceEngine *)self->_engine addObserver:self];
  v14 = self->_engine;
  v18 = completionCopy;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__REUIRelevanceEngineController__loadNewRelevanceEngine_withCompletion___block_invoke_2;
  v19[3] = &unk_279AF6018;
  v20 = v11;
  selfCopy = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__REUIRelevanceEngineController__loadNewRelevanceEngine_withCompletion___block_invoke_5;
  v17[3] = &unk_279AF6040;
  v15 = completionCopy;
  v16 = v11;
  [(REUIRelevanceEngineController *)self relevanceEngine:v14 performBatchUpdateBlock:v19 completion:v17];
}

void __72__REUIRelevanceEngineController__loadNewRelevanceEngine_withCompletion___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_52];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [*(a1 + 32) objectForKeyedSubscript:v9];
        v12 = [v10 _contentForElement:v11];

        v13 = [*(a1 + 40) delegate];
        [v13 engineController:*(a1 + 40) didRemoveContent:v12 atIndexPath:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v14 = *(a1 + 40);
  v15 = *(v14 + 32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__REUIRelevanceEngineController__loadNewRelevanceEngine_withCompletion___block_invoke_4;
  v24[3] = &unk_279AF5FF0;
  v24[4] = v14;
  [v15 enumerateObjectsUsingBlock:v24];
  if ([*(a1 + 40) numberOfSections])
  {
    v16 = 0;
    do
    {
      v17 = [*(a1 + 40) _numberOfItemsInSectionAtIndex:v16];
      if (v17)
      {
        v18 = v17;
        for (j = 0; j != v18; ++j)
        {
          v20 = [MEMORY[0x277CCAA70] indexPathForItem:j inSection:v16];
          v21 = [*(a1 + 40) _contentAtIndexPath:v20];
          v22 = [*(a1 + 40) delegate];
          [v22 engineController:*(a1 + 40) didInsertContent:v21 atIndexPath:v20];
        }
      }

      ++v16;
    }

    while (v16 < [*(a1 + 40) numberOfSections]);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __72__REUIRelevanceEngineController__loadNewRelevanceEngine_withCompletion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  [v13 removeAllIndexes];
  v5 = [*(*(a1 + 32) + 88) objectAtIndexedSubscript:a3];
  [*(*(a1 + 32) + 16) setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:v5];
  v6 = [*(a1 + 32) _sectionSupportingNoContentElements];
  if ([v5 isEqualToString:v6])
  {
    *(*(a1 + 32) + 72) = [*(a1 + 32) _sectionHasContent:v6];
  }

  v7 = [*(*(a1 + 32) + 80) numberOfElementsInSection:v5];
  v8 = [MEMORY[0x277CBEB18] array];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = [objc_alloc(MEMORY[0x277D444B0]) initWithSectionName:v5 element:i];
      v11 = [*(*(a1 + 32) + 80) elementAtPath:v10];
      if ([*(a1 + 32) _isElementHidden:v11])
      {
        [v13 addIndex:i];
      }

      else
      {
        [v8 addObject:v11];
      }
    }
  }

  v12 = [v8 copy];
  [*(*(a1 + 32) + 16) setObject:v12 forKeyedSubscript:v5];
}

uint64_t __72__REUIRelevanceEngineController__loadNewRelevanceEngine_withCompletion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_sectionHasContent:(id)content
{
  contentCopy = content;
  v5 = [(NSArray *)self->_hiddenIndices objectAtIndexedSubscript:[(REUIRelevanceEngineController *)self _indexForSection:contentCopy]];
  v6 = [(RERelevanceEngine *)self->_engine numberOfElementsInSection:contentCopy];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 1;
    do
    {
      if (([v5 containsIndex:v8] & 1) == 0)
      {
        v10 = [MEMORY[0x277D444B0] sectionPathWithSectionName:contentCopy element:v8];
        v11 = [(RERelevanceEngine *)self->_engine elementAtPath:v10];
        isNoContentElement = [v11 isNoContentElement];

        if (!isNoContentElement)
        {
          break;
        }
      }

      v9 = ++v8 < v7;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contentForElement:(id)element
{
  elementCopy = element;
  v5 = elementCopy;
  if (self->_wantsIdealizedContent)
  {
    idealizedContent = [elementCopy idealizedContent];
    v7 = idealizedContent;
    if (idealizedContent)
    {
      content = idealizedContent;
    }

    else
    {
      content = [v5 content];
    }

    content2 = content;
  }

  else
  {
    content2 = [elementCopy content];
  }

  return content2;
}

- (void)_enumerateEngineElementsInSection:(unint64_t)section withOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy && self->_engine)
  {
    v9 = [(NSArray *)self->_hiddenIndices objectAtIndexedSubscript:section];
    v10 = MEMORY[0x277CCAA78];
    engine = self->_engine;
    v12 = [(REUIRelevanceEngineController *)self _sectionAtIndex:section];
    v13 = [v10 indexSetWithIndexesInRange:{0, -[RERelevanceEngine numberOfElementsInSection:](engine, "numberOfElementsInSection:", v12)}];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__REUIRelevanceEngineController__enumerateEngineElementsInSection_withOptions_usingBlock___block_invoke;
    v15[3] = &unk_279AF6068;
    sectionCopy = section;
    v15[4] = self;
    v16 = v9;
    v17 = blockCopy;
    v14 = v9;
    [v13 enumerateIndexesWithOptions:options usingBlock:v15];
  }
}

void __90__REUIRelevanceEngineController__enumerateEngineElementsInSection_withOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:*(a1 + 56)];
  v4 = *(a1 + 32);
  v5 = v4[10];
  v6 = [v4 _sectionPathForIndexPath:v8];
  v7 = [v5 elementAtPath:v6];

  [*(a1 + 40) containsIndex:a2];
  (*(*(a1 + 48) + 16))();
}

- (void)_enumerateEngineElementsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, -[NSArray count](self->_sectionOrder, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__REUIRelevanceEngineController__enumerateEngineElementsWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_279AF6090;
  v10 = blockCopy;
  optionsCopy = options;
  v9[4] = self;
  v8 = blockCopy;
  [v7 enumerateIndexesWithOptions:options usingBlock:v9];
}

- (void)_setElement:(id)element atIndexPath:(id)path hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  elementCopy = element;
  v9 = [(REUIRelevanceEngineController *)self _sectionPathForIndexPath:path];
  v11 = v9;
  if (hiddenCopy)
  {
    [REUIRelevanceEngineControllerUpdateOperation hideElement:elementCopy atPath:v9];
  }

  else
  {
    [REUIRelevanceEngineControllerUpdateOperation showElement:elementCopy atPath:v9];
  }
  v10 = ;

  [(REUIRelevanceEngineController *)self _performOrEnqueueOperation:v10];
}

- (BOOL)_isElementHidden:(id)hidden
{
  hiddenCopy = hidden;
  bundleIdentifier = [hiddenCopy bundleIdentifier];
  if ([(REUIRelevanceEngineController *)self isDataSourceEnabled:bundleIdentifier])
  {
    if (self->_isShowingContentElements)
    {
      isNoContentElement = [hiddenCopy isNoContentElement];
    }

    else
    {
      isNoContentElement = 0;
    }
  }

  else
  {
    isNoContentElement = 1;
  }

  return isNoContentElement;
}

- (void)_performOrEnqueueOperation:(id)operation
{
  v10[1] = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_performingBatch)
  {
    [(NSMutableArray *)self->_pendingOperations addObject:operationCopy];
  }

  else
  {
    path = [operationCopy path];
    sectionName = [path sectionName];
    v7 = [(REUIRelevanceEngineController *)self _indexForSection:sectionName];

    v10[0] = operationCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [(REUIRelevanceEngineController *)self _performOperations:v8 toSection:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_performBatchUpdateUsingBlock:(id)block completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __74__REUIRelevanceEngineController__performBatchUpdateUsingBlock_completion___block_invoke;
  v41[3] = &unk_279AF6040;
  v8 = completionCopy;
  v42 = v8;
  v9 = MEMORY[0x2667182D0](v41);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = WeakRetained;
  if ((*&self->_delegateCallbacks & 1) != 0 && WeakRetained)
  {
    self->_performingBatch = 1;
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    v31 = v9;
    v32 = v8;
    v33 = blockCopy;
    self->_performingBatch = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v13 = [(NSMutableArray *)self->_pendingOperations copy];
    selfCopy = self;
    [(NSMutableArray *)self->_pendingOperations removeAllObjects];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      v18 = 1;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          path = [v20 path];
          sectionName = [path sectionName];

          v23 = [dictionary objectForKeyedSubscript:sectionName];

          if (!v23)
          {
            array = [MEMORY[0x277CBEB18] array];
            [dictionary setObject:array forKeyedSubscript:sectionName];
          }

          if ([v20 type] && objc_msgSend(v20, "type") != 4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v18 = 0;
          }

          v25 = [dictionary objectForKeyedSubscript:sectionName];
          [v25 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 1;
    }

    if ([dictionary count] && objc_msgSend(v14, "count"))
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __74__REUIRelevanceEngineController__performBatchUpdateUsingBlock_completion___block_invoke_2;
      v34[3] = &unk_279AF6018;
      v35 = dictionary;
      v36 = selfCopy;
      v26 = MEMORY[0x2667182D0](v34);
      v27 = v26;
      blockCopy = v33;
      v9 = v31;
      if ((v18 & 1) != 0 || (*&selfCopy->_delegateCallbacks & 1) == 0)
      {
        (*(v26 + 16))(v26);
        v8 = v32;
        if (v31)
        {
          v31[2](v31);
        }
      }

      else
      {
        v28 = objc_loadWeakRetained(&selfCopy->_delegate);
        v8 = v32;
        [v28 engineController:selfCopy performBatchUpdateBlock:v27 completion:v32];
      }
    }

    else
    {
      v8 = v32;
      blockCopy = v33;
      v9 = v31;
      if (v31)
      {
        v31[2](v31);
      }
    }
  }

  else
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    if (v9)
    {
      v9[2](v9);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __74__REUIRelevanceEngineController__performBatchUpdateUsingBlock_completion___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__REUIRelevanceEngineController__performBatchUpdateUsingBlock_completion___block_invoke_3;
  v3[3] = &unk_279AF60B8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __74__REUIRelevanceEngineController__performBatchUpdateUsingBlock_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [*(a1 + 32) _performOperations:v6 toSection:{objc_msgSend(v5, "_indexForSection:", a2)}];
}

- (void)_performOperations:(id)operations toSection:(unint64_t)section
{
  v130 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v92 = [MEMORY[0x277CBEB58] set];
  v90 = [MEMORY[0x277CBEB58] set];
  v88 = [MEMORY[0x277CBEB58] set];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = operationsCopy;
  v7 = [obj countByEnumeratingWithState:&v121 objects:v129 count:16];
  v94 = indexSet;
  if (v7)
  {
    v8 = v7;
    v9 = *v122;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v122 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v121 + 1) + 8 * i);
        path = [v11 path];
        element = [path element];

        element2 = [v11 element];
        identifier = [element2 identifier];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          updateType = [v11 updateType];
          v17 = indexSet;
          v18 = dictionary;
          if (updateType != 2)
          {
            if (updateType != 1)
            {
              goto LABEL_11;
            }

            v18 = dictionary2;
            v17 = indexSet2;
          }

          [v17 addIndex:element];
          element3 = [v11 element];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:element];
          [v18 setObject:element3 forKeyedSubscript:v20];

          indexSet = v94;
        }

LABEL_11:
        type = [v11 type];
        switch(type)
        {
          case 1:
            [indexSet addIndex:element];
            element4 = [v11 element];
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:element];
            [dictionary setObject:element4 forKeyedSubscript:v32];

            v24 = v90;
            break;
          case 3:
            [v88 addObject:identifier];
            [indexSet addIndex:element];
            element5 = [v11 element];
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:element];
            [dictionary setObject:element5 forKeyedSubscript:v26];

            movedToPath = [v11 movedToPath];
            element6 = [movedToPath element];

            [indexSet2 addIndex:element6];
            element7 = [v11 element];
            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:element6];
            [dictionary2 setObject:element7 forKeyedSubscript:v30];

            goto LABEL_18;
          case 2:
            [indexSet2 addIndex:element];
            element8 = [v11 element];
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:element];
            [dictionary2 setObject:element8 forKeyedSubscript:v23];

            v24 = v92;
            break;
          default:
            goto LABEL_18;
        }

        [v24 addObject:identifier];
LABEL_18:
      }

      v8 = [obj countByEnumeratingWithState:&v121 objects:v129 count:16];
    }

    while (v8);
  }

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v34 = [(NSArray *)self->_hiddenIndices objectAtIndexedSubscript:section];
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke;
  v113[3] = &unk_279AF60E0;
  sectionCopy = section;
  v85 = dictionary;
  v114 = v85;
  selfCopy = self;
  v35 = v88;
  v116 = v35;
  v36 = dictionary3;
  v117 = v36;
  v37 = v34;
  v118 = v37;
  v91 = v90;
  v119 = v91;
  [indexSet enumerateIndexesWithOptions:2 usingBlock:v113];
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_58;
  v105[3] = &unk_279AF60E0;
  sectionCopy2 = section;
  v97 = dictionary2;
  v106 = v97;
  v89 = v35;
  v107 = v89;
  v93 = v92;
  v108 = v93;
  selfCopy2 = self;
  v38 = v37;
  v110 = v38;
  v83 = v36;
  v111 = v83;
  [indexSet2 enumerateIndexesUsingBlock:v105];
  _sectionSupportingNoContentElements = [(REUIRelevanceEngineController *)self _sectionSupportingNoContentElements];
  v40 = [(REUIRelevanceEngineController *)self _sectionAtIndex:section];
  LODWORD(v36) = [v40 isEqualToString:_sectionSupportingNoContentElements];

  if (v36)
  {
    v41 = [(REUIRelevanceEngineController *)self _sectionHasContent:_sectionSupportingNoContentElements];
    if (self->_isShowingContentElements != v41)
    {
      v42 = v41;
      self->_isShowingContentElements = v41;
      v43 = RELogForDomain();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = @"no content";
        if (v42)
        {
          v44 = @"content";
        }

        *buf = 134218242;
        selfCopy6 = self;
        v127 = 2114;
        v128 = v44;
        _os_log_impl(&dword_261AAC000, v43, OS_LOG_TYPE_INFO, "%p Showing %{public}@ state.", buf, 0x16u);
      }

      if (v42)
      {
        v45 = 2;
      }

      else
      {
        v45 = 0;
      }

      v46 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, -[RERelevanceEngine numberOfElementsInSection:](self->_engine, "numberOfElementsInSection:", _sectionSupportingNoContentElements)}];
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_65;
      v100[3] = &unk_279AF6108;
      v101 = _sectionSupportingNoContentElements;
      selfCopy4 = self;
      v103 = v38;
      v104 = v42;
      [v46 enumerateIndexesWithOptions:v45 usingBlock:v100];
    }
  }

  v84 = v38;
  v47 = [(REUIRelevanceEngineController *)self _sectionAtIndex:section];
  v48 = [(NSMutableDictionary *)self->_currentElementStates objectForKeyedSubscript:v47];
  v49 = [v48 copy];
  v50 = v49;
  v51 = MEMORY[0x277CBEBF8];
  if (v49)
  {
    v51 = v49;
  }

  v52 = v51;

  v53 = [(REUIRelevanceEngineController *)self _numberOfItemsInSectionAtIndex:section];
  v54 = [MEMORY[0x277CBEB18] arrayWithCapacity:v53];
  if (v53)
  {
    for (j = 0; j != v53; ++j)
    {
      v56 = [MEMORY[0x277CCAA70] indexPathForItem:j inSection:section];
      v57 = [(REUIRelevanceEngineController *)self elementAtIndexPath:v56];
      [v54 addObject:v57];
    }
  }

  v58 = [v54 copy];
  [(NSMutableDictionary *)self->_currentElementStates setObject:v58 forKeyedSubscript:v47];

  v59 = RELogForDomain();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    v60 = NSStringFromSelector(sel_identifier);
    v61 = [v52 valueForKeyPath:v60];
    v62 = [v61 componentsJoinedByString:{@", "}];
    *buf = 134218242;
    selfCopy6 = self;
    v127 = 2114;
    v128 = v62;
    _os_log_impl(&dword_261AAC000, v59, OS_LOG_TYPE_INFO, "%p Performing operations with original content: %{public}@", buf, 0x16u);
  }

  v63 = RELogForDomain();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    v64 = NSStringFromSelector(sel_identifier);
    v65 = [v54 valueForKeyPath:v64];
    v66 = [v65 componentsJoinedByString:{@", "}];
    *buf = 134218242;
    selfCopy6 = self;
    v127 = 2114;
    v128 = v66;
    _os_log_impl(&dword_261AAC000, v63, OS_LOG_TYPE_INFO, "%p Performing operations with current content: %{public}@", buf, 0x16u);
  }

  v67 = [MEMORY[0x277D443C8] diffFromElements:v52 toElements:v54 equalComparator:&__block_literal_global_75 hashGenerator:&__block_literal_global_78 changeComparator:&__block_literal_global_80];
  v68 = RELogForDomain();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    [(REUIRelevanceEngineController *)self _performOperations:v68 toSection:v69, v70, v71, v72, v73, v74];
  }

  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_81;
  v99[3] = &unk_279AF6170;
  v99[4] = self;
  v99[5] = section;
  [v67 enumerateOperationsUsingBlock:v99];
  v75 = RELogForDomain();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    [(REUIRelevanceEngineController *)self _performOperations:v75 toSection:v76, v77, v78, v79, v80, v81];
  }

  v82 = *MEMORY[0x277D85DE8];
}

void __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:*(a1 + 80)];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 identifier];
  v9 = [*(a1 + 40) _controllerIndexPathForEngineIndexPath:v4];
  if ([*(a1 + 48) containsObject:v8])
  {
    [*(a1 + 56) setObject:v9 forKeyedSubscript:v8];
    v10 = RELogForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v19 = 134218754;
      v20 = v11;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v4;
      v12 = "%p Removing (through move) %{public}@ at index path %{public}@ (mapped from %{public}@).";
      v13 = v10;
      v14 = 42;
LABEL_7:
      _os_log_impl(&dword_261AAC000, v13, OS_LOG_TYPE_INFO, v12, &v19, v14);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([*(a1 + 72) containsObject:v8])
  {
    v10 = RELogForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v19 = 134218242;
      v20 = v15;
      v21 = 2114;
      v22 = v8;
      v12 = "%p Removing %{public}@ (in removed elements).";
      v13 = v10;
      v14 = 22;
      goto LABEL_7;
    }

LABEL_8:

    [*(a1 + 64) shiftIndexesStartingAtIndex:objc_msgSend(v4 by:{"item") + 1, -1}];
    goto LABEL_9;
  }

  if (v9)
  {
    [*(a1 + 64) addIndex:{objc_msgSend(v4, "item")}];
    v17 = RELogForDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      v19 = 134218754;
      v20 = v18;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v4;
      _os_log_impl(&dword_261AAC000, v17, OS_LOG_TYPE_INFO, "%p Hiding %{public}@ at index path %{public}@ (mapped from %{public}@; path removed).", &v19, 0x2Au);
    }
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

void __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_58(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:*(a1 + 80)];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 identifier];
  if (([*(a1 + 40) containsObject:v8] & 1) != 0 || objc_msgSend(*(a1 + 48), "containsObject:", v8))
  {
    v9 = RELogForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_58_cold_1(a1, v8, v9);
    }

    [*(a1 + 64) shiftIndexesStartingAtIndex:objc_msgSend(v4 by:{"item"), 1}];
  }

  v10 = RELogForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 56);
    v18 = 134218242;
    v19 = v11;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_261AAC000, v10, OS_LOG_TYPE_INFO, "%p Showing %{public}@.", &v18, 0x16u);
  }

  [*(a1 + 64) removeIndex:{objc_msgSend(v4, "item")}];
  v12 = [*(a1 + 56) _controllerIndexPathForEngineIndexPath:v4];
  if ([*(a1 + 40) containsObject:v8])
  {
    v13 = [*(a1 + 72) objectForKeyedSubscript:v8];
    if (!v13)
    {
      v14 = RELogForDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 56);
        v18 = 134219010;
        v19 = v15;
        v20 = 2114;
        v21 = v8;
        v22 = 2114;
        v23 = 0;
        v24 = 2114;
        v25 = v12;
        v26 = 2114;
        v27 = v4;
        _os_log_impl(&dword_261AAC000, v14, OS_LOG_TYPE_INFO, "%p Ignoring move of %{public}@ from index path %{public}@ to index path %{public}@ (mapped from %{public}@).", &v18, 0x34u);
      }

      [*(a1 + 64) addIndex:{objc_msgSend(v4, "item")}];
    }

LABEL_17:

    goto LABEL_18;
  }

  if ([*(a1 + 48) containsObject:v8] && objc_msgSend(*(a1 + 56), "_isElementHidden:", v7))
  {
    [*(a1 + 64) addIndex:{objc_msgSend(v4, "item")}];
    v13 = RELogForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 56);
      v18 = 134218754;
      v19 = v16;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_261AAC000, v13, OS_LOG_TYPE_INFO, "%p Filtering %{public}@ at index path %{public}@ (mapped from %{public}@).", &v18, 0x2Au);
    }

    goto LABEL_17;
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

void __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_65(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D444B0] sectionPathWithSectionName:*(a1 + 32) element:a2];
  v5 = [*(*(a1 + 40) + 80) elementAtPath:v4];
  if ([v5 isNoContentElement] && *(a1 + 56) != objc_msgSend(*(a1 + 48), "containsIndex:", a2))
  {
    v6 = *(a1 + 48);
    if (*(a1 + 56))
    {
      [v6 addIndex:a2];
      v7 = RELogForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_65_cold_2((a1 + 40), v7, v8, v9, v10, v11, v12, v13);
      }
    }

    else
    {
      [v6 removeIndex:a2];
      v7 = RELogForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_65_cold_1((a1 + 40), v7, v14, v15, v16, v17, v18, v19);
      }
    }
  }
}

uint64_t __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_72(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

uint64_t __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 hash];

  return v3;
}

void __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_81(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = RELogForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 32);
    v28 = REDiffOperationTypeDescription();
    v29 = [v9 bundleIdentifier];
    v30 = 134218498;
    v31 = v27;
    v32 = 2114;
    v33 = v28;
    v34 = 2114;
    v35 = v29;
    _os_log_debug_impl(&dword_261AAC000, v10, OS_LOG_TYPE_DEBUG, "%p Performing %{public}@ operation on %{public}@.", &v30, 0x20u);
  }

  v11 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:*(a1 + 40)];
  v12 = [MEMORY[0x277CCAA70] indexPathForItem:a5 inSection:*(a1 + 40)];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = *(a1 + 32);
        if ((*(v13 + 24) & 8) != 0)
        {
          WeakRetained = objc_loadWeakRetained((v13 + 96));
          v15 = *(a1 + 32);
          v16 = [v15 _contentForElement:v9];
          [WeakRetained engineController:v15 didInsertContent:v16 atIndexPath:v11];
LABEL_21:

LABEL_22:
          goto LABEL_23;
        }
      }

      goto LABEL_23;
    }

    v19 = *(a1 + 32);
    v20 = *(v19 + 24);
    if ((v20 & 0x100) == 0)
    {
      if ((v20 & 2) != 0)
      {
        WeakRetained = objc_loadWeakRetained((v19 + 96));
        v21 = *(a1 + 32);
        v16 = [v21 _contentForElement:v9];
        [WeakRetained engineController:v21 didReloadContent:v16 atIndexPath:v11];
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    WeakRetained = objc_loadWeakRetained((v19 + 96));
    v25 = *(a1 + 32);
    v16 = [v25 _contentForElement:v9];
    v24 = [v9 identifier];
    [WeakRetained engineController:v25 didReloadContent:v16 withIdentifier:v24];
LABEL_20:

    goto LABEL_21;
  }

  if (a2 == 2)
  {
    WeakRetained = [v9 identifier];
    if ([*(*(a1 + 32) + 64) isDisplayingElementWithIdentifier:WeakRetained])
    {
      [*(*(a1 + 32) + 64) elementWithIdentifierDidEndDisplay:WeakRetained];
    }

    v22 = *(a1 + 32);
    if ((*(v22 + 24) & 4) == 0)
    {
      goto LABEL_22;
    }

    v16 = objc_loadWeakRetained((v22 + 96));
    v23 = *(a1 + 32);
    v24 = [v23 _contentForElement:v9];
    [v16 engineController:v23 didRemoveContent:v24 atIndexPath:v12];
    goto LABEL_20;
  }

  if (a2 == 3)
  {
    v17 = *(a1 + 32);
    if ((*(v17 + 24) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained((v17 + 96));
      v18 = *(a1 + 32);
      v16 = [v18 _contentForElement:v9];
      [WeakRetained engineController:v18 didMoveContent:v16 fromIndexPath:v12 toIndexPath:v11];
      goto LABEL_21;
    }
  }

LABEL_23:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)relevanceEngine:(id)engine didReloadElement:(id)element atPath:(id)path
{
  v6 = [MEMORY[0x277D44410] reloadElement:element atPath:path];
  [(REUIRelevanceEngineController *)self _performOrEnqueueOperation:v6];
}

- (void)relevanceEngine:(id)engine didRemoveElement:(id)element atPath:(id)path
{
  v6 = [MEMORY[0x277D44410] removeElement:element atPath:path];
  [(REUIRelevanceEngineController *)self _performOrEnqueueOperation:v6];
}

- (void)relevanceEngine:(id)engine didInsertElement:(id)element atPath:(id)path
{
  v6 = [MEMORY[0x277D44410] insertElement:element atPath:path];
  [(REUIRelevanceEngineController *)self _performOrEnqueueOperation:v6];
}

- (void)relevanceEngine:(id)engine didMoveElement:(id)element fromPath:(id)path toPath:(id)toPath
{
  v7 = [MEMORY[0x277D44410] moveElement:element fromPath:path toPath:toPath];
  [(REUIRelevanceEngineController *)self _performOrEnqueueOperation:v7];
}

- (BOOL)relevanceEngine:(id)engine isElementAtPathVisible:(id)visible
{
  v5 = [(REUIRelevanceEngineController *)self _indexPathForSectionPath:visible];
  v6 = [(REUIRelevanceEngineController *)self _controllerIndexPathForEngineIndexPath:v5];

  if (v6 && (*&self->_delegateCallbacks & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained engineController:self isElementAtIndexPathVisible:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)relevanceEngineDidBeginUpdatingRelevance:(id)relevance
{
  if ((*&self->_delegateCallbacks & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained engineControllerDidBeginUpdatingRelevance:self];
  }
}

- (void)relevanceEngineDidFinishUpdatingRelevance:(id)relevance
{
  if ((*&self->_delegateCallbacks & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained engineControllerDidFinishUpdatingRelevance:self];
  }
}

- (id)elementsOrdered:(unint64_t)ordered relativeToElement:(id)element
{
  v6 = [(REUIRelevanceEngineController *)self _indexPathForElementWithIdentifier:element];
  v7 = v6;
  if (ordered)
  {
    if (ordered == 1)
    {
      item = [v6 item];
    }

    else
    {
      item = 0;
    }

    v9 = 0;
  }

  else
  {
    v9 = [v6 item] + 1;
    item = -[REUIRelevanceEngineController _numberOfItemsInSectionAtIndex:](self, "_numberOfItemsInSectionAtIndex:", [v7 section]);
  }

  array = [MEMORY[0x277CBEB18] array];
  if (v9 < item)
  {
    do
    {
      v11 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:{objc_msgSend(v7, "section")}];
      v12 = [(REUIRelevanceEngineController *)self elementIdentifierAtIndexPath:v11];
      if (v12)
      {
        [array addObject:v12];
      }

      ++v9;
    }

    while (item != v9);
  }

  v13 = [array copy];

  return v13;
}

- (BOOL)elementIsAvailable:(id)available
{
  v3 = [(REUIRelevanceEngineController *)self _indexPathForElementWithIdentifier:available];
  v4 = v3 != 0;

  return v4;
}

- (id)interactionTypeForElement:(id)element
{
  v4 = [(REUIRelevanceEngineController *)self _indexPathForElementWithIdentifier:element];
  v5 = [(REUIRelevanceEngineController *)self _contentAtIndexPath:v4];
  v6 = [v5 objectForKey:*MEMORY[0x277D444F8]];
  objc_opt_class();
  v7 = v6;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x277D44508];
  }

  v9 = v8;

  return v8;
}

- (REUIRelevanceEngineControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)elementAtIndexPathWasSelected:(id)selected
{
  v4 = [(REUIRelevanceEngineController *)self elementIdentifierAtIndexPath:selected];
  [(REUITrainingContext *)self->_trainingContext selectElementWithIdentifier:v4];
}

- (void)elemenAtIndexPathDidDisplay:(id)display
{
  v4 = [(REUIRelevanceEngineController *)self elementIdentifierAtIndexPath:display];
  if (v4)
  {
    [(REUITrainingContext *)self->_trainingContext elementWithIdentifierDidDisplay:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)elementAtIndexPathDidEndDisplay:(id)display
{
  v4 = [(REUIRelevanceEngineController *)self elementIdentifierAtIndexPath:display];
  if (v4)
  {
    [(REUITrainingContext *)self->_trainingContext elementWithIdentifierDidEndDisplay:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_performOperations:(uint64_t)a3 toSection:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_261AAC000, a2, a3, "%p Begin updating delegate.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performOperations:(uint64_t)a3 toSection:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_261AAC000, a2, a3, "%p Finish updating delegate.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_58_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_261AAC000, log, OS_LOG_TYPE_DEBUG, "%p inserting element %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_65_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_261AAC000, a2, a3, "%p Showing no content element.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __62__REUIRelevanceEngineController__performOperations_toSection___block_invoke_65_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_261AAC000, a2, a3, "%p Hiding no content element.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end
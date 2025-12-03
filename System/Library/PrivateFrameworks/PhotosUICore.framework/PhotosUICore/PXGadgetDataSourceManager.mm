@interface PXGadgetDataSourceManager
+ (OS_os_log)gadgetDataSourceManagerLog;
- (BOOL)gadget:(id)gadget transitionToViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (NSArray)cachedProviders;
- (NSArray)gadgetProviders;
- (PXGadgetDataSourceManager)initWithQueueName:(id)name;
- (PXGadgetDelegate)nextGadgetResponder;
- (id)_dataSourceSnapshot;
- (id)createInitialDataSource;
- (id)gadgetViewControllerHostingGadget:(id)gadget;
- (id)presentationEnvironmentForGadget:(id)gadget;
- (void)_loadDataFromProviders:(id)providers withGadgetMinimum:(unint64_t)minimum;
- (void)_loadPriorityForProviders:(id)providers;
- (void)_updateDataSource;
- (void)beginLoadingInitialGadgets:(unint64_t)gadgets;
- (void)didPerformChanges;
- (void)dismissGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)gadget:(id)gadget animateChanges:(id)changes;
- (void)gadget:(id)gadget didChange:(unint64_t)change;
- (void)invalidateGadgets;
- (void)loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock:(id)block completion:(id)completion;
- (void)presentGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)removeCachedProviders;
- (void)setCanLoadRemainingDataForProviders:(BOOL)providers;
- (void)willPerformChanges;
@end

@implementation PXGadgetDataSourceManager

- (PXGadgetDelegate)nextGadgetResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_nextGadgetResponder);

  return WeakRetained;
}

- (id)gadgetViewControllerHostingGadget:(id)gadget
{
  gadgetCopy = gadget;
  nextGadgetResponder = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
  if (nextGadgetResponder && (v6 = nextGadgetResponder, [(PXGadgetDataSourceManager *)self nextGadgetResponder], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    nextGadgetResponder2 = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
    v10 = [nextGadgetResponder2 gadgetViewControllerHostingGadget:gadgetCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)gadget:(id)gadget animateChanges:(id)changes
{
  gadgetCopy = gadget;
  changesCopy = changes;
  nextGadgetResponder = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
  if (nextGadgetResponder)
  {
    v8 = nextGadgetResponder;
    nextGadgetResponder2 = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      nextGadgetResponder3 = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
      [nextGadgetResponder3 gadget:gadgetCopy animateChanges:changesCopy];
    }
  }
}

- (void)gadget:(id)gadget didChange:(unint64_t)change
{
  gadgetCopy = gadget;
  nextGadgetResponder = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
  if (nextGadgetResponder)
  {
    v7 = nextGadgetResponder;
    nextGadgetResponder2 = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      nextGadgetResponder3 = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
      [nextGadgetResponder3 gadget:gadgetCopy didChange:change];
    }
  }
}

- (id)presentationEnvironmentForGadget:(id)gadget
{
  gadgetCopy = gadget;
  nextGadgetResponder = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
  v6 = [nextGadgetResponder presentationEnvironmentForGadget:gadgetCopy];

  return v6;
}

- (void)dismissGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  nextGadgetResponder = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
  [nextGadgetResponder dismissGadgetViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)presentGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  nextGadgetResponder = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
  [nextGadgetResponder presentGadgetViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (BOOL)gadget:(id)gadget transitionToViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  gadgetCopy = gadget;
  controllerCopy = controller;
  completionCopy = completion;
  nextGadgetResponder = [(PXGadgetDataSourceManager *)self nextGadgetResponder];
  v14 = nextGadgetResponder;
  if (nextGadgetResponder)
  {
    v15 = [nextGadgetResponder gadget:gadgetCopy transitionToViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)invalidateGadgets
{
  if (![(PXGadgetDataSourceManager *)self loadingInitialGadgets])
  {
    if (self->_isPerformingChanges)
    {
      self->_dataSourceNeedsUpdate = 1;
    }

    else
    {

      [(PXGadgetDataSourceManager *)self _updateDataSource];
    }
  }
}

- (id)_dataSourceSnapshot
{
  v29 = *MEMORY[0x1E69E9840];
  cachedProviders = [(PXGadgetDataSourceManager *)self cachedProviders];
  v4 = [cachedProviders mutableCopy];

  selfCopy = self;
  gadgetProviderSortComparator = [(PXGadgetDataSourceManager *)self gadgetProviderSortComparator];
  if (gadgetProviderSortComparator)
  {
    [v4 sortUsingComparator:gadgetProviderSortComparator];
  }

  v22 = gadgetProviderSortComparator;
  hiddenGadgetProviders = [(PXGadgetDataSourceManager *)self hiddenGadgetProviders];
  if ([hiddenGadgetProviders count])
  {
    [v4 removeObjectsInArray:hiddenGadgetProviders];
  }

  v21 = hiddenGadgetProviders;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        gadgets = [v13 gadgets];
        if ([gadgets count])
        {
          if ([gadgets count] >= 2)
          {
            gadgetSortComparator = [(PXGadgetDataSourceManager *)selfCopy gadgetSortComparator];
            if (gadgetSortComparator)
            {
              v16 = [gadgets sortedArrayUsingComparator:gadgetSortComparator];

              gadgets = v16;
            }
          }

          identifier = [v13 identifier];
          v18 = [[PXGadgetSection alloc] initWithIdentifier:identifier gadgets:gadgets];
          [v7 addObject:v18];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [[PXGadgetDataSource alloc] initWithGadgetSections:v7];

  return v19;
}

- (void)_updateDataSource
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_isPerformingChanges)
  {
    PXAssertGetLog();
  }

  self->_dataSourceNeedsUpdate = 0;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  _dataSourceSnapshot = [(PXGadgetDataSourceManager *)self _dataSourceSnapshot];
  gadgetSections = [dataSource gadgetSections];
  gadgetSections2 = [_dataSourceSnapshot gadgetSections];
  v7 = [off_1E7721450 changeDetailsFromArray:gadgetSections toArray:gadgetSections2 changedObjects:MEMORY[0x1E695E0F0] objectComparator:&__block_literal_global_169330];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __46__PXGadgetDataSourceManager__updateDataSource__block_invoke_2;
  v16 = &unk_1E773F640;
  v17 = dataSource;
  v18 = v8;
  v9 = v8;
  v10 = dataSource;
  [gadgetSections2 enumerateObjectsUsingBlock:&v13];
  v11 = [off_1E77218B0 alloc];
  v12 = [v11 initWithFromDataSourceIdentifier:objc_msgSend(v10 toDataSourceIdentifier:"identifier" sectionChanges:v13 itemChangeDetailsBySection:v14 subitemChangeDetailsByItemBySection:{v15, v16), objc_msgSend(_dataSourceSnapshot, "identifier"), v7, v9, 0}];
  [(PXSectionedDataSourceManager *)self setDataSource:_dataSourceSnapshot changeDetails:v12];
}

void __46__PXGadgetDataSourceManager__updateDataSource__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 32);
  v7 = [v5 identifier];
  if (v6)
  {
    [v6 indexPathForGadgetSectionWithIdentifier:v7];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  if (v16 != *off_1E7721F68)
  {
    v8 = *(a1 + 32);
    v15[0] = v16;
    v15[1] = v17;
    v9 = [v8 gadgetSectionAtIndexPath:v15];
    v10 = [v9 gadgets];
    v11 = [v5 gadgets];
    v12 = [off_1E7721450 changeDetailsFromArray:v10 toArray:v11 changedObjects:MEMORY[0x1E695E0F0]];

    v13 = *(a1 + 40);
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }
}

uint64_t __46__PXGadgetDataSourceManager__updateDataSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_loadDataFromProviders:(id)providers withGadgetMinimum:(unint64_t)minimum
{
  v32 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(providersCopy, "count")}];
  selfCopy = self;
  gadgetDataSourceManagerLog = [objc_opt_class() gadgetDataSourceManagerLog];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = providersCopy;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v28;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(obj);
      }

      if (v10 >= minimum)
      {
        break;
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      v14 = os_signpost_id_generate(gadgetDataSourceManagerLog);
      v15 = gadgetDataSourceManagerLog;
      v16 = v15;
      if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        [v13 loadDataForGadgets];
        v18 = v16;
      }

      else
      {
        if (os_signpost_enabled(v15))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "LoadDataForGadget", "", buf, 2u);
        }

        [v13 loadDataForGadgets];
        v17 = v16;
        if (os_signpost_enabled(v17))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, OS_SIGNPOST_INTERVAL_END, v14, "LoadDataForGadget", "", buf, 2u);
        }
      }

      [v6 addObject:v13];
      v10 += [v13 estimatedNumberOfGadgets];
      if (v9 == ++v12)
      {
        v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  lookupQueue = selfCopy->_lookupQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PXGadgetDataSourceManager__loadDataFromProviders_withGadgetMinimum___block_invoke;
  block[3] = &unk_1E774C620;
  block[4] = selfCopy;
  v25 = v6;
  v20 = v6;
  dispatch_sync(lookupQueue, block);
}

- (void)_loadPriorityForProviders:(id)providers
{
  v16 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  if (![(PXGadgetDataSourceManager *)self hasLoadedPriorities])
  {
    gadgetProviderSortComparator = [(PXGadgetDataSourceManager *)self gadgetProviderSortComparator];

    if (gadgetProviderSortComparator)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = providersCopy;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v11 + 1) + 8 * v10++) loadDataForPriority];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (NSArray)cachedProviders
{
  v23 = *MEMORY[0x1E69E9840];
  cachedProviders = self->_cachedProviders;
  if (!cachedProviders)
  {
    gadgetProviders = [(PXGadgetDataSourceManager *)self gadgetProviders];
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = gadgetProviders;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = 0x1E696A000uLL;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          [v13 setDelegate:self];
          [v13 setNextGadgetResponder:self];
          identifier = [v13 identifier];
          if ([v6 containsObject:identifier])
          {
            currentHandler = [*(v11 + 2728) currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetDataSourceManager.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"![gadgetProviderIdentifiers containsObject:gadgetProviderIdentifier]"}];

            v11 = 0x1E696A000;
          }

          [v6 addObject:identifier];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v16 = self->_cachedProviders;
    self->_cachedProviders = v7;

    cachedProviders = self->_cachedProviders;
  }

  return cachedProviders;
}

- (void)setCanLoadRemainingDataForProviders:(BOOL)providers
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_canLoadRemainingDataForProviders != providers)
  {
    self->_canLoadRemainingDataForProviders = providers;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    cachedProviders = [(PXGadgetDataSourceManager *)self cachedProviders];
    v5 = [cachedProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(cachedProviders);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (self->_canLoadRemainingDataForProviders)
          {
            [v9 startLoadingRemainingData];
          }

          else
          {
            [v9 pauseLoadingRemainingData];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [cachedProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock:(id)block completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  completionCopy = completion;
  v7 = self->_deferredGadgetLoadingGroup;
  if ([(PXGadgetDataSourceManager *)self needsToLoadAllProviders])
  {
    [(PXGadgetDataSourceManager *)self setNeedsToLoadAllProviders:0];
    queue = self->_lookupQueue;
    cachedProviders = [(PXGadgetDataSourceManager *)self cachedProviders];
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__169352;
    v43 = __Block_byref_object_dispose__169353;
    v44 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__PXGadgetDataSourceManager_loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock_completion___block_invoke;
    block[3] = &unk_1E7746448;
    v9 = cachedProviders;
    v36 = v9;
    selfCopy = self;
    v38 = &v39;
    dispatch_sync(queue, block);
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v34[3] = 0;
    gadgetDataSourceManagerLog = [objc_opt_class() gadgetDataSourceManagerLog];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v40[5];
    v11 = [obj countByEnumeratingWithState:&v30 objects:v45 count:16];
    if (v11)
    {
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          dispatch_group_enter(v7);
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __100__PXGadgetDataSourceManager_loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock_completion___block_invoke_2;
          v21[3] = &unk_1E773F5F8;
          v22 = gadgetDataSourceManagerLog;
          v23 = v14;
          v24 = queue;
          selfCopy2 = self;
          v27 = blockCopy;
          v28 = v34;
          v29 = &v39;
          v26 = v7;
          v15 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v21);
          dispatch_async(self->_deferredGadgetQueue, v15);
        }

        v11 = [obj countByEnumeratingWithState:&v30 objects:v45 count:16];
      }

      while (v11);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __100__PXGadgetDataSourceManager_loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock_completion___block_invoke_23;
    v19[3] = &unk_1E774C2F0;
    v19[4] = self;
    v20 = completionCopy;
    dispatch_group_notify(v7, MEMORY[0x1E69E96A0], v19);

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(&v39, 8);
  }

  else if (completionCopy)
  {
    dispatch_group_notify(v7, MEMORY[0x1E69E96A0], completionCopy);
  }
}

void __100__PXGadgetDataSourceManager_loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock_completion___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:a1[4]];
  [v2 removeObjectsInArray:*(a1[5] + 128)];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __100__PXGadgetDataSourceManager_loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock_completion___block_invoke_2(uint64_t a1)
{
  v2 = os_signpost_id_generate(*(a1 + 32));
  v3 = *(a1 + 32);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "LoadDataForGadget", "", buf, 2u);
  }

  [*(a1 + 40) loadDataForGadgets];
  v5 = *(a1 + 32);
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v2, "LoadDataForGadget", "", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PXGadgetDataSourceManager_loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock_completion___block_invoke_21;
  block[3] = &unk_1E774C620;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  block[4] = *(a1 + 56);
  block[5] = v8;
  dispatch_sync(v7, block);
  *(a1 + 32);
  *(a1 + 72);
  v9 = *(a1 + 64);
  px_dispatch_on_main_queue();
}

uint64_t __100__PXGadgetDataSourceManager_loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock_completion___block_invoke_23(uint64_t a1)
{
  *(*(a1 + 32) + 154) = 1;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __100__PXGadgetDataSourceManager_loadRemainingGadgetsIfNeededWithGenerateGadgetFinishedBlock_completion___block_invoke_2_22(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = os_signpost_id_generate(*(a1 + 32));
  v3 = *(a1 + 32);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "GenerateGadget", "", buf, 2u);
  }

  [*(a1 + 40) generateGadgets];
  v5 = *(a1 + 32);
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v2, "GenerateGadget", "", buf, 2u);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = ++*(*(*(a1 + 72) + 8) + 24);
  if (v8 == [*(*(*(a1 + 80) + 8) + 40) count])
  {
    v9 = *(a1 + 48);
    if (v9[155] == 1)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = [v9 cachedProviders];
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v15 + 1) + 8 * i) startLoadingRemainingData];
          }

          v12 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

- (void)beginLoadingInitialGadgets:(unint64_t)gadgets
{
  v52 = *MEMORY[0x1E69E9840];
  gadgetDataSourceManagerLog = [objc_opt_class() gadgetDataSourceManagerLog];
  v4 = os_signpost_id_generate(gadgetDataSourceManagerLog);
  v5 = gadgetDataSourceManagerLog;
  v6 = v5;
  spid = v4;
  v26 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "LoadInitialGadgets", "", buf, 2u);
  }

  cachedProviders = [(PXGadgetDataSourceManager *)self cachedProviders];
  v8 = self->_lookupQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PXGadgetDataSourceManager_beginLoadingInitialGadgets___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  queue = v8;
  dispatch_sync(v8, block);
  [(PXGadgetDataSourceManager *)self setLoadingInitialGadgets:1];
  [(PXGadgetDataSourceManager *)self _loadPriorityForProviders:cachedProviders];
  [(PXGadgetDataSourceManager *)self didLoadDataForPriorities];
  v29 = cachedProviders;
  gadgetProviderSortComparator = [(PXGadgetDataSourceManager *)self gadgetProviderSortComparator];
  v9 = v29;
  if (gadgetProviderSortComparator)
  {
    v10 = [v29 sortedArrayUsingComparator:gadgetProviderSortComparator];

    v9 = v10;
  }

  v25 = v9;
  [PXGadgetDataSourceManager _loadDataFromProviders:"_loadDataFromProviders:withGadgetMinimum:" withGadgetMinimum:?];
  *buf = 0;
  v45 = buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__169352;
  v48 = __Block_byref_object_dispose__169353;
  v49 = 0;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __56__PXGadgetDataSourceManager_beginLoadingInitialGadgets___block_invoke_19;
  v43[3] = &unk_1E7749A28;
  v43[5] = buf;
  v43[4] = self;
  dispatch_sync(queue, v43);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = *(v45 + 5);
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v12)
  {
    v13 = *v40;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v16 = os_signpost_id_generate(v6);
        v17 = v6;
        v18 = v17;
        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          *v35 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "GenerateGadget", "", v35, 2u);
        }

        [v15 generateGadgets];
        v19 = v18;
        v20 = v19;
        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *v35 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v20, OS_SIGNPOST_INTERVAL_END, v16, "GenerateGadget", "", v35, 2u);
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v12);
  }

  [(PXGadgetDataSourceManager *)self _updateDataSource];
  [(PXGadgetDataSourceManager *)self setLoadingInitialGadgets:0];
  *v35 = 0;
  v36 = v35;
  v37 = 0x2020000000;
  v38 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __56__PXGadgetDataSourceManager_beginLoadingInitialGadgets___block_invoke_20;
  v32[3] = &unk_1E7746448;
  v34 = v35;
  v32[4] = self;
  v21 = v29;
  v33 = v21;
  dispatch_sync(queue, v32);
  if (v36[24] == 1)
  {
    [(PXGadgetDataSourceManager *)self setNeedsToLoadAllProviders:0];
  }

  v22 = v6;
  v23 = v22;
  if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v31 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, OS_SIGNPOST_INTERVAL_END, spid, "LoadInitialGadgets", "", v31, 2u);
  }

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(buf, 8);
}

void __56__PXGadgetDataSourceManager_beginLoadingInitialGadgets___block_invoke_19(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __56__PXGadgetDataSourceManager_beginLoadingInitialGadgets___block_invoke_20(void *a1)
{
  result = [*(a1[4] + 128) isEqualToArray:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (NSArray)gadgetProviders
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGadgetDataSourceManager.m" lineNumber:100 description:{@"Method %s is a responsibility of subclass %@", "-[PXGadgetDataSourceManager gadgetProviders]", v6}];

  abort();
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXGadgetDataSourceManager;
  [(PXGadgetDataSourceManager *)&v3 didPerformChanges];
  self->_isPerformingChanges = 0;
  if (self->_dataSourceNeedsUpdate)
  {
    [(PXGadgetDataSourceManager *)self _updateDataSource];
  }
}

- (void)willPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXGadgetDataSourceManager;
  [(PXGadgetDataSourceManager *)&v3 willPerformChanges];
  self->_isPerformingChanges = 1;
}

- (void)removeCachedProviders
{
  v3 = +[(PXSectionedDataSource *)PXGadgetDataSource];
  [(PXSectionedDataSourceManager *)self setDataSource:v3 changeDetails:0];

  [(PXGadgetDataSourceManager *)self setCachedProviders:0];
  [(PXGadgetDataSourceManager *)self setNeedsToLoadAllProviders:1];
  self->_didLoadRemainingGadgets = 0;
}

- (id)createInitialDataSource
{
  _dataSourceSnapshot = [(PXGadgetDataSourceManager *)self _dataSourceSnapshot];
  [(PXGadgetDataSourceManager *)self setNeedsToLoadAllProviders:1];

  return _dataSourceSnapshot;
}

- (PXGadgetDataSourceManager)initWithQueueName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = PXGadgetDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v18 init];
  if (v5)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-lookup", nameCopy];
    v7 = dispatch_queue_create([nameCopy UTF8String], 0);
    lookupQueue = v5->_lookupQueue;
    v5->_lookupQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lookupQueue_loadedProviders = v5->_lookupQueue_loadedProviders;
    v5->_lookupQueue_loadedProviders = v9;

    v11 = dispatch_group_create();
    deferredGadgetLoadingGroup = v5->_deferredGadgetLoadingGroup;
    v5->_deferredGadgetLoadingGroup = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);

    v15 = dispatch_queue_create("com.apple.photos.deferredGadgetQueue", v14);
    deferredGadgetQueue = v5->_deferredGadgetQueue;
    v5->_deferredGadgetQueue = v15;
  }

  return v5;
}

+ (OS_os_log)gadgetDataSourceManagerLog
{
  if (gadgetDataSourceManagerLog_predicate != -1)
  {
    dispatch_once(&gadgetDataSourceManagerLog_predicate, &__block_literal_global_45_169393);
  }

  v3 = gadgetDataSourceManagerLog_log;

  return v3;
}

void __55__PXGadgetDataSourceManager_gadgetDataSourceManagerLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "GadgetDataSourceManager");
  v1 = gadgetDataSourceManagerLog_log;
  gadgetDataSourceManagerLog_log = v0;
}

@end
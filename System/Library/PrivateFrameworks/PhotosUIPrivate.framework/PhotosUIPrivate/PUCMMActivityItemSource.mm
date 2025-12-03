@interface PUCMMActivityItemSource
- (PUActivityItemSourceController)itemSourceController;
- (PUCMMActivityItemSource)initWithActivityItemSourceController:(id)controller;
- (PUCMMActivityItemSourceDelegate)delegate;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerOperation:(id)operation;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)placeholderItemsForActivityViewController:(id)controller;
- (id)preparedItems;
- (void)activityItemSourceOperation:(id)operation prepareItemForActivityType:(id)type;
- (void)cancel;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setState:(unint64_t)state;
@end

@implementation PUCMMActivityItemSource

- (PUCMMActivityItemSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PUActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PUCMMActivityItemSourceSourceControllerObserverContext == context)
  {
    v11[9] = v5;
    v11[10] = v6;
    WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);
    state = [WeakRetained state];

    v10 = 2 * (state == 2);
    if (state == 1)
    {
      v10 = 1;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PUCMMActivityItemSource_observable_didChange_context___block_invoke;
    v11[3] = &__block_descriptor_40_e42_v16__0___PUMutableCMMActivityItemSource__8l;
    v11[4] = v10;
    [(PUCMMActivityItemSource *)self performChanges:v11];
  }
}

- (void)setState:(unint64_t)state
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    v5 = PLShareSheetGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      state = self->_state;
      if (state > 2)
      {
        v8 = @"unknown";
      }

      else
      {
        v8 = off_1E7B78E78[state];
      }

      if (state > 2)
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = off_1E7B78E78[state];
      }

      v11 = 138413058;
      v12 = v6;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v10 = v6;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "<%@:%p>: PUCMMActivityItemSource changing state from %{public}@ to %{public}@", &v11, 0x2Au);
    }

    self->_state = state;
    [(PUCMMActivityItemSource *)self signalChange:1];
  }
}

- (void)cancel
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCMMActivityItemSource.m" lineNumber:231 description:@"expect main thread"];
  }

  itemSourceController = [(PUCMMActivityItemSource *)self itemSourceController];

  if (itemSourceController)
  {
    itemSourceController2 = [(PUCMMActivityItemSource *)self itemSourceController];
    [itemSourceController2 cancel];
  }

  preparationOperation = [(PUCMMActivityItemSource *)self preparationOperation];

  if (preparationOperation)
  {
    preparationOperation2 = [(PUCMMActivityItemSource *)self preparationOperation];
    [preparationOperation2 pu_cancel];

    preparationOperation3 = [(PUCMMActivityItemSource *)self preparationOperation];
    semaphore = [preparationOperation3 semaphore];
    dispatch_semaphore_signal(semaphore);
  }
}

- (void)activityItemSourceOperation:(id)operation prepareItemForActivityType:(id)type
{
  v74 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  typeCopy = type;
  [(PUCMMActivityItemSource *)self setActivityType:typeCopy];
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  externalIsolationQueue = [(PUCMMActivityItemSource *)self externalIsolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_sync(externalIsolationQueue, block);

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__38454;
  v65 = __Block_byref_object_dispose__38455;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__38454;
  v59 = __Block_byref_object_dispose__38455;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__38454;
  v53 = __Block_byref_object_dispose__38455;
  v54 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  LODWORD(externalIsolationQueue) = [PUActivityItemSourceConfiguration isMomentShareLinkSupportedByActivityType:typeCopy];
  [(PUCMMActivityItemSource *)self performChanges:&__block_literal_global_38457];
  [WeakRetained registerChangeObserver:self context:&PUCMMActivityItemSourceSourceControllerObserverContext];
  v40 = MEMORY[0x1E69E9820];
  v41 = 3221225472;
  v42 = __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_2;
  v43 = &unk_1E7B7F350;
  selfCopy = self;
  v11 = typeCopy;
  v45 = v11;
  v46 = externalIsolationQueue;
  px_dispatch_on_main_queue();
  if (externalIsolationQueue)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_3;
    v32 = &unk_1E7B78DC0;
    selfCopy2 = self;
    v34 = WeakRetained;
    v35 = v11;
    v37 = &v61;
    v38 = v47;
    v39 = &v49;
    v36 = v9;
    px_dispatch_on_main_queue();

    dispatch_group_wait(v36, 0xFFFFFFFFFFFFFFFFLL);
    if (!v62[5])
    {
      v12 = PLShareSheetGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v50[5];
        *buf = 138412802;
        v69 = v13;
        v70 = 2048;
        selfCopy4 = self;
        v72 = 2114;
        v73 = v14;
        v15 = v13;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "<%@:%p>: Error in creating moment share link: %{public}@", buf, 0x20u);
      }

LABEL_8:
    }
  }

  else
  {
    v22[9] = MEMORY[0x1E69E9820];
    v22[10] = 3221225472;
    v22[11] = __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_25;
    v22[12] = &unk_1E7B78DC0;
    v22[13] = self;
    v23 = v11;
    v24 = WeakRetained;
    v26 = v47;
    v27 = &v49;
    v28 = &v55;
    v25 = v9;
    px_dispatch_on_main_queue();

    dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
    if (![v56[5] count])
    {
      v12 = PLShareSheetGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = v50[5];
        *buf = 138412802;
        v69 = v16;
        v70 = 2048;
        selfCopy4 = self;
        v72 = 2114;
        v73 = v17;
        v18 = v16;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "<%@:%p>: Error in preparing individual items: %{public}@", buf, 0x20u);
      }

      goto LABEL_8;
    }
  }

  externalIsolationQueue2 = [(PUCMMActivityItemSource *)self externalIsolationQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_28;
  v22[3] = &unk_1E7B78E10;
  v22[4] = self;
  v22[5] = &v61;
  v22[6] = &v55;
  v22[7] = v47;
  v22[8] = &v49;
  dispatch_sync(externalIsolationQueue2, v22);

  [(PUCMMActivityItemSource *)self performChanges:&__block_literal_global_31];
  dispatch_group_enter(v9);
  v20 = v11;
  v21 = v9;
  px_dispatch_on_main_queue();
  dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);
}

uint64_t __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMomentShareLink:0];
  [*(a1 + 32) setIndividuallyPreparedItems:0];
  v2 = *(a1 + 32);

  return [v2 setPreparationError:0];
}

void __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 cmmActivityItemSource:*(a1 + 32) willBeginPreparationWithActivityType:*(a1 + 40) preparationType:*(a1 + 48)];
}

void __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = PLShareSheetGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    *buf = 138412546;
    v19 = v3;
    v20 = 2048;
    v21 = v4;
    v5 = v3;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Preparing moment-sharing link", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_23;
  v13[3] = &unk_1E7B78D98;
  v6 = *(a1 + 40);
  v12 = *(a1 + 32);
  v7 = *(a1 + 48);
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v12;
  *(&v11 + 1) = v7;
  v14 = v11;
  v15 = v10;
  [v6 publishLinkForActivityType:v7 completionHandler:v13];
}

void __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_25(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = PLShareSheetGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    v18 = v3;
    v19 = 2048;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    v6 = v3;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Preparing individual items (even though a CMM is the preferred output type), for activity: %@", buf, 0x20u);
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_26;
  v11[3] = &unk_1E7B78DE8;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v9 = v7;
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  v14 = *(a1 + 56);
  [v9 runExplicitly:1 withActivityType:v8 completionHandler:v11];
}

uint64_t __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_28(uint64_t a1)
{
  [*(a1 + 32) setMomentShareLink:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) setIndividuallyPreparedItems:*(*(*(a1 + 48) + 8) + 40)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
  }

  v3 = *(a1 + 32);

  return [v3 setPreparationError:v2];
}

void __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_3_32(uint64_t a1)
{
  v2 = [*(a1 + 32) preparedItems];
  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = *(*(*(a1 + 56) + 8) + 24);
  v8 = [v4 preparationError];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_4;
  v9[3] = &unk_1E7B80DD0;
  v10 = *(a1 + 48);
  [v3 cmmActivityItemSource:v4 didFinishPreparationForActivityType:v5 preparationType:v6 withItems:v2 didCancel:v7 error:v8 completion:v9];
}

void __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_26(uint64_t a1, void *a2, char a3, void *a4)
{
  v15 = a2;
  v7 = a4;
  v8 = [v7 count];
  *(*(*(a1 + 56) + 8) + 24) = a3;
  v9 = [v7 firstObject];

  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!v8 && (a3 & 1) == 0)
  {
    v12 = [v15 copy];
    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  [*(a1 + 32) unregisterChangeObserver:*(a1 + 40) context:&PUCMMActivityItemSourceSourceControllerObserverContext];
  dispatch_group_leave(*(a1 + 48));
}

void __82__PUCMMActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_23(uint64_t a1, void *a2, char a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = PLShareSheetGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v20 = 138412802;
    v21 = v10;
    v22 = 2048;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    v13 = v10;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Finished preparing assets for activity: %{public}@", &v20, 0x20u);
  }

  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v7;
  v16 = v7;

  *(*(*(a1 + 72) + 8) + 24) = a3;
  v17 = *(*(a1 + 80) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v8;
  v19 = v8;

  [*(a1 + 48) unregisterChangeObserver:*(a1 + 32) context:&PUCMMActivityItemSourceSourceControllerObserverContext];
  dispatch_group_leave(*(a1 + 56));
}

- (id)activityViewControllerOperation:(id)operation
{
  activity = [operation activity];
  activityType = [activity activityType];
  v6 = [[PUActivityItemSourceOperation alloc] initWithDelegate:self activityType:activityType];
  [(PUCMMActivityItemSource *)self setPreparationOperation:v6];

  return v6;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v4 = [(PUCMMActivityItemSource *)self preparedItems:controller];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = [(PUCMMActivityItemSource *)self placeholderItemsForActivityViewController:item];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)preparedItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  individuallyPreparedItems = [(PUCMMActivityItemSource *)self individuallyPreparedItems];
  v4 = [individuallyPreparedItems count];

  if (v4)
  {
    individuallyPreparedItems2 = [(PUCMMActivityItemSource *)self individuallyPreparedItems];
  }

  else
  {
    momentShareLink = [(PUCMMActivityItemSource *)self momentShareLink];

    if (momentShareLink)
    {
      momentShareLink2 = [(PUCMMActivityItemSource *)self momentShareLink];
      v9[0] = momentShareLink2;
      individuallyPreparedItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    }

    else
    {
      individuallyPreparedItems2 = MEMORY[0x1E695E0F0];
    }
  }

  return individuallyPreparedItems2;
}

- (id)placeholderItemsForActivityViewController:(id)controller
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"https://share.icloud.com/photos/"];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (PUCMMActivityItemSource)initWithActivityItemSourceController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = PUCMMActivityItemSource;
  v5 = [(PUCMMActivityItemSource *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_itemSourceController, controllerCopy);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.PUCMMActivityItemSource.isolationQueue", v7);
    externalIsolationQueue = v6->_externalIsolationQueue;
    v6->_externalIsolationQueue = v8;
  }

  return v6;
}

@end
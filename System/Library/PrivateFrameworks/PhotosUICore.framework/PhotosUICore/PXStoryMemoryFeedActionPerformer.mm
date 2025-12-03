@interface PXStoryMemoryFeedActionPerformer
- (BOOL)handlePrimaryActionOnItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source fromViewController:(id)controller;
- (BOOL)navigateToObjectReference:(id)reference originalSource:(id)source fromViewController:(id)controller animated:(BOOL)animated willPresentHandler:(id)handler completionHandler:(id)completionHandler;
- (PXStoryMemoryFeedActionPerformer)init;
- (PXStoryMemoryFeedActionPerformer)initWithViewControllerSetupBlock:(id)block;
- (void)_presentViewController:(id)controller contentViewController:(id)viewController fromViewController:(id)fromViewController animated:(BOOL)animated completion:(id)completion;
- (void)deleteItemsInSelection:(id)selection undoManager:(id)manager;
@end

@implementation PXStoryMemoryFeedActionPerformer

- (void)_presentViewController:(id)controller contentViewController:(id)viewController fromViewController:(id)fromViewController animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if (viewController)
  {
    controllerCopy = viewController;
  }

  else
  {
    controllerCopy = controller;
  }

  v13 = controllerCopy;
  completionCopy = completion;
  fromViewControllerCopy = fromViewController;
  viewControllerCopy2 = viewController;
  controllerCopy2 = controller;
  [off_1E7721710 prepareTransitionFromSummaryViewController:fromViewControllerCopy toPresentedViewController:controllerCopy2 detailViewController:v13];
  [fromViewControllerCopy presentViewController:controllerCopy2 animated:animatedCopy completion:completionCopy];
}

- (void)deleteItemsInSelection:(id)selection undoManager:(id)manager
{
  managerCopy = manager;
  [selection fetchSelectedObjects];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

void __71__PXStoryMemoryFeedActionPerformer_deleteItemsInSelection_undoManager___block_invoke_2(void *a1, int a2)
{
  if (a2)
  {
    v3 = [(PXMemoriesAction *)[PXRejectMemoriesAction alloc] initWithMemories:a1[4]];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71__PXStoryMemoryFeedActionPerformer_deleteItemsInSelection_undoManager___block_invoke_3;
    v5[3] = &unk_1E774C5C0;
    v4 = a1[5];
    v5[4] = a1[6];
    [(PXAction *)v3 executeWithUndoManager:v4 completionHandler:v5];
  }
}

void __71__PXStoryMemoryFeedActionPerformer_deleteItemsInSelection_undoManager___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed execute reject memories action for %@. Error: %@", &v8, 0x16u);
    }
  }
}

- (BOOL)navigateToObjectReference:(id)reference originalSource:(id)source fromViewController:(id)controller animated:(BOOL)animated willPresentHandler:(id)handler completionHandler:(id)completionHandler
{
  animatedCopy = animated;
  sourceCopy = source;
  controllerCopy = controller;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v18 = PXStoryConfigurationForObjectReference(reference);
  v19 = v18;
  if (v18)
  {
    [v18 configureWithNavigationSource:sourceCopy];
    v20 = +[PXStorySettings sharedInstance];
    enableProtoPlayground = [v20 enableProtoPlayground];

    if (enableProtoPlayground)
    {
      v22 = PXSoftLinkedProtoMemoriesPlayerViewController(v19);
      v23 = 0;
    }

    else
    {
      v31 = 0;
      v22 = [PXStoryUIFactory viewControllerWithConfiguration:v19 contentViewController:&v31];
      v23 = v31;
    }

    viewControllerSetupBlock = [(PXStoryMemoryFeedActionPerformer *)self viewControllerSetupBlock];

    if (viewControllerSetupBlock)
    {
      viewControllerSetupBlock2 = [(PXStoryMemoryFeedActionPerformer *)self viewControllerSetupBlock];
      (viewControllerSetupBlock2)[2](viewControllerSetupBlock2, v23);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v23);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __142__PXStoryMemoryFeedActionPerformer_navigateToObjectReference_originalSource_fromViewController_animated_willPresentHandler_completionHandler___block_invoke;
    v28[3] = &unk_1E774C2F0;
    v29 = v23;
    v30 = completionHandlerCopy;
    v26 = v23;
    [(PXStoryMemoryFeedActionPerformer *)self _presentViewController:v22 contentViewController:v26 fromViewController:controllerCopy animated:animatedCopy completion:v28];
  }

  return v19 != 0;
}

uint64_t __142__PXStoryMemoryFeedActionPerformer_navigateToObjectReference_originalSource_fromViewController_animated_willPresentHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (BOOL)handlePrimaryActionOnItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source fromViewController:(id)controller
{
  controllerCopy = controller;
  v10 = *&path->item;
  v15[0] = *&path->dataSourceIdentifier;
  v15[1] = v10;
  v11 = [source objectReferenceAtIndexPath:v15];
  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedActionPerformer.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"objectReference != nil"}];
  }

  v12 = [(PXStoryMemoryFeedActionPerformer *)self navigateToObjectReference:v11 originalSource:@"ForYou" fromViewController:controllerCopy animated:1 willPresentHandler:0 completionHandler:0];

  return v12;
}

- (PXStoryMemoryFeedActionPerformer)initWithViewControllerSetupBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = PXStoryMemoryFeedActionPerformer;
  v5 = [(PXStoryMemoryFeedActionPerformer *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    viewControllerSetupBlock = v5->_viewControllerSetupBlock;
    v5->_viewControllerSetupBlock = v6;
  }

  return v5;
}

- (PXStoryMemoryFeedActionPerformer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedActionPerformer.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXStoryMemoryFeedActionPerformer init]"}];

  abort();
}

@end
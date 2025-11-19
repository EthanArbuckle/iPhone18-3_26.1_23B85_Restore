@interface PXStoryMemoryFeedActionPerformer
- (BOOL)handlePrimaryActionOnItemAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4 fromViewController:(id)a5;
- (BOOL)navigateToObjectReference:(id)a3 originalSource:(id)a4 fromViewController:(id)a5 animated:(BOOL)a6 willPresentHandler:(id)a7 completionHandler:(id)a8;
- (PXStoryMemoryFeedActionPerformer)init;
- (PXStoryMemoryFeedActionPerformer)initWithViewControllerSetupBlock:(id)a3;
- (void)_presentViewController:(id)a3 contentViewController:(id)a4 fromViewController:(id)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)deleteItemsInSelection:(id)a3 undoManager:(id)a4;
@end

@implementation PXStoryMemoryFeedActionPerformer

- (void)_presentViewController:(id)a3 contentViewController:(id)a4 fromViewController:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a3;
  }

  v13 = v12;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  [off_1E7721710 prepareTransitionFromSummaryViewController:v15 toPresentedViewController:v17 detailViewController:v13];
  [v15 presentViewController:v17 animated:v8 completion:v14];
}

- (void)deleteItemsInSelection:(id)a3 undoManager:(id)a4
{
  v5 = a4;
  [a3 fetchSelectedObjects];
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

- (BOOL)navigateToObjectReference:(id)a3 originalSource:(id)a4 fromViewController:(id)a5 animated:(BOOL)a6 willPresentHandler:(id)a7 completionHandler:(id)a8
{
  v10 = a6;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = PXStoryConfigurationForObjectReference(a3);
  v19 = v18;
  if (v18)
  {
    [v18 configureWithNavigationSource:v14];
    v20 = +[PXStorySettings sharedInstance];
    v21 = [v20 enableProtoPlayground];

    if (v21)
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

    v24 = [(PXStoryMemoryFeedActionPerformer *)self viewControllerSetupBlock];

    if (v24)
    {
      v25 = [(PXStoryMemoryFeedActionPerformer *)self viewControllerSetupBlock];
      (v25)[2](v25, v23);
    }

    if (v16)
    {
      v16[2](v16, v23);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __142__PXStoryMemoryFeedActionPerformer_navigateToObjectReference_originalSource_fromViewController_animated_willPresentHandler_completionHandler___block_invoke;
    v28[3] = &unk_1E774C2F0;
    v29 = v23;
    v30 = v17;
    v26 = v23;
    [(PXStoryMemoryFeedActionPerformer *)self _presentViewController:v22 contentViewController:v26 fromViewController:v15 animated:v10 completion:v28];
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

- (BOOL)handlePrimaryActionOnItemAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4 fromViewController:(id)a5
{
  v9 = a5;
  v10 = *&a3->item;
  v15[0] = *&a3->dataSourceIdentifier;
  v15[1] = v10;
  v11 = [a4 objectReferenceAtIndexPath:v15];
  if (!v11)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedActionPerformer.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"objectReference != nil"}];
  }

  v12 = [(PXStoryMemoryFeedActionPerformer *)self navigateToObjectReference:v11 originalSource:@"ForYou" fromViewController:v9 animated:1 willPresentHandler:0 completionHandler:0];

  return v12;
}

- (PXStoryMemoryFeedActionPerformer)initWithViewControllerSetupBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryMemoryFeedActionPerformer;
  v5 = [(PXStoryMemoryFeedActionPerformer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    viewControllerSetupBlock = v5->_viewControllerSetupBlock;
    v5->_viewControllerSetupBlock = v6;
  }

  return v5;
}

- (PXStoryMemoryFeedActionPerformer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedActionPerformer.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXStoryMemoryFeedActionPerformer init]"}];

  abort();
}

@end
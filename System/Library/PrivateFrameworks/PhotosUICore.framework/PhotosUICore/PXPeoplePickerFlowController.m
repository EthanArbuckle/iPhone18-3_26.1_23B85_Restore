@interface PXPeoplePickerFlowController
+ (id)new;
- (BOOL)_hasMergeCandidatesForDataSource:(id)a3 person:(id)a4;
- (BOOL)hasNextViewController;
- (NSArray)viewControllers;
- (NSMutableArray)bootstrappedSourceUUIDs;
- (PXPeopleFlowDelegate)flowDelegate;
- (PXPeopleFlowViewController)nextViewController;
- (PXPeopleFlowViewController)previousViewController;
- (PXPeoplePickerFlowController)init;
- (PXPeoplePickerFlowController)initWithPeople:(id)a3;
- (PXPeoplePickerFlowController)initWithPeople:(id)a3 backingScaleFactor:(double)a4;
- (id)_dataSource;
- (void)_computeViewControllersForPeople:(id)a3;
- (void)cancel:(id)a3;
- (void)done:(id)a3;
@end

@implementation PXPeoplePickerFlowController

- (PXPeopleFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

- (PXPeoplePickerFlowController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:162 description:{@"%s is not available as initializer", "-[PXPeoplePickerFlowController init]"}];

  abort();
}

- (BOOL)_hasMergeCandidatesForDataSource:(id)a3 person:(id)a4
{
  v4 = [a3 fetchAndCacheMergeCandidatesForPerson:a4];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)_dataSource
{
  v2 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:1];
  [(PXPeopleSuggestionDataSource *)v2 setSuggestionFetchType:0];

  return v2;
}

- (void)_computeViewControllersForPeople:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __65__PXPeoplePickerFlowController__computeViewControllersForPeople___block_invoke;
  v12 = &unk_1E774C450;
  v13 = self;
  v7 = v6;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  v16 = v17;
  [v4 enumerateObjectsUsingBlock:&v9];
  [(PXPeoplePickerFlowController *)self setViewControllers:v8, v9, v10, v11, v12, v13];
  [(PXPeoplePickerFlowController *)self setContexts:v7];

  _Block_object_dispose(v17, 8);
}

void __65__PXPeoplePickerFlowController__computeViewControllersForPeople___block_invoke(uint64_t a1, void *a2, unint64_t a3, BOOL *a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) _dataSource];
  if ([*(a1 + 32) _hasMergeCandidatesForDataSource:v8 person:v7])
  {
    v9 = [PXPeopleBootstrapContext contextWithPerson:v7 type:3];
    [v9 setWantsNaming:0];
    [*(a1 + 32) backingScaleFactor];
    [v9 setBackingScaleFactor:?];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AE30] processInfo];
    v12 = [v11 processName];
    v13 = [@"/Library/Caches/com.apple.xbs/Sources/Photos_UICore/workspaces/photosshared/PhotosUICore/PhotosUICore/Photo Picker/People Picker/Shared/PXPeoplePickerFlowController.m" lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@:%@:%s:%d", v12, v13, "-[PXPeoplePickerFlowController _computeViewControllersForPeople:]_block_invoke", 125];
    [v9 setCallerInfo:v14];

    [*(a1 + 40) addObject:v9];
    v15 = [[PXPeopleBootstrapConfirmationViewController alloc] initWithContext:v9 dataSource:v8];
    [(PXPeopleBootstrapConfirmationViewController *)v15 setUseLowMemoryMode:1];
    v16 = [[PXPeopleBootstrapSummaryViewController alloc] initWithContext:v9];
    [(PXPeopleBootstrapSummaryViewController *)v16 setUseLowMemoryMode:1];
    v17 = *(a1 + 48);
    v21[0] = v15;
    v21[1] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [v17 addObjectsFromArray:v18];

    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v20 = a3 > 9 || *(*(*(a1 + 56) + 8) + 24) > 4;
  *a4 = v20;
}

- (void)cancel:(id)a3
{
  v4 = a3;
  v5 = [(PXPeoplePickerFlowController *)self flowDelegate];
  [v5 cancel:v4];
}

- (void)done:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(PXPeoplePickerFlowController *)self contexts];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = [v8 sourcePerson];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_8;
          }

          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          v15 = objc_opt_class();
          v14 = NSStringFromClass(v15);
          v18 = [v9 px_descriptionForAssertionMessage];
          [v12 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.sourcePerson", v14, v18}];
        }

        else
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          [v12 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.sourcePerson", v14}];
        }

LABEL_8:
        [PXPeopleBootstrap performBootstrapWithSourcePerson:v9 context:v8 synchronous:0 completion:0];
        bootstrappedSourceUUIDs = self->_bootstrappedSourceUUIDs;
        v11 = [v9 uuid];
        [(NSMutableArray *)bootstrappedSourceUUIDs addObject:v11];

        ++v7;
      }

      while (v5 != v7);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v5 = v16;
    }

    while (v16);
  }

  v17 = [(PXPeoplePickerFlowController *)self flowDelegate];
  [v17 done:v20];
}

- (PXPeopleFlowViewController)previousViewController
{
  if ([(PXPeoplePickerFlowController *)self hasPreviousViewController])
  {
    v3 = [(PXPeoplePickerFlowController *)self viewControllerIndex]- 1;
    [(PXPeoplePickerFlowController *)self setViewControllerIndex:v3];
    v4 = [(PXPeoplePickerFlowController *)self viewControllers];
    v5 = [v4 objectAtIndex:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXPeopleFlowViewController)nextViewController
{
  if ([(PXPeoplePickerFlowController *)self hasNextViewController])
  {
    v3 = [(PXPeoplePickerFlowController *)self viewControllerIndex];
    [(PXPeoplePickerFlowController *)self setViewControllerIndex:v3 + 1];
    v4 = [(PXPeoplePickerFlowController *)self viewControllers];
    v5 = [v4 objectAtIndex:v3 + 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasNextViewController
{
  v3 = [(PXPeoplePickerFlowController *)self viewControllers];
  v4 = [v3 count];

  v5 = [(PXPeoplePickerFlowController *)self viewControllerIndex];
  return v4 > 0 && v5 < v4 - 1;
}

- (NSArray)viewControllers
{
  v3 = self->_viewControllers;
  if (!v3)
  {
    v4 = [(PXPeoplePickerFlowController *)self people];
    [(PXPeoplePickerFlowController *)self _computeViewControllersForPeople:v4];

    v3 = self->_viewControllers;
  }

  return v3;
}

- (NSMutableArray)bootstrappedSourceUUIDs
{
  v2 = [(NSMutableArray *)self->_bootstrappedSourceUUIDs copy];

  return v2;
}

- (PXPeoplePickerFlowController)initWithPeople:(id)a3 backingScaleFactor:(double)a4
{
  v7 = a3;
  if (a4 <= 0.0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"backingScaleFactor > 0"}];
  }

  v8 = [(PXPeoplePickerFlowController *)self initWithPeople:v7];
  v9 = v8;
  if (v8)
  {
    v8->_backingScaleFactor = a4;
  }

  return v9;
}

- (PXPeoplePickerFlowController)initWithPeople:(id)a3
{
  v6 = a3;
  if (![v6 count])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"people.count > 0"}];
  }

  v13.receiver = self;
  v13.super_class = PXPeoplePickerFlowController;
  v7 = [(PXPeoplePickerFlowController *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_people, a3);
    v8->_viewControllerIndex = -1;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bootstrappedSourceUUIDs = v8->_bootstrappedSourceUUIDs;
    v8->_bootstrappedSourceUUIDs = v9;
  }

  return v8;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXPeoplePickerFlowController.m" lineNumber:166 description:{@"%s is not available as initializer", "+[PXPeoplePickerFlowController new]"}];

  abort();
}

@end
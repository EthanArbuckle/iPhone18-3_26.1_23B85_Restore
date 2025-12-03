@interface PXPeoplePickerFlowController
+ (id)new;
- (BOOL)_hasMergeCandidatesForDataSource:(id)source person:(id)person;
- (BOOL)hasNextViewController;
- (NSArray)viewControllers;
- (NSMutableArray)bootstrappedSourceUUIDs;
- (PXPeopleFlowDelegate)flowDelegate;
- (PXPeopleFlowViewController)nextViewController;
- (PXPeopleFlowViewController)previousViewController;
- (PXPeoplePickerFlowController)init;
- (PXPeoplePickerFlowController)initWithPeople:(id)people;
- (PXPeoplePickerFlowController)initWithPeople:(id)people backingScaleFactor:(double)factor;
- (id)_dataSource;
- (void)_computeViewControllersForPeople:(id)people;
- (void)cancel:(id)cancel;
- (void)done:(id)done;
@end

@implementation PXPeoplePickerFlowController

- (PXPeopleFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

- (PXPeoplePickerFlowController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:162 description:{@"%s is not available as initializer", "-[PXPeoplePickerFlowController init]"}];

  abort();
}

- (BOOL)_hasMergeCandidatesForDataSource:(id)source person:(id)person
{
  v4 = [source fetchAndCacheMergeCandidatesForPerson:person];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)_dataSource
{
  v2 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:1];
  [(PXPeopleSuggestionDataSource *)v2 setSuggestionFetchType:0];

  return v2;
}

- (void)_computeViewControllersForPeople:(id)people
{
  peopleCopy = people;
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
  selfCopy = self;
  v7 = v6;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  v16 = v17;
  [peopleCopy enumerateObjectsUsingBlock:&v9];
  [(PXPeoplePickerFlowController *)self setViewControllers:v8, v9, v10, v11, v12, selfCopy];
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

- (void)cancel:(id)cancel
{
  cancelCopy = cancel;
  flowDelegate = [(PXPeoplePickerFlowController *)self flowDelegate];
  [flowDelegate cancel:cancelCopy];
}

- (void)done:(id)done
{
  v27 = *MEMORY[0x1E69E9840];
  doneCopy = done;
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
        sourcePerson = [v8 sourcePerson];
        if (sourcePerson)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_8;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v15 = objc_opt_class();
          v14 = NSStringFromClass(v15);
          px_descriptionForAssertionMessage = [sourcePerson px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.sourcePerson", v14, px_descriptionForAssertionMessage}];
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.sourcePerson", v14}];
        }

LABEL_8:
        [PXPeopleBootstrap performBootstrapWithSourcePerson:sourcePerson context:v8 synchronous:0 completion:0];
        bootstrappedSourceUUIDs = self->_bootstrappedSourceUUIDs;
        uuid = [sourcePerson uuid];
        [(NSMutableArray *)bootstrappedSourceUUIDs addObject:uuid];

        ++v7;
      }

      while (v5 != v7);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v5 = v16;
    }

    while (v16);
  }

  flowDelegate = [(PXPeoplePickerFlowController *)self flowDelegate];
  [flowDelegate done:doneCopy];
}

- (PXPeopleFlowViewController)previousViewController
{
  if ([(PXPeoplePickerFlowController *)self hasPreviousViewController])
  {
    v3 = [(PXPeoplePickerFlowController *)self viewControllerIndex]- 1;
    [(PXPeoplePickerFlowController *)self setViewControllerIndex:v3];
    viewControllers = [(PXPeoplePickerFlowController *)self viewControllers];
    v5 = [viewControllers objectAtIndex:v3];
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
    viewControllerIndex = [(PXPeoplePickerFlowController *)self viewControllerIndex];
    [(PXPeoplePickerFlowController *)self setViewControllerIndex:viewControllerIndex + 1];
    viewControllers = [(PXPeoplePickerFlowController *)self viewControllers];
    v5 = [viewControllers objectAtIndex:viewControllerIndex + 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasNextViewController
{
  viewControllers = [(PXPeoplePickerFlowController *)self viewControllers];
  v4 = [viewControllers count];

  viewControllerIndex = [(PXPeoplePickerFlowController *)self viewControllerIndex];
  return v4 > 0 && viewControllerIndex < v4 - 1;
}

- (NSArray)viewControllers
{
  v3 = self->_viewControllers;
  if (!v3)
  {
    people = [(PXPeoplePickerFlowController *)self people];
    [(PXPeoplePickerFlowController *)self _computeViewControllersForPeople:people];

    v3 = self->_viewControllers;
  }

  return v3;
}

- (NSMutableArray)bootstrappedSourceUUIDs
{
  v2 = [(NSMutableArray *)self->_bootstrappedSourceUUIDs copy];

  return v2;
}

- (PXPeoplePickerFlowController)initWithPeople:(id)people backingScaleFactor:(double)factor
{
  peopleCopy = people;
  if (factor <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"backingScaleFactor > 0"}];
  }

  v8 = [(PXPeoplePickerFlowController *)self initWithPeople:peopleCopy];
  v9 = v8;
  if (v8)
  {
    v8->_backingScaleFactor = factor;
  }

  return v9;
}

- (PXPeoplePickerFlowController)initWithPeople:(id)people
{
  peopleCopy = people;
  if (![peopleCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"people.count > 0"}];
  }

  v13.receiver = self;
  v13.super_class = PXPeoplePickerFlowController;
  v7 = [(PXPeoplePickerFlowController *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_people, people);
    v8->_viewControllerIndex = -1;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bootstrappedSourceUUIDs = v8->_bootstrappedSourceUUIDs;
    v8->_bootstrappedSourceUUIDs = v9;
  }

  return v8;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeoplePickerFlowController.m" lineNumber:166 description:{@"%s is not available as initializer", "+[PXPeoplePickerFlowController new]"}];

  abort();
}

@end
@interface PXSuggestLessPeopleHelper
+ (BOOL)canPerformOnAsset:(id)asset;
- (PXSuggestLessPeopleHelper)initWithUndoManager:(id)manager;
- (PXSuggestLessPeopleHelperDelegate)delegate;
- (void)_showSuggestLessOptionForPerson:(id)person completionHandler:(id)handler;
- (void)_showSuggestLessPeopleSelectionForPeople:(id)people completionHandler:(id)handler;
- (void)_suggestLessPeople:(id)people withSuggestLessOption:(int64_t)option undoManager:(id)manager completionHandler:(id)handler;
- (void)completeActionWithCompletionHandler:(id)handler;
- (void)completeOptionSelectionActionWithCompletionHandler:(id)handler;
- (void)didSelectPersonToSuggestLess:(id)less dismissViewController:(id)controller completionHandler:(id)handler;
- (void)dismissOptionSelectionViewController:(id)controller completionHandler:(id)handler;
- (void)dismissViewController:(id)controller completionHandler:(id)handler;
- (void)suggestLessPeople:(id)people completionHandler:(id)handler;
- (void)suggestLessPeopleFromAssets:(id)assets completionHandler:(id)handler;
@end

@implementation PXSuggestLessPeopleHelper

- (PXSuggestLessPeopleHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dismissOptionSelectionViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  delegate = [(PXSuggestLessPeopleHelper *)self delegate];
  [delegate suggestLessPeopleHelper:self dismissViewController:controllerCopy completionHandler:handlerCopy];
}

- (void)completeOptionSelectionActionWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E696ABC0];
  handlerCopy = handler;
  v6 = [v4 px_genericErrorWithDebugDescription:@"User cancelled confirmation alert"];
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)didSelectPersonToSuggestLess:(id)less dismissViewController:(id)controller completionHandler:(id)handler
{
  if (less)
  {
    [(PXSuggestLessPeopleHelper *)self _showSuggestLessOptionForPerson:less completionHandler:handler];
  }
}

- (void)dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  delegate = [(PXSuggestLessPeopleHelper *)self delegate];
  [delegate suggestLessPeopleHelper:self dismissViewController:controllerCopy completionHandler:handlerCopy];
}

- (void)completeActionWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E696ABC0];
  handlerCopy = handler;
  v6 = [v4 px_genericErrorWithDebugDescription:@"User cancelled confirmation alert"];
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)_suggestLessPeople:(id)people withSuggestLessOption:(int64_t)option undoManager:(id)manager completionHandler:(id)handler
{
  v10 = option == 1;
  handlerCopy = handler;
  if (option == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2 * v10;
  }

  managerCopy = manager;
  peopleCopy = people;
  v15 = [[PXPeopleUserFeedbackAction alloc] initWithPeople:peopleCopy feedbackType:v12];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__PXSuggestLessPeopleHelper__suggestLessPeople_withSuggestLessOption_undoManager_completionHandler___block_invoke;
  v17[3] = &unk_1E7735F00;
  v18 = handlerCopy;
  v19 = v12;
  v17[4] = self;
  v16 = handlerCopy;
  [(PXAction *)v15 executeWithUndoManager:managerCopy completionHandler:v17];
}

void __100__PXSuggestLessPeopleHelper__suggestLessPeople_withSuggestLessOption_undoManager_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 48);
  if (v6 == 2)
  {
    v7 = PXAnalyticsEventUserFeedbackDislikePerson;
  }

  else
  {
    if (v6 != 3)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = PXAnalyticsEventUserFeedbackAvoidPerson;
  }

  v8 = *v7;
LABEL_8:
  if ([(__CFString *)v8 length])
  {
    v9 = MEMORY[0x1E6991F28];
    v13 = *MEMORY[0x1E6991E20];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v9 sendEvent:v8 withPayload:v12];
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();
}

- (void)_showSuggestLessOptionForPerson:(id)person completionHandler:(id)handler
{
  v15[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  personCopy = person;
  userFeedbackProperties = [personCopy userFeedbackProperties];
  userFeedback = [userFeedbackProperties userFeedback];

  delegate = [(PXSuggestLessPeopleHelper *)self delegate];
  v11 = delegate;
  if (userFeedback)
  {
    undoManager = [delegate undoManager];
    v13 = [PXPeopleUtilities alertControllerForRevertingSuggestLess:personCopy undoManager:undoManager completion:handlerCopy];
  }

  else
  {
    v15[0] = personCopy;
    undoManager = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13 = [PXPeopleUtilities suggestLessOptionSelectionViewController:undoManager delegate:self completionHandler:handlerCopy];
  }

  v14 = v13;

  [v11 suggestLessPeopleHelper:self presentViewController:v14];
}

- (void)_showSuggestLessPeopleSelectionForPeople:(id)people completionHandler:(id)handler
{
  handlerCopy = handler;
  peopleCopy = people;
  v9 = [[_TtC12PhotosUICore40SuggestLessPeopleSelectionViewController alloc] initWithPeople:peopleCopy delegate:self completionHandler:handlerCopy];

  delegate = [(PXSuggestLessPeopleHelper *)self delegate];
  [delegate suggestLessPeopleHelper:self presentViewController:v9];
}

- (void)suggestLessPeopleFromAssets:(id)assets completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6978830];
  handlerCopy = handler;
  assetsCopy = assets;
  firstObject = [assetsCopy firstObject];
  v10 = [v6 fetchOptionsWithPhotoLibrary:0 orObject:firstObject];

  v14[0] = *MEMORY[0x1E6978F38];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v10 setFetchPropertySets:v11];

  [v10 setPersonContext:5];
  v12 = [MEMORY[0x1E6978980] fetchPersonsInAssets:assetsCopy options:v10];

  fetchedObjects = [v12 fetchedObjects];
  [(PXSuggestLessPeopleHelper *)self suggestLessPeople:fetchedObjects completionHandler:handlerCopy];
}

- (void)suggestLessPeople:(id)people completionHandler:(id)handler
{
  peopleCopy = people;
  handlerCopy = handler;
  if ([peopleCopy count] < 2)
  {
    if ([peopleCopy count])
    {
      firstObject = [peopleCopy firstObject];
      [(PXSuggestLessPeopleHelper *)self _showSuggestLessOptionForPerson:firstObject completionHandler:handlerCopy];
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"No persons were provided for blocking"];
      handlerCopy[2](handlerCopy, 0, v8);
    }
  }

  else
  {
    [(PXSuggestLessPeopleHelper *)self _showSuggestLessPeopleSelectionForPeople:peopleCopy completionHandler:handlerCopy];
  }
}

- (PXSuggestLessPeopleHelper)initWithUndoManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PXSuggestLessPeopleHelper;
  v6 = [(PXSuggestLessPeopleHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_undoManager, manager);
  }

  return v7;
}

+ (BOOL)canPerformOnAsset:(id)asset
{
  v12[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = assetCopy;
  if (assetCopy && ([assetCopy px_isUnsavedSyndicatedAsset] & 1) == 0)
  {
    photoLibrary = [v4 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setPersonContext:5];
    v8 = MEMORY[0x1E6978980];
    v12[0] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [v8 fetchPersonsInAssets:v9 options:librarySpecificFetchOptions];
    v5 = [v10 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
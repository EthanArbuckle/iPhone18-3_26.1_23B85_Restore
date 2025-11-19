@interface PXSuggestLessPeopleHelper
+ (BOOL)canPerformOnAsset:(id)a3;
- (PXSuggestLessPeopleHelper)initWithUndoManager:(id)a3;
- (PXSuggestLessPeopleHelperDelegate)delegate;
- (void)_showSuggestLessOptionForPerson:(id)a3 completionHandler:(id)a4;
- (void)_showSuggestLessPeopleSelectionForPeople:(id)a3 completionHandler:(id)a4;
- (void)_suggestLessPeople:(id)a3 withSuggestLessOption:(int64_t)a4 undoManager:(id)a5 completionHandler:(id)a6;
- (void)completeActionWithCompletionHandler:(id)a3;
- (void)completeOptionSelectionActionWithCompletionHandler:(id)a3;
- (void)didSelectPersonToSuggestLess:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)dismissOptionSelectionViewController:(id)a3 completionHandler:(id)a4;
- (void)dismissViewController:(id)a3 completionHandler:(id)a4;
- (void)suggestLessPeople:(id)a3 completionHandler:(id)a4;
- (void)suggestLessPeopleFromAssets:(id)a3 completionHandler:(id)a4;
@end

@implementation PXSuggestLessPeopleHelper

- (PXSuggestLessPeopleHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dismissOptionSelectionViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXSuggestLessPeopleHelper *)self delegate];
  [v8 suggestLessPeopleHelper:self dismissViewController:v7 completionHandler:v6];
}

- (void)completeOptionSelectionActionWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 px_genericErrorWithDebugDescription:@"User cancelled confirmation alert"];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)didSelectPersonToSuggestLess:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  if (a3)
  {
    [(PXSuggestLessPeopleHelper *)self _showSuggestLessOptionForPerson:a3 completionHandler:a5];
  }
}

- (void)dismissViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXSuggestLessPeopleHelper *)self delegate];
  [v8 suggestLessPeopleHelper:self dismissViewController:v7 completionHandler:v6];
}

- (void)completeActionWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 px_genericErrorWithDebugDescription:@"User cancelled confirmation alert"];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)_suggestLessPeople:(id)a3 withSuggestLessOption:(int64_t)a4 undoManager:(id)a5 completionHandler:(id)a6
{
  v10 = a4 == 1;
  v11 = a6;
  if (a4 == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2 * v10;
  }

  v13 = a5;
  v14 = a3;
  v15 = [[PXPeopleUserFeedbackAction alloc] initWithPeople:v14 feedbackType:v12];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__PXSuggestLessPeopleHelper__suggestLessPeople_withSuggestLessOption_undoManager_completionHandler___block_invoke;
  v17[3] = &unk_1E7735F00;
  v18 = v11;
  v19 = v12;
  v17[4] = self;
  v16 = v11;
  [(PXAction *)v15 executeWithUndoManager:v13 completionHandler:v17];
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

- (void)_showSuggestLessOptionForPerson:(id)a3 completionHandler:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 userFeedbackProperties];
  v9 = [v8 userFeedback];

  v10 = [(PXSuggestLessPeopleHelper *)self delegate];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 undoManager];
    v13 = [PXPeopleUtilities alertControllerForRevertingSuggestLess:v7 undoManager:v12 completion:v6];
  }

  else
  {
    v15[0] = v7;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13 = [PXPeopleUtilities suggestLessOptionSelectionViewController:v12 delegate:self completionHandler:v6];
  }

  v14 = v13;

  [v11 suggestLessPeopleHelper:self presentViewController:v14];
}

- (void)_showSuggestLessPeopleSelectionForPeople:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[_TtC12PhotosUICore40SuggestLessPeopleSelectionViewController alloc] initWithPeople:v7 delegate:self completionHandler:v6];

  v8 = [(PXSuggestLessPeopleHelper *)self delegate];
  [v8 suggestLessPeopleHelper:self presentViewController:v9];
}

- (void)suggestLessPeopleFromAssets:(id)a3 completionHandler:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6978830];
  v7 = a4;
  v8 = a3;
  v9 = [v8 firstObject];
  v10 = [v6 fetchOptionsWithPhotoLibrary:0 orObject:v9];

  v14[0] = *MEMORY[0x1E6978F38];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v10 setFetchPropertySets:v11];

  [v10 setPersonContext:5];
  v12 = [MEMORY[0x1E6978980] fetchPersonsInAssets:v8 options:v10];

  v13 = [v12 fetchedObjects];
  [(PXSuggestLessPeopleHelper *)self suggestLessPeople:v13 completionHandler:v7];
}

- (void)suggestLessPeople:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 count] < 2)
  {
    if ([v9 count])
    {
      v7 = [v9 firstObject];
      [(PXSuggestLessPeopleHelper *)self _showSuggestLessOptionForPerson:v7 completionHandler:v6];
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"No persons were provided for blocking"];
      v6[2](v6, 0, v8);
    }
  }

  else
  {
    [(PXSuggestLessPeopleHelper *)self _showSuggestLessPeopleSelectionForPeople:v9 completionHandler:v6];
  }
}

- (PXSuggestLessPeopleHelper)initWithUndoManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXSuggestLessPeopleHelper;
  v6 = [(PXSuggestLessPeopleHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_undoManager, a3);
  }

  return v7;
}

+ (BOOL)canPerformOnAsset:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 px_isUnsavedSyndicatedAsset] & 1) == 0)
  {
    v6 = [v4 photoLibrary];
    v7 = [v6 librarySpecificFetchOptions];

    [v7 setPersonContext:5];
    v8 = MEMORY[0x1E6978980];
    v12[0] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [v8 fetchPersonsInAssets:v9 options:v7];
    v5 = [v10 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
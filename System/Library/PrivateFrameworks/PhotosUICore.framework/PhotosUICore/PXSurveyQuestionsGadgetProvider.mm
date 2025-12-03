@interface PXSurveyQuestionsGadgetProvider
- (BOOL)gadget:(id)gadget transitionToViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (NSArray)surveyGadgets;
- (PXSurveyQuestionGadgetsProviderLemonadeUIDelegate)lemonadeUIDelegate;
- (PXSurveyQuestionsGadgetProvider)init;
- (PXSurveyQuestionsGadgetProvider)initWithDataSource:(id)source gadgetType:(unint64_t)type;
- (PXSurveyQuestionsGadgetProvider)initWithIdentifier:(id)identifier;
- (PXSurveyQuestionsGadgetProviderDelegate)gadgetProviderDelegate;
- (id)_gadgetForSurveyQuestion:(id)question;
- (id)_targetGadgetForCurrentOneUpPresentation;
- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference;
- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference;
- (id)oneUpPresentationMediaProvider:(id)provider;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)_addCongratulationsGadgetWithCompletionHandlerIfNeeded:(id)needed;
- (void)_generateGadgetsWithLimit:(unint64_t)limit removeExistingGadgets:(BOOL)gadgets;
- (void)_reloadGadgetsWithLimit:(unint64_t)limit completionHandler:(id)handler;
- (void)dealloc;
- (void)didAnswerQuestionForGadget:(id)gadget;
- (void)didSelectActionButtonForType:(unint64_t)type;
- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references;
- (void)performChanges:(id)changes;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)presentGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setLemonadeUIDelegate:(id)delegate;
@end

@implementation PXSurveyQuestionsGadgetProvider

- (PXSurveyQuestionGadgetsProviderLemonadeUIDelegate)lemonadeUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lemonadeUIDelegate);

  return WeakRetained;
}

- (PXSurveyQuestionsGadgetProviderDelegate)gadgetProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_gadgetProviderDelegate);

  return WeakRetained;
}

- (void)_reloadGadgetsWithLimit:(unint64_t)limit completionHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PXSurveyQuestionsGadgetProvider__reloadGadgetsWithLimit_completionHandler___block_invoke;
  block[3] = &unk_1E774C508;
  v9 = handlerCopy;
  limitCopy = limit;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __77__PXSurveyQuestionsGadgetProvider__reloadGadgetsWithLimit_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _generateGadgetsWithLimit:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [references valueForKeyPath:@"asset.uuid"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  surveyGadgets = [(PXSurveyQuestionsGadgetProvider *)self surveyGadgets];
  v7 = [surveyGadgets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(surveyGadgets);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 currentlyInOneUp])
        {
          assetUUIDsAssociatedWithGadget = [v11 assetUUIDsAssociatedWithGadget];
          [v11 setContentHidden:{objc_msgSend(assetUUIDsAssociatedWithGadget, "intersectsSet:", v5)}];
        }

        else
        {
          [v11 setContentHidden:0];
        }
      }

      v8 = [surveyGadgets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)_targetGadgetForCurrentOneUpPresentation
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  surveyGadgets = [(PXSurveyQuestionsGadgetProvider *)self surveyGadgets];
  v3 = [surveyGadgets countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(surveyGadgets);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 currentlyInOneUp])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [surveyGadgets countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference
{
  v4 = [(PXSurveyQuestionsGadgetProvider *)self _targetGadgetForCurrentOneUpPresentation:presentation];
  currentImage = [v4 currentImage];

  return currentImage;
}

- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference
{
  v4 = [(PXSurveyQuestionsGadgetProvider *)self _targetGadgetForCurrentOneUpPresentation:presentation];
  regionOfInterestForOneUpTransition = [v4 regionOfInterestForOneUpTransition];

  return regionOfInterestForOneUpTransition;
}

- (id)oneUpPresentationMediaProvider:(id)provider
{
  oneUpMediaProvider = self->_oneUpMediaProvider;
  if (!oneUpMediaProvider)
  {
    v5 = objc_alloc_init(PXPhotoKitUIMediaProvider);
    v6 = self->_oneUpMediaProvider;
    self->_oneUpMediaProvider = v5;

    oneUpMediaProvider = self->_oneUpMediaProvider;
  }

  return oneUpMediaProvider;
}

- (void)presentGadgetViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v5.receiver = self;
  v5.super_class = PXSurveyQuestionsGadgetProvider;
  [(PXGadgetProvider *)&v5 presentGadgetViewController:controller animated:animated completion:completion];
}

- (BOOL)gadget:(id)gadget transitionToViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v7.receiver = self;
  v7.super_class = PXSurveyQuestionsGadgetProvider;
  return [(PXGadgetProvider *)&v7 gadget:gadget transitionToViewController:controller animated:animated completion:completion];
}

- (void)didSelectActionButtonForType:(unint64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  if (type == 1)
  {
    if ([(PXSurveyQuestionsGadgetProvider *)self currentlyLoadingMoreQuestions])
    {
      return;
    }

    [(PXSurveyQuestionsGadgetProvider *)self setCurrentlyLoadingMoreQuestions:1];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    gadgets = [(PXGadgetProvider *)self gadgets];
    v6 = [gadgets countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(gadgets);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 gadgetType] == 2)
          {
            v6 = v9;
            goto LABEL_15;
          }
        }

        v6 = [gadgets countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__PXSurveyQuestionsGadgetProvider_didSelectActionButtonForType___block_invoke_231;
    v10[3] = &unk_1E774C620;
    v11 = v6;
    selfCopy = self;
    v4 = v6;
    [(PXSurveyQuestionsGadgetProvider *)self _reloadGadgetsWithLimit:50 completionHandler:v10];
  }

  else
  {
    if (type)
    {
      return;
    }

    [(PXSurveyQuestionsGadgetProvider *)self performChanges:&__block_literal_global_159719];
    v4 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PXSurveyQuestionsGadgetProvider_didSelectActionButtonForType___block_invoke_2;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __64__PXSurveyQuestionsGadgetProvider_didSelectActionButtonForType___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [*(*(a1 + 32) + 72) photoAnalysisClient];
  v10 = 0;
  v2 = [v1 reportMetricsWithOptions:MEMORY[0x1E695E0F8] error:&v10];
  v3 = v10;

  v4 = PLUIGetLog();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "Sent photos challenge metrics";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v7, v8, v6, buf, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v3;
    v6 = "Failed to send photos challenge metrics: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
    goto LABEL_6;
  }
}

uint64_t __64__PXSurveyQuestionsGadgetProvider_didSelectActionButtonForType___block_invoke_231(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PXSurveyQuestionsGadgetProvider_didSelectActionButtonForType___block_invoke_2_232;
    v5[3] = &unk_1E773EAE0;
    v6 = v2;
    [v3 performChanges:v5];
  }

  return [*(a1 + 40) setCurrentlyLoadingMoreQuestions:0];
}

void __64__PXSurveyQuestionsGadgetProvider_didSelectActionButtonForType___block_invoke_2_232(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 removeGadgets:{v4, v5, v6}];
}

- (void)_addCongratulationsGadgetWithCompletionHandlerIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(PXSurveyQuestionsDataSource *)self->_dataSource numberOfQuestionsRemainingToBeAnswered])
  {
    neededCopy[2](neededCopy, 0);
  }

  else
  {
    v5 = [[PXSurveyQuestionCongratulationsGadget alloc] initWithType:[(PXSurveyQuestionsDataSource *)self->_dataSource fetchTotalNumberOfUnansweredQuestions]!= 0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__PXSurveyQuestionsGadgetProvider__addCongratulationsGadgetWithCompletionHandlerIfNeeded___block_invoke;
    v7[3] = &unk_1E773EAE0;
    v8 = v5;
    v6 = v5;
    [(PXSurveyQuestionsGadgetProvider *)self performChanges:v7];
    neededCopy[2](neededCopy, 1);
  }
}

void __90__PXSurveyQuestionsGadgetProvider__addCongratulationsGadgetWithCompletionHandlerIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 addGadgets:{v4, v5, v6}];
}

- (void)didAnswerQuestionForGadget:(id)gadget
{
  gadgetCopy = gadget;
  dataSource = self->_dataSource;
  uniqueGadgetIdentifier = [gadgetCopy uniqueGadgetIdentifier];
  v7 = [(PXSurveyQuestionsDataSource *)dataSource didAnswerQuestionForGadgetIdentifier:uniqueGadgetIdentifier];

  objc_initWeak(&location, self);
  gadgetProviderDelegate = [(PXSurveyQuestionsGadgetProvider *)self gadgetProviderDelegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PXSurveyQuestionsGadgetProvider_didAnswerQuestionForGadget___block_invoke;
  v10[3] = &unk_1E7749CD8;
  v13 = v7;
  objc_copyWeak(&v12, &location);
  v9 = gadgetCopy;
  v11 = v9;
  [gadgetProviderDelegate didAnswerQuestionForGadgetProvider:self completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __62__PXSurveyQuestionsGadgetProvider_didAnswerQuestionForGadget___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __62__PXSurveyQuestionsGadgetProvider_didAnswerQuestionForGadget___block_invoke_2;
    v3[3] = &unk_1E774B330;
    objc_copyWeak(&v5, (a1 + 40));
    v4 = *(a1 + 32);
    [WeakRetained _addCongratulationsGadgetWithCompletionHandlerIfNeeded:v3];

    objc_destroyWeak(&v5);
  }
}

void __62__PXSurveyQuestionsGadgetProvider_didAnswerQuestionForGadget___block_invoke_2(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained gadgets];

  if (a2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        if ([v11 gadgetType] == 2)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

      v16 = v11;

      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = objc_loadWeakRetained((a1 + 40));
      v18 = [v17 lemonadeUIDelegate];
      [v18 navigateToGadget:v16];

      v19 = [v16 contentView];
      [v19 startConfettiAnimation];

      v6 = v16;
    }

    goto LABEL_16;
  }

  v12 = [v5 indexOfObject:*(a1 + 32)] + 1;
  if (v12 < [v5 count])
  {
    v13 = [v5 objectAtIndex:v12];
    if (v13)
    {
      v6 = v13;
      v14 = objc_loadWeakRetained((a1 + 40));
      v15 = [v14 lemonadeUIDelegate];
      [v15 navigateToGadget:v6];

LABEL_16:
    }
  }

LABEL_17:
}

- (id)_gadgetForSurveyQuestion:(id)question
{
  questionCopy = question;
  v5 = [[PXSurveyQuestionGadget alloc] initWithSurveyQuestion:questionCopy gadgetType:self->_gadgetType];

  [(PXSurveyQuestionGadget *)v5 setDelegate:self];

  return v5;
}

- (NSArray)surveyGadgets
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  gadgets = [(PXGadgetProvider *)self gadgets];
  v5 = [gadgets countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(gadgets);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 gadgetType] == self->_gadgetType)
        {
          [array addObject:v9];
        }
      }

      v6 = [gadgets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)_generateGadgetsWithLimit:(unint64_t)limit removeExistingGadgets:(BOOL)gadgets
{
  mostRecentQuestionCreationDate = [(PXSurveyQuestionsDataSource *)self->_dataSource mostRecentQuestionCreationDate];
  previousMostRecentQuestionCreationDate = self->_previousMostRecentQuestionCreationDate;
  self->_previousMostRecentQuestionCreationDate = mostRecentQuestionCreationDate;

  array = [MEMORY[0x1E695DF70] array];
  v10 = [(PXSurveyQuestionsDataSource *)self->_dataSource fetchSortedAllUnansweredQuestionsWithLimit:limit];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __83__PXSurveyQuestionsGadgetProvider__generateGadgetsWithLimit_removeExistingGadgets___block_invoke;
  v25[3] = &unk_1E773EB08;
  v25[4] = self;
  v11 = array;
  v26 = v11;
  [v10 enumerateObjectsUsingBlock:v25];
  v12 = [v11 count];
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0x1E695DFD8];
    surveyGadgets = [(PXSurveyQuestionsGadgetProvider *)self surveyGadgets];
    v16 = [v14 setWithArray:surveyGadgets];

    v17 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    if (([v16 isEqualToSet:v17] & 1) == 0)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __83__PXSurveyQuestionsGadgetProvider__generateGadgetsWithLimit_removeExistingGadgets___block_invoke_2;
      v21[3] = &unk_1E773EB30;
      gadgetsCopy = gadgets;
      v21[4] = self;
      v22 = v11;
      v23 = v13;
      [(PXSurveyQuestionsGadgetProvider *)self performChanges:v21];
    }
  }

  else
  {
    if (!self->_placeholderGadget)
    {
      v18 = objc_alloc_init(PXSurveyQuestionPlaceholderGadget);
      placeholderGadget = self->_placeholderGadget;
      self->_placeholderGadget = v18;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __83__PXSurveyQuestionsGadgetProvider__generateGadgetsWithLimit_removeExistingGadgets___block_invoke_3;
    v20[3] = &unk_1E773EAE0;
    v20[4] = self;
    [(PXSurveyQuestionsGadgetProvider *)self performChanges:v20];
  }
}

void __83__PXSurveyQuestionsGadgetProvider__generateGadgetsWithLimit_removeExistingGadgets___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _gadgetForSurveyQuestion:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

void __83__PXSurveyQuestionsGadgetProvider__generateGadgetsWithLimit_removeExistingGadgets___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 56) == 1)
  {
    [v3 removeAllGadgets];
    v5 = [*(a1 + 32) dataSource];
    [v5 resetGeneratedQuestions];
LABEL_5:

    goto LABEL_6;
  }

  if (*(*(a1 + 32) + 80))
  {
    v7[0] = *(*(a1 + 32) + 80);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v4 removeGadgets:v5];
    goto LABEL_5;
  }

LABEL_6:
  [v4 addGadgets:*(a1 + 40)];
  v6 = [*(a1 + 32) dataSource];
  [v6 didGenerateNumberOfGadgets:*(a1 + 48)];
}

void __83__PXSurveyQuestionsGadgetProvider__generateGadgetsWithLimit_removeExistingGadgets___block_invoke_3(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 removeAllGadgets];
  v5[0] = *(*(a1 + 32) + 80);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v3 addGadgets:v4];
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  v34 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = [infoCopy objectForKeyedSubscript:@"GadgetsNeedReset"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    [(PXSurveyQuestionsGadgetProvider *)self _generateGadgetsWithLimit:10 removeExistingGadgets:1];
  }

  v8 = [infoCopy objectForKeyedSubscript:@"GadgetsWithInvalidEntities"];
  if ([v8 count])
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __85__PXSurveyQuestionsGadgetProvider_photoLibraryDidChangeOnMainQueue_withPreparedInfo___block_invoke;
    v30[3] = &unk_1E773EAE0;
    v9 = v8;
    v31 = v9;
    [(PXSurveyQuestionsGadgetProvider *)self performChanges:v30];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dataSource = self->_dataSource;
          uniqueGadgetIdentifier = [*(*(&v26 + 1) + 8 * v14) uniqueGadgetIdentifier];
          [(PXSurveyQuestionsDataSource *)dataSource didRemoveGadgetWithIdentifier:uniqueGadgetIdentifier];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v12);
    }
  }

  v17 = [infoCopy objectForKeyedSubscript:@"GadgetsWithStaleContent"];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v22 + 1) + 8 * v21++) refreshQuestionContentView];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v19);
  }
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  v33 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  mostRecentQuestionCreationDate = [(PXSurveyQuestionsDataSource *)self->_dataSource mostRecentQuestionCreationDate];
  previousMostRecentQuestionCreationDate = self->_previousMostRecentQuestionCreationDate;
  if (!previousMostRecentQuestionCreationDate)
  {
    if ([(PXSurveyQuestionsDataSource *)self->_dataSource fetchTotalNumberOfUnansweredQuestions])
    {
      objc_storeStrong(&self->_previousMostRecentQuestionCreationDate, mostRecentQuestionCreationDate);
      v7 = 1;
      goto LABEL_5;
    }

    previousMostRecentQuestionCreationDate = self->_previousMostRecentQuestionCreationDate;
  }

  v7 = [(NSDate *)previousMostRecentQuestionCreationDate compare:mostRecentQuestionCreationDate]== NSOrderedAscending;
LABEL_5:
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    goto LABEL_21;
  }

  v20 = v7;
  selfCopy = self;
  v22 = mostRecentQuestionCreationDate;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  surveyGadgets = [(PXSurveyQuestionsGadgetProvider *)self surveyGadgets];
  v9 = [surveyGadgets countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  v11 = *v27;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(surveyGadgets);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      question = [v13 question];
      configuration = [v13 configuration];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [configuration needsQuestionInvalidationForChange:changeCopy])
      {
        [v24 addObject:question];
        v16 = v25;
LABEL_17:
        [v16 addObject:v13];
        goto LABEL_18;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [configuration needsDisplayRefreshForChange:changeCopy])
      {
        [configuration setIsStale:1];
        v16 = v23;
        goto LABEL_17;
      }

LABEL_18:
    }

    v10 = [surveyGadgets countByEnumeratingWithState:&v26 objects:v32 count:16];
  }

  while (v10);
LABEL_20:

  self = selfCopy;
  mostRecentQuestionCreationDate = v22;
  v7 = v20;
LABEL_21:
  [(PXSurveyQuestionsDataSource *)self->_dataSource invalidateQuestions:v24];
  v30[0] = @"GadgetsNeedReset";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v31[0] = v17;
  v31[1] = v25;
  v30[1] = @"GadgetsWithInvalidEntities";
  v30[2] = @"GadgetsWithStaleContent";
  v31[2] = v23;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];

  return v18;
}

- (void)performChanges:(id)changes
{
  v5.receiver = self;
  v5.super_class = PXSurveyQuestionsGadgetProvider;
  [(PXGadgetProvider *)&v5 performChanges:changes];
  lemonadeUIDelegate = [(PXSurveyQuestionsGadgetProvider *)self lemonadeUIDelegate];
  [lemonadeUIDelegate invalidateGadgets];
}

- (void)setLemonadeUIDelegate:(id)delegate
{
  obj = delegate;
  lemonadeUIDelegate = [(PXSurveyQuestionsGadgetProvider *)self lemonadeUIDelegate];

  v5 = obj;
  if (lemonadeUIDelegate != obj)
  {
    objc_storeWeak(&self->_lemonadeUIDelegate, obj);
    v5 = obj;
  }
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary px_unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PXSurveyQuestionsGadgetProvider;
  [(PXSurveyQuestionsGadgetProvider *)&v3 dealloc];
}

- (PXSurveyQuestionsGadgetProvider)initWithDataSource:(id)source gadgetType:(unint64_t)type
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsGadgetProvider.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];
  }

  v14.receiver = self;
  v14.super_class = PXSurveyQuestionsGadgetProvider;
  v9 = [(PXGadgetProvider *)&v14 init];
  if (v9)
  {
    photoLibrary = [sourceCopy photoLibrary];
    photoLibrary = v9->_photoLibrary;
    v9->_photoLibrary = photoLibrary;

    [(PHPhotoLibrary *)v9->_photoLibrary px_registerChangeObserver:v9];
    objc_storeStrong(&v9->_dataSource, source);
    v9->_gadgetType = type;
    v9->_currentlyLoadingMoreQuestions = 0;
  }

  return v9;
}

- (PXSurveyQuestionsGadgetProvider)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsGadgetProvider.m" lineNumber:65 description:{@"%s is not available as initializer", "-[PXSurveyQuestionsGadgetProvider initWithIdentifier:]"}];

  abort();
}

- (PXSurveyQuestionsGadgetProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsGadgetProvider.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXSurveyQuestionsGadgetProvider init]"}];

  abort();
}

@end
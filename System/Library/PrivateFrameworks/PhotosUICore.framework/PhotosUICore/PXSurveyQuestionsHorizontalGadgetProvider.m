@interface PXSurveyQuestionsHorizontalGadgetProvider
- (PXSurveyQuestionGadgetsProviderLemonadeUIDelegate)lemonadeUIDelegate;
- (PXSurveyQuestionsHorizontalGadgetProvider)initWithConfiguration:(id)a3;
- (PXSurveyQuestionsHorizontalGadgetProvider)initWithIdentifier:(id)a3 contentGadgetProvider:(id)a4 title:(id)a5 horizontalCollectionGadgetClass:(Class)a6;
- (id)presentationEnvironmentForGadget:(id)a3;
- (unint64_t)gadgetType;
- (void)didAnswerQuestionForGadgetProvider:(id)a3 completionHandler:(id)a4;
- (void)horizontalCollectionGadget:(id)a3 configureCustomInfoAlertActionsForAlertController:(id)a4;
- (void)horizontalCollectionGadget:(id)a3 hideUntilDate:(id)a4;
- (void)setLemonadeUIDelegate:(id)a3;
- (void)surveyQuestionsGadgetProvider:(id)a3 navigateToGadget:(id)a4;
@end

@implementation PXSurveyQuestionsHorizontalGadgetProvider

- (PXSurveyQuestionGadgetsProviderLemonadeUIDelegate)lemonadeUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lemonadeUIDelegate);

  return WeakRetained;
}

- (void)surveyQuestionsGadgetProvider:(id)a3 navigateToGadget:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXSurveyQuestionsHorizontalGadgetProvider *)self lemonadeUIDelegate];
  v7 = v6;
  if (v6)
  {
    [v6 navigateToGadget:v5];
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Couldn't navigate to gadget %@", &v9, 0xCu);
    }
  }
}

- (void)didAnswerQuestionForGadgetProvider:(id)a3 completionHandler:(id)a4
{
  v27 = a3;
  v6 = a4;
  if ((PXSurveyQuestionIsAppleInternal() & 1) == 0)
  {
    v6[2](v6);
    goto LABEL_12;
  }

  v7 = [v27 dataSource];
  v8 = [v7 fetchTotalNumberOfAnsweredYesOrNoQuestions];

  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [off_1E7721948 standardUserDefaults];
  v11 = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration radarPromptAnsweredQuestionCountDefaultsKey];
  v12 = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration radarPromptDateDefaultsKey];
  v13 = [v10 valueForKey:v12];
  if (!v13)
  {
    v14 = [v9 dateByAddingTimeInterval:-259200.0];
    [v10 setValue:v14 forKey:v12];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8 - 1];
    [v10 setValue:v24 forKey:v11];

    goto LABEL_9;
  }

  v14 = [v10 valueForKey:v11];
  if ((v8 - [v14 unsignedIntegerValue]) < 0x32)
  {
LABEL_9:

LABEL_10:
    v6[2](v6);
    goto LABEL_11;
  }

  v25 = v8;
  [v13 dateByAddingTimeInterval:259200.0];
  v16 = v15 = v11;
  v26 = v9;
  v17 = [v16 compare:v9];

  v11 = v15;
  v18 = v17 == -1;
  v9 = v26;
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = [MEMORY[0x1E695DF00] date];
  [v10 setValue:v19 forKey:v12];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
  [v10 setValue:v20 forKey:v15];

  v21 = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration radarConfiguration];
  v22 = [[PXSurveyRadarReporterViewController alloc] initWithConfiguration:v21 completionHandler:v6];
  v23 = [(PXGadgetProvider *)self nextGadgetResponder];
  [v23 presentGadgetViewController:v22 animated:1 completion:0];

  v9 = v26;
LABEL_11:

LABEL_12:
}

- (id)presentationEnvironmentForGadget:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PXSurveyQuestionsHorizontalGadgetProvider;
  v6 = [(PXGadgetProvider *)&v13 presentationEnvironmentForGadget:v5];
  if (!v6)
  {
    v7 = [(PXSurveyQuestionsHorizontalGadgetProvider *)self lemonadeUIDelegate];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = [v5 overrideContainerViewController];
      if (v8)
      {
        v9 = v8;
        v6 = [off_1E7721960 defaultPresenterWithViewController:v8];

        if (v6)
        {
LABEL_9:

          goto LABEL_10;
        }
      }

      else
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProvider.m" lineNumber:122 description:{@"No presentation environment for gadget: %@, gadget has nil overrideContainerViewController", v5}];
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProvider.m" lineNumber:125 description:{@"No presentation environment for gadget: %@", v5}];

    v6 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (void)horizontalCollectionGadget:(id)a3 configureCustomInfoAlertActionsForAlertController:(id)a4
{
  v5 = a4;
  v6 = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration customInfoAlertActionTitle];
  if (v6)
  {
    v7 = MEMORY[0x1E69DC648];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __122__PXSurveyQuestionsHorizontalGadgetProvider_horizontalCollectionGadget_configureCustomInfoAlertActionsForAlertController___block_invoke;
    v13 = &unk_1E774A2C8;
    v8 = v5;
    v14 = v8;
    v15 = self;
    v9 = [v7 actionWithTitle:v6 style:0 handler:&v10];
    [v8 addAction:{v9, v10, v11, v12, v13}];
  }
}

uint64_t __122__PXSurveyQuestionsHorizontalGadgetProvider_horizontalCollectionGadget_configureCustomInfoAlertActionsForAlertController___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __122__PXSurveyQuestionsHorizontalGadgetProvider_horizontalCollectionGadget_configureCustomInfoAlertActionsForAlertController___block_invoke_2;
  v3[3] = &unk_1E774C648;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __122__PXSurveyQuestionsHorizontalGadgetProvider_horizontalCollectionGadget_configureCustomInfoAlertActionsForAlertController___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 128);
  v6 = 0;
  v3 = [v2 customInfoAlertActionViewController:&v6];
  v4 = v6;
  if (v3)
  {
    v5 = [*(a1 + 32) nextGadgetResponder];
    [v5 presentGadgetViewController:v3 animated:1 completion:0];
  }

  else
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "No custom info alert view controller: %@", buf, 0xCu);
    }
  }
}

- (void)horizontalCollectionGadget:(id)a3 hideUntilDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [off_1E7721948 standardUserDefaults];
  v9 = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration hideDateDefaultsKey];
  [v8 setValue:v6 forKey:v9];

  [(PXGadgetProvider *)self gadget:v7 didChange:32];
  v10 = [(PXSurveyQuestionsHorizontalGadgetProvider *)self lemonadeUIDelegate];
  [v10 invalidateGadgets];
}

- (void)setLemonadeUIDelegate:(id)a3
{
  obj = a3;
  v4 = [(PXSurveyQuestionsHorizontalGadgetProvider *)self lemonadeUIDelegate];

  if (v4 != obj)
  {
    objc_storeWeak(&self->_lemonadeUIDelegate, obj);
    v5 = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration gadgetProvider];
    [v5 setLemonadeUIDelegate:obj];
  }
}

- (unint64_t)gadgetType
{
  v2 = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration gadgetProvider];
  v3 = [v2 gadgetType];

  return v3;
}

- (PXSurveyQuestionsHorizontalGadgetProvider)initWithConfiguration:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProvider.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v7 = [v6 gadgetProvider];
  [v7 setGadgetProviderDelegate:self];
  v8 = [v6 identifier];
  v9 = [v6 sectionTitle];
  v10 = objc_opt_class();
  v14.receiver = self;
  v14.super_class = PXSurveyQuestionsHorizontalGadgetProvider;
  v11 = [(PXHorizontalCollectionGadgetProvider *)&v14 initWithIdentifier:v8 contentGadgetProvider:v7 title:v9 horizontalCollectionGadgetClass:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a3);
    [(PXHorizontalCollectionGadgetProvider *)v11 setIsFixedHeight:1];
  }

  return v11;
}

- (PXSurveyQuestionsHorizontalGadgetProvider)initWithIdentifier:(id)a3 contentGadgetProvider:(id)a4 title:(id)a5 horizontalCollectionGadgetClass:(Class)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProvider.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXSurveyQuestionsHorizontalGadgetProvider initWithIdentifier:contentGadgetProvider:title:horizontalCollectionGadgetClass:]"}];

  abort();
}

@end
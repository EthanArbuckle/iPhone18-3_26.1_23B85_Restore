@interface PXSurveyQuestionsHorizontalGadgetProvider
- (PXSurveyQuestionGadgetsProviderLemonadeUIDelegate)lemonadeUIDelegate;
- (PXSurveyQuestionsHorizontalGadgetProvider)initWithConfiguration:(id)configuration;
- (PXSurveyQuestionsHorizontalGadgetProvider)initWithIdentifier:(id)identifier contentGadgetProvider:(id)provider title:(id)title horizontalCollectionGadgetClass:(Class)class;
- (id)presentationEnvironmentForGadget:(id)gadget;
- (unint64_t)gadgetType;
- (void)didAnswerQuestionForGadgetProvider:(id)provider completionHandler:(id)handler;
- (void)horizontalCollectionGadget:(id)gadget configureCustomInfoAlertActionsForAlertController:(id)controller;
- (void)horizontalCollectionGadget:(id)gadget hideUntilDate:(id)date;
- (void)setLemonadeUIDelegate:(id)delegate;
- (void)surveyQuestionsGadgetProvider:(id)provider navigateToGadget:(id)gadget;
@end

@implementation PXSurveyQuestionsHorizontalGadgetProvider

- (PXSurveyQuestionGadgetsProviderLemonadeUIDelegate)lemonadeUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lemonadeUIDelegate);

  return WeakRetained;
}

- (void)surveyQuestionsGadgetProvider:(id)provider navigateToGadget:(id)gadget
{
  v11 = *MEMORY[0x1E69E9840];
  gadgetCopy = gadget;
  lemonadeUIDelegate = [(PXSurveyQuestionsHorizontalGadgetProvider *)self lemonadeUIDelegate];
  v7 = lemonadeUIDelegate;
  if (lemonadeUIDelegate)
  {
    [lemonadeUIDelegate navigateToGadget:gadgetCopy];
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = gadgetCopy;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Couldn't navigate to gadget %@", &v9, 0xCu);
    }
  }
}

- (void)didAnswerQuestionForGadgetProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  if ((PXSurveyQuestionIsAppleInternal() & 1) == 0)
  {
    handlerCopy[2](handlerCopy);
    goto LABEL_12;
  }

  dataSource = [providerCopy dataSource];
  fetchTotalNumberOfAnsweredYesOrNoQuestions = [dataSource fetchTotalNumberOfAnsweredYesOrNoQuestions];

  date = [MEMORY[0x1E695DF00] date];
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  radarPromptAnsweredQuestionCountDefaultsKey = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration radarPromptAnsweredQuestionCountDefaultsKey];
  radarPromptDateDefaultsKey = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration radarPromptDateDefaultsKey];
  v13 = [standardUserDefaults valueForKey:radarPromptDateDefaultsKey];
  if (!v13)
  {
    v14 = [date dateByAddingTimeInterval:-259200.0];
    [standardUserDefaults setValue:v14 forKey:radarPromptDateDefaultsKey];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fetchTotalNumberOfAnsweredYesOrNoQuestions - 1];
    [standardUserDefaults setValue:v24 forKey:radarPromptAnsweredQuestionCountDefaultsKey];

    goto LABEL_9;
  }

  v14 = [standardUserDefaults valueForKey:radarPromptAnsweredQuestionCountDefaultsKey];
  if ((fetchTotalNumberOfAnsweredYesOrNoQuestions - [v14 unsignedIntegerValue]) < 0x32)
  {
LABEL_9:

LABEL_10:
    handlerCopy[2](handlerCopy);
    goto LABEL_11;
  }

  v25 = fetchTotalNumberOfAnsweredYesOrNoQuestions;
  [v13 dateByAddingTimeInterval:259200.0];
  v16 = v15 = radarPromptAnsweredQuestionCountDefaultsKey;
  v26 = date;
  v17 = [v16 compare:date];

  radarPromptAnsweredQuestionCountDefaultsKey = v15;
  v18 = v17 == -1;
  date = v26;
  if (!v18)
  {
    goto LABEL_10;
  }

  date2 = [MEMORY[0x1E695DF00] date];
  [standardUserDefaults setValue:date2 forKey:radarPromptDateDefaultsKey];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
  [standardUserDefaults setValue:v20 forKey:v15];

  radarConfiguration = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration radarConfiguration];
  v22 = [[PXSurveyRadarReporterViewController alloc] initWithConfiguration:radarConfiguration completionHandler:handlerCopy];
  nextGadgetResponder = [(PXGadgetProvider *)self nextGadgetResponder];
  [nextGadgetResponder presentGadgetViewController:v22 animated:1 completion:0];

  date = v26;
LABEL_11:

LABEL_12:
}

- (id)presentationEnvironmentForGadget:(id)gadget
{
  gadgetCopy = gadget;
  v13.receiver = self;
  v13.super_class = PXSurveyQuestionsHorizontalGadgetProvider;
  v6 = [(PXGadgetProvider *)&v13 presentationEnvironmentForGadget:gadgetCopy];
  if (!v6)
  {
    lemonadeUIDelegate = [(PXSurveyQuestionsHorizontalGadgetProvider *)self lemonadeUIDelegate];
    if (lemonadeUIDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      overrideContainerViewController = [gadgetCopy overrideContainerViewController];
      if (overrideContainerViewController)
      {
        v9 = overrideContainerViewController;
        v6 = [off_1E7721960 defaultPresenterWithViewController:overrideContainerViewController];

        if (v6)
        {
LABEL_9:

          goto LABEL_10;
        }
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProvider.m" lineNumber:122 description:{@"No presentation environment for gadget: %@, gadget has nil overrideContainerViewController", gadgetCopy}];
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProvider.m" lineNumber:125 description:{@"No presentation environment for gadget: %@", gadgetCopy}];

    v6 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (void)horizontalCollectionGadget:(id)gadget configureCustomInfoAlertActionsForAlertController:(id)controller
{
  controllerCopy = controller;
  customInfoAlertActionTitle = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration customInfoAlertActionTitle];
  if (customInfoAlertActionTitle)
  {
    v7 = MEMORY[0x1E69DC648];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __122__PXSurveyQuestionsHorizontalGadgetProvider_horizontalCollectionGadget_configureCustomInfoAlertActionsForAlertController___block_invoke;
    v13 = &unk_1E774A2C8;
    v8 = controllerCopy;
    v14 = v8;
    selfCopy = self;
    v9 = [v7 actionWithTitle:customInfoAlertActionTitle style:0 handler:&v10];
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

- (void)horizontalCollectionGadget:(id)gadget hideUntilDate:(id)date
{
  dateCopy = date;
  gadgetCopy = gadget;
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  hideDateDefaultsKey = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration hideDateDefaultsKey];
  [standardUserDefaults setValue:dateCopy forKey:hideDateDefaultsKey];

  [(PXGadgetProvider *)self gadget:gadgetCopy didChange:32];
  lemonadeUIDelegate = [(PXSurveyQuestionsHorizontalGadgetProvider *)self lemonadeUIDelegate];
  [lemonadeUIDelegate invalidateGadgets];
}

- (void)setLemonadeUIDelegate:(id)delegate
{
  obj = delegate;
  lemonadeUIDelegate = [(PXSurveyQuestionsHorizontalGadgetProvider *)self lemonadeUIDelegate];

  if (lemonadeUIDelegate != obj)
  {
    objc_storeWeak(&self->_lemonadeUIDelegate, obj);
    gadgetProvider = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration gadgetProvider];
    [gadgetProvider setLemonadeUIDelegate:obj];
  }
}

- (unint64_t)gadgetType
{
  gadgetProvider = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)self->_configuration gadgetProvider];
  gadgetType = [gadgetProvider gadgetType];

  return gadgetType;
}

- (PXSurveyQuestionsHorizontalGadgetProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProvider.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  gadgetProvider = [configurationCopy gadgetProvider];
  [gadgetProvider setGadgetProviderDelegate:self];
  identifier = [configurationCopy identifier];
  sectionTitle = [configurationCopy sectionTitle];
  v10 = objc_opt_class();
  v14.receiver = self;
  v14.super_class = PXSurveyQuestionsHorizontalGadgetProvider;
  v11 = [(PXHorizontalCollectionGadgetProvider *)&v14 initWithIdentifier:identifier contentGadgetProvider:gadgetProvider title:sectionTitle horizontalCollectionGadgetClass:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_configuration, configuration);
    [(PXHorizontalCollectionGadgetProvider *)v11 setIsFixedHeight:1];
  }

  return v11;
}

- (PXSurveyQuestionsHorizontalGadgetProvider)initWithIdentifier:(id)identifier contentGadgetProvider:(id)provider title:(id)title horizontalCollectionGadgetClass:(Class)class
{
  identifierCopy = identifier;
  providerCopy = provider;
  titleCopy = title;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProvider.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXSurveyQuestionsHorizontalGadgetProvider initWithIdentifier:contentGadgetProvider:title:horizontalCollectionGadgetClass:]"}];

  abort();
}

@end
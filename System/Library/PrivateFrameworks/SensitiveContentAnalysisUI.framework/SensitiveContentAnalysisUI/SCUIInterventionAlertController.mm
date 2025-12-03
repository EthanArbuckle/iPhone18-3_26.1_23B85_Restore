@interface SCUIInterventionAlertController
+ (id)_viewControllerWithAnalysis:(id)analysis workflow:(int64_t)workflow contextDictionary:(id)dictionary options:(int64_t)options error:(id *)error;
+ (id)viewControllerWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary options:(int64_t)options;
- (SCUIInterventionAlertController)initWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary options:(int64_t)options;
- (SCUIInterventionAlertController)initWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary options:(int64_t)options type:(int64_t)type;
- (SCUIInterventionViewControllerDelegate)interventionDelegate;
- (void)presentAlertScreen;
- (void)screenOne_acceptButtonPressed;
- (void)screenOne_moreHelpButtonPressed;
- (void)screenOne_notNowButtonPressed;
- (void)screenTwo_acceptButtonPressed;
- (void)screenTwo_messageButtonPressed;
- (void)screenTwo_notNowButtonPressed;
@end

@implementation SCUIInterventionAlertController

- (SCUIInterventionAlertController)initWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary options:(int64_t)options
{
  dictionaryCopy = dictionary;
  v9 = [(SCUIInterventionAlertController *)self initWithWorkflow:workflow contextDictionary:dictionaryCopy options:options type:SCUICurrentInterventionType()];

  return v9;
}

- (SCUIInterventionAlertController)initWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary options:(int64_t)options type:(int64_t)type
{
  dictionaryCopy = dictionary;
  v11 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = SCUIInterventionAlertController;
  v12 = [(SCUIInterventionAlertController *)&v18 initWithRootViewController:v11];

  if (v12)
  {
    v12->_workflow = workflow;
    v13 = [dictionaryCopy copy];
    contextDictionary = v12->_contextDictionary;
    v12->_contextDictionary = v13;

    v12->_options = options | 1;
    v12->_type = type;
    v12->_contentScreen = 0;
    v15 = [[SCUIInterventionScreenModel alloc] initWithScreen:v12->_contentScreen workflow:v12->_workflow type:v12->_type options:v12->_options];
    screenModel = v12->_screenModel;
    v12->_screenModel = v15;
  }

  return v12;
}

+ (id)viewControllerWithWorkflow:(int64_t)workflow contextDictionary:(id)dictionary options:(int64_t)options
{
  dictionaryCopy = dictionary;
  v8 = [objc_alloc(objc_opt_class()) initWithWorkflow:workflow contextDictionary:dictionaryCopy options:options];

  return v8;
}

- (void)presentAlertScreen
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  val = self;
  bullets = [(SCUIInterventionScreenModel *)self->_screenModel bullets];
  v5 = [bullets countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(bullets);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        if ([v3 length])
        {
          [v3 appendString:@"\n\n"];
        }

        text = [v8 text];
        [v3 appendString:text];
      }

      v5 = [bullets countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  v10 = MEMORY[0x1E69DC650];
  title = [(SCUIInterventionScreenModel *)val->_screenModel title];
  v22 = [v10 alertControllerWithTitle:title message:v3 preferredStyle:1];

  objc_initWeak(&location, val);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  actions = [(SCUIInterventionScreenModel *)val->_screenModel actions];
  v13 = [actions countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(actions);
        }

        v16 = *(*(&v25 + 1) + 8 * j);
        v17 = MEMORY[0x1E69DC648];
        title2 = [v16 title];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __53__SCUIInterventionAlertController_presentAlertScreen__block_invoke;
        v23[3] = &unk_1E7FF2560;
        v23[4] = v16;
        objc_copyWeak(&v24, &location);
        v19 = [v17 actionWithTitle:title2 style:0 handler:v23];

        [v22 addAction:v19];
        objc_destroyWeak(&v24);
      }

      v13 = [actions countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  [(SCUIInterventionAlertController *)val presentViewController:v22 animated:1 completion:0];
  objc_destroyWeak(&location);

  v20 = *MEMORY[0x1E69E9840];
}

void __53__SCUIInterventionAlertController_presentAlertScreen__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionID];
  if (v2 > 3)
  {
    switch(v2)
    {
      case 4:
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained screenTwo_notNowButtonPressed];
        break;
      case 5:
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained screenTwo_messageButtonPressed];
        break;
      case 6:
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained screenTwo_acceptButtonPressed];
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained screenOne_notNowButtonPressed];
        break;
      case 2:
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained screenOne_moreHelpButtonPressed];
        break;
      case 3:
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained screenOne_acceptButtonPressed];
        break;
      default:
        return;
    }
  }
}

- (void)screenOne_notNowButtonPressed
{
  screenModel = [(SCUIInterventionAlertController *)self screenModel];
  [screenModel collectInterventionInteractionEventWith:3];

  interventionDelegate = [(SCUIInterventionAlertController *)self interventionDelegate];
  [interventionDelegate didRejectForInterventionViewController:self];

  [(SCUIInterventionAlertController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)screenOne_moreHelpButtonPressed
{
  screenModel = [(SCUIInterventionAlertController *)self screenModel];
  [screenModel collectResourceInteractionEventWith:2];

  interventionDelegate = [(SCUIInterventionAlertController *)self interventionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    interventionDelegate2 = [(SCUIInterventionAlertController *)self interventionDelegate];
    [interventionDelegate2 didRequestMoreHelpForInterventionViewController:self];
  }

  else
  {
    [SCUIDefaultImplementations didAskForMoreHelpInSafariWithInterventionType:[(SCUIInterventionAlertController *)self type]];
  }

  [(SCUIInterventionAlertController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)screenOne_acceptButtonPressed
{
  self->_contentScreen = 1;
  v3 = [[SCUIInterventionScreenModel alloc] initWithScreen:self->_contentScreen workflow:self->_workflow type:self->_type options:self->_options];
  screenModel = self->_screenModel;
  self->_screenModel = v3;

  [(SCUIInterventionAlertController *)self presentAlertScreen];
}

- (void)screenTwo_messageButtonPressed
{
  screenModel = [(SCUIInterventionAlertController *)self screenModel];
  [screenModel collectResourceInteractionEventWith:3];

  interventionDelegate = [(SCUIInterventionAlertController *)self interventionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    interventionDelegate2 = [(SCUIInterventionAlertController *)self interventionDelegate];
    [interventionDelegate2 didContactSomeoneForInterventionViewController:self];
  }

  else
  {
    [SCUIDefaultImplementations didMessageSomeoneWithInterventionType:[(SCUIInterventionAlertController *)self type]];
  }

  [(SCUIInterventionAlertController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)screenTwo_acceptButtonPressed
{
  screenModel = [(SCUIInterventionAlertController *)self screenModel];
  interventionDelegate = [(SCUIInterventionAlertController *)self interventionDelegate];
  [screenModel bypassInterventionForContainer:self delegate:interventionDelegate];

  [(SCUIInterventionAlertController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)screenTwo_notNowButtonPressed
{
  screenModel = [(SCUIInterventionAlertController *)self screenModel];
  [screenModel collectInterventionInteractionEventWith:4];

  interventionDelegate = [(SCUIInterventionAlertController *)self interventionDelegate];
  [interventionDelegate didRejectForInterventionViewController:self];

  [(SCUIInterventionAlertController *)self dismissViewControllerAnimated:0 completion:0];
}

- (SCUIInterventionViewControllerDelegate)interventionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interventionDelegate);

  return WeakRetained;
}

+ (id)_viewControllerWithAnalysis:(id)analysis workflow:(int64_t)workflow contextDictionary:(id)dictionary options:(int64_t)options error:(id *)error
{
  if (dictionary)
  {
    v10 = sub_1BC75BA40();
  }

  else
  {
    v10 = 0;
  }

  analysisCopy = analysis;
  v12 = sub_1BC67EE08(workflow, v10, options);

  return v12;
}

@end
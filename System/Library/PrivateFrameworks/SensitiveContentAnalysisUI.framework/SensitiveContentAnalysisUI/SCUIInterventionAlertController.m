@interface SCUIInterventionAlertController
+ (id)_viewControllerWithAnalysis:(id)a3 workflow:(int64_t)a4 contextDictionary:(id)a5 options:(int64_t)a6 error:(id *)a7;
+ (id)viewControllerWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5;
- (SCUIInterventionAlertController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5;
- (SCUIInterventionAlertController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5 type:(int64_t)a6;
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

- (SCUIInterventionAlertController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5
{
  v8 = a4;
  v9 = [(SCUIInterventionAlertController *)self initWithWorkflow:a3 contextDictionary:v8 options:a5 type:SCUICurrentInterventionType()];

  return v9;
}

- (SCUIInterventionAlertController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5 type:(int64_t)a6
{
  v10 = a4;
  v11 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = SCUIInterventionAlertController;
  v12 = [(SCUIInterventionAlertController *)&v18 initWithRootViewController:v11];

  if (v12)
  {
    v12->_workflow = a3;
    v13 = [v10 copy];
    contextDictionary = v12->_contextDictionary;
    v12->_contextDictionary = v13;

    v12->_options = a5 | 1;
    v12->_type = a6;
    v12->_contentScreen = 0;
    v15 = [[SCUIInterventionScreenModel alloc] initWithScreen:v12->_contentScreen workflow:v12->_workflow type:v12->_type options:v12->_options];
    screenModel = v12->_screenModel;
    v12->_screenModel = v15;
  }

  return v12;
}

+ (id)viewControllerWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5
{
  v7 = a4;
  v8 = [objc_alloc(objc_opt_class()) initWithWorkflow:a3 contextDictionary:v7 options:a5];

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
  v4 = [(SCUIInterventionScreenModel *)self->_screenModel bullets];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        if ([v3 length])
        {
          [v3 appendString:@"\n\n"];
        }

        v9 = [v8 text];
        [v3 appendString:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  v10 = MEMORY[0x1E69DC650];
  v11 = [(SCUIInterventionScreenModel *)val->_screenModel title];
  v22 = [v10 alertControllerWithTitle:v11 message:v3 preferredStyle:1];

  objc_initWeak(&location, val);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [(SCUIInterventionScreenModel *)val->_screenModel actions];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v25 + 1) + 8 * j);
        v17 = MEMORY[0x1E69DC648];
        v18 = [v16 title];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __53__SCUIInterventionAlertController_presentAlertScreen__block_invoke;
        v23[3] = &unk_1E7FF2560;
        v23[4] = v16;
        objc_copyWeak(&v24, &location);
        v19 = [v17 actionWithTitle:v18 style:0 handler:v23];

        [v22 addAction:v19];
        objc_destroyWeak(&v24);
      }

      v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
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
  v3 = [(SCUIInterventionAlertController *)self screenModel];
  [v3 collectInterventionInteractionEventWith:3];

  v4 = [(SCUIInterventionAlertController *)self interventionDelegate];
  [v4 didRejectForInterventionViewController:self];

  [(SCUIInterventionAlertController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)screenOne_moreHelpButtonPressed
{
  v3 = [(SCUIInterventionAlertController *)self screenModel];
  [v3 collectResourceInteractionEventWith:2];

  v4 = [(SCUIInterventionAlertController *)self interventionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SCUIInterventionAlertController *)self interventionDelegate];
    [v6 didRequestMoreHelpForInterventionViewController:self];
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
  v3 = [(SCUIInterventionAlertController *)self screenModel];
  [v3 collectResourceInteractionEventWith:3];

  v4 = [(SCUIInterventionAlertController *)self interventionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SCUIInterventionAlertController *)self interventionDelegate];
    [v6 didContactSomeoneForInterventionViewController:self];
  }

  else
  {
    [SCUIDefaultImplementations didMessageSomeoneWithInterventionType:[(SCUIInterventionAlertController *)self type]];
  }

  [(SCUIInterventionAlertController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)screenTwo_acceptButtonPressed
{
  v3 = [(SCUIInterventionAlertController *)self screenModel];
  v4 = [(SCUIInterventionAlertController *)self interventionDelegate];
  [v3 bypassInterventionForContainer:self delegate:v4];

  [(SCUIInterventionAlertController *)self dismissViewControllerAnimated:0 completion:0];
}

- (void)screenTwo_notNowButtonPressed
{
  v3 = [(SCUIInterventionAlertController *)self screenModel];
  [v3 collectInterventionInteractionEventWith:4];

  v4 = [(SCUIInterventionAlertController *)self interventionDelegate];
  [v4 didRejectForInterventionViewController:self];

  [(SCUIInterventionAlertController *)self dismissViewControllerAnimated:0 completion:0];
}

- (SCUIInterventionViewControllerDelegate)interventionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interventionDelegate);

  return WeakRetained;
}

+ (id)_viewControllerWithAnalysis:(id)a3 workflow:(int64_t)a4 contextDictionary:(id)a5 options:(int64_t)a6 error:(id *)a7
{
  if (a5)
  {
    v10 = sub_1BC75BA40();
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  v12 = sub_1BC67EE08(a4, v10, a6);

  return v12;
}

@end
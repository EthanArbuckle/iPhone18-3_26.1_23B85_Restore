@interface ICSMailConfigController
- (ICSMailConfigController)initWithAccount:(id)account presenter:(id)presenter;
- (void)_cleanupLoader;
- (void)configureEmailAccount;
- (void)loader:(id)loader didFailWithError:(id)error;
- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal;
- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes;
- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method;
- (void)presentCreateFreeEmailPromptWithCompletion:(id)completion isForNotes:(BOOL)notes;
@end

@implementation ICSMailConfigController

- (ICSMailConfigController)initWithAccount:(id)account presenter:(id)presenter
{
  accountCopy = account;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = ICSMailConfigController;
  v9 = [(ICSMailConfigController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeWeak(&v10->_presenter, presenterCopy);
  }

  return v10;
}

- (void)presentCreateFreeEmailPromptWithCompletion:(id)completion isForNotes:(BOOL)notes
{
  notesCopy = notes;
  v6 = MEMORY[0x277CCA8D8];
  completionCopy = completion;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = v8;
  if (notesCopy)
  {
    v10 = @"TURN_ON_NOTES_MESSAGE";
  }

  else
  {
    v10 = @"TURN_ON_MAIL_MESSAGE";
  }

  if (notesCopy)
  {
    v11 = @"TURN_ON_NOTES_TITLE";
  }

  else
  {
    v11 = @"TURN_ON_MAIL_TITLE";
  }

  v20 = [v8 localizedStringForKey:v10 value:&stru_288487370 table:@"Localizable-AppleID"];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v11 value:&stru_288487370 table:@"Localizable-AppleID"];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CREATE_EMAIL_BUTTON" value:&stru_288487370 table:@"Localizable-AppleID"];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_288487370 table:@"Localizable-AppleID"];

  v18 = [MEMORY[0x277D75110] alertWithTitle:v13 message:v20 cancelButtonTitle:v17 defaultButtonTitle:v15 actionHandler:completionCopy];

  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  [WeakRetained presentViewController:v18 animated:0 completion:0];
}

- (void)configureEmailAccount
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__ICSMailConfigController_configureEmailAccount__block_invoke;
  aBlock[3] = &unk_27A666198;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setNetworkActivityIndicatorVisible:1];

  identifier = [(ACAccount *)self->_account identifier];
  if (identifier && (v6 = identifier, [(ACAccount *)self->_account aa_authToken], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    account = self->_account;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__ICSMailConfigController_configureEmailAccount__block_invoke_4;
    v10[3] = &unk_27A6667F0;
    v11 = v3;
    [defaultStore renewCredentialsForAccount:account completion:v10];
  }

  else
  {
    v3[2](v3);
  }
}

void __48__ICSMailConfigController_configureEmailAccount__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("createEmailAccountQueue", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ICSMailConfigController_configureEmailAccount__block_invoke_2;
  block[3] = &unk_27A666198;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __48__ICSMailConfigController_configureEmailAccount__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CEC860] urlConfiguration];
  v3 = [v2 addEmailURL];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__ICSMailConfigController_configureEmailAccount__block_invoke_3;
  v6[3] = &unk_27A666410;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __48__ICSMailConfigController_configureEmailAccount__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (!*(*(a1 + 40) + 24))
    {
      v2 = objc_alloc_init(MEMORY[0x277D757A0]);
      v3 = *(a1 + 40);
      v4 = *(v3 + 24);
      *(v3 + 24) = v2;

      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      [*(*(a1 + 40) + 24) setModalPresentationStyle:2 * ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)];
    }

    v7 = *(*(a1 + 40) + 32);
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277D461D0]);
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = v8;

      v7 = *(*(a1 + 40) + 32);
    }

    [v7 setDelegate:?];
    v11 = [objc_alloc(MEMORY[0x277CEC760]) initWithURLString:*(a1 + 32) account:*(*(a1 + 40) + 8)];
    v12 = *(*(a1 + 40) + 32);
    v14 = v11;
    v13 = [v11 urlRequest];
    [v12 loadXMLUIWithRequest:v13];
  }

  else
  {
    v14 = [MEMORY[0x277D75128] sharedApplication];
    [v14 setNetworkActivityIndicatorVisible:0];
  }
}

void __48__ICSMailConfigController_configureEmailAccount__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__ICSMailConfigController_configureEmailAccount__block_invoke_5;
  v2[3] = &unk_27A6667C8;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __48__ICSMailConfigController_configureEmailAccount__block_invoke_5(uint64_t result)
{
  if (!*(result + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal
{
  modelCopy = model;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setNetworkActivityIndicatorVisible:0];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__ICSMailConfigController_loader_receivedObjectModel_actionSignal___block_invoke;
  aBlock[3] = &unk_27A666198;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  if (signal == 2)
  {
    [modelCopy presentInParentViewController:self->_addEmailNavController animated:1];
    [modelCopy setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    presentedViewController = [WeakRetained presentedViewController];
    addEmailNavController = self->_addEmailNavController;

    if (presentedViewController != addEmailNavController)
    {
      v17 = objc_loadWeakRetained(&self->_presenter);
      [v17 presentViewController:self->_addEmailNavController animated:1 completion:0];
    }

    addEmailObjectModels = self->_addEmailObjectModels;
    if (!addEmailObjectModels)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20 = self->_addEmailObjectModels;
      self->_addEmailObjectModels = v19;

      addEmailObjectModels = self->_addEmailObjectModels;
    }

    [(NSMutableArray *)addEmailObjectModels addObject:modelCopy];
  }

  else if (signal == 1)
  {
    v10 = self->_account;
    [(ACAccount *)self->_account setEnabled:1 forDataclass:*MEMORY[0x277CB89C8]];
    v11 = objc_loadWeakRetained(&self->_presenter);
    [v11 reloadSpecifiers];

    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ICSMailConfigController_loader_receivedObjectModel_actionSignal___block_invoke_2;
    block[3] = &unk_27A666260;
    v22 = v10;
    v23 = v9;
    v13 = v10;
    dispatch_async(v12, block);
  }
}

void __67__ICSMailConfigController_loader_receivedObjectModel_actionSignal___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__ICSMailConfigController_loader_receivedObjectModel_actionSignal___block_invoke_3;
  v5[3] = &unk_27A666818;
  v6 = v2;
  v3 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v2;
  [v4 aa_updatePropertiesForAppleAccount:v3 completion:v5];
}

void __67__ICSMailConfigController_loader_receivedObjectModel_actionSignal___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__ICSMailConfigController_loader_receivedObjectModel_actionSignal___block_invoke_4;
  v3[3] = &unk_27A6663A0;
  v4 = *(a1 + 48);
  [v1 saveVerifiedAccount:v2 withCompletionHandler:v3];
}

void __67__ICSMailConfigController_loader_receivedObjectModel_actionSignal___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ICSMailConfigController_loader_receivedObjectModel_actionSignal___block_invoke_5;
  block[3] = &unk_27A666238;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)loader:(id)loader didFailWithError:(id)error
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setNetworkActivityIndicatorVisible:0];
}

- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes
{
  if ([button isEqualToString:*MEMORY[0x277D46248]])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [WeakRetained reloadSpecifiers];

    v7 = objc_loadWeakRetained(&self->_presenter);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__ICSMailConfigController_objectModel_pressedButton_attributes___block_invoke;
    v10[3] = &unk_27A666198;
    v10[4] = self;
    [v7 dismissViewControllerAnimated:1 completion:v10];

    addEmailObjectModels = self->_addEmailObjectModels;
    self->_addEmailObjectModels = 0;

    addEmailNavController = self->_addEmailNavController;
    self->_addEmailNavController = 0;

    [(ICSMailConfigController *)self _cleanupLoader];
  }
}

void __64__ICSMailConfigController_objectModel_pressedButton_attributes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    if ([v4 isMailSetupForced])
    {
      [v4 cancelButtonTapped:*(a1 + 32)];
    }
  }
}

- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method
{
  modelCopy = model;
  methodCopy = method;
  absoluteString = [link absoluteString];
  v10 = [objc_alloc(MEMORY[0x277CEC760]) initWithURLString:absoluteString account:self->_account];
  urlRequest = [v10 urlRequest];
  v12 = [urlRequest mutableCopy];

  [v12 setHTTPMethod:methodCopy];
  LODWORD(urlRequest) = [methodCopy isEqualToString:@"POST"];

  if (urlRequest)
  {
    postbackData = [modelCopy postbackData];
    [v12 setHTTPBody:postbackData];
  }

  [(RUILoader *)self->_addEmailLoader loadXMLUIWithRequest:v12];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setNetworkActivityIndicatorVisible:1];
}

- (void)_cleanupLoader
{
  [(RUILoader *)self->_addEmailLoader cancel];
  [(RUILoader *)self->_addEmailLoader setDelegate:0];
  addEmailLoader = self->_addEmailLoader;
  self->_addEmailLoader = 0;
}

@end
@interface TSBuddyMLController
- (TSBuddyMLController)initWithHostController:(id)controller;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_configureRUIController;
- (void)_userDidTapCancel;
- (void)loadRequest:(id)request completion:(id)completion;
- (void)remoteUIController:(id)controller didRemoveObjectModel:(id)model;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation TSBuddyMLController

- (TSBuddyMLController)initWithHostController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = TSBuddyMLController;
  v5 = [(TSBuddyMLController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_initialRequest = 1;
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v5 action:sel__userDidTapCancel];
    cancelButton = v6->_cancelButton;
    v6->_cancelButton = v7;

    [(TSBuddyMLController *)v6 _configureRUIController];
    [(RemoteUIController *)v6->_remoteUIController setHostViewController:controllerCopy];
  }

  return v6;
}

- (void)_userDidTapCancel
{
  hostViewController = [(RemoteUIController *)self->_remoteUIController hostViewController];
  [hostViewController dismissViewControllerAnimated:1 completion:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (void)loadRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (requestCopy)
  {
    if (_isInternalInstall())
    {
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [TSBuddyMLController loadRequest:requestCopy completion:v8];
      }
    }

    remoteUIController = self->_remoteUIController;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__TSBuddyMLController_loadRequest_completion___block_invoke;
    v11[3] = &unk_279B456F8;
    v11[4] = self;
    v12 = completionCopy;
    [(RemoteUIController *)remoteUIController loadRequest:requestCopy completion:v11];
  }

  else
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TSBuddyMLController loadRequest:v10 completion:?];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (self->_initialRequest)
  {
    initialRequest = 1;
  }

  else
  {

    requestCopy = 0;
    initialRequest = self->_initialRequest;
  }

  handlerCopy[2](handlerCopy, initialRequest, 0);
}

- (void)remoteUIController:(id)controller didRemoveObjectModel:(id)model
{
  controllerCopy = controller;
  displayedPages = [controllerCopy displayedPages];
  v6 = [displayedPages count];

  if (!v6)
  {
    navigationController = [controllerCopy navigationController];
    topViewController = [navigationController topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      WeakRetained = [controllerCopy navigationController];
      v11 = [WeakRetained popViewControllerAnimated:0];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained userDidTapCancel];
    }
  }
}

- (void)_configureRUIController
{
  v3 = objc_alloc_init(MEMORY[0x277D46220]);
  remoteUIController = self->_remoteUIController;
  self->_remoteUIController = v3;

  [(RemoteUIController *)self->_remoteUIController setDelegate:self];
  v5 = self->_remoteUIController;
  v6 = [[TSRemoteUIStyle alloc] initWithButton:self->_cancelButton];
  [(RemoteUIController *)v5 setStyle:v6];

  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration set_sourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.CellularPlanProvisioning"];
  [(RemoteUIController *)self->_remoteUIController setSessionConfiguration:ephemeralSessionConfiguration];
  objc_initWeak(&location, self);
  v8 = self->_remoteUIController;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__TSBuddyMLController__configureRUIController__block_invoke;
  v12[3] = &unk_279B45720;
  objc_copyWeak(&v13, &location);
  [(RemoteUIController *)v8 setHandlerForButtonName:@"dataPlanUrl" handler:v12];
  v9 = self->_remoteUIController;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__TSBuddyMLController__configureRUIController__block_invoke_2;
  v10[3] = &unk_279B45720;
  objc_copyWeak(&v11, &location);
  [(RemoteUIController *)v9 setHandlerForButtonName:@"dataPlanUrlWithIccid" handler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __46__TSBuddyMLController__configureRUIController__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 objectForKeyedSubscript:@"url"];
  v8 = [v6 URLWithString:v7];
  v9 = *(WeakRetained + 5);
  *(WeakRetained + 5) = v8;

  v10 = [v5 objectForKeyedSubscript:@"type"];

  v11 = *(WeakRetained + 6);
  *(WeakRetained + 6) = v10;

  v12 = [WeakRetained delegate];
  v13 = [*(WeakRetained + 3) displayedPages];
  v14 = [v13 firstObject];
  [v12 viewControllerDidComplete:v14];
}

void __46__TSBuddyMLController__configureRUIController__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 objectForKeyedSubscript:@"url"];

  v8 = [v6 URLWithString:v7];
  v9 = *(WeakRetained + 5);
  *(WeakRetained + 5) = v8;

  v10 = [WeakRetained delegate];
  v11 = [*(WeakRetained + 3) displayedPages];
  v12 = [v11 firstObject];
  [v10 viewControllerDidComplete:v12];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadRequest:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSBuddyMLController loadRequest:completion:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] Loading Request: %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadRequest:(os_log_t)log completion:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSBuddyMLController loadRequest:completion:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Missing request @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end
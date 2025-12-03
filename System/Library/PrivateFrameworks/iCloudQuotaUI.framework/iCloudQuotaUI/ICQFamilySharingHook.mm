@interface ICQFamilySharingHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (ICQFamilySharingHook)initWithFlowDelegate:(id)delegate;
- (ICQServerHookDelegate)flowDelegate;
- (RUIServerHookDelegate)delegate;
- (void)_beginFamilySharingFlowWithCompletion:(id)completion;
@end

@implementation ICQFamilySharingHook

- (ICQFamilySharingHook)initWithFlowDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = ICQFamilySharingHook;
  v5 = [(ICQFamilySharingHook *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_flowDelegate, delegateCopy);
  }

  return v6;
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"ICQActionFamilySetup"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKey:@"action"];
  v5 = [v4 isEqualToString:@"OPEN_FAMILY_SETUP"];

  return v5;
}

- (void)_beginFamilySharingFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained presentationContextForHook:self];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v7 = getFACircleStateControllerClass_softClass_0;
  v32 = getFACircleStateControllerClass_softClass_0;
  if (!getFACircleStateControllerClass_softClass_0)
  {
    location = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getFACircleStateControllerClass_block_invoke_0;
    v27 = &unk_27A65A9F8;
    v28 = &v29;
    __getFACircleStateControllerClass_block_invoke_0(&location);
    v7 = v30[3];
  }

  v8 = v7;
  _Block_object_dispose(&v29, 8);
  v9 = [[v7 alloc] initWithPresenter:v6];
  familyCircleStateController = self->_familyCircleStateController;
  self->_familyCircleStateController = v9;

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v11 = getFACircleContextClass_softClass_0;
  v32 = getFACircleContextClass_softClass_0;
  if (!getFACircleContextClass_softClass_0)
  {
    location = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getFACircleContextClass_block_invoke_0;
    v27 = &unk_27A65A9F8;
    v28 = &v29;
    __getFACircleContextClass_block_invoke_0(&location);
    v11 = v30[3];
  }

  v12 = v11;
  _Block_object_dispose(&v29, 8);
  v13 = [v11 alloc];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v14 = getFACircleEventTypeInitiateSymbolLoc_ptr_0;
  v32 = getFACircleEventTypeInitiateSymbolLoc_ptr_0;
  if (!getFACircleEventTypeInitiateSymbolLoc_ptr_0)
  {
    location = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getFACircleEventTypeInitiateSymbolLoc_block_invoke_0;
    v27 = &unk_27A65A9F8;
    v28 = &v29;
    v15 = FamilyCircleUILibrary_0();
    v16 = dlsym(v15, "FACircleEventTypeInitiate");
    *(v28[1] + 24) = v16;
    getFACircleEventTypeInitiateSymbolLoc_ptr_0 = *(v28[1] + 24);
    v14 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v14)
  {
    v20 = [ICQFamilySharingHook _beginFamilySharingFlowWithCompletion:];
    _Block_object_dispose(&v29, 8);
    _Unwind_Resume(v20);
  }

  v17 = [v13 initWithEventType:*v14];
  [v17 setClientName:@"iCloudStorage"];
  objc_initWeak(&location, self);
  v18 = self->_familyCircleStateController;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__ICQFamilySharingHook__beginFamilySharingFlowWithCompletion___block_invoke;
  v21[3] = &unk_27A65B6E8;
  objc_copyWeak(&v23, &location);
  v19 = completionCopy;
  v22 = v19;
  [(FACircleStateController *)v18 performOperationWithContext:v17 completion:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __62__ICQFamilySharingHook__beginFamilySharingFlowWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Family sharing flow completed with success: %d, error: %@", v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v8 = [WeakRetained flowDelegate];
  [v8 dismissUpgradeFlowWithSuccess:a2];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICQServerHookDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

- (uint64_t)_beginFamilySharingFlowWithCompletion:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return +[(ICQQuotaRequestManager *)v0];
}

@end
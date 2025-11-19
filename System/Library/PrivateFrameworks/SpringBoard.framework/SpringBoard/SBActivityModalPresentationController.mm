@interface SBActivityModalPresentationController
- (SBActivityModalPresentationController)init;
- (SBActivityModalPresentationControllerDelegate)delegate;
- (void)dismissModalForActivityItem:(id)a3;
- (void)presentModalForActivityItem:(id)a3 completion:(id)a4;
@end

@implementation SBActivityModalPresentationController

- (SBActivityModalPresentationController)init
{
  v8.receiver = self;
  v8.super_class = SBActivityModalPresentationController;
  v2 = [(SBActivityModalPresentationController *)&v8 init];
  if (v2)
  {
    v3 = +[SBDashBoardHostableEntityPresentationManager sharedInstance];
    entityPresentationManager = v2->_entityPresentationManager;
    v2->_entityPresentationManager = v3;

    v5 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    entitiesByIdentifiers = v2->_entitiesByIdentifiers;
    v2->_entitiesByIdentifiers = v5;
  }

  return v2;
}

- (void)presentModalForActivityItem:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogActivity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    *buf = 138543362;
    v26 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] presenting modal full screen alert", buf, 0xCu);
  }

  v10 = [[SBDashBoardActivityModalHostableEntity alloc] initWithActivityItem:v6];
  v11 = +[(SBWorkspace *)SBMainWorkspace];
  v12 = [v11 createRequestWithOptions:0];
  entitiesByIdentifiers = self->_entitiesByIdentifiers;
  v14 = [v6 identifier];
  [(NSMapTable *)entitiesByIdentifiers setObject:v10 forKey:v14];

  v15 = [SBDashBoardHostableEntityPresentationRequest alloc];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __80__SBActivityModalPresentationController_presentModalForActivityItem_completion___block_invoke;
  v22 = &unk_2783BC390;
  v23 = v6;
  v24 = v7;
  v16 = v7;
  v17 = v6;
  v18 = [(SBDashBoardHostableEntityPresentationRequest *)v15 initWithEntity:v10 transitionRequest:v12 animated:0 isEphemeralSwitcher:0 dismissGestureEnabled:1 presentationCompletion:&v19];
  [(SBDashBoardHostableEntityPresentationManager *)self->_entityPresentationManager presentEntityWithRequest:v18, v19, v20, v21, v22];
}

uint64_t __80__SBActivityModalPresentationController_presentModalForActivityItem_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogActivity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) identifier];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] did finish presenting modal full screen alert", &v8, 0xCu);
  }

  [v4 setDismissesOnScreenOff:0];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissModalForActivityItem:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  entitiesByIdentifiers = self->_entitiesByIdentifiers;
  v6 = [v4 identifier];
  v7 = [(NSMapTable *)entitiesByIdentifiers objectForKey:v6];

  if (v7)
  {
    v8 = SBLogActivity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 identifier];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] dismissing modal full screen alert", &v12, 0xCu);
    }

    [(SBDashBoardHostableEntityPresentationManager *)self->_entityPresentationManager dismissEntity:v7 completion:0];
    v10 = self->_entitiesByIdentifiers;
    v11 = [v4 identifier];
    [(NSMapTable *)v10 removeObjectForKey:v11];
  }
}

- (SBActivityModalPresentationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
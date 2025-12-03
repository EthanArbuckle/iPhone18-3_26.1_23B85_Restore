@interface SBActivityModalPresentationController
- (SBActivityModalPresentationController)init;
- (SBActivityModalPresentationControllerDelegate)delegate;
- (void)dismissModalForActivityItem:(id)item;
- (void)presentModalForActivityItem:(id)item completion:(id)completion;
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

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    entitiesByIdentifiers = v2->_entitiesByIdentifiers;
    v2->_entitiesByIdentifiers = weakToWeakObjectsMapTable;
  }

  return v2;
}

- (void)presentModalForActivityItem:(id)item completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v8 = SBLogActivity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [itemCopy identifier];
    *buf = 138543362;
    v26 = identifier;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] presenting modal full screen alert", buf, 0xCu);
  }

  v10 = [[SBDashBoardActivityModalHostableEntity alloc] initWithActivityItem:itemCopy];
  v11 = +[(SBWorkspace *)SBMainWorkspace];
  v12 = [v11 createRequestWithOptions:0];
  entitiesByIdentifiers = self->_entitiesByIdentifiers;
  identifier2 = [itemCopy identifier];
  [(NSMapTable *)entitiesByIdentifiers setObject:v10 forKey:identifier2];

  v15 = [SBDashBoardHostableEntityPresentationRequest alloc];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __80__SBActivityModalPresentationController_presentModalForActivityItem_completion___block_invoke;
  v22 = &unk_2783BC390;
  v23 = itemCopy;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = itemCopy;
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

- (void)dismissModalForActivityItem:(id)item
{
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  entitiesByIdentifiers = self->_entitiesByIdentifiers;
  identifier = [itemCopy identifier];
  v7 = [(NSMapTable *)entitiesByIdentifiers objectForKey:identifier];

  if (v7)
  {
    v8 = SBLogActivity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [itemCopy identifier];
      v12 = 138543362;
      v13 = identifier2;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] dismissing modal full screen alert", &v12, 0xCu);
    }

    [(SBDashBoardHostableEntityPresentationManager *)self->_entityPresentationManager dismissEntity:v7 completion:0];
    v10 = self->_entitiesByIdentifiers;
    identifier3 = [itemCopy identifier];
    [(NSMapTable *)v10 removeObjectForKey:identifier3];
  }
}

- (SBActivityModalPresentationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
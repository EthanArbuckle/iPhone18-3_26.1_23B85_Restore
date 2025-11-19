@interface SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager
- (id)acquireDisableMultitaskingAssertionForSceneHandle:(id)a3;
- (void)_updateMedusaMultitaskingEnabled;
@end

@implementation SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager

- (id)acquireDisableMultitaskingAssertionForSceneHandle:(id)a3
{
  v31[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager *)a2 acquireDisableMultitaskingAssertionForSceneHandle:?];
  }

  assertion = self->_assertion;
  if (!assertion)
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277CF0BD0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __119__SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager_acquireDisableMultitaskingAssertionForSceneHandle___block_invoke;
    v27[3] = &unk_2783AD370;
    v28 = v5;
    objc_copyWeak(&v29, &location);
    v8 = [v7 assertionWithIdentifier:@"SBDeviceAppSHDisableMultitaskingAssertionManager" stateDidChangeHandler:v27];
    v9 = self->_assertion;
    self->_assertion = v8;

    v10 = +[SBDefaults localDefaults];
    v11 = [v10 appSwitcherDefaults];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisWindowingEnabled"];
    v31[0] = v12;
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"medusaMultitaskingEnabled"];
    v31[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v15 = MEMORY[0x277D85CD0];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __119__SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager_acquireDisableMultitaskingAssertionForSceneHandle___block_invoke_3;
    v24 = &unk_2783A9CE8;
    objc_copyWeak(&v26, &location);
    v16 = v11;
    v25 = v16;
    v17 = [v16 observeDefaults:v14 onQueue:MEMORY[0x277D85CD0] withBlock:&v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v29);

    objc_destroyWeak(&location);
    assertion = self->_assertion;
  }

  v18 = [v5 sceneIdentifier];
  v19 = [(BSCompoundAssertion *)assertion acquireForReason:v18];

  return v19;
}

void __119__SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager_acquireDisableMultitaskingAssertionForSceneHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBWorkspace mainWorkspace];
  v5 = [v4 eventQueue];

  objc_initWeak(&location, v5);
  v6 = MEMORY[0x277D0AB18];
  v7 = [*(a1 + 32) sceneIdentifier];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __119__SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager_acquireDisableMultitaskingAssertionForSceneHandle___block_invoke_2;
  v12 = &unk_2783AD348;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 32);
  objc_copyWeak(&v15, (a1 + 40));
  v8 = [v6 eventWithName:v7 handler:&v9];

  [v5 executeOrAppendEvent:{v8, v9, v10, v11, v12}];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __119__SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager_acquireDisableMultitaskingAssertionForSceneHandle___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CCACA8];
    v8 = WeakRetained;
    v4 = [a1[4] sceneIdentifier];
    v5 = [v3 stringWithFormat:@"SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager-%@", v4];
    v6 = [v8 acquireLockForReason:v5];

    v7 = objc_loadWeakRetained(a1 + 6);
    [v7 _updateMedusaMultitaskingEnabled];

    [v8 relinquishLock:v6];
    WeakRetained = v8;
  }
}

void __119__SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager_acquireDisableMultitaskingAssertionForSceneHandle___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = [WeakRetained[1] isActive];
    v3 = v7;
    if (v4)
    {
      v5 = [*(a1 + 32) medusaMultitaskingEnabled];
      v3 = v7;
      if ((v5 & 1) != 0 || (v6 = [*(a1 + 32) chamoisWindowingEnabled], v3 = v7, v6))
      {
        [v3 _updateMedusaMultitaskingEnabled];
        v3 = v7;
      }
    }
  }
}

- (void)_updateMedusaMultitaskingEnabled
{
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 appSwitcherDefaults];
  v5 = [v4 medusaMultitaskingEnabled];

  v6 = +[SBDefaults localDefaults];
  v7 = [v6 appSwitcherDefaults];
  v8 = [v7 chamoisWindowingEnabled];

  if ([(BSCompoundAssertion *)self->_assertion isActive]&& v5)
  {
    self->_shouldReenableMultitaskingWhenAssertionInvalidates = 1;
    v9 = +[SBDefaults localDefaults];
    v10 = [v9 appSwitcherDefaults];
    [v10 setMedusaMultitaskingEnabled:0];
  }

  else if (([(BSCompoundAssertion *)self->_assertion isActive]& 1) == 0)
  {
    if (!(v5 & 1 | !self->_shouldReenableMultitaskingWhenAssertionInvalidates))
    {
      v11 = +[SBDefaults localDefaults];
      v12 = [v11 appSwitcherDefaults];
      [v12 setMedusaMultitaskingEnabled:1];
    }

    self->_shouldReenableMultitaskingWhenAssertionInvalidates = 0;
  }

  if (([(BSCompoundAssertion *)self->_assertion isActive]& v8) == 1)
  {
    self->_shouldReenableChamoisWhenAssertionInvalidates = 1;
    v16 = +[SBDefaults localDefaults];
    v13 = [v16 appSwitcherDefaults];
    [v13 setChamoisWindowingEnabled:0];
  }

  else if (([(BSCompoundAssertion *)self->_assertion isActive]& 1) == 0)
  {
    if (!(v8 & 1 | !self->_shouldReenableChamoisWhenAssertionInvalidates))
    {
      v14 = +[SBDefaults localDefaults];
      v15 = [v14 appSwitcherDefaults];
      [v15 setChamoisWindowingEnabled:1];
    }

    self->_shouldReenableChamoisWhenAssertionInvalidates = 0;
  }
}

- (void)acquireDisableMultitaskingAssertionForSceneHandle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"handle"}];
}

@end
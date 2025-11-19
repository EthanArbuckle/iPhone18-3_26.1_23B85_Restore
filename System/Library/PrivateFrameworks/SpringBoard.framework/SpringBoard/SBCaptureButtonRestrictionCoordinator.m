@interface SBCaptureButtonRestrictionCoordinator
- (BOOL)isCaptureButtonActionInhibited:(id *)a3;
- (SBCaptureButtonRestrictionCoordinator)init;
- (id)addObserver:(id)a3;
- (id)inhibitCaptureButtonActionAssertionWithReason:(id)a3 options:(unint64_t)a4;
- (unint64_t)captureButtonSuppressionOptions;
@end

@implementation SBCaptureButtonRestrictionCoordinator

- (SBCaptureButtonRestrictionCoordinator)init
{
  v12.receiver = self;
  v12.super_class = SBCaptureButtonRestrictionCoordinator;
  v2 = [(SBCaptureButtonRestrictionCoordinator *)&v12 init];
  if (v2)
  {
    v3 = [[SBCaptureButtonRestrictionServer alloc] initWithDelegate:v2];
    xpcServer = v2->_xpcServer;
    v2->_xpcServer = v3;

    v5 = [[SBCaptureButtonSOSRestriction alloc] initWithCoordinator:v2];
    restrictionForSOS = v2->_restrictionForSOS;
    v2->_restrictionForSOS = v5;

    v7 = [[SBCaptureButtonMCProfileRestriction alloc] initWithCoordinator:v2];
    restrictionForMCProfile = v2->_restrictionForMCProfile;
    v2->_restrictionForMCProfile = v7;

    v9 = [[SBCaptureButtonDisabledUserDefaultRestriction alloc] initWithCoordinator:v2];
    restrictionForUserDefault = v2->_restrictionForUserDefault;
    v2->_restrictionForUserDefault = v9;
  }

  return v2;
}

- (id)inhibitCaptureButtonActionAssertionWithReason:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  inhibitedAssertion = self->_inhibitedAssertion;
  if (!inhibitedAssertion)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277CF0BD0];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __95__SBCaptureButtonRestrictionCoordinator_inhibitCaptureButtonActionAssertionWithReason_options___block_invoke;
    v19 = &unk_2783AD688;
    objc_copyWeak(&v20, &location);
    v9 = [v8 assertionWithIdentifier:@"CaptureButtonRestrictions" stateDidChangeHandler:&v16];
    v10 = self->_inhibitedAssertion;
    self->_inhibitedAssertion = v9;

    v11 = self->_inhibitedAssertion;
    v12 = SBLogCameraCaptureRestriction();
    [(BSCompoundAssertion *)v11 setLog:v12, v16, v17, v18, v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    inhibitedAssertion = self->_inhibitedAssertion;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v14 = [(BSCompoundAssertion *)inhibitedAssertion acquireForReason:v6 withContext:v13];

  return v14;
}

void __95__SBCaptureButtonRestrictionCoordinator_inhibitCaptureButtonActionAssertionWithReason_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversCaptureButtonInhibitionDidChange];
}

- (BOOL)isCaptureButtonActionInhibited:(id *)a3
{
  v5 = [(BSCompoundAssertion *)self->_inhibitedAssertion context];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __SBSCombineSupressionOptions_block_invoke;
  v12[3] = &unk_2783BA860;
  v12[4] = &v13;
  [v5 bs_each:v12];
  v6 = v14[3];
  _Block_object_dispose(&v13, 8);

  v7 = [(BSCompoundAssertion *)self->_inhibitedAssertion isActive];
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (a3 && v8)
  {
    v9 = [(BSCompoundAssertion *)self->_inhibitedAssertion orderedReasons];
    v10 = [v9 array];
    *a3 = [v10 componentsJoinedByString:{@", "}];
  }

  return v8;
}

- (unint64_t)captureButtonSuppressionOptions
{
  v2 = [(BSCompoundAssertion *)self->_inhibitedAssertion context];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __SBSCombineSupressionOptions_block_invoke;
  v5[3] = &unk_2783BA860;
  v5[4] = &v6;
  [v2 bs_each:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  if (!observers)
  {
    v6 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"CaptureButtonInhibitionObservers"];
    v7 = self->_observers;
    self->_observers = v6;

    observers = self->_observers;
  }

  v8 = [objc_opt_class() description];
  v9 = [(BSCompoundAssertion *)observers acquireForReason:v8 withContext:v4];

  return v9;
}

void __89__SBCaptureButtonRestrictionCoordinator__notifyObserversCaptureButtonInhibitionDidChange__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 16) orderedContext];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) captureButtonRestrictionChangedTo:*(a1 + 40)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end
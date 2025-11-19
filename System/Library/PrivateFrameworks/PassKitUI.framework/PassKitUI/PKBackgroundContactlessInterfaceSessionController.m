@interface PKBackgroundContactlessInterfaceSessionController
- (PKBackgroundContactlessInterfaceSessionController)initWithFieldProperties:(id)a3 forPassUniqueID:(id)a4 relinquishOwnership:(id)a5;
- (void)_processContexts:(id)a3 didFinishTransaction:(BOOL)a4;
- (void)claimActiveSessionWithCompletion:(id)a3;
- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)setSession:(id)a3;
- (void)start;
@end

@implementation PKBackgroundContactlessInterfaceSessionController

- (PKBackgroundContactlessInterfaceSessionController)initWithFieldProperties:(id)a3 forPassUniqueID:(id)a4 relinquishOwnership:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = 0;
  if (a3 && v8)
  {
    if ([a3 terminalType] == 4)
    {
      v11 = [MEMORY[0x1E69B8A58] sharedInstance];
      v12 = [v11 passWithUniqueID:v8];
      v13 = [v12 secureElementPass];

      if (v13 && [v13 isIdentityPass])
      {
        v19.receiver = self;
        v19.super_class = PKBackgroundContactlessInterfaceSessionController;
        v14 = [(PKBackgroundContactlessInterfaceSessionController *)&v19 init];
        v15 = v14;
        if (v14)
        {
          objc_storeStrong(&v14->_pass, v13);
          v16 = _Block_copy(v9);
          relinquishOwnershipBlock = v15->_relinquishOwnershipBlock;
          v15->_relinquishOwnershipBlock = v16;

          v15->_lifecycleState = 0;
          v15->_lock._os_unfair_lock_opaque = 0;
        }

        self = v15;
        v10 = self;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  [(PKBackgroundContactlessInterfaceSessionController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKBackgroundContactlessInterfaceSessionController;
  [(PKBackgroundContactlessInterfaceSessionController *)&v3 dealloc];
}

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lifecycleState || self->_session)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    sessionHandle = self->_sessionHandle;
    os_unfair_lock_unlock(&self->_lock);
    if (!sessionHandle)
    {
      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E69B8DC0];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__PKBackgroundContactlessInterfaceSessionController_start__block_invoke;
      v9[3] = &unk_1E80119F0;
      objc_copyWeak(&v10, &location);
      v7 = [v6 startSTSContactlessInterfaceSessionWithDelegate:0 completion:v9];
      v8 = self->_sessionHandle;
      self->_sessionHandle = v7;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
      return;
    }
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];

  [v3 raise:v4 format:@"PKBackgroundContactlessInterfaceSessionController: Start called twice"];
}

void __58__PKBackgroundContactlessInterfaceSessionController_start__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_4:
    InvalidateSession(v7);
    goto LABEL_6;
  }

  if (a3)
  {
    [WeakRetained invalidate];
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  [WeakRetained setSession:v7];
LABEL_6:
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lifecycleState == 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = self->_sessionHandle;
    sessionHandle = self->_sessionHandle;
    self->_sessionHandle = 0;

    v5 = self->_session;
    session = self->_session;
    self->_session = 0;

    group = self->_group;
    self->_group = 0;

    self->_lifecycleState = 2;
    relinquishOwnershipBlock = self->_relinquishOwnershipBlock;
    if (relinquishOwnershipBlock)
    {
      v3 = [relinquishOwnershipBlock copy];
      v10 = self->_relinquishOwnershipBlock;
      self->_relinquishOwnershipBlock = 0;
    }

    else
    {
      v3 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = v4;
  if (v11)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12 = [MEMORY[0x1E69DC668] sharedApplication];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __InvalidateSessionHandle_block_invoke;
    v15[3] = &unk_1E8011A18;
    v15[4] = &v16;
    v13 = [v12 beginBackgroundTaskWithExpirationHandler:v15];

    v17[3] = v13;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __InvalidateSessionHandle_block_invoke_2;
    v14[3] = &unk_1E8011A18;
    v14[4] = &v16;
    [(PKPaymentSessionHandle *)v11 invalidateSessionWithCompletion:v14];
    _Block_object_dispose(&v16, 8);
  }

  InvalidateSession(v5);
  if (v3)
  {
    v3[2](v3);
  }
}

- (void)setSession:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (v5 && self->_lifecycleState != 2)
  {
    objc_storeStrong(&self->_session, a3);
    sessionHandle = self->_sessionHandle;
    self->_sessionHandle = 0;

    self->_lifecycleState = 1;
    v7 = dispatch_group_create();
    group = self->_group;
    self->_group = v7;

    v9 = v7;
    dispatch_group_enter(v9);
    os_unfair_lock_unlock(&self->_lock);
    if (v9)
    {
      [v5 setDelegate:self];
      v10 = self->_pass;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = [(PKSecureElementPass *)v10 devicePaymentApplications];
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
LABEL_7:
        v15 = 0;
        while (1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * v15);
          if ([v16 paymentType] == 1002)
          {
            if ([v16 supportsContactlessPayment])
            {
              v17 = v16;
              if (v17)
              {
                break;
              }
            }
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
            if (v13)
            {
              goto LABEL_7;
            }

            goto LABEL_15;
          }
        }

        v18 = v17;

        v28 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
        v20 = [v5 activatePaymentApplications:v19 forPaymentPass:v10];

        if (!v20)
        {
          goto LABEL_18;
        }

        [v5 authorizeAndStartCardEmulationWithCredential:0 deferAuthorization:0 requiresConfirmationForHandoff:1 startHandoffIfPending:0];
      }

      else
      {
LABEL_15:

        v18 = 0;
LABEL_18:
        v21 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "PKBackgroundContactlessInterfaceSessionController: Failed to activate", v23, 2u);
        }
      }

      dispatch_group_leave(v9);
      os_unfair_lock_lock(&self->_lock);
      v22 = self->_group;
      self->_group = 0;

      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)claimActiveSessionWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_lock);
    if (self->_lifecycleState == 1)
    {
      v6 = self->_group;
      v7 = self->_session;
      session = self->_session;
      self->_session = 0;

      sessionHandle = self->_sessionHandle;
      self->_sessionHandle = 0;

      os_unfair_lock_unlock(&self->_lock);
      if (v7)
      {
        if (v6)
        {
          v10 = MEMORY[0x1E69E9820];
          v11 = 3221225472;
          v12 = __86__PKBackgroundContactlessInterfaceSessionController_claimActiveSessionWithCompletion___block_invoke;
          v13 = &unk_1E8010E20;
          v15 = v5;
          v7 = v7;
          v14 = v7;
          dispatch_group_notify(v6, MEMORY[0x1E69E96A0], &v10);
        }

        else
        {
          (v5)[2](v5, v7);
        }

        goto LABEL_8;
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
      v6 = 0;
    }

    v5[2](v5, 0);
    v7 = 0;
LABEL_8:
    [(PKBackgroundContactlessInterfaceSessionController *)self invalidate:v10];

    return;
  }

  __break(1u);
}

- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = self;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKBackgroundContactlessInterfaceSessionController (%p): ignoring transaction end....", buf, 0xCu);
  }

  if (v7)
  {
    v10 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [(PKBackgroundContactlessInterfaceSessionController *)self _processContexts:v9 didFinishTransaction:1];
  }

  else
  {
    [(PKBackgroundContactlessInterfaceSessionController *)self _processContexts:0 didFinishTransaction:1];
  }
}

- (void)_processContexts:(id)a3 didFinishTransaction:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 firstObject];
  v8 = [v7 paymentPass];

  if (v8)
  {
    v9 = [MEMORY[0x1E69B8DB8] paymentService];
    v10 = [v8 isStoredValuePass];
    v11 = [v8 uniqueID];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      obj = v12;
      v26 = self;
      v27 = v8;
      v28 = v6;
      v15 = 0;
      v16 = *v32;
      v29 = v10 | v4;
      while (1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [v18 paymentApplication];
          if (v10)
          {
            v20 = [v18 transitHistory];
            v21 = [v18 date];
            v22 = [v18 expressState];
            [v9 processTransitTransactionEventWithHistory:v20 transactionDate:v21 forPaymentApplication:v19 withPassUniqueIdentifier:v11 expressTransactionState:v22];

            v15 = 1;
          }

          else if (!v29)
          {
            goto LABEL_11;
          }

          v23 = [v19 applicationIdentifier];
          [v9 recordPaymentApplicationUsageForPassUniqueIdentifier:v11 paymentApplicationIdentifier:v23];

          v24 = [v19 applicationIdentifier];
          [v9 recordPassTransactionActivitySummaryForPassUniqueIdentifier:v11 paymentApplicationIdentifier:v24 presentmentType:2];

LABEL_11:
        }

        v14 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (!v14)
        {

          v8 = v27;
          v6 = v28;
          self = v26;
          if (v15)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }
      }
    }
  }

LABEL_16:
  v25 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = self;
    _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "PKBackgroundContactlessInterfaceSessionController (%p): dropping transaction.", buf, 0xCu);
  }

LABEL_19:
}

@end
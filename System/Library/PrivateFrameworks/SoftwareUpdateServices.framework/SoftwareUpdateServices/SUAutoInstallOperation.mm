@interface SUAutoInstallOperation
- (BOOL)_isDateExpired:(id)a3;
- (BOOL)_isEffectivelyScheduled;
- (BOOL)_isValidForScheduling;
- (BOOL)_isValidTillDate:(id)a3;
- (BOOL)isCanceled;
- (BOOL)isExpired;
- (NSString)description;
- (SUAutoInstallOperation)init;
- (SUAutoInstallOperation)initWithAutoInstallOperationModel:(id)a3 client:(id)a4;
- (SUAutoInstallOperationDelegate)delegate;
- (int)agreementStatus;
- (void)_noteAutoInstallOperationDidConsent;
- (void)_noteAutoInstallOperationDidExpireWithError:(id)a3;
- (void)_noteAutoInstallOperationIsReadyToInstall:(id)a3;
- (void)_noteAutoInstallOperationPasscodePolicyChanged:(unint64_t)a3;
- (void)_noteAutoInstallOperationWasCancelled;
- (void)cancel;
- (void)dealloc;
- (void)setAgreementStatus:(int)a3;
@end

@implementation SUAutoInstallOperation

- (SUAutoInstallOperation)init
{
  v7.receiver = self;
  v7.super_class = SUAutoInstallOperation;
  v2 = [(SUAutoInstallOperation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_client, 0);
    id = v3->_id;
    v3->_id = 0;

    forecast = v3->_forecast;
    v3->_forecast = 0;

    v3->_agreementStatus = 0;
    *&v3->_expired = 0;
  }

  return v3;
}

- (SUAutoInstallOperation)initWithAutoInstallOperationModel:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SUAutoInstallOperation;
  v8 = [(SUAutoInstallOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_client, v7);
    v10 = [v6 id];
    id = v9->_id;
    v9->_id = v10;

    v12 = [v6 forecast];
    forecast = v9->_forecast;
    v9->_forecast = v12;

    v9->_agreementStatus = [v6 agreementStatus];
    *&v9->_expired = 0;
    [v7 _registerAutoInstallOperationClientHandler:v9];
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_client, 0);
  v3.receiver = self;
  v3.super_class = SUAutoInstallOperation;
  [(SUAutoInstallOperation *)&v3 dealloc];
}

- (void)setAgreementStatus:(int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_agreementStatus != a3)
  {
    v4->_agreementStatus = a3;
    if (a3 == 1)
    {
      WeakRetained = objc_loadWeakRetained(&v4->_client);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __45__SUAutoInstallOperation_setAgreementStatus___block_invoke;
      v11[3] = &unk_279CAAEB8;
      v11[4] = v4;
      [WeakRetained _consentAutoInstallOperation:v4 withResult:v11];

      v6 = objc_loadWeakRetained(&v4->_delegate);
      if (v6)
      {
        v7 = v6;
        v8 = objc_loadWeakRetained(&v4->_delegate);
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = objc_loadWeakRetained(&v4->_delegate);
          [v10 autoInstallOperationDidConsent:v4];
        }
      }
    }
  }

  objc_sync_exit(v4);
}

void __45__SUAutoInstallOperation_setAgreementStatus___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v12 = [v3 id];
  SULogInfo(@"consent to auto install operation (%@) result: %@, error: %@", v5, v6, v7, v8, v9, v10, v11, v12);
}

- (int)agreementStatus
{
  v2 = self;
  objc_sync_enter(v2);
  agreementStatus = v2->_agreementStatus;
  objc_sync_exit(v2);

  return agreementStatus;
}

- (void)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_canceled)
  {
    v2->_canceled = 1;
    WeakRetained = objc_loadWeakRetained(&v2->_client);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__SUAutoInstallOperation_cancel__block_invoke;
    v10[3] = &unk_279CAAEB8;
    v10[4] = v2;
    [WeakRetained _cancelAutoInstallOperation:v2 withResult:v10];

    v4 = objc_loadWeakRetained(&v2->_delegate);
    if (v4)
    {
      v5 = v4;
      v6 = objc_loadWeakRetained(&v2->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&v2->_delegate);
        [v8 autoInstallOperationWasCancelled:v2];
      }
    }
  }

  v9 = objc_loadWeakRetained(&v2->_client);
  [v9 _unregisterAutoInstallOperationClientHandler:v2];

  objc_sync_exit(v2);
}

void __32__SUAutoInstallOperation_cancel__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v12 = [v3 id];
  SULogInfo(@"cancel auto install operation (%@) result: %@, error: %@", v5, v6, v7, v8, v9, v10, v11, v12);
}

- (BOOL)isCanceled
{
  v2 = self;
  objc_sync_enter(v2);
  canceled = v2->_canceled;
  objc_sync_exit(v2);

  return canceled;
}

- (BOOL)isExpired
{
  v2 = self;
  objc_sync_enter(v2);
  expired = v2->_expired;
  objc_sync_exit(v2);

  return expired;
}

- (NSString)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[<%@:%p>", objc_opt_class(), v2];
  [v3 appendString:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(NSUUID *)v2->_id UUIDString];
  v7 = [v5 stringWithFormat:@"ID=%@|", v6];
  [v3 appendString:v7];

  if (v2->_agreementStatus == 1)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"AcceptedAgreementStatus=%@|", v8];
  [v3 appendString:v9];

  if (v2->_expired)
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"isExpired=%@|", v10];
  [v3 appendString:v11];

  v12 = MEMORY[0x277CCACA8];
  if ([(SUAutoInstallOperation *)v2 _isEffectivelyScheduled])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v14 = [v12 stringWithFormat:@"isScheduled=%@|", v13];
  [v3 appendString:v14];

  if (v2->_canceled)
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"isCancelled=%@|", v15];
  [v3 appendString:v16];

  v17 = MEMORY[0x277CCACA8];
  if ([(SUAutoInstallOperation *)v2 _isValidForScheduling])
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  v19 = [v17 stringWithFormat:@"isValidForScheduling=%@|", v18];
  [v3 appendString:v19];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ForecastDetails=%@", v2->_forecast];
  [v3 appendString:v20];

  [v3 appendString:@"]"];
  objc_sync_exit(v2);

  return v3;
}

- (void)_noteAutoInstallOperationWasCancelled
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_canceled)
  {
    obj->_canceled = 1;
    WeakRetained = objc_loadWeakRetained(&obj->_delegate);
    v2 = obj;
    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&obj->_delegate);
      v5 = objc_opt_respondsToSelector();

      v2 = obj;
      if (v5)
      {
        v6 = objc_loadWeakRetained(&obj->_delegate);
        [v6 autoInstallOperationWasCancelled:obj];

        v2 = obj;
      }
    }
  }

  v7 = objc_loadWeakRetained(&v2->_client);
  [v7 _unregisterAutoInstallOperationClientHandler:obj];

  objc_sync_exit(obj);
}

- (void)_noteAutoInstallOperationDidExpireWithError:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_expired)
  {
    v4->_expired = 1;
    WeakRetained = objc_loadWeakRetained(&v4->_delegate);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&v4->_delegate);
      v7 = objc_opt_respondsToSelector();

      v8 = objc_loadWeakRetained(&v4->_delegate);
      v9 = v8;
      if (v7)
      {
        [v8 autoInstallOperationDidExpire:v4 withError:v12];
      }

      else
      {
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
          goto LABEL_8;
        }

        v9 = objc_loadWeakRetained(&v4->_delegate);
        [v9 autoInstallOperationDidExpire:v4];
      }
    }
  }

LABEL_8:
  v11 = objc_loadWeakRetained(&v4->_client);
  [v11 _unregisterAutoInstallOperationClientHandler:v4];

  objc_sync_exit(v4);
}

- (void)_noteAutoInstallOperationDidConsent
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_agreementStatus != 1)
  {
    obj->_agreementStatus = 1;
    WeakRetained = objc_loadWeakRetained(&obj->_delegate);
    v2 = obj;
    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&obj->_delegate);
      v5 = objc_opt_respondsToSelector();

      v2 = obj;
      if (v5)
      {
        v6 = objc_loadWeakRetained(&obj->_delegate);
        [v6 autoInstallOperationDidConsent:obj];

        v2 = obj;
      }
    }
  }

  objc_sync_exit(v2);
}

- (void)_noteAutoInstallOperationIsReadyToInstall:(id)a3
{
  v18 = a3;
  v4 = self;
  objc_sync_enter(v4);
  expired = v4->_expired;
  if (v4->_canceled || v4->_expired)
  {
    v4->_canceled;
    SULogInfo(@"auto install operation (%@) not ready: canceled: %@, expired: %@", v5, v6, v7, v8, v9, v10, v11, v4->_id);
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:49 userInfo:0];
    v18[2](v18, 0, v17);
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&v4->_delegate);
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v15 = objc_loadWeakRetained(&v4->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&v4->_delegate);
      [v17 autoInstallOperationIsReadyToInstall:v4 withResponse:v18];
LABEL_7:
    }
  }

  objc_sync_exit(v4);
}

- (void)_noteAutoInstallOperationPasscodePolicyChanged:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained(&obj->_delegate);
  v5 = obj;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&obj->_delegate);
    v7 = objc_opt_respondsToSelector();

    v5 = obj;
    if (v7)
    {
      v8 = objc_loadWeakRetained(&obj->_delegate);
      [v8 autoInstallOperationPasscodePolicyDidChange:obj passcodePolicyType:a3];

      v5 = obj;
    }
  }

  objc_sync_exit(v5);
}

- (BOOL)_isEffectivelyScheduled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SUAutoInstallOperation *)v2 forecast];
  v4 = [v3 suEndDate];
  v5 = [(SUAutoInstallOperation *)v2 _isValidTillDate:v4];

  objc_sync_exit(v2);
  return v5;
}

- (BOOL)_isValidForScheduling
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SUAutoInstallOperation *)v2 forecast];
  v4 = [v3 suEndDate];
  v5 = [(SUAutoInstallOperation *)v2 _isValidTillDate:v4];

  objc_sync_exit(v2);
  return v5;
}

- (BOOL)_isValidTillDate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(SUAutoInstallOperation *)v5 isExpired]|| [(SUAutoInstallOperation *)v5 isCanceled])
  {
    v6 = 1;
  }

  else
  {
    v6 = [(SUAutoInstallOperation *)v5 _isDateExpired:v4];
  }

  objc_sync_exit(v5);

  return v6 ^ 1;
}

- (BOOL)_isDateExpired:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  v6 = [v4 laterDate:v5];

  return v6 == v5;
}

- (SUAutoInstallOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
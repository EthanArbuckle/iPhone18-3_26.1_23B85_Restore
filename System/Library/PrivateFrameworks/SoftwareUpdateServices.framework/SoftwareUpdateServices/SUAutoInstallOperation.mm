@interface SUAutoInstallOperation
- (BOOL)_isDateExpired:(id)expired;
- (BOOL)_isEffectivelyScheduled;
- (BOOL)_isValidForScheduling;
- (BOOL)_isValidTillDate:(id)date;
- (BOOL)isCanceled;
- (BOOL)isExpired;
- (NSString)description;
- (SUAutoInstallOperation)init;
- (SUAutoInstallOperation)initWithAutoInstallOperationModel:(id)model client:(id)client;
- (SUAutoInstallOperationDelegate)delegate;
- (int)agreementStatus;
- (void)_noteAutoInstallOperationDidConsent;
- (void)_noteAutoInstallOperationDidExpireWithError:(id)error;
- (void)_noteAutoInstallOperationIsReadyToInstall:(id)install;
- (void)_noteAutoInstallOperationPasscodePolicyChanged:(unint64_t)changed;
- (void)_noteAutoInstallOperationWasCancelled;
- (void)cancel;
- (void)dealloc;
- (void)setAgreementStatus:(int)status;
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

- (SUAutoInstallOperation)initWithAutoInstallOperationModel:(id)model client:(id)client
{
  modelCopy = model;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = SUAutoInstallOperation;
  v8 = [(SUAutoInstallOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_client, clientCopy);
    v10 = [modelCopy id];
    id = v9->_id;
    v9->_id = v10;

    forecast = [modelCopy forecast];
    forecast = v9->_forecast;
    v9->_forecast = forecast;

    v9->_agreementStatus = [modelCopy agreementStatus];
    *&v9->_expired = 0;
    [clientCopy _registerAutoInstallOperationClientHandler:v9];
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

- (void)setAgreementStatus:(int)status
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_agreementStatus != status)
  {
    selfCopy->_agreementStatus = status;
    if (status == 1)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_client);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __45__SUAutoInstallOperation_setAgreementStatus___block_invoke;
      v11[3] = &unk_279CAAEB8;
      v11[4] = selfCopy;
      [WeakRetained _consentAutoInstallOperation:selfCopy withResult:v11];

      v6 = objc_loadWeakRetained(&selfCopy->_delegate);
      if (v6)
      {
        v7 = v6;
        v8 = objc_loadWeakRetained(&selfCopy->_delegate);
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = objc_loadWeakRetained(&selfCopy->_delegate);
          [v10 autoInstallOperationDidConsent:selfCopy];
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agreementStatus = selfCopy->_agreementStatus;
  objc_sync_exit(selfCopy);

  return agreementStatus;
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_canceled)
  {
    selfCopy->_canceled = 1;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_client);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__SUAutoInstallOperation_cancel__block_invoke;
    v10[3] = &unk_279CAAEB8;
    v10[4] = selfCopy;
    [WeakRetained _cancelAutoInstallOperation:selfCopy withResult:v10];

    v4 = objc_loadWeakRetained(&selfCopy->_delegate);
    if (v4)
    {
      v5 = v4;
      v6 = objc_loadWeakRetained(&selfCopy->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&selfCopy->_delegate);
        [v8 autoInstallOperationWasCancelled:selfCopy];
      }
    }
  }

  v9 = objc_loadWeakRetained(&selfCopy->_client);
  [v9 _unregisterAutoInstallOperationClientHandler:selfCopy];

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  canceled = selfCopy->_canceled;
  objc_sync_exit(selfCopy);

  return canceled;
}

- (BOOL)isExpired
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  expired = selfCopy->_expired;
  objc_sync_exit(selfCopy);

  return expired;
}

- (NSString)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[<%@:%p>", objc_opt_class(), selfCopy];
  [v3 appendString:selfCopy];

  v5 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)selfCopy->_id UUIDString];
  v7 = [v5 stringWithFormat:@"ID=%@|", uUIDString];
  [v3 appendString:v7];

  if (selfCopy->_agreementStatus == 1)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"AcceptedAgreementStatus=%@|", v8];
  [v3 appendString:v9];

  if (selfCopy->_expired)
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
  if ([(SUAutoInstallOperation *)selfCopy _isEffectivelyScheduled])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v14 = [v12 stringWithFormat:@"isScheduled=%@|", v13];
  [v3 appendString:v14];

  if (selfCopy->_canceled)
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
  if ([(SUAutoInstallOperation *)selfCopy _isValidForScheduling])
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  v19 = [v17 stringWithFormat:@"isValidForScheduling=%@|", v18];
  [v3 appendString:v19];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ForecastDetails=%@", selfCopy->_forecast];
  [v3 appendString:v20];

  [v3 appendString:@"]"];
  objc_sync_exit(selfCopy);

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

- (void)_noteAutoInstallOperationDidExpireWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_expired)
  {
    selfCopy->_expired = 1;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&selfCopy->_delegate);
      v7 = objc_opt_respondsToSelector();

      v8 = objc_loadWeakRetained(&selfCopy->_delegate);
      v9 = v8;
      if (v7)
      {
        [v8 autoInstallOperationDidExpire:selfCopy withError:errorCopy];
      }

      else
      {
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
          goto LABEL_8;
        }

        v9 = objc_loadWeakRetained(&selfCopy->_delegate);
        [v9 autoInstallOperationDidExpire:selfCopy];
      }
    }
  }

LABEL_8:
  v11 = objc_loadWeakRetained(&selfCopy->_client);
  [v11 _unregisterAutoInstallOperationClientHandler:selfCopy];

  objc_sync_exit(selfCopy);
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

- (void)_noteAutoInstallOperationIsReadyToInstall:(id)install
{
  installCopy = install;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  expired = selfCopy->_expired;
  if (selfCopy->_canceled || selfCopy->_expired)
  {
    selfCopy->_canceled;
    SULogInfo(@"auto install operation (%@) not ready: canceled: %@, expired: %@", v5, v6, v7, v8, v9, v10, v11, selfCopy->_id);
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:49 userInfo:0];
    installCopy[2](installCopy, 0, v17);
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v15 = objc_loadWeakRetained(&selfCopy->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&selfCopy->_delegate);
      [v17 autoInstallOperationIsReadyToInstall:selfCopy withResponse:installCopy];
LABEL_7:
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_noteAutoInstallOperationPasscodePolicyChanged:(unint64_t)changed
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
      [v8 autoInstallOperationPasscodePolicyDidChange:obj passcodePolicyType:changed];

      v5 = obj;
    }
  }

  objc_sync_exit(v5);
}

- (BOOL)_isEffectivelyScheduled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  forecast = [(SUAutoInstallOperation *)selfCopy forecast];
  suEndDate = [forecast suEndDate];
  v5 = [(SUAutoInstallOperation *)selfCopy _isValidTillDate:suEndDate];

  objc_sync_exit(selfCopy);
  return v5;
}

- (BOOL)_isValidForScheduling
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  forecast = [(SUAutoInstallOperation *)selfCopy forecast];
  suEndDate = [forecast suEndDate];
  v5 = [(SUAutoInstallOperation *)selfCopy _isValidTillDate:suEndDate];

  objc_sync_exit(selfCopy);
  return v5;
}

- (BOOL)_isValidTillDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SUAutoInstallOperation *)selfCopy isExpired]|| [(SUAutoInstallOperation *)selfCopy isCanceled])
  {
    v6 = 1;
  }

  else
  {
    v6 = [(SUAutoInstallOperation *)selfCopy _isDateExpired:dateCopy];
  }

  objc_sync_exit(selfCopy);

  return v6 ^ 1;
}

- (BOOL)_isDateExpired:(id)expired
{
  v3 = MEMORY[0x277CBEAA8];
  expiredCopy = expired;
  date = [v3 date];
  v6 = [expiredCopy laterDate:date];

  return v6 == date;
}

- (SUAutoInstallOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
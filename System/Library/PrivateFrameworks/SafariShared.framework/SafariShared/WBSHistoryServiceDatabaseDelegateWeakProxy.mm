@interface WBSHistoryServiceDatabaseDelegateWeakProxy
- (WBSHistoryServiceDatabaseDelegateWeakProxy)initWithDelegate:(id)a3;
- (void)handleEvent:(id)a3 completionHandler:(id)a4;
- (void)reportPermanentIDsForItems:(id)a3 completionHandler:(id)a4;
- (void)reportPermanentIDsForVisits:(id)a3 completionHandler:(id)a4;
- (void)reportSevereError:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSHistoryServiceDatabaseDelegateWeakProxy

- (WBSHistoryServiceDatabaseDelegateWeakProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WBSHistoryServiceDatabaseDelegateWeakProxy;
  v5 = [(WBSHistoryServiceDatabaseDelegateWeakProxy *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = v6;
  }

  return v6;
}

- (void)reportPermanentIDsForItems:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportPermanentIDsForItems:v9 completionHandler:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)reportPermanentIDsForVisits:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportPermanentIDsForVisits:v9 completionHandler:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)reportSevereError:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportSevereError:v9 completionHandler:v6];
  }

  else
  {
    v6[2](v6);
  }
}

- (void)handleEvent:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleEvent:v10 completionHandler:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    v6[2](v6, v9);
  }
}

@end
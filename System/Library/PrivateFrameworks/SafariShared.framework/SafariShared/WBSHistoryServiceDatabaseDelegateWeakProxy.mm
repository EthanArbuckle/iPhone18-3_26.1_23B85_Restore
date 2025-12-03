@interface WBSHistoryServiceDatabaseDelegateWeakProxy
- (WBSHistoryServiceDatabaseDelegateWeakProxy)initWithDelegate:(id)delegate;
- (void)handleEvent:(id)event completionHandler:(id)handler;
- (void)reportPermanentIDsForItems:(id)items completionHandler:(id)handler;
- (void)reportPermanentIDsForVisits:(id)visits completionHandler:(id)handler;
- (void)reportSevereError:(id)error completionHandler:(id)handler;
@end

@implementation WBSHistoryServiceDatabaseDelegateWeakProxy

- (WBSHistoryServiceDatabaseDelegateWeakProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = WBSHistoryServiceDatabaseDelegateWeakProxy;
  v5 = [(WBSHistoryServiceDatabaseDelegateWeakProxy *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (void)reportPermanentIDsForItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportPermanentIDsForItems:itemsCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)reportPermanentIDsForVisits:(id)visits completionHandler:(id)handler
{
  visitsCopy = visits;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportPermanentIDsForVisits:visitsCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)reportSevereError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportSevereError:errorCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)handleEvent:(id)event completionHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleEvent:eventCopy completionHandler:handlerCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    handlerCopy[2](handlerCopy, v9);
  }
}

@end
@interface SMCCoreTelephonyClient
- (SMCCoreTelephonyClient)initWithQueue:(id)queue;
- (SMCCoreTelephonyClientDelegate)delegate;
- (void)_updatePreferredDataSubscriptionContext;
- (void)activate;
- (void)dataSettingsChanged:(id)changed;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)internetDataStatus:(id)status;
- (void)roaming:(char *)roaming error:(id *)error;
- (void)servingNetworkChanged:(id)changed;
@end

@implementation SMCCoreTelephonyClient

- (void)activate
{
  v3 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:self->_queue];
  ctClient = self->_ctClient;
  self->_ctClient = v3;

  [(CoreTelephonyClient *)self->_ctClient setDelegate:self];
  v5 = *MEMORY[0x1E695E480];
  queue = self->_queue;
  self->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();
  v7 = self->_ctClient;
  v11 = 0;
  v8 = [(CoreTelephonyClient *)v7 getPreferredDataSubscriptionContextSync:&v11];
  v9 = v11;
  preferredDataSubscriptionContext = self->_preferredDataSubscriptionContext;
  self->_preferredDataSubscriptionContext = v8;
}

- (SMCCoreTelephonyClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SMCCoreTelephonyClient;
  v6 = [(SMCCoreTelephonyClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)roaming:(char *)roaming error:(id *)error
{
  v5 = [(CoreTelephonyClient *)self->_ctClient getDataStatus:0 error:error];
  if (v5)
  {
    v7 = v5;
    v6 = [v5 inHomeCountry] ^ 1;
    v5 = v7;
    *roaming = v6;
  }
}

- (void)_updatePreferredDataSubscriptionContext
{
  ctClient = self->_ctClient;
  v7 = 0;
  v4 = [(CoreTelephonyClient *)ctClient getPreferredDataSubscriptionContextSync:&v7];
  v5 = v7;
  preferredDataSubscriptionContext = self->_preferredDataSubscriptionContext;
  self->_preferredDataSubscriptionContext = v4;
}

- (void)dataSettingsChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isCellularDataEnabled = [changedCopy isCellularDataEnabled];

  [WeakRetained cellularDataStateChangedWithCellularDataEnabled:isCellularDataEnabled];
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  infoCopy = info;
  if ([(CTXPCServiceSubscriptionContext *)self->_preferredDataSubscriptionContext isEqual:status])
  {
    v6 = [(SMCCoreTelephonyClient *)self _getRoamingFromDataStatus:infoCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained cellularDataStateChangedWithRoaming:v6];
  }
}

- (void)internetDataStatus:(id)status
{
  v4 = [(SMCCoreTelephonyClient *)self _getRoamingFromDataStatus:status];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cellularDataStateChangedWithRoaming:v4];
}

- (void)servingNetworkChanged:(id)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cellularDataStateChanged];
}

- (SMCCoreTelephonyClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
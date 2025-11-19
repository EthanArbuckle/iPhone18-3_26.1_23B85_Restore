@interface SMCCoreTelephonyClient
- (SMCCoreTelephonyClient)initWithQueue:(id)a3;
- (SMCCoreTelephonyClientDelegate)delegate;
- (void)_updatePreferredDataSubscriptionContext;
- (void)activate;
- (void)dataSettingsChanged:(id)a3;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)internetDataStatus:(id)a3;
- (void)roaming:(char *)a3 error:(id *)a4;
- (void)servingNetworkChanged:(id)a3;
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

- (SMCCoreTelephonyClient)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SMCCoreTelephonyClient;
  v6 = [(SMCCoreTelephonyClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)roaming:(char *)a3 error:(id *)a4
{
  v5 = [(CoreTelephonyClient *)self->_ctClient getDataStatus:0 error:a4];
  if (v5)
  {
    v7 = v5;
    v6 = [v5 inHomeCountry] ^ 1;
    v5 = v7;
    *a3 = v6;
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

- (void)dataSettingsChanged:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 isCellularDataEnabled];

  [WeakRetained cellularDataStateChangedWithCellularDataEnabled:v5];
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v8 = a4;
  if ([(CTXPCServiceSubscriptionContext *)self->_preferredDataSubscriptionContext isEqual:a3])
  {
    v6 = [(SMCCoreTelephonyClient *)self _getRoamingFromDataStatus:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained cellularDataStateChangedWithRoaming:v6];
  }
}

- (void)internetDataStatus:(id)a3
{
  v4 = [(SMCCoreTelephonyClient *)self _getRoamingFromDataStatus:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cellularDataStateChangedWithRoaming:v4];
}

- (void)servingNetworkChanged:(id)a3
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
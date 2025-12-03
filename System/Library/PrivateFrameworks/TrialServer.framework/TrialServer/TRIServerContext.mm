@interface TRIServerContext
- (TRIPushServiceConnectionMultiplexing)pushServiceMuxer;
- (TRIServerContext)initWithPaths:(id)paths client:(id)client storageManagement:(id)management xpcActivityManagement:(id)activityManagement;
- (TRITaskQueuing)taskQueue;
- (TRIXPCActivityManagementProtocol)xpcActivityManager;
- (id)ensureFakeCKDatabase;
- (void)_logInitErrorWithClient:(id)client message:(id)message;
- (void)logErrorMetric:(id)metric;
@end

@implementation TRIServerContext

- (void)logErrorMetric:(id)metric
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D73B40] metricWithName:@"server_error" categoricalValue:metric];
  client = [(TRIServerContext *)self client];
  logger = [client logger];
  client2 = [(TRIServerContext *)self client];
  trackingId = [client2 trackingId];
  v11[0] = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [logger logWithTrackingId:trackingId metrics:v9 dimensions:0 trialSystemTelemetry:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_logInitErrorWithClient:(id)client message:(id)message
{
  v13 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  clientCopy = client;
  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = messageCopy;
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
  }

  v9 = [clientCopy shouldLogAtLevel:50 withPrivacyRadar:54260918];
  if (v9)
  {
    [(TRIServerContext *)self logErrorMetric:messageCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (TRIServerContext)initWithPaths:(id)paths client:(id)client storageManagement:(id)management xpcActivityManagement:(id)activityManagement
{
  pathsCopy = paths;
  clientCopy = client;
  managementCopy = management;
  activityManagementCopy = activityManagement;
  if (pathsCopy)
  {
    if (clientCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"client"}];

    if (managementCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"paths"}];

  if (!clientCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (managementCopy)
  {
    goto LABEL_4;
  }

LABEL_14:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"storageManagement"}];

LABEL_4:
  v49.receiver = self;
  v49.super_class = TRIServerContext;
  v16 = [(TRIServerContext *)&v49 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_paths, paths);
    objc_storeStrong(&v17->_client, client);
    v18 = [[TRIDatabase alloc] initWithPaths:v17->_paths storageManagement:managementCopy];
    if (!v18)
    {
      [(TRIServerContext *)v17 _logInitErrorWithClient:v17->_client message:@"TRIDServer failed to initialize db"];
      v43 = 0;
      goto LABEL_11;
    }

    underlyingDatabase = v17->_underlyingDatabase;
    v17->_underlyingDatabase = v18;
    v20 = v18;

    v21 = [[TRIExperimentDatabase alloc] initWithDatabase:v17->_underlyingDatabase];
    experimentDatabase = v17->_experimentDatabase;
    v17->_experimentDatabase = v21;

    v23 = [[TRIExperimentHistoryDatabase alloc] initWithDatabase:v17->_underlyingDatabase];
    experimentHistoryDatabase = v17->_experimentHistoryDatabase;
    v17->_experimentHistoryDatabase = v23;

    v25 = [[TRINamespaceDatabase alloc] initWithDatabase:v17->_underlyingDatabase];
    namespaceDatabase = v17->_namespaceDatabase;
    v17->_namespaceDatabase = v25;

    v27 = [[TRIActivationEventDatabase alloc] initWithDatabase:v17->_underlyingDatabase];
    activationEventDatabase = v17->_activationEventDatabase;
    v17->_activationEventDatabase = v27;

    v29 = [[TRIRolloutDatabase alloc] initWithDatabase:v17->_underlyingDatabase];
    rolloutDatabase = v17->_rolloutDatabase;
    v17->_rolloutDatabase = v29;

    v31 = [[TRIRolloutHistoryDatabase alloc] initWithDatabase:v17->_underlyingDatabase];
    rolloutHistoryDatabase = v17->_rolloutHistoryDatabase;
    v17->_rolloutHistoryDatabase = v31;

    v33 = [TRITaskDatabase alloc];
    v34 = v17->_underlyingDatabase;
    v35 = +[TRITaskSupport sharedInstance];
    v36 = [(TRITaskDatabase *)v33 initWithDatabase:v34 taskSetProvider:v35];
    taskDatabase = v17->_taskDatabase;
    v17->_taskDatabase = v36;

    v38 = [[TRIKVStore alloc] initWithDatabase:v17->_underlyingDatabase];
    keyValueStore = v17->_keyValueStore;
    v17->_keyValueStore = v38;

    v40 = [[TRIContentTracker alloc] initWithDatabase:v17->_underlyingDatabase];
    contentTracker = v17->_contentTracker;
    v17->_contentTracker = v40;

    objc_storeWeak(&v17->_xpcActivityManager, activityManagementCopy);
    v42 = TRILogCategory_Server();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v42, OS_LOG_TYPE_DEFAULT, "Successfully initialized TRIServerContext", buf, 2u);
    }
  }

  v43 = v17;
LABEL_11:

  return v43;
}

- (TRITaskQueuing)taskQueue
{
  taskQueue = self->_taskQueue;
  if (!taskQueue)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:105 description:@"Task queue unexpectedly nil in server context"];

    taskQueue = self->_taskQueue;
  }

  return taskQueue;
}

- (TRIPushServiceConnectionMultiplexing)pushServiceMuxer
{
  pushServiceMuxer = self->_pushServiceMuxer;
  if (!pushServiceMuxer)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:110 description:@"Push service muxer unexpectedly nil in server context"];

    pushServiceMuxer = self->_pushServiceMuxer;
  }

  return pushServiceMuxer;
}

- (id)ensureFakeCKDatabase
{
  fakeCKDatabase = [(TRIServerContext *)self fakeCKDatabase];

  if (!fakeCKDatabase)
  {
    mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
    trialRootDir = [mEMORY[0x277D737E0] trialRootDir];
    v7 = [trialRootDir stringByAppendingPathComponent:@"CKSQLiteMock/Database"];

    trialRootDir2 = [mEMORY[0x277D737E0] trialRootDir];
    v9 = [trialRootDir2 stringByAppendingPathComponent:@"CKSQLiteMock/AssetCache"];

    v10 = [[TRISQLiteCKDatabase alloc] initWithParentDir:v7 assetCacheDir:v9];
    [(TRIServerContext *)self setFakeCKDatabase:v10];

    fakeCKDatabase2 = [(TRIServerContext *)self fakeCKDatabase];

    if (!fakeCKDatabase2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:123 description:@"Failed to instantiate TRISQLiteCKDatabase"];
    }
  }

  fakeCKDatabase3 = [(TRIServerContext *)self fakeCKDatabase];
  if (!fakeCKDatabase3)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:125 description:{@"Expression was unexpectedly nil/false: %@", @"self.fakeCKDatabase"}];
  }

  return fakeCKDatabase3;
}

- (TRIXPCActivityManagementProtocol)xpcActivityManager
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcActivityManager);

  return WeakRetained;
}

@end
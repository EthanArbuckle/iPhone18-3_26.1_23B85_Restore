@interface TRIServerContext
- (TRIPushServiceConnectionMultiplexing)pushServiceMuxer;
- (TRIServerContext)initWithPaths:(id)a3 client:(id)a4 storageManagement:(id)a5 xpcActivityManagement:(id)a6;
- (TRITaskQueuing)taskQueue;
- (TRIXPCActivityManagementProtocol)xpcActivityManager;
- (id)ensureFakeCKDatabase;
- (void)_logInitErrorWithClient:(id)a3 message:(id)a4;
- (void)logErrorMetric:(id)a3;
@end

@implementation TRIServerContext

- (void)logErrorMetric:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D73B40] metricWithName:@"server_error" categoricalValue:a3];
  v5 = [(TRIServerContext *)self client];
  v6 = [v5 logger];
  v7 = [(TRIServerContext *)self client];
  v8 = [v7 trackingId];
  v11[0] = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v6 logWithTrackingId:v8 metrics:v9 dimensions:0 trialSystemTelemetry:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_logInitErrorWithClient:(id)a3 message:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
  }

  v9 = [v7 shouldLogAtLevel:50 withPrivacyRadar:54260918];
  if (v9)
  {
    [(TRIServerContext *)self logErrorMetric:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (TRIServerContext)initWithPaths:(id)a3 client:(id)a4 storageManagement:(id)a5 xpcActivityManagement:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:
    v46 = [MEMORY[0x277CCA890] currentHandler];
    [v46 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"client"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v45 = [MEMORY[0x277CCA890] currentHandler];
  [v45 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"paths"}];

  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_14:
  v47 = [MEMORY[0x277CCA890] currentHandler];
  [v47 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"storageManagement"}];

LABEL_4:
  v49.receiver = self;
  v49.super_class = TRIServerContext;
  v16 = [(TRIServerContext *)&v49 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_paths, a3);
    objc_storeStrong(&v17->_client, a4);
    v18 = [[TRIDatabase alloc] initWithPaths:v17->_paths storageManagement:v14];
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

    objc_storeWeak(&v17->_xpcActivityManager, v15);
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
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:105 description:@"Task queue unexpectedly nil in server context"];

    taskQueue = self->_taskQueue;
  }

  return taskQueue;
}

- (TRIPushServiceConnectionMultiplexing)pushServiceMuxer
{
  pushServiceMuxer = self->_pushServiceMuxer;
  if (!pushServiceMuxer)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:110 description:@"Push service muxer unexpectedly nil in server context"];

    pushServiceMuxer = self->_pushServiceMuxer;
  }

  return pushServiceMuxer;
}

- (id)ensureFakeCKDatabase
{
  v4 = [(TRIServerContext *)self fakeCKDatabase];

  if (!v4)
  {
    v5 = [MEMORY[0x277D737E0] sharedPaths];
    v6 = [v5 trialRootDir];
    v7 = [v6 stringByAppendingPathComponent:@"CKSQLiteMock/Database"];

    v8 = [v5 trialRootDir];
    v9 = [v8 stringByAppendingPathComponent:@"CKSQLiteMock/AssetCache"];

    v10 = [[TRISQLiteCKDatabase alloc] initWithParentDir:v7 assetCacheDir:v9];
    [(TRIServerContext *)self setFakeCKDatabase:v10];

    v11 = [(TRIServerContext *)self fakeCKDatabase];

    if (!v11)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:123 description:@"Failed to instantiate TRISQLiteCKDatabase"];
    }
  }

  v12 = [(TRIServerContext *)self fakeCKDatabase];
  if (!v12)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerContext.m" lineNumber:125 description:{@"Expression was unexpectedly nil/false: %@", @"self.fakeCKDatabase"}];
  }

  return v12;
}

- (TRIXPCActivityManagementProtocol)xpcActivityManager
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcActivityManager);

  return WeakRetained;
}

@end
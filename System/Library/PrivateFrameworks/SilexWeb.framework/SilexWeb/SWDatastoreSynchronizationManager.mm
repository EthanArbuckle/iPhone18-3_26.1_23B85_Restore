@interface SWDatastoreSynchronizationManager
- (SWDatastoreManager)datastoreManager;
- (SWDatastoreManager)localDatastoreManager;
- (SWDatastoreSynchronizationManager)initWithSettingsFactory:(id)factory scriptsManager:(id)manager messageHandlerManager:(id)handlerManager sessionManager:(id)sessionManager logger:(id)logger;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
- (void)synchronizeDatastore:(id)datastore from:(id)from previousDatastore:(id)previousDatastore originatingSession:(id)session queueable:(BOOL)queueable completion:(id)completion;
@end

@implementation SWDatastoreSynchronizationManager

- (SWDatastoreSynchronizationManager)initWithSettingsFactory:(id)factory scriptsManager:(id)manager messageHandlerManager:(id)handlerManager sessionManager:(id)sessionManager logger:(id)logger
{
  factoryCopy = factory;
  managerCopy = manager;
  handlerManagerCopy = handlerManager;
  sessionManagerCopy = sessionManager;
  loggerCopy = logger;
  v21.receiver = self;
  v21.super_class = SWDatastoreSynchronizationManager;
  v18 = [(SWDatastoreSynchronizationManager *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_settingsFactory, factory);
    objc_storeStrong(&v19->_scriptsManager, manager);
    objc_storeStrong(&v19->_sessionManager, sessionManager);
    objc_storeStrong(&v19->_logger, logger);
    [handlerManagerCopy addMessageHandler:v19 name:@"datastore"];
    [handlerManagerCopy addMessageHandler:v19 name:@"localDatastore"];
  }

  return v19;
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  messageCopy = message;
  name = [messageCopy name];
  v7 = [name isEqualToString:@"localDatastore"];

  logger = [(SWDatastoreSynchronizationManager *)self logger];
  v9 = MEMORY[0x1E696AEC0];
  body = [messageCopy body];
  v11 = body;
  if (v7)
  {
    v12 = [v9 stringWithFormat:@"Received local datastore update message: %@", body];
    [logger log:v12];

    settingsFactory = [(SWDatastoreSynchronizationManager *)self settingsFactory];
    v19 = [settingsFactory createDatastoreFromMessage:messageCopy];

    [(SWDatastoreSynchronizationManager *)self localDatastoreManager];
  }

  else
  {
    v14 = [v9 stringWithFormat:@"Received shared datastore update message: %@", body];
    [logger log:v14];

    settingsFactory2 = [(SWDatastoreSynchronizationManager *)self settingsFactory];
    v19 = [settingsFactory2 createDatastoreFromMessage:messageCopy];

    [(SWDatastoreSynchronizationManager *)self datastoreManager];
  }
  v16 = ;
  sessionManager = [(SWDatastoreSynchronizationManager *)self sessionManager];
  session = [sessionManager session];
  [v16 updateDatastore:v19 originatingSession:session options:0 completion:0];
}

- (void)synchronizeDatastore:(id)datastore from:(id)from previousDatastore:(id)previousDatastore originatingSession:(id)session queueable:(BOOL)queueable completion:(id)completion
{
  queueableCopy = queueable;
  completionCopy = completion;
  sessionCopy = session;
  previousDatastoreCopy = previousDatastore;
  fromCopy = from;
  datastoreCopy = datastore;
  localDatastoreManager = [(SWDatastoreSynchronizationManager *)self localDatastoreManager];

  logger = [(SWDatastoreSynchronizationManager *)self logger];
  v20 = MEMORY[0x1E696AEC0];
  identifier = [sessionCopy identifier];
  v22 = identifier;
  if (localDatastoreManager == fromCopy)
  {
    v23 = @"Received local datastore change callback with originating session: %@";
  }

  else
  {
    v23 = @"Received shared datastore change callback with originating session: %@";
  }

  if (localDatastoreManager == fromCopy)
  {
    v24 = off_1E84DAF30;
  }

  else
  {
    v24 = off_1E84DAE78;
  }

  v25 = [v20 stringWithFormat:v23, identifier];
  [logger log:v25];

  v31 = [objc_alloc(*v24) initWithDatastore:datastoreCopy oldDatastore:previousDatastoreCopy originatingSession:sessionCopy queueable:queueableCopy];
  scriptsManager = [(SWDatastoreSynchronizationManager *)self scriptsManager];
  identifier2 = [v31 identifier];
  [scriptsManager removeScriptByIdentifier:identifier2];

  scriptsManager2 = [(SWDatastoreSynchronizationManager *)self scriptsManager];
  [scriptsManager2 executeScript:v31 completion:completionCopy];

  scriptsManager3 = [(SWDatastoreSynchronizationManager *)self scriptsManager];
  [scriptsManager3 addScript:v31];
}

- (SWDatastoreManager)datastoreManager
{
  WeakRetained = objc_loadWeakRetained(&self->_datastoreManager);

  return WeakRetained;
}

- (SWDatastoreManager)localDatastoreManager
{
  WeakRetained = objc_loadWeakRetained(&self->_localDatastoreManager);

  return WeakRetained;
}

@end
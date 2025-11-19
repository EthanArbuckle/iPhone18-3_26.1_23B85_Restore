@interface SWDatastoreSynchronizationManager
- (SWDatastoreManager)datastoreManager;
- (SWDatastoreManager)localDatastoreManager;
- (SWDatastoreSynchronizationManager)initWithSettingsFactory:(id)a3 scriptsManager:(id)a4 messageHandlerManager:(id)a5 sessionManager:(id)a6 logger:(id)a7;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
- (void)synchronizeDatastore:(id)a3 from:(id)a4 previousDatastore:(id)a5 originatingSession:(id)a6 queueable:(BOOL)a7 completion:(id)a8;
@end

@implementation SWDatastoreSynchronizationManager

- (SWDatastoreSynchronizationManager)initWithSettingsFactory:(id)a3 scriptsManager:(id)a4 messageHandlerManager:(id)a5 sessionManager:(id)a6 logger:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = SWDatastoreSynchronizationManager;
  v18 = [(SWDatastoreSynchronizationManager *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_settingsFactory, a3);
    objc_storeStrong(&v19->_scriptsManager, a4);
    objc_storeStrong(&v19->_sessionManager, a6);
    objc_storeStrong(&v19->_logger, a7);
    [v15 addMessageHandler:v19 name:@"datastore"];
    [v15 addMessageHandler:v19 name:@"localDatastore"];
  }

  return v19;
}

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v5 = a3;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"localDatastore"];

  v8 = [(SWDatastoreSynchronizationManager *)self logger];
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v5 body];
  v11 = v10;
  if (v7)
  {
    v12 = [v9 stringWithFormat:@"Received local datastore update message: %@", v10];
    [v8 log:v12];

    v13 = [(SWDatastoreSynchronizationManager *)self settingsFactory];
    v19 = [v13 createDatastoreFromMessage:v5];

    [(SWDatastoreSynchronizationManager *)self localDatastoreManager];
  }

  else
  {
    v14 = [v9 stringWithFormat:@"Received shared datastore update message: %@", v10];
    [v8 log:v14];

    v15 = [(SWDatastoreSynchronizationManager *)self settingsFactory];
    v19 = [v15 createDatastoreFromMessage:v5];

    [(SWDatastoreSynchronizationManager *)self datastoreManager];
  }
  v16 = ;
  v17 = [(SWDatastoreSynchronizationManager *)self sessionManager];
  v18 = [v17 session];
  [v16 updateDatastore:v19 originatingSession:v18 options:0 completion:0];
}

- (void)synchronizeDatastore:(id)a3 from:(id)a4 previousDatastore:(id)a5 originatingSession:(id)a6 queueable:(BOOL)a7 completion:(id)a8
{
  v30 = a7;
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(SWDatastoreSynchronizationManager *)self localDatastoreManager];

  v19 = [(SWDatastoreSynchronizationManager *)self logger];
  v20 = MEMORY[0x1E696AEC0];
  v21 = [v14 identifier];
  v22 = v21;
  if (v18 == v16)
  {
    v23 = @"Received local datastore change callback with originating session: %@";
  }

  else
  {
    v23 = @"Received shared datastore change callback with originating session: %@";
  }

  if (v18 == v16)
  {
    v24 = off_1E84DAF30;
  }

  else
  {
    v24 = off_1E84DAE78;
  }

  v25 = [v20 stringWithFormat:v23, v21];
  [v19 log:v25];

  v31 = [objc_alloc(*v24) initWithDatastore:v17 oldDatastore:v15 originatingSession:v14 queueable:v30];
  v26 = [(SWDatastoreSynchronizationManager *)self scriptsManager];
  v27 = [v31 identifier];
  [v26 removeScriptByIdentifier:v27];

  v28 = [(SWDatastoreSynchronizationManager *)self scriptsManager];
  [v28 executeScript:v31 completion:v13];

  v29 = [(SWDatastoreSynchronizationManager *)self scriptsManager];
  [v29 addScript:v31];
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
@interface SWLocalDatastoreSetupTask
- (SWLocalDatastoreSetupTask)initWithDatastoreManager:(id)manager scriptsManager:(id)scriptsManager;
- (void)performSetup;
@end

@implementation SWLocalDatastoreSetupTask

- (SWLocalDatastoreSetupTask)initWithDatastoreManager:(id)manager scriptsManager:(id)scriptsManager
{
  managerCopy = manager;
  scriptsManagerCopy = scriptsManager;
  v12.receiver = self;
  v12.super_class = SWLocalDatastoreSetupTask;
  v9 = [(SWLocalDatastoreSetupTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_datastoreManager, manager);
    objc_storeStrong(&v10->_scriptsManager, scriptsManager);
  }

  return v10;
}

- (void)performSetup
{
  v3 = [SWLocalDatastoreSetupScript alloc];
  datastoreManager = [(SWLocalDatastoreSetupTask *)self datastoreManager];
  datastore = [datastoreManager datastore];
  v7 = [(SWLocalDatastoreSetupScript *)v3 initWithDatastore:datastore];

  scriptsManager = [(SWLocalDatastoreSetupTask *)self scriptsManager];
  [scriptsManager addScript:v7];
}

@end
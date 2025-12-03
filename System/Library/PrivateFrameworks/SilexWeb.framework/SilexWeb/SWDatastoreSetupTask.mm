@interface SWDatastoreSetupTask
- (SWDatastoreSetupTask)initWithDatastoreManager:(id)manager scriptsManager:(id)scriptsManager;
- (void)performSetup;
@end

@implementation SWDatastoreSetupTask

- (SWDatastoreSetupTask)initWithDatastoreManager:(id)manager scriptsManager:(id)scriptsManager
{
  managerCopy = manager;
  scriptsManagerCopy = scriptsManager;
  v12.receiver = self;
  v12.super_class = SWDatastoreSetupTask;
  v9 = [(SWDatastoreSetupTask *)&v12 init];
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
  v3 = [SWDatastoreSetupScript alloc];
  datastoreManager = [(SWDatastoreSetupTask *)self datastoreManager];
  datastore = [datastoreManager datastore];
  v7 = [(SWDatastoreSetupScript *)v3 initWithDatastore:datastore];

  scriptsManager = [(SWDatastoreSetupTask *)self scriptsManager];
  [scriptsManager addScript:v7];
}

@end
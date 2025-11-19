@interface SWLocalDatastoreSetupTask
- (SWLocalDatastoreSetupTask)initWithDatastoreManager:(id)a3 scriptsManager:(id)a4;
- (void)performSetup;
@end

@implementation SWLocalDatastoreSetupTask

- (SWLocalDatastoreSetupTask)initWithDatastoreManager:(id)a3 scriptsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SWLocalDatastoreSetupTask;
  v9 = [(SWLocalDatastoreSetupTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_datastoreManager, a3);
    objc_storeStrong(&v10->_scriptsManager, a4);
  }

  return v10;
}

- (void)performSetup
{
  v3 = [SWLocalDatastoreSetupScript alloc];
  v4 = [(SWLocalDatastoreSetupTask *)self datastoreManager];
  v5 = [v4 datastore];
  v7 = [(SWLocalDatastoreSetupScript *)v3 initWithDatastore:v5];

  v6 = [(SWLocalDatastoreSetupTask *)self scriptsManager];
  [v6 addScript:v7];
}

@end
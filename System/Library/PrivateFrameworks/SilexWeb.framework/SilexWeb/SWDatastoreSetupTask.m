@interface SWDatastoreSetupTask
- (SWDatastoreSetupTask)initWithDatastoreManager:(id)a3 scriptsManager:(id)a4;
- (void)performSetup;
@end

@implementation SWDatastoreSetupTask

- (SWDatastoreSetupTask)initWithDatastoreManager:(id)a3 scriptsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SWDatastoreSetupTask;
  v9 = [(SWDatastoreSetupTask *)&v12 init];
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
  v3 = [SWDatastoreSetupScript alloc];
  v4 = [(SWDatastoreSetupTask *)self datastoreManager];
  v5 = [v4 datastore];
  v7 = [(SWDatastoreSetupScript *)v3 initWithDatastore:v5];

  v6 = [(SWDatastoreSetupTask *)self scriptsManager];
  [v6 addScript:v7];
}

@end
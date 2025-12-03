@interface SWLocalDatastoreSetupScript
+ (id)source;
- (SWLocalDatastoreSetupScript)initWithDatastore:(id)datastore;
- (WKUserScript)userScript;
@end

@implementation SWLocalDatastoreSetupScript

- (SWLocalDatastoreSetupScript)initWithDatastore:(id)datastore
{
  datastoreCopy = datastore;
  v9.receiver = self;
  v9.super_class = SWLocalDatastoreSetupScript;
  v6 = [(SWLocalDatastoreSetupScript *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datastore, datastore);
  }

  return v7;
}

- (WKUserScript)userScript
{
  v3 = MEMORY[0x1E696AEC0];
  source = [objc_opt_class() source];
  datastore = [(SWLocalDatastoreSetupScript *)self datastore];
  jSONString = [datastore JSONString];
  v7 = [v3 stringWithFormat:source, jSONString];

  v8 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v7 injectionTime:0 forMainFrameOnly:1];

  return v8;
}

+ (id)source
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SWLocalDatastoreSetupScript_source__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (source_onceToken != -1)
  {
    dispatch_once(&source_onceToken, block);
  }

  v2 = source_source;

  return v2;
}

void __37__SWLocalDatastoreSetupScript_source__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v2 URLForResource:@"local-datastore-setup" withExtension:@"js"];

  v3 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v5 encoding:4 error:0];
  v4 = source_source;
  source_source = v3;
}

@end
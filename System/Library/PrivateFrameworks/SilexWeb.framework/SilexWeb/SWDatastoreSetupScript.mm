@interface SWDatastoreSetupScript
+ (id)source;
- (SWDatastoreSetupScript)initWithDatastore:(id)datastore;
- (WKUserScript)userScript;
@end

@implementation SWDatastoreSetupScript

- (SWDatastoreSetupScript)initWithDatastore:(id)datastore
{
  datastoreCopy = datastore;
  v9.receiver = self;
  v9.super_class = SWDatastoreSetupScript;
  v6 = [(SWDatastoreSetupScript *)&v9 init];
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
  datastore = [(SWDatastoreSetupScript *)self datastore];
  jSONString = [datastore JSONString];
  v7 = [v3 stringWithFormat:source, jSONString];

  v8 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v7 injectionTime:0 forMainFrameOnly:1];

  return v8;
}

+ (id)source
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SWDatastoreSetupScript_source__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (source_onceToken_0 != -1)
  {
    dispatch_once(&source_onceToken_0, block);
  }

  v2 = source_source_0;

  return v2;
}

void __32__SWDatastoreSetupScript_source__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v2 URLForResource:@"datastore-setup" withExtension:@"js"];

  v3 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v5 encoding:4 error:0];
  v4 = source_source_0;
  source_source_0 = v3;
}

@end
@interface SWDatastoreUpdateScript
+ (id)executableSource;
+ (id)userScriptSource;
- (NSString)executableScript;
- (SWDatastoreUpdateScript)initWithDatastore:(id)a3 oldDatastore:(id)a4 originatingSession:(id)a5 queueable:(BOOL)a6;
- (WKUserScript)userScript;
@end

@implementation SWDatastoreUpdateScript

- (SWDatastoreUpdateScript)initWithDatastore:(id)a3 oldDatastore:(id)a4 originatingSession:(id)a5 queueable:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SWDatastoreUpdateScript;
  v14 = [(SWDatastoreUpdateScript *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_datastore, a3);
    objc_storeStrong(&v15->_oldDatastore, a4);
    objc_storeStrong(&v15->_originatingSession, a5);
    v15->_queueable = a6;
  }

  return v15;
}

- (WKUserScript)userScript
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() userScriptSource];
  v5 = [(SWDatastoreUpdateScript *)self datastore];
  v6 = [v5 JSONString];
  v7 = [v3 stringWithFormat:v4, v6];

  v8 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v7 injectionTime:0 forMainFrameOnly:1];

  return v8;
}

+ (id)userScriptSource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SWDatastoreUpdateScript_userScriptSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (userScriptSource_onceToken_0 != -1)
  {
    dispatch_once(&userScriptSource_onceToken_0, block);
  }

  v2 = userScriptSource_source_0;

  return v2;
}

void __43__SWDatastoreUpdateScript_userScriptSource__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v2 URLForResource:@"datastore-init" withExtension:@"js"];

  v3 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v5 encoding:4 error:0];
  v4 = userScriptSource_source_0;
  userScriptSource_source_0 = v3;
}

- (NSString)executableScript
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() executableSource];
  v5 = [(SWDatastoreUpdateScript *)self datastore];
  v6 = [v5 JSONString];
  v7 = [(SWDatastoreUpdateScript *)self oldDatastore];
  v8 = [v7 JSONString];
  v9 = [(SWDatastoreUpdateScript *)self originatingSession];
  v10 = [v9 identifier];
  v11 = [v3 stringWithFormat:v4, v6, v8, v10];

  return v11;
}

+ (id)executableSource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SWDatastoreUpdateScript_executableSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (executableSource_onceToken_1 != -1)
  {
    dispatch_once(&executableSource_onceToken_1, block);
  }

  v2 = executableSource_source_1;

  return v2;
}

void __43__SWDatastoreUpdateScript_executableSource__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v2 URLForResource:@"datastore-update" withExtension:@"js"];

  v3 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v5 encoding:4 error:0];
  v4 = executableSource_source_1;
  executableSource_source_1 = v3;
}

@end
@interface SXContext
+ (void)prewarm;
- (SXContext)initWithIdentifier:(id)a3 shareURL:(id)a4 JSONData:(id)a5 resourceDataSource:(id)a6 host:(id)a7 error:(id *)a8;
- (SXResourceDataSource)resourceDataSource;
@end

@implementation SXContext

+ (void)prewarm
{
  v2 = objc_alloc_init(SXJSONObject);
}

- (SXContext)initWithIdentifier:(id)a3 shareURL:(id)a4 JSONData:(id)a5 resourceDataSource:(id)a6 host:(id)a7 error:(id *)a8
{
  v38[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v34 = a4;
  v15 = a5;
  v16 = a6;
  v33 = a7;
  v36.receiver = self;
  v36.super_class = SXContext;
  v17 = [(SXContext *)&v36 init];
  if (v17)
  {
    if (!v15)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"SXContextErrorDomain" code:1 userInfo:0];
      objc_claimAutoreleasedReturnValue();
      v28 = [MEMORY[0x1E695DF30] exceptionWithName:@"InvalidJSON" reason:@"No JSON to parse" userInfo:0];
      objc_exception_throw(v28);
    }

    v35 = 0;
    v18 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:&v35];
    v19 = v35;
    if (v19)
    {
      v29 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696AA08];
      v38[0] = v19;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      [v29 errorWithDomain:@"SXContextErrorDomain" code:2 userInfo:v30];
      objc_claimAutoreleasedReturnValue();

      v31 = [MEMORY[0x1E695DF30] exceptionWithName:@"InvalidJSON" reason:@"Error while parsing JSON" userInfo:0];
      objc_exception_throw(v31);
    }

    v20 = [SXDocument alloc];
    v21 = [v18 objectForKey:@"specVersion"];
    v22 = [(SXDocument *)v20 initWithIdentifier:v14 JSONObject:v18 andVersion:v21];

    if (!v22)
    {
      v27 = 0;
      goto LABEL_10;
    }

    v23 = [[SXDocumentController alloc] initWithDocument:v22 shareURL:v34];
    documentController = v17->_documentController;
    v17->_documentController = v23;

    v25 = [[SXDocumentTextContentProvider alloc] initWithDocument:v22];
    textContentProvider = v17->_textContentProvider;
    v17->_textContentProvider = v25;

    objc_storeStrong(&v17->_identifier, a3);
    objc_storeWeak(&v17->_resourceDataSource, v16);
    objc_storeStrong(&v17->_host, a7);
  }

  v27 = v17;
LABEL_10:

  return v27;
}

- (SXResourceDataSource)resourceDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_resourceDataSource);

  return WeakRetained;
}

- (void)initWithIdentifier:(os_log_t)log shareURL:JSONData:resourceDataSource:host:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1D825C000, log, OS_LOG_TYPE_ERROR, "An error occurred while parsing document: %{public}@ error: %{public}@", &v3, 0x16u);
}

@end
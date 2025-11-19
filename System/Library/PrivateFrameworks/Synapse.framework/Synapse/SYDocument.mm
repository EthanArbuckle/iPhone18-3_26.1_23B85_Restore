@interface SYDocument
+ (id)documentFromData:(id)a3;
- (BOOL)setDocumentAttributes:(id)a3 withError:(id *)a4;
- (SYDocument)initWithCoder:(id)a3;
- (SYDocument)initWithFileURL:(id)a3 error:(id *)a4;
- (SYDocument)initWithURLWrapper:(id)a3;
- (id)documentAttributesWithError:(id *)a3;
@end

@implementation SYDocument

- (SYDocument)initWithFileURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v7 = [MEMORY[0x277CC6438] wrapperWithURL:v6 readonly:1 error:&v13];
  v8 = v13;
  if (v7)
  {
    self = [(SYDocument *)self initWithURLWrapper:v7];
    v9 = self;
  }

  else
  {
    v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SYDocument *)v6 initWithFileURL:v8 error:v10];
    }

    v9 = 0;
    if (a4 && v8)
    {
      v11 = v8;
      v9 = 0;
      *a4 = v8;
    }
  }

  return v9;
}

- (SYDocument)initWithURLWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SYDocument;
  v6 = [(SYDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlWrapper, a3);
  }

  return v7;
}

- (id)documentAttributesWithError:(id *)a3
{
  v4 = [(SYDocument *)self fileURL];
  v5 = [SYDocumentAttributes documentAttributesForFileAtURL:v4 error:a3];

  return v5;
}

- (BOOL)setDocumentAttributes:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(SYDocument *)self fileURL];
  if (v6)
  {
    v8 = [v6 saveToFileURL:v7 error:a4];
  }

  else
  {
    v8 = [SYDocumentAttributes removeDocumentAttributesForFileAtURL:v7 error:a4];
  }

  v9 = v8;

  return v9;
}

- (SYDocument)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentFileURLWrapperKey"];

  if (v5)
  {
    self = [(SYDocument *)self initWithURLWrapper:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)documentFromData:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = a3;
    v9 = 0;
    v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SYDocument *)v6 documentFromData:v7];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithFileURL:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Unable to create a sandbox file wrapper for fileURL: %@, error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)documentFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Error while trying to init from data, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
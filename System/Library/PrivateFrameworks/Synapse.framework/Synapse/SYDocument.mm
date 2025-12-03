@interface SYDocument
+ (id)documentFromData:(id)data;
- (BOOL)setDocumentAttributes:(id)attributes withError:(id *)error;
- (SYDocument)initWithCoder:(id)coder;
- (SYDocument)initWithFileURL:(id)l error:(id *)error;
- (SYDocument)initWithURLWrapper:(id)wrapper;
- (id)documentAttributesWithError:(id *)error;
@end

@implementation SYDocument

- (SYDocument)initWithFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v13 = 0;
  v7 = [MEMORY[0x277CC6438] wrapperWithURL:lCopy readonly:1 error:&v13];
  v8 = v13;
  if (v7)
  {
    self = [(SYDocument *)self initWithURLWrapper:v7];
    selfCopy = self;
  }

  else
  {
    v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SYDocument *)lCopy initWithFileURL:v8 error:v10];
    }

    selfCopy = 0;
    if (error && v8)
    {
      v11 = v8;
      selfCopy = 0;
      *error = v8;
    }
  }

  return selfCopy;
}

- (SYDocument)initWithURLWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9.receiver = self;
  v9.super_class = SYDocument;
  v6 = [(SYDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlWrapper, wrapper);
  }

  return v7;
}

- (id)documentAttributesWithError:(id *)error
{
  fileURL = [(SYDocument *)self fileURL];
  v5 = [SYDocumentAttributes documentAttributesForFileAtURL:fileURL error:error];

  return v5;
}

- (BOOL)setDocumentAttributes:(id)attributes withError:(id *)error
{
  attributesCopy = attributes;
  fileURL = [(SYDocument *)self fileURL];
  if (attributesCopy)
  {
    v8 = [attributesCopy saveToFileURL:fileURL error:error];
  }

  else
  {
    v8 = [SYDocumentAttributes removeDocumentAttributesForFileAtURL:fileURL error:error];
  }

  v9 = v8;

  return v9;
}

- (SYDocument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentFileURLWrapperKey"];

  if (v5)
  {
    self = [(SYDocument *)self initWithURLWrapper:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)documentFromData:(id)data
{
  if (data)
  {
    v3 = MEMORY[0x277CCAAC8];
    dataCopy = data;
    v9 = 0;
    v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v9];

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
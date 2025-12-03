@interface SYReturnToSenderRequest
- (BOOL)verifyParameters;
- (NSString)documentIndexKey;
- (SYReturnToSenderRequest)init;
- (void)performWithServiceProxy:(id)proxy completion:(id)completion;
- (void)verifyParameters;
@end

@implementation SYReturnToSenderRequest

- (SYReturnToSenderRequest)init
{
  v3.receiver = self;
  v3.super_class = SYReturnToSenderRequest;
  result = [(SYReturnToSenderRequest *)&v3 init];
  if (result)
  {
    result->_shouldCreateNewMessage = 0;
  }

  return result;
}

- (BOOL)verifyParameters
{
  document = [(SYReturnToSenderRequest *)self document];
  v11 = 0;
  v4 = [document documentAttributesWithError:&v11];
  v5 = v11;
  [(SYReturnToSenderRequest *)self setStoredDocumentAttributes:v4];

  storedDocumentAttributes = [(SYReturnToSenderRequest *)self storedDocumentAttributes];

  if (!storedDocumentAttributes)
  {
    v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SYReturnToSenderRequest *)self verifyParameters];
    }
  }

  storedDocumentAttributes2 = [(SYReturnToSenderRequest *)self storedDocumentAttributes];
  v9 = storedDocumentAttributes2 != 0;

  return v9;
}

- (NSString)documentIndexKey
{
  storedDocumentAttributes = [(SYReturnToSenderRequest *)self storedDocumentAttributes];
  indexKey = [storedDocumentAttributes indexKey];

  return indexKey;
}

- (void)performWithServiceProxy:(id)proxy completion:(id)completion
{
  completionCopy = completion;
  proxyCopy = proxy;
  document = [(SYReturnToSenderRequest *)self document];
  storedDocumentAttributes = [(SYReturnToSenderRequest *)self storedDocumentAttributes];
  shouldCreateNewMessage = [(SYReturnToSenderRequest *)self shouldCreateNewMessage];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SYReturnToSenderRequest_performWithServiceProxy_completion___block_invoke;
  v12[3] = &unk_27856BFE0;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [proxyCopy returnToSenderDocument:document withAttributes:storedDocumentAttributes shouldCreateNewMessage:shouldCreateNewMessage completion:v12];
}

void __62__SYReturnToSenderRequest_performWithServiceProxy_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) document];
      v8 = [v7 fileURL];
      v9 = [*(a1 + 32) storedDocumentAttributes];
      v10 = [v9 sender];
      v11 = [v10 name];
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "Unable to return document at url: %@, to sender: %@", &v14, 0x16u);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)verifyParameters
{
  v12 = *MEMORY[0x277D85DE8];
  document = [self document];
  fileURL = [document fileURL];
  v8 = 138412546;
  v9 = fileURL;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_225901000, a3, OS_LOG_TYPE_ERROR, "Document doesn't have required attributes at url: %@, error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end
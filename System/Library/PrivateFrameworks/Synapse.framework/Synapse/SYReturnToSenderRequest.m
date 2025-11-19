@interface SYReturnToSenderRequest
- (BOOL)verifyParameters;
- (NSString)documentIndexKey;
- (SYReturnToSenderRequest)init;
- (void)performWithServiceProxy:(id)a3 completion:(id)a4;
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
  v3 = [(SYReturnToSenderRequest *)self document];
  v11 = 0;
  v4 = [v3 documentAttributesWithError:&v11];
  v5 = v11;
  [(SYReturnToSenderRequest *)self setStoredDocumentAttributes:v4];

  v6 = [(SYReturnToSenderRequest *)self storedDocumentAttributes];

  if (!v6)
  {
    v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SYReturnToSenderRequest *)self verifyParameters];
    }
  }

  v8 = [(SYReturnToSenderRequest *)self storedDocumentAttributes];
  v9 = v8 != 0;

  return v9;
}

- (NSString)documentIndexKey
{
  v2 = [(SYReturnToSenderRequest *)self storedDocumentAttributes];
  v3 = [v2 indexKey];

  return v3;
}

- (void)performWithServiceProxy:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SYReturnToSenderRequest *)self document];
  v9 = [(SYReturnToSenderRequest *)self storedDocumentAttributes];
  v10 = [(SYReturnToSenderRequest *)self shouldCreateNewMessage];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SYReturnToSenderRequest_performWithServiceProxy_completion___block_invoke;
  v12[3] = &unk_27856BFE0;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v7 returnToSenderDocument:v8 withAttributes:v9 shouldCreateNewMessage:v10 completion:v12];
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
  v5 = [a1 document];
  v6 = [v5 fileURL];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_225901000, a3, OS_LOG_TYPE_ERROR, "Document doesn't have required attributes at url: %@, error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end
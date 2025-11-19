@interface SYReturnToDocumentRequest
- (BOOL)verifyParameters;
- (NSString)documentIndexKey;
- (void)performWithServiceProxy:(id)a3 completion:(id)a4;
@end

@implementation SYReturnToDocumentRequest

- (BOOL)verifyParameters
{
  v2 = [(SYReturnToDocumentRequest *)self documentAttributes];

  if (!v2)
  {
    v3 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "documentAttributes can't be nil.", v5, 2u);
    }
  }

  return v2 != 0;
}

- (NSString)documentIndexKey
{
  v2 = [(SYReturnToDocumentRequest *)self documentAttributes];
  v3 = [v2 indexKey];

  return v3;
}

- (void)performWithServiceProxy:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SYReturnToDocumentRequest *)self documentAttributes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SYReturnToDocumentRequest_performWithServiceProxy_completion___block_invoke;
  v10[3] = &unk_27856B738;
  v11 = v6;
  v9 = v6;
  [v7 returnToSenderDocument:0 withAttributes:v8 shouldCreateNewMessage:0 completion:v10];
}

uint64_t __64__SYReturnToDocumentRequest_performWithServiceProxy_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end
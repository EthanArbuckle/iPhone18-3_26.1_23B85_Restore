@interface SYReturnToDocumentRequest
- (BOOL)verifyParameters;
- (NSString)documentIndexKey;
- (void)performWithServiceProxy:(id)proxy completion:(id)completion;
@end

@implementation SYReturnToDocumentRequest

- (BOOL)verifyParameters
{
  documentAttributes = [(SYReturnToDocumentRequest *)self documentAttributes];

  if (!documentAttributes)
  {
    v3 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "documentAttributes can't be nil.", v5, 2u);
    }
  }

  return documentAttributes != 0;
}

- (NSString)documentIndexKey
{
  documentAttributes = [(SYReturnToDocumentRequest *)self documentAttributes];
  indexKey = [documentAttributes indexKey];

  return indexKey;
}

- (void)performWithServiceProxy:(id)proxy completion:(id)completion
{
  completionCopy = completion;
  proxyCopy = proxy;
  documentAttributes = [(SYReturnToDocumentRequest *)self documentAttributes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SYReturnToDocumentRequest_performWithServiceProxy_completion___block_invoke;
  v10[3] = &unk_27856B738;
  v11 = completionCopy;
  v9 = completionCopy;
  [proxyCopy returnToSenderDocument:0 withAttributes:documentAttributes shouldCreateNewMessage:0 completion:v10];
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
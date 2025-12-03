@interface XBApplicationSnapshotGenerationContext
- (XBApplicationSnapshotGenerationContext)initWithApplicationCompatibilityInfo:(id)info launchRequest:(id)request timeout:(double)timeout;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation XBApplicationSnapshotGenerationContext

- (XBApplicationSnapshotGenerationContext)initWithApplicationCompatibilityInfo:(id)info launchRequest:(id)request timeout:(double)timeout
{
  infoCopy = info;
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = XBApplicationSnapshotGenerationContext;
  v12 = [(XBApplicationSnapshotGenerationContext *)&v16 init];
  if (v12)
  {
    if (infoCopy)
    {
      if (requestCopy)
      {
LABEL_4:
        objc_storeStrong(&v12->_applicationCompatibilityInfo, info);
        v13 = [requestCopy copy];
        launchRequest = v12->_launchRequest;
        v12->_launchRequest = v13;

        v12->_timeout = timeout;
        goto LABEL_5;
      }
    }

    else
    {
      [XBApplicationSnapshotGenerationContext initWithApplicationCompatibilityInfo:a2 launchRequest:v12 timeout:?];
      if (requestCopy)
      {
        goto LABEL_4;
      }
    }

    [XBApplicationSnapshotGenerationContext initWithApplicationCompatibilityInfo:a2 launchRequest:v12 timeout:?];
    goto LABEL_4;
  }

LABEL_5:

  return v12;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(XBApplicationSnapshotGenerationContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBApplicationSnapshotGenerationContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(XBApplicationSnapshotGenerationContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__XBApplicationSnapshotGenerationContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279CF9508;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __80__XBApplicationSnapshotGenerationContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"applicationCompatibilityInfo"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"launchRequest"];
  return [*(a1 + 32) appendFloat:@"timeout" withName:*(*(a1 + 40) + 24)];
}

- (void)initWithApplicationCompatibilityInfo:(uint64_t)a1 launchRequest:(uint64_t)a2 timeout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBApplicationSnapshotGenerationContext.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"applicationCompatibilityInfo"}];
}

- (void)initWithApplicationCompatibilityInfo:(uint64_t)a1 launchRequest:(uint64_t)a2 timeout:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBApplicationSnapshotGenerationContext.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"launchRequest"}];
}

@end
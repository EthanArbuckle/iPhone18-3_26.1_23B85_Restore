@interface XBApplicationSnapshotGenerationContext
- (XBApplicationSnapshotGenerationContext)initWithApplicationCompatibilityInfo:(id)a3 launchRequest:(id)a4 timeout:(double)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation XBApplicationSnapshotGenerationContext

- (XBApplicationSnapshotGenerationContext)initWithApplicationCompatibilityInfo:(id)a3 launchRequest:(id)a4 timeout:(double)a5
{
  v10 = a3;
  v11 = a4;
  v16.receiver = self;
  v16.super_class = XBApplicationSnapshotGenerationContext;
  v12 = [(XBApplicationSnapshotGenerationContext *)&v16 init];
  if (v12)
  {
    if (v10)
    {
      if (v11)
      {
LABEL_4:
        objc_storeStrong(&v12->_applicationCompatibilityInfo, a3);
        v13 = [v11 copy];
        launchRequest = v12->_launchRequest;
        v12->_launchRequest = v13;

        v12->_timeout = a5;
        goto LABEL_5;
      }
    }

    else
    {
      [XBApplicationSnapshotGenerationContext initWithApplicationCompatibilityInfo:a2 launchRequest:v12 timeout:?];
      if (v11)
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
  v2 = [(XBApplicationSnapshotGenerationContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(XBApplicationSnapshotGenerationContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(XBApplicationSnapshotGenerationContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__XBApplicationSnapshotGenerationContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279CF9508;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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
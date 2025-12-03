@interface SBRestartTransitionRequest
- (SBRestartTransitionRequest)initWithRequester:(id)requester reason:(id)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setCustomOverlayDescriptor:(id)descriptor;
- (void)setWantsPersistentSnapshot:(BOOL)snapshot;
@end

@implementation SBRestartTransitionRequest

- (SBRestartTransitionRequest)initWithRequester:(id)requester reason:(id)reason
{
  requesterCopy = requester;
  reasonCopy = reason;
  v9 = reasonCopy;
  if (requesterCopy)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBRestartTransitionRequest initWithRequester:a2 reason:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [SBRestartTransitionRequest initWithRequester:a2 reason:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = SBRestartTransitionRequest;
  v10 = [(SBRestartTransitionRequest *)&v16 init];
  if (v10)
  {
    v11 = [requesterCopy copy];
    requester = v10->_requester;
    v10->_requester = v11;

    v13 = [v9 copy];
    reason = v10->_reason;
    v10->_reason = v13;
  }

  return v10;
}

- (void)setWantsPersistentSnapshot:(BOOL)snapshot
{
  if (self->_wantsPersistentSnapshot != snapshot)
  {
    self->_wantsPersistentSnapshot = snapshot;
    if (snapshot)
    {
      customOverlayDescriptor = self->_customOverlayDescriptor;
      self->_customOverlayDescriptor = 0;
    }
  }
}

- (void)setCustomOverlayDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (self->_customOverlayDescriptor != descriptorCopy)
  {
    v6 = descriptorCopy;
    objc_storeStrong(&self->_customOverlayDescriptor, descriptor);
    descriptorCopy = v6;
    self->_wantsPersistentSnapshot = 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SBRestartTransitionRequest alloc] initWithRequester:self->_requester reason:self->_reason];
  v4->_restartType = self->_restartType;
  v4->_delay = self->_delay;
  v4->_wantsPersistentSnapshot = self->_wantsPersistentSnapshot;
  objc_storeStrong(&v4->_customOverlayDescriptor, self->_customOverlayDescriptor);
  objc_storeStrong(&v4->_applicationLaunchURL, self->_applicationLaunchURL);
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBRestartTransitionRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_requester withName:@"requester"];
  [v3 appendString:self->_reason withName:@"reason"];
  v4 = NSStringFromSBRestartType(self->_restartType);
  [v3 appendString:v4 withName:@"restartType"];

  if (self->_delay > 0.0)
  {
    v5 = [v3 appendFloat:@"delay" withName:?];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBRestartTransitionRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBRestartTransitionRequest *)self succinctDescriptionBuilder];
  v6 = succinctDescriptionBuilder;
  if (self->_wantsPersistentSnapshot || self->_applicationLaunchURL || self->_customOverlayDescriptor)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__SBRestartTransitionRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_2783A92D8;
    v9 = succinctDescriptionBuilder;
    selfCopy = self;
    [v9 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];
  }

  return v6;
}

id __68__SBRestartTransitionRequest_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 40) withName:@"wantsPersistentSnapshot" ifEqualTo:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"applicationLaunchURL" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"customOverlayLDescriptor" skipIfNil:1];
}

- (void)initWithRequester:(uint64_t)a1 reason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRestartTransitionRequest.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"requester"}];
}

- (void)initWithRequester:(uint64_t)a1 reason:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRestartTransitionRequest.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end
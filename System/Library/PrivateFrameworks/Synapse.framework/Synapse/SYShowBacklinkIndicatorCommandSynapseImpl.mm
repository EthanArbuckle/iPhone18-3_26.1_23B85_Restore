@interface SYShowBacklinkIndicatorCommandSynapseImpl
- (BOOL)isActive;
- (SYShowBacklinkIndicatorCommandSynapseImpl)initWithDomainIdentifiers:(id)identifiers linkIdentifiers:(id)linkIdentifiers;
- (void)runWithCompletion:(id)completion;
@end

@implementation SYShowBacklinkIndicatorCommandSynapseImpl

- (SYShowBacklinkIndicatorCommandSynapseImpl)initWithDomainIdentifiers:(id)identifiers linkIdentifiers:(id)linkIdentifiers
{
  identifiersCopy = identifiers;
  linkIdentifiersCopy = linkIdentifiers;
  v12.receiver = self;
  v12.super_class = SYShowBacklinkIndicatorCommandSynapseImpl;
  v8 = [(SYShowBacklinkIndicatorCommandSynapseImpl *)&v12 init];
  if (v8)
  {
    v9 = [SYBacklinkIndicatorClient clientWithDomainIdentifiers:identifiersCopy linkIdentifiers:linkIdentifiersCopy];
    client = v8->__client;
    v8->__client = v9;
  }

  return v8;
}

- (BOOL)isActive
{
  _client = [(SYShowBacklinkIndicatorCommandSynapseImpl *)self _client];
  if (_client)
  {
    didSucceed = [(SYShowBacklinkIndicatorCommandSynapseImpl *)self didSucceed];
  }

  else
  {
    didSucceed = 0;
  }

  return didSucceed;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  _client = [(SYShowBacklinkIndicatorCommandSynapseImpl *)self _client];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SYShowBacklinkIndicatorCommandSynapseImpl_runWithCompletion___block_invoke;
  v7[3] = &unk_27856B690;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [_client requestIndicatorWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__SYShowBacklinkIndicatorCommandSynapseImpl_runWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a2 & 1) == 0)
  {
    v5 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "Request to show backlink indicator failed.", v7, 2u);
    }
  }

  [WeakRetained setDidSucceed:a2];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

@end
@interface SYShowBacklinkIndicatorCommandSynapseImpl
- (BOOL)isActive;
- (SYShowBacklinkIndicatorCommandSynapseImpl)initWithDomainIdentifiers:(id)a3 linkIdentifiers:(id)a4;
- (void)runWithCompletion:(id)a3;
@end

@implementation SYShowBacklinkIndicatorCommandSynapseImpl

- (SYShowBacklinkIndicatorCommandSynapseImpl)initWithDomainIdentifiers:(id)a3 linkIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SYShowBacklinkIndicatorCommandSynapseImpl;
  v8 = [(SYShowBacklinkIndicatorCommandSynapseImpl *)&v12 init];
  if (v8)
  {
    v9 = [SYBacklinkIndicatorClient clientWithDomainIdentifiers:v6 linkIdentifiers:v7];
    client = v8->__client;
    v8->__client = v9;
  }

  return v8;
}

- (BOOL)isActive
{
  v3 = [(SYShowBacklinkIndicatorCommandSynapseImpl *)self _client];
  if (v3)
  {
    v4 = [(SYShowBacklinkIndicatorCommandSynapseImpl *)self didSucceed];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SYShowBacklinkIndicatorCommandSynapseImpl *)self _client];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SYShowBacklinkIndicatorCommandSynapseImpl_runWithCompletion___block_invoke;
  v7[3] = &unk_27856B690;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 requestIndicatorWithCompletion:v7];

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
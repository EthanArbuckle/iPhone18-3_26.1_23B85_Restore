@interface HKSPXPCClient
+ (id)clientForConnection:(id)a3 clientIdentifierProvider:(id)a4 clientLink:(id)a5;
- (BOOL)isEqual:(id)a3;
- (HKSPXPCClient)initWithConnection:(id)a3 clientIdentifierProvider:(id)a4 clientLink:(id)a5;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int)processID;
- (unint64_t)hash;
@end

@implementation HKSPXPCClient

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:-[HKSPXPCClient processID](self withName:{"processID"), @"pid"}];
  v5 = [(HKSPXPCClient *)self clientIdentifier];
  v6 = [v5 loggingIdentifier];
  v7 = [v3 appendObject:v6 withName:@"id" skipIfNil:1];

  return v3;
}

- (int)processID
{
  v2 = [(HKSPXPCClient *)self connection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_connection];
  v5 = [v3 hash];

  return v5;
}

+ (id)clientForConnection:(id)a3 clientIdentifierProvider:(id)a4 clientLink:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithConnection:v9 clientIdentifierProvider:v8 clientLink:v7];

  return v10;
}

- (HKSPXPCClient)initWithConnection:(id)a3 clientIdentifierProvider:(id)a4 clientLink:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = HKSPXPCClient;
  v12 = [(HKSPXPCClient *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, a3);
    objc_storeStrong(&v13->_clientIdentifierProvider, a4);
    objc_initWeak(&location, v13);
    clientIdentifierProvider = v13->_clientIdentifierProvider;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__HKSPXPCClient_initWithConnection_clientIdentifierProvider_clientLink___block_invoke;
    v18[3] = &unk_279C75F50;
    objc_copyWeak(&v19, &location);
    v15 = [(NAFuture *)clientIdentifierProvider addSuccessBlock:v18];
    objc_storeStrong(&v13->_clientLink, a5);
    v16 = v13;
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __72__HKSPXPCClient_initWithConnection_clientIdentifierProvider_clientLink___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = HKSPNilify(v3);

  [WeakRetained setClientIdentifier:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      connection = self->_connection;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __25__HKSPXPCClient_isEqual___block_invoke;
      v12[3] = &unk_279C75F78;
      v13 = v5;
      v8 = v5;
      v9 = [v6 appendObject:connection counterpart:v12];
      v10 = [v6 isEqual];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)succinctDescription
{
  v2 = [(HKSPXPCClient *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPXPCClient *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end
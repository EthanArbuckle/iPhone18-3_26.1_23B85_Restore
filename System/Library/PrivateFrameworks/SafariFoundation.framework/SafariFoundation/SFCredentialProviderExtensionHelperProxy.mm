@interface SFCredentialProviderExtensionHelperProxy
- (SFCredentialProviderExtensionHelperProxy)init;
- (id)_proxyObject;
- (void)dealloc;
- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion;
- (void)fetchAllPaskeyCredentialIdentitiesWithCompletion:(id)completion;
- (void)fetchCredentialIdentitiesForService:(id)service serviceIdentifierType:(int64_t)type credentialIdentityTypes:(int64_t)types completion:(id)completion;
- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion;
- (void)fetchPasskeyCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion;
- (void)getCredentialProviderExtensionStateWithCompletion:(id)completion;
- (void)invalidate;
- (void)removeAllCredentialIdentitiesWithCompletion:(id)completion;
- (void)removeCredentialIdentities:(id)identities completion:(id)completion;
- (void)removeCredentialIdentityStoreForApplication:(id)application completion:(id)completion;
- (void)replaceCredentialIdentitiesWithIdentities:(id)identities completion:(id)completion;
- (void)saveCredentialIdentities:(id)identities completion:(id)completion;
@end

@implementation SFCredentialProviderExtensionHelperProxy

- (SFCredentialProviderExtensionHelperProxy)init
{
  v43[3] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = SFCredentialProviderExtensionHelperProxy;
  v2 = [(SFCredentialProviderExtensionHelperProxy *)&v40 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.SafariFoundation.CredentialProviderExtensionHelper"];
    connection = v3->_connection;
    v3->_connection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876059F8];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v6 setClasses:v9 forSelector:sel_fetchPasswordCredentialIdentitiesMatchingDomains_forExtension_completion_ argumentIndex:0 ofReply:1];

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    [v6 setClasses:v12 forSelector:sel_fetchPasswordCredentialIdentitiesMatchingDomains_completion_ argumentIndex:0 ofReply:1];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    [v6 setClasses:v16 forSelector:sel_fetchPasskeyCredentialIdentitiesMatchingDomains_completion_ argumentIndex:0 ofReply:1];

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    [v6 setClasses:v20 forSelector:sel_fetchAllPaskeyCredentialIdentitiesWithCompletion_ argumentIndex:0 ofReply:1];

    v21 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v43[2] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
    v23 = [v21 setWithArray:v22];
    [v6 setClasses:v23 forSelector:sel_fetchAllCredentialIdentitiesMatchingDomains_forExtension_completion_ argumentIndex:0 ofReply:1];

    v24 = MEMORY[0x277CBEB98];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v42[2] = objc_opt_class();
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
    v26 = [v24 setWithArray:v25];
    [v6 setClasses:v26 forSelector:sel_fetchAllCredentialIdentitiesMatchingDomains_completion_ argumentIndex:0 ofReply:1];

    v27 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [v6 setClasses:v27 forSelector:sel_fetchOneTimeCodeCredentialIdentitiesMatchingDomains_completion_ argumentIndex:0 ofReply:1];

    v28 = MEMORY[0x277CBEB98];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v30 = [v28 setWithArray:v29];
    [v6 setClasses:v30 forSelector:sel_fetchOneTimeCodeCredentialIdentitiesMatchingDomains_completion_ argumentIndex:0 ofReply:1];

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    [v6 setClasses:v33 forSelector:sel_fetchCredentialIdentitiesForService_serviceIdentifierType_credentialIdentityTypes_completion_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)v3->_connection setRemoteObjectInterface:v6];
    objc_initWeak(&location, v3);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __48__SFCredentialProviderExtensionHelperProxy_init__block_invoke;
    v37[3] = &unk_279B61720;
    objc_copyWeak(&v38, &location);
    [(NSXPCConnection *)v3->_connection setInvalidationHandler:v37];
    [(NSXPCConnection *)v3->_connection resume];
    v34 = v3;
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v3;
}

void __48__SFCredentialProviderExtensionHelperProxy_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 4);
    v2 = *&v3[2]._os_unfair_lock_opaque;
    *&v3[2]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v3 + 4);
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_lock);
  [(NSXPCConnection *)v3 invalidate];

  v4.receiver = self;
  v4.super_class = SFCredentialProviderExtensionHelperProxy;
  [(SFCredentialProviderExtensionHelperProxy *)&v4 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_lock);
  [(NSXPCConnection *)v3 invalidate];
}

- (id)_proxyObject
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_lock);
  v4 = [(NSXPCConnection *)v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_3];

  return v4;
}

void __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v3);
  }
}

- (void)getCredentialProviderExtensionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
    _proxyObject = [(SFCredentialProviderExtensionHelperProxy *)self _proxyObject];
    v6 = _proxyObject;
    if (_proxyObject)
    {
      [_proxyObject getCredentialProviderExtensionStateWithCompletion:v8];
    }

    else
    {
      v7 = +[SFCredentialProviderExtensionState credentialProviderExtensionWithDisabledState];
      v8[2](v8, v7);
    }

    completionCopy = v8;
  }
}

- (void)saveCredentialIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  completionCopy = completion;
  _proxyObject = [(SFCredentialProviderExtensionHelperProxy *)self _proxyObject];
  v8 = _proxyObject;
  if (!completionCopy || _proxyObject)
  {
    [_proxyObject saveCredentialIdentities:identitiesCopy completion:completionCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFExternalCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)removeCredentialIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  completionCopy = completion;
  _proxyObject = [(SFCredentialProviderExtensionHelperProxy *)self _proxyObject];
  v8 = _proxyObject;
  if (!completionCopy || _proxyObject)
  {
    [_proxyObject removeCredentialIdentities:identitiesCopy completion:completionCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFExternalCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)removeAllCredentialIdentitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  _proxyObject = [(SFCredentialProviderExtensionHelperProxy *)self _proxyObject];
  v5 = _proxyObject;
  if (!completionCopy || _proxyObject)
  {
    [_proxyObject removeAllCredentialIdentitiesWithCompletion:completionCopy];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFExternalCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v6);
  }
}

- (void)replaceCredentialIdentitiesWithIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  completionCopy = completion;
  _proxyObject = [(SFCredentialProviderExtensionHelperProxy *)self _proxyObject];
  v8 = _proxyObject;
  if (!completionCopy || _proxyObject)
  {
    [_proxyObject replaceCredentialIdentitiesWithIdentities:identitiesCopy completion:completionCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFExternalCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion
{
  domainsCopy = domains;
  extensionCopy = extension;
  completionCopy = completion;
  if (completionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = self->_connection;
    os_unfair_lock_unlock(&self->_lock);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __117__SFCredentialProviderExtensionHelperProxy_fetchPasswordCredentialIdentitiesMatchingDomains_forExtension_completion___block_invoke;
    v14[3] = &unk_279B61748;
    v12 = completionCopy;
    v15 = v12;
    v13 = [(NSXPCConnection *)v11 remoteObjectProxyWithErrorHandler:v14];

    if (v13)
    {
      [v13 fetchPasswordCredentialIdentitiesMatchingDomains:domainsCopy forExtension:extensionCopy completion:v12];
    }

    else
    {
      (*(v12 + 2))(v12, MEMORY[0x277CBEBF8]);
    }
  }
}

void __117__SFCredentialProviderExtensionHelperProxy_fetchPasswordCredentialIdentitiesMatchingDomains_forExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  if (completionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v8 = self->_connection;
    os_unfair_lock_unlock(&self->_lock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __104__SFCredentialProviderExtensionHelperProxy_fetchPasswordCredentialIdentitiesMatchingDomains_completion___block_invoke;
    v11[3] = &unk_279B61748;
    v9 = completionCopy;
    v12 = v9;
    v10 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v11];

    if (v10)
    {
      [v10 fetchPasswordCredentialIdentitiesMatchingDomains:domainsCopy completion:v9];
    }

    else
    {
      (*(v9 + 2))(v9, MEMORY[0x277CBEBF8]);
    }
  }
}

void __104__SFCredentialProviderExtensionHelperProxy_fetchPasswordCredentialIdentitiesMatchingDomains_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchPasskeyCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  if (completionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v8 = self->_connection;
    os_unfair_lock_unlock(&self->_lock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __103__SFCredentialProviderExtensionHelperProxy_fetchPasskeyCredentialIdentitiesMatchingDomains_completion___block_invoke;
    v11[3] = &unk_279B61748;
    v9 = completionCopy;
    v12 = v9;
    v10 = [(NSXPCConnection *)v8 synchronousRemoteObjectProxyWithErrorHandler:v11];

    if (v10)
    {
      [v10 fetchPasskeyCredentialIdentitiesMatchingDomains:domainsCopy completion:v9];
    }

    else
    {
      (*(v9 + 2))(v9, MEMORY[0x277CBEBF8]);
    }
  }
}

void __103__SFCredentialProviderExtensionHelperProxy_fetchPasskeyCredentialIdentitiesMatchingDomains_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAllPaskeyCredentialIdentitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_connection;
    os_unfair_lock_unlock(&self->_lock);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __93__SFCredentialProviderExtensionHelperProxy_fetchAllPaskeyCredentialIdentitiesWithCompletion___block_invoke;
    v8[3] = &unk_279B61748;
    v6 = completionCopy;
    v9 = v6;
    v7 = [(NSXPCConnection *)v5 synchronousRemoteObjectProxyWithErrorHandler:v8];

    if (v7)
    {
      [v7 fetchAllPaskeyCredentialIdentitiesWithCompletion:v6];
    }

    else
    {
      (*(v6 + 2))(v6, MEMORY[0x277CBEBF8]);
    }
  }
}

void __93__SFCredentialProviderExtensionHelperProxy_fetchAllPaskeyCredentialIdentitiesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion
{
  domainsCopy = domains;
  extensionCopy = extension;
  completionCopy = completion;
  if (completionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = self->_connection;
    os_unfair_lock_unlock(&self->_lock);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __112__SFCredentialProviderExtensionHelperProxy_fetchAllCredentialIdentitiesMatchingDomains_forExtension_completion___block_invoke;
    v14[3] = &unk_279B61748;
    v12 = completionCopy;
    v15 = v12;
    v13 = [(NSXPCConnection *)v11 synchronousRemoteObjectProxyWithErrorHandler:v14];

    if (v13)
    {
      [v13 fetchAllCredentialIdentitiesMatchingDomains:domainsCopy forExtension:extensionCopy completion:v12];
    }

    else
    {
      (*(v12 + 2))(v12, MEMORY[0x277CBEBF8]);
    }
  }
}

void __112__SFCredentialProviderExtensionHelperProxy_fetchAllCredentialIdentitiesMatchingDomains_forExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  if (completionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v8 = self->_connection;
    os_unfair_lock_unlock(&self->_lock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __99__SFCredentialProviderExtensionHelperProxy_fetchAllCredentialIdentitiesMatchingDomains_completion___block_invoke;
    v11[3] = &unk_279B61748;
    v9 = completionCopy;
    v12 = v9;
    v10 = [(NSXPCConnection *)v8 synchronousRemoteObjectProxyWithErrorHandler:v11];

    if (v10)
    {
      [v10 fetchAllCredentialIdentitiesMatchingDomains:domainsCopy completion:v9];
    }

    else
    {
      (*(v9 + 2))(v9, MEMORY[0x277CBEBF8]);
    }
  }
}

void __99__SFCredentialProviderExtensionHelperProxy_fetchAllCredentialIdentitiesMatchingDomains_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion
{
  domainsCopy = domains;
  extensionCopy = extension;
  completionCopy = completion;
  if (completionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = self->_connection;
    os_unfair_lock_unlock(&self->_lock);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __120__SFCredentialProviderExtensionHelperProxy_fetchOneTimeCodeCredentialIdentitiesMatchingDomains_forExtension_completion___block_invoke;
    v14[3] = &unk_279B61748;
    v12 = completionCopy;
    v15 = v12;
    v13 = [(NSXPCConnection *)v11 remoteObjectProxyWithErrorHandler:v14];

    if (v13)
    {
      [v13 fetchOneTimeCodeCredentialIdentitiesMatchingDomains:domainsCopy forExtension:extensionCopy completion:v12];
    }

    else
    {
      (*(v12 + 2))(v12, MEMORY[0x277CBEBF8]);
    }
  }
}

void __120__SFCredentialProviderExtensionHelperProxy_fetchOneTimeCodeCredentialIdentitiesMatchingDomains_forExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  if (completionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v8 = self->_connection;
    os_unfair_lock_unlock(&self->_lock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __107__SFCredentialProviderExtensionHelperProxy_fetchOneTimeCodeCredentialIdentitiesMatchingDomains_completion___block_invoke;
    v11[3] = &unk_279B61748;
    v9 = completionCopy;
    v12 = v9;
    v10 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v11];

    if (v10)
    {
      [v10 fetchOneTimeCodeCredentialIdentitiesMatchingDomains:domainsCopy completion:v9];
    }

    else
    {
      (*(v9 + 2))(v9, MEMORY[0x277CBEBF8]);
    }
  }
}

void __107__SFCredentialProviderExtensionHelperProxy_fetchOneTimeCodeCredentialIdentitiesMatchingDomains_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeCredentialIdentityStoreForApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  _proxyObject = [(SFCredentialProviderExtensionHelperProxy *)self _proxyObject];
  v8 = _proxyObject;
  if (!completionCopy || _proxyObject)
  {
    [_proxyObject removeCredentialIdentityStoreForApplication:applicationCopy completion:completionCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFExternalCredentialIdentityStoreErrorDomain" code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)fetchCredentialIdentitiesForService:(id)service serviceIdentifierType:(int64_t)type credentialIdentityTypes:(int64_t)types completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v12 = self->_connection;
  os_unfair_lock_unlock(&self->_lock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __137__SFCredentialProviderExtensionHelperProxy_fetchCredentialIdentitiesForService_serviceIdentifierType_credentialIdentityTypes_completion___block_invoke;
  v15[3] = &unk_279B61748;
  v13 = completionCopy;
  v16 = v13;
  v14 = [(NSXPCConnection *)v12 synchronousRemoteObjectProxyWithErrorHandler:v15];

  if (v14)
  {
    [v14 fetchCredentialIdentitiesForService:serviceCopy serviceIdentifierType:type credentialIdentityTypes:types completion:v13];
  }

  else
  {
    (*(v13 + 2))(v13, MEMORY[0x277CBEBF8]);
  }
}

void __137__SFCredentialProviderExtensionHelperProxy_fetchCredentialIdentitiesForService_serviceIdentifierType_credentialIdentityTypes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCredentials();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __56__SFCredentialProviderExtensionHelperProxy__proxyObject__block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26450F000, v4, v5, "Failed to get a remote proxy object with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end
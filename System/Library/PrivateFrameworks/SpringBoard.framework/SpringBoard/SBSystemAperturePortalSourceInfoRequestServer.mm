@interface SBSystemAperturePortalSourceInfoRequestServer
- (SBSystemAperturePortalSourceInfoRequestServer)initWithPortalSource:(id)a3;
- (void)dealloc;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)rootWindowPortalSourceWithCompletion:(id)a3;
@end

@implementation SBSystemAperturePortalSourceInfoRequestServer

- (SBSystemAperturePortalSourceInfoRequestServer)initWithPortalSource:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SBSystemAperturePortalSourceInfoRequestServer;
  v5 = [(SBSystemAperturePortalSourceInfoRequestServer *)&v17 init];
  if (v5)
  {
    v6 = [v4 copy];
    rootSystemApertureWindowPortalSource = v5->_rootSystemApertureWindowPortalSource;
    v5->_rootSystemApertureWindowPortalSource = v6;

    v8 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.springboard.system-aperture-portaling"];
    serviceClientAuthenticator = v5->_serviceClientAuthenticator;
    v5->_serviceClientAuthenticator = v8;

    v10 = MEMORY[0x277CF32A0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__SBSystemAperturePortalSourceInfoRequestServer_initWithPortalSource___block_invoke;
    v15[3] = &unk_2783A9A18;
    v11 = v5;
    v16 = v11;
    v12 = [v10 listenerWithConfigurator:v15];
    connectionListener = v11->_connectionListener;
    v11->_connectionListener = v12;
  }

  return v5;
}

void __70__SBSystemAperturePortalSourceInfoRequestServer_initWithPortalSource___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66C70] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  v3.receiver = self;
  v3.super_class = SBSystemAperturePortalSourceInfoRequestServer;
  [(SBSystemAperturePortalSourceInfoRequestServer *)&v3 dealloc];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBSSystemAperturePortalSourceInfoRequestServer received connection %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__67;
  v17 = __Block_byref_object_dispose__67;
  v12 = v9;
  v18 = v12;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__SBSystemAperturePortalSourceInfoRequestServer_listener_didReceiveConnection_withContext___block_invoke;
  v13[3] = &unk_2783B7C88;
  v13[4] = self;
  v13[5] = &buf;
  [v12 configureConnection:v13];
  [v12 activate];
  _Block_object_dispose(&buf, 8);
}

void __91__SBSystemAperturePortalSourceInfoRequestServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66C70];
  v4 = a2;
  v5 = [v3 serviceQuality];
  [v4 setServiceQuality:v5];

  v6 = [MEMORY[0x277D66C70] interface];
  [v4 setInterface:v6];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__SBSystemAperturePortalSourceInfoRequestServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v7[3] = &unk_2783B7C60;
  v7[4] = *(a1 + 40);
  [v4 setInvalidationHandler:v7];
}

void __91__SBSystemAperturePortalSourceInfoRequestServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBSSystemAperturePortalSourceInfoRequestServer invalidated connection %@", &v6, 0xCu);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (void)rootWindowPortalSourceWithCompletion:(id)a3
{
  v4 = a3;
  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  v6 = [MEMORY[0x277CF3280] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 auditToken];
  v11 = 0;
  v9 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:v8 error:&v11];
  v10 = v11;

  if (v9)
  {
    if (v4)
    {
      v4[2](v4, self->_rootSystemApertureWindowPortalSource, 0);
    }
  }

  else if (v4)
  {
    (v4)[2](v4, 0, v10);
  }
}

@end
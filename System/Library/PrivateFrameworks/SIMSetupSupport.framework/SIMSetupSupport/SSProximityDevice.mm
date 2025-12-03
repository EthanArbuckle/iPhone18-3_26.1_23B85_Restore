@interface SSProximityDevice
- (SSProximityDevice)initWithQueue:(id)queue endpoint:(unint64_t)endpoint remoteInfo:(id)info;
- (id)templateSession;
- (void)proxSetupAuthEventUpdate:(id)update;
- (void)verifyPIN:(id)n;
@end

@implementation SSProximityDevice

- (SSProximityDevice)initWithQueue:(id)queue endpoint:(unint64_t)endpoint remoteInfo:(id)info
{
  queueCopy = queue;
  infoCopy = info;
  if (endpoint)
  {
    v16.receiver = self;
    v16.super_class = SSProximityDevice;
    v10 = [(SSProximityDevice *)&v16 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      v10->_endpoint = endpoint;
      objc_storeStrong(&v10->_remoteInfo, info);
      v12 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:queueCopy];
      v13 = p_isa[2];
      p_isa[2] = v12;

      [p_isa[2] setDelegate:p_isa];
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setSession:v5];

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 client];
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 endpoint];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_25;
    v13[3] = &unk_279B44DB8;
    v14 = *(a1 + 32);
    [v10 activateProximityTransfer:v12 completion:v13];
  }
}

void __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_25_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __32__SSProximityDevice_invalidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __32__SSProximityDevice_invalidate___block_invoke_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setClient:0];
}

- (void)verifyPIN:(id)n
{
  nCopy = n;
  client = self->_client;
  endpoint = self->_endpoint;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SSProximityDevice_verifyPIN___block_invoke;
  v8[3] = &unk_279B44638;
  v9 = nCopy;
  v7 = nCopy;
  [(CoreTelephonyClient *)client validateProximityTransfer:endpoint pin:v7 completion:v8];
}

void __31__SSProximityDevice_verifyPIN___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __31__SSProximityDevice_verifyPIN___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (id)templateSession
{
  session = self->_session;
  if (session)
  {
    v3 = session;
  }

  else
  {
    v4 = sLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SSProximityDevice templateSession];
    }
  }

  return session;
}

- (void)proxSetupAuthEventUpdate:(id)update
{
  updateCopy = update;
  eventHandler = [(SSProximityDevice *)self eventHandler];

  if (eventHandler)
  {
    eventHandler2 = [(SSProximityDevice *)self eventHandler];
    v7 = [TSUtilities skEventFromDictionary:updateCopy];
    (*(eventHandler2 + 16))(eventHandler2, v7);
  }

  else
  {
    eventHandler2 = sLogDomain();
    if (os_log_type_enabled(eventHandler2, OS_LOG_TYPE_ERROR))
    {
      [SSProximityDevice proxSetupAuthEventUpdate:];
    }
  }
}

void __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__SSProximityDevice_activateUsingPreSharedKey_completion___block_invoke_25_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __32__SSProximityDevice_invalidate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __31__SSProximityDevice_verifyPIN___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "verify PIN(%@) failed : %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end
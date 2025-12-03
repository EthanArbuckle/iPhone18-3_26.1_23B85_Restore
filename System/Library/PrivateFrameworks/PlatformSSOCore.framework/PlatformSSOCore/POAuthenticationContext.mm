@interface POAuthenticationContext
- (BOOL)isServerNonceExpiredOrMissing;
- (POAuthenticationContext)init;
- (id)resumeData;
- (void)addRequiredScope:(id)scope;
- (void)applyResumeData:(id)data;
- (void)resumeData;
@end

@implementation POAuthenticationContext

- (POAuthenticationContext)init
{
  v15.receiver = self;
  v15.super_class = POAuthenticationContext;
  v2 = [(POAuthenticationContext *)&v15 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    nonce = v2->_nonce;
    v2->_nonce = uUIDString;

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];
    requestIdentifier = v2->_requestIdentifier;
    v2->_requestIdentifier = uUIDString2;

    v9 = MEMORY[0x277CCACA8];
    uUID3 = [MEMORY[0x277CCAD78] UUID];
    uUIDString3 = [uUID3 UUIDString];
    v12 = [v9 stringWithFormat:@"urn:uuid:%@", uUIDString3];
    wsTrustFederationNonce = v2->_wsTrustFederationNonce;
    v2->_wsTrustFederationNonce = v12;

    v2->_loginType = 0;
    v2->_wsTrustVersion = 0;
    *&v2->_retriesRemaining = xmmword_25E948E30;
  }

  return v2;
}

- (void)addRequiredScope:(id)scope
{
  scopeCopy = scope;
  if ([scopeCopy length])
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [scopeCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    scope = [(POAuthenticationContext *)self scope];
    v7 = [scope containsString:v5];

    if ((v7 & 1) == 0)
    {
      v8 = MEMORY[0x277CCACA8];
      scope2 = [(POAuthenticationContext *)self scope];
      v10 = [v8 stringWithFormat:@"%@ %@", scope2, v5];
      [(POAuthenticationContext *)self setScope:v10];
    }
  }
}

- (id)resumeData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  resumedEmbeddedAssertion = [(POAuthenticationContext *)self resumedEmbeddedAssertion];

  if (resumedEmbeddedAssertion)
  {
    resumedEmbeddedAssertion2 = [(POAuthenticationContext *)self resumedEmbeddedAssertion];
    v6 = NSStringFromSelector(sel_resumedEmbeddedAssertion);
    [v3 setObject:resumedEmbeddedAssertion2 forKeyedSubscript:v6];
  }

  requestIdentifier = [(POAuthenticationContext *)self requestIdentifier];

  if (requestIdentifier)
  {
    requestIdentifier2 = [(POAuthenticationContext *)self requestIdentifier];
    v9 = NSStringFromSelector(sel_requestIdentifier);
    [v3 setObject:requestIdentifier2 forKeyedSubscript:v9];
  }

  serverNonce = [(POAuthenticationContext *)self serverNonce];

  if (serverNonce)
  {
    serverNonce2 = [(POAuthenticationContext *)self serverNonce];
    v12 = NSStringFromSelector(sel_serverNonce);
    [v3 setObject:serverNonce2 forKeyedSubscript:v12];
  }

  nonce = [(POAuthenticationContext *)self nonce];

  if (nonce)
  {
    nonce2 = [(POAuthenticationContext *)self nonce];
    v15 = NSStringFromSelector(sel_nonce);
    [v3 setObject:nonce2 forKeyedSubscript:v15];
  }

  scope = [(POAuthenticationContext *)self scope];

  if (scope)
  {
    scope2 = [(POAuthenticationContext *)self scope];
    v18 = NSStringFromSelector(sel_scope);
    [v3 setObject:scope2 forKeyedSubscript:v18];
  }

  v30 = 0;
  v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v30];
  v20 = v30;
  v29 = 0;
  v21 = [v19 compressedDataUsingAlgorithm:0 error:&v29];
  v22 = v29;
  v23 = v22;
  if (v22)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __37__POAuthenticationContext_resumeData__block_invoke;
    v27[3] = &unk_279A3DC48;
    v28 = v22;
    v24 = __37__POAuthenticationContext_resumeData__block_invoke(v27);
  }

  v25 = PO_LOG_POAuthenticationContext();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [(POAuthenticationContext *)v19 resumeData];
  }

  return v21;
}

id __37__POAuthenticationContext_resumeData__block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error compressing resume data"];
  v2 = PO_LOG_POAuthenticationContext();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v1, v2);
  }

  return v1;
}

- (void)applyResumeData:(id)data
{
  v23 = 0;
  v4 = [data decompressedDataUsingAlgorithm:0 error:&v23];
  v5 = v23;
  v6 = v5;
  if (v5)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__POAuthenticationContext_applyResumeData___block_invoke;
    v21[3] = &unk_279A3DC48;
    v22 = v5;
    v7 = __43__POAuthenticationContext_applyResumeData___block_invoke(v21);
  }

  v20 = v6;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:16 error:&v20];
  v9 = v20;

  v10 = NSStringFromSelector(sel_resumedEmbeddedAssertion);
  v11 = [v8 objectForKeyedSubscript:v10];

  if (v11)
  {
    objc_storeStrong(&self->_resumedEmbeddedAssertion, v11);
  }

  v12 = NSStringFromSelector(sel_requestIdentifier);
  v13 = [v8 objectForKeyedSubscript:v12];

  if (v13)
  {
    objc_storeStrong(&self->_requestIdentifier, v13);
  }

  v14 = NSStringFromSelector(sel_serverNonce);
  v15 = [v8 objectForKeyedSubscript:v14];

  if (v15)
  {
    objc_storeStrong(&self->_serverNonce, v15);
  }

  v16 = NSStringFromSelector(sel_nonce);
  v17 = [v8 objectForKeyedSubscript:v16];

  if (v17)
  {
    objc_storeStrong(&self->_nonce, v17);
  }

  v18 = NSStringFromSelector(sel_scope);
  v19 = [v8 objectForKeyedSubscript:v18];

  if (v19)
  {
    objc_storeStrong(&self->_scope, v19);
  }
}

id __43__POAuthenticationContext_applyResumeData___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error compressing resume data"];
  v2 = PO_LOG_POAuthenticationContext();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v1, v2);
  }

  return v1;
}

- (BOOL)isServerNonceExpiredOrMissing
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  serverNonce = [(POAuthenticationContext *)selfCopy serverNonce];

  objc_sync_exit(selfCopy);
  if (!serverNonce)
  {
    return 1;
  }

  serverNonceReceived = [(POAuthenticationContext *)selfCopy serverNonceReceived];

  if (!serverNonceReceived)
  {
    return 1;
  }

  serverNonceReceived2 = [(POAuthenticationContext *)selfCopy serverNonceReceived];
  [serverNonceReceived2 timeIntervalSinceNow];
  v7 = v6;

  loginConfiguration = [(POAuthenticationContext *)selfCopy loginConfiguration];
  serverNonceExpirationTime = [loginConfiguration serverNonceExpirationTime];
  v10 = v7 < -[serverNonceExpirationTime intValue];

  return v10;
}

- (void)resumeData
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "length")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "length")}];
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_debug_impl(&dword_25E8B1000, a3, OS_LOG_TYPE_DEBUG, "Resume data compression: %{public}@, %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end
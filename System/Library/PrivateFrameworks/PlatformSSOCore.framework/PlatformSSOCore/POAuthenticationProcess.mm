@interface POAuthenticationProcess
- (BOOL)extractNewUserValuesFromTokens:(id)tokens deviceConfiguration:(id)configuration loginUserName:(id)name returningName:(id *)returningName userName:(id *)userName error:(id *)error;
- (BOOL)validateIdToken:(id)token context:(id)context key:(__SecKey *)key;
- (BOOL)validatePartyUInfo:(id)info context:(id)context;
- (BOOL)validatePartyVInfo:(id)info context:(id)context publicKey:(__SecKey *)key;
- (BOOL)validateWSTrustMexResponseWithContext:(id)context response:(id)response;
- (POAuthenticationProcess)init;
- (__SecKey)findKey:(id)key inJWKSData:(id)data rootCertificates:(id)certificates;
- (id)createAuthenticationContextUsingLoginConfiguration:(id)configuration deviceConfiguration:(id)deviceConfiguration userName:(id)name resumeData:(id)data;
- (id)createEmbeddedAssertionWithContext:(id)context;
- (id)createEmbeddedPasswordAssertionWithContext:(id)context;
- (id)createKeyExchangeRequestJWTWithContext:(id)context otherPartyPublicKey:(id)key;
- (id)createKeyExchangeRequestWithContext:(id)context jwt:(id)jwt;
- (id)createKeyRequestJWTWithContext:(id)context;
- (id)createKeyRequestWithContext:(id)context jwt:(id)jwt;
- (id)createLoginJWTWithContext:(id)context embeddedAssertion:(id)assertion;
- (id)createLoginRequestWithContext:(id)context jwt:(id)jwt;
- (id)createNonceRequestWithContext:(id)context;
- (id)createPartyVInfoWithNonce:(id)nonce apvKey:(__SecKey *)key;
- (id)createPartyVInfoWithNonce:(id)nonce prefixData:(id)data apvPublicKey:(__SecKey *)key;
- (id)createPreAuthenticationRequestWithContext:(id)context;
- (id)createRefreshJWTWithContext:(id)context;
- (id)createTestMessagesForLoginConfiguration:(id)configuration certificate:(__SecCertificate *)certificate;
- (id)createWSTrust13RequestWithContext:(id)context;
- (id)createWSTrust2005RequestWithContext:(id)context;
- (id)createWSTrustMexRequestWithContext:(id)context;
- (id)findAlgorithmForKey:(__SecKey *)key;
- (unint64_t)validateWSTrustAuthenticationResponseWithContext:(id)context response:(id)response returningAssertion:(id *)assertion;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
- (void)_performDynamicWSTrustPasswordLoginWithContext:(id)context completion:(id)completion;
- (void)_performEmbeddedAssertionLoginUsingContext:(id)context completion:(id)completion;
- (void)_performEncryptedPasswordLoginUsingContext:(id)context completion:(id)completion;
- (void)_performNonceRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)_performPasswordLoginUsingContext:(id)context completion:(id)completion;
- (void)_performWSTrustPasswordLoginWithContext:(id)context completion:(id)completion;
- (void)addCryptoHeadersToJWTBody:(id)body context:(id)context;
- (void)completeAccessTokenLoginUsingContext:(id)context completion:(id)completion;
- (void)extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:(id)configuration tokens:(id)tokens returningGroups:(id *)groups identifier:(id *)identifier refreshToken:(id *)token;
- (void)performAccessTokenSigningUsingContext:(id)context completion:(id)completion;
- (void)performKeyExchangeRequestUsingContext:(id)context otherPartyPublicKeyData:(id)data completion:(id)completion;
- (void)performKeyExchangeRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performKeyRequestUsingContext:(id)context completion:(id)completion;
- (void)performKeyRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performLoginRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performLoginWithContext:(id)context loginJWT:(id)t completion:(id)completion;
- (void)performNonceRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performPasswordLoginUsingContext:(id)context completion:(id)completion;
- (void)performPreAuthenticationRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performSEPKeyLoginUsingContext:(id)context completion:(id)completion;
- (void)performSmartCardLoginUsingContext:(id)context completion:(id)completion;
- (void)performTokenRefreshUsingContext:(id)context completion:(id)completion;
- (void)performWSTrustAuthenticationRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)performWSTrustMexRequestWithContext:(id)context request:(id)request completion:(id)completion;
- (void)prepareForAccessTokenLoginUsingContext:(id)context completion:(id)completion;
- (void)retrieveSigningKeyWithContext:(id)context keyId:(id)id completion:(id)completion;
@end

@implementation POAuthenticationProcess

- (POAuthenticationProcess)init
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = POAuthenticationProcess;
  v2 = [(POAuthenticationProcess *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_waitForConnectivity = 0;
    v4 = objc_alloc_init(POWSTrustProcess);
    wstrustProcess = v3->_wstrustProcess;
    v3->_wstrustProcess = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    completionQueue = v3->_completionQueue;
    v3->_completionQueue = v6;

    [(NSOperationQueue *)v3->_completionQueue setName:@"com.apple.platformSSO.auth"];
    v16[0] = @"ECDH-ES,A256GCM";
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, dir", @"HPKE-P256-SHA256-A256GCM"];
    v16[1] = v8;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, dir", @"HPKE-P384-SHA384-A256GCM"];
    v16[2] = v9;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, dir", @"HPKE-X25519-SHA256-ChaCha20Poly1305"];
    v16[3] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
    kSupportedLoginResponseAlgorithms = v3->_kSupportedLoginResponseAlgorithms;
    v3->_kSupportedLoginResponseAlgorithms = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)performPasswordLoginUsingContext:(id)context completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Starting password authentication", buf, 2u);
  }

  v9 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  [contextCopy setLoginType:1];
  v11 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  if (v11)
  {
    v12 = PO_LOG_PODiagnostics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v26 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v12, OS_LOG_TYPE_DEFAULT, "Sending nonce request: %{public}@", buf, 0xCu);
    }

    v14 = PO_LOG_POAuthenticationProcess();
    v15 = os_signpost_id_make_with_pointer(v14, contextCopy);

    v16 = PO_LOG_POAuthenticationProcess();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_27;
    v20[3] = &unk_279A3DED0;
    v24 = v15;
    v21 = contextCopy;
    selfCopy = self;
    v23 = completionCopy;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v21 request:v11 completion:v20];
  }

  else
  {
    v18 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

id __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create nonce request"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_27(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    v14 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2();
    v15 = PO_LOG_POAuthenticationProcess();
    v16 = v15;
    v17 = *(a1 + 56);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }

    v18 = [*(a1 + 32) password];
    v19 = [v18 mutableBytes];
    v20 = [*(a1 + 32) password];
    v21 = [v20 length];
    v22 = [*(a1 + 32) password];
    memset_s(v19, v21, 0, [v22 length]);

    v23 = *(a1 + 32);
    v24 = *(*(a1 + 48) + 16);
    return v24();
  }

  v3 = PO_LOG_POAuthenticationProcess();
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v33 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", v33, 2u);
  }

  v6 = [*(a1 + 32) loginConfiguration];
  v7 = [v6 federationType];

  if (v7 == 2)
  {
    return [*(a1 + 40) _performDynamicWSTrustPasswordLoginWithContext:*(a1 + 32) completion:*(a1 + 48)];
  }

  if (v7 == 1)
  {
    [*(a1 + 32) setFederated:1];
    v25 = [*(a1 + 32) loginConfiguration];
    v26 = [v25 federationMexURL];
    [*(a1 + 32) setWsTrustFederationMexURL:v26];

    return [*(a1 + 40) _performWSTrustPasswordLoginWithContext:*(a1 + 32) completion:*(a1 + 48)];
  }

  if (v7)
  {
    v27 = [*(a1 + 32) password];
    v28 = [v27 mutableBytes];
    v29 = [*(a1 + 32) password];
    v30 = [v29 length];
    v31 = [*(a1 + 32) password];
    memset_s(v28, v30, 0, [v31 length]);

    v32 = *(a1 + 32);
    v24 = *(*(a1 + 48) + 16);
    return v24();
  }

  v8 = [*(a1 + 32) loginConfiguration];
  v9 = [v8 loginRequestEncryptionPublicKey];

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v9)
  {
    return [v10 _performEncryptedPasswordLoginUsingContext:v11 completion:v12];
  }

  else
  {
    return [v10 _performPasswordLoginUsingContext:v11 completion:v12];
  }
}

id __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve nonce."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performSmartCardLoginUsingContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  [contextCopy setLoginType:3];
  [(POAuthenticationProcess *)self _performEmbeddedAssertionLoginUsingContext:contextCopy completion:completionCopy];
}

- (void)performSEPKeyLoginUsingContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  [contextCopy setLoginType:2];
  [(POAuthenticationProcess *)self _performEmbeddedAssertionLoginUsingContext:contextCopy completion:completionCopy];
}

- (void)_performEmbeddedAssertionLoginUsingContext:(id)context completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Starting embedded assertion authentication", buf, 2u);
  }

  v9 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v11 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  if (v11)
  {
    v12 = PO_LOG_PODiagnostics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v26 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v12, OS_LOG_TYPE_DEFAULT, "Sending nonce request: %{public}@", buf, 0xCu);
    }

    v14 = PO_LOG_POAuthenticationProcess();
    v15 = os_signpost_id_make_with_pointer(v14, contextCopy);

    v16 = PO_LOG_POAuthenticationProcess();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_39;
    v20[3] = &unk_279A3DEF8;
    v24 = v15;
    v23 = completionCopy;
    v21 = contextCopy;
    selfCopy = self;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v21 request:v11 completion:v20];
  }

  else
  {
    v18 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create nonce request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_39(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess();
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", buf, 2u);
    }

    v6 = [*(a1 + 40) createEmbeddedAssertionWithContext:*(a1 + 32)];
    if (!v6)
    {
      v19 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_42();
      v20 = *(a1 + 32);
      (*(*(a1 + 48) + 16))();
LABEL_28:

      return;
    }

    v7 = [*(a1 + 32) loginType];
    v8 = *(a1 + 32);
    if (v7 == 3)
    {
      v9 = [*(a1 + 40) findAlgorithmForKey:{objc_msgSend(v8, "embeddedAssertionSigningKey")}];
      v10 = [*(a1 + 32) embeddedAssertionSigningKey];
      v11 = [*(a1 + 32) embeddedAssertionCertificate];
      v36 = 0;
      v12 = [POJWTSigning encodeAndSignJWT:v6 algorithm:v9 key:v10 certificate:v11 error:&v36];
      v13 = v36;
      if (v12)
      {

LABEL_15:
        v24 = [*(a1 + 40) createLoginJWTWithContext:*(a1 + 32) embeddedAssertion:v12];
        if (v24)
        {
          [*(a1 + 40) performLoginWithContext:*(a1 + 32) loginJWT:v24 completion:*(a1 + 48)];
        }

        else
        {
          v25 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_61();
          v26 = *(a1 + 32);
          (*(*(a1 + 48) + 16))();
        }

        goto LABEL_27;
      }

      v27 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_49();
      v28 = *(a1 + 32);
      (*(*(a1 + 48) + 16))();

LABEL_27:
      goto LABEL_28;
    }

    v21 = [v8 userSepSigningAlgorithm];
    v22 = [*(a1 + 32) embeddedAssertionSigningKey];
    v23 = [*(a1 + 32) embeddedAssertionCertificate];
    v35 = 0;
    v12 = [POJWTSigning encodeAndSignJWT:v6 signingAlgorithm:v21 key:v22 certificate:v23 error:&v35];
    v13 = v35;

    if (v12)
    {
      goto LABEL_15;
    }

    v29 = __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_55();
    if ([*(a1 + 32) loginType] == 2)
    {
      v30 = [*(a1 + 32) deviceConfiguration];
      if ([v30 sharedDeviceKeys])
      {
        v31 = [v13 code];

        if (v31 == -1010)
        {
          v32 = *(a1 + 32);
          v33 = *(*(a1 + 48) + 16);
LABEL_26:
          v33();
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    v34 = *(a1 + 32);
    v33 = *(*(a1 + 48) + 16);
    goto LABEL_26;
  }

  v14 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2();
  v15 = PO_LOG_POAuthenticationProcess();
  v16 = v15;
  v17 = *(a1 + 56);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
  }

  v18 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_42()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create embedded assertion JWT."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_49()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign embedded SmartCard assertion."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_55()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign embedded assertion."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEmbeddedAssertionLoginUsingContext_completion___block_invoke_61()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create login JWT."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)findAlgorithmForKey:(__SecKey *)key
{
  v4 = SecKeyCopyAttributes(key);
  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277CDBFE0]];
  if (![v5 isEqualToString:*MEMORY[0x277CDC000]])
  {
    v8 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277CDC028]];
    v9 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277CDC018]];
    if ([v8 isEqualToString:*MEMORY[0x277CDC030]])
    {
      v10 = 1;
    }

    else
    {
      v10 = [v8 isEqualToString:*MEMORY[0x277CDC040]];
    }

    v11 = [v8 isEqualToString:*MEMORY[0x277CDC060]];
    v12 = [v8 isEqualToString:*MEMORY[0x277CDC050]];
    if (v10)
    {
      intValue = [v9 intValue];
      switch(intValue)
      {
        case 521:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC2E0]))
          {
            v7 = @"ES512";
            goto LABEL_22;
          }

          v18 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_90();
          goto LABEL_21;
        case 384:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC2D8]))
          {
            v7 = @"ES384";
            goto LABEL_22;
          }

          v17 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_81();
          goto LABEL_21;
        case 256:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC2D0]))
          {
            v7 = @"ES256";
LABEL_22:

            goto LABEL_23;
          }

          v19 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_72();
          goto LABEL_21;
      }
    }

    else if (v11)
    {
      intValue2 = [v9 intValue];
      switch(intValue2)
      {
        case 4096:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC398]))
          {
            v7 = @"RS512";
            goto LABEL_22;
          }

          v21 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_114();
          goto LABEL_21;
        case 3072:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC390]))
          {
            v7 = @"RS384";
            goto LABEL_22;
          }

          v20 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_105();
          goto LABEL_21;
        case 2048:
          if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, *MEMORY[0x277CDC388]))
          {
            v7 = @"RS256";
            goto LABEL_22;
          }

          v22 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_96();
LABEL_21:
          v7 = 0;
          goto LABEL_22;
      }
    }

    else if (v12)
    {
      v7 = @"EdDSA";
      goto LABEL_22;
    }

    v15 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_123();
    goto LABEL_21;
  }

  v6 = __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke();
  v7 = 0;
LABEL_23:

  return v7;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Invalid key for signing."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_72()
{
  v0 = [POError errorWithCode:-1001 description:@"256 bit key does not support signing."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_81()
{
  v0 = [POError errorWithCode:-1001 description:@"384 bit key does not support signing."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_90()
{
  v0 = [POError errorWithCode:-1001 description:@"521 bit key does not support signing."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_96()
{
  v0 = [POError errorWithCode:-1001 description:@"Key does not support SHA256 signing."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_105()
{
  v0 = [POError errorWithCode:-1001 description:@"Key does not support SHA384 signing."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_114()
{
  v0 = [POError errorWithCode:-1001 description:@"Key does not support SHA512 signing."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __47__POAuthenticationProcess_findAlgorithmForKey___block_invoke_123()
{
  v0 = [POError errorWithCode:-1001 description:@"No supported algorithms for key"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performTokenRefreshUsingContext:(id)context completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Starting refresh", buf, 2u);
  }

  v9 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  [contextCopy setLoginType:100];
  v11 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  if (v11)
  {
    v12 = PO_LOG_PODiagnostics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v26 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v12, OS_LOG_TYPE_DEFAULT, "Sending nonce request: %{public}@", buf, 0xCu);
    }

    v14 = PO_LOG_POAuthenticationProcess();
    v15 = os_signpost_id_make_with_pointer(v14, contextCopy);

    v16 = PO_LOG_POAuthenticationProcess();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_131;
    v20[3] = &unk_279A3DED0;
    v24 = v15;
    v21 = contextCopy;
    selfCopy = self;
    v23 = completionCopy;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v21 request:v11 completion:v20];
  }

  else
  {
    v18 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_131(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess();
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", v19, 2u);
    }

    v6 = [*(a1 + 40) createRefreshJWTWithContext:*(a1 + 32)];
    if (v6)
    {
      [*(a1 + 40) performLoginWithContext:*(a1 + 32) loginJWT:v6 completion:*(a1 + 48)];
    }

    else
    {
      v17 = __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_137();
      v18 = *(a1 + 32);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v7 = __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_2();
    v8 = PO_LOG_POAuthenticationProcess();
    v9 = v8;
    v10 = *(a1 + 56);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v9, OS_SIGNPOST_INTERVAL_END, v10, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }

    v11 = [*(a1 + 32) password];
    v12 = [v11 mutableBytes];
    v13 = [*(a1 + 32) password];
    v14 = [v13 length];
    v15 = [*(a1 + 32) password];
    memset_s(v12, v14, 0, [v15 length]);

    v16 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }
}

id __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve nonce"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __70__POAuthenticationProcess_performTokenRefreshUsingContext_completion___block_invoke_137()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create refresh JWT."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)_performDynamicWSTrustPasswordLoginWithContext:(id)context completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = [(POAuthenticationProcess *)self createPreAuthenticationRequestWithContext:contextCopy];
  if (v8)
  {
    v9 = PO_LOG_PODiagnostics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v28 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_DEFAULT, "Sending preauthentication request: %{public}@", buf, 0xCu);
    }

    v11 = PO_LOG_POAuthenticationProcess();
    v12 = os_signpost_id_make_with_pointer(v11, contextCopy);

    v13 = PO_LOG_POAuthenticationProcess();
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PlatformSSO_PreauthenticationRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke_148;
    v22[3] = &unk_279A3DED0;
    v26 = v12;
    v23 = contextCopy;
    selfCopy = self;
    v25 = completionCopy;
    [(POAuthenticationProcess *)self performPreAuthenticationRequestWithContext:v23 request:v8 completion:v22];
  }

  else
  {
    v15 = __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke();
    password = [contextCopy password];
    mutableBytes = [password mutableBytes];
    password2 = [contextCopy password];
    v19 = [password2 length];
    password3 = [contextCopy password];
    memset_s(mutableBytes, v19, 0, [password3 length]);

    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

id __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create preauthentication request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke_148(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess();
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_PreauthenticationRequest", "Success", buf, 2u);
    }

    v6 = [*(a1 + 32) federated];
    v7 = PO_LOG_PODiagnostics();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        *v21 = 0;
        _os_log_impl(&dword_25E8B1000, v7, OS_LOG_TYPE_INFO, "User is federated", v21, 2u);
      }

      return [*(a1 + 40) _performWSTrustPasswordLoginWithContext:*(a1 + 32) completion:*(a1 + 48)];
    }

    else
    {
      if (v8)
      {
        *v20 = 0;
        _os_log_impl(&dword_25E8B1000, v7, OS_LOG_TYPE_INFO, "User is NOT federated", v20, 2u);
      }

      return [*(a1 + 40) _performPasswordLoginUsingContext:*(a1 + 32) completion:*(a1 + 48)];
    }
  }

  else
  {
    v10 = __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke_2();
    v11 = PO_LOG_POAuthenticationProcess();
    v12 = v11;
    v13 = *(a1 + 56);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PlatformSSO_PreauthenticationRequest", "Failed", v23, 2u);
    }

    v14 = [*(a1 + 32) password];
    v15 = [v14 mutableBytes];
    v16 = [*(a1 + 32) password];
    v17 = [v16 length];
    v18 = [*(a1 + 32) password];
    memset_s(v15, v17, 0, [v18 length]);

    v19 = *(a1 + 32);
    return (*(*(a1 + 48) + 16))();
  }
}

id __85__POAuthenticationProcess__performDynamicWSTrustPasswordLoginWithContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve preauthentication data."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)_performWSTrustPasswordLoginWithContext:(id)context completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = [(POAuthenticationProcess *)self createWSTrustMexRequestWithContext:contextCopy];
  if (v8)
  {
    v9 = PO_LOG_PODiagnostics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v28 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_DEFAULT, "Sending mex request: %{public}@", buf, 0xCu);
    }

    v11 = PO_LOG_POAuthenticationProcess();
    v12 = os_signpost_id_make_with_pointer(v11, contextCopy);

    v13 = PO_LOG_POAuthenticationProcess();
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PlatformSSO_WSTrustMexRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_159;
    v22[3] = &unk_279A3DED0;
    v26 = v12;
    v23 = contextCopy;
    selfCopy = self;
    v25 = completionCopy;
    [(POAuthenticationProcess *)self performWSTrustMexRequestWithContext:v23 request:v8 completion:v22];
  }

  else
  {
    v15 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke();
    password = [contextCopy password];
    mutableBytes = [password mutableBytes];
    password2 = [contextCopy password];
    v19 = [password2 length];
    password3 = [contextCopy password];
    memset_s(mutableBytes, v19, 0, [password3 length]);

    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create mex request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_159(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    v8 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_2();
    v9 = PO_LOG_POAuthenticationProcess();
    v10 = v9;
    v11 = *(a1 + 56);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_WSTrustMexRequest", "Failed", buf, 2u);
    }

    v12 = [*(a1 + 32) password];
    v13 = [v12 mutableBytes];
    v14 = [*(a1 + 32) password];
    v15 = [v14 length];
    v16 = [*(a1 + 32) password];
    memset_s(v13, v15, 0, [v16 length]);

    v17 = *(a1 + 32);
    v18 = *(*(a1 + 48) + 16);
    goto LABEL_25;
  }

  v3 = PO_LOG_POAuthenticationProcess();
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_WSTrustMexRequest", "Success", buf, 2u);
  }

  v6 = [*(a1 + 32) wsTrustVersion];
  switch(v6)
  {
    case 0:
      v20 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_165();
      v21 = [*(a1 + 32) password];
      v22 = [v21 mutableBytes];
      v23 = [*(a1 + 32) password];
      v24 = [v23 length];
      v25 = [*(a1 + 32) password];
      memset_s(v22, v24, 0, [v25 length]);

      v26 = *(a1 + 32);
      v18 = *(*(a1 + 48) + 16);
LABEL_25:
      v18();
      goto LABEL_26;
    case 2:
      v7 = [*(a1 + 40) createWSTrust2005RequestWithContext:*(a1 + 32)];
      goto LABEL_14;
    case 1:
      v7 = [*(a1 + 40) createWSTrust13RequestWithContext:*(a1 + 32)];
LABEL_14:
      v19 = v7;
      goto LABEL_17;
  }

  v19 = 0;
LABEL_17:
  v27 = [*(a1 + 32) password];
  v28 = [v27 mutableBytes];
  v29 = [*(a1 + 32) password];
  v30 = [v29 length];
  v31 = [*(a1 + 32) password];
  memset_s(v28, v30, 0, [v31 length]);

  [*(a1 + 32) setPassword:0];
  if (!v19)
  {
    v41 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_171();
    v42 = *(a1 + 32);
    v18 = *(*(a1 + 48) + 16);
    goto LABEL_25;
  }

  v32 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [*(a1 + 32) requestIdentifier];
    *buf = 138543362;
    v48 = v33;
    _os_log_impl(&dword_25E8B1000, v32, OS_LOG_TYPE_DEFAULT, "Sending WSTrust request: %{public}@", buf, 0xCu);
  }

  v34 = PO_LOG_POAuthenticationProcess();
  v35 = os_signpost_id_make_with_pointer(v34, *(a1 + 32));

  v36 = PO_LOG_POAuthenticationProcess();
  v37 = v36;
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "PlatformSSO_WSTrustRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v39 = *(a1 + 32);
  v38 = *(a1 + 40);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_177;
  v44[3] = &unk_279A3DF20;
  v46 = v35;
  v40 = *(a1 + 48);
  v44[4] = *(a1 + 40);
  v45 = v40;
  [v38 performWSTrustAuthenticationRequestWithContext:v39 request:v19 completion:v44];

LABEL_26:
  v43 = *MEMORY[0x277D85DE8];
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve mex data"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_165()
{
  v0 = [POError errorWithCode:-1001 description:@"federated idp does not support WSTrust 1.3 or 2005."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_171()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create WSTrust request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_177(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 == 1 && [v8 length])
  {
    v10 = PO_LOG_POAuthenticationProcess();
    v11 = v10;
    v12 = *(a1 + 48);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PlatformSSO_WSTrustRequest", "Success", v20, 2u);
    }

    v13 = [v9 base64EncodedStringWithOptions:0];
    v14 = [*(a1 + 32) createLoginJWTWithContext:v7 embeddedAssertion:v13];
    if (v14)
    {
      [*(a1 + 32) performLoginWithContext:v7 loginJWT:v14 completion:*(a1 + 40)];
    }

    else
    {
      v19 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184();
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v15 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_2_178();
    v16 = PO_LOG_POAuthenticationProcess();
    v17 = v16;
    v18 = *(a1 + 48);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PlatformSSO_WSTrustRequest", "Failed", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_2_178()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve WSTrust response."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create login JWT."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)_performEncryptedPasswordLoginUsingContext:(id)context completion:(id)completion
{
  v71[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  loginConfiguration = [contextCopy loginConfiguration];
  loginRequestEncryptionPublicKey = [loginConfiguration loginRequestEncryptionPublicKey];

  if (loginRequestEncryptionPublicKey)
  {
    v10 = [(POAuthenticationProcess *)self createEmbeddedPasswordAssertionWithContext:contextCopy];
    if (v10)
    {
      password = [contextCopy password];
      mutableBytes = [password mutableBytes];
      password2 = [contextCopy password];
      v14 = [password2 length];
      password3 = [contextCopy password];
      memset_s(mutableBytes, v14, 0, [password3 length]);

      [contextCopy setPassword:0];
      loginConfiguration2 = [contextCopy loginConfiguration];
      loginRequestEncryptionAlgorithm = [loginConfiguration2 loginRequestEncryptionAlgorithm];
      LODWORD(password2) = [loginRequestEncryptionAlgorithm isEqualToNumber:0x2870A9198];

      v63 = completionCopy;
      selfCopy = self;
      if (password2)
      {
        serverNonce = [contextCopy serverNonce];
        v19 = [serverNonce dataUsingEncoding:4];
        loginConfiguration3 = [contextCopy loginConfiguration];
        loginRequestEncryptionAPVPrefix = [loginConfiguration3 loginRequestEncryptionAPVPrefix];
        loginConfiguration4 = [contextCopy loginConfiguration];
        v23 = -[POAuthenticationProcess createPartyVInfoWithNonce:prefixData:apvPublicKey:](self, "createPartyVInfoWithNonce:prefixData:apvPublicKey:", v19, loginRequestEncryptionAPVPrefix, [loginConfiguration4 loginRequestEncryptionPublicKey]);

        header = [v10 header];
        serverNonce3 = v23;
        [header setApv:v23];
      }

      else
      {
        loginConfiguration5 = [contextCopy loginConfiguration];
        serverNonceClaimName = [loginConfiguration5 serverNonceClaimName];
        v29 = [serverNonceClaimName length];

        header2 = [v10 header];
        if (v29)
        {
          loginConfiguration6 = [contextCopy loginConfiguration];
          serverNonceClaimName2 = [loginConfiguration6 serverNonceClaimName];
          v70 = serverNonceClaimName2;
          serverNonce2 = [contextCopy serverNonce];
          v71[0] = serverNonce2;
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
          [header2 addCustomClaims:v34];
        }

        else
        {
          v68 = @"request_nonce";
          loginConfiguration6 = [contextCopy serverNonce];
          v69 = loginConfiguration6;
          serverNonceClaimName2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          [header2 addCustomClaims:serverNonceClaimName2];
        }

        serverNonce3 = [contextCopy serverNonce];
      }

      v35 = v10;
      loginConfiguration7 = [contextCopy loginConfiguration];
      loginRequestEncryptionAlgorithm2 = [loginConfiguration7 loginRequestEncryptionAlgorithm];
      loginConfiguration8 = [contextCopy loginConfiguration];
      loginRequestEncryptionPublicKey2 = [loginConfiguration8 loginRequestEncryptionPublicKey];
      loginConfiguration9 = [contextCopy loginConfiguration];
      loginRequestHpkePsk = [loginConfiguration9 loginRequestHpkePsk];
      loginConfiguration10 = [contextCopy loginConfiguration];
      loginRequestHpkePsk_id = [loginConfiguration10 loginRequestHpkePsk_id];
      v67 = 0;
      v43 = [POJWTEncryption encodeAndEncryptJWT:v35 encryptionAlgorithm:loginRequestEncryptionAlgorithm2 publicKey:loginRequestEncryptionPublicKey2 otherInfo:serverNonce3 psk:loginRequestHpkePsk psk_id:loginRequestHpkePsk_id authPrivateKey:0 auth_kid:0 error:&v67];
      v60 = v67;

      body = [v35 body];
      password4 = [body password];
      mutableBytes2 = [password4 mutableBytes];
      body2 = [v35 body];
      password5 = [body2 password];
      v49 = [password5 length];
      v62 = v35;
      v50 = v35;
      v51 = v43;
      body3 = [v50 body];
      password6 = [body3 password];
      memset_s(mutableBytes2, v49, 0, [password6 length]);

      if (v51)
      {
        v54 = v60;
        v55 = [(POAuthenticationProcess *)selfCopy createLoginJWTWithContext:contextCopy embeddedAssertion:v51];
        completionCopy = v63;
        if (v55)
        {
          [(POAuthenticationProcess *)selfCopy performLoginWithContext:contextCopy loginJWT:v55 completion:v63];
        }

        else
        {
          v57 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184();
          v63[2](v63, 2, contextCopy, 0);
        }
      }

      else
      {
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_204;
        v65[3] = &unk_279A3DC48;
        v54 = v60;
        v66 = v60;
        v56 = __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_204(v65);
        completionCopy = v63;
        v63[2](v63, 2, contextCopy, 0);
        v55 = v66;
      }

      v10 = v62;
    }

    else
    {
      v26 = __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_193();
      completionCopy[2](completionCopy, 2, contextCopy, 0);
    }
  }

  else
  {
    v25 = __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke();
    completionCopy[2](completionCopy, 2, contextCopy, 0);
  }

  v58 = *MEMORY[0x277D85DE8];
}

id __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing encryption public key."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_193()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create embedded password assertion JWT."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAuthenticationProcess__performEncryptedPasswordLoginUsingContext_completion___block_invoke_204(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to encrypt embedded assertion."];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (void)_performPasswordLoginUsingContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = [(POAuthenticationProcess *)self createLoginJWTWithContext:contextCopy embeddedAssertion:0];
  password = [contextCopy password];
  mutableBytes = [password mutableBytes];
  password2 = [contextCopy password];
  v11 = [password2 length];
  password3 = [contextCopy password];
  memset_s(mutableBytes, v11, 0, [password3 length]);

  [contextCopy setPassword:0];
  if (v7)
  {
    [(POAuthenticationProcess *)self performLoginWithContext:contextCopy loginJWT:v7 completion:completionCopy];
  }

  else
  {
    v13 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184();
    completionCopy[2](completionCopy, 2, contextCopy, 0);
  }
}

- (id)createPreAuthenticationRequestWithContext:(id)context
{
  v31[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_alloc(MEMORY[0x277CCACE0]);
  loginConfiguration = [contextCopy loginConfiguration];
  federationUserPreauthenticationURL = [loginConfiguration federationUserPreauthenticationURL];
  v7 = [v4 initWithURL:federationUserPreauthenticationURL resolvingAgainstBaseURL:0];

  v8 = MEMORY[0x277CCAD18];
  userName = [contextCopy userName];
  v10 = [v8 queryItemWithName:@"user" value:userName];
  v31[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];

  loginConfiguration2 = [contextCopy loginConfiguration];
  customFederationUserPreauthenticationRequestValues = [loginConfiguration2 customFederationUserPreauthenticationRequestValues];

  if (customFederationUserPreauthenticationRequestValues)
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customFederationUserPreauthenticationRequestValues2 = [loginConfiguration3 customFederationUserPreauthenticationRequestValues];
    v16 = [v11 arrayByAddingObjectsFromArray:customFederationUserPreauthenticationRequestValues2];

    v11 = v16;
  }

  queryItems = [v7 queryItems];

  if (queryItems)
  {
    queryItems2 = [v7 queryItems];
    v19 = [queryItems2 arrayByAddingObjectsFromArray:v11];
    [v7 setQueryItems:v19];
  }

  else
  {
    [v7 setQueryItems:v11];
  }

  v20 = objc_alloc(MEMORY[0x277CCAB70]);
  v21 = [v7 URL];
  v22 = [v20 initWithURL:v21 cachePolicy:4 timeoutInterval:30.0];

  [v22 setHTTPMethod:@"GET"];
  [v22 addValue:@"application/json" forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v22 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v24 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess createPreAuthenticationRequestWithContext:];
  }

  v25 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    requestIdentifier2 = [contextCopy requestIdentifier];
    v29 = 138543362;
    v30 = requestIdentifier2;
    _os_log_impl(&dword_25E8B1000, v25, OS_LOG_TYPE_INFO, "Preauthentication request: %{public}@", &v29, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)performPreAuthenticationRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"Preauthentication Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Preauthentication response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231;
    v66[3] = &unk_279A3DE00;
    v67 = v9;
    v68 = v11;
    v12 = v11;
    v16 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231(v66);
    v17 = [a1[4] completionQueue];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_235;
    v64[3] = &unk_279A3DF48;
    v65 = a1[6];
    [v17 addOperationWithBlock:v64];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
      if ([v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") < 300)
      {
        v20 = PO_LOG_POAuthenticationProcess();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_cold_1();
        }

        v54 = 0;
        v21 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:16 error:&v54];
        v22 = v54;
        v15 = v22;
        if (!v21 || v22)
        {
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_251;
          v52[3] = &unk_279A3DC48;
          v36 = &v53;
          v53 = v22;
          v38 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_251(v52);
          v39 = [a1[4] completionQueue];
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_255;
          v50[3] = &unk_279A3DF48;
          v51 = a1[6];
          [v39 addOperationWithBlock:v50];

          v35 = v51;
        }

        else
        {
          v23 = MEMORY[0x277CCAC30];
          v24 = [a1[5] loginConfiguration];
          v25 = [v24 federationPredicate];
          v26 = [v23 predicateWithFormat:v25];

          v27 = [v26 evaluateWithObject:v21];
          [a1[5] setFederated:v27];
          [a1[5] setWsTrustFederationMexURL:0];
          if ([a1[5] federated])
          {
            v28 = [a1[5] loginConfiguration];
            v29 = [v28 federationMexURLKeypath];

            if (!v29)
            {
              goto LABEL_20;
            }

            v30 = [a1[5] loginConfiguration];
            v31 = [v30 federationMexURLKeypath];
            v32 = [v21 valueForKeyPath:v31];

            if (!v32)
            {
LABEL_20:
              v32 = [v21 objectForKeyedSubscript:@"federation_metadata_url"];
            }

            if ([v32 length])
            {
              v33 = [MEMORY[0x277CBEBC0] URLWithString:v32];
              [a1[5] setWsTrustFederationMexURL:v33];
            }
          }

          if (![a1[5] federated] || objc_msgSend(a1[5], "federated") && (objc_msgSend(a1[5], "wsTrustFederationMexURL"), v34 = objc_claimAutoreleasedReturnValue(), v34, v34))
          {
            v35 = [a1[4] completionQueue];
            v45 = MEMORY[0x277D85DD0];
            v46 = 3221225472;
            v47 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_265;
            v48 = &unk_279A3DF48;
            v36 = &v49;
            v49 = a1[6];
            v37 = &v45;
          }

          else
          {
            v35 = [a1[4] completionQueue];
            v40 = MEMORY[0x277D85DD0];
            v41 = 3221225472;
            v42 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_266;
            v43 = &unk_279A3DF48;
            v36 = &v44;
            v44 = a1[6];
            v37 = &v40;
          }

          [v35 addOperationWithBlock:{v37, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49}];
        }
      }

      else
      {
        v57 = MEMORY[0x277D85DD0];
        v58 = 3221225472;
        v59 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244;
        v60 = &unk_279A3DC48;
        v61 = v12;
        v13 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244();
        v14 = [a1[4] completionQueue];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_249;
        v55[3] = &unk_279A3DF48;
        v56 = a1[6];
        [v14 addOperationWithBlock:v55];

        v15 = v61;
      }
    }

    else
    {
      v18 = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2();
      v19 = [a1[4] completionQueue];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_243;
      v62[3] = &unk_279A3DF48;
      v63 = a1[6];
      [v19 addOperationWithBlock:v62];

      v12 = v63;
    }
  }
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231(uint64_t a1)
{
  v2 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve Preauthentication response."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1(v2, a1);
  }

  return v2;
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for Preauthentication."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244()
{
  v0 = [POError errorWithCode:-1009 description:@"Preauthentication request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v0;
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_251(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to parse Preauthentication response."];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"Exception when evaluating federationPredicate"];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

- (id)createWSTrustMexRequestWithContext:(id)context
{
  v3 = MEMORY[0x277CCAB70];
  contextCopy = context;
  v5 = [v3 alloc];
  wsTrustFederationMexURL = [contextCopy wsTrustFederationMexURL];

  v7 = [v5 initWithURL:wsTrustFederationMexURL cachePolicy:4 timeoutInterval:30.0];
  [v7 setHTTPMethod:@"GET"];
  v8 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess createWSTrustMexRequestWithContext:];
  }

  return v7;
}

- (void)performWSTrustMexRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"WSTrust Mex Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "WSTrust Mex response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_271;
    v36[3] = &unk_279A3DE00;
    v37 = v9;
    v38 = v11;
    v12 = v11;
    v16 = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_271(v36);
    v17 = [a1[4] completionQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_275;
    v34[3] = &unk_279A3DF48;
    v35 = a1[6];
    [v17 addOperationWithBlock:v34];

    v15 = v37;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2();
      v19 = [a1[4] completionQueue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_281;
      v32[3] = &unk_279A3DF48;
      v33 = a1[6];
      [v19 addOperationWithBlock:v32];

      v12 = v33;
      goto LABEL_13;
    }

    v12 = v8;
    if ([v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") < 300)
    {
      v20 = PO_LOG_POAuthenticationProcess();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_cold_1();
      }

      [a1[5] setWsTrustVersion:0];
      if (![a1[4] validateWSTrustMexResponseWithContext:a1[5] response:v7] || !objc_msgSend(a1[5], "wsTrustVersion") || (objc_msgSend(a1[5], "wsTrustFederationURL"), v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
      {
        (*(a1[6] + 2))();
        goto LABEL_13;
      }

      v22 = [a1[4] completionQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_287;
      v23[3] = &unk_279A3DF48;
      v24 = a1[6];
      [v22 addOperationWithBlock:v23];

      v15 = v24;
    }

    else
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2_282;
      v30 = &unk_279A3DC48;
      v12 = v12;
      v31 = v12;
      v13 = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2_282();
      v14 = [a1[4] completionQueue];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_286;
      v25[3] = &unk_279A3DF48;
      v26 = a1[6];
      [v14 addOperationWithBlock:v25];

      v15 = v31;
    }
  }

LABEL_13:
}

id __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_271(uint64_t a1)
{
  v2 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve WSTrust Mex response."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1(v2, a1);
  }

  return v2;
}

id __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for WSTrust Mex response."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_2_282()
{
  v0 = [POError errorWithCode:-1009 description:@"WSTrust Mex request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v0;
}

- (BOOL)validateWSTrustMexResponseWithContext:(id)context response:(id)response
{
  contextCopy = context;
  responseCopy = response;
  wstrustProcess = [(POAuthenticationProcess *)self wstrustProcess];
  v9 = [wstrustProcess parseWSTrustMexResponse:responseCopy version:1];

  if (v9 || (-[POAuthenticationProcess wstrustProcess](self, "wstrustProcess"), v10 = objc_claimAutoreleasedReturnValue(), [v10 parseWSTrustMexResponse:responseCopy version:2], v9 = objc_claimAutoreleasedReturnValue(), v10, v9))
  {
    [contextCopy setWsTrustVersion:{objc_msgSend(v9, "version")}];
    v11 = MEMORY[0x277CBEBC0];
    endpointURLString = [v9 endpointURLString];
    v13 = [v11 URLWithString:endpointURLString];
    [contextCopy setWsTrustFederationURL:v13];

    LOBYTE(v9) = 1;
  }

  else
  {
    v15 = __74__POAuthenticationProcess_validateWSTrustMexResponseWithContext_response___block_invoke();
  }

  return v9;
}

id __74__POAuthenticationProcess_validateWSTrustMexResponseWithContext_response___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to find valid WSTrust values in mex response."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createWSTrust13RequestWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(POWSTrustRequest);
  loginConfiguration = [contextCopy loginConfiguration];
  federationRequestURN = [loginConfiguration federationRequestURN];
  [(POWSTrustRequest *)v5 setEndpointURN:federationRequestURN];

  wsTrustFederationNonce = [contextCopy wsTrustFederationNonce];
  [(POWSTrustRequest *)v5 setNonce:wsTrustFederationNonce];

  wsTrustFederationURL = [contextCopy wsTrustFederationURL];
  absoluteString = [wsTrustFederationURL absoluteString];
  [(POWSTrustRequest *)v5 setTo:absoluteString];

  userName = [contextCopy userName];
  [(POWSTrustRequest *)v5 setUserName:userName];

  password = [contextCopy password];
  [(POWSTrustRequest *)v5 setPassword:password];

  wstrustProcess = [(POAuthenticationProcess *)self wstrustProcess];
  v14 = [wstrustProcess createWSTrust13Request:v5];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CCAB70]);
    wsTrustFederationURL2 = [contextCopy wsTrustFederationURL];
    v17 = [v15 initWithURL:wsTrustFederationURL2 cachePolicy:4 timeoutInterval:30.0];

    [v17 setHTTPMethod:@"POST"];
    [v17 addValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-type"];
    [v17 addValue:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue" forHTTPHeaderField:@"SOAPAction"];
    [v17 setHTTPBody:v14];
  }

  else
  {
    v18 = __61__POAuthenticationProcess_createWSTrust13RequestWithContext___block_invoke();
    v17 = 0;
  }

  return v17;
}

id __61__POAuthenticationProcess_createWSTrust13RequestWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to created WSTrust login request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createWSTrust2005RequestWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(POWSTrustRequest);
  loginConfiguration = [contextCopy loginConfiguration];
  federationRequestURN = [loginConfiguration federationRequestURN];
  [(POWSTrustRequest *)v5 setEndpointURN:federationRequestURN];

  wsTrustFederationNonce = [contextCopy wsTrustFederationNonce];
  [(POWSTrustRequest *)v5 setNonce:wsTrustFederationNonce];

  wsTrustFederationURL = [contextCopy wsTrustFederationURL];
  absoluteString = [wsTrustFederationURL absoluteString];
  [(POWSTrustRequest *)v5 setTo:absoluteString];

  userName = [contextCopy userName];
  [(POWSTrustRequest *)v5 setUserName:userName];

  password = [contextCopy password];
  [(POWSTrustRequest *)v5 setPassword:password];

  wstrustProcess = [(POAuthenticationProcess *)self wstrustProcess];
  v14 = [wstrustProcess createWSTrust2005Request:v5];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CCAB70]);
    wsTrustFederationURL2 = [contextCopy wsTrustFederationURL];
    v17 = [v15 initWithURL:wsTrustFederationURL2 cachePolicy:4 timeoutInterval:30.0];

    [v17 setHTTPMethod:@"POST"];
    [v17 addValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-type"];
    [v17 addValue:@"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue" forHTTPHeaderField:@"SOAPAction"];
    [v17 setHTTPBody:v14];
  }

  else
  {
    v18 = __61__POAuthenticationProcess_createWSTrust13RequestWithContext___block_invoke();
    v17 = 0;
  }

  return v17;
}

- (void)performWSTrustAuthenticationRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"WSTrust Login Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "WSTrust login response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_316;
    v48[3] = &unk_279A3DE00;
    v49 = v9;
    v50 = v11;
    v12 = v11;
    v16 = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_316(v48);
    v17 = [a1[4] completionQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_320;
    v45[3] = &unk_279A3DF98;
    v47 = a1[6];
    v46 = a1[5];
    [v17 addOperationWithBlock:v45];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
      if ([v12 statusCode] == 200 || objc_msgSend(v12, "statusCode") == 500)
      {
        v13 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
        v14 = PO_LOG_POAuthenticationProcess();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        if (v13)
        {
          if (v15)
          {
            __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_cold_2();
          }
        }

        else if (v15)
        {
          __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_cold_1();
        }

        v20 = a1[4];
        v21 = a1[5];
        v33 = 0;
        v22 = [v20 validateWSTrustAuthenticationResponseWithContext:v21 response:v7 returningAssertion:&v33];
        v23 = v33;
        v24 = [a1[4] completionQueue];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_333;
        v28[3] = &unk_279A3DFC0;
        v31 = a1[6];
        v32 = v22;
        v29 = a1[5];
        v30 = v23;
        v25 = v23;
        [v24 addOperationWithBlock:v28];
      }

      else
      {
        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2_327;
        v40 = &unk_279A3DC48;
        v41 = v12;
        v26 = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2_327();
        v27 = [a1[4] completionQueue];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_331;
        v34[3] = &unk_279A3DF98;
        v36 = a1[6];
        v35 = a1[5];
        [v27 addOperationWithBlock:v34];

        v25 = v41;
      }
    }

    else
    {
      v18 = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2();
      v19 = [a1[4] completionQueue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_326;
      v42[3] = &unk_279A3DF98;
      v44 = a1[6];
      v43 = a1[5];
      [v19 addOperationWithBlock:v42];

      v12 = v44;
    }
  }
}

id __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_316(uint64_t a1)
{
  v2 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve WSTrust login response."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1(v2, a1);
  }

  return v2;
}

id __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for WSTrust login response."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_2_327()
{
  v0 = [POError errorWithCode:-1009 description:@"WSTrust login request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v0;
}

- (unint64_t)validateWSTrustAuthenticationResponseWithContext:(id)context response:(id)response returningAssertion:(id *)assertion
{
  contextCopy = context;
  *assertion = 0;
  responseCopy = response;
  wstrustProcess = [(POAuthenticationProcess *)self wstrustProcess];
  v11 = [wstrustProcess parseWSTrustResponse:responseCopy version:{objc_msgSend(contextCopy, "wsTrustVersion")}];

  if (!v11)
  {
    v22 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke();
LABEL_15:
    v21 = 3;
    goto LABEL_16;
  }

  nonce = [v11 nonce];
  wsTrustFederationNonce = [contextCopy wsTrustFederationNonce];
  v14 = [nonce isEqualToString:wsTrustFederationNonce];

  if ((v14 & 1) == 0)
  {
    v23 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_342();
    goto LABEL_15;
  }

  if (![v11 isFault])
  {
    nonce2 = [v11 nonce];
    if (nonce2 && (v25 = nonce2, [v11 created], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
      created = [v11 created];
      [created timeIntervalSinceNow];
      v29 = v28;

      if (v29 <= 120.0)
      {
        expires = [v11 expires];

        if (expires && ([v11 expires], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "timeIntervalSinceNow"), v36 = v35, v34, v36 < -120.0))
        {
          v42 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_365();
        }

        else
        {
          tokenType = [v11 tokenType];
          v38 = [tokenType length];

          if (v38)
          {
            tokenType2 = [v11 tokenType];
            [contextCopy setTokenTypeNamespace:tokenType2];

            assertion = [v11 assertion];

            if (assertion)
            {
              assertion2 = [v11 assertion];
              *assertion = [assertion2 dataUsingEncoding:4];

              v21 = 1;
              goto LABEL_16;
            }

            v44 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_375();
          }

          else
          {
            v43 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_369();
          }
        }
      }

      else
      {
        v30 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361();
      }
    }

    else
    {
      v31 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_355();
    }

    goto LABEL_15;
  }

  v15 = MEMORY[0x277CCACA8];
  faultSubCodeValue = [v11 faultSubCodeValue];
  faultReason = [v11 faultReason];
  v18 = [v15 stringWithFormat:@"faultSubCode = %@, faultReason = %@", faultSubCodeValue, faultReason];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_351;
  v45[3] = &unk_279A3DC48;
  v46 = v18;
  v19 = v18;
  v20 = __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_351(v45);
  if ([v11 isCredentialFault])
  {
    v21 = 4;
  }

  else
  {
    v21 = 3;
  }

LABEL_16:
  return v21;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to parse WSTrust login response."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_342()
{
  v0 = [POError errorWithCode:-1001 description:@"WSTrust login response validation failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_351(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"WSTrust login failed"];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_355()
{
  v0 = [POError errorWithCode:-1008 description:@"WSTrust login response validation missing required values."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to verify created."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_365()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to verify expires."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_369()
{
  v0 = [POError errorWithCode:-1008 description:@"WSTrust login response missing TokenType."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_375()
{
  v0 = [POError errorWithCode:-1008 description:@"WSTrust login response validation missing assertion."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performLoginWithContext:(id)context loginJWT:(id)t completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  tCopy = t;
  completionCopy = completion;
  deviceConfiguration = [contextCopy deviceConfiguration];
  signingAlgorithm = [deviceConfiguration signingAlgorithm];
  deviceConfiguration2 = [contextCopy deviceConfiguration];
  deviceSigningKey = [deviceConfiguration2 deviceSigningKey];
  deviceConfiguration3 = [contextCopy deviceConfiguration];
  v16 = +[POJWTSigning encodeAndSignJWT:signingAlgorithm:key:certificate:error:](POJWTSigning, "encodeAndSignJWT:signingAlgorithm:key:certificate:error:", tCopy, signingAlgorithm, deviceSigningKey, [deviceConfiguration3 deviceSigningCertificate], 0);

  if (v16)
  {
    body = [tCopy body];
    [body zeroPassword];

    v18 = [(POAuthenticationProcess *)self createLoginRequestWithContext:contextCopy jwt:v16];
    if (v18)
    {

      v19 = PO_LOG_PODiagnostics();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        requestIdentifier = [contextCopy requestIdentifier];
        *buf = 138543362;
        v32 = requestIdentifier;
        _os_log_impl(&dword_25E8B1000, v19, OS_LOG_TYPE_DEFAULT, "Sending login request: %{public}@", buf, 0xCu);
      }

      v21 = PO_LOG_POAuthenticationProcess();
      v22 = os_signpost_id_make_with_pointer(v21, contextCopy);

      v23 = PO_LOG_POAuthenticationProcess();
      v24 = v23;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25E8B1000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "PlatformSSO_LoginRequest", " enableTelemetry=YES ", buf, 2u);
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_392;
      v28[3] = &unk_279A3DF20;
      v30 = v22;
      v28[4] = self;
      v29 = completionCopy;
      [(POAuthenticationProcess *)self performLoginRequestWithContext:contextCopy request:v18 completion:v28];

      tCopy = 0;
    }

    else
    {
      v26 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_386();
      (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
    }
  }

  else
  {
    v25 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign login request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_386()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create login request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_392(void *a1, uint64_t a2, void *a3, void *a4)
{
  v100 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_INFO, "Login response received", buf, 2u);
  }

  v10 = PO_LOG_POAuthenticationProcess();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 134217984;
    v99 = a2;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PlatformSSO_LoginRequest", "result=%lu", buf, 0xCu);
  }

  if (a2 == 1)
  {
    v13 = [POLoginResponseTokenJWT alloc];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v15 = [(POLoginResponseTokenJWT *)v13 initWithString:v14];

    if (v15)
    {
      v83 = v8;
      v16 = *(a1[4] + 40);
      v17 = [(POJWT *)v15 decodedHeader];
      v18 = [v17 enc];
      v84 = a1;
      if ([v16 containsObject:v18])
      {

        goto LABEL_13;
      }

      v21 = *(a1[4] + 40);
      v22 = MEMORY[0x277CCACA8];
      v23 = [(POJWT *)v15 decodedHeader];
      [v23 alg];
      v25 = v24 = v15;
      v26 = [(POJWT *)v24 decodedHeader];
      v27 = [v26 enc];
      v28 = [v22 stringWithFormat:@"%@, %@", v25, v27];
      LOBYTE(v21) = [v21 containsObject:v28];

      v15 = v24;
      if (v21)
      {
LABEL_13:
        v29 = [v7 deviceConfiguration];
        v30 = [v29 encryptionAlgorithm];
        v85 = v15;
        if ([v30 isEqualToNumber:?])
        {
          [v7 apv];
        }

        else
        {
          [v7 nonce];
        }
        v82 = ;

        v80 = [v7 deviceConfiguration];
        v31 = [v80 encryptionAlgorithm];
        v32 = [v7 deviceConfiguration];
        v33 = [v32 deviceEncryptionKey];
        v34 = [v7 loginConfiguration];
        v35 = [v34 hpkePsk];
        v36 = [v7 loginConfiguration];
        v37 = [v36 hpkePsk_id];
        v38 = v7;
        v39 = v37;
        v79 = v38;
        v40 = [v38 loginConfiguration];
        v41 = [v40 hpkeAuthPublicKey];
        v95 = 0;
        v42 = [POJWTEncryption decodeAndDecryptJWT:v85 encryptionAlgorithm:v31 privateKey:v33 otherInfo:v82 psk:v35 psk_id:v39 authPublicKey:v41 error:&v95];
        v43 = v95;

        if (v42)
        {
          v81 = v43;
          v7 = v79;
          v44 = [v79 deviceConfiguration];
          v45 = [v44 encryptionAlgorithm];
          v46 = [v45 isEqualToNumber:0x2870A9198];

          v8 = v83;
          v15 = v85;
          if (!v46)
          {
LABEL_22:
            v52 = v82;
            if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
            {
              v53 = PO_LOG_POAuthenticationProcess();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_392_cold_1();
              }
            }

            v54 = [(POLoginResponseTokenJWT *)v85 decodedBody];
            v55 = [POIDTokenJWT alloc];
            v56 = [v54 id_token];
            v57 = [(POIDTokenJWT *)v55 initWithString:v56];

            if (v57)
            {
              v58 = [(POJWT *)v57 decodedHeader];
              v59 = [v58 kid];

              v60 = v81;
              if ([v59 length])
              {
                v61 = v84[4];
                v86[0] = MEMORY[0x277D85DD0];
                v86[1] = 3221225472;
                v86[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_445;
                v86[3] = &unk_279A3DFE8;
                v87 = v59;
                v92 = v84[5];
                v62 = v79;
                v63 = v84[4];
                v88 = v62;
                v89 = v63;
                v90 = v57;
                v91 = v85;
                v64 = v62;
                v52 = v82;
                [v61 retrieveSigningKeyWithContext:v64 keyId:v87 completion:v86];
              }

              else
              {
                v76 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_439();
                (*(v84[5] + 16))();
              }
            }

            else
            {
              v75 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_433();
              (*(v84[5] + 16))();
              v60 = v81;
            }

            v8 = v83;
            goto LABEL_38;
          }

          if ([v84[4] validatePartyUInfo:v85 context:v79])
          {
            v47 = [v79 deviceConfiguration];
            v48 = SecKeyCopyPublicKey([v47 deviceEncryptionKey]);

            v49 = v84[4];
            v50 = [v79 apv];
            v51 = [v49 validatePartyVInfo:v50 context:v79 publicKey:v48];

            if (v48)
            {
              CFRelease(v48);
            }

            if (v51)
            {
              goto LABEL_22;
            }

            v77 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_426();
          }

          else
          {
            v74 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_420();
          }

          (*(v84[5] + 16))();
          v60 = v43;
          v52 = v82;
        }

        else
        {
          v52 = v82;
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_416;
          v93[3] = &unk_279A3DC48;
          v94 = v43;
          v65 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_416(v93);
          v7 = v79;
          (*(v84[5] + 16))();

          v8 = v83;
          v15 = v85;
          v60 = v43;
        }

LABEL_38:

        goto LABEL_39;
      }

      v66 = MEMORY[0x277CCACA8];
      v67 = [(POJWT *)v24 decodedHeader];
      v68 = [v67 alg];
      v69 = [(POJWT *)v24 decodedHeader];
      v70 = [v69 enc];
      v71 = [v66 stringWithFormat:@"alg = %@, enc = %@", v68, v70];

      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_412;
      v96[3] = &unk_279A3DC48;
      v97 = v71;
      v72 = v71;
      v73 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_412(v96);
      (*(v84[5] + 16))();

      v8 = v83;
    }

    else
    {
      v20 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_400();
      (*(a1[5] + 16))();
    }

LABEL_39:

    goto LABEL_40;
  }

  v19 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_393();
  (*(a1[5] + 16))();
LABEL_40:

  v78 = *MEMORY[0x277D85DE8];
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_393()
{
  v0 = [POError errorWithCode:-1001 description:@"login request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_400()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to parse login response."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_412(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"unsupported login response algorithm and encryption."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_416(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to decrypt login response."];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_420()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to validate apu."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_426()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to validate apv."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_433()
{
  v0 = [POError errorWithCode:-1008 description:@"No id_token in login response."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_439()
{
  v0 = [POError errorWithCode:-1008 description:@"No kid in login response id_token."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_445(uint64_t a1, const void *a2)
{
  v4 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v4, OS_LOG_TYPE_INFO, "JWKS response received", buf, 2u);
  }

  if (a2)
  {
    if ([*(a1 + 48) validateIdToken:*(a1 + 56) context:*(a1 + 40) key:a2])
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 40);
      v7 = objc_alloc(MEMORY[0x277CBEA90]);
      v8 = [*(a1 + 64) rawBody];
      v9 = [v7 psso_initWithBase64URLEncodedString:v8];
      (*(v5 + 16))(v5, 1, v6, v9);
    }

    else
    {
      v12 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_451();
      v13 = *(a1 + 40);
      (*(*(a1 + 72) + 16))();
    }

    CFRelease(a2);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_446;
    v14[3] = &unk_279A3DC48;
    v15 = *(a1 + 32);
    v10 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_446(v14);
    v11 = *(a1 + 40);
    (*(*(a1 + 72) + 16))();
  }
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_446(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"No key available with identifier."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_451()
{
  v0 = [POError errorWithCode:-1008 description:@"id_token signature check failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createAuthenticationContextUsingLoginConfiguration:(id)configuration deviceConfiguration:(id)deviceConfiguration userName:(id)name resumeData:(id)data
{
  configurationCopy = configuration;
  deviceConfigurationCopy = deviceConfiguration;
  dataCopy = data;
  nameCopy = name;
  v14 = objc_alloc_init(POAuthenticationContext);
  [(POAuthenticationContext *)v14 setLoginConfiguration:configurationCopy];
  [(POAuthenticationContext *)v14 setDeviceConfiguration:deviceConfigurationCopy];
  [(POAuthenticationContext *)v14 setUserName:nameCopy];

  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration set_preventsAppSSO:1];
  if ([(POAuthenticationProcess *)self waitForConnectivity])
  {
    [ephemeralSessionConfiguration setWaitsForConnectivity:1];
    [(POAuthenticationProcess *)self timeoutIntervalForResource];
    if (v16 == 0.0)
    {
      v16 = 180.0;
    }

    [ephemeralSessionConfiguration setTimeoutIntervalForResource:v16];
  }

  v17 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
  [(POAuthenticationContext *)v14 setUrlSession:v17];

  [(POAuthenticationContext *)v14 setScope:@"openid offline_access"];
  additionalScopes = [configurationCopy additionalScopes];
  v19 = [additionalScopes length];

  if (v19)
  {
    additionalScopes2 = [configurationCopy additionalScopes];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v22 = [additionalScopes2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v23 = MEMORY[0x277CCACA8];
    scope = [(POAuthenticationContext *)v14 scope];
    v25 = [v23 stringWithFormat:@"%@ %@", scope, v22];
    [(POAuthenticationContext *)v14 setScope:v25];
  }

  if (dataCopy)
  {
    [(POAuthenticationContext *)v14 applyResumeData:dataCopy];
  }

  if (!deviceConfigurationCopy)
  {
    goto LABEL_13;
  }

  if ([deviceConfigurationCopy deviceEncryptionKey])
  {
    encryptionAlgorithm = [deviceConfigurationCopy encryptionAlgorithm];
    v27 = [encryptionAlgorithm isEqualToNumber:0x2870A9198];

    if (v27)
    {
      nonce = [(POAuthenticationContext *)v14 nonce];
      v29 = -[POAuthenticationProcess createPartyVInfoWithNonce:apvKey:](self, "createPartyVInfoWithNonce:apvKey:", nonce, [deviceConfigurationCopy deviceEncryptionKey]);
      [(POAuthenticationContext *)v14 setApv:v29];
    }

LABEL_13:
    v30 = v14;
    goto LABEL_15;
  }

  v30 = 0;
LABEL_15:

  return v30;
}

- (id)createPartyVInfoWithNonce:(id)nonce apvKey:(__SecKey *)key
{
  v6 = [nonce dataUsingEncoding:1];
  v7 = [@"Apple" dataUsingEncoding:4];
  v8 = SecKeyCopyPublicKey(key);
  v9 = [(POAuthenticationProcess *)self createPartyVInfoWithNonce:v6 prefixData:v7 apvPublicKey:v8];
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

- (id)createPartyVInfoWithNonce:(id)nonce prefixData:(id)data apvPublicKey:(__SecKey *)key
{
  nonceCopy = nonce;
  dataCopy = data;
  if (key && [nonceCopy length])
  {
    v9 = SecKeyCopyExternalRepresentation(key, 0);
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v15 = bswap32([dataCopy length]);
    [v10 appendBytes:&v15 length:4];
    [v10 appendData:dataCopy];
    v14 = bswap32([(__CFData *)v9 length]);
    [v10 appendBytes:&v14 length:4];
    [v10 appendData:v9];
    v13 = bswap32([nonceCopy length]);
    [v10 appendBytes:&v13 length:4];
    [v10 appendData:nonceCopy];
    psso_base64URLEncodedString = [v10 psso_base64URLEncodedString];
  }

  else
  {
    psso_base64URLEncodedString = 0;
  }

  return psso_base64URLEncodedString;
}

- (id)createNonceRequestWithContext:(id)context
{
  v26[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_alloc(MEMORY[0x277CCAB70]);
  loginConfiguration = [contextCopy loginConfiguration];
  nonceEndpointURL = [loginConfiguration nonceEndpointURL];
  v7 = [v4 initWithURL:nonceEndpointURL cachePolicy:4 timeoutInterval:30.0];

  [v7 setHTTPMethod:@"POST"];
  [v7 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
  [v7 addValue:@"application/json" forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v7 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v9 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"srv_challenge"];
  v26[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];

  loginConfiguration2 = [contextCopy loginConfiguration];
  customNonceRequestValues = [loginConfiguration2 customNonceRequestValues];

  if (customNonceRequestValues)
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customNonceRequestValues2 = [loginConfiguration3 customNonceRequestValues];
    v16 = [v11 arrayByAddingObjectsFromArray:customNonceRequestValues2];

    v11 = v16;
  }

  [v9 setQueryItems:v11];
  percentEncodedQuery = [v9 percentEncodedQuery];
  v18 = [percentEncodedQuery dataUsingEncoding:4];
  [v7 setHTTPBody:v18];

  v19 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess createNonceRequestWithContext:];
  }

  v20 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    requestIdentifier2 = [contextCopy requestIdentifier];
    v24 = 138543362;
    v25 = requestIdentifier2;
    _os_log_impl(&dword_25E8B1000, v20, OS_LOG_TYPE_INFO, "server nonce request: %{public}@", &v24, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)performNonceRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  requestCopy = request;
  completionCopy = completion;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __77__POAuthenticationProcess_performNonceRequestWithContext_request_completion___block_invoke;
  v18 = &unk_279A3E038;
  v19 = contextCopy;
  selfCopy = self;
  v21 = requestCopy;
  v22 = completionCopy;
  v11 = completionCopy;
  v12 = requestCopy;
  v13 = contextCopy;
  v14 = MEMORY[0x25F8C39C0](&v15);
  [(POAuthenticationProcess *)self _performNonceRequestWithContext:v13 request:v12 completion:v14, v15, v16, v17, v18];
}

void __77__POAuthenticationProcess_performNonceRequestWithContext_request_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 == 5 && [*(a1 + 32) retriesRemaining] >= 1)
  {
    [*(a1 + 32) setRetriesRemaining:{objc_msgSend(*(a1 + 32), "retriesRemaining") - 1}];
    v4 = PO_LOG_POAuthenticationProcess();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) requestIdentifier];
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&dword_25E8B1000, v4, OS_LOG_TYPE_INFO, "retrying server nonce request: %{public}@", buf, 0xCu);
    }

    [MEMORY[0x277CCACC8] sleepForTimeInterval:{objc_msgSend(*(a1 + 32), "retryDelay")}];
    [*(a1 + 40) performNonceRequestWithContext:*(a1 + 32) request:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v6 = [*(a1 + 40) completionQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__POAuthenticationProcess_performNonceRequestWithContext_request_completion___block_invoke_482;
    v8[3] = &unk_279A3E010;
    v9 = *(a1 + 56);
    v10 = a2;
    [v6 addOperationWithBlock:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_performNonceRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"Server Nonce Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Nonce response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_483;
    v58[3] = &unk_279A3DE00;
    v59 = v9;
    v60 = v11;
    v12 = v11;
    v16 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_483(v58);
    v17 = [a1[4] completionQueue];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_487;
    v56[3] = &unk_279A3DF48;
    v57 = a1[6];
    [v17 addOperationWithBlock:v56];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
      if ([v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") < 300)
      {
        v20 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
        v21 = PO_LOG_POAuthenticationProcess();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          if (v22)
          {
            __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_cold_2();
          }
        }

        else if (v22)
        {
          __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_cold_1();
        }

        v46 = 0;
        v23 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:16 error:&v46];
        v24 = v46;
        v15 = v24;
        if (!v23 || v24)
        {
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_499;
          v44[3] = &unk_279A3DC48;
          v45 = v24;
          v31 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_499(v44);
          v32 = [a1[4] completionQueue];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_503;
          v42[3] = &unk_279A3DF48;
          v43 = a1[6];
          [v32 addOperationWithBlock:v42];

          v33 = v45;
        }

        else
        {
          v39 = v23;
          obj = a1[5];
          objc_sync_enter(obj);
          v25 = [a1[5] loginConfiguration];
          v26 = [v25 nonceResponseKeypath];

          if (v26)
          {
            v27 = [a1[5] loginConfiguration];
            v28 = [v27 nonceResponseKeypath];
            v29 = [v39 valueForKeyPath:v28];
            v30 = v29;
            if (!v29)
            {
              v30 = [v39 objectForKeyedSubscript:@"Nonce"];
            }

            [a1[5] setServerNonce:v30];
            if (!v29)
            {
            }
          }

          else
          {
            v27 = [v39 objectForKeyedSubscript:@"Nonce"];
            [a1[5] setServerNonce:v27];
          }

          v34 = [MEMORY[0x277CBEAA8] date];
          [a1[5] setServerNonceReceived:v34];

          v35 = [a1[5] serverNonce];

          v36 = [a1[4] completionQueue];
          if (v35)
          {
            v37 = v41;
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2_508;
            v41[3] = &unk_279A3DF48;
            v41[4] = a1[6];
            [v36 addOperationWithBlock:v41];
          }

          else
          {
            v37 = v40;
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_3;
            v40[3] = &unk_279A3DF48;
            v40[4] = a1[6];
            [v36 addOperationWithBlock:v40];
          }

          v33 = obj;
          objc_sync_exit(obj);
          v23 = v39;
        }
      }

      else
      {
        v49 = MEMORY[0x277D85DD0];
        v50 = 3221225472;
        v51 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2_494;
        v52 = &unk_279A3DC48;
        v53 = v12;
        v13 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2_494();
        v14 = [a1[4] completionQueue];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_498;
        v47[3] = &unk_279A3DF48;
        v48 = a1[6];
        [v14 addOperationWithBlock:v47];

        v15 = v53;
      }
    }

    else
    {
      v18 = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2();
      v19 = [a1[4] completionQueue];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_493;
      v54[3] = &unk_279A3DF48;
      v55 = a1[6];
      [v19 addOperationWithBlock:v54];

      v12 = v55;
    }
  }
}

id __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_483(uint64_t a1)
{
  v2 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve server nonce."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1(v2, a1);
  }

  return v2;
}

id __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for server nonce."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_2_494()
{
  v0 = [POError errorWithCode:-1009 description:@"server nonce request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v0;
}

id __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_499(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to parse server nonce response."];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (id)createEmbeddedAssertionWithContext:(id)context
{
  v36[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  loginConfiguration = [contextCopy loginConfiguration];
  audience = [loginConfiguration audience];

  if (audience)
  {
    v6 = objc_alloc_init(POMutableAssertionJWTBody);
    loginConfiguration2 = [contextCopy loginConfiguration];
    customAssertionRequestBodyClaims = [loginConfiguration2 customAssertionRequestBodyClaims];
    [(POMutableAssertionJWTBody *)v6 addCustomClaims:customAssertionRequestBodyClaims];

    loginConfiguration3 = [contextCopy loginConfiguration];
    audience2 = [loginConfiguration3 audience];
    [(POMutableAssertionJWTBody *)v6 setAud:audience2];

    date = [MEMORY[0x277CBEAA8] date];
    [(POMutableAssertionJWTBody *)v6 setIat:date];

    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    [(POMutableAssertionJWTBody *)v6 setExp:v12];

    userName = [contextCopy userName];
    [(POMutableAssertionJWTBody *)v6 setIss:userName];

    userName2 = [contextCopy userName];
    [(POMutableAssertionJWTBody *)v6 setSub:userName2];

    nonce = [contextCopy nonce];
    [(POMutableAssertionJWTBody *)v6 setNonce:nonce];

    loginConfiguration4 = [contextCopy loginConfiguration];
    serverNonceClaimName = [loginConfiguration4 serverNonceClaimName];
    v18 = [serverNonceClaimName length];

    if (v18)
    {
      loginConfiguration5 = [contextCopy loginConfiguration];
      serverNonceClaimName2 = [loginConfiguration5 serverNonceClaimName];
      v35 = serverNonceClaimName2;
      serverNonce = [contextCopy serverNonce];
      v36[0] = serverNonce;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      [(POMutableAssertionJWTBody *)v6 addCustomClaims:v22];
    }

    else
    {
      loginConfiguration5 = [contextCopy serverNonce];
      [(POMutableAssertionJWTBody *)v6 setRequest_nonce:loginConfiguration5];
    }

    scope = [contextCopy scope];
    [(POMutableAssertionJWTBody *)v6 setScope:scope];

    v26 = objc_alloc_init(POMutableJWTHeader);
    deviceConfiguration = [contextCopy deviceConfiguration];
    sdkVersionString = [deviceConfiguration sdkVersionString];
    v29 = [sdkVersionString compare:&unk_2870A92D8];

    if (v29 == -1)
    {
      v30 = @"JWT";
    }

    else
    {
      v30 = @"platformsso-login-assertion+jwt";
    }

    [(POMutableJWTHeader *)v26 setTyp:v30];
    loginConfiguration6 = [contextCopy loginConfiguration];
    customAssertionRequestHeaderClaims = [loginConfiguration6 customAssertionRequestHeaderClaims];
    [(POMutableJWTHeader *)v26 addCustomClaims:customAssertionRequestHeaderClaims];

    v24 = objc_alloc_init(POMutableAssertionTokenJWT);
    [(POMutableAssertionTokenJWT *)v24 setBody:v6];
    [(POMutableJWT *)v24 setHeader:v26];
  }

  else
  {
    v23 = __62__POAuthenticationProcess_createEmbeddedAssertionWithContext___block_invoke();
    v24 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

id __62__POAuthenticationProcess_createEmbeddedAssertionWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"audience missing from configuration."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createEmbeddedPasswordAssertionWithContext:(id)context
{
  contextCopy = context;
  password = [contextCopy password];

  if (password)
  {
    v6 = [(POAuthenticationProcess *)self createEmbeddedAssertionWithContext:contextCopy];
    password2 = [contextCopy password];
    v8 = [password2 mutableCopy];
    body = [v6 body];
    [body setPassword:v8];

    header = [v6 header];
    [header setTyp:@"platformsso-encrypted-login-assertion+jwt"];
  }

  else
  {
    v11 = __70__POAuthenticationProcess_createEmbeddedPasswordAssertionWithContext___block_invoke();
    v6 = 0;
  }

  return v6;
}

id __70__POAuthenticationProcess_createEmbeddedPasswordAssertionWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing password."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createLoginJWTWithContext:(id)context embeddedAssertion:(id)assertion
{
  v120[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  assertionCopy = assertion;
  password = [contextCopy password];
  v9 = assertionCopy | password;

  if (!v9)
  {
    v12 = __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke();
    goto LABEL_16;
  }

  password2 = [contextCopy password];

  if (!assertionCopy || !password2)
  {
    loginConfiguration = [contextCopy loginConfiguration];
    clientID = [loginConfiguration clientID];
    if (clientID)
    {
      v15 = clientID;
      scope = [contextCopy scope];
      if (scope)
      {
        v17 = scope;
        nonce = [contextCopy nonce];
        if (nonce)
        {
          v19 = nonce;
          serverNonce = [contextCopy serverNonce];

          if (serverNonce)
          {
            v21 = objc_alloc_init(POMutableLoginJWTBody);
            loginConfiguration2 = [contextCopy loginConfiguration];
            customLoginRequestBodyClaims = [loginConfiguration2 customLoginRequestBodyClaims];
            [(POMutableLoginJWTBody *)v21 addCustomClaims:customLoginRequestBodyClaims];

            loginConfiguration3 = [contextCopy loginConfiguration];
            clientID2 = [loginConfiguration3 clientID];
            [(POMutableLoginJWTBody *)v21 setClient_id:clientID2];

            loginConfiguration4 = [contextCopy loginConfiguration];
            clientID3 = [loginConfiguration4 clientID];
            [(POMutableLoginJWTBody *)v21 setIss:clientID3];

            v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
            [(POMutableLoginJWTBody *)v21 setExp:v28];

            scope2 = [contextCopy scope];
            [(POMutableLoginJWTBody *)v21 setScope:scope2];

            nonce2 = [contextCopy nonce];
            [(POMutableLoginJWTBody *)v21 setNonce:nonce2];

            v31 = MEMORY[0x277CCACE0];
            loginConfiguration5 = [contextCopy loginConfiguration];
            tokenEndpointURL = [loginConfiguration5 tokenEndpointURL];
            absoluteString = [tokenEndpointURL absoluteString];
            v35 = [v31 componentsWithString:absoluteString];

            [v35 setQuery:0];
            [v35 setQueryItems:0];
            [v35 setFragment:0];
            v106 = v35;
            v36 = [v35 URL];
            absoluteString2 = [v36 absoluteString];
            [(POMutableLoginJWTBody *)v21 setAud:absoluteString2];

            loginConfiguration6 = [contextCopy loginConfiguration];
            serverNonceClaimName = [loginConfiguration6 serverNonceClaimName];
            serverNonce2 = [serverNonceClaimName length];

            if (serverNonce2)
            {
              loginConfiguration7 = [contextCopy loginConfiguration];
              serverNonceClaimName2 = [loginConfiguration7 serverNonceClaimName];
              v119 = serverNonceClaimName2;
              serverNonce2 = [contextCopy serverNonce];
              v120[0] = serverNonce2;
              v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:&v119 count:1];
              [(POMutableLoginJWTBody *)v21 addCustomClaims:v43];
            }

            else
            {
              loginConfiguration7 = [contextCopy serverNonce];
              [(POMutableLoginJWTBody *)v21 setRequest_nonce:loginConfiguration7];
            }

            userName = [contextCopy userName];
            [(POMutableLoginJWTBody *)v21 setUsername:userName];

            userName2 = [contextCopy userName];
            [(POMutableLoginJWTBody *)v21 setSub:userName2];

            password3 = [contextCopy password];

            if (password3)
            {
              password4 = [contextCopy password];
              v52 = [password4 mutableCopy];
              [(POMutableLoginJWTBody *)v21 setPassword:v52];

              [(POMutableLoginJWTBody *)v21 setGrant_type:@"password"];
            }

            if (assertionCopy)
            {
              if ([contextCopy loginType] == 2 || objc_msgSend(contextCopy, "loginType") == 3 || objc_msgSend(contextCopy, "loginType") == 4)
              {
                [(POMutableLoginJWTBody *)v21 setAssertion:assertionCopy];
                goto LABEL_28;
              }

              if ([contextCopy loginType] == 1)
              {
                [(POMutableLoginJWTBody *)v21 setAssertion:assertionCopy];
                if ([contextCopy federated])
                {
                  tokenTypeNamespace = [contextCopy tokenTypeNamespace];
                  if ([tokenTypeNamespace isEqualToString:@"urn:oasis:names:tc:SAML:1.0:assertion"])
                  {
                  }

                  else
                  {
                    tokenTypeNamespace2 = [contextCopy tokenTypeNamespace];
                    serverNonce2 = [tokenTypeNamespace2 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1"];

                    if ((serverNonce2 & 1) == 0)
                    {
                      tokenTypeNamespace3 = [contextCopy tokenTypeNamespace];
                      if (![tokenTypeNamespace3 isEqualToString:@"urn:oasis:names:tc:SAML:2.0:assertion"])
                      {
                        tokenTypeNamespace4 = [contextCopy tokenTypeNamespace];
                        [tokenTypeNamespace4 isEqualToString:@"http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"];
                      }

                      v53 = @"urn:ietf:params:oauth:grant-type:saml2-bearer";
                      goto LABEL_29;
                    }
                  }

                  v53 = @"urn:ietf:params:oauth:grant-type:saml1_1-bearer";
LABEL_29:
                  [(POMutableLoginJWTBody *)v21 setGrant_type:v53];
                  goto LABEL_30;
                }

LABEL_28:
                v53 = @"urn:ietf:params:oauth:grant-type:jwt-bearer";
                goto LABEL_29;
              }
            }

LABEL_30:
            loginType = [contextCopy loginType];
            if (loginType == 1)
            {
              v55 = &unk_2870A9300;
            }

            else if (loginType == 3)
            {
              v55 = &unk_2870A9330;
            }

            else
            {
              if (loginType != 2 || !+[POSecKeyHelper checkIfBiometricConstraintsForSigningForKey:](POSecKeyHelper, "checkIfBiometricConstraintsForSigningForKey:", [contextCopy embeddedAssertionSigningKey]))
              {
LABEL_38:
                deviceConfiguration = [contextCopy deviceConfiguration];
                userAuthorizationMode = [deviceConfiguration userAuthorizationMode];
                if (userAuthorizationMode == 3)
                {
                  v105 = 0;
                }

                else
                {
                  serverNonce2 = [contextCopy deviceConfiguration];
                  if ([serverNonce2 newUserAuthorizationMode] == 3)
                  {
                    v105 = 0;
                  }

                  else
                  {
                    deviceConfiguration2 = [contextCopy deviceConfiguration];
                    if (![deviceConfiguration2 supportsAuthorization])
                    {
                      goto LABEL_57;
                    }

                    v102 = deviceConfiguration2;
                    v105 = 1;
                  }
                }

                deviceConfiguration3 = [contextCopy deviceConfiguration];
                administratorGroups = [deviceConfiguration3 administratorGroups];
                if ([administratorGroups count])
                {

                  v60 = 1;
                  if (!v105)
                  {
LABEL_45:
                    if (userAuthorizationMode == 3)
                    {

                      if (!v60)
                      {
LABEL_58:
                        date = [MEMORY[0x277CBEAA8] date];
                        [(POMutableLoginJWTBody *)v21 setIat:date];

                        [(POAuthenticationProcess *)self addCryptoHeadersToJWTBody:v21 context:contextCopy];
                        loginConfiguration8 = [contextCopy loginConfiguration];
                        if ([loginConfiguration8 includePreviousRefreshTokenInLoginRequest])
                        {
                          loginConfiguration9 = [contextCopy loginConfiguration];
                          previousRefreshTokenClaimName = [loginConfiguration9 previousRefreshTokenClaimName];
                          v83 = [previousRefreshTokenClaimName length];

                          if (!v83 || ([contextCopy refreshToken], v84 = objc_claimAutoreleasedReturnValue(), v84, !v84))
                          {
LABEL_63:
                            v88 = objc_alloc_init(POMutableJWTHeader);
                            deviceConfiguration4 = [contextCopy deviceConfiguration];
                            sdkVersionString = [deviceConfiguration4 sdkVersionString];
                            v91 = [sdkVersionString compare:&unk_2870A92D8];

                            if (v91 == -1)
                            {
                              v92 = @"JWT";
                            }

                            else
                            {
                              v92 = @"platformsso-login-request+jwt";
                            }

                            [(POMutableJWTHeader *)v88 setTyp:v92];
                            loginConfiguration10 = [contextCopy loginConfiguration];
                            customLoginRequestHeaderClaims = [loginConfiguration10 customLoginRequestHeaderClaims];
                            [(POMutableJWTHeader *)v88 addCustomClaims:customLoginRequestHeaderClaims];

                            v45 = objc_alloc_init(POMutableLoginTokenJWT);
                            [(POMutableLoginTokenJWT *)v45 setBody:v21];
                            [(POMutableJWT *)v45 setHeader:v88];

                            goto LABEL_17;
                          }

                          loginConfiguration8 = [contextCopy loginConfiguration];
                          previousRefreshTokenClaimName2 = [loginConfiguration8 previousRefreshTokenClaimName];
                          v107 = previousRefreshTokenClaimName2;
                          refreshToken = [contextCopy refreshToken];
                          v108 = refreshToken;
                          v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
                          [(POMutableLoginJWTBody *)v21 addCustomClaims:v87];
                        }

                        goto LABEL_63;
                      }
                    }

                    else
                    {

                      if (!v60)
                      {
                        goto LABEL_58;
                      }
                    }

                    v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    deviceConfiguration5 = [contextCopy deviceConfiguration];
                    administratorGroups2 = [deviceConfiguration5 administratorGroups];
                    [v61 addObjectsFromArray:administratorGroups2];

                    deviceConfiguration6 = [contextCopy deviceConfiguration];
                    authorizationGroups = [deviceConfiguration6 authorizationGroups];
                    allValues = [authorizationGroups allValues];
                    [v61 addObjectsFromArray:allValues];

                    deviceConfiguration = v61;
                    deviceConfiguration7 = [contextCopy deviceConfiguration];
                    otherGroups = [deviceConfiguration7 otherGroups];
                    [v61 addObjectsFromArray:otherGroups];

                    v103 = [MEMORY[0x277CBEB70] orderedSetWithArray:v61];
                    array = [v103 array];
                    loginConfiguration11 = [contextCopy loginConfiguration];
                    groupRequestClaimName = [loginConfiguration11 groupRequestClaimName];

                    if (groupRequestClaimName)
                    {
                      loginConfiguration12 = [contextCopy loginConfiguration];
                      groupRequestClaimName2 = [loginConfiguration12 groupRequestClaimName];
                      v117 = groupRequestClaimName2;
                      v118 = array;
                      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
                      [(POMutableLoginJWTBody *)v21 addCustomClaims:v74];
                    }

                    else
                    {
                      v115 = @"claims";
                      v113 = @"id_token";
                      v110 = array;
                      v111 = @"groups";
                      v109 = @"values";
                      loginConfiguration12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
                      v112 = loginConfiguration12;
                      groupRequestClaimName2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
                      v114 = groupRequestClaimName2;
                      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
                      v116 = v74;
                      v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
                      [(POMutableLoginJWTBody *)v21 addCustomClaims:v78];
                    }

                    deviceConfiguration2 = array;
                    serverNonce2 = v103;
LABEL_57:

                    goto LABEL_58;
                  }
                }

                else
                {
                  v104 = serverNonce2;
                  v101 = deviceConfiguration;
                  deviceConfiguration8 = [contextCopy deviceConfiguration];
                  authorizationGroups2 = [deviceConfiguration8 authorizationGroups];
                  if ([authorizationGroups2 count])
                  {
                    v60 = 1;
                  }

                  else
                  {
                    deviceConfiguration9 = [contextCopy deviceConfiguration];
                    otherGroups2 = [deviceConfiguration9 otherGroups];
                    v60 = [otherGroups2 count] != 0;
                  }

                  deviceConfiguration = v101;
                  serverNonce2 = v104;
                  if ((v105 & 1) == 0)
                  {
                    goto LABEL_45;
                  }
                }

                goto LABEL_45;
              }

              v55 = &unk_2870A9318;
            }

            [(POMutableLoginJWTBody *)v21 setAmr:v55];
            goto LABEL_38;
          }

LABEL_15:
          v44 = __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke_545();
          goto LABEL_16;
        }
      }
    }

    goto LABEL_15;
  }

  v11 = __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke_539();
LABEL_16:
  v45 = 0;
LABEL_17:

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

id __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing password or assertion."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke_539()
{
  v0 = [POError errorWithCode:-1001 description:@"unable to use both password and assertion."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POAuthenticationProcess_createLoginJWTWithContext_embeddedAssertion___block_invoke_545()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing required values."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)addCryptoHeadersToJWTBody:(id)body context:(id)context
{
  v28[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  bodyCopy = body;
  deviceConfiguration = [contextCopy deviceConfiguration];
  encryptionAlgorithm = [deviceConfiguration encryptionAlgorithm];
  v9 = [encryptionAlgorithm isEqualToNumber:0x2870A9198];

  if (v9)
  {
    v27 = @"jwe_crypto";
    v25[0] = @"alg";
    v25[1] = @"enc";
    v26[0] = @"ECDH-ES";
    v26[1] = @"A256GCM";
    v25[2] = @"apv";
    v10 = [contextCopy apv];
    v26[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v28[0] = v11;
    psso_sha256Hash = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [bodyCopy addCustomClaims:psso_sha256Hash];
  }

  else
  {
    deviceConfiguration2 = [contextCopy deviceConfiguration];
    encryptionAlgorithm2 = [deviceConfiguration2 encryptionAlgorithm];
    v10 = [POJWTEncryption algorithmWithEncryptionAlgorithm:encryptionAlgorithm2];

    deviceConfiguration3 = [contextCopy deviceConfiguration];
    v11 = SecKeyCopyExternalRepresentation([deviceConfiguration3 deviceEncryptionPublicKey], 0);

    psso_sha256Hash = [v11 psso_sha256Hash];
    v16 = [psso_sha256Hash base64EncodedStringWithOptions:0];
    algValue = [v10 algValue];
    v22[2] = v16;
    v23 = @"jwe_crypto";
    v21[0] = @"alg";
    v21[1] = @"enc";
    v22[0] = algValue;
    v22[1] = @"dir";
    v21[2] = @"kid";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v24 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [bodyCopy addCustomClaims:v19];

    bodyCopy = v16;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)createLoginRequestWithContext:(id)context jwt:(id)jwt
{
  v49[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = MEMORY[0x277CCAB70];
  jwtCopy = jwt;
  v8 = [v6 alloc];
  loginConfiguration = [contextCopy loginConfiguration];
  tokenEndpointURL = [loginConfiguration tokenEndpointURL];
  v11 = [v8 initWithURL:tokenEndpointURL cachePolicy:4 timeoutInterval:30.0];

  [v11 setHTTPMethod:@"POST"];
  [v11 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
  deviceConfiguration = [contextCopy deviceConfiguration];
  sdkVersionString = [deviceConfiguration sdkVersionString];
  v14 = [sdkVersionString compare:&unk_2870A92D8];

  if (v14 == -1)
  {
    v15 = @"application/json";
  }

  else
  {
    v15 = @"application/platformsso-login-response+jwt";
  }

  [v11 addValue:v15 forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v11 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v17 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"platform_sso_version" value:@"1.0"];
  v49[0] = v18;
  v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"urn:ietf:params:oauth:grant-type:jwt-bearer"];
  v49[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];

  if ([contextCopy loginType] == 100 && (objc_msgSend(contextCopy, "loginConfiguration"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "customRefreshRequestValues"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
  {
    loginConfiguration2 = [contextCopy loginConfiguration];
    customRefreshRequestValues = [loginConfiguration2 customRefreshRequestValues];
  }

  else
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customLoginRequestValues = [loginConfiguration3 customLoginRequestValues];

    if (!customLoginRequestValues)
    {
      goto LABEL_10;
    }

    loginConfiguration2 = [contextCopy loginConfiguration];
    customRefreshRequestValues = [loginConfiguration2 customLoginRequestValues];
  }

  v27 = customRefreshRequestValues;
  v28 = [v20 arrayByAddingObjectsFromArray:customRefreshRequestValues];

  v20 = v28;
LABEL_10:
  [v17 setQueryItems:v20];
  percentEncodedQuery = [v17 percentEncodedQuery];
  v30 = [percentEncodedQuery dataUsingEncoding:4];
  v31 = [v30 mutableCopy];

  deviceConfiguration2 = [contextCopy deviceConfiguration];
  sdkVersionString2 = [deviceConfiguration2 sdkVersionString];
  v34 = [sdkVersionString2 compare:&unk_2870A92D8];

  if (v34 == -1)
  {
    customRequestJWTParameterName2 = @"request";
  }

  else
  {
    customRequestJWTParameterName2 = @"assertion";
  }

  loginConfiguration4 = [contextCopy loginConfiguration];
  customRequestJWTParameterName = [loginConfiguration4 customRequestJWTParameterName];
  v38 = [customRequestJWTParameterName length];

  if (v38)
  {
    loginConfiguration5 = [contextCopy loginConfiguration];
    customRequestJWTParameterName2 = [loginConfiguration5 customRequestJWTParameterName];
  }

  v40 = SecCFAllocatorZeroize();
  v41 = CFStringCreateWithFormat(v40, 0, @"&%@=%@", customRequestJWTParameterName2, jwtCopy);

  if (v41)
  {
    v42 = SecCFAllocatorZeroize();
    ExternalRepresentation = CFStringCreateExternalRepresentation(v42, v41, 0x8000100u, 0);
    if (ExternalRepresentation)
    {
      [v31 appendData:ExternalRepresentation];
      [v11 setHTTPBody:v31];
      v44 = v11;
    }

    else
    {
      v46 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
      v44 = 0;
    }
  }

  else
  {
    v45 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
    v44 = 0;
  }

  v47 = *MEMORY[0x277D85DE8];

  return v44;
}

id __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performLoginRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  v11 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    requestIdentifier = [contextCopy requestIdentifier];
    *buf = 138543362;
    v29 = requestIdentifier;
    _os_log_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_INFO, "Sending login request: %{public}@", buf, 0xCu);
  }

  urlSession = [contextCopy urlSession];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke;
  v24 = &unk_279A3DF70;
  v26 = contextCopy;
  v27 = completionCopy;
  selfCopy = self;
  v14 = contextCopy;
  v15 = completionCopy;
  v16 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v21];

  v17 = MEMORY[0x277CCACA8];
  requestIdentifier2 = [v14 requestIdentifier];
  selfCopy = [v17 stringWithFormat:@"Login Request: %@", requestIdentifier2, v21, v22, v23, v24, selfCopy];
  [v16 setTaskDescription:selfCopy];

  [v16 resume];
  v20 = *MEMORY[0x277D85DE8];
}

void __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Login response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_645;
    v70[3] = &unk_279A3DE00;
    v71 = v9;
    v72 = v11;
    v15 = v11;
    v16 = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_645(v70);
    v17 = [a1[4] completionQueue];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_649;
    v67[3] = &unk_279A3DF98;
    v69 = a1[6];
    v68 = a1[5];
    [v17 addOperationWithBlock:v67];

    v18 = v71;
    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
    v13 = PO_LOG_POAuthenticationProcess();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      if (v14)
      {
        __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_cold_2();
      }
    }

    else if (v14)
    {
      __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_cold_1();
    }

    v15 = v8;
    if ([v15 statusCode] >= 200 && objc_msgSend(v15, "statusCode") < 300)
    {
      v39 = [a1[4] completionQueue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_4;
      v42[3] = &unk_279A3E060;
      v21 = &v45;
      v45 = a1[6];
      v43 = a1[5];
      v44 = v7;
      [v39 addOperationWithBlock:v42];

      v29 = v43;
    }

    else
    {
      v59 = MEMORY[0x277D85DD0];
      v60 = 3221225472;
      v61 = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_656;
      v62 = &unk_279A3DC48;
      v21 = &v63;
      v22 = v15;
      v63 = v22;
      v23 = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_656();
      if ([v22 statusCode] == 401 && (objc_msgSend(a1[5], "loginConfiguration"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "invalidCredentialPredicate"), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, !v25))
      {
        v40 = [a1[4] completionQueue];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_660;
        v56[3] = &unk_279A3DF98;
        v58 = a1[6];
        v57 = a1[5];
        [v40 addOperationWithBlock:v56];

        v29 = v58;
      }

      else
      {
        if ([v22 statusCode] == 400 || objc_msgSend(v22, "statusCode") == 401)
        {
          v26 = [a1[5] loginConfiguration];
          v27 = [v26 invalidCredentialPredicate];

          if (v7)
          {
            if (v27)
            {
              v55 = 0;
              v28 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:16 error:&v55];
              v29 = v55;
              v30 = MEMORY[0x277CCAC30];
              v31 = [a1[5] loginConfiguration];
              v32 = [v31 invalidCredentialPredicate];
              v33 = [v30 predicateWithFormat:v32];

              LODWORD(v31) = [v33 evaluateWithObject:v28];
              if (v31)
              {
                v34 = PO_LOG_POAuthenticationProcess();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_25E8B1000, v34, OS_LOG_TYPE_INFO, "Credentials are not correct", buf, 2u);
                }

                if ([a1[5] loginType] == 2 || objc_msgSend(a1[5], "loginType") == 3)
                {
                  v35 = [a1[4] completionQueue];
                  v52[0] = MEMORY[0x277D85DD0];
                  v52[1] = 3221225472;
                  v52[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_665;
                  v52[3] = &unk_279A3DF98;
                  v36 = &v54;
                  v54 = a1[6];
                  v37 = &v53;
                  v53 = a1[5];
                  v38 = v52;
                }

                else
                {
                  v35 = [a1[4] completionQueue];
                  v49[0] = MEMORY[0x277D85DD0];
                  v49[1] = 3221225472;
                  v49[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_2_666;
                  v49[3] = &unk_279A3DF98;
                  v36 = &v51;
                  v51 = a1[6];
                  v37 = &v50;
                  v50 = a1[5];
                  v38 = v49;
                }

                [v35 addOperationWithBlock:v38];

                v21 = &v63;
                goto LABEL_35;
              }

              v21 = &v63;
            }
          }
        }

        v41 = [a1[4] completionQueue];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_3;
        v46[3] = &unk_279A3DF98;
        v48 = a1[6];
        v47 = a1[5];
        [v41 addOperationWithBlock:v46];

        v29 = v48;
      }
    }

LABEL_35:

    v18 = *v21;
LABEL_36:

    goto LABEL_37;
  }

  v19 = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_2();
  v20 = [a1[4] completionQueue];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_655;
  v64[3] = &unk_279A3DF98;
  v66 = a1[6];
  v65 = a1[5];
  [v20 addOperationWithBlock:v64];

  v15 = v66;
LABEL_37:
}

id __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_645(uint64_t a1)
{
  v2 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to login."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1(v2, a1);
  }

  return v2;
}

id __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for login."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_656()
{
  v0 = [POError errorWithCode:-1009 description:@"Login request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v0;
}

id __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_2_661(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Exception when evaluating invalidCredentialPredicate: %{public}@"];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

- (void)retrieveSigningKeyWithContext:(id)context keyId:(id)id completion:(id)completion
{
  contextCopy = context;
  idCopy = id;
  completionCopy = completion;
  jwksStorageProvider = [contextCopy jwksStorageProvider];
  deviceConfiguration = [contextCopy deviceConfiguration];
  extensionIdentifier = [deviceConfiguration extensionIdentifier];
  v14 = [jwksStorageProvider jwksCacheForExtensionIdentifier:extensionIdentifier];

  if (v14 && ([contextCopy loginConfiguration], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "jwksTrustedRootCertificates"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[POAuthenticationProcess findKey:inJWKSData:rootCertificates:](self, "findKey:inJWKSData:rootCertificates:", idCopy, v14, v16), v16, v15, v17))
  {
    v18 = PO_LOG_POAuthenticationProcess();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [POAuthenticationProcess retrieveSigningKeyWithContext:keyId:completion:];
    }

    completionQueue = [(POAuthenticationProcess *)self completionQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke;
    v45[3] = &unk_279A3E010;
    v46 = completionCopy;
    v47 = v17;
    v20 = completionCopy;
    [completionQueue addOperationWithBlock:v45];

    v21 = v46;
  }

  else
  {
    v22 = PO_LOG_POAuthenticationProcess();
    v23 = os_signpost_id_make_with_pointer(v22, contextCopy);

    v24 = PO_LOG_POAuthenticationProcess();
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PlatformSSO_JWKSRequest", " enableTelemetry=YES ", buf, 2u);
    }

    urlSession = [contextCopy urlSession];
    loginConfiguration = [contextCopy loginConfiguration];
    jwksEndpointURL = [loginConfiguration jwksEndpointURL];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_670;
    v38 = &unk_279A3E0B0;
    v42 = completionCopy;
    v43 = v23;
    selfCopy = self;
    v29 = contextCopy;
    v40 = v29;
    v41 = idCopy;
    v30 = completionCopy;
    v31 = [urlSession dataTaskWithURL:jwksEndpointURL completionHandler:&v35];

    v32 = MEMORY[0x277CCACA8];
    requestIdentifier = [v29 requestIdentifier];
    selfCopy = [v32 stringWithFormat:@"JWKS Request: %@", requestIdentifier, v35, v36, v37, v38, selfCopy];
    [v31 setTaskDescription:selfCopy];

    [v31 resume];
    v21 = v42;
  }
}

void __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_670(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "JWKS network response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_671;
    v57[3] = &unk_279A3DE00;
    v58 = v9;
    v59 = v11;
    v12 = v11;
    v20 = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_671(v57);
    v21 = PO_LOG_POAuthenticationProcess();
    v22 = v21;
    v23 = *(a1 + 64);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PlatformSSO_JWKSRequest", "error", buf, 2u);
    }

    v24 = [*(a1 + 32) completionQueue];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_675;
    v55[3] = &unk_279A3DF48;
    v56 = *(a1 + 56);
    [v24 addOperationWithBlock:v55];

    v25 = v58;
LABEL_29:

    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    if ([v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") < 300)
    {
      v31 = PO_LOG_POAuthenticationProcess();
      v32 = v31;
      v33 = *(a1 + 64);
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25E8B1000, v32, OS_SIGNPOST_INTERVAL_END, v33, "PlatformSSO_JWKSRequest", "success", buf, 2u);
      }

      v34 = PO_LOG_POAuthenticationProcess();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_670_cold_1();
      }

      v35 = [*(a1 + 40) jwksStorageProvider];
      v36 = [*(a1 + 40) deviceConfiguration];
      v37 = [v36 extensionIdentifier];
      [v35 setJwksCache:v7 forExtensionIdentifier:v37];

      v38 = [*(a1 + 32) completionQueue];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_687;
      v41[3] = &unk_279A3E088;
      v13 = &v45;
      v39 = *(a1 + 56);
      v40 = *(a1 + 32);
      v45 = v39;
      v41[4] = v40;
      v42 = *(a1 + 48);
      v43 = v7;
      v44 = *(a1 + 40);
      [v38 addOperationWithBlock:v41];

      v19 = v42;
    }

    else
    {
      v48 = MEMORY[0x277D85DD0];
      v49 = 3221225472;
      v50 = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2_682;
      v51 = &unk_279A3DC48;
      v13 = &v52;
      v52 = v12;
      v14 = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2_682();
      v15 = PO_LOG_POAuthenticationProcess();
      v16 = v15;
      v17 = *(a1 + 64);
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25E8B1000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PlatformSSO_JWKSRequest", "Failed", buf, 2u);
      }

      v18 = [*(a1 + 32) completionQueue];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_686;
      v46[3] = &unk_279A3DF48;
      v47 = *(a1 + 56);
      [v18 addOperationWithBlock:v46];

      v19 = v47;
    }

    v25 = *v13;
    goto LABEL_29;
  }

  v26 = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2();
  v27 = PO_LOG_POAuthenticationProcess();
  v28 = v27;
  v29 = *(a1 + 64);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v28, OS_SIGNPOST_INTERVAL_END, v29, "PlatformSSO_JWKSRequest", "Failed", buf, 2u);
  }

  v30 = [*(a1 + 32) completionQueue];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_681;
  v53[3] = &unk_279A3DF48;
  v54 = *(a1 + 56);
  [v30 addOperationWithBlock:v53];

  v12 = v54;
LABEL_30:
}

id __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_671(uint64_t a1)
{
  v2 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve JWKS."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1(v2, a1);
  }

  return v2;
}

id __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for JWKS."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_2_682()
{
  v0 = [POError errorWithCode:-1009 description:@"JWKS request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v0;
}

void __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_687(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v6 = [*(a1 + 56) loginConfiguration];
  v5 = [v6 jwksTrustedRootCertificates];
  (*(v4 + 16))(v4, [v1 findKey:v2 inJWKSData:v3 rootCertificates:v5]);
}

- (__SecKey)findKey:(id)key inJWKSData:(id)data rootCertificates:(id)certificates
{
  v127 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  certificatesCopy = certificates;
  v122 = 0;
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:16 error:&v122];
  v10 = v122;
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke;
    v120[3] = &unk_279A3DC48;
    v121 = v10;
    v13 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke(v120);
    RSAPublicKey = 0;
    v15 = v121;
    goto LABEL_58;
  }

  v86 = v9;
  v87 = v10;
  [v9 objectForKeyedSubscript:@"keys"];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v16 = v119 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v116 objects:v126 count:16];
  v85 = v16;
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  v19 = *v117;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v117 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v116 + 1) + 8 * i);
      v22 = [v21 objectForKeyedSubscript:@"kid"];
      if ([v22 isEqualToString:keyCopy])
      {
        v23 = v21;

        if (!v23)
        {
          goto LABEL_36;
        }

        v24 = [v23 objectForKeyedSubscript:@"kty"];
        v25 = [v23 objectForKeyedSubscript:@"x5c"];
        objc_opt_class();
        v11 = v87;
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 count])
        {
          v76 = keyCopy;
          if (![certificatesCopy count])
          {
LABEL_33:
            v37 = [v23 objectForKeyedSubscript:@"x5c"];
            firstObject = [v37 firstObject];

            v83 = firstObject;
            v39 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:firstObject options:1];
            if (v39)
            {
              v40 = SecCertificateCreateWithData(0, v39);
              v9 = v86;
              keyCopy = v76;
              if (v40)
              {
                v41 = v40;
                RSAPublicKey = SecCertificateCopyKey(v40);
                CFRelease(v41);
              }

              else
              {
                RSAPublicKey = 0;
              }
            }

            else
            {
              v106[0] = MEMORY[0x277D85DD0];
              v106[1] = 3221225472;
              v106[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_711;
              v106[3] = &unk_279A3DC48;
              keyCopy = v76;
              v107 = v76;
              v70 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_711(v106);

              RSAPublicKey = 0;
              v9 = v86;
            }

LABEL_55:
            v36 = v83;
            goto LABEL_56;
          }

          v77 = v24;
          v82 = certificatesCopy;
          v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v80 = v25;
          v27 = v25;
          v28 = [v27 countByEnumeratingWithState:&v110 objects:v125 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v111;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v111 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v110 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v33 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v32 options:1];
                  if (v33)
                  {
                    v34 = [POSecKeyHelper certificateForData:v33];
                    if (v34)
                    {
                      v35 = v34;
                      [v26 addObject:v34];
                    }
                  }
                }
              }

              v29 = [v27 countByEnumeratingWithState:&v110 objects:v125 count:16];
            }

            while (v29);
          }

          v36 = v26;
          certificatesCopy = v82;
          if ([POSecKeyHelper evaluateTrustForCertificates:v26 rootCertificates:v82])
          {

            v11 = v87;
            v24 = v77;
            v25 = v80;
            goto LABEL_33;
          }

          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_707;
          v108[3] = &unk_279A3DC48;
          keyCopy = v76;
          v109 = v76;
          v69 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_707(v108);

          RSAPublicKey = 0;
          v9 = v86;
          v11 = v87;
          v24 = v77;
          v25 = v80;
LABEL_56:

          goto LABEL_57;
        }

        if ([certificatesCopy count])
        {
          v104[0] = MEMORY[0x277D85DD0];
          v104[1] = 3221225472;
          v104[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_715;
          v104[3] = &unk_279A3DC48;
          v105 = keyCopy;
          v43 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_715(v104);
          RSAPublicKey = 0;
          v36 = v105;
          v9 = v86;
          goto LABEL_56;
        }

        if ([v24 isEqualToString:@"EC"])
        {
          v78 = v24;
          v81 = v25;
          v44 = objc_alloc(MEMORY[0x277CBEA90]);
          v45 = [v23 objectForKeyedSubscript:@"x"];
          [v44 psso_initWithBase64URLEncodedString:v45];
          v47 = v46 = keyCopy;

          v48 = objc_alloc(MEMORY[0x277CBEA90]);
          v49 = [v23 objectForKeyedSubscript:@"y"];
          v50 = [v48 psso_initWithBase64URLEncodedString:v49];

          v51 = objc_alloc_init(MEMORY[0x277CBEB28]);
          v103 = 4;
          [v51 appendBytes:&v103 length:1];
          v83 = v47;
          v52 = v47;
          keyCopy = v46;
          [v51 appendData:v52];
          [v51 appendData:v50];
          v53 = *MEMORY[0x277CDC040];
          v54 = *MEMORY[0x277CDBFE0];
          v123[0] = *MEMORY[0x277CDC028];
          v123[1] = v54;
          v55 = *MEMORY[0x277CDC000];
          v124[0] = v53;
          v124[1] = v55;
          v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
          error[0] = 0;
          RSAPublicKey = SecKeyCreateWithData(v51, v56, error);
          v9 = v86;
          if (!RSAPublicKey)
          {
            v98[0] = MEMORY[0x277D85DD0];
            v98[1] = 3221225472;
            v99 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_728;
            v100 = &unk_279A3E0D8;
            v102 = error[0];
            v101 = keyCopy;
            v57 = v99(v98);
          }

          v24 = v78;
          v25 = v81;
          goto LABEL_55;
        }

        v9 = v86;
        if (![v24 isEqualToString:@"RSA"])
        {
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_753;
          v88[3] = &unk_279A3DC48;
          v89 = keyCopy;
          v71 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_753(v88);
          RSAPublicKey = 0;
          v36 = v89;
          goto LABEL_56;
        }

        v36 = [v23 objectForKeyedSubscript:@"n"];
        v58 = [v23 objectForKeyedSubscript:@"e"];
        v59 = v58;
        if (v36 && v58)
        {
          v60 = v58;
          v61 = objc_alloc(MEMORY[0x277CBEA90]);
          v84 = v36;
          v62 = [v61 psso_initWithBase64URLEncodedString:v36];

          v63 = objc_alloc(MEMORY[0x277CBEA90]);
          v79 = v60;
          v64 = v60;
          v65 = v62;
          v66 = [v63 psso_initWithBase64URLEncodedString:v64];

          if (v65 && v66)
          {
            error[0] = [v65 bytes];
            error[1] = [v65 length];
            error[2] = [v66 bytes];
            error[3] = [v66 length];
            v67 = v65;
            RSAPublicKey = SecKeyCreateRSAPublicKey();

            v36 = v84;
            v59 = v79;
            if (RSAPublicKey)
            {
LABEL_62:

              goto LABEL_56;
            }

            v90[0] = MEMORY[0x277D85DD0];
            v90[1] = 3221225472;
            v90[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_749;
            v90[3] = &unk_279A3E0D8;
            v92 = 0;
            v91 = keyCopy;
            v68 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_749(v90);
            v59 = v79;
            v65 = v91;
          }

          else
          {
            v96[0] = MEMORY[0x277D85DD0];
            v96[1] = 3221225472;
            v96[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_741;
            v96[3] = &unk_279A3DC48;
            v97 = keyCopy;
            v75 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_741(v96);

            v36 = v84;
            v59 = v79;
          }
        }

        else
        {
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_745;
          v93[3] = &unk_279A3DC48;
          v94 = keyCopy;
          v74 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_745(v93);
          v65 = v94;
        }

        RSAPublicKey = 0;
        goto LABEL_62;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v116 objects:v126 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_14:

LABEL_36:
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_697;
  v114[3] = &unk_279A3DC48;
  v115 = keyCopy;
  v42 = __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_697(v114);
  RSAPublicKey = 0;
  v23 = v115;
  v9 = v86;
  v11 = v87;
LABEL_57:

  v15 = v85;
LABEL_58:

  v72 = *MEMORY[0x277D85DE8];
  return RSAPublicKey;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to parse jwks response."];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_697(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"Failed to find key"];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_707(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Trust evaluation failed for kid."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_711(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Failed to create key."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_715(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"required certificates missing from jwks for kid."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_728(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [POError errorWithCode:-1008 underlyingError:v2 description:@"Failed to create EC key."];

  v4 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v3, a1);
  }

  return v3;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_741(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"Failed to create RSA key."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_745(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Failed to create RSA key, Modulus or exponent missing."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_749(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [POError errorWithCode:-1001 underlyingError:v2 description:@"Failed to create key"];

  v4 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v3, a1);
  }

  return v3;
}

id __63__POAuthenticationProcess_findKey_inJWKSData_rootCertificates___block_invoke_753(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"Failed to load key."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

- (BOOL)validateIdToken:(id)token context:(id)context key:(__SecKey *)key
{
  tokenCopy = token;
  contextCopy = context;
  v9 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_INFO, "Verifying id_token", buf, 2u);
  }

  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess validateIdToken:context:key:];
  }

  decodedHeader = [tokenCopy decodedHeader];
  v12 = [decodedHeader alg];
  v13 = [&unk_2870A9348 containsObject:v12];

  if ((v13 & 1) == 0)
  {
    v78 = tokenCopy;
    v24 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke();

    goto LABEL_11;
  }

  decodedHeader2 = [tokenCopy decodedHeader];
  v15 = [decodedHeader2 alg];
  LODWORD(key) = [POJWTSigning verifyJWTSignature:tokenCopy algorithm:v15 key:key];

  if (key)
  {
    decodedBody = [tokenCopy decodedBody];
    nonce = [decodedBody nonce];
    if (nonce)
    {
      v18 = nonce;
      decodedBody2 = [tokenCopy decodedBody];
      nonce2 = [decodedBody2 nonce];
      nonce3 = [contextCopy nonce];
      v22 = [nonce2 isEqualToString:nonce3];

      if ((v22 & 1) == 0)
      {
        v23 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_763();
LABEL_11:
        LOBYTE(key) = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    decodedBody3 = [tokenCopy decodedBody];
    v27 = [decodedBody3 iss];
    loginConfiguration = [contextCopy loginConfiguration];
    issuer = [loginConfiguration issuer];
    v30 = [v27 isEqualToString:issuer];

    if ((v30 & 1) == 0)
    {
      v42 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_769();
      goto LABEL_11;
    }

    decodedBody4 = [tokenCopy decodedBody];
    audArray = [decodedBody4 audArray];

    decodedBody5 = [tokenCopy decodedBody];
    v34 = decodedBody5;
    if (audArray)
    {
      audArray2 = [decodedBody5 audArray];
      loginConfiguration2 = [contextCopy loginConfiguration];
      clientID = [loginConfiguration2 clientID];
      v38 = [audArray2 containsObject:clientID];

      if ((v38 & 1) == 0)
      {
        v56 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_775();
        goto LABEL_11;
      }

      decodedBody6 = [tokenCopy decodedBody];
      v40 = [decodedBody6 azp];

      if (!v40)
      {
        v41 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_781();
        goto LABEL_11;
      }
    }

    else
    {
      v43 = [decodedBody5 aud];
      loginConfiguration3 = [contextCopy loginConfiguration];
      clientID2 = [loginConfiguration3 clientID];
      v46 = [v43 isEqualToString:clientID2];

      if ((v46 & 1) == 0)
      {
        v57 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_787();
        goto LABEL_11;
      }
    }

    decodedBody7 = [tokenCopy decodedBody];
    v48 = [decodedBody7 azp];
    if (v48)
    {
      v49 = v48;
      decodedBody8 = [tokenCopy decodedBody];
      v51 = [decodedBody8 azp];
      loginConfiguration4 = [contextCopy loginConfiguration];
      clientID3 = [loginConfiguration4 clientID];
      v54 = [v51 isEqualToString:clientID3];

      if ((v54 & 1) == 0)
      {
        v55 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_793();
        goto LABEL_11;
      }
    }

    else
    {
    }

    decodedBody9 = [tokenCopy decodedBody];
    v59 = [decodedBody9 iat];
    [v59 timeIntervalSinceNow];
    v61 = v60;

    decodedBody10 = [tokenCopy decodedBody];
    v63 = [decodedBody10 iat];

    if (!v63 || v61 > 120.0)
    {
      v76 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_799();
      goto LABEL_11;
    }

    decodedBody11 = [tokenCopy decodedBody];
    v65 = [decodedBody11 exp];
    [v65 timeIntervalSinceNow];
    v67 = v66;

    decodedBody12 = [tokenCopy decodedBody];
    v69 = [decodedBody12 exp];

    if (!v69 || v67 < -120.0)
    {
      v77 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_803();
      goto LABEL_11;
    }

    decodedBody13 = [tokenCopy decodedBody];
    v71 = [decodedBody13 nbf];
    [v71 timeIntervalSinceNow];
    v73 = v72;

    key = [tokenCopy decodedBody];
    v74 = [(__SecKey *)key nbf];

    LOBYTE(key) = 1;
    if (v74 && v73 > 120.0)
    {
      v75 = __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_807();
      goto LABEL_11;
    }
  }

LABEL_12:

  return key;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"unsupported id_token algorithm."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_763()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to match nonce."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_769()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to match issuer."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_775()
{
  v0 = [POError errorWithCode:-1008 description:@"audience does not contain client id."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_781()
{
  v0 = [POError errorWithCode:-1008 description:@"azp claim missing."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_787()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to match audience."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_793()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to match azp."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_799()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to verify iat."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_803()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to verify exp."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v0;
}

id __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_807()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to verify nbf."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v0;
}

- (BOOL)validatePartyUInfo:(id)info context:(id)context
{
  infoCopy = info;
  decodedHeader = [infoCopy decodedHeader];
  v6 = [decodedHeader apu];

  if (v6)
  {
    decodeEphemeralPublicKey = [infoCopy decodeEphemeralPublicKey];
    if (decodeEphemeralPublicKey)
    {
      error = 0;
      v8 = SecKeyCopyExternalRepresentation(decodeEphemeralPublicKey, &error);
      if (!v8)
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_822;
        v30[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v30[4] = error;
        v17 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_822(v30);
        v16 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = objc_alloc(MEMORY[0x277CBEA90]);
      decodedHeader2 = [infoCopy decodedHeader];
      v11 = [decodedHeader2 apu];
      v12 = [v9 psso_initWithBase64URLEncodedString:v11];

      if (v12)
      {
        v29 = 0;
        if ([v12 length] > 3)
        {
          [v12 getBytes:&v29 range:{0, 4}];
          v19 = bswap32(v29);
          v28 = 0;
          v29 = v19;
          v20 = v19 + 8;
          if ([v12 length] >= (v19 + 8))
          {
            [v12 getBytes:&v28 range:{v19 + 4, 4}];
            v22 = bswap32(v28);
            v28 = v22;
            if ([(__CFData *)v8 length]== v22)
            {
              v23 = [v12 length];
              if (v23 >= v20 + v28)
              {
                v26 = [v12 subdataWithRange:v20];
                v16 = [(__CFData *)v8 isEqualToData:v26];
                if ((v16 & 1) == 0)
                {
                  v27 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_850();
                }

                goto LABEL_18;
              }
            }

            v24 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_844();
          }

          else
          {
            v21 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_838();
          }
        }

        else
        {
          v13 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_832();
        }
      }

      else
      {
        v18 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_826();
      }

      v16 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v15 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_816();
  }

  else
  {
    v14 = __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke();
  }

  v16 = 0;
LABEL_20:

  return v16;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"response missing apu."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_816()
{
  v0 = [POError errorWithCode:-1008 description:@"response missing epk."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_822(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"error with SecKeyCopyExternalRepresentation for epk."];

  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_826()
{
  v0 = [POError errorWithCode:-1008 description:@"error decoding apu."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_832()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apu length."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_838()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apu size."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_844()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apu epk size."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAuthenticationProcess_validatePartyUInfo_context___block_invoke_850()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apu epk."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)validatePartyVInfo:(id)info context:(id)context publicKey:(__SecKey *)key
{
  infoCopy = info;
  contextCopy = context;
  if (infoCopy)
  {
    v32 = 0;
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = [v9 psso_initWithBase64URLEncodedString:infoCopy];

    if (!v10)
    {
      v17 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_861();
      v16 = 0;
LABEL_20:

      goto LABEL_21;
    }

    error = 0;
    v11 = SecKeyCopyExternalRepresentation(key, &error);
    if (!v11)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_867;
      v30[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v30[4] = error;
      v18 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_867(v30);
      v16 = 0;
LABEL_19:

      goto LABEL_20;
    }

    nonce = [contextCopy nonce];
    v13 = [nonce dataUsingEncoding:1];

    if (v13)
    {
      v32 = 0;
      if ([v10 length] > 3)
      {
        [v10 getBytes:&v32 range:{0, 4}];
        v20 = bswap32(v32);
        v32 = v20;
        v21 = v20 + 4;
        v22 = objc_alloc_init(MEMORY[0x277CBEB28]);
        v29 = bswap32([(__CFData *)v11 length]);
        [v22 appendBytes:&v29 length:4];
        [v22 appendData:v11];
        v28 = bswap32([v13 length]);
        [v22 appendBytes:&v28 length:4];
        [v22 appendData:v13];
        v23 = [v10 length];
        if (v23 >= [v22 length] + v21)
        {
          v25 = [v10 subdataWithRange:{v21, objc_msgSend(v22, "length")}];
          v16 = [v22 isEqualToData:v25];
          if ((v16 & 1) == 0)
          {
            v26 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_889();
          }
        }

        else
        {
          v24 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_883();
          v16 = 0;
        }

        goto LABEL_18;
      }

      v14 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_877();
    }

    else
    {
      v19 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_871();
    }

    v16 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v15 = __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke();
  v16 = 0;
LABEL_21:

  return v16;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Missing apv."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_861()
{
  v0 = [POError errorWithCode:-1008 description:@"error decoding apv."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_867(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"error with SecKeyCopyExternalRepresentation."];

  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_871()
{
  v0 = [POError errorWithCode:-1008 description:@"error with nonce data"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_877()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to validate apv size"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_883()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apv data size"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __64__POAuthenticationProcess_validatePartyVInfo_context_publicKey___block_invoke_889()
{
  v0 = [POError errorWithCode:-1008 description:@"failed to validate apv data"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)prepareForAccessTokenLoginUsingContext:(id)context completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Prepare NFC login authentication", buf, 2u);
  }

  v9 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v11 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  if (v11)
  {
    v12 = PO_LOG_PODiagnostics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [contextCopy requestIdentifier];
      *buf = 138543362;
      v25 = requestIdentifier;
      _os_log_impl(&dword_25E8B1000, v12, OS_LOG_TYPE_DEFAULT, "Sending nonce request: %{public}@", buf, 0xCu);
    }

    v14 = PO_LOG_POAuthenticationProcess();
    v15 = os_signpost_id_make_with_pointer(v14, contextCopy);

    v16 = PO_LOG_POAuthenticationProcess();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke_897;
    v20[3] = &unk_279A3E100;
    v23 = v15;
    v22 = completionCopy;
    v21 = contextCopy;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v21 request:v11 completion:v20];
  }

  else
  {
    v18 = __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy);
  }

  v19 = *MEMORY[0x277D85DE8];
}

id __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create nonce request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke_897(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess();
    v4 = v3;
    v5 = a1[6];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", v11, 2u);
    }
  }

  else
  {
    v6 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2();
    v7 = PO_LOG_POAuthenticationProcess();
    v4 = v7;
    v8 = a1[6];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v8, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }
  }

  v9 = a1[4];
  return (*(a1[5] + 16))();
}

- (void)performAccessTokenSigningUsingContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Perform NFC signing", buf, 2u);
  }

  [contextCopy setLoginType:4];
  v9 = [(POAuthenticationProcess *)self createEmbeddedAssertionWithContext:contextCopy];
  if (v9)
  {
    v10 = -[POAuthenticationProcess findAlgorithmForKey:](self, "findAlgorithmForKey:", [contextCopy embeddedAssertionSigningKey]);
    v15 = 0;
    v11 = +[POJWTSigning encodeAndSignJWT:algorithm:key:certificate:error:](POJWTSigning, "encodeAndSignJWT:algorithm:key:certificate:error:", v9, v10, [contextCopy embeddedAssertionSigningKey], objc_msgSend(contextCopy, "embeddedAssertionCertificate"), &v15);
    if (v11)
    {
      [contextCopy setResumedEmbeddedAssertion:v11];
      resumeData = [contextCopy resumeData];
      completionCopy[2](completionCopy, 1, contextCopy, resumeData);
    }

    else
    {
      v14 = __76__POAuthenticationProcess_performAccessTokenSigningUsingContext_completion___block_invoke_902();
      completionCopy[2](completionCopy, 3, contextCopy, 0);
    }
  }

  else
  {
    v13 = __76__POAuthenticationProcess_performAccessTokenSigningUsingContext_completion___block_invoke();
    completionCopy[2](completionCopy, 2, contextCopy, 0);
  }
}

id __76__POAuthenticationProcess_performAccessTokenSigningUsingContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create embedded assertion JWT."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __76__POAuthenticationProcess_performAccessTokenSigningUsingContext_completion___block_invoke_902()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign embedded SmartCard assertion."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)completeAccessTokenLoginUsingContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Complete NFC login", v12, 2u);
  }

  [contextCopy setLoginType:4];
  resumedEmbeddedAssertion = [contextCopy resumedEmbeddedAssertion];
  v10 = [(POAuthenticationProcess *)self createLoginJWTWithContext:contextCopy embeddedAssertion:resumedEmbeddedAssertion];

  if (v10)
  {
    [(POAuthenticationProcess *)self performLoginWithContext:contextCopy loginJWT:v10 completion:completionCopy];
  }

  else
  {
    v11 = __78__POAuthenticationProcess__performWSTrustPasswordLoginWithContext_completion___block_invoke_184();
    completionCopy[2](completionCopy, 2, contextCopy, 0);
  }
}

- (id)createRefreshJWTWithContext:(id)context
{
  v40[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  refreshToken = [contextCopy refreshToken];

  if (refreshToken)
  {
    v6 = objc_alloc_init(POMutableLoginJWTBody);
    loginConfiguration = [contextCopy loginConfiguration];
    customRefreshRequestBodyClaims = [loginConfiguration customRefreshRequestBodyClaims];
    [(POMutableLoginJWTBody *)v6 addCustomClaims:customRefreshRequestBodyClaims];

    loginConfiguration2 = [contextCopy loginConfiguration];
    clientID = [loginConfiguration2 clientID];
    [(POMutableLoginJWTBody *)v6 setClient_id:clientID];

    scope = [contextCopy scope];
    [(POMutableLoginJWTBody *)v6 setScope:scope];

    nonce = [contextCopy nonce];
    [(POMutableLoginJWTBody *)v6 setNonce:nonce];

    loginConfiguration3 = [contextCopy loginConfiguration];
    clientID2 = [loginConfiguration3 clientID];
    [(POMutableLoginJWTBody *)v6 setIss:clientID2];

    v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    [(POMutableLoginJWTBody *)v6 setExp:v15];

    v16 = MEMORY[0x277CCACE0];
    loginConfiguration4 = [contextCopy loginConfiguration];
    refreshEndpointURL = [loginConfiguration4 refreshEndpointURL];
    absoluteString = [refreshEndpointURL absoluteString];
    v20 = [v16 componentsWithString:absoluteString];

    [v20 setQuery:0];
    [v20 setQueryItems:0];
    [v20 setFragment:0];
    v21 = [v20 URL];
    absoluteString2 = [v21 absoluteString];
    [(POMutableLoginJWTBody *)v6 setAud:absoluteString2];

    loginConfiguration5 = [contextCopy loginConfiguration];
    serverNonceClaimName = [loginConfiguration5 serverNonceClaimName];
    v25 = [serverNonceClaimName length];

    if (v25)
    {
      loginConfiguration6 = [contextCopy loginConfiguration];
      serverNonceClaimName2 = [loginConfiguration6 serverNonceClaimName];
      v39 = serverNonceClaimName2;
      serverNonce = [contextCopy serverNonce];
      v40[0] = serverNonce;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      [(POMutableLoginJWTBody *)v6 addCustomClaims:v29];
    }

    else
    {
      loginConfiguration6 = [contextCopy serverNonce];
      [(POMutableLoginJWTBody *)v6 setRequest_nonce:loginConfiguration6];
    }

    refreshToken2 = [contextCopy refreshToken];
    [(POMutableLoginJWTBody *)v6 setRefresh_token:refreshToken2];

    [(POMutableLoginJWTBody *)v6 setGrant_type:@"refresh_token"];
    date = [MEMORY[0x277CBEAA8] date];
    [(POMutableLoginJWTBody *)v6 setIat:date];

    [(POAuthenticationProcess *)self addCryptoHeadersToJWTBody:v6 context:contextCopy];
    v34 = objc_alloc_init(POMutableJWTHeader);
    [(POMutableJWTHeader *)v34 setTyp:@"platformsso-refresh-request+jwt"];
    loginConfiguration7 = [contextCopy loginConfiguration];
    customRefreshRequestHeaderClaims = [loginConfiguration7 customRefreshRequestHeaderClaims];
    [(POMutableJWTHeader *)v34 addCustomClaims:customRefreshRequestHeaderClaims];

    v31 = objc_alloc_init(POMutableLoginTokenJWT);
    [(POMutableLoginTokenJWT *)v31 setBody:v6];
    [(POMutableJWT *)v31 setHeader:v34];
  }

  else
  {
    v30 = __55__POAuthenticationProcess_createRefreshJWTWithContext___block_invoke();
    v31 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v31;
}

id __55__POAuthenticationProcess_createRefreshJWTWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing refresh token"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)performKeyRequestUsingContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Starting key request", buf, 2u);
  }

  v9 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v11 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  if (v11)
  {
    v12 = PO_LOG_POAuthenticationProcess();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E8B1000, v12, OS_LOG_TYPE_INFO, "Sending nonce request", buf, 2u);
    }

    v13 = PO_LOG_POAuthenticationProcess();
    v14 = os_signpost_id_make_with_pointer(v13, contextCopy);

    v15 = PO_LOG_POAuthenticationProcess();
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_920;
    v18[3] = &unk_279A3DEF8;
    v22 = v14;
    v21 = completionCopy;
    v19 = contextCopy;
    selfCopy = self;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v19 request:v11 completion:v18];
  }

  else
  {
    v17 = __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0, 0, 0);
  }
}

void __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_920(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess();
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", buf, 2u);
    }

    v6 = [*(a1 + 40) createKeyRequestJWTWithContext:*(a1 + 32)];
    if (v6)
    {
      v7 = [*(a1 + 32) deviceConfiguration];
      v8 = [v7 signingAlgorithm];
      v9 = [*(a1 + 32) deviceConfiguration];
      v10 = [v9 deviceSigningKey];
      v11 = [*(a1 + 32) deviceConfiguration];
      v12 = +[POJWTSigning encodeAndSignJWT:signingAlgorithm:key:certificate:error:](POJWTSigning, "encodeAndSignJWT:signingAlgorithm:key:certificate:error:", v6, v8, v10, [v11 deviceSigningCertificate], 0);

      if (v12)
      {
        v13 = [*(a1 + 40) createKeyRequestWithContext:*(a1 + 32) jwt:v12];
        if (v13)
        {
          v14 = PO_LOG_PODiagnostics();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [*(a1 + 32) requestIdentifier];
            *buf = 138543362;
            v39 = v15;
            _os_log_impl(&dword_25E8B1000, v14, OS_LOG_TYPE_INFO, "Sending key request: %{public}@", buf, 0xCu);
          }

          v16 = PO_LOG_POAuthenticationProcess();
          v17 = os_signpost_id_make_with_pointer(v16, *(a1 + 32));

          v18 = PO_LOG_POAuthenticationProcess();
          v19 = v18;
          if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25E8B1000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PlatformSSO_KeyRequest", " enableTelemetry=YES ", buf, 2u);
          }

          v21 = *(a1 + 32);
          v20 = *(a1 + 40);
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_941;
          v35[3] = &unk_279A3DF20;
          v37 = v17;
          v22 = *(a1 + 48);
          v35[4] = *(a1 + 40);
          v36 = v22;
          [v20 performKeyRequestWithContext:v21 request:v13 completion:v35];
        }

        else
        {
          v32 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_935();
          v33 = *(a1 + 32);
          (*(*(a1 + 48) + 16))();
        }
      }

      else
      {
        v30 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_929();
        v31 = *(a1 + 32);
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v28 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_923();
      v29 = *(a1 + 32);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v23 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_2();
    v24 = PO_LOG_POAuthenticationProcess();
    v25 = v24;
    v26 = *(a1 + 56);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v25, OS_SIGNPOST_INTERVAL_END, v26, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }

    v27 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  v34 = *MEMORY[0x277D85DE8];
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to retrieve nonce"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_923()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create key JWT"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_929()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign key request"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_935()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create key request"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_941(void *a1, uint64_t a2, void *a3, void *a4)
{
  v111 = *MEMORY[0x277D85DE8];
  v103 = a3;
  v7 = a4;
  v8 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_INFO, "Key response received", buf, 2u);
  }

  v9 = PO_LOG_POAuthenticationProcess();
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 134217984;
    v110 = a2;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_KeyRequest", "result=%lu", buf, 0xCu);
  }

  if (a2 == 1)
  {
    v12 = [POKeyResponseJWT alloc];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    v14 = [(POKeyResponseJWT *)v12 initWithString:v13];

    if (v14)
    {
      v101 = v7;
      v15 = *(a1[4] + 40);
      v16 = [(POJWT *)v14 decodedHeader];
      v17 = [v16 alg];
      if ([v15 containsObject:v17])
      {

        goto LABEL_13;
      }

      v20 = *(a1[4] + 40);
      v21 = MEMORY[0x277CCACA8];
      [(POJWT *)v14 decodedHeader];
      v23 = v22 = v14;
      v24 = [v23 alg];
      v25 = [(POJWT *)v22 decodedHeader];
      v26 = [v25 enc];
      v27 = [v21 stringWithFormat:@"%@, %@", v24, v26];
      LOBYTE(v20) = [v20 containsObject:v27];

      v14 = v22;
      if (v20)
      {
LABEL_13:
        v28 = [v103 deviceConfiguration];
        v29 = [v28 encryptionAlgorithm];
        v102 = v14;
        v100 = a1;
        if ([v29 isEqualToNumber:?])
        {
          [v103 apv];
        }

        else
        {
          [v103 nonce];
        }
        v98 = ;

        v30 = [v103 deviceConfiguration];
        v31 = [v30 encryptionAlgorithm];
        v32 = [v103 deviceConfiguration];
        v33 = [v32 deviceEncryptionKey];
        v34 = [v103 loginConfiguration];
        v35 = [v34 hpkePsk];
        v36 = [v103 loginConfiguration];
        v37 = [v36 hpkePsk_id];
        v38 = [v103 loginConfiguration];
        v39 = [v38 hpkeAuthPublicKey];
        v106 = 0;
        v40 = v33;
        v41 = v98;
        v42 = [POJWTEncryption decodeAndDecryptJWT:v102 encryptionAlgorithm:v31 privateKey:v40 otherInfo:v98 psk:v35 psk_id:v37 authPublicKey:v39 error:&v106];
        v99 = v106;

        if (v42)
        {
          v14 = v102;
          if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
          {
            v43 = PO_LOG_POAuthenticationProcess();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_941_cold_1();
            }
          }

          v44 = [v103 deviceConfiguration];
          v45 = [v44 encryptionAlgorithm];
          v46 = [v45 isEqualToNumber:0x2870A9198];

          if (!v46)
          {
LABEL_26:
            v52 = [(POKeyResponseJWT *)v102 decodedBody];
            v53 = [v52 certificate];

            if (v53)
            {
              v54 = objc_alloc(MEMORY[0x277CBEA90]);
              v55 = [(POKeyResponseJWT *)v102 decodedBody];
              v56 = [v55 certificate];
              v57 = [v54 psso_initWithBase64URLEncodedString:v56];

              v58 = [POSecKeyHelper certificateForData:v57];
              if (v58)
              {
                v59 = SecCertificateCopyKey(v58);
                v7 = v101;
                if (v59)
                {
                  v60 = v59;
                  v61 = SecKeyCopyAttributes(v59);
                  CFRelease(v60);
                  v62 = SecCertificateCopyPublicKeySHA1Digest();
                  v63 = [(__CFDictionary *)v61 objectForKeyedSubscript:*MEMORY[0x277CDC028]];
                  v64 = [(__CFDictionary *)v61 objectForKeyedSubscript:*MEMORY[0x277CDC018]];
                  if ((([v63 isEqualToString:*MEMORY[0x277CDC030]] & 1) != 0 || objc_msgSend(v63, "isEqualToString:", *MEMORY[0x277CDC040])) && objc_msgSend(v64, "intValue") == 256)
                  {

                    v14 = v102;
                    v65 = [(POKeyResponseJWT *)v102 decodedBody];
                    v66 = [v65 iat];
                    [v66 timeIntervalSinceNow];
                    v68 = v67;

                    v69 = [(POKeyResponseJWT *)v102 decodedBody];
                    v70 = [v69 iat];

                    if (v70 && v68 <= 120.0)
                    {
                      v71 = [(POKeyResponseJWT *)v102 decodedBody];
                      v72 = [v71 exp];
                      [v72 timeIntervalSinceNow];
                      v74 = v73;

                      v75 = [(POKeyResponseJWT *)v102 decodedBody];
                      v76 = [v75 exp];

                      if (v76 && v74 >= -120.0)
                      {
                        v77 = v100[5];
                        v78 = [(POKeyResponseJWT *)v102 decodedBody];
                        v79 = [v78 key_context];
                        (*(v77 + 16))(v77, 1, v103, v62, v57, v79);

LABEL_49:
                        v7 = v101;
                        goto LABEL_50;
                      }

                      v96 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_988();
                    }

                    else
                    {
                      v95 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_987();
                    }

                    (*(v100[5] + 16))();
                    goto LABEL_49;
                  }

                  v93 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_975();
                  (*(v100[5] + 16))();

                  v14 = v102;
                }

                else
                {
                  v94 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_981();
                  (*(v100[5] + 16))();
                }

LABEL_50:
                v41 = v98;
                v80 = v99;
                goto LABEL_51;
              }
            }

            else
            {
              v57 = 0;
            }

            v7 = v101;
            v41 = v98;
            v80 = v99;
            v91 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_969();
            (*(v100[5] + 16))();
LABEL_51:

            goto LABEL_52;
          }

          if ([v100[4] validatePartyUInfo:v102 context:v103])
          {
            v47 = [v103 deviceConfiguration];
            v48 = SecKeyCopyPublicKey([v47 deviceEncryptionKey]);

            v49 = v100[4];
            v50 = [v103 apv];
            v51 = [v49 validatePartyVInfo:v50 context:v103 publicKey:v48];

            if (v48)
            {
              CFRelease(v48);
            }

            if (v51)
            {
              goto LABEL_26;
            }

            v92 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_426();
          }

          else
          {
            v90 = __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_420();
          }

          (*(v100[5] + 16))();
          v7 = v101;
          v41 = v98;
          v80 = v99;
        }

        else
        {
          v104[0] = MEMORY[0x277D85DD0];
          v104[1] = 3221225472;
          v104[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_959;
          v104[3] = &unk_279A3DC48;
          v80 = v99;
          v105 = v99;
          v81 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_959(v104);
          (*(v100[5] + 16))();

          v7 = v101;
          v14 = v102;
        }

LABEL_52:

        goto LABEL_53;
      }

      v82 = MEMORY[0x277CCACA8];
      v83 = [(POJWT *)v22 decodedHeader];
      v84 = [v83 alg];
      v85 = [(POJWT *)v22 decodedHeader];
      v86 = [v85 enc];
      v87 = [v82 stringWithFormat:@"alg = %@, enc = %@", v84, v86];

      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_955;
      v107[3] = &unk_279A3DC48;
      v108 = v87;
      v88 = v87;
      v89 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_955(v107);
      (*(a1[5] + 16))();

      v7 = v101;
    }

    else
    {
      v19 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_949();
      (*(a1[5] + 16))();
    }

LABEL_53:

    goto LABEL_54;
  }

  v18 = __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_942();
  (*(a1[5] + 16))();
LABEL_54:

  v97 = *MEMORY[0x277D85DE8];
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_942()
{
  v0 = [POError errorWithCode:-1001 description:@"Key request failed"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_949()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to parse key response."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_955(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"unsupported key response algorithm and encryption."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_959(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to decrypt key response."];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_969()
{
  v0 = [POError errorWithCode:-1008 description:@"Missing or invalid certificate."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_975()
{
  v0 = [POError errorWithCode:-1008 description:@"Certificate contains incorrect key size."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_981()
{
  v0 = [POError errorWithCode:-1008 description:@"Certificate is missing key."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_987()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to verify iat."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v0;
}

id __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_988()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to verify exp."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1();
  }

  return v0;
}

- (void)performKeyExchangeRequestUsingContext:(id)context otherPartyPublicKeyData:(id)data completion:(id)completion
{
  contextCopy = context;
  dataCopy = data;
  completionCopy = completion;
  v11 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_INFO, "Starting Key Exchange request", buf, 2u);
  }

  v12 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v13 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess performPasswordLoginUsingContext:contextCopy completion:?];
  }

  v14 = [(POAuthenticationProcess *)self createNonceRequestWithContext:contextCopy];
  if (v14)
  {
    v15 = PO_LOG_POAuthenticationProcess();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E8B1000, v15, OS_LOG_TYPE_INFO, "Sending nonce request", buf, 2u);
    }

    v16 = PO_LOG_POAuthenticationProcess();
    v17 = os_signpost_id_make_with_pointer(v16, contextCopy);

    v18 = PO_LOG_POAuthenticationProcess();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PlatformSSO_NonceRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_991;
    v21[3] = &unk_279A3E128;
    v26 = v17;
    v25 = completionCopy;
    v22 = contextCopy;
    selfCopy = self;
    v24 = dataCopy;
    [(POAuthenticationProcess *)self performNonceRequestWithContext:v22 request:v14 completion:v21];
  }

  else
  {
    v20 = __77__POAuthenticationProcess_prepareForAccessTokenLoginUsingContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, contextCopy, 0, 0);
  }
}

void __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_991(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = PO_LOG_POAuthenticationProcess();
    v4 = v3;
    v5 = *(a1 + 64);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlatformSSO_NonceRequest", "Success", buf, 2u);
    }

    v6 = [*(a1 + 40) createKeyExchangeRequestJWTWithContext:*(a1 + 32) otherPartyPublicKey:*(a1 + 48)];
    if (v6)
    {
      v7 = [*(a1 + 32) deviceConfiguration];
      v8 = [v7 signingAlgorithm];
      v9 = [*(a1 + 32) deviceConfiguration];
      v10 = [v9 deviceSigningKey];
      v11 = [*(a1 + 32) deviceConfiguration];
      v12 = +[POJWTSigning encodeAndSignJWT:signingAlgorithm:key:certificate:error:](POJWTSigning, "encodeAndSignJWT:signingAlgorithm:key:certificate:error:", v6, v8, v10, [v11 deviceSigningCertificate], 0);

      if (v12)
      {
        v13 = [*(a1 + 40) createKeyExchangeRequestWithContext:*(a1 + 32) jwt:v12];
        if (v13)
        {
          v14 = PO_LOG_PODiagnostics();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [*(a1 + 32) requestIdentifier];
            *buf = 138543362;
            v39 = v15;
            _os_log_impl(&dword_25E8B1000, v14, OS_LOG_TYPE_INFO, "Sending Key Exchange request: %{public}@", buf, 0xCu);
          }

          v16 = PO_LOG_POAuthenticationProcess();
          v17 = os_signpost_id_make_with_pointer(v16, *(a1 + 32));

          v18 = PO_LOG_POAuthenticationProcess();
          v19 = v18;
          if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25E8B1000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PlatformSSO_KeyExchangeRequest", " enableTelemetry=YES ", buf, 2u);
          }

          v21 = *(a1 + 32);
          v20 = *(a1 + 40);
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1012;
          v35[3] = &unk_279A3DF20;
          v37 = v17;
          v22 = *(a1 + 56);
          v35[4] = *(a1 + 40);
          v36 = v22;
          [v20 performKeyExchangeRequestWithContext:v21 request:v13 completion:v35];
        }

        else
        {
          v32 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1006();
          v33 = *(a1 + 32);
          (*(*(a1 + 56) + 16))();
        }
      }

      else
      {
        v30 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1000();
        v31 = *(a1 + 32);
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v28 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_994();
      v29 = *(a1 + 32);
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v23 = __71__POAuthenticationProcess_performPasswordLoginUsingContext_completion___block_invoke_2();
    v24 = PO_LOG_POAuthenticationProcess();
    v25 = v24;
    v26 = *(a1 + 64);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E8B1000, v25, OS_SIGNPOST_INTERVAL_END, v26, "PlatformSSO_NonceRequest", "Failed", buf, 2u);
    }

    v27 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  v34 = *MEMORY[0x277D85DE8];
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_994()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create Key Exchange JWT."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1000()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to sign Key Exchange request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1006()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create Key Exchange request."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

void __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1012(void *a1, uint64_t a2, void *a3, void *a4)
{
  v90 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v9, OS_LOG_TYPE_INFO, "Key Exchange response received", buf, 2u);
  }

  v10 = PO_LOG_POAuthenticationProcess();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 134217984;
    v89 = a2;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PlatformSSO_KeyExchangeRequest", "result=%lu", buf, 0xCu);
  }

  if (a2 == 1)
  {
    v13 = [POKeyExchangeResponseJWT alloc];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v15 = [(POKeyExchangeResponseJWT *)v13 initWithString:v14];

    if (!v15)
    {
      v20 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1020();
      (*(a1[5] + 16))();
LABEL_38:

      goto LABEL_39;
    }

    v80 = v8;
    v16 = *(a1[4] + 40);
    v17 = [(POJWT *)v15 decodedHeader];
    v18 = [v17 alg];
    v81 = a1;
    if ([v16 containsObject:v18])
    {
    }

    else
    {
      v21 = *(a1[4] + 40);
      v22 = MEMORY[0x277CCACA8];
      [(POJWT *)v15 decodedHeader];
      v24 = v23 = v15;
      v25 = [v24 alg];
      v26 = [(POJWT *)v23 decodedHeader];
      v27 = [v26 enc];
      v28 = [v22 stringWithFormat:@"%@, %@", v25, v27];
      LOBYTE(v21) = [v21 containsObject:v28];

      v15 = v23;
      if ((v21 & 1) == 0)
      {
        v65 = MEMORY[0x277CCACA8];
        v66 = [(POJWT *)v23 decodedHeader];
        v67 = [v66 alg];
        v68 = [(POJWT *)v23 decodedHeader];
        v69 = [v68 enc];
        v70 = [v65 stringWithFormat:@"alg = %@, enc = %@", v67, v69];

        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1026;
        v86[3] = &unk_279A3DC48;
        v87 = v70;
        v71 = v70;
        v72 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1026(v86);
        (*(v81[5] + 16))();

LABEL_37:
        v8 = v80;
        goto LABEL_38;
      }
    }

    v29 = [v7 deviceConfiguration];
    v30 = [v29 encryptionAlgorithm];
    v82 = v15;
    if ([v30 isEqualToNumber:?])
    {
      [v7 apv];
    }

    else
    {
      [v7 nonce];
    }
    v78 = ;

    v77 = [v7 deviceConfiguration];
    v31 = [v77 encryptionAlgorithm];
    v32 = [v7 deviceConfiguration];
    v33 = [v32 deviceEncryptionKey];
    v34 = [v7 loginConfiguration];
    v35 = [v34 hpkePsk];
    v36 = [v7 loginConfiguration];
    v37 = [v36 hpkePsk_id];
    v38 = v7;
    v39 = v37;
    v79 = v38;
    v40 = [v38 loginConfiguration];
    v85 = 0;
    v41 = +[POJWTEncryption decodeAndDecryptJWT:encryptionAlgorithm:privateKey:otherInfo:psk:psk_id:authPublicKey:error:](POJWTEncryption, "decodeAndDecryptJWT:encryptionAlgorithm:privateKey:otherInfo:psk:psk_id:authPublicKey:error:", v82, v31, v33, v78, v35, v39, [v40 hpkeAuthPublicKey], &v85);
    v42 = v85;

    if (!v41)
    {
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1030;
      v83[3] = &unk_279A3DC48;
      v84 = v42;
      v64 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1030(v83);
      v7 = v79;
      (*(v81[5] + 16))();

      v15 = v82;
LABEL_36:

      goto LABEL_37;
    }

    v7 = v79;
    v15 = v82;
    if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
    {
      v43 = PO_LOG_POAuthenticationProcess();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1012_cold_1();
      }
    }

    v44 = v42;
    v45 = [v79 deviceConfiguration];
    v46 = [v45 encryptionAlgorithm];
    v47 = [v46 isEqualToNumber:0x2870A9198];

    if (v47)
    {
      if (([v81[4] validatePartyUInfo:v82 context:v79] & 1) == 0)
      {
        v74 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1034();
        goto LABEL_34;
      }

      v48 = [v79 deviceConfiguration];
      v49 = SecKeyCopyPublicKey([v48 deviceEncryptionKey]);

      v50 = v81[4];
      v51 = [v79 apv];
      v52 = [v50 validatePartyVInfo:v51 context:v79 publicKey:v49];

      if (v49)
      {
        CFRelease(v49);
      }

      if ((v52 & 1) == 0)
      {
        v75 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1037();
        goto LABEL_34;
      }
    }

    v53 = [(POKeyExchangeResponseJWT *)v82 decodedBody];
    v54 = [v53 key];

    if (v54)
    {
      Default = CFAllocatorGetDefault();
      v56 = SecCFAllocatorZeroize();
      CFAllocatorSetDefault(v56);
      v57 = objc_alloc(MEMORY[0x277CBEB28]);
      v58 = [(POKeyExchangeResponseJWT *)v82 decodedBody];
      v59 = [v58 key];
      v60 = [v57 initWithBase64EncodedString:v59 options:0];

      v7 = v79;
      CFAllocatorSetDefault(Default);
      if (v60)
      {
        v61 = v81[5];
        v62 = [(POKeyExchangeResponseJWT *)v82 decodedBody];
        v63 = [v62 key_context];
        (*(v61 + 16))(v61, 1, v79, v60, v63);

LABEL_35:
        v42 = v44;
        goto LABEL_36;
      }
    }

    v73 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1040();
LABEL_34:
    (*(v81[5] + 16))();
    goto LABEL_35;
  }

  v19 = __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1013();
  (*(a1[5] + 16))();
LABEL_39:

  v76 = *MEMORY[0x277D85DE8];
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1013()
{
  v0 = [POError errorWithCode:-1001 description:@"Key Exchange request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1020()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to parse Key Exchange response."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1026(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"Unsupported Key Exchange response algorithm and encryption."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1030(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to decrypt Key Exchange response."];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1034()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to validate apu."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1037()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to validate apv."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1040()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing or malformed exchanged key."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createKeyRequestJWTWithContext:(id)context
{
  v36[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  refreshToken = [contextCopy refreshToken];

  if (refreshToken)
  {
    nonce = [contextCopy nonce];
    if (nonce)
    {
      v7 = nonce;
      serverNonce = [contextCopy serverNonce];

      if (serverNonce)
      {
        v9 = objc_alloc_init(POMutableKeyRequestJWTBody);
        loginConfiguration = [contextCopy loginConfiguration];
        customKeyRequestBodyClaims = [loginConfiguration customKeyRequestBodyClaims];
        [(POMutableKeyRequestJWTBody *)v9 addCustomClaims:customKeyRequestBodyClaims];

        [(POMutableKeyRequestJWTBody *)v9 setRequest_type:@"key_request"];
        [(POMutableKeyRequestJWTBody *)v9 setVersion:@"1.0"];
        date = [MEMORY[0x277CBEAA8] date];
        [(POMutableKeyRequestJWTBody *)v9 setIat:date];

        loginConfiguration2 = [contextCopy loginConfiguration];
        clientID = [loginConfiguration2 clientID];
        [(POMutableKeyRequestJWTBody *)v9 setIss:clientID];

        v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
        [(POMutableKeyRequestJWTBody *)v9 setExp:v15];

        nonce2 = [contextCopy nonce];
        [(POMutableKeyRequestJWTBody *)v9 setNonce:nonce2];

        refreshToken2 = [contextCopy refreshToken];
        [(POMutableKeyRequestJWTBody *)v9 setRefresh_token:refreshToken2];

        userName = [contextCopy userName];
        [(POMutableKeyRequestJWTBody *)v9 setUsername:userName];

        userName2 = [contextCopy userName];
        [(POMutableKeyRequestJWTBody *)v9 setSub:userName2];

        [(POMutableKeyRequestJWTBody *)v9 setKey_purpose:@"user_unlock"];
        loginConfiguration3 = [contextCopy loginConfiguration];
        serverNonceClaimName = [loginConfiguration3 serverNonceClaimName];
        v22 = [serverNonceClaimName length];

        if (v22)
        {
          loginConfiguration4 = [contextCopy loginConfiguration];
          serverNonceClaimName2 = [loginConfiguration4 serverNonceClaimName];
          v35 = serverNonceClaimName2;
          serverNonce2 = [contextCopy serverNonce];
          v36[0] = serverNonce2;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
          [(POMutableKeyRequestJWTBody *)v9 addCustomClaims:v26];
        }

        else
        {
          loginConfiguration4 = [contextCopy serverNonce];
          [(POMutableKeyRequestJWTBody *)v9 setRequest_nonce:loginConfiguration4];
        }

        [(POAuthenticationProcess *)self addCryptoHeadersToJWTBody:v9 context:contextCopy];
        v30 = objc_alloc_init(POMutableJWTHeader);
        [(POMutableJWTHeader *)v30 setTyp:@"platformsso-key-request+jwt"];
        loginConfiguration5 = [contextCopy loginConfiguration];
        customKeyRequestHeaderClaims = [loginConfiguration5 customKeyRequestHeaderClaims];
        [(POMutableJWTHeader *)v30 addCustomClaims:customKeyRequestHeaderClaims];

        v29 = objc_alloc_init(POMutableKeyRequestJWT);
        [(POMutableKeyRequestJWT *)v29 setBody:v9];
        [(POMutableJWT *)v29 setHeader:v30];

        goto LABEL_11;
      }
    }

    v27 = __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke_1051();
  }

  else
  {
    v28 = __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke();
  }

  v29 = 0;
LABEL_11:

  v33 = *MEMORY[0x277D85DE8];

  return v29;
}

id __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing refresh token."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke_1051()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing required values."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createKeyRequestWithContext:(id)context jwt:(id)jwt
{
  v39[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = MEMORY[0x277CCAB70];
  jwtCopy = jwt;
  v8 = [v6 alloc];
  loginConfiguration = [contextCopy loginConfiguration];
  keyEndpointURL = [loginConfiguration keyEndpointURL];
  v11 = [v8 initWithURL:keyEndpointURL cachePolicy:4 timeoutInterval:30.0];

  [v11 setHTTPMethod:@"POST"];
  [v11 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
  [v11 addValue:@"application/platformsso-key-response+jwt" forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v11 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v13 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"platform_sso_version" value:@"2.0"];
  v39[0] = v14;
  v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"urn:ietf:params:oauth:grant-type:jwt-bearer"];
  v39[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];

  loginConfiguration2 = [contextCopy loginConfiguration];
  customKeyRequestValues = [loginConfiguration2 customKeyRequestValues];

  if (customKeyRequestValues)
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customKeyRequestValues2 = [loginConfiguration3 customKeyRequestValues];
    v21 = [v16 arrayByAddingObjectsFromArray:customKeyRequestValues2];

    v16 = v21;
  }

  [v13 setQueryItems:v16];
  percentEncodedQuery = [v13 percentEncodedQuery];
  v23 = [percentEncodedQuery dataUsingEncoding:4];
  v24 = [v23 mutableCopy];

  loginConfiguration4 = [contextCopy loginConfiguration];
  customRequestJWTParameterName = [loginConfiguration4 customRequestJWTParameterName];
  v27 = [customRequestJWTParameterName length];

  if (v27)
  {
    loginConfiguration5 = [contextCopy loginConfiguration];
    customRequestJWTParameterName2 = [loginConfiguration5 customRequestJWTParameterName];
  }

  else
  {
    customRequestJWTParameterName2 = @"assertion";
  }

  v30 = SecCFAllocatorZeroize();
  v31 = CFStringCreateWithFormat(v30, 0, @"&%@=%@", customRequestJWTParameterName2, jwtCopy);

  if (v31)
  {
    v32 = SecCFAllocatorZeroize();
    ExternalRepresentation = CFStringCreateExternalRepresentation(v32, v31, 0x8000100u, 0);
    if (ExternalRepresentation)
    {
      [v24 appendData:ExternalRepresentation];
      [v11 setHTTPBody:v24];
      v34 = v11;
    }

    else
    {
      v36 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
      v34 = 0;
    }
  }

  else
  {
    v35 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
    v34 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)performKeyRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"Key Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Key response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1073;
    v44[3] = &unk_279A3DE00;
    v45 = v9;
    v46 = v11;
    v12 = v11;
    v19 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1073(v44);
    v20 = [a1[4] completionQueue];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1077;
    v41[3] = &unk_279A3DF98;
    v43 = a1[6];
    v42 = a1[5];
    [v20 addOperationWithBlock:v41];

    v21 = v45;
LABEL_20:

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    if ([v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") < 300)
    {
      v24 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
      v25 = PO_LOG_POAuthenticationProcess();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
      if (v24)
      {
        if (v26)
        {
          __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_cold_2();
        }
      }

      else if (v26)
      {
        __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_cold_1();
      }

      v15 = [a1[4] completionQueue];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1089;
      v30 = &unk_279A3E060;
      v13 = &v33;
      v33 = a1[6];
      v16 = &v31;
      v31 = a1[5];
      v17 = &v32;
      v32 = v7;
      v18 = &v27;
    }

    else
    {
      v36[1] = MEMORY[0x277D85DD0];
      v36[2] = 3221225472;
      v36[3] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2_1084;
      v36[4] = &unk_279A3DC48;
      v13 = &v37;
      v37 = v12;
      v14 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2_1084();
      v15 = [a1[4] completionQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1088;
      v34[3] = &unk_279A3DF98;
      v16 = v36;
      v36[0] = a1[6];
      v17 = &v35;
      v35 = a1[5];
      v18 = v34;
    }

    [v15 addOperationWithBlock:{v18, v27, v28, v29, v30}];

    v21 = *v13;
    goto LABEL_20;
  }

  v22 = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2();
  v23 = [a1[4] completionQueue];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1083;
  v38[3] = &unk_279A3DF98;
  v40 = a1[6];
  v39 = a1[5];
  [v23 addOperationWithBlock:v38];

  v12 = v40;
LABEL_21:
}

id __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_1073(uint64_t a1)
{
  v2 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to retrieve key."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1(v2, a1);
  }

  return v2;
}

id __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for key."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_2_1084()
{
  v0 = [POError errorWithCode:-1009 description:@"Key request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v0;
}

- (id)createKeyExchangeRequestJWTWithContext:(id)context otherPartyPublicKey:(id)key
{
  v41[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  keyCopy = key;
  refreshToken = [contextCopy refreshToken];

  if (refreshToken)
  {
    nonce = [contextCopy nonce];
    if (nonce)
    {
      v10 = nonce;
      serverNonce = [contextCopy serverNonce];

      if (keyCopy)
      {
        if (serverNonce)
        {
          v12 = objc_alloc_init(POMutableKeyExchangeRequestJWTBody);
          loginConfiguration = [contextCopy loginConfiguration];
          customKeyExchangeRequestBodyClaims = [loginConfiguration customKeyExchangeRequestBodyClaims];
          [(POMutableKeyExchangeRequestJWTBody *)v12 addCustomClaims:customKeyExchangeRequestBodyClaims];

          [(POMutableKeyExchangeRequestJWTBody *)v12 setRequest_type:@"key_exchange"];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setVersion:@"1.0"];
          date = [MEMORY[0x277CBEAA8] date];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setIat:date];

          loginConfiguration2 = [contextCopy loginConfiguration];
          clientID = [loginConfiguration2 clientID];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setIss:clientID];

          v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setExp:v18];

          nonce2 = [contextCopy nonce];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setNonce:nonce2];

          refreshToken2 = [contextCopy refreshToken];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setRefresh_token:refreshToken2];

          userName = [contextCopy userName];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setUsername:userName];

          userName2 = [contextCopy userName];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setSub:userName2];

          [(POMutableKeyExchangeRequestJWTBody *)v12 setKey_purpose:@"user_unlock"];
          loginConfiguration3 = [contextCopy loginConfiguration];
          serverNonceClaimName = [loginConfiguration3 serverNonceClaimName];
          v25 = [serverNonceClaimName length];

          if (v25)
          {
            loginConfiguration4 = [contextCopy loginConfiguration];
            serverNonceClaimName2 = [loginConfiguration4 serverNonceClaimName];
            v40 = serverNonceClaimName2;
            serverNonce2 = [contextCopy serverNonce];
            v41[0] = serverNonce2;
            v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
            [(POMutableKeyExchangeRequestJWTBody *)v12 addCustomClaims:v29];
          }

          else
          {
            loginConfiguration4 = [contextCopy serverNonce];
            [(POMutableKeyExchangeRequestJWTBody *)v12 setRequest_nonce:loginConfiguration4];
          }

          v35 = [keyCopy base64EncodedStringWithOptions:0];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setOther_publickey:v35];

          encryptionContext = [contextCopy encryptionContext];
          [(POMutableKeyExchangeRequestJWTBody *)v12 setKey_context:encryptionContext];

          [(POAuthenticationProcess *)self addCryptoHeadersToJWTBody:v12 context:contextCopy];
          v37 = objc_alloc_init(POMutableJWTHeader);
          [(POMutableJWTHeader *)v37 setTyp:@"platformsso-key-request+jwt"];
          loginConfiguration5 = [contextCopy loginConfiguration];
          customKeyExchangeRequestHeaderClaims = [loginConfiguration5 customKeyExchangeRequestHeaderClaims];
          [(POMutableJWTHeader *)v37 addCustomClaims:customKeyExchangeRequestHeaderClaims];

          v32 = objc_alloc_init(POMutableKeyExchangeRequestJWT);
          [(POMutableKeyExchangeRequestJWT *)v32 setBody:v12];
          [(POMutableJWT *)v32 setHeader:v37];

          goto LABEL_10;
        }
      }
    }

    v30 = __86__POAuthenticationProcess_createKeyExchangeRequestJWTWithContext_otherPartyPublicKey___block_invoke_1095();
  }

  else
  {
    v31 = __58__POAuthenticationProcess_createKeyRequestJWTWithContext___block_invoke();
  }

  v32 = 0;
LABEL_10:

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

id __86__POAuthenticationProcess_createKeyExchangeRequestJWTWithContext_otherPartyPublicKey___block_invoke_1095()
{
  v0 = [POError errorWithCode:-1008 description:@"Missing required values."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)createKeyExchangeRequestWithContext:(id)context jwt:(id)jwt
{
  v39[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = MEMORY[0x277CCAB70];
  jwtCopy = jwt;
  v8 = [v6 alloc];
  loginConfiguration = [contextCopy loginConfiguration];
  keyEndpointURL = [loginConfiguration keyEndpointURL];
  v11 = [v8 initWithURL:keyEndpointURL cachePolicy:4 timeoutInterval:30.0];

  [v11 setHTTPMethod:@"POST"];
  [v11 addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
  [v11 addValue:@"application/platformsso-key-response+jwt" forHTTPHeaderField:@"Accept"];
  requestIdentifier = [contextCopy requestIdentifier];
  [v11 addValue:requestIdentifier forHTTPHeaderField:@"client-request-id"];

  v13 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"platform_sso_version" value:@"2.0"];
  v39[0] = v14;
  v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"urn:ietf:params:oauth:grant-type:jwt-bearer"];
  v39[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];

  loginConfiguration2 = [contextCopy loginConfiguration];
  customKeyExchangeRequestValues = [loginConfiguration2 customKeyExchangeRequestValues];

  if (customKeyExchangeRequestValues)
  {
    loginConfiguration3 = [contextCopy loginConfiguration];
    customKeyExchangeRequestValues2 = [loginConfiguration3 customKeyExchangeRequestValues];
    v21 = [v16 arrayByAddingObjectsFromArray:customKeyExchangeRequestValues2];

    v16 = v21;
  }

  [v13 setQueryItems:v16];
  percentEncodedQuery = [v13 percentEncodedQuery];
  v23 = [percentEncodedQuery dataUsingEncoding:4];
  v24 = [v23 mutableCopy];

  loginConfiguration4 = [contextCopy loginConfiguration];
  customRequestJWTParameterName = [loginConfiguration4 customRequestJWTParameterName];
  v27 = [customRequestJWTParameterName length];

  if (v27)
  {
    loginConfiguration5 = [contextCopy loginConfiguration];
    customRequestJWTParameterName2 = [loginConfiguration5 customRequestJWTParameterName];
  }

  else
  {
    customRequestJWTParameterName2 = @"assertion";
  }

  v30 = SecCFAllocatorZeroize();
  v31 = CFStringCreateWithFormat(v30, 0, @"&%@=%@", customRequestJWTParameterName2, jwtCopy);

  if (v31)
  {
    v32 = SecCFAllocatorZeroize();
    ExternalRepresentation = CFStringCreateExternalRepresentation(v32, v31, 0x8000100u, 0);
    if (ExternalRepresentation)
    {
      [v24 appendData:ExternalRepresentation];
      [v11 setHTTPBody:v24];
      v34 = v11;
    }

    else
    {
      v36 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
      v34 = 0;
    }
  }

  else
  {
    v35 = __61__POAuthenticationProcess_createLoginRequestWithContext_jwt___block_invoke();
    v34 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)performKeyExchangeRequestWithContext:(id)context request:(id)request completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  requestCopy = request;
  urlSession = [contextCopy urlSession];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke;
  v21 = &unk_279A3DF70;
  v23 = contextCopy;
  v24 = completionCopy;
  selfCopy = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = [urlSession dataTaskWithRequest:requestCopy completionHandler:&v18];

  v15 = MEMORY[0x277CCACA8];
  requestIdentifier = [v12 requestIdentifier];
  selfCopy = [v15 stringWithFormat:@"Key Exchange Request: %@", requestIdentifier, v18, v19, v20, v21, selfCopy];
  [v14 setTaskDescription:selfCopy];

  [v14 resume];
}

void __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_INFO, "Key Exchange response received", buf, 2u);
  }

  if (v9)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1108;
    v44[3] = &unk_279A3DE00;
    v45 = v9;
    v46 = v11;
    v12 = v11;
    v19 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1108(v44);
    v20 = [a1[4] completionQueue];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1112;
    v41[3] = &unk_279A3DF98;
    v43 = a1[6];
    v42 = a1[5];
    [v20 addOperationWithBlock:v41];

    v21 = v45;
LABEL_20:

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    if ([v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") < 300)
    {
      v24 = +[POCoreConfigurationUtil platformSSODevModeEnabled];
      v25 = PO_LOG_POAuthenticationProcess();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
      if (v24)
      {
        if (v26)
        {
          __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_cold_2();
        }
      }

      else if (v26)
      {
        __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_cold_1();
      }

      v15 = [a1[4] completionQueue];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1124;
      v30 = &unk_279A3E060;
      v13 = &v33;
      v33 = a1[6];
      v16 = &v31;
      v31 = a1[5];
      v17 = &v32;
      v32 = v7;
      v18 = &v27;
    }

    else
    {
      v36[1] = MEMORY[0x277D85DD0];
      v36[2] = 3221225472;
      v36[3] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2_1119;
      v36[4] = &unk_279A3DC48;
      v13 = &v37;
      v37 = v12;
      v14 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2_1119();
      v15 = [a1[4] completionQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1123;
      v34[3] = &unk_279A3DF98;
      v16 = v36;
      v36[0] = a1[6];
      v17 = &v35;
      v35 = a1[5];
      v18 = v34;
    }

    [v15 addOperationWithBlock:{v18, v27, v28, v29, v30}];

    v21 = *v13;
    goto LABEL_20;
  }

  v22 = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2();
  v23 = [a1[4] completionQueue];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1118;
  v38[3] = &unk_279A3DF98;
  v40 = a1[6];
  v39 = a1[5];
  [v23 addOperationWithBlock:v38];

  v12 = v40;
LABEL_21:
}

id __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_1108(uint64_t a1)
{
  v2 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"Failed to exchange."];
  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1(v2, a1);
  }

  return v2;
}

id __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1009 description:@"Not HTTP response for exchange."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_2_1119()
{
  v0 = [POError errorWithCode:-1009 description:@"Exchange request failed."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1();
  }

  return v0;
}

- (void)extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:(id)configuration tokens:(id)tokens returningGroups:(id *)groups identifier:(id *)identifier refreshToken:(id *)token
{
  configurationCopy = configuration;
  *groups = 0;
  *identifier = 0;
  v38 = 0;
  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:tokens options:16 error:&v38];
  v13 = v38;
  v14 = v13;
  if (v13)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke;
    v36[3] = &unk_279A3DC48;
    v37 = v13;
    v15 = __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke(v36);
  }

  else
  {
    v16 = [v12 objectForKeyedSubscript:@"id_token"];
    if (!v16)
    {
      goto LABEL_7;
    }

    v17 = v16;
    v18 = [v12 objectForKeyedSubscript:@"id_token"];
    v19 = 0x277CCA000uLL;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v21 = [POIDTokenJWT alloc];
      v22 = [v12 objectForKeyedSubscript:@"id_token"];
      v23 = [(POIDTokenJWT *)v21 initWithString:v22];

      groupResponseClaimName = [configurationCopy groupResponseClaimName];

      decodedBody = [(POIDTokenJWT *)v23 decodedBody];
      v26 = decodedBody;
      if (groupResponseClaimName)
      {
        allData = [decodedBody allData];
        groupResponseClaimName2 = [configurationCopy groupResponseClaimName];
        *groups = [allData objectForKeyedSubscript:groupResponseClaimName2];

        v19 = 0x277CCA000;
      }

      else
      {
        *groups = [decodedBody groups];
      }

      decodedBody2 = [(POIDTokenJWT *)v23 decodedBody];
      allData2 = [decodedBody2 allData];
      uniqueIdentifierClaimName = [configurationCopy uniqueIdentifierClaimName];
      *identifier = [allData2 objectForKeyedSubscript:uniqueIdentifierClaimName];

      if (token)
      {
        v33 = [v12 objectForKeyedSubscript:@"refresh_token"];
        v34 = *(v19 + 3240);
        objc_opt_class();
        v35 = objc_opt_isKindOfClass();

        if (v35)
        {
          *token = [v12 objectForKeyedSubscript:@"refresh_token"];
        }
      }
    }

    else
    {
LABEL_7:
      v29 = __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke_1131();
    }
  }
}

id __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Error deserializing tokens for groups."];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __134__POAuthenticationProcess_extractGroupsAndSubUsingAuthorizationWithLoginConfiguration_tokens_returningGroups_identifier_refreshToken___block_invoke_1131()
{
  v0 = [POError errorWithCode:-1008 description:@"Invalid or missing id_token."];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)extractNewUserValuesFromTokens:(id)tokens deviceConfiguration:(id)configuration loginUserName:(id)name returningName:(id *)returningName userName:(id *)userName error:(id *)error
{
  configurationCopy = configuration;
  nameCopy = name;
  tokensCopy = tokens;
  v16 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess extractNewUserValuesFromTokens:deviceConfiguration:loginUserName:returningName:userName:error:];
  }

  v64 = 0;
  v17 = [MEMORY[0x277CCAAA0] JSONObjectWithData:tokensCopy options:16 error:&v64];

  v18 = v64;
  v19 = v18;
  if (v18)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke;
    v62[3] = &unk_279A3DC48;
    v63 = v18;
    v20 = __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke(v62);
    if (error)
    {
      v20 = v20;
      *error = v20;
    }

    v21 = 0;
    v22 = v63;
  }

  else
  {
    returningNameCopy = returningName;
    v22 = [v17 objectForKeyedSubscript:@"id_token"];
    if (v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v57 = v22;
      v25 = [POIDTokenJWT alloc];
      v26 = [v17 objectForKeyedSubscript:@"id_token"];
      v27 = [(POIDTokenJWT *)v25 initWithString:v26];

      tokenToUserMapping = [configurationCopy tokenToUserMapping];
      v29 = [tokenToUserMapping objectForKeyedSubscript:@"AccountName"];

      v58 = v27;
      v56 = v29;
      if ([v29 isEqualToString:@"com.apple.PlatformSSO.AccountShortName"])
      {
        decodedBody = [nameCopy componentsSeparatedByString:@"@"];
        firstObject = [decodedBody firstObject];
      }

      else
      {
        decodedBody = [(POIDTokenJWT *)v27 decodedBody];
        allData = [decodedBody allData];
        v33 = [allData objectForKeyedSubscript:v29];
        v34 = v33;
        if (v33)
        {
          firstObject = v33;
        }

        else
        {
          decodedBody2 = [(POIDTokenJWT *)v27 decodedBody];
          allData2 = [decodedBody2 allData];
          firstObject = [allData2 objectForKeyedSubscript:@"preferred_username"];

          v27 = v58;
        }
      }

      if (!firstObject)
      {
        v36 = [nameCopy componentsSeparatedByString:@"@"];
        firstObject = [v36 firstObject];
      }

      if (userName)
      {
        v37 = firstObject;
        *userName = firstObject;
      }

      tokenToUserMapping2 = [configurationCopy tokenToUserMapping];
      v39 = [tokenToUserMapping2 objectForKeyedSubscript:@"FullName"];

      decodedBody3 = [(POIDTokenJWT *)v27 decodedBody];
      allData3 = [decodedBody3 allData];
      v42 = [allData3 objectForKeyedSubscript:v39];
      v43 = v42;
      if (v42)
      {
        v44 = v42;
      }

      else
      {
        [(POIDTokenJWT *)v27 decodedBody];
        v52 = v55 = configurationCopy;
        [v52 allData];
        v45 = v53 = v17;
        v46 = [v45 objectForKeyedSubscript:@"name"];
        v47 = nameCopy;
        v48 = v46;
        if (v46)
        {
          v49 = v46;
        }

        else
        {
          v49 = firstObject;
        }

        v44 = v49;

        nameCopy = v47;
        v17 = v53;

        configurationCopy = v55;
      }

      if (returningNameCopy)
      {
        v50 = v44;
        *returningNameCopy = v44;
      }

      v21 = 1;
      v22 = v57;
      v24 = v58;
    }

    else
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke_1140;
      v60[3] = &unk_279A3DC48;
      v61 = 0;
      v23 = __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke_1140(v60);
      if (error)
      {
        v23 = v23;
        *error = v23;
      }

      v21 = 0;
      v24 = v61;
    }
  }

  return v21;
}

id __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to parse sso tokens"];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __121__POAuthenticationProcess_extractNewUserValuesFromTokens_deviceConfiguration_loginUserName_returningName_userName_error___block_invoke_1140(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Missing id_token."];
  v2 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v10 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (v10)
  {
    v11 = PO_LOG_PODiagnostics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [POAuthenticationProcess URLSession:didReceiveChallenge:completionHandler:];
    }

    protectionSpace2 = [challengeCopy protectionSpace];
    serverTrust = [protectionSpace2 serverTrust];

    if (+[POCoreConfigurationUtil platformSSODevModeEnabled](POCoreConfigurationUtil, "platformSSODevModeEnabled") || !+[POPreferences requireRootCAInSystemTrustStore])
    {
      v16 = PO_LOG_POAuthenticationProcess();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [POAuthenticationProcess URLSession:didReceiveChallenge:completionHandler:];
      }
    }

    else
    {
      error = 0;
      if (!SecTrustEvaluateWithError(serverTrust, &error))
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke;
        v19[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v19[4] = error;
        v14 = __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke(v19);
        v17 = PO_LOG_PODiagnostics();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __24__POJWT_initWithString___block_invoke_cold_1();
        }

        handlerCopy[2](handlerCopy, 2, 0);
        goto LABEL_16;
      }

      if (!+[POCoreConfigurationUtil platformSSODevModeEnabled](POCoreConfigurationUtil, "platformSSODevModeEnabled") && +[POPreferences requireRootCAInSystemTrustStore])
      {
        v14 = SecTrustCopyCertificateChain(serverTrust);
        if ([v14 lastObject])
        {
          SecTrustStoreForDomain();
          if (SecTrustStoreContains())
          {
            v15 = [objc_alloc(MEMORY[0x277CCACF0]) initWithTrust:serverTrust];
            (handlerCopy)[2](handlerCopy, 0, v15);
LABEL_28:

            goto LABEL_16;
          }

          v15 = __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke_1164();
          v18 = PO_LOG_PODiagnostics();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }
        }

        else
        {
          v15 = __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke_1158();
          v18 = PO_LOG_PODiagnostics();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
LABEL_26:
            __24__POJWT_initWithString___block_invoke_cold_1();
          }
        }

        handlerCopy[2](handlerCopy, 2, 0);
        goto LABEL_28;
      }

      v16 = PO_LOG_POAuthenticationProcess();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [POAuthenticationProcess URLSession:didReceiveChallenge:completionHandler:];
      }
    }

    v14 = [objc_alloc(MEMORY[0x277CCACF0]) initWithTrust:serverTrust];
    (handlerCopy)[2](handlerCopy, 0, v14);
LABEL_16:

    goto LABEL_17;
  }

  handlerCopy[2](handlerCopy, 1, 0);
LABEL_17:
}

id __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"trustEvaluation failed"];

  v3 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke_1158()
{
  v0 = [POError errorWithCode:-1008 description:@"No root certificate"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __76__POAuthenticationProcess_URLSession_didReceiveChallenge_completionHandler___block_invoke_1164()
{
  v0 = [POError errorWithCode:-1008 description:@"Root certificate is not in the system trust"];
  v1 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess URLSession:requestCopy task:? willPerformHTTPRedirection:? newRequest:? completionHandler:?];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  connectivityCopy = connectivity;
  v5 = PO_LOG_PODiagnostics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POAuthenticationProcess URLSession:connectivityCopy taskIsWaitingForConnectivity:?];
  }
}

- (id)createTestMessagesForLoginConfiguration:(id)configuration certificate:(__SecCertificate *)certificate
{
  v74[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v7 = PO_LOG_POAuthenticationProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E8B1000, v7, OS_LOG_TYPE_INFO, "Creating sample messages", buf, 2u);
  }

  if (configurationCopy)
  {
    *buf = 0;
    v8 = *MEMORY[0x277CDC040];
    v9 = *MEMORY[0x277CDC018];
    v73[0] = *MEMORY[0x277CDC028];
    v73[1] = v9;
    v74[0] = v8;
    v74[1] = &unk_2870A9168;
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
    RandomKey = SecKeyCreateRandomKey(v65, buf);
    v11 = RandomKey;
    v12 = objc_alloc_init(PODeviceConfiguration);
    [(PODeviceConfiguration *)v12 setDeviceEncryptionKey:RandomKey];
    [(PODeviceConfiguration *)v12 setExtensionIdentifier:@"com.apple.testMessages"];
    v64 = v12;
    v13 = [(POAuthenticationProcess *)self createAuthenticationContextUsingLoginConfiguration:configurationCopy deviceConfiguration:v12 userName:@"foo@example.com"];
    [v13 setLoginType:1];
    [v13 setRefreshToken:@"This is the previous refresh token"];
    [v13 setDeviceConfiguration:v12];
    [v13 setLoginConfiguration:configurationCopy];
    [v13 setEmbeddedAssertionSigningKey:RandomKey];
    v63 = [(POAuthenticationProcess *)self createNonceRequestWithContext:v13];
    psso_DisplayRequest = [v63 psso_DisplayRequest];
    [v13 setServerNonce:@"This is a fake server nonce"];
    v62 = objc_alloc_init(POUserConfiguration);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(POUserConfiguration *)v62 setUniqueIdentifier:uUIDString];

    v16 = [@"password" dataUsingEncoding:4];
    v61 = [v16 mutableCopy];

    [v13 setPassword:v61];
    v60 = [(POAuthenticationProcess *)self createLoginJWTWithContext:v13 embeddedAssertion:0];
    deviceConfiguration = [v13 deviceConfiguration];
    [deviceConfiguration signingAlgorithm];
    v18 = v66 = configurationCopy;
    v19 = [POJWTSigning encodeAndSignJWT:v60 signingAlgorithm:v18 key:RandomKey certificate:certificate];

    v55 = v19;
    v69 = [(POAuthenticationProcess *)self createLoginRequestWithContext:v13 jwt:v19];
    [v13 setLoginType:2];
    v59 = [(POAuthenticationProcess *)self createEmbeddedAssertionWithContext:v13];
    v70 = [POJWTSigning encodeAndSignJWT:v59 algorithm:@"ES256" key:RandomKey certificate:0];
    v58 = [(POAuthenticationProcess *)self createLoginJWTWithContext:v13 embeddedAssertion:v70];
    v68 = [POJWTSigning encodeAndSignJWT:v58 algorithm:@"ES256" key:RandomKey certificate:0];
    v67 = [(POAuthenticationProcess *)self createLoginRequestWithContext:v13 jwt:v68];
    v57 = [(POAuthenticationProcess *)self createKeyRequestJWTWithContext:v13];
    deviceConfiguration2 = [v13 deviceConfiguration];
    signingAlgorithm = [deviceConfiguration2 signingAlgorithm];
    v53 = [POJWTSigning encodeAndSignJWT:v57 signingAlgorithm:signingAlgorithm key:RandomKey certificate:certificate];

    v54 = [(POAuthenticationProcess *)self createKeyRequestWithContext:v13 jwt:v53];
    v22 = [@"This is an encrypted context" dataUsingEncoding:4];
    v23 = [v22 base64EncodedStringWithOptions:0];
    [v13 setEncryptionContext:v23];

    v24 = [@"secret tokens" dataUsingEncoding:4];
    v56 = [(POAuthenticationProcess *)self createKeyExchangeRequestJWTWithContext:v13 otherPartyPublicKey:v24];

    deviceConfiguration3 = [v13 deviceConfiguration];
    signingAlgorithm2 = [deviceConfiguration3 signingAlgorithm];
    v27 = [POJWTSigning encodeAndSignJWT:v56 signingAlgorithm:signingAlgorithm2 key:RandomKey certificate:certificate];

    v52 = [(POAuthenticationProcess *)self createKeyExchangeRequestWithContext:v13 jwt:v27];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Platform SSO Test Messages\n\n"];
    v29 = [POSecKeyHelper printKey:RandomKey];
    v30 = [v28 stringByAppendingFormat:@"----------\nKey Generated for Signing All Test Messages: \n%@\n\n", v29];

    v31 = [v30 stringByAppendingFormat:@"----------\nNonce Request: \n%@\n\n", psso_DisplayRequest];

    v51 = [[POLoginTokenJWT alloc] initWithString:v19];
    v32 = [v31 stringByAppendingFormat:@"----------\nPassword Login JWT: \n%@\n\n", v51];

    psso_DisplayRequest2 = [v69 psso_DisplayRequest];
    v34 = [v32 stringByAppendingFormat:@"----------\nPassword Login Request: \n%@\n\n", psso_DisplayRequest2];

    v50 = [[POAssertionTokenJWT alloc] initWithString:v70];
    v35 = [v34 stringByAppendingFormat:@"----------\nEmbedded Assertion: \n%@\n\n", v50];

    v49 = [[POLoginTokenJWT alloc] initWithString:v68];
    v36 = [v35 stringByAppendingFormat:@"----------\nEmbedded Login JWT: \n%@\n\n", v49];

    psso_DisplayRequest3 = [v67 psso_DisplayRequest];
    v38 = [v36 stringByAppendingFormat:@"----------\nEmbedded Login Request: \n%@\n\n", psso_DisplayRequest3];

    v39 = [[POKeyRequestJWT alloc] initWithString:v53];
    v40 = [v38 stringByAppendingFormat:@"----------\nKey Request JWT: \n%@\n\n", v39];

    psso_DisplayRequest4 = [v54 psso_DisplayRequest];
    v42 = [v40 stringByAppendingFormat:@"----------\nKey Request: \n%@\n\n", psso_DisplayRequest4];

    v43 = [[POKeyExchangeRequestJWT alloc] initWithString:v27];
    v44 = [v42 stringByAppendingFormat:@"----------\nKey Exchange Request JWT: \n%@\n\n", v43];

    psso_DisplayRequest5 = [v52 psso_DisplayRequest];
    v46 = [v44 stringByAppendingFormat:@"----------\nKey Exchange Request: \n%@\n\n", psso_DisplayRequest5];

    configurationCopy = v66;
  }

  else
  {
    v46 = @"No login configuration";
  }

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (void)performPasswordLoginUsingContext:(void *)a1 completion:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 loginConfiguration];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "Login Configuration: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performPasswordLoginUsingContext:(void *)a1 completion:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 deviceConfiguration];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "Device Configuration: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)createPreAuthenticationRequestWithContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "Preauthentication response received: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_231_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_244_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  [*(v0 + 32) statusCode];
  v1 = [OUTLINED_FUNCTION_7() numberWithInteger:?];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)createWSTrustMexRequestWithContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __82__POAuthenticationProcess_performWSTrustMexRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "WSTrust Mex response received: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __93__POAuthenticationProcess_performWSTrustAuthenticationRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "WSTrust login response received: %{private}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __104__POAuthenticationProcess_validateWSTrustAuthenticationResponseWithContext_response_returningAssertion___block_invoke_361_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(v0 + 32)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __71__POAuthenticationProcess_performLoginWithContext_loginJWT_completion___block_invoke_392_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createNonceRequestWithContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__POAuthenticationProcess__performNonceRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "server nonce response received: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__POAuthenticationProcess_performLoginRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "login response received: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)retrieveSigningKeyWithContext:keyId:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__POAuthenticationProcess_retrieveSigningKeyWithContext_keyId_completion___block_invoke_670_cold_1()
{
  OUTLINED_FUNCTION_8();
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "jwks response received: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)validateIdToken:context:key:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__POAuthenticationProcess_validateIdToken_context_key___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) decodedHeader];
  v2 = [v1 alg];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v3, v4, "%{public}@, %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __68__POAuthenticationProcess_performKeyRequestUsingContext_completion___block_invoke_941_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __100__POAuthenticationProcess_performKeyExchangeRequestUsingContext_otherPartyPublicKeyData_completion___block_invoke_1012_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__POAuthenticationProcess_performKeyRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "Key response received: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__POAuthenticationProcess_performKeyExchangeRequestWithContext_request_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = OUTLINED_FUNCTION_14(v0, v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v3, v4, "Key Exchange response received: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)extractNewUserValuesFromTokens:deviceConfiguration:loginUserName:returningName:userName:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:didReceiveChallenge:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)URLSession:didReceiveChallenge:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)URLSession:(void *)a1 task:willPerformHTTPRedirection:newRequest:completionHandler:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 URL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "HTTP Redirect received to %{public}@, canceling", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(void *)a1 taskIsWaitingForConnectivity:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 taskDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "%{public}@, is waiting for connectivity", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end
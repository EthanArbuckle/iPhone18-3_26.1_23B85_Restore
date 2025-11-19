@interface POLoginConfiguration
+ (POLoginConfiguration)configurationWithOpenIdConfigurationURL:(id)a3 clientID:(id)a4 issuer:(id)a5 completion:(id)a6;
+ (POLoginConfiguration)configurationWithOpenIdConfigurationURL:(id)a3 identityProviderURL:(id)a4 clientId:(id)a5 issuer:(id)a6 completion:(id)a7;
- (BOOL)setCustomAssertionRequestBodyClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomAssertionRequestHeaderClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomKeyExchangeRequestBodyClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomKeyExchangeRequestHeaderClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomKeyRequestBodyClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomKeyRequestHeaderClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomLoginRequestBodyClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomLoginRequestHeaderClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomRefreshRequestBodyClaims:(id)a3 returningError:(id *)a4;
- (BOOL)setCustomRefreshRequestHeaderClaims:(id)a3 returningError:(id *)a4;
- (NSString)uniqueIdentifierClaimName;
- (NSURL)keyEndpointURL;
- (NSURL)nonceEndpointURL;
- (POLoginConfiguration)initWithClientID:(id)a3 issuer:(id)a4 tokenEndpointURL:(id)a5 jwksEndpointURL:(id)a6 audience:(id)a7;
- (POLoginConfiguration)initWithCoder:(id)a3;
- (POLoginConfiguration)initWithData:(id)a3;
- (__SecKey)hpkeAuthPublicKey;
- (__SecKey)loginRequestEncryptionPublicKey;
- (id)_initWithClientId:(id)a3 issuer:(id)a4 tokenEndpointURL:(id)a5 jwksEndpointURL:(id)a6 audience:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentationForDisplay:(BOOL)a3;
- (id)description;
- (id)mergedConfigurationWithUserLoginConfiguration:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setHpkeAuthPublicKey:(__SecKey *)a3;
- (void)setLoginRequestEncryptionPublicKey:(__SecKey *)a3;
@end

@implementation POLoginConfiguration

- (POLoginConfiguration)initWithClientID:(id)a3 issuer:(id)a4 tokenEndpointURL:(id)a5 jwksEndpointURL:(id)a6 audience:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (![v12 length])
  {
    v18 = __90__POLoginConfiguration_initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audience___block_invoke();
LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  if (![v13 length])
  {
    v19 = __90__POLoginConfiguration_initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audience___block_invoke_55();
    goto LABEL_6;
  }

  self = [(POLoginConfiguration *)self _initWithClientId:v12 issuer:v13 tokenEndpointURL:v14 jwksEndpointURL:v15 audience:v16];
  v17 = self;
LABEL_7:

  return v17;
}

id __90__POLoginConfiguration_initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audience___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Client ID is missing"];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __90__POLoginConfiguration_initWithClientID_issuer_tokenEndpointURL_jwksEndpointURL_audience___block_invoke_55()
{
  v0 = [POError errorWithCode:-1008 description:@"Issuer is missing"];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)_initWithClientId:(id)a3 issuer:(id)a4 tokenEndpointURL:(id)a5 jwksEndpointURL:(id)a6 audience:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  obj = a7;
  v17 = a7;
  v18 = 0;
  v26 = v13;
  if (v13 && v14 && v15 && v16)
  {
    v19 = v17;
    v27.receiver = self;
    v27.super_class = POLoginConfiguration;
    v20 = [(POLoginConfiguration *)&v27 init];
    v21 = v20;
    if (v20)
    {
      objc_storeStrong(&v20->_clientID, a3);
      objc_storeStrong(&v21->_issuer, a4);
      objc_storeStrong(&v21->_tokenEndpointURL, a5);
      objc_storeStrong(&v21->_jwksEndpointURL, a6);
      objc_storeStrong(&v21->_audience, obj);
      additionalScopes = v21->_additionalScopes;
      v21->_additionalScopes = @"urn:apple:platformsso";

      uniqueIdentifierClaimName = v21->_uniqueIdentifierClaimName;
      v21->_uniqueIdentifierClaimName = @"sub";
    }

    self = v21;
    v18 = self;
    v17 = v19;
  }

  return v18;
}

+ (POLoginConfiguration)configurationWithOpenIdConfigurationURL:(id)a3 clientID:(id)a4 issuer:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [v13 URLByAppendingPathComponent:@"/.well-known/openid-configuration"];
  [a1 configurationWithOpenIdConfigurationURL:v15 identityProviderURL:v13 clientId:v12 issuer:v11 completion:v10];

  return result;
}

+ (POLoginConfiguration)configurationWithOpenIdConfigurationURL:(id)a3 identityProviderURL:(id)a4 clientId:(id)a5 issuer:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = objc_alloc_init(POSessionDelegate);
  v17 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v16 delegate:v33[5] delegateQueue:0];
  v18 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v11 cachePolicy:4 timeoutInterval:60.0];
  [v18 setHTTPMethod:@"GET"];
  [v18 addValue:@"application/json" forHTTPHeaderField:@"Accept"];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke;
  v27 = &unk_279A3E798;
  v31 = &v32;
  v19 = v15;
  v30 = v19;
  v20 = v13;
  v28 = v20;
  v21 = v14;
  v29 = v21;
  v22 = [v17 dataTaskWithRequest:v18 completionHandler:&v24];
  [v22 resume];

  _Block_object_dispose(&v32, 8);
  return result;
}

void __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  if (v9)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_2;
    v41[3] = &unk_279A3DC48;
    v42 = v9;
    v12 = __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_2(v41);
    (*(a1[6] + 16))();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      if ([v13 statusCode] >= 200 && objc_msgSend(v13, "statusCode") < 300)
      {
        v16 = PO_LOG_POLoginConfiguration();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_cold_1(v7);
        }

        v38 = 0;
        v17 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:16 error:&v38];
        v18 = v38;
        v15 = v18;
        if (!v17 || v18)
        {
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_101;
          v36[3] = &unk_279A3DC48;
          v37 = v18;
          v27 = __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_101(v36);
          (*(a1[6] + 16))();

          v28 = v37;
        }

        else
        {
          v19 = [v17 objectForKeyedSubscript:@"token_endpoint"];
          v20 = [v17 objectForKeyedSubscript:@"jwks_uri"];
          v35 = v17;
          v21 = [v17 objectForKeyedSubscript:@"issuer"];
          v22 = [POLoginConfiguration alloc];
          v23 = a1[5];
          v31 = a1[4];
          v32 = v22;
          v33 = v21;
          if (!v23)
          {
            v23 = v21;
          }

          v34 = v19;
          v24 = [MEMORY[0x277CBEBC0] URLWithString:{v19, v23}];
          v25 = [MEMORY[0x277CBEBC0] URLWithString:v20];
          v26 = [(POLoginConfiguration *)v32 initWithClientID:v31 issuer:v30 tokenEndpointURL:v24 jwksEndpointURL:v25 audience:0];

          if (v26)
          {
            (*(a1[6] + 16))();
          }

          else
          {
            v29 = __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_116();
            (*(a1[6] + 16))();
          }

          v28 = v34;
          v17 = v35;
        }
      }

      else
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_94;
        v39[3] = &unk_279A3DC48;
        v40 = v13;
        v14 = __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_94(v39);
        (*(a1[6] + 16))();

        v15 = v40;
      }
    }

    else
    {
      v13 = __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_88();
      (*(a1[6] + 16))();
    }
  }
}

id __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_2(uint64_t a1)
{
  v1 = [POError errorWithCode:-1009 underlyingError:*(a1 + 32) description:@"failed to retrieve openid-configuration."];
  v2 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_88()
{
  v0 = [POError errorWithCode:-1009 description:@"Not a HTTP response when retrieving openid-configuration."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_94(uint64_t a1)
{
  v2 = [POError errorWithCode:-1009 description:@"Not a HTTP success response when retrieving openid-configuration."];
  v3 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_94_cold_1(v2, a1, v3);
  }

  return v2;
}

id __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_101(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Failed to parse openid-configuration response."];
  v2 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

id __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_116()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to create login configuration when retrieving openid-configuration."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (NSURL)nonceEndpointURL
{
  nonceEndpointURL = self->_nonceEndpointURL;
  if (!nonceEndpointURL)
  {
    nonceEndpointURL = self->_tokenEndpointURL;
  }

  return nonceEndpointURL;
}

- (BOOL)setCustomAssertionRequestHeaderClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomAssertionRequestHeaderClaims:v8];
  }

  else
  {
    v9 = __77__POLoginConfiguration_setCustomAssertionRequestHeaderClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __77__POLoginConfiguration_setCustomAssertionRequestHeaderClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Assertion request header claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomAssertionRequestBodyClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomAssertionRequestBodyClaims:v8];
  }

  else
  {
    v9 = __75__POLoginConfiguration_setCustomAssertionRequestBodyClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __75__POLoginConfiguration_setCustomAssertionRequestBodyClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Assertion request body claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomLoginRequestHeaderClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomLoginRequestHeaderClaims:v8];
  }

  else
  {
    v9 = __73__POLoginConfiguration_setCustomLoginRequestHeaderClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __73__POLoginConfiguration_setCustomLoginRequestHeaderClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Login request header claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomLoginRequestBodyClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomLoginRequestBodyClaims:v8];
  }

  else
  {
    v9 = __71__POLoginConfiguration_setCustomLoginRequestBodyClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __71__POLoginConfiguration_setCustomLoginRequestBodyClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Login request body claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (NSString)uniqueIdentifierClaimName
{
  if ([(NSString *)self->_uniqueIdentifierClaimName length])
  {
    uniqueIdentifierClaimName = self->_uniqueIdentifierClaimName;
  }

  else
  {
    uniqueIdentifierClaimName = @"sub";
  }

  return uniqueIdentifierClaimName;
}

- (BOOL)setCustomRefreshRequestHeaderClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomRefreshRequestHeaderClaims:v8];
  }

  else
  {
    v9 = __75__POLoginConfiguration_setCustomRefreshRequestHeaderClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __75__POLoginConfiguration_setCustomRefreshRequestHeaderClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Refresh request header claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomRefreshRequestBodyClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomRefreshRequestBodyClaims:v8];
  }

  else
  {
    v9 = __73__POLoginConfiguration_setCustomRefreshRequestBodyClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __73__POLoginConfiguration_setCustomRefreshRequestBodyClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Refresh request body header claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (__SecKey)loginRequestEncryptionPublicKey
{
  if (self->__loginRequestEncryptionPublicKeyData)
  {
    return [POSecKeyHelper ephemeralPublicKeyForData:?];
  }

  else
  {
    return 0;
  }
}

- (void)setLoginRequestEncryptionPublicKey:(__SecKey *)a3
{
  if (a3)
  {
    v4 = [POSecKeyHelper dataForEphemeralKey:?];
  }

  else
  {
    v4 = 0;
  }

  loginRequestEncryptionPublicKeyData = self->__loginRequestEncryptionPublicKeyData;
  self->__loginRequestEncryptionPublicKeyData = v4;

  MEMORY[0x2821F96F8](v4, loginRequestEncryptionPublicKeyData);
}

- (NSURL)keyEndpointURL
{
  keyEndpointURL = self->_keyEndpointURL;
  if (!keyEndpointURL)
  {
    keyEndpointURL = self->_tokenEndpointURL;
  }

  return keyEndpointURL;
}

- (BOOL)setCustomKeyExchangeRequestHeaderClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomKeyExchangeRequestHeaderClaims:v8];
  }

  else
  {
    v9 = __79__POLoginConfiguration_setCustomKeyExchangeRequestHeaderClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __79__POLoginConfiguration_setCustomKeyExchangeRequestHeaderClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Key exchange request header claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomKeyExchangeRequestBodyClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomKeyExchangeRequestBodyClaims:v8];
  }

  else
  {
    v9 = __77__POLoginConfiguration_setCustomKeyExchangeRequestBodyClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __77__POLoginConfiguration_setCustomKeyExchangeRequestBodyClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Key exchange request body claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomKeyRequestHeaderClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomKeyRequestHeaderClaims:v8];
  }

  else
  {
    v9 = __71__POLoginConfiguration_setCustomKeyRequestHeaderClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __71__POLoginConfiguration_setCustomKeyRequestHeaderClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Key request header claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)setCustomKeyRequestBodyClaims:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAA0] isValidJSONObject:v6];
  if (v7)
  {
    v8 = [v6 copy];
    [(POLoginConfiguration *)self setCustomKeyRequestBodyClaims:v8];
  }

  else
  {
    v9 = __69__POLoginConfiguration_setCustomKeyRequestBodyClaims_returningError___block_invoke();
    v8 = v9;
    if (a4)
    {
      v10 = v9;
      *a4 = v8;
    }
  }

  return v7;
}

id __69__POLoginConfiguration_setCustomKeyRequestBodyClaims_returningError___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Key request body claims are not valid JSON."];
  v1 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (__SecKey)hpkeAuthPublicKey
{
  result = self->__hpkeAuthPublicKeyData;
  if (result)
  {
    v4 = [(__SecKey *)result length];
    hpkeAuthPublicKeyData = self->__hpkeAuthPublicKeyData;
    if (v4 > 0x40)
    {

      return [POSecKeyHelper ephemeralPublicKeyForData:hpkeAuthPublicKeyData];
    }

    else
    {

      return [POSecKeyHelper ephemeralX25529PublicKeyForData:hpkeAuthPublicKeyData];
    }
  }

  return result;
}

- (void)setHpkeAuthPublicKey:(__SecKey *)a3
{
  if (a3)
  {
    v4 = [POSecKeyHelper dataForEphemeralKey:?];
  }

  else
  {
    v4 = 0;
  }

  hpkeAuthPublicKeyData = self->__hpkeAuthPublicKeyData;
  self->__hpkeAuthPublicKeyData = v4;

  MEMORY[0x2821F96F8](v4, hpkeAuthPublicKeyData);
}

- (id)dataRepresentationForDisplay:(BOOL)a3
{
  v188 = a3;
  v237 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  clientID = self->_clientID;
  v6 = NSStringFromSelector(sel_clientID);
  [v4 setObject:clientID forKeyedSubscript:v6];

  issuer = self->_issuer;
  v8 = NSStringFromSelector(sel_issuer);
  [v4 setObject:issuer forKeyedSubscript:v8];

  audience = self->_audience;
  v10 = NSStringFromSelector(sel_audience);
  [v4 setObject:audience forKeyedSubscript:v10];

  v11 = [(NSURL *)self->_tokenEndpointURL absoluteString];
  v12 = NSStringFromSelector(sel_tokenEndpointURL);
  [v4 setObject:v11 forKeyedSubscript:v12];

  v13 = [(NSURL *)self->_jwksEndpointURL absoluteString];
  v14 = NSStringFromSelector(sel_jwksEndpointURL);
  [v4 setObject:v13 forKeyedSubscript:v14];

  accountDisplayName = self->_accountDisplayName;
  v16 = NSStringFromSelector(sel_accountDisplayName);
  [v4 setObject:accountDisplayName forKeyedSubscript:v16];

  invalidCredentialPredicate = self->_invalidCredentialPredicate;
  v18 = NSStringFromSelector(sel_invalidCredentialPredicate);
  v190 = v4;
  [v4 setObject:invalidCredentialPredicate forKeyedSubscript:v18];

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v20 = self->_jwksTrustedRootCertificates;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v225 objects:v236 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v226;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v226 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [POSecKeyHelper dataForCertificate:*(*(&v225 + 1) + 8 * i)];
        v26 = [v25 psso_base64URLEncodedString];
        [v19 addObject:v26];
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v225 objects:v236 count:16];
    }

    while (v22);
  }

  if ([v19 count])
  {
    v27 = NSStringFromSelector(sel_jwksTrustedRootCertificates);
    [v190 setObject:v19 forKeyedSubscript:v27];
  }

  deviceContext = self->_deviceContext;
  if (v188)
  {
    [(NSData *)deviceContext psso_sha256HashString];
  }

  else
  {
    [(NSData *)deviceContext psso_base64URLEncodedString];
  }
  v29 = ;
  v30 = NSStringFromSelector(sel_deviceContext);
  [v190 setObject:v29 forKeyedSubscript:v30];

  if (v188)
  {
    [POConstantCoreUtil stringForSEPBiometricPolicy:self->_userSEPKeyBiometricPolicy];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_userSEPKeyBiometricPolicy];
  }
  v31 = ;
  v32 = NSStringFromSelector(sel_userSEPKeyBiometricPolicy);
  [v190 setObject:v31 forKeyedSubscript:v32];

  v33 = [(NSURL *)self->_nonceEndpointURL absoluteString];
  v34 = NSStringFromSelector(sel_nonceEndpointURL);
  [v190 setObject:v33 forKeyedSubscript:v34];

  nonceResponseKeypath = self->_nonceResponseKeypath;
  v36 = NSStringFromSelector(sel_nonceResponseKeypath);
  [v190 setObject:nonceResponseKeypath forKeyedSubscript:v36];

  serverNonceClaimName = self->_serverNonceClaimName;
  v38 = NSStringFromSelector(sel_serverNonceClaimName);
  [v190 setObject:serverNonceClaimName forKeyedSubscript:v38];

  serverNonceExpirationTime = self->_serverNonceExpirationTime;
  v40 = NSStringFromSelector(sel_serverNonceExpirationTime);
  [v190 setObject:serverNonceExpirationTime forKeyedSubscript:v40];

  v193 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v41 = self->_customNonceRequestValues;
  v42 = [(NSArray *)v41 countByEnumeratingWithState:&v221 objects:v235 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v222;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v222 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v221 + 1) + 8 * j);
        v47 = [v46 value];
        v48 = [v46 name];
        [v193 setObject:v47 forKeyedSubscript:v48];
      }

      v43 = [(NSArray *)v41 countByEnumeratingWithState:&v221 objects:v235 count:16];
    }

    while (v43);
  }

  if ([v193 count])
  {
    v49 = NSStringFromSelector(sel_customNonceRequestValues);
    [v190 setObject:v193 forKeyedSubscript:v49];
  }

  customAssertionRequestHeaderClaims = self->_customAssertionRequestHeaderClaims;
  v51 = NSStringFromSelector(sel_customAssertionRequestHeaderClaims);
  [v190 setObject:customAssertionRequestHeaderClaims forKeyedSubscript:v51];

  customAssertionRequestBodyClaims = self->_customAssertionRequestBodyClaims;
  v53 = NSStringFromSelector(sel_customAssertionRequestBodyClaims);
  [v190 setObject:customAssertionRequestBodyClaims forKeyedSubscript:v53];

  additionalScopes = self->_additionalScopes;
  v55 = NSStringFromSelector(sel_additionalScopes);
  [v190 setObject:additionalScopes forKeyedSubscript:v55];

  additionalAuthorizationScopes = self->_additionalAuthorizationScopes;
  v57 = NSStringFromSelector(sel_additionalAuthorizationScopes);
  [v190 setObject:additionalAuthorizationScopes forKeyedSubscript:v57];

  v58 = [MEMORY[0x277CCABB0] numberWithBool:self->_includePreviousRefreshTokenInLoginRequest];
  v59 = NSStringFromSelector(sel_includePreviousRefreshTokenInLoginRequest);
  [v190 setObject:v58 forKeyedSubscript:v59];

  previousRefreshTokenClaimName = self->_previousRefreshTokenClaimName;
  v61 = NSStringFromSelector(sel_previousRefreshTokenClaimName);
  [v190 setObject:previousRefreshTokenClaimName forKeyedSubscript:v61];

  customRequestJWTParameterName = self->_customRequestJWTParameterName;
  v63 = NSStringFromSelector(sel_customRequestJWTParameterName);
  [v190 setObject:customRequestJWTParameterName forKeyedSubscript:v63];

  v192 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v64 = self->_customLoginRequestValues;
  v65 = [(NSArray *)v64 countByEnumeratingWithState:&v217 objects:v234 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v218;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v218 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v217 + 1) + 8 * k);
        v70 = [v69 value];
        v71 = [v69 name];
        [v192 setObject:v70 forKeyedSubscript:v71];
      }

      v66 = [(NSArray *)v64 countByEnumeratingWithState:&v217 objects:v234 count:16];
    }

    while (v66);
  }

  v187 = v19;

  if ([v192 count])
  {
    v72 = NSStringFromSelector(sel_customLoginRequestValues);
    [v190 setObject:v192 forKeyedSubscript:v72];
  }

  customLoginRequestHeaderClaims = self->_customLoginRequestHeaderClaims;
  v74 = NSStringFromSelector(sel_customLoginRequestHeaderClaims);
  [v190 setObject:customLoginRequestHeaderClaims forKeyedSubscript:v74];

  customLoginRequestBodyClaims = self->_customLoginRequestBodyClaims;
  v76 = NSStringFromSelector(sel_customLoginRequestBodyClaims);
  [v190 setObject:customLoginRequestBodyClaims forKeyedSubscript:v76];

  uniqueIdentifierClaimName = self->_uniqueIdentifierClaimName;
  v78 = NSStringFromSelector(sel_uniqueIdentifierClaimName);
  [v190 setObject:uniqueIdentifierClaimName forKeyedSubscript:v78];

  groupRequestClaimName = self->_groupRequestClaimName;
  v80 = NSStringFromSelector(sel_groupRequestClaimName);
  [v190 setObject:groupRequestClaimName forKeyedSubscript:v80];

  groupResponseClaimName = self->_groupResponseClaimName;
  v82 = NSStringFromSelector(sel_groupResponseClaimName);
  [v190 setObject:groupResponseClaimName forKeyedSubscript:v82];

  v83 = [(NSURL *)self->_refreshEndpointURL absoluteString];
  v84 = NSStringFromSelector(sel_refreshEndpointURL);
  [v190 setObject:v83 forKeyedSubscript:v84];

  v191 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v85 = self->_customRefreshRequestValues;
  v86 = [(NSArray *)v85 countByEnumeratingWithState:&v213 objects:v233 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v214;
    do
    {
      for (m = 0; m != v87; ++m)
      {
        if (*v214 != v88)
        {
          objc_enumerationMutation(v85);
        }

        v90 = *(*(&v213 + 1) + 8 * m);
        v91 = [v90 value];
        v92 = [v90 name];
        [v191 setObject:v91 forKeyedSubscript:v92];
      }

      v87 = [(NSArray *)v85 countByEnumeratingWithState:&v213 objects:v233 count:16];
    }

    while (v87);
  }

  if ([v191 count])
  {
    v93 = NSStringFromSelector(sel_customRefreshRequestValues);
    [v190 setObject:v191 forKeyedSubscript:v93];
  }

  customRefreshRequestHeaderClaims = self->_customRefreshRequestHeaderClaims;
  v95 = NSStringFromSelector(sel_customRefreshRequestHeaderClaims);
  [v190 setObject:customRefreshRequestHeaderClaims forKeyedSubscript:v95];

  customRefreshRequestBodyClaims = self->_customRefreshRequestBodyClaims;
  v97 = NSStringFromSelector(sel_customRefreshRequestBodyClaims);
  [v190 setObject:customRefreshRequestBodyClaims forKeyedSubscript:v97];

  v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v99 = self->_kerberosTicketMappings;
  v100 = [(NSArray *)v99 countByEnumeratingWithState:&v209 objects:v232 count:16];
  if (v100)
  {
    v101 = v100;
    v102 = *v210;
    do
    {
      for (n = 0; n != v101; ++n)
      {
        if (*v210 != v102)
        {
          objc_enumerationMutation(v99);
        }

        v104 = [*(*(&v209 + 1) + 8 * n) dictionaryRepresentation];
        [v98 addObject:v104];
      }

      v101 = [(NSArray *)v99 countByEnumeratingWithState:&v209 objects:v232 count:16];
    }

    while (v101);
  }

  if ([v98 count])
  {
    v105 = NSStringFromSelector(sel_kerberosTicketMappings);
    [v190 setObject:v98 forKeyedSubscript:v105];
  }

  v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_federationType];
  v107 = NSStringFromSelector(sel_federationType);
  [v190 setObject:v106 forKeyedSubscript:v107];

  federationRequestURN = self->_federationRequestURN;
  v109 = NSStringFromSelector(sel_federationRequestURN);
  [v190 setObject:federationRequestURN forKeyedSubscript:v109];

  v110 = [(NSURL *)self->_federationMexURL absoluteString];
  v111 = NSStringFromSelector(sel_federationMexURL);
  [v190 setObject:v110 forKeyedSubscript:v111];

  v112 = [(NSURL *)self->_federationUserPreauthenticationURL absoluteString];
  v113 = NSStringFromSelector(sel_federationUserPreauthenticationURL);
  [v190 setObject:v112 forKeyedSubscript:v113];

  federationMexURLKeypath = self->_federationMexURLKeypath;
  v115 = NSStringFromSelector(sel_federationMexURLKeypath);
  [v190 setObject:federationMexURLKeypath forKeyedSubscript:v115];

  federationPredicate = self->_federationPredicate;
  v117 = NSStringFromSelector(sel_federationPredicate);
  [v190 setObject:federationPredicate forKeyedSubscript:v117];

  v118 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v189 = self;
  v119 = self->_customFederationUserPreauthenticationRequestValues;
  v120 = [(NSArray *)v119 countByEnumeratingWithState:&v205 objects:v231 count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v206;
    do
    {
      for (ii = 0; ii != v121; ++ii)
      {
        if (*v206 != v122)
        {
          objc_enumerationMutation(v119);
        }

        v124 = *(*(&v205 + 1) + 8 * ii);
        v125 = [v124 value];
        v126 = [v124 name];
        [v118 setObject:v125 forKeyedSubscript:v126];
      }

      v121 = [(NSArray *)v119 countByEnumeratingWithState:&v205 objects:v231 count:16];
    }

    while (v121);
  }

  if ([v118 count])
  {
    v127 = NSStringFromSelector(sel_customFederationUserPreauthenticationRequestValues);
    [v190 setObject:v118 forKeyedSubscript:v127];
  }

  loginRequestEncryptionPublicKeyData = v189->__loginRequestEncryptionPublicKeyData;
  if (v188)
  {
    [(NSData *)loginRequestEncryptionPublicKeyData psso_sha256HashString];
  }

  else
  {
    [(NSData *)loginRequestEncryptionPublicKeyData psso_base64URLEncodedString];
  }
  v129 = ;
  v130 = NSStringFromSelector(sel_loginRequestEncryptionPublicKey);
  [v190 setObject:v129 forKeyedSubscript:v130];

  [(POLoginConfiguration *)v189 loginRequestEncryptionAlgorithm];
  if (v188)
    v129 = {;
    [POConstantCoreUtil stringForEncryptionAlgorithm:v129];
  }
  v131 = ;
  v132 = NSStringFromSelector(sel_loginRequestEncryptionAlgorithm);
  [v190 setObject:v131 forKeyedSubscript:v132];

  if (v188)
  {

    [(NSData *)v189->_loginRequestHpkePsk psso_sha256HashString];
  }

  else
  {
    [(NSData *)v189->_loginRequestHpkePsk psso_base64URLEncodedString];
  }
  v133 = ;
  v134 = NSStringFromSelector(sel_loginRequestHpkePsk);
  [v190 setObject:v133 forKeyedSubscript:v134];

  v135 = [(NSData *)v189->_loginRequestHpkePsk_id psso_base64URLEncodedString];
  v136 = NSStringFromSelector(sel_loginRequestHpkePsk_id);
  [v190 setObject:v135 forKeyedSubscript:v136];

  v137 = [(NSData *)v189->_loginRequestEncryptionAPVPrefix psso_base64URLEncodedString];
  v138 = NSStringFromSelector(sel_loginRequestEncryptionAPVPrefix);
  [v190 setObject:v137 forKeyedSubscript:v138];

  v139 = [(NSURL *)v189->_keyEndpointURL absoluteString];
  v140 = NSStringFromSelector(sel_keyEndpointURL);
  [v190 setObject:v139 forKeyedSubscript:v140];

  v141 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v142 = v189->_customKeyExchangeRequestValues;
  v143 = [(NSArray *)v142 countByEnumeratingWithState:&v201 objects:v230 count:16];
  if (v143)
  {
    v144 = v143;
    v145 = *v202;
    do
    {
      for (jj = 0; jj != v144; ++jj)
      {
        if (*v202 != v145)
        {
          objc_enumerationMutation(v142);
        }

        v147 = *(*(&v201 + 1) + 8 * jj);
        v148 = [v147 value];
        v149 = [v147 name];
        [v141 setObject:v148 forKeyedSubscript:v149];
      }

      v144 = [(NSArray *)v142 countByEnumeratingWithState:&v201 objects:v230 count:16];
    }

    while (v144);
  }

  if ([v141 count])
  {
    v150 = NSStringFromSelector(sel_customKeyExchangeRequestValues);
    [v190 setObject:v141 forKeyedSubscript:v150];
  }

  customKeyExchangeRequestHeaderClaims = v189->_customKeyExchangeRequestHeaderClaims;
  v152 = NSStringFromSelector(sel_customKeyExchangeRequestHeaderClaims);
  [v190 setObject:customKeyExchangeRequestHeaderClaims forKeyedSubscript:v152];

  customKeyExchangeRequestBodyClaims = v189->_customKeyExchangeRequestBodyClaims;
  v154 = NSStringFromSelector(sel_customKeyExchangeRequestBodyClaims);
  [v190 setObject:customKeyExchangeRequestBodyClaims forKeyedSubscript:v154];

  v155 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v156 = v189->_customKeyRequestValues;
  v157 = [(NSArray *)v156 countByEnumeratingWithState:&v197 objects:v229 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v198;
    do
    {
      for (kk = 0; kk != v158; ++kk)
      {
        if (*v198 != v159)
        {
          objc_enumerationMutation(v156);
        }

        v161 = *(*(&v197 + 1) + 8 * kk);
        v162 = [v161 value];
        v163 = [v161 name];
        [v155 setObject:v162 forKeyedSubscript:v163];
      }

      v158 = [(NSArray *)v156 countByEnumeratingWithState:&v197 objects:v229 count:16];
    }

    while (v158);
  }

  if ([v155 count])
  {
    v164 = NSStringFromSelector(sel_customKeyRequestValues);
    [v190 setObject:v155 forKeyedSubscript:v164];
  }

  customKeyRequestHeaderClaims = v189->_customKeyRequestHeaderClaims;
  v166 = NSStringFromSelector(sel_customKeyRequestHeaderClaims);
  [v190 setObject:customKeyRequestHeaderClaims forKeyedSubscript:v166];

  customKeyRequestBodyClaims = v189->_customKeyRequestBodyClaims;
  v168 = NSStringFromSelector(sel_customKeyRequestBodyClaims);
  [v190 setObject:customKeyRequestBodyClaims forKeyedSubscript:v168];

  hpkePsk = v189->_hpkePsk;
  if (v188)
  {
    [(NSData *)hpkePsk psso_sha256HashString];
  }

  else
  {
    [(NSData *)hpkePsk psso_base64URLEncodedString];
  }
  v170 = ;
  v171 = NSStringFromSelector(sel_hpkePsk);
  [v190 setObject:v170 forKeyedSubscript:v171];

  v172 = [(NSData *)v189->_hpkePsk_id psso_base64URLEncodedString];
  v173 = NSStringFromSelector(sel_hpkePsk_id);
  [v190 setObject:v172 forKeyedSubscript:v173];

  if (v188)
  {
    [(NSData *)v189->__hpkeAuthPublicKeyData psso_sha256HashString];
  }

  else
  {
    [(NSData *)v189->__hpkeAuthPublicKeyData psso_base64URLEncodedString];
  }
  v174 = ;
  v175 = NSStringFromSelector(sel_hpkeAuthPublicKey);
  [v190 setObject:v174 forKeyedSubscript:v175];

  v176 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v176 setFormatOptions:1907];
  v177 = [MEMORY[0x277CBEAA8] date];
  v178 = [v176 stringFromDate:v177];
  [v190 setObject:v178 forKeyedSubscript:@"created"];

  v196 = 0;
  v179 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v190 options:11 error:&v196];
  v180 = v196;
  v181 = v180;
  if (v180)
  {
    v194[0] = MEMORY[0x277D85DD0];
    v194[1] = 3221225472;
    v194[2] = __53__POLoginConfiguration_dataRepresentationForDisplay___block_invoke;
    v194[3] = &unk_279A3DC48;
    v195 = v180;
    v182 = __53__POLoginConfiguration_dataRepresentationForDisplay___block_invoke(v194);

    v183 = 0;
  }

  else
  {
    v184 = PO_LOG_POLoginConfiguration();
    if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
    {
      [POLoginConfiguration dataRepresentationForDisplay:v179];
    }

    v183 = v179;
  }

  v185 = *MEMORY[0x277D85DE8];

  return v183;
}

id __53__POLoginConfiguration_dataRepresentationForDisplay___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error serializing login config."];
  v2 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

- (POLoginConfiguration)initWithData:(id)a3
{
  v283 = *MEMORY[0x277D85DE8];
  v281 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:16 error:&v281];
  v5 = v281;
  v6 = v5;
  if (v5)
  {
    v279[0] = MEMORY[0x277D85DD0];
    v279[1] = 3221225472;
    v279[2] = __37__POLoginConfiguration_initWithData___block_invoke;
    v279[3] = &unk_279A3DC48;
    v280 = v5;
    v7 = __37__POLoginConfiguration_initWithData___block_invoke(v279);
    v8 = 0;
    v9 = v280;
  }

  else
  {
    v10 = NSStringFromSelector(sel_clientID);
    v9 = [v4 objectForKeyedSubscript:v10];

    v11 = NSStringFromSelector(sel_issuer);
    v12 = [v4 objectForKeyedSubscript:v11];

    v13 = NSStringFromSelector(sel_tokenEndpointURL);
    v14 = [v4 objectForKeyedSubscript:v13];

    if (v14)
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = NSStringFromSelector(sel_tokenEndpointURL);
      v17 = [v4 objectForKeyedSubscript:v16];
      v18 = [v15 URLWithString:v17];
    }

    else
    {
      v18 = 0;
    }

    v19 = NSStringFromSelector(sel_jwksEndpointURL);
    v20 = [v4 objectForKeyedSubscript:v19];

    if (v20)
    {
      v21 = MEMORY[0x277CBEBC0];
      v22 = NSStringFromSelector(sel_jwksEndpointURL);
      v23 = [v4 objectForKeyedSubscript:v22];
      v24 = [v21 URLWithString:v23];
    }

    else
    {
      v24 = 0;
    }

    v25 = NSStringFromSelector(sel_audience);
    v26 = [v4 objectForKeyedSubscript:v25];

    v27 = [(POLoginConfiguration *)self _initWithClientId:v9 issuer:v12 tokenEndpointURL:v18 jwksEndpointURL:v24 audience:v26];
    if (v27)
    {
      v255 = v26;
      v256 = v24;
      v257 = v18;
      v258 = v12;
      v259 = v9;
      v28 = NSStringFromSelector(sel_accountDisplayName);
      v29 = [v4 objectForKeyedSubscript:v28];
      v30 = *(v27 + 3);
      *(v27 + 3) = v29;

      v31 = NSStringFromSelector(sel_invalidCredentialPredicate);
      v32 = [v4 objectForKeyedSubscript:v31];
      v33 = *(v27 + 2);
      *(v27 + 2) = v32;

      v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v275 = 0u;
      v276 = 0u;
      v277 = 0u;
      v278 = 0u;
      v35 = NSStringFromSelector(sel_jwksTrustedRootCertificates);
      v260 = v4;
      v36 = [v4 objectForKeyedSubscript:v35];

      v37 = [v36 countByEnumeratingWithState:&v275 objects:v282 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v276;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v276 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v275 + 1) + 8 * i);
            v42 = objc_alloc(MEMORY[0x277CBEA90]);
            v43 = [v42 psso_initWithBase64URLEncodedString:v41];

            if (v43)
            {
              v44 = [POSecKeyHelper certificateForData:v43];
              [v34 addObject:v44];
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v275 objects:v282 count:16];
        }

        while (v38);
      }

      if ([v34 count])
      {
        objc_storeStrong(v27 + 9, v34);
      }

      v45 = NSStringFromSelector(sel_deviceContext);
      v46 = [v260 objectForKeyedSubscript:v45];

      if (v46)
      {
        v47 = objc_alloc(MEMORY[0x277CBEA90]);
        v48 = NSStringFromSelector(sel_deviceContext);
        v49 = [v260 objectForKeyedSubscript:v48];
        v50 = [v47 psso_initWithBase64URLEncodedString:v49];

        v51 = *(v27 + 10);
        *(v27 + 10) = v50;
      }

      v52 = NSStringFromSelector(sel_userSEPKeyBiometricPolicy);
      v53 = [v260 objectForKeyedSubscript:v52];
      *(v27 + 11) = [v53 intValue];

      v54 = NSStringFromSelector(sel_nonceEndpointURL);
      v55 = [v260 objectForKeyedSubscript:v54];

      if (v55)
      {
        v56 = MEMORY[0x277CBEBC0];
        v57 = NSStringFromSelector(sel_nonceEndpointURL);
        v58 = [v260 objectForKeyedSubscript:v57];
        v59 = [v56 URLWithString:v58];
        v60 = *(v27 + 12);
        *(v27 + 12) = v59;
      }

      v61 = NSStringFromSelector(sel_nonceResponseKeypath);
      v62 = [v260 objectForKeyedSubscript:v61];
      v63 = *(v27 + 13);
      *(v27 + 13) = v62;

      v64 = NSStringFromSelector(sel_serverNonceClaimName);
      v65 = [v260 objectForKeyedSubscript:v64];
      v66 = *(v27 + 14);
      *(v27 + 14) = v65;

      v67 = NSStringFromSelector(sel_serverNonceExpirationTime);
      v68 = [v260 objectForKeyedSubscript:v67];

      if (v68)
      {
        v69 = NSStringFromSelector(sel_serverNonceExpirationTime);
        v70 = [v260 objectForKeyedSubscript:v69];
      }

      else
      {
        v70 = &unk_2870A9228;
      }

      v71 = *(v27 + 16);
      *(v27 + 16) = v70;

      v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v73 = NSStringFromSelector(sel_customNonceRequestValues);
      v74 = [v260 objectForKeyedSubscript:v73];

      v273[0] = MEMORY[0x277D85DD0];
      v273[1] = 3221225472;
      v273[2] = __37__POLoginConfiguration_initWithData___block_invoke_300;
      v273[3] = &unk_279A3E7C0;
      v75 = v72;
      v274 = v75;
      v254 = v74;
      [v74 enumerateKeysAndObjectsUsingBlock:v273];
      if ([v75 count])
      {
        objc_storeStrong(v27 + 15, v72);
      }

      v76 = NSStringFromSelector(sel_customAssertionRequestHeaderClaims);
      v77 = [v260 objectForKeyedSubscript:v76];
      v78 = *(v27 + 46);
      *(v27 + 46) = v77;

      v79 = NSStringFromSelector(sel_customAssertionRequestBodyClaims);
      v80 = [v260 objectForKeyedSubscript:v79];
      v81 = *(v27 + 47);
      *(v27 + 47) = v80;

      v82 = NSStringFromSelector(sel_additionalScopes);
      v83 = [v260 objectForKeyedSubscript:v82];
      v84 = *(v27 + 17);
      *(v27 + 17) = v83;

      v85 = NSStringFromSelector(sel_additionalAuthorizationScopes);
      v86 = [v260 objectForKeyedSubscript:v85];
      v87 = *(v27 + 18);
      *(v27 + 18) = v86;

      v88 = NSStringFromSelector(sel_includePreviousRefreshTokenInLoginRequest);
      v89 = [v260 objectForKeyedSubscript:v88];
      *(v27 + 8) = [v89 BOOLValue];

      v90 = NSStringFromSelector(sel_previousRefreshTokenClaimName);
      v91 = [v260 objectForKeyedSubscript:v90];
      v92 = *(v27 + 19);
      *(v27 + 19) = v91;

      v93 = NSStringFromSelector(sel_customRequestJWTParameterName);
      v94 = [v260 objectForKeyedSubscript:v93];
      v95 = *(v27 + 20);
      *(v27 + 20) = v94;

      v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v97 = NSStringFromSelector(sel_customLoginRequestValues);
      v98 = [v260 objectForKeyedSubscript:v97];

      v271[0] = MEMORY[0x277D85DD0];
      v271[1] = 3221225472;
      v271[2] = __37__POLoginConfiguration_initWithData___block_invoke_2;
      v271[3] = &unk_279A3E7C0;
      v99 = v96;
      v272 = v99;
      v253 = v98;
      [v98 enumerateKeysAndObjectsUsingBlock:v271];
      if ([v99 count])
      {
        objc_storeStrong(v27 + 21, v96);
      }

      v100 = NSStringFromSelector(sel_customLoginRequestHeaderClaims);
      v101 = [v260 objectForKeyedSubscript:v100];
      v102 = *(v27 + 48);
      *(v27 + 48) = v101;

      v103 = NSStringFromSelector(sel_customLoginRequestBodyClaims);
      v104 = [v260 objectForKeyedSubscript:v103];
      v105 = *(v27 + 49);
      *(v27 + 49) = v104;

      v106 = NSStringFromSelector(sel_uniqueIdentifierClaimName);
      v107 = [v260 objectForKeyedSubscript:v106];
      v108 = *(v27 + 22);
      *(v27 + 22) = v107;

      v109 = NSStringFromSelector(sel_groupRequestClaimName);
      v110 = [v260 objectForKeyedSubscript:v109];
      v111 = *(v27 + 23);
      *(v27 + 23) = v110;

      v112 = NSStringFromSelector(sel_groupResponseClaimName);
      v113 = [v260 objectForKeyedSubscript:v112];
      v114 = *(v27 + 24);
      *(v27 + 24) = v113;

      v115 = NSStringFromSelector(sel_refreshEndpointURL);
      v116 = [v260 objectForKeyedSubscript:v115];

      if (v116)
      {
        v117 = MEMORY[0x277CBEBC0];
        v118 = NSStringFromSelector(sel_refreshEndpointURL);
        v119 = [v260 objectForKeyedSubscript:v118];
        v120 = [v117 URLWithString:v119];
        v121 = *(v27 + 25);
        *(v27 + 25) = v120;
      }

      v122 = objc_alloc_init(MEMORY[0x277CBEB18]);

      v123 = NSStringFromSelector(sel_customRefreshRequestValues);
      v124 = [v260 objectForKeyedSubscript:v123];

      v269[0] = MEMORY[0x277D85DD0];
      v269[1] = 3221225472;
      v269[2] = __37__POLoginConfiguration_initWithData___block_invoke_3;
      v269[3] = &unk_279A3E7C0;
      v125 = v122;
      v270 = v125;
      v252 = v124;
      [v124 enumerateKeysAndObjectsUsingBlock:v269];
      if ([v125 count])
      {
        objc_storeStrong(v27 + 26, v122);
      }

      v126 = NSStringFromSelector(sel_customRefreshRequestHeaderClaims);
      v127 = [v260 objectForKeyedSubscript:v126];
      v128 = *(v27 + 50);
      *(v27 + 50) = v127;

      v129 = NSStringFromSelector(sel_customRefreshRequestBodyClaims);
      v130 = [v260 objectForKeyedSubscript:v129];
      v131 = *(v27 + 51);
      *(v27 + 51) = v130;

      v132 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v133 = NSStringFromSelector(sel_kerberosTicketMappings);
      v134 = [v260 objectForKeyedSubscript:v133];

      v267[0] = MEMORY[0x277D85DD0];
      v267[1] = 3221225472;
      v267[2] = __37__POLoginConfiguration_initWithData___block_invoke_4;
      v267[3] = &unk_279A3DD60;
      v135 = v132;
      v268 = v135;
      v251 = v134;
      [v134 enumerateObjectsUsingBlock:v267];
      if ([v135 count])
      {
        objc_storeStrong(v27 + 27, v132);
      }

      v136 = NSStringFromSelector(sel_federationType);
      v137 = [v260 objectForKeyedSubscript:v136];
      *(v27 + 28) = [v137 intValue];

      v138 = NSStringFromSelector(sel_federationRequestURN);
      v139 = [v260 objectForKeyedSubscript:v138];
      v140 = *(v27 + 29);
      *(v27 + 29) = v139;

      v141 = NSStringFromSelector(sel_federationMexURL);
      v142 = [v260 objectForKeyedSubscript:v141];

      if (v142)
      {
        v143 = MEMORY[0x277CBEBC0];
        v144 = NSStringFromSelector(sel_federationMexURL);
        v145 = [v260 objectForKeyedSubscript:v144];
        v146 = [v143 URLWithString:v145];
        v147 = *(v27 + 30);
        *(v27 + 30) = v146;
      }

      v148 = NSStringFromSelector(sel_federationUserPreauthenticationURL);
      v149 = [v260 objectForKeyedSubscript:v148];

      if (v149)
      {
        v150 = MEMORY[0x277CBEBC0];
        v151 = NSStringFromSelector(sel_federationUserPreauthenticationURL);
        v152 = [v260 objectForKeyedSubscript:v151];
        v153 = [v150 URLWithString:v152];
        v154 = *(v27 + 31);
        *(v27 + 31) = v153;
      }

      v155 = NSStringFromSelector(sel_federationMexURLKeypath);
      v156 = [v260 objectForKeyedSubscript:v155];
      v157 = *(v27 + 32);
      *(v27 + 32) = v156;

      v158 = NSStringFromSelector(sel_federationPredicate);
      v159 = [v260 objectForKeyedSubscript:v158];
      v160 = *(v27 + 33);
      *(v27 + 33) = v159;

      v161 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v162 = NSStringFromSelector(sel_customFederationUserPreauthenticationRequestValues);
      v163 = [v260 objectForKeyedSubscript:v162];

      v265[0] = MEMORY[0x277D85DD0];
      v265[1] = 3221225472;
      v265[2] = __37__POLoginConfiguration_initWithData___block_invoke_5;
      v265[3] = &unk_279A3E7C0;
      v164 = v161;
      v266 = v164;
      v250 = v163;
      [v163 enumerateKeysAndObjectsUsingBlock:v265];
      if ([v164 count])
      {
        objc_storeStrong(v27 + 34, v161);
      }

      v165 = NSStringFromSelector(sel_loginRequestEncryptionPublicKey);
      v166 = [v260 objectForKeyedSubscript:v165];

      if (v166)
      {
        v167 = objc_alloc(MEMORY[0x277CBEA90]);
        v168 = NSStringFromSelector(sel_loginRequestEncryptionPublicKey);
        v169 = [v260 objectForKeyedSubscript:v168];
        v170 = [v167 psso_initWithBase64URLEncodedString:v169];

        v171 = *(v27 + 56);
        *(v27 + 56) = v170;
      }

      v172 = NSStringFromSelector(sel_loginRequestEncryptionAlgorithm);
      v173 = [v260 objectForKeyedSubscript:v172];

      if (v173)
      {
        v174 = NSStringFromSelector(sel_loginRequestEncryptionAlgorithm);
        v175 = [v260 objectForKeyedSubscript:v174];

        v176 = *(v27 + 35);
        *(v27 + 35) = v175;
      }

      else
      {
        v177 = &unk_2870A9198;
        v176 = *(v27 + 35);
        *(v27 + 35) = v177;
      }

      v178 = NSStringFromSelector(sel_loginRequestHpkePsk_id);
      v179 = [v260 objectForKeyedSubscript:v178];

      if (v179)
      {
        v180 = objc_alloc(MEMORY[0x277CBEA90]);
        v181 = NSStringFromSelector(sel_loginRequestHpkePsk_id);
        v182 = [v260 objectForKeyedSubscript:v181];
        v183 = [v180 psso_initWithBase64URLEncodedString:v182];

        v184 = *(v27 + 37);
        *(v27 + 37) = v183;
      }

      v185 = NSStringFromSelector(sel_loginRequestHpkePsk);
      v186 = [v260 objectForKeyedSubscript:v185];

      if (v186)
      {
        v187 = objc_alloc(MEMORY[0x277CBEA90]);
        v188 = NSStringFromSelector(sel_loginRequestHpkePsk);
        v189 = [v260 objectForKeyedSubscript:v188];
        v190 = [v187 psso_initWithBase64URLEncodedString:v189];

        v191 = *(v27 + 36);
        *(v27 + 36) = v190;
      }

      v192 = NSStringFromSelector(sel_loginRequestEncryptionAPVPrefix);
      v193 = [v260 objectForKeyedSubscript:v192];

      if (v193)
      {
        v194 = objc_alloc(MEMORY[0x277CBEA90]);
        v195 = NSStringFromSelector(sel_loginRequestEncryptionAPVPrefix);
        v196 = [v260 objectForKeyedSubscript:v195];
        v197 = [v194 psso_initWithBase64URLEncodedString:v196];

        v198 = *(v27 + 38);
        *(v27 + 38) = v197;
      }

      v199 = NSStringFromSelector(sel_keyEndpointURL);
      v200 = [v260 objectForKeyedSubscript:v199];

      if (v200)
      {
        v201 = MEMORY[0x277CBEBC0];
        v202 = NSStringFromSelector(sel_keyEndpointURL);
        v203 = [v260 objectForKeyedSubscript:v202];
        v204 = [v201 URLWithString:v203];
        v205 = *(v27 + 39);
        *(v27 + 39) = v204;
      }

      v206 = objc_alloc_init(MEMORY[0x277CBEB18]);

      v207 = NSStringFromSelector(sel_customKeyExchangeRequestValues);
      v208 = [v260 objectForKeyedSubscript:v207];

      v263[0] = MEMORY[0x277D85DD0];
      v263[1] = 3221225472;
      v263[2] = __37__POLoginConfiguration_initWithData___block_invoke_6;
      v263[3] = &unk_279A3E7C0;
      v209 = v206;
      v264 = v209;
      v249 = v208;
      [v208 enumerateKeysAndObjectsUsingBlock:v263];
      if ([v209 count])
      {
        objc_storeStrong(v27 + 40, v206);
      }

      v210 = NSStringFromSelector(sel_customKeyExchangeRequestHeaderClaims);
      v211 = [v260 objectForKeyedSubscript:v210];
      v212 = *(v27 + 54);
      *(v27 + 54) = v211;

      v213 = NSStringFromSelector(sel_customKeyExchangeRequestBodyClaims);
      v214 = [v260 objectForKeyedSubscript:v213];
      v215 = *(v27 + 55);
      *(v27 + 55) = v214;

      v216 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v217 = NSStringFromSelector(sel_customKeyRequestValues);
      v218 = [v260 objectForKeyedSubscript:v217];

      v261[0] = MEMORY[0x277D85DD0];
      v261[1] = 3221225472;
      v261[2] = __37__POLoginConfiguration_initWithData___block_invoke_7;
      v261[3] = &unk_279A3E7C0;
      v219 = v216;
      v262 = v219;
      [v218 enumerateKeysAndObjectsUsingBlock:v261];
      if ([v219 count])
      {
        objc_storeStrong(v27 + 41, v216);
      }

      v220 = NSStringFromSelector(sel_customKeyRequestHeaderClaims);
      v221 = [v260 objectForKeyedSubscript:v220];
      v222 = *(v27 + 52);
      *(v27 + 52) = v221;

      v223 = NSStringFromSelector(sel_customKeyRequestBodyClaims);
      v224 = [v260 objectForKeyedSubscript:v223];
      v225 = *(v27 + 53);
      *(v27 + 53) = v224;

      v226 = NSStringFromSelector(sel_hpkeAuthPublicKey);
      v227 = [v260 objectForKeyedSubscript:v226];

      if (v227)
      {
        v228 = objc_alloc(MEMORY[0x277CBEA90]);
        v229 = NSStringFromSelector(sel_hpkeAuthPublicKey);
        v230 = [v260 objectForKeyedSubscript:v229];
        v231 = [v228 psso_initWithBase64URLEncodedString:v230];

        v232 = *(v27 + 57);
        *(v27 + 57) = v231;
      }

      v233 = NSStringFromSelector(sel_hpkePsk_id);
      v234 = [v260 objectForKeyedSubscript:v233];

      if (v234)
      {
        v235 = objc_alloc(MEMORY[0x277CBEA90]);
        v236 = NSStringFromSelector(sel_hpkePsk_id);
        v237 = [v260 objectForKeyedSubscript:v236];
        v238 = [v235 psso_initWithBase64URLEncodedString:v237];

        v239 = *(v27 + 45);
        *(v27 + 45) = v238;
      }

      v240 = NSStringFromSelector(sel_hpkePsk);
      v241 = [v260 objectForKeyedSubscript:v240];

      if (v241)
      {
        v242 = objc_alloc(MEMORY[0x277CBEA90]);
        v243 = NSStringFromSelector(sel_hpkePsk);
        v244 = [v260 objectForKeyedSubscript:v243];
        v245 = [v242 psso_initWithBase64URLEncodedString:v244];

        v246 = *(v27 + 44);
        *(v27 + 44) = v245;
      }

      v4 = v260;
      v9 = v259;
      v18 = v257;
      v12 = v258;
      v26 = v255;
      v24 = v256;
    }

    self = v27;

    v8 = self;
  }

  v247 = *MEMORY[0x277D85DE8];
  return v8;
}

id __37__POLoginConfiguration_initWithData___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error deserializing login config."];
  v2 = PO_LOG_POLoginConfiguration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

void __37__POLoginConfiguration_initWithData___block_invoke_300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

void __37__POLoginConfiguration_initWithData___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

void __37__POLoginConfiguration_initWithData___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

void __37__POLoginConfiguration_initWithData___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[POKerberosMapping alloc] initWithDictionary:v5];
    [v3 addObject:v4];
  }
}

void __37__POLoginConfiguration_initWithData___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

void __37__POLoginConfiguration_initWithData___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

void __37__POLoginConfiguration_initWithData___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(POLoginConfiguration *)self dataRepresentationForDisplay:1];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (id)mergedConfigurationWithUserLoginConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(POLoginConfiguration *)self copy];
  v6 = [v5 customAssertionRequestHeaderClaims];
  v7 = v6;
  v8 = MEMORY[0x277CBEC10];
  if (!v6)
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v9 = [v6 mutableCopy];

  v10 = [v4 customAssertionRequestHeaderClaims];
  [v9 addEntriesFromDictionary:v10];

  [v5 setCustomAssertionRequestHeaderClaims:v9];
  v11 = [v5 customAssertionRequestBodyClaims];
  v12 = v11;
  if (!v11)
  {
    v11 = v8;
  }

  v13 = [v11 mutableCopy];

  v14 = [v4 customAssertionRequestBodyClaims];
  [v13 addEntriesFromDictionary:v14];

  [v5 setCustomAssertionRequestBodyClaims:v13];
  v15 = [v5 customLoginRequestHeaderClaims];
  v16 = v15;
  if (!v15)
  {
    v15 = v8;
  }

  v17 = [v15 mutableCopy];

  v18 = [v4 customLoginRequestHeaderClaims];
  [v17 addEntriesFromDictionary:v18];

  [v5 setCustomLoginRequestHeaderClaims:v17];
  v19 = [v5 customLoginRequestBodyClaims];
  v20 = v19;
  if (!v19)
  {
    v19 = v8;
  }

  v21 = [v19 mutableCopy];

  v22 = [v4 customLoginRequestBodyClaims];

  [v21 addEntriesFromDictionary:v22];
  [v5 setCustomLoginRequestBodyClaims:v21];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [POLoginConfiguration alloc];
  v5 = [(POLoginConfiguration *)self dataRepresentation];
  v6 = [(POLoginConfiguration *)v4 initWithData:v5];

  return v6;
}

- (POLoginConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_dataRepresentation);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(POLoginConfiguration *)self initWithData:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(POLoginConfiguration *)self dataRepresentation];
  v5 = NSStringFromSelector(sel_dataRepresentation);
  [v4 encodeObject:v6 forKey:v5];
}

void __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:4];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "open id response received: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __111__POLoginConfiguration_configurationWithOpenIdConfigurationURL_identityProviderURL_clientId_issuer_completion___block_invoke_94_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a2 + 32), "statusCode")}];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_25E8B1000, a3, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dataRepresentationForDisplay:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:4];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25E8B1000, v2, v3, "serialized configuration: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end
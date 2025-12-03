@interface POLoginManager
- (BOOL)isDeviceRegistered;
- (BOOL)isUserRegistered;
- (BOOL)saveLoginConfiguration:(id)configuration error:(id *)error;
- (BOOL)saveUserLoginConfiguration:(id)configuration error:(id *)error;
- (NSDictionary)ssoTokens;
- (NSString)loginUserName;
- (NSString)registrationToken;
- (POLoginConfiguration)loginConfiguration;
- (POLoginManager)initWithCoder:(id)coder;
- (POUserLoginConfiguration)userLoginConfiguration;
- (__SecIdentity)copyIdentityForKeyType:(int64_t)type;
- (__SecKey)copyKeyForKeyType:(int64_t)type;
- (__SecKey)rotateKeyForKeyType:(int64_t)type;
- (int)authenticationMethod;
- (void)attestKey:(int64_t)key clientData:(id)data completion:(id)completion;
- (void)attestPendingKey:(int64_t)key clientData:(id)data completion:(id)completion;
- (void)authenticationMethod;
- (void)completeRotationKeyForKeyType:(int64_t)type;
- (void)deviceRegistrationsNeedsRepair;
- (void)invalidate;
- (void)isDeviceRegistered;
- (void)isUserRegistered;
- (void)loginConfiguration;
- (void)presentRegistrationViewControllerWithCompletion:(id)completion;
- (void)registrationToken;
- (void)resetDeviceKeys;
- (void)resetKeys;
- (void)resetUserSecureEnclaveKey;
- (void)saveCertificate:(__SecCertificate *)certificate keyType:(int64_t)type;
- (void)setLoginUserName:(id)name;
- (void)setSsoTokens:(id)tokens;
- (void)ssoTokens;
- (void)userLoginConfiguration;
- (void)userNeedsReauthenticationWithCompletion:(id)completion;
- (void)userRegistrationsNeedsRepair;
@end

@implementation POLoginManager

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDeviceRegistered
{
  v3 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager isDeviceRegistered];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serviceConnection = self->_serviceConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__POLoginManager_isDeviceRegistered__block_invoke;
  v7[3] = &unk_279A3A240;
  v7[4] = &v8;
  [(POServiceLoginManagerConnection *)serviceConnection isDeviceRegisteredWithCompletion:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)isUserRegistered
{
  v3 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager isUserRegistered];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serviceConnection = self->_serviceConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__POLoginManager_isUserRegistered__block_invoke;
  v7[3] = &unk_279A3A240;
  v7[4] = &v8;
  [(POServiceLoginManagerConnection *)serviceConnection isUserRegisteredWithCompletion:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (NSString)registrationToken
{
  v3 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager registrationToken];
  }

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__1;
  v14[4] = __Block_byref_object_dispose__1;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  serviceConnection = self->_serviceConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__POLoginManager_registrationToken__block_invoke;
  v7[3] = &unk_279A3A3D8;
  v7[4] = &v8;
  v7[5] = v14;
  [(POServiceLoginManagerConnection *)serviceConnection registrationTokenWithCompletion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v14, 8);

  return v5;
}

void __35__POLoginManager_registrationToken__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (int)authenticationMethod
{
  v3 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager authenticationMethod];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serviceConnection = self->_serviceConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__POLoginManager_authenticationMethod__block_invoke;
  v7[3] = &unk_279A3A400;
  v7[4] = &v8;
  [(POServiceLoginManagerConnection *)serviceConnection authenticationMethodWithCompletion:v7];
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __38__POLoginManager_authenticationMethod__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__POLoginManager_authenticationMethod__block_invoke_2;
  v8[3] = &unk_279A3A088;
  v9 = v5;
  v6 = v5;
  v7 = __38__POLoginManager_authenticationMethod__block_invoke_2(v8);
}

id __38__POLoginManager_authenticationMethod__block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"failed to retrieve authenticationMethod"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (NSString)loginUserName
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__1;
  v12[4] = __Block_byref_object_dispose__1;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  serviceConnection = self->_serviceConnection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__POLoginManager_loginUserName__block_invoke;
  v5[3] = &unk_279A3A3D8;
  v5[4] = &v6;
  v5[5] = v12;
  [(POServiceLoginManagerConnection *)serviceConnection loginUserNameWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(v12, 8);

  return v3;
}

void __31__POLoginManager_loginUserName__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)setLoginUserName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__1;
  v10[4] = __Block_byref_object_dispose__1;
  v11 = 0;
  serviceConnection = self->_serviceConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__POLoginManager_setLoginUserName___block_invoke;
  v9[3] = &unk_279A3A428;
  v9[4] = &v12;
  v9[5] = v10;
  [(POServiceLoginManagerConnection *)serviceConnection setLoginUserName:nameCopy completion:v9];
  if (*(v13 + 24) == 1)
  {
    v6 = PO_LOG_POLoginManager();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [POLoginManager setLoginUserName:];
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__POLoginManager_setLoginUserName___block_invoke_6;
    v8[3] = &unk_279A3A450;
    v8[4] = v10;
    v7 = __35__POLoginManager_setLoginUserName___block_invoke_6(v8);
  }

  _Block_object_dispose(v10, 8);

  _Block_object_dispose(&v12, 8);
}

id __35__POLoginManager_setLoginUserName___block_invoke_6(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"failed to save loginUserName"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (POUserLoginConfiguration)userLoginConfiguration
{
  v3 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager userLoginConfiguration];
  }

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__1;
  v14[4] = __Block_byref_object_dispose__1;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  serviceConnection = self->_serviceConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__POLoginManager_userLoginConfiguration__block_invoke;
  v7[3] = &unk_279A3A478;
  v7[4] = &v8;
  v7[5] = v14;
  [(POServiceLoginManagerConnection *)serviceConnection userLoginConfigurationWithCompletion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v14, 8);

  return v5;
}

void __40__POLoginManager_userLoginConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)saveUserLoginConfiguration:(id)configuration error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  serviceConnection = self->_serviceConnection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__POLoginManager_saveUserLoginConfiguration_error___block_invoke;
  v18[3] = &unk_279A3A428;
  v18[4] = &v25;
  v18[5] = &v19;
  [(POServiceLoginManagerConnection *)serviceConnection setUserLoginConfiguration:configurationCopy completion:v18];
  v8 = *(v26 + 24);
  if (v8 == 1)
  {
    v9 = PO_LOG_POLoginManager();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [POLoginManager saveUserLoginConfiguration:error:];
    }
  }

  else
  {
    v10 = v20[5];
    v29 = *MEMORY[0x277CCA7E8];
    v30[0] = v10;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v11 = MEMORY[0x277CCA9B8];
    v12 = getASAuthorizationErrorDomain();
    v13 = [v11 errorWithDomain:v12 code:1000 userInfo:v9];

    v14 = PO_LOG_POLoginManager();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [POLoginManager saveUserLoginConfiguration:error:];
    }

    if (error)
    {
      v15 = v13;
      *error = v13;
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSDictionary)ssoTokens
{
  v3 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager ssoTokens];
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__1;
  v30[4] = __Block_byref_object_dispose__1;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  serviceConnection = self->_serviceConnection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __27__POLoginManager_ssoTokens__block_invoke;
  v23[3] = &unk_279A3A4A0;
  v23[4] = &v24;
  v23[5] = v30;
  [(POServiceLoginManagerConnection *)serviceConnection ssoTokensWithCompletion:v23];
  if (!v25[5])
  {
    goto LABEL_12;
  }

  v5 = [(POLoginManager *)self copyKeyForKeyType:11];
  v6 = v5;
  if (!v5)
  {
    v13 = __27__POLoginManager_ssoTokens__block_invoke_2();
LABEL_12:
    v12 = 0;
    goto LABEL_17;
  }

  if (!SecKeyIsAlgorithmSupported(v5, kSecKeyOperationTypeDecrypt, *MEMORY[0x277CDC328]))
  {
    CFRelease(v6);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __27__POLoginManager_ssoTokens__block_invoke_17;
    v22[3] = &unk_279A3A450;
    v22[4] = v30;
    v14 = __27__POLoginManager_ssoTokens__block_invoke_17(v22);
    goto LABEL_12;
  }

  error = 0;
  v7 = SecKeyCreateDecryptedData(v6, *MEMORY[0x277CDC338], v25[5], &error);
  CFRelease(v6);
  if (error || !v7)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __27__POLoginManager_ssoTokens__block_invoke_21;
    v20[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v20[4] = error;
    v15 = __27__POLoginManager_ssoTokens__block_invoke_21(v20);
    v12 = 0;
  }

  else
  {
    v19 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:16 error:&v19];
    v9 = v19;
    v10 = v9;
    if (v9)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __27__POLoginManager_ssoTokens__block_invoke_26;
      v17[3] = &unk_279A3A088;
      v18 = v9;
      v11 = __27__POLoginManager_ssoTokens__block_invoke_26(v17);

      v12 = 0;
    }

    else
    {
      v12 = v8;
    }
  }

LABEL_17:
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(v30, 8);

  return v12;
}

void __27__POLoginManager_ssoTokens__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id __27__POLoginManager_ssoTokens__block_invoke_2()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1006 description:@"missing device encryption key for retrieving sso tokens"];
  v1 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __27__POLoginManager_ssoTokens__block_invoke_17(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"encryption algorithm not supported for retrieving sso tokens"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __27__POLoginManager_ssoTokens__block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:v1 description:@"failed to decrypt tokens for retrieving sso tokens"];

  v3 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v2;
}

id __27__POLoginManager_ssoTokens__block_invoke_26(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"failed to parse sso tokens for retrieving sso tokens"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)setSsoTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager setSsoTokens:];
  }

  if (tokensCopy)
  {
    if ([MEMORY[0x277CCAAA0] isValidJSONObject:tokensCopy])
    {
      v25 = 0;
      v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:tokensCopy options:1 error:&v25];
      v7 = v25;
      v8 = v7;
      if (v7 || !v6)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __31__POLoginManager_setSsoTokens___block_invoke_42;
        v23[3] = &unk_279A3A088;
        v24 = v7;
        v16 = __31__POLoginManager_setSsoTokens___block_invoke_42(v23);
      }

      else
      {
        v9 = [(POLoginManager *)self copyKeyForKeyType:11];
        if (v9)
        {
          v10 = v9;
          v11 = SecKeyCopyPublicKey(v9);
          if (v11)
          {
            v12 = v11;
            if (SecKeyIsAlgorithmSupported(v11, kSecKeyOperationTypeEncrypt, *MEMORY[0x277CDC328]))
            {
              error = 0;
              v13 = SecKeyCreateEncryptedData(v12, *MEMORY[0x277CDC338], v6, &error);
              CFRelease(v12);
              if (error || !v13)
              {
                v21[0] = MEMORY[0x277D85DD0];
                v21[1] = 3221225472;
                v21[2] = __31__POLoginManager_setSsoTokens___block_invoke_64;
                v21[3] = &__block_descriptor_40_e14___NSError_8__0l;
                v21[4] = error;
                v20 = __31__POLoginManager_setSsoTokens___block_invoke_64(v21);
              }

              else
              {
                [(POServiceLoginManagerConnection *)self->_serviceConnection setSsoTokens:v13 completion:&__block_literal_global_70];
              }
            }

            else
            {
              CFRelease(v12);
              v19 = __31__POLoginManager_setSsoTokens___block_invoke_58();
            }
          }

          else
          {
            CFRelease(v10);
            v18 = __31__POLoginManager_setSsoTokens___block_invoke_52();
          }
        }

        else
        {
          v17 = __31__POLoginManager_setSsoTokens___block_invoke_46();
        }
      }
    }

    else
    {
      v15 = __31__POLoginManager_setSsoTokens___block_invoke_36();
    }
  }

  else
  {
    v14 = PO_LOG_POLoginManager();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [POLoginManager setSsoTokens:];
    }

    [(POServiceLoginManagerConnection *)self->_serviceConnection setSsoTokens:0 completion:&__block_literal_global_31];
  }
}

void __31__POLoginManager_setSsoTokens___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = PO_LOG_POLoginManager();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __31__POLoginManager_setSsoTokens___block_invoke_cold_1();
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__POLoginManager_setSsoTokens___block_invoke_32;
    v8[3] = &unk_279A3A088;
    v9 = v4;
    v7 = __31__POLoginManager_setSsoTokens___block_invoke_32(v8);
    v6 = v9;
  }
}

id __31__POLoginManager_setSsoTokens___block_invoke_32(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"failed to remove sso tokens"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __31__POLoginManager_setSsoTokens___block_invoke_36()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"failed to validate JSON when saving sso tokens"];
  v1 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __31__POLoginManager_setSsoTokens___block_invoke_42(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"failed to encode tokens to JSON when saving sso tokens"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __31__POLoginManager_setSsoTokens___block_invoke_46()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1006 description:@"missing device encryption key for saving sso tokens"];
  v1 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __31__POLoginManager_setSsoTokens___block_invoke_52()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1006 description:@"missing device encryption public key for saving sso tokens"];
  v1 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __31__POLoginManager_setSsoTokens___block_invoke_58()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"encryption algorithm not supported for saving sso tokens"];
  v1 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __31__POLoginManager_setSsoTokens___block_invoke_64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:v1 description:@"failed to encrypt tokens for saving sso tokens"];

  v3 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v2;
}

void __31__POLoginManager_setSsoTokens___block_invoke_68(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = PO_LOG_POLoginManager();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __31__POLoginManager_setSsoTokens___block_invoke_68_cold_1();
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__POLoginManager_setSsoTokens___block_invoke_71;
    v8[3] = &unk_279A3A088;
    v9 = v4;
    v7 = __31__POLoginManager_setSsoTokens___block_invoke_71(v8);
    v6 = v9;
  }
}

id __31__POLoginManager_setSsoTokens___block_invoke_71(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"failed to save tokens for saving sso tokens"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (POLoginConfiguration)loginConfiguration
{
  v3 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager loginConfiguration];
  }

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__1;
  v14[4] = __Block_byref_object_dispose__1;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  serviceConnection = self->_serviceConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__POLoginManager_loginConfiguration__block_invoke;
  v7[3] = &unk_279A3A4E8;
  v7[4] = &v8;
  v7[5] = v14;
  [(POServiceLoginManagerConnection *)serviceConnection loginConfigurationWithCompletion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v14, 8);

  return v5;
}

void __36__POLoginManager_loginConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)saveLoginConfiguration:(id)configuration error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  serviceConnection = self->_serviceConnection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__POLoginManager_saveLoginConfiguration_error___block_invoke;
  v18[3] = &unk_279A3A428;
  v18[4] = &v25;
  v18[5] = &v19;
  [(POServiceLoginManagerConnection *)serviceConnection setLoginConfiguration:configurationCopy completion:v18];
  v8 = *(v26 + 24);
  if (v8 == 1)
  {
    v9 = PO_LOG_POLoginManager();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [POLoginManager saveLoginConfiguration:error:];
    }
  }

  else
  {
    v10 = v20[5];
    v29 = *MEMORY[0x277CCA7E8];
    v30[0] = v10;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v11 = MEMORY[0x277CCA9B8];
    v12 = getASAuthorizationErrorDomain();
    v13 = [v11 errorWithDomain:v12 code:1000 userInfo:v9];

    v14 = PO_LOG_POLoginManager();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [POLoginManager saveLoginConfiguration:error:];
    }

    if (error)
    {
      v15 = v13;
      *error = v13;
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)saveCertificate:(__SecCertificate *)certificate keyType:(int64_t)type
{
  v7 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager saveCertificate:keyType:];
  }

  v8 = [MEMORY[0x277D3D230] dataForCertificate:certificate];
  if (v8)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__1;
    v12[4] = __Block_byref_object_dispose__1;
    v13 = 0;
    serviceConnection = self->_serviceConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__POLoginManager_saveCertificate_keyType___block_invoke_82;
    v11[3] = &unk_279A3A240;
    v11[4] = v12;
    [(POServiceLoginManagerConnection *)serviceConnection setCertificateData:v8 keyType:type completion:v11];
    _Block_object_dispose(v12, 8);
  }

  else
  {
    v10 = __42__POLoginManager_saveCertificate_keyType___block_invoke();
  }
}

id __42__POLoginManager_saveCertificate_keyType___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"error with SecCertificateCopyData for saving certificate"];
  v1 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (__SecKey)copyKeyForKeyType:(int64_t)type
{
  v5 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager copyKeyForKeyType:];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  serviceConnection = self->_serviceConnection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __36__POLoginManager_copyKeyForKeyType___block_invoke;
  v16[3] = &unk_279A3A510;
  v16[4] = &v17;
  v16[5] = &v23;
  [(POServiceLoginManagerConnection *)serviceConnection secKeyProxyEndpointForKeyType:type completion:v16];
  v7 = v18[5];
  if (!v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __36__POLoginManager_copyKeyForKeyType___block_invoke_2;
    v15[3] = &unk_279A3A450;
    v15[4] = &v23;
    v11 = __36__POLoginManager_copyKeyForKeyType___block_invoke_2(v15);
    goto LABEL_7;
  }

  v8 = v24;
  obj = v24[5];
  v9 = [MEMORY[0x277CDBD80] createKeyFromEndpoint:v7 error:&obj];
  objc_storeStrong(v8 + 5, obj);
  if (!v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __36__POLoginManager_copyKeyForKeyType___block_invoke_88;
    v13[3] = &unk_279A3A450;
    v13[4] = &v23;
    v10 = __36__POLoginManager_copyKeyForKeyType___block_invoke_88(v13);
LABEL_7:
    v9 = 0;
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v9;
}

void __36__POLoginManager_copyKeyForKeyType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id __36__POLoginManager_copyKeyForKeyType___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"failed to retrieve SecKeyProxyEndpoint for key"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __36__POLoginManager_copyKeyForKeyType___block_invoke_88(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"failed to create SecKey from SecKeyProxyEndpoint for key"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (__SecIdentity)copyIdentityForKeyType:(int64_t)type
{
  v5 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager copyIdentityForKeyType:];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  serviceConnection = self->_serviceConnection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__POLoginManager_copyIdentityForKeyType___block_invoke;
  v16[3] = &unk_279A3A510;
  v16[4] = &v17;
  v16[5] = &v23;
  [(POServiceLoginManagerConnection *)serviceConnection secIdentityProxyEndpointForKeyType:type completion:v16];
  v7 = v18[5];
  if (!v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__POLoginManager_copyIdentityForKeyType___block_invoke_2;
    v15[3] = &unk_279A3A450;
    v15[4] = &v23;
    v11 = __41__POLoginManager_copyIdentityForKeyType___block_invoke_2(v15);
    goto LABEL_7;
  }

  v8 = v24;
  obj = v24[5];
  v9 = [MEMORY[0x277CDBD80] createIdentityFromEndpoint:v7 error:&obj];
  objc_storeStrong(v8 + 5, obj);
  if (!v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__POLoginManager_copyIdentityForKeyType___block_invoke_95;
    v13[3] = &unk_279A3A450;
    v13[4] = &v23;
    v10 = __41__POLoginManager_copyIdentityForKeyType___block_invoke_95(v13);
LABEL_7:
    v9 = 0;
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v9;
}

void __41__POLoginManager_copyIdentityForKeyType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id __41__POLoginManager_copyIdentityForKeyType___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"failed to retrieve SecKeyProxyEndpoint for identity"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __41__POLoginManager_copyIdentityForKeyType___block_invoke_95(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"failed to create SecIdentityRef from SecKeyProxyEndpoint for key"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)attestKey:(int64_t)key clientData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v10 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager attestKey:clientData:completion:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__POLoginManager_attestKey_clientData_completion___block_invoke;
  v13[3] = &unk_279A3A560;
  v13[4] = self;
  v14 = dataCopy;
  v15 = completionCopy;
  keyCopy = key;
  v11 = completionCopy;
  v12 = dataCopy;
  _os_activity_initiate(&dword_25E831000, "attestation", OS_ACTIVITY_FLAG_DEFAULT, v13);
}

void __50__POLoginManager_attestKey_clientData_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__POLoginManager_attestKey_clientData_completion___block_invoke_2;
  v4[3] = &unk_279A3A538;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 attestKey:v3 pending:0 clientDataHash:v1 completion:v4];
}

void __50__POLoginManager_attestKey_clientData_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = SecCertificateCreateWithData(0, *(*(&v15 + 1) + 8 * v12));
          [v7 addObject:{v13, v15}];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)attestPendingKey:(int64_t)key clientData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v10 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager attestPendingKey:clientData:completion:];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__POLoginManager_attestPendingKey_clientData_completion___block_invoke;
  v13[3] = &unk_279A3A560;
  v13[4] = self;
  v14 = dataCopy;
  v15 = completionCopy;
  keyCopy = key;
  v11 = completionCopy;
  v12 = dataCopy;
  _os_activity_initiate(&dword_25E831000, "pending attestation", OS_ACTIVITY_FLAG_DEFAULT, v13);
}

void __57__POLoginManager_attestPendingKey_clientData_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__POLoginManager_attestPendingKey_clientData_completion___block_invoke_2;
  v4[3] = &unk_279A3A538;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 attestKey:v3 pending:1 clientDataHash:v1 completion:v4];
}

void __57__POLoginManager_attestPendingKey_clientData_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = SecCertificateCreateWithData(0, *(*(&v15 + 1) + 8 * v12));
          [v7 addObject:{v13, v15}];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)userNeedsReauthenticationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager userNeedsReauthenticationWithCompletion:];
  }

  hostExtensionContext = [(POLoginManager *)self hostExtensionContext];

  if (hostExtensionContext)
  {
    hostExtensionContext2 = [(POLoginManager *)self hostExtensionContext];
    requestIdentifier = [(POLoginManager *)self requestIdentifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__POLoginManager_userNeedsReauthenticationWithCompletion___block_invoke_2;
    v13[3] = &unk_279A3A5B0;
    v13[4] = self;
    v14 = completionCopy;
    v9 = completionCopy;
    [hostExtensionContext2 requestReauthenticationWithRequestIdentifier:requestIdentifier completion:v13];

    v10 = v14;
  }

  else
  {
    serviceConnection = self->_serviceConnection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__POLoginManager_userNeedsReauthenticationWithCompletion___block_invoke;
    v15[3] = &unk_279A3A588;
    v16 = completionCopy;
    v12 = completionCopy;
    [(POServiceLoginManagerConnection *)serviceConnection userNeedsReauthenticationWithCompletion:v15];
    v10 = v16;
  }
}

uint64_t __58__POLoginManager_userNeedsReauthenticationWithCompletion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  return (*(v3 + 16))(v3, v4);
}

void __58__POLoginManager_userNeedsReauthenticationWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if ((a2 - 2) >= 3)
    {
      if (a2 == 6)
      {
        v3 = 1001;
      }

      else
      {
        v8 = 0;
        if (a2 != 5)
        {
LABEL_14:
          (*(*(a1 + 40) + 16))();

          return;
        }

        v3 = 1000;
      }
    }

    else
    {
      v3 = 1004;
    }

    v5 = MEMORY[0x277CCA9B8];
    v6 = getASAuthorizationErrorDomain();
    v8 = [v5 errorWithDomain:v6 code:v3 userInfo:0];

    goto LABEL_14;
  }

  if (!a2)
  {
    v7 = *(*(a1 + 32) + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__POLoginManager_userNeedsReauthenticationWithCompletion___block_invoke_3;
    v9[3] = &unk_279A3A588;
    v10 = *(a1 + 40);
    [v7 userNeedsReauthenticationWithCompletion:v9];

    return;
  }

  v8 = 0;
  if (a2 != 1)
  {
    goto LABEL_14;
  }

  v4 = *(*(a1 + 40) + 16);

  v4();
}

uint64_t __58__POLoginManager_userNeedsReauthenticationWithCompletion___block_invoke_3(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  return (*(v3 + 16))(v3, v4);
}

- (void)deviceRegistrationsNeedsRepair
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userRegistrationsNeedsRepair
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentRegistrationViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager presentRegistrationViewControllerWithCompletion:];
  }

  hostExtensionContext = [(POLoginManager *)self hostExtensionContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__POLoginManager_presentRegistrationViewControllerWithCompletion___block_invoke;
  v8[3] = &unk_279A3A588;
  v9 = completionCopy;
  v7 = completionCopy;
  [hostExtensionContext presentRegistrationViewControllerWithCompletion:v8];
}

uint64_t __66__POLoginManager_presentRegistrationViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)resetKeys
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetDeviceKeys
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetUserSecureEnclaveKey
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (__SecKey)rotateKeyForKeyType:(int64_t)type
{
  v5 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager rotateKeyForKeyType:];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  serviceConnection = self->_serviceConnection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__POLoginManager_rotateKeyForKeyType___block_invoke;
  v16[3] = &unk_279A3A5D8;
  v16[4] = &v23;
  [(POServiceLoginManagerConnection *)serviceConnection rotateKeyForKeyType:type completion:v16];
  v7 = v24[5];
  if (!v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__POLoginManager_rotateKeyForKeyType___block_invoke_2;
    v15[3] = &unk_279A3A450;
    v15[4] = &v17;
    v11 = __38__POLoginManager_rotateKeyForKeyType___block_invoke_2(v15);
    goto LABEL_7;
  }

  v8 = (v18 + 5);
  obj = v18[5];
  v9 = [MEMORY[0x277CDBD80] createKeyFromEndpoint:v7 error:&obj];
  objc_storeStrong(v8, obj);
  if (!v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__POLoginManager_rotateKeyForKeyType___block_invoke_121;
    v13[3] = &unk_279A3A450;
    v13[4] = &v17;
    v10 = __38__POLoginManager_rotateKeyForKeyType___block_invoke_121(v13);
LABEL_7:
    v9 = 0;
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v9;
}

id __38__POLoginManager_rotateKeyForKeyType___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"failed to retrieve SecKeyProxyEndpoint for new key"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __38__POLoginManager_rotateKeyForKeyType___block_invoke_121(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"failed to create SecKey from SecKeyProxyEndpoint for new key"];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)completeRotationKeyForKeyType:(int64_t)type
{
  v5 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POLoginManager completeRotationKeyForKeyType:];
  }

  [(POServiceLoginManagerConnection *)self->_serviceConnection completeRotationKeyForKeyType:type completion:&__block_literal_global_126_0];
}

void __48__POLoginManager_completeRotationKeyForKeyType___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = PO_LOG_POLoginManager();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_INFO, "rotation completed successfully.", buf, 2u);
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__POLoginManager_completeRotationKeyForKeyType___block_invoke_127;
    v8[3] = &unk_279A3A088;
    v9 = v4;
    v7 = __48__POLoginManager_completeRotationKeyForKeyType___block_invoke_127(v8);
    v6 = v9;
  }
}

id __48__POLoginManager_completeRotationKeyForKeyType___block_invoke_127(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"failed to complete key rotation."];
  v2 = PO_LOG_POLoginManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (POLoginManager)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = POLoginManager;
  return [(POLoginManager *)&v4 init];
}

- (void)initWithUid:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[POLoginManager initWithUid:]";
  v6 = 1026;
  v7 = a2;
  v8 = 2112;
  v9 = a1;
  _os_log_debug_impl(&dword_25E831000, log, OS_LOG_TYPE_DEBUG, "%s uid = %{public}d on %@", &v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)isDeviceRegistered
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isUserRegistered
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registrationToken
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)authenticationMethod
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setLoginUserName:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)userLoginConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveUserLoginConfiguration:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_25E831000, v0, v1, "failed to save userLoginConfiguration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveUserLoginConfiguration:error:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)ssoTokens
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSsoTokens:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSsoTokens:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __31__POLoginManager_setSsoTokens___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __31__POLoginManager_setSsoTokens___block_invoke_68_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loginConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveLoginConfiguration:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_25E831000, v0, v1, "failed to save loginConfiguration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveLoginConfiguration:error:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveCertificate:keyType:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyKeyForKeyType:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyIdentityForKeyType:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)attestKey:clientData:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)attestPendingKey:clientData:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userNeedsReauthenticationWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentRegistrationViewControllerWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)rotateKeyForKeyType:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)completeRotationKeyForKeyType:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end
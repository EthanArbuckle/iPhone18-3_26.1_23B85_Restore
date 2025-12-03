@interface POTokenHelper
+ (BOOL)tokenIsAccessKey:(id)key;
+ (id)dataToHex:(id)hex;
+ (id)parseUserNameFromMailboxData:(id)data;
- (BOOL)canTokenIdLogin:(id)login pubKeyHash:(id)hash;
- (BOOL)insertTokenForUser:(id)user;
- (BOOL)retrieveCertAndKeyForTokenId:(id)id context:(id)context certificate:(__SecCertificate *)certificate privateKey:(__SecKey *)key;
- (BOOL)waitForTokenAvailable:(id)available;
- (POTokenHelper)initWithIdentifierProvider:(id)provider;
- (id)base64URLtokenHashForUser:(id)user;
- (id)findInfoForTokenId:(id)id;
- (id)findTokenIdForSmartCardAMUser:(id)user tokenHash:(id *)hash;
- (id)findTokenIdForSmartCardBoundUser:(id)user tokenHash:(id *)hash;
- (id)getDriverConfiguration;
- (id)getTokenInfo;
- (id)tokenHashDataForUser:(id)user;
- (id)tokenHashForUser:(id)user;
- (void)getDriverConfiguration;
- (void)getTokenInfo;
- (void)postAHPCacheRefreshNotification;
- (void)removeAllTokens;
- (void)removeTokenForUser:(id)user;
@end

@implementation POTokenHelper

- (POTokenHelper)initWithIdentifierProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = POTokenHelper;
  v6 = [(POTokenHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIdentifierProvider, provider);
  }

  return v7;
}

- (id)getDriverConfiguration
{
  driverConfigurations = [MEMORY[0x277CC5620] driverConfigurations];
  v3 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper getDriverConfiguration];
  }

  v4 = [driverConfigurations objectForKeyedSubscript:@"com.apple.platformsso"];

  return v4;
}

- (BOOL)insertTokenForUser:(id)user
{
  v146 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v141 = "[POTokenHelper insertTokenForUser:]";
    v142 = 2114;
    v143 = userCopy;
    v144 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", buf, 0x20u);
  }

  v6 = [POConfigurationCoreManager alloc];
  userIdentifierProvider = [(POTokenHelper *)self userIdentifierProvider];
  v8 = [(POConfigurationCoreManager *)v6 initWithUserName:userCopy identifierProvider:userIdentifierProvider sharedOnly:1];

  currentUserConfiguration = [(POConfigurationCoreManager *)v8 currentUserConfiguration];
  v10 = currentUserConfiguration;
  if (currentUserConfiguration)
  {
    if ([currentUserConfiguration userDecryptionCertificate])
    {
      userDecryptionKeyHash = [v10 userDecryptionKeyHash];

      if (userDecryptionKeyHash)
      {
        userUnlockData = [v10 userUnlockData];

        getDriverConfiguration = [(POTokenHelper *)self getDriverConfiguration];
        v14 = getDriverConfiguration;
        if (!getDriverConfiguration)
        {
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __36__POTokenHelper_insertTokenForUser___block_invoke;
          v128[3] = &unk_279A3DC48;
          v129 = userCopy;
          v78 = __36__POTokenHelper_insertTokenForUser___block_invoke(v128);
          LOBYTE(v64) = 0;
          v26 = v129;
LABEL_44:

          goto LABEL_45;
        }

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        tokenConfigurations = [getDriverConfiguration tokenConfigurations];
        allKeys = [tokenConfigurations allKeys];

        v17 = [allKeys countByEnumeratingWithState:&v124 objects:v139 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v125;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v125 != v19)
              {
                objc_enumerationMutation(allKeys);
              }

              [v14 removeTokenConfigurationForTokenInstanceID:*(*(&v124 + 1) + 8 * i)];
            }

            v18 = [allKeys countByEnumeratingWithState:&v124 objects:v139 count:16];
          }

          while (v18);
        }

        [v14 removeTokenConfigurationForTokenInstanceID:userCopy];
        userDecryptionKeyHash2 = [v10 userDecryptionKeyHash];
        v22 = [POTokenHelper dataToHex:userDecryptionKeyHash2];
        [v14 removeTokenConfigurationForTokenInstanceID:v22];

        tokenConfigurations2 = [v14 tokenConfigurations];
        userDecryptionKeyHash3 = [v10 userDecryptionKeyHash];
        v25 = [POTokenHelper dataToHex:userDecryptionKeyHash3];
        v26 = [tokenConfigurations2 objectForKeyedSubscript:v25];

        if (!v26)
        {
          userDecryptionKeyHash4 = [v10 userDecryptionKeyHash];
          v28 = [POTokenHelper dataToHex:userDecryptionKeyHash4];
          v26 = [v14 addTokenConfigurationForTokenInstanceID:v28];

          if (!v26)
          {
            v119 = MEMORY[0x277D85DD0];
            v120 = 3221225472;
            v121 = __36__POTokenHelper_insertTokenForUser___block_invoke_42;
            v122 = &unk_279A3DC48;
            v123 = v10;
            v100 = __36__POTokenHelper_insertTokenForUser___block_invoke_42();
            v101 = v123;
LABEL_43:

            LOBYTE(v64) = 0;
            goto LABEL_44;
          }
        }

        if (!userUnlockData)
        {
          v79 = objc_alloc_init(POMutableTokenConfigJWTBody);
          [(POMutableTokenConfigJWTBody *)v79 setUserName:userCopy];
          userLoginConfiguration = [v10 userLoginConfiguration];
          loginUserName = [userLoginConfiguration loginUserName];
          v82 = loginUserName;
          if (loginUserName)
          {
            v83 = loginUserName;
          }

          else
          {
            v83 = userCopy;
          }

          [(POMutableTokenConfigJWTBody *)v79 setLoginUserName:v83];

          dataRepresentation = [(_POJWTBodyBase *)v79 dataRepresentation];
          [v26 setConfigurationData:dataRepresentation];

          userDecryptionCertificate = [v10 userDecryptionCertificate];
          v86 = objc_alloc(MEMORY[0x277CC5628]);
          v87 = MEMORY[0x277CCACA8];
          uniqueIdentifier = [v10 uniqueIdentifier];
          v89 = [v87 stringWithFormat:@"certificate:%@", uniqueIdentifier];
          v90 = [v86 initWithCertificate:userDecryptionCertificate objectID:v89];

          v91 = objc_alloc(MEMORY[0x277CC5630]);
          userDecryptionKeyHash5 = [v10 userDecryptionKeyHash];
          v93 = [v91 initWithCertificate:userDecryptionCertificate objectID:userDecryptionKeyHash5];

          userDecryptionKeyHash6 = [v10 userDecryptionKeyHash];
          v95 = [POTokenHelper dataToHex:userDecryptionKeyHash6];
          [v93 setLabel:v95];

          [v93 setSuitableForLogin:1];
          [v93 setCanDecrypt:1];
          [v93 setCanSign:1];
          [v93 setCanPerformKeyExchange:1];
          v131 = &unk_2870A9240;
          v132 = @"TOKENS";
          v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          [v93 setConstraints:v96];

          v130[0] = v90;
          v130[1] = v93;
          v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
          [v26 setKeychainItems:v97];

LABEL_37:
          LOBYTE(v64) = 1;
          goto LABEL_44;
        }

        v29 = PO_LOG_POTokenHelper();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [POTokenHelper insertTokenForUser:];
        }

        v30 = objc_alloc_init(POMutableTokenConfigJWTBody);
        userUnlockData2 = [v10 userUnlockData];
        [(POMutableTokenConfigJWTBody *)v30 setUnlockData:userUnlockData2];

        userUnlockHash = [v10 userUnlockHash];
        v33 = [POTokenHelper dataToHex:userUnlockHash];
        [(POMutableTokenConfigJWTBody *)v30 setUnlockHash:v33];

        unlockTokenId = [v10 unlockTokenId];
        [(POMutableTokenConfigJWTBody *)v30 setIdpTokenId:unlockTokenId];

        v113 = v30;
        dataRepresentation2 = [(_POJWTBodyBase *)v30 dataRepresentation];
        [v26 setConfigurationData:dataRepresentation2];

        userDecryptionCertificate2 = [v10 userDecryptionCertificate];
        v37 = objc_alloc(MEMORY[0x277CC5628]);
        v38 = MEMORY[0x277CCACA8];
        uniqueIdentifier2 = [v10 uniqueIdentifier];
        v40 = [v38 stringWithFormat:@"certificate:%@", uniqueIdentifier2];
        v41 = [v37 initWithCertificate:userDecryptionCertificate2 objectID:v40];

        v42 = objc_alloc(MEMORY[0x277CC5630]);
        userDecryptionKeyHash7 = [v10 userDecryptionKeyHash];
        v44 = [v42 initWithCertificate:userDecryptionCertificate2 objectID:userDecryptionKeyHash7];

        userDecryptionKeyHash8 = [v10 userDecryptionKeyHash];
        [v44 setApplicationTag:userDecryptionKeyHash8];

        [v44 setSuitableForLogin:1];
        [v44 setCanDecrypt:1];
        [v44 setCanSign:1];
        [v44 setCanPerformKeyExchange:1];
        v137[0] = &unk_2870A9240;
        v137[1] = &unk_2870A9258;
        v138[0] = @"TOKENS";
        v138[1] = @"TOKENS";
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];
        [v44 setConstraints:v46];

        v111 = v44;
        v112 = v41;
        v136[0] = v41;
        v136[1] = v44;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:2];
        [v26 setKeychainItems:v47];

        tokenConfigurations3 = [v14 tokenConfigurations];
        userUnlockHash2 = [v10 userUnlockHash];
        v50 = [POTokenHelper dataToHex:userUnlockHash2];
        v51 = [tokenConfigurations3 objectForKeyedSubscript:v50];

        if (!v51)
        {
          userUnlockHash3 = [v10 userUnlockHash];
          v53 = [POTokenHelper dataToHex:userUnlockHash3];
          v51 = [v14 addTokenConfigurationForTokenInstanceID:v53];

          if (!v51)
          {
            v117[1] = MEMORY[0x277D85DD0];
            v117[2] = 3221225472;
            v117[3] = __36__POTokenHelper_insertTokenForUser___block_invoke_61;
            v117[4] = &unk_279A3DC48;
            v118 = v10;
            v106 = __36__POTokenHelper_insertTokenForUser___block_invoke_61();

            LOBYTE(v64) = 0;
            goto LABEL_44;
          }
        }

        v54 = objc_alloc_init(POMutableTokenConfigJWTBody);
        [(POMutableTokenConfigJWTBody *)v54 setUserName:userCopy];
        userLoginConfiguration2 = [v10 userLoginConfiguration];
        loginUserName2 = [userLoginConfiguration2 loginUserName];
        v57 = loginUserName2;
        if (loginUserName2)
        {
          v58 = loginUserName2;
        }

        else
        {
          v58 = userCopy;
        }

        [(POMutableTokenConfigJWTBody *)v54 setLoginUserName:v58];

        dataRepresentation3 = [(_POJWTBodyBase *)v54 dataRepresentation];
        [v51 setConfigurationData:dataRepresentation3];

        userUnlockCertificate = [v10 userUnlockCertificate];
        if (userUnlockCertificate)
        {
          v61 = SecCertificateCopyKey(userUnlockCertificate);
          if (v61)
          {
            v62 = v61;
            v63 = [POSecKeyHelper dataForEphemeralKey:v61];
            if (v63)
            {
              v109 = v63;
              v64 = SecKeyCopyAttributes(v62);
              CFRelease(v62);
              if (v64)
              {
                v65 = objc_alloc(MEMORY[0x277CC5630]);
                [v10 userUnlockHash];
                v66 = v110 = v64;
                v67 = [POTokenHelper dataToHex:v66];
                v68 = [v65 initWithCertificate:0 objectID:v67];

                v69 = [(__CFDictionary *)v110 objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
                [v68 setPublicKeyData:v69];

                v70 = [(__CFDictionary *)v110 objectForKeyedSubscript:*MEMORY[0x277CDBF28]];
                [v68 setPublicKeyHash:v70];

                v71 = [(__CFDictionary *)v110 objectForKeyedSubscript:*MEMORY[0x277CDC028]];
                [v68 setKeyType:v71];

                v72 = [(__CFDictionary *)v110 objectForKeyedSubscript:*MEMORY[0x277CDC018]];
                [v68 setKeySizeInBits:{objc_msgSend(v72, "unsignedIntegerValue")}];

                userUnlockHash4 = [v10 userUnlockHash];
                v74 = [POTokenHelper dataToHex:userUnlockHash4];
                [v68 setLabel:v74];

                [v68 setCanDecrypt:1];
                [v68 setCanPerformKeyExchange:1];
                v75 = [@"idp" dataUsingEncoding:4];
                [v68 setApplicationTag:v75];

                v134 = &unk_2870A9240;
                v135 = @"TOKENS";
                v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
                [v68 setConstraints:v76];

                v133 = v68;
                v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
                [v51 setKeychainItems:v77];

                v64 = v110;
              }

              else
              {
                v114 = v10;
                v108 = __36__POTokenHelper_insertTokenForUser___block_invoke_78();
                v68 = v114;
              }

              if (!v64)
              {
                goto LABEL_44;
              }

              goto LABEL_37;
            }

            CFRelease(v62);
            v115 = v10;
            v107 = __36__POTokenHelper_insertTokenForUser___block_invoke_74();
            v103 = v115;
            goto LABEL_42;
          }

          v98 = v116;
          v116[0] = v10;
          v102 = __36__POTokenHelper_insertTokenForUser___block_invoke_69();
        }

        else
        {
          v116[1] = MEMORY[0x277D85DD0];
          v116[2] = 3221225472;
          v116[3] = __36__POTokenHelper_insertTokenForUser___block_invoke_65;
          v116[4] = &unk_279A3DC48;
          v98 = v117;
          v117[0] = v10;
          v99 = __36__POTokenHelper_insertTokenForUser___block_invoke_65();
        }

        v103 = *v98;
LABEL_42:

        v101 = v113;
        goto LABEL_43;
      }
    }
  }

  v14 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper insertTokenForUser:];
  }

  LOBYTE(v64) = 0;
LABEL_45:

  v104 = *MEMORY[0x277D85DE8];
  return v64;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"No driver config for user."];
  v3 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_42()
{
  v0 = [POError errorWithCode:-1001 description:@"No token config for token id."];
  v1 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_42_cold_1();
  }

  return v0;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_61()
{
  v0 = [POError errorWithCode:-1001 description:@"No unlock token config for idp token id."];
  v1 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v0;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_65()
{
  v0 = [POError errorWithCode:-1005 description:@"Missing unlock certificate."];
  v1 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v0;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_69()
{
  v0 = [POError errorWithCode:-1005 description:@"Missing unlock public key."];
  v1 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v0;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_74()
{
  v0 = [POError errorWithCode:-1005 description:@"Missing unlock public key data."];
  v1 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v0;
}

id __36__POTokenHelper_insertTokenForUser___block_invoke_78()
{
  v0 = [POError errorWithCode:-1005 description:@"Missing unlock public key attributes."];
  v1 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1();
  }

  return v0;
}

- (void)removeTokenForUser:(id)user
{
  v23 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[POTokenHelper removeTokenForUser:]";
    v19 = 2114;
    v20 = userCopy;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", &v17, 0x20u);
  }

  getDriverConfiguration = [(POTokenHelper *)self getDriverConfiguration];
  v7 = getDriverConfiguration;
  if (getDriverConfiguration)
  {
    [getDriverConfiguration removeTokenConfigurationForTokenInstanceID:userCopy];
    v8 = [POConfigurationCoreManager alloc];
    userIdentifierProvider = [(POTokenHelper *)self userIdentifierProvider];
    v10 = [(POConfigurationCoreManager *)v8 initWithUserName:userCopy identifierProvider:userIdentifierProvider sharedOnly:1];

    currentUserConfiguration = [v10 currentUserConfiguration];
    v12 = currentUserConfiguration;
    if (currentUserConfiguration)
    {
      userDecryptionKeyHash = [currentUserConfiguration userDecryptionKeyHash];

      if (userDecryptionKeyHash)
      {
        userDecryptionKeyHash2 = [v12 userDecryptionKeyHash];
        v15 = [POTokenHelper dataToHex:userDecryptionKeyHash2];
        [v7 removeTokenConfigurationForTokenInstanceID:v15];
      }
    }
  }

  else
  {
    v10 = PO_LOG_POTokenHelper();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [POTokenHelper removeTokenForUser:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeAllTokens
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)tokenHashForUser:(id)user
{
  v3 = [(POTokenHelper *)self tokenHashDataForUser:user];
  v4 = [POTokenHelper dataToHex:v3];

  return v4;
}

- (id)base64URLtokenHashForUser:(id)user
{
  v3 = [(POTokenHelper *)self tokenHashDataForUser:user];
  psso_base64URLEncodedString = [v3 psso_base64URLEncodedString];

  return psso_base64URLEncodedString;
}

- (id)tokenHashDataForUser:(id)user
{
  v22 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[POTokenHelper tokenHashDataForUser:]";
    v18 = 2114;
    v19 = userCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", &v16, 0x20u);
  }

  v6 = [POConfigurationCoreManager alloc];
  userIdentifierProvider = [(POTokenHelper *)self userIdentifierProvider];
  v8 = [(POConfigurationCoreManager *)v6 initWithUserName:userCopy identifierProvider:userIdentifierProvider sharedOnly:1];

  currentUserConfiguration = [(POConfigurationCoreManager *)v8 currentUserConfiguration];
  v10 = currentUserConfiguration;
  if (currentUserConfiguration && [currentUserConfiguration userDecryptionCertificate] && (objc_msgSend(v10, "userDecryptionKeyHash"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    if ([v10 userDecryptionCertificate])
    {
      v12 = SecCertificateCopyPublicKeySHA1Digest();
      goto LABEL_11;
    }

    v13 = PO_LOG_POTokenHelper();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [POTokenHelper tokenHashDataForUser:];
    }
  }

  else
  {
    v13 = PO_LOG_POTokenHelper();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [POTokenHelper insertTokenForUser:];
    }
  }

  v12 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)dataToHex:(id)hex
{
  hexCopy = hex;
  v4 = hexCopy;
  if (hexCopy)
  {
    v5 = [hexCopy length];
    v6 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v5];
    bytes = [v4 bytes];
    if ([v4 length])
    {
      v8 = 0;
      do
      {
        [v6 appendFormat:@"%02lX", *(bytes + v8++)];
      }

      while (v8 < [v4 length]);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)tokenIsAccessKey:(id)key
{
  lowercaseString = [key lowercaseString];
  lowercaseString2 = [@"com.apple.PlatformSSO.AccessKey" lowercaseString];
  v5 = [lowercaseString hasPrefix:lowercaseString2];

  return v5;
}

+ (id)parseUserNameFromMailboxData:(id)data
{
  dataCopy = data;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POTokenHelper *)self parseUserNameFromMailboxData:dataCopy, v5];
  }

  if ([dataCopy length] <= 0x1000)
  {
    v8 = [MEMORY[0x277CC55F8] recordFromData:dataCopy];
    v6 = v8;
    if (!dataCopy)
    {
      v11 = PO_LOG_POTokenHelper();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[POTokenHelper parseUserNameFromMailboxData:];
      }

      v7 = 0;
      goto LABEL_20;
    }

    v9 = MEMORY[0x277CC55F8];
    value = [v8 value];
    v11 = [v9 sequenceOfRecordsFromData:value];

    v12 = [v11 objectAtIndexedSubscript:0];
    if ([v12 tag] == 128)
    {
      value2 = [v12 value];
      v14 = [value2 length];

      if (v14 < 0x81)
      {
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        value3 = [v12 value];
        v7 = [v16 initWithData:value3 encoding:4];
        goto LABEL_19;
      }

      value3 = PO_LOG_POTokenHelper();
      if (os_log_type_enabled(value3, OS_LOG_TYPE_ERROR))
      {
        +[POTokenHelper parseUserNameFromMailboxData:];
      }
    }

    else
    {
      value3 = PO_LOG_POTokenHelper();
      if (os_log_type_enabled(value3, OS_LOG_TYPE_ERROR))
      {
        +[POTokenHelper parseUserNameFromMailboxData:];
      }
    }

    v7 = 0;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v6 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [POTokenHelper parseUserNameFromMailboxData:dataCopy];
  }

  v7 = 0;
LABEL_21:

  return v7;
}

- (BOOL)retrieveCertAndKeyForTokenId:(id)id context:(id)context certificate:(__SecCertificate *)certificate privateKey:(__SecKey *)key
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v10 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[POTokenHelper retrieveCertAndKeyForTokenId:context:certificate:privateKey:]";
    v16 = 2114;
    v17 = idCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_DEFAULT, "%s tokenName = %{public}@ on %@", &v14, 0x20u);
  }

  if (*certificate)
  {
    CFRelease(*certificate);
    *certificate = 0;
  }

  if (*key)
  {
    CFRelease(*key);
    *key = 0;
  }

  v11 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper retrieveCertAndKeyForTokenId:context:certificate:privateKey:];
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)findTokenIdForSmartCardBoundUser:(id)user tokenHash:(id *)hash
{
  userCopy = user;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper findTokenIdForSmartCardBoundUser:tokenHash:];
  }

  return 0;
}

- (id)findTokenIdForSmartCardAMUser:(id)user tokenHash:(id *)hash
{
  userCopy = user;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper findTokenIdForSmartCardAMUser:tokenHash:];
  }

  return 0;
}

- (id)findInfoForTokenId:(id)id
{
  idCopy = id;
  v4 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper findInfoForTokenId:];
  }

  return 0;
}

- (BOOL)canTokenIdLogin:(id)login pubKeyHash:(id)hash
{
  v28 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  hashCopy = hash;
  v7 = [objc_alloc(MEMORY[0x277CC5600]) initWithTokenID:loginCopy];
  v8 = [v7 sessionWithLAContext:0 error:0];

  if (v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    keys = [v8 keys];
    v10 = [keys countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v22 = loginCopy;
      v12 = *v24;
      v13 = *MEMORY[0x277CDBF28];
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(keys);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v15 keyUsage])
          {
            keychainAttributes = [v15 keychainAttributes];
            v17 = [keychainAttributes objectForKeyedSubscript:v13];
            v18 = [v17 isEqual:hashCopy];

            if (v18)
            {
              v19 = 1;
              goto LABEL_14;
            }
          }
        }

        v11 = [keys countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_14:
      loginCopy = v22;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)postAHPCacheRefreshNotification
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (id)getTokenInfo
{
  v2 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper getTokenInfo];
  }

  return 0;
}

- (BOOL)waitForTokenAvailable:(id)available
{
  availableCopy = available;
  v4 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper waitForTokenAvailable:];
  }

  return 1;
}

- (void)getDriverConfiguration
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)insertTokenForUser:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)insertTokenForUser:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __36__POTokenHelper_insertTokenForUser___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_1();
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_25E8B1000, v4, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __36__POTokenHelper_insertTokenForUser___block_invoke_42_cold_1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_3_0(v1 v2)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __36__POTokenHelper_insertTokenForUser___block_invoke_61_cold_1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_3_0(v1 v2)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeTokenForUser:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)tokenHashDataForUser:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)parseUserNameFromMailboxData:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a1 dataToHex:a2];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25E8B1000, a3, OS_LOG_TYPE_DEBUG, "mailboxdata: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)parseUserNameFromMailboxData:(void *)a1 .cold.5(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)retrieveCertAndKeyForTokenId:context:certificate:privateKey:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)findTokenIdForSmartCardBoundUser:tokenHash:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s userName = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)findTokenIdForSmartCardAMUser:tokenHash:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s userName = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)findInfoForTokenId:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s tokenId = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getTokenInfo
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)waitForTokenAvailable:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_25E8B1000, v0, v1, "%s tokenId = %{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end
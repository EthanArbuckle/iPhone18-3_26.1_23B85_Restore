@interface POTokenHelper
+ (BOOL)tokenIsAccessKey:(id)a3;
+ (id)dataToHex:(id)a3;
+ (id)parseUserNameFromMailboxData:(id)a3;
- (BOOL)canTokenIdLogin:(id)a3 pubKeyHash:(id)a4;
- (BOOL)insertTokenForUser:(id)a3;
- (BOOL)retrieveCertAndKeyForTokenId:(id)a3 context:(id)a4 certificate:(__SecCertificate *)a5 privateKey:(__SecKey *)a6;
- (BOOL)waitForTokenAvailable:(id)a3;
- (POTokenHelper)initWithIdentifierProvider:(id)a3;
- (id)base64URLtokenHashForUser:(id)a3;
- (id)findInfoForTokenId:(id)a3;
- (id)findTokenIdForSmartCardAMUser:(id)a3 tokenHash:(id *)a4;
- (id)findTokenIdForSmartCardBoundUser:(id)a3 tokenHash:(id *)a4;
- (id)getDriverConfiguration;
- (id)getTokenInfo;
- (id)tokenHashDataForUser:(id)a3;
- (id)tokenHashForUser:(id)a3;
- (void)getDriverConfiguration;
- (void)getTokenInfo;
- (void)postAHPCacheRefreshNotification;
- (void)removeAllTokens;
- (void)removeTokenForUser:(id)a3;
@end

@implementation POTokenHelper

- (POTokenHelper)initWithIdentifierProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = POTokenHelper;
  v6 = [(POTokenHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIdentifierProvider, a3);
  }

  return v7;
}

- (id)getDriverConfiguration
{
  v2 = [MEMORY[0x277CC5620] driverConfigurations];
  v3 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper getDriverConfiguration];
  }

  v4 = [v2 objectForKeyedSubscript:@"com.apple.platformsso"];

  return v4;
}

- (BOOL)insertTokenForUser:(id)a3
{
  v146 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v141 = "[POTokenHelper insertTokenForUser:]";
    v142 = 2114;
    v143 = v4;
    v144 = 2112;
    v145 = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", buf, 0x20u);
  }

  v6 = [POConfigurationCoreManager alloc];
  v7 = [(POTokenHelper *)self userIdentifierProvider];
  v8 = [(POConfigurationCoreManager *)v6 initWithUserName:v4 identifierProvider:v7 sharedOnly:1];

  v9 = [(POConfigurationCoreManager *)v8 currentUserConfiguration];
  v10 = v9;
  if (v9)
  {
    if ([v9 userDecryptionCertificate])
    {
      v11 = [v10 userDecryptionKeyHash];

      if (v11)
      {
        v12 = [v10 userUnlockData];

        v13 = [(POTokenHelper *)self getDriverConfiguration];
        v14 = v13;
        if (!v13)
        {
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __36__POTokenHelper_insertTokenForUser___block_invoke;
          v128[3] = &unk_279A3DC48;
          v129 = v4;
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
        v15 = [v13 tokenConfigurations];
        v16 = [v15 allKeys];

        v17 = [v16 countByEnumeratingWithState:&v124 objects:v139 count:16];
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
                objc_enumerationMutation(v16);
              }

              [v14 removeTokenConfigurationForTokenInstanceID:*(*(&v124 + 1) + 8 * i)];
            }

            v18 = [v16 countByEnumeratingWithState:&v124 objects:v139 count:16];
          }

          while (v18);
        }

        [v14 removeTokenConfigurationForTokenInstanceID:v4];
        v21 = [v10 userDecryptionKeyHash];
        v22 = [POTokenHelper dataToHex:v21];
        [v14 removeTokenConfigurationForTokenInstanceID:v22];

        v23 = [v14 tokenConfigurations];
        v24 = [v10 userDecryptionKeyHash];
        v25 = [POTokenHelper dataToHex:v24];
        v26 = [v23 objectForKeyedSubscript:v25];

        if (!v26)
        {
          v27 = [v10 userDecryptionKeyHash];
          v28 = [POTokenHelper dataToHex:v27];
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

        if (!v12)
        {
          v79 = objc_alloc_init(POMutableTokenConfigJWTBody);
          [(POMutableTokenConfigJWTBody *)v79 setUserName:v4];
          v80 = [v10 userLoginConfiguration];
          v81 = [v80 loginUserName];
          v82 = v81;
          if (v81)
          {
            v83 = v81;
          }

          else
          {
            v83 = v4;
          }

          [(POMutableTokenConfigJWTBody *)v79 setLoginUserName:v83];

          v84 = [(_POJWTBodyBase *)v79 dataRepresentation];
          [v26 setConfigurationData:v84];

          v85 = [v10 userDecryptionCertificate];
          v86 = objc_alloc(MEMORY[0x277CC5628]);
          v87 = MEMORY[0x277CCACA8];
          v88 = [v10 uniqueIdentifier];
          v89 = [v87 stringWithFormat:@"certificate:%@", v88];
          v90 = [v86 initWithCertificate:v85 objectID:v89];

          v91 = objc_alloc(MEMORY[0x277CC5630]);
          v92 = [v10 userDecryptionKeyHash];
          v93 = [v91 initWithCertificate:v85 objectID:v92];

          v94 = [v10 userDecryptionKeyHash];
          v95 = [POTokenHelper dataToHex:v94];
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
        v31 = [v10 userUnlockData];
        [(POMutableTokenConfigJWTBody *)v30 setUnlockData:v31];

        v32 = [v10 userUnlockHash];
        v33 = [POTokenHelper dataToHex:v32];
        [(POMutableTokenConfigJWTBody *)v30 setUnlockHash:v33];

        v34 = [v10 unlockTokenId];
        [(POMutableTokenConfigJWTBody *)v30 setIdpTokenId:v34];

        v113 = v30;
        v35 = [(_POJWTBodyBase *)v30 dataRepresentation];
        [v26 setConfigurationData:v35];

        v36 = [v10 userDecryptionCertificate];
        v37 = objc_alloc(MEMORY[0x277CC5628]);
        v38 = MEMORY[0x277CCACA8];
        v39 = [v10 uniqueIdentifier];
        v40 = [v38 stringWithFormat:@"certificate:%@", v39];
        v41 = [v37 initWithCertificate:v36 objectID:v40];

        v42 = objc_alloc(MEMORY[0x277CC5630]);
        v43 = [v10 userDecryptionKeyHash];
        v44 = [v42 initWithCertificate:v36 objectID:v43];

        v45 = [v10 userDecryptionKeyHash];
        [v44 setApplicationTag:v45];

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

        v48 = [v14 tokenConfigurations];
        v49 = [v10 userUnlockHash];
        v50 = [POTokenHelper dataToHex:v49];
        v51 = [v48 objectForKeyedSubscript:v50];

        if (!v51)
        {
          v52 = [v10 userUnlockHash];
          v53 = [POTokenHelper dataToHex:v52];
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
        [(POMutableTokenConfigJWTBody *)v54 setUserName:v4];
        v55 = [v10 userLoginConfiguration];
        v56 = [v55 loginUserName];
        v57 = v56;
        if (v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = v4;
        }

        [(POMutableTokenConfigJWTBody *)v54 setLoginUserName:v58];

        v59 = [(_POJWTBodyBase *)v54 dataRepresentation];
        [v51 setConfigurationData:v59];

        v60 = [v10 userUnlockCertificate];
        if (v60)
        {
          v61 = SecCertificateCopyKey(v60);
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

                v73 = [v10 userUnlockHash];
                v74 = [POTokenHelper dataToHex:v73];
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

- (void)removeTokenForUser:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[POTokenHelper removeTokenForUser:]";
    v19 = 2114;
    v20 = v4;
    v21 = 2112;
    v22 = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", &v17, 0x20u);
  }

  v6 = [(POTokenHelper *)self getDriverConfiguration];
  v7 = v6;
  if (v6)
  {
    [v6 removeTokenConfigurationForTokenInstanceID:v4];
    v8 = [POConfigurationCoreManager alloc];
    v9 = [(POTokenHelper *)self userIdentifierProvider];
    v10 = [(POConfigurationCoreManager *)v8 initWithUserName:v4 identifierProvider:v9 sharedOnly:1];

    v11 = [v10 currentUserConfiguration];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 userDecryptionKeyHash];

      if (v13)
      {
        v14 = [v12 userDecryptionKeyHash];
        v15 = [POTokenHelper dataToHex:v14];
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

- (id)tokenHashForUser:(id)a3
{
  v3 = [(POTokenHelper *)self tokenHashDataForUser:a3];
  v4 = [POTokenHelper dataToHex:v3];

  return v4;
}

- (id)base64URLtokenHashForUser:(id)a3
{
  v3 = [(POTokenHelper *)self tokenHashDataForUser:a3];
  v4 = [v3 psso_base64URLEncodedString];

  return v4;
}

- (id)tokenHashDataForUser:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[POTokenHelper tokenHashDataForUser:]";
    v18 = 2114;
    v19 = v4;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", &v16, 0x20u);
  }

  v6 = [POConfigurationCoreManager alloc];
  v7 = [(POTokenHelper *)self userIdentifierProvider];
  v8 = [(POConfigurationCoreManager *)v6 initWithUserName:v4 identifierProvider:v7 sharedOnly:1];

  v9 = [(POConfigurationCoreManager *)v8 currentUserConfiguration];
  v10 = v9;
  if (v9 && [v9 userDecryptionCertificate] && (objc_msgSend(v10, "userDecryptionKeyHash"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
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

+ (id)dataToHex:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 length];
    v6 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v5];
    v7 = [v4 bytes];
    if ([v4 length])
    {
      v8 = 0;
      do
      {
        [v6 appendFormat:@"%02lX", *(v7 + v8++)];
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

+ (BOOL)tokenIsAccessKey:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [@"com.apple.PlatformSSO.AccessKey" lowercaseString];
  v5 = [v3 hasPrefix:v4];

  return v5;
}

+ (id)parseUserNameFromMailboxData:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POTokenHelper *)a1 parseUserNameFromMailboxData:v4, v5];
  }

  if ([v4 length] <= 0x1000)
  {
    v8 = [MEMORY[0x277CC55F8] recordFromData:v4];
    v6 = v8;
    if (!v4)
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
    v10 = [v8 value];
    v11 = [v9 sequenceOfRecordsFromData:v10];

    v12 = [v11 objectAtIndexedSubscript:0];
    if ([v12 tag] == 128)
    {
      v13 = [v12 value];
      v14 = [v13 length];

      if (v14 < 0x81)
      {
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v15 = [v12 value];
        v7 = [v16 initWithData:v15 encoding:4];
        goto LABEL_19;
      }

      v15 = PO_LOG_POTokenHelper();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[POTokenHelper parseUserNameFromMailboxData:];
      }
    }

    else
    {
      v15 = PO_LOG_POTokenHelper();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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
    [POTokenHelper parseUserNameFromMailboxData:v4];
  }

  v7 = 0;
LABEL_21:

  return v7;
}

- (BOOL)retrieveCertAndKeyForTokenId:(id)a3 context:(id)a4 certificate:(__SecCertificate *)a5 privateKey:(__SecKey *)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[POTokenHelper retrieveCertAndKeyForTokenId:context:certificate:privateKey:]";
    v16 = 2114;
    v17 = v9;
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_DEFAULT, "%s tokenName = %{public}@ on %@", &v14, 0x20u);
  }

  if (*a5)
  {
    CFRelease(*a5);
    *a5 = 0;
  }

  if (*a6)
  {
    CFRelease(*a6);
    *a6 = 0;
  }

  v11 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper retrieveCertAndKeyForTokenId:context:certificate:privateKey:];
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)findTokenIdForSmartCardBoundUser:(id)a3 tokenHash:(id *)a4
{
  v4 = a3;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper findTokenIdForSmartCardBoundUser:tokenHash:];
  }

  return 0;
}

- (id)findTokenIdForSmartCardAMUser:(id)a3 tokenHash:(id *)a4
{
  v4 = a3;
  v5 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper findTokenIdForSmartCardAMUser:tokenHash:];
  }

  return 0;
}

- (id)findInfoForTokenId:(id)a3
{
  v3 = a3;
  v4 = PO_LOG_POTokenHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POTokenHelper findInfoForTokenId:];
  }

  return 0;
}

- (BOOL)canTokenIdLogin:(id)a3 pubKeyHash:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CC5600]) initWithTokenID:v5];
  v8 = [v7 sessionWithLAContext:0 error:0];

  if (v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v8 keys];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v22 = v5;
      v12 = *v24;
      v13 = *MEMORY[0x277CDBF28];
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v15 keyUsage])
          {
            v16 = [v15 keychainAttributes];
            v17 = [v16 objectForKeyedSubscript:v13];
            v18 = [v17 isEqual:v6];

            if (v18)
            {
              v19 = 1;
              goto LABEL_14;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_14:
      v5 = v22;
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

- (BOOL)waitForTokenAvailable:(id)a3
{
  v3 = a3;
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
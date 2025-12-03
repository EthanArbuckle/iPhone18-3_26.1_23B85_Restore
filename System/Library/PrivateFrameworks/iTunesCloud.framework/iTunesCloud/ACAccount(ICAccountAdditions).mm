@interface ACAccount(ICAccountAdditions)
- (BOOL)ic_isSandboxed;
- (id)ic_DSID;
- (id)ic_ageVerificationExpirationDate;
- (id)ic_automaticDownloadKinds;
- (id)ic_description;
- (id)ic_privateListeningEnabledForHomeUsers;
- (id)ic_storefront;
- (id)ic_uniqueIdentifier;
- (uint64_t)ic_isActiveLockerAccount;
- (uint64_t)ic_isAutomaticDownloadsEnabledForMediaKindMusic;
- (uint64_t)ic_isITunesAccount;
- (uint64_t)ic_isManageable;
- (uint64_t)ic_isManagedAppleID;
- (uint64_t)ic_isSubscriptionStatusEnabled;
- (uint64_t)ic_isU18MinorAccount;
- (void)ic_setActiveLockerAccount:()ICAccountAdditions;
- (void)ic_setAgeVerificationExpirationDate:()ICAccountAdditions;
- (void)ic_setAutomaticDownloadKinds:()ICAccountAdditions;
- (void)ic_setManagedAppleID:()ICAccountAdditions;
- (void)ic_setPrivateListeningEnabledForHomeUsers:()ICAccountAdditions;
- (void)ic_setSandboxed:()ICAccountAdditions;
- (void)ic_setSubscriptionStatusEnabled:()ICAccountAdditions;
- (void)ic_setUniqueIdentifier:()ICAccountAdditions;
@end

@implementation ACAccount(ICAccountAdditions)

- (uint64_t)ic_isManageable
{
  v2 = +[ICDeviceInfo currentDeviceInfo];
  if (([v2 isAppleTV] & 1) == 0 && (objc_msgSend(v2, "isAudioAccessory") & 1) == 0)
  {
    ic_isActive = [self ic_isActive];
    goto LABEL_16;
  }

  isAppleTV = [v2 isAppleTV];
  ic_isActive2 = [self ic_isActive];
  if (isAppleTV)
  {
    if ((ic_isActive2 & 1) == 0)
    {
      if (([self ic_isLocalAccount] & 1) == 0)
      {
        ic_DSID = [self ic_DSID];
        ic_isActive = ic_DSID != 0;

        goto LABEL_16;
      }

LABEL_11:
      ic_isActive = 0;
      goto LABEL_16;
    }

LABEL_8:
    ic_isActive = 1;
    goto LABEL_16;
  }

  if (ic_isActive2)
  {
    goto LABEL_8;
  }

  if ([self ic_isLocalAccount])
  {
    goto LABEL_11;
  }

  ic_homeUserIdentifiers = [self ic_homeUserIdentifiers];
  if ([ic_homeUserIdentifiers count])
  {
    ic_DSID2 = [self ic_DSID];
    ic_isActive = ic_DSID2 != 0;
  }

  else
  {
    ic_isActive = 0;
  }

LABEL_16:
  return ic_isActive;
}

- (uint64_t)ic_isITunesAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E6959930]];

  if (!v4)
  {
    return 0;
  }

  v5 = +[ICDeviceInfo currentDeviceInfo];
  isMac = [v5 isMac];

  if (!isMac)
  {
    return 1;
  }

  ic_activeMediaTypes = [self ic_activeMediaTypes];
  v8 = ![ic_activeMediaTypes count] || objc_msgSend(ic_activeMediaTypes, "containsObject:", @"com.apple.AppleMediaServices.accountmediatype.itunes");

  return v8;
}

- (id)ic_DSID
{
  v1 = [self accountPropertyForKey:@"dsid"];
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v1, "longLongValue")}];

  return v2;
}

- (id)ic_description
{
  v72[0] = *MEMORY[0x1E69E9840];
  identifier = [self identifier];
  username = [self username];
  v4 = +[ICDeviceInfo currentDeviceInfo];
  isInternalBuild = [v4 isInternalBuild];

  if ((isInternalBuild & 1) == 0)
  {
    v6 = &stru_1F2C4A680;
    if (username)
    {
      v6 = username;
    }

    v7 = v6;
    memset(v67, 0, sizeof(v67));
    CC_SHA1_Init(v67);
    v8 = v7;
    CC_SHA1_Update(v67, [(__CFString *)v8 UTF8String], [(__CFString *)v8 length]);

    memset(&v68[8], 0, 64);
    *v68 = 4001;
    CC_SHA1_Final(&v68[8], v67);
    v69[0] = *v68;
    v69[1] = *&v68[16];
    v69[2] = *&v68[32];
    v69[3] = *&v68[48];
    v70 = *&v68[64];
    if (*v68 > 3999)
    {
      if (*v68 > 4255)
      {
        if (*v68 == 4256)
        {
          v50 = v69 + 8;
          v51 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
          v52 = v51;
          for (i = 0; i != 64; i += 2)
          {
            v54 = *v50++;
            v55 = &v51[i];
            *v55 = MSVFastHexStringFromBytes_hexCharacters_41965[v54 >> 4];
            v55[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v54 & 0xF];
          }

          v21 = objc_alloc(MEMORY[0x1E696AEC0]);
          v22 = v52;
          v23 = 64;
        }

        else
        {
          if (*v68 != 4512)
          {
            goto LABEL_62;
          }

          v28 = v69 + 8;
          v29 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
          v30 = v29;
          for (j = 0; j != 128; j += 2)
          {
            v32 = *v28++;
            v33 = &v29[j];
            *v33 = MSVFastHexStringFromBytes_hexCharacters_41965[v32 >> 4];
            v33[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v32 & 0xF];
          }

          v21 = objc_alloc(MEMORY[0x1E696AEC0]);
          v22 = v30;
          v23 = 128;
        }
      }

      else if (*v68 == 4000)
      {
        v40 = v69 + 8;
        v41 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
        v42 = v41;
        for (k = 0; k != 32; k += 2)
        {
          v44 = *v40++;
          v45 = &v41[k];
          *v45 = MSVFastHexStringFromBytes_hexCharacters_41965[v44 >> 4];
          v45[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v44 & 0xF];
        }

        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v22 = v42;
        v23 = 32;
      }

      else
      {
        if (*v68 != 4001)
        {
          goto LABEL_62;
        }

        v15 = v69 + 8;
        v16 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
        v17 = v16;
        for (m = 0; m != 40; m += 2)
        {
          v19 = *v15++;
          v20 = &v16[m];
          *v20 = MSVFastHexStringFromBytes_hexCharacters_41965[v19 >> 4];
          v20[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v19 & 0xF];
        }

        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v22 = v17;
        v23 = 40;
      }
    }

    else
    {
      if (*v68 <= 2999)
      {
        if (*v68 == 1000)
        {
          v34 = *(&v69[0] + 1);
          if (*(&v69[0] + 1))
          {
            v35 = v72 + 1;
            quot = *(&v69[0] + 1);
            do
            {
              v37 = lldiv(quot, 10);
              quot = v37.quot;
              if (v37.rem >= 0)
              {
                LOBYTE(v38) = v37.rem;
              }

              else
              {
                v38 = -v37.rem;
              }

              *(v35 - 2) = v38 + 48;
              v14 = (v35 - 2);
              --v35;
            }

            while (v37.quot);
            if (v34 < 0)
            {
              *(v35 - 2) = 45;
              v14 = (v35 - 2);
            }

            v13 = (v72 - v14);
            goto LABEL_40;
          }

LABEL_63:
          v56 = @"0";
          goto LABEL_52;
        }

        if (*v68 == 2000)
        {
          v9 = DWORD2(v69[0]);
          if (DWORD2(v69[0]))
          {
            v10 = v72;
            do
            {
              v11 = ldiv(v9, 10);
              v9 = v11.quot;
              if (v11.rem >= 0)
              {
                LOBYTE(v12) = v11.rem;
              }

              else
              {
                v12 = -v11.rem;
              }

              *(v10 - 1) = v12 + 48;
              v10 = (v10 - 1);
            }

            while (v11.quot);
            v13 = (v72 - v10);
            v14 = v10;
LABEL_40:
            v39 = CFStringCreateWithBytes(0, v14, v13, 0x8000100u, 0);
LABEL_51:
            v56 = v39;
LABEL_52:

            username = v56;
            goto LABEL_53;
          }

          goto LABEL_63;
        }

LABEL_62:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
        [currentHandler handleFailureInFunction:v66 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

        v56 = &stru_1F2C4A680;
        goto LABEL_52;
      }

      if (*v68 == 3000)
      {
        LODWORD(v71[0]) = bswap32(DWORD2(v69[0]));
        v46 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
        v47 = 0;
        v48 = v46 + 1;
        do
        {
          v49 = *(v71 + v47);
          *(v48 - 1) = MSVFastHexStringFromBytes_hexCharacters_41965[v49 >> 4];
          *v48 = MSVFastHexStringFromBytes_hexCharacters_41965[v49 & 0xF];
          v48 += 2;
          ++v47;
        }

        while (v47 != 4);
        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v22 = v46;
        v23 = 8;
      }

      else
      {
        if (*v68 != 3001)
        {
          goto LABEL_62;
        }

        v71[0] = bswap64(*(&v69[0] + 1));
        v24 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
        v25 = 0;
        v26 = v24 + 1;
        do
        {
          v27 = *(v71 + v25);
          *(v26 - 1) = MSVFastHexStringFromBytes_hexCharacters_41965[v27 >> 4];
          *v26 = MSVFastHexStringFromBytes_hexCharacters_41965[v27 & 0xF];
          v26 += 2;
          ++v25;
        }

        while (v25 != 8);
        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v22 = v24;
        v23 = 16;
      }
    }

    v39 = [v21 initWithBytesNoCopy:v22 length:v23 encoding:4 freeWhenDone:1];
    goto LABEL_51;
  }

LABEL_53:
  if ([self ic_isITunesAccount])
  {
    v57 = MEMORY[0x1E696AEC0];
    ic_DSID = [self ic_DSID];
    v59 = ICCreateLoggableValueForDSID(ic_DSID);
    v60 = [v57 stringWithFormat:@"<%@ (%@) [DSID=%@, isActive=%d]>", username, identifier, v59, objc_msgSend(self, "ic_isActive")];
  }

  else
  {
    accountType = [self accountType];
    identifier2 = [accountType identifier];
    v63 = [identifier2 isEqualToString:*MEMORY[0x1E69597F8]];

    if (v63)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ (%@) [primary=%d]>", username, identifier, objc_msgSend(self, "aa_isAccountClass:", *MEMORY[0x1E698B760])];
    }

    else
    {
      [self description];
    }
    v60 = ;
  }

  return v60;
}

- (id)ic_storefront
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [self accountPropertyForKey:@"storefrontID"];
  if (_NSIsNSString())
  {
    v2 = v1;
  }

  else
  {
    if (v1)
    {
      v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v6 = 138543618;
        v7 = objc_opt_class();
        v8 = 2114;
        v9 = v1;
        v4 = v7;
        _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_FAULT, "unexpected storefront value type. propertyType=%{public}@ propertyValue=%{public}@", &v6, 0x16u);
      }
    }

    v2 = 0;
  }

  return v2;
}

- (uint64_t)ic_isActiveLockerAccount
{
  v1 = [self accountPropertyForKey:@"isActiveLockerAccount"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)ic_isManagedAppleID
{
  v1 = [self accountPropertyForKey:@"isManagedAppleID"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (BOOL)ic_isSandboxed
{
  v1 = [self accountPropertyForKey:@"scope"];
  v2 = [v1 integerValue] == 1;

  return v2;
}

- (uint64_t)ic_isSubscriptionStatusEnabled
{
  v1 = [self accountPropertyForKey:@"eligibleServices"];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", 0];
  v3 = [v1 objectForKey:v2];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)ic_ageVerificationExpirationDate
{
  v1 = [self ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C498]];
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{(objc_msgSend(v1, "longLongValue") / 1000)}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ic_privateListeningEnabledForHomeUsers
{
  v1 = [self accountPropertyForKey:@"musicPrivateListeningEnabledForHomeUsers"];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  if (_NSIsNSDictionary())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __71__ACAccount_ICAccountAdditions__ic_privateListeningEnabledForHomeUsers__block_invoke;
    v4[3] = &unk_1E7BF8680;
    v5 = v2;
    [v1 enumerateKeysAndObjectsUsingBlock:v4];
  }

  return v2;
}

- (uint64_t)ic_isU18MinorAccount
{
  v0 = +[ICDefaults standardDefaults];
  cachedU18MinorAccountStatus = [v0 cachedU18MinorAccountStatus];

  return cachedU18MinorAccountStatus;
}

- (void)ic_setPrivateListeningEnabledForHomeUsers:()ICAccountAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DF90];
    v5 = a3;
    v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__ACAccount_ICAccountAdditions__ic_setPrivateListeningEnabledForHomeUsers___block_invoke;
    v8[3] = &unk_1E7BF86A8;
    v7 = v6;
    v9 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v7 = 0;
  }

  [self setAccountProperty:v7 forKey:@"musicPrivateListeningEnabledForHomeUsers"];
}

- (uint64_t)ic_isAutomaticDownloadsEnabledForMediaKindMusic
{
  v14 = *MEMORY[0x1E69E9840];
  ams_automaticDownloadKinds = [self ams_automaticDownloadKinds];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[ICUpdateAutomaticDownloadMediaKindsRequest automaticDownloadMediaKindsForMusic];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    LODWORD(v6) = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [ams_automaticDownloadKinds containsObject:*(*(&v9 + 1) + 8 * i)] & v6;
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)ic_setAutomaticDownloadKinds:()ICAccountAdditions
{
  if (a3)
  {
    allObjects = [a3 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  v5 = allObjects;
  [self setAccountProperty:allObjects forKey:@"automaticDownloadKinds"];
}

- (id)ic_automaticDownloadKinds
{
  ams_automaticDownloadKinds = [self ams_automaticDownloadKinds];
  if ([ams_automaticDownloadKinds count])
  {
    v2 = [MEMORY[0x1E695DFD8] setWithArray:ams_automaticDownloadKinds];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)ic_setSubscriptionStatusEnabled:()ICAccountAdditions
{
  v5 = [self accountPropertyForKey:@"eligibleServices"];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", 0];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v9 setObject:v11 forKey:v10];

  v12 = [v9 copy];
  [self setAccountProperty:v12 forKey:@"eligibleServices"];
}

- (void)ic_setAgeVerificationExpirationDate:()ICAccountAdditions
{
  [a3 timeIntervalSince1970];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  [self ams_setAccountFlagValue:v5 forAccountFlag:*MEMORY[0x1E698C498]];
}

- (void)ic_setManagedAppleID:()ICAccountAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setAccountProperty:v2 forKey:@"isManagedAppleID"];
}

- (void)ic_setActiveLockerAccount:()ICAccountAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setAccountProperty:v2 forKey:@"isActiveLockerAccount"];
}

- (void)ic_setSandboxed:()ICAccountAdditions
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [self setAccountProperty:v4 forKey:@"scope"];
}

- (void)ic_setUniqueIdentifier:()ICAccountAdditions
{
  stringValue = [a3 stringValue];
  [self setAccountProperty:stringValue forKey:@"dsid"];
}

- (id)ic_uniqueIdentifier
{
  v1 = [self accountPropertyForKey:@"dsid"];
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v1, "longLongValue")}];

  return v2;
}

@end
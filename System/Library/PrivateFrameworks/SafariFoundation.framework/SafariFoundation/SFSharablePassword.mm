@interface SFSharablePassword
+ (BOOL)safariCredentialURLHasPasskey:(id)passkey;
+ (id)_decryptedDataForEncryptedData:(id)data encryptionKeyReference:(id)reference;
+ (id)sharablePasswordFromData:(id)data;
+ (id)sharablePasswordFromEncryptedData:(id)data encryptionKeyReference:(id)reference;
+ (id)sharablePasswordFromURL:(id)l;
- (BOOL)_hasPasskeyData;
- (BOOL)_hasPasswordData;
- (BOOL)hasAnyCredentialData;
- (BOOL)hasPasswordWithConflicts;
- (BOOL)isEqual:(id)equal;
- (NSURL)passwordManagerURL;
- (SFSharablePassword)initWithCoder:(id)coder;
- (SFSharablePassword)initWithSavedPassword:(id)password;
- (SFSharablePassword)initWithUsername:(id)username password:(id)password displayName:(id)name highLevelDomain:(id)domain passkeyRelyingPartyID:(id)d protectionSpaces:(id)spaces;
- (id)_encryptionInformationWithNewKey;
- (id)_queryItemsForAirDropRepresentationWithEncryptionInformation:(id)information;
- (id)_savePasskeyAccount;
- (id)_savePasswordAccount;
- (id)_usernameOrEmptyString;
- (id)urlRepresentationForAirDrop;
- (unint64_t)hash;
- (void)_encryptionInformationWithNewKey;
- (void)_saveAdditionalSitesForSavedAccount:(id)account completionHandler:(id)handler;
- (void)_saveCustomTitleForSavedAccount:(id)account completionHandler:(id)handler;
- (void)_saveNotesEntryForSavedAccount:(id)account completionHandler:(id)handler;
- (void)_saveOneTimeCodeForSavedAccount:(id)account completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)savePasskeyAccountAndMergeIntoSavedPasswordAccountIfNeeded:(id)needed;
- (void)saveToKeychainWithCompletionHandler:(id)handler;
@end

@implementation SFSharablePassword

- (SFSharablePassword)initWithUsername:(id)username password:(id)password displayName:(id)name highLevelDomain:(id)domain passkeyRelyingPartyID:(id)d protectionSpaces:(id)spaces
{
  usernameCopy = username;
  passwordCopy = password;
  nameCopy = name;
  domainCopy = domain;
  dCopy = d;
  spacesCopy = spaces;
  v35.receiver = self;
  v35.super_class = SFSharablePassword;
  v20 = [(SFSharablePassword *)&v35 init];
  if (v20)
  {
    v21 = [usernameCopy copy];
    username = v20->_username;
    v20->_username = v21;

    v23 = [passwordCopy copy];
    password = v20->_password;
    v20->_password = v23;

    v25 = [nameCopy copy];
    displayName = v20->_displayName;
    v20->_displayName = v25;

    v27 = [domainCopy copy];
    highLevelDomain = v20->_highLevelDomain;
    v20->_highLevelDomain = v27;

    v29 = [dCopy copy];
    passkeyRelyingPartyID = v20->_passkeyRelyingPartyID;
    v20->_passkeyRelyingPartyID = v29;

    v31 = [spacesCopy copy];
    protectionSpaces = v20->_protectionSpaces;
    v20->_protectionSpaces = v31;

    v33 = v20;
  }

  return v20;
}

- (SFSharablePassword)initWithSavedPassword:(id)password
{
  passwordCopy = password;
  effectiveTitle = [passwordCopy effectiveTitle];
  user = [passwordCopy user];
  password = [passwordCopy password];
  highLevelDomain = [passwordCopy highLevelDomain];
  passkeyRelyingPartyID = [passwordCopy passkeyRelyingPartyID];
  protectionSpaces = [passwordCopy protectionSpaces];
  v11 = [(SFSharablePassword *)self initWithUsername:user password:password displayName:effectiveTitle highLevelDomain:highLevelDomain passkeyRelyingPartyID:passkeyRelyingPartyID protectionSpaces:protectionSpaces];

  if (v11)
  {
    additionalSites = [passwordCopy additionalSites];
    additionalSites = v11->_additionalSites;
    v11->_additionalSites = additionalSites;

    totpGenerators = [passwordCopy totpGenerators];
    firstObject = [totpGenerators firstObject];
    exportableURL = [firstObject exportableURL];
    otpAuthURL = v11->_otpAuthURL;
    v11->_otpAuthURL = exportableURL;

    notesEntry = [passwordCopy notesEntry];
    notesEntry = v11->_notesEntry;
    v11->_notesEntry = notesEntry;

    customTitle = [passwordCopy customTitle];
    customTitle = v11->_customTitle;
    v11->_customTitle = customTitle;

    _exportPasskeyCredential = [passwordCopy _exportPasskeyCredential];
    first = [_exportPasskeyCredential first];
    passkeyCredentialID = v11->_passkeyCredentialID;
    v11->_passkeyCredentialID = first;

    second = [_exportPasskeyCredential second];
    passkeyCredential = v11->_passkeyCredential;
    v11->_passkeyCredential = second;

    v27 = v11;
  }

  return v11;
}

+ (id)sharablePasswordFromEncryptedData:(id)data encryptionKeyReference:(id)reference
{
  v4 = [self _decryptedDataForEncryptedData:data encryptionKeyReference:reference];
  v5 = [SFSharablePassword sharablePasswordFromData:v4];

  return v5;
}

+ (id)sharablePasswordFromData:(id)data
{
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v11 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v11];

  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswordSharing();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SFSharablePassword sharablePasswordFromData:v9];
    }
  }

  return v5;
}

+ (id)sharablePasswordFromURL:(id)l
{
  v36 = *MEMORY[0x277D85DE8];
  lCopy = l;
  scheme = [lCopy scheme];
  v6 = [scheme isEqualToString:@"safaricredential"];

  if ((v6 & 1) == 0)
  {
    v25 = WBS_LOG_CHANNEL_PREFIXPasswordSharing();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[SFSharablePassword sharablePasswordFromURL:];
    }

    v24 = 0;
    goto LABEL_26;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  queryItems = [v7 queryItems];

  v9 = [queryItems countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v9)
  {

    v12 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v10 = v9;
  selfCopy = self;
  v30 = lCopy;
  v11 = 0;
  v12 = 0;
  v13 = *v32;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v32 != v13)
      {
        objc_enumerationMutation(queryItems);
      }

      v15 = *(*(&v31 + 1) + 8 * i);
      name = [v15 name];
      if ([name isEqualToString:@"data"])
      {
        v17 = objc_alloc(MEMORY[0x277CBEA90]);
        value = [v15 value];
        v19 = [v17 initWithBase64EncodedString:value options:0];
        v20 = v12;
        v12 = v19;
      }

      else
      {
        if (![name isEqualToString:@"key"])
        {
          goto LABEL_12;
        }

        v21 = objc_alloc(MEMORY[0x277CBEA90]);
        value = [v15 value];
        v22 = [v21 initWithBase64EncodedString:value options:0];
        v20 = v11;
        v11 = v22;
      }

LABEL_12:
    }

    v10 = [queryItems countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v10);

  if (v12)
  {
    lCopy = v30;
    if (v11)
    {
      v23 = [selfCopy _decryptedDataForEncryptedData:v12 encryptionKeyReference:v11];
      v24 = [SFSharablePassword sharablePasswordFromData:v23];

      goto LABEL_25;
    }
  }

  else
  {
    lCopy = v30;
  }

LABEL_22:
  v26 = WBS_LOG_CHANNEL_PREFIXPasswordSharing();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    +[SFSharablePassword sharablePasswordFromURL:];
  }

  v24 = 0;
LABEL_25:

LABEL_26:
  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

- (NSURL)passwordManagerURL
{
  v13[3] = *MEMORY[0x277D85DE8];
  _encryptionInformationWithNewKey = [(SFSharablePassword *)self _encryptionInformationWithNewKey];
  v12[0] = *MEMORY[0x277D49C78];
  encryptedPasswordData = [_encryptionInformationWithNewKey encryptedPasswordData];
  v4 = [encryptedPasswordData base64EncodedStringWithOptions:0];
  v13[0] = v4;
  v12[1] = *MEMORY[0x277D49C80];
  encryptionKeyReference = [_encryptionInformationWithNewKey encryptionKeyReference];
  v6 = [encryptionKeyReference base64EncodedStringWithOptions:0];
  v12[2] = *MEMORY[0x277D49C60];
  v7 = *MEMORY[0x277D49C58];
  v13[1] = v6;
  v13[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x277D49A98] passwordManagerURLWithDictionary:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)urlRepresentationForAirDrop
{
  _encryptionInformationWithNewKey = [(SFSharablePassword *)self _encryptionInformationWithNewKey];
  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"safaricredential"];
  v5 = [(SFSharablePassword *)self _queryItemsForAirDropRepresentationWithEncryptionInformation:_encryptionInformationWithNewKey];
  [v4 setQueryItems:v5];

  v6 = [v4 URL];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      username = self->_username;
      username = [(SFSharablePassword *)v5 username];
      if ([(NSString *)username isEqualToString:username])
      {
        password = self->_password;
        password = [(SFSharablePassword *)v5 password];
        if ([(NSString *)password isEqualToString:password])
        {
          displayName = self->_displayName;
          displayName = [(SFSharablePassword *)v5 displayName];
          if ([(NSString *)displayName isEqualToString:displayName])
          {
            highLevelDomain = self->_highLevelDomain;
            highLevelDomain = [(SFSharablePassword *)v5 highLevelDomain];
            if ([(NSString *)highLevelDomain isEqualToString:highLevelDomain])
            {
              additionalSites = self->_additionalSites;
              additionalSites = [(SFSharablePassword *)v5 additionalSites];
              if (WBSIsEqual())
              {
                otpAuthURL = self->_otpAuthURL;
                otpAuthURL = [(SFSharablePassword *)v5 otpAuthURL];
                if (WBSIsEqual())
                {
                  notesEntry = self->_notesEntry;
                  notesEntry = [(SFSharablePassword *)v5 notesEntry];
                  if (WBSIsEqual())
                  {
                    customTitle = self->_customTitle;
                    customTitle = [(SFSharablePassword *)v5 customTitle];
                    if (WBSIsEqual())
                    {
                      passkeyCredentialID = self->_passkeyCredentialID;
                      passkeyCredentialID = [(SFSharablePassword *)v5 passkeyCredentialID];
                      if (WBSIsEqual())
                      {
                        passkeyCredential = self->_passkeyCredential;
                        passkeyCredential = [(SFSharablePassword *)v5 passkeyCredential];
                        if (WBSIsEqual())
                        {
                          passkeyRelyingPartyID = self->_passkeyRelyingPartyID;
                          passkeyRelyingPartyID = [(SFSharablePassword *)v5 passkeyRelyingPartyID];
                          if (WBSIsEqual())
                          {
                            protectionSpaces = self->_protectionSpaces;
                            protectionSpaces = [(SFSharablePassword *)v5 protectionSpaces];
                            v25 = [(NSArray *)protectionSpaces isEqual:protectionSpaces];
                          }

                          else
                          {
                            v25 = 0;
                          }
                        }

                        else
                        {
                          v25 = 0;
                        }
                      }

                      else
                      {
                        v25 = 0;
                      }
                    }

                    else
                    {
                      v25 = 0;
                    }
                  }

                  else
                  {
                    v25 = 0;
                  }
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_username hash];
  v4 = [(NSString *)self->_password hash]^ v3;
  v5 = [(NSString *)self->_displayName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_highLevelDomain hash];
  v7 = [(NSArray *)self->_protectionSpaces hash];
  v8 = v7 ^ [(NSURL *)self->_otpAuthURL hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_notesEntry hash];
  v10 = [(NSString *)self->_customTitle hash];
  v11 = v10 ^ [(NSArray *)self->_additionalSites hash];
  v12 = v11 ^ [(NSData *)self->_passkeyCredentialID hash];
  v13 = v9 ^ v12 ^ [(NSData *)self->_passkeyCredential hash];
  return v13 ^ [(NSString *)self->_passkeyRelyingPartyID hash];
}

+ (BOOL)safariCredentialURLHasPasskey:(id)passkey
{
  v3 = [MEMORY[0x277CCACE0] componentsWithURL:passkey resolvingAgainstBaseURL:0];
  queryItems = [v3 queryItems];
  v5 = [queryItems safari_containsObjectPassingTest:&__block_literal_global_9];

  return v5;
}

uint64_t __52__SFSharablePassword_safariCredentialURLHasPasskey___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"hasPasskey"];

  return v3;
}

- (id)_queryItemsForAirDropRepresentationWithEncryptionInformation:(id)information
{
  informationCopy = information;
  encryptedPasswordData = [informationCopy encryptedPasswordData];
  v6 = [encryptedPasswordData base64EncodedStringWithOptions:0];

  encryptionKeyReference = [informationCopy encryptionKeyReference];

  v8 = [encryptionKeyReference base64EncodedStringWithOptions:0];

  v9 = MEMORY[0x277CBEB18];
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"data" value:v6];
  v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"key" value:v8];
  v12 = [v9 arrayWithObjects:{v10, v11, 0}];

  passkeyCredential = [(SFSharablePassword *)self passkeyCredential];

  if (passkeyCredential)
  {
    v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"hasPasskey" value:0];
    [v12 addObject:v14];
  }

  return v12;
}

- (SFSharablePassword)initWithCoder:(id)coder
{
  v38[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"highLevelDomain"];
  v9 = MEMORY[0x277CBEB98];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"protectionSpaces"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passkeyCredentialRelyingPartyID"];
  v14 = [(SFSharablePassword *)self initWithUsername:v5 password:v6 displayName:v7 highLevelDomain:v8 passkeyRelyingPartyID:v13 protectionSpaces:v12];
  if (v14)
  {
    v15 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"additionalSites"];
    additionalSites = v14->_additionalSites;
    v14->_additionalSites = v15;
    v37 = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otp"];
    otpAuthURL = v14->_otpAuthURL;
    v14->_otpAuthURL = v17;
    v36 = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
    v20 = v12;
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v5;
    notesEntry = v14->_notesEntry;
    v14->_notesEntry = v19;
    v35 = v19;

    v5 = v24;
    v6 = v23;
    v7 = v22;
    v8 = v21;
    v12 = v20;
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    customTitle = v14->_customTitle;
    v14->_customTitle = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passkeyCredentialID"];
    passkeyCredentialID = v14->_passkeyCredentialID;
    v14->_passkeyCredentialID = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passkeyCredential"];
    passkeyCredential = v14->_passkeyCredential;
    v14->_passkeyCredential = v30;

    v32 = v14;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  username = self->_username;
  coderCopy = coder;
  [coderCopy encodeObject:username forKey:@"username"];
  [coderCopy encodeObject:self->_password forKey:@"password"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_highLevelDomain forKey:@"highLevelDomain"];
  [coderCopy encodeObject:self->_additionalSites forKey:@"additionalSites"];
  [coderCopy encodeObject:self->_otpAuthURL forKey:@"otp"];
  [coderCopy encodeObject:self->_notesEntry forKey:@"notes"];
  [coderCopy encodeObject:self->_customTitle forKey:@"title"];
  [coderCopy encodeObject:self->_protectionSpaces forKey:@"protectionSpaces"];
  [coderCopy encodeObject:self->_passkeyCredentialID forKey:@"passkeyCredentialID"];
  [coderCopy encodeObject:self->_passkeyCredential forKey:@"passkeyCredential"];
  [coderCopy encodeObject:self->_passkeyRelyingPartyID forKey:@"passkeyCredentialRelyingPartyID"];
}

- (id)_encryptionInformationWithNewKey
{
  v40[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v6 = [v3 stringWithFormat:@"com.apple.passwordsharing.%f", v5];

  v7 = [v6 dataUsingEncoding:4];
  v8 = *MEMORY[0x277CDC060];
  v9 = *MEMORY[0x277CDC018];
  v39[0] = *MEMORY[0x277CDC028];
  v39[1] = v9;
  v40[0] = v8;
  v40[1] = &unk_287602130;
  v10 = MEMORY[0x277CBEC38];
  v11 = *MEMORY[0x277CDC5C8];
  v40[2] = MEMORY[0x277CBEC38];
  v12 = *MEMORY[0x277CDC4F0];
  v39[2] = v11;
  v39[3] = v12;
  v13 = *MEMORY[0x277CDBF30];
  v37[0] = *MEMORY[0x277CDBFD0];
  v37[1] = v13;
  v38[0] = MEMORY[0x277CBEC38];
  v38[1] = v7;
  v14 = *MEMORY[0x277CDBEC8];
  v37[2] = *MEMORY[0x277CDC140];
  v37[3] = v14;
  v38[2] = MEMORY[0x277CBEC28];
  v38[3] = @"com.apple.sharing.safaripasswordsharing";
  v37[4] = *MEMORY[0x277CDBFB0];
  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:86400.0];
  v38[4] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];
  v40[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];

  error = 0;
  v18 = SecKeyCreateRandomKey(v17, &error);
  if (v18)
  {
    v19 = v18;
    v20 = SecKeyCopyPublicKey(v18);
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v22 = SecKeyCreateEncryptedData(v20, *MEMORY[0x277CDC360], v21, &error);
    CFRelease(v19);
    CFRelease(v20);
    if (v22)
    {
      result = 0;
      v23 = *MEMORY[0x277CDC228];
      v35[0] = *MEMORY[0x277CDC560];
      v35[1] = v23;
      v24 = *MEMORY[0x277CDC250];
      v36[0] = v10;
      v36[1] = v24;
      v35[2] = v13;
      v36[2] = v7;
      if (!SecItemCopyMatching([MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3], &result))
      {
        v30 = result;
        v27 = [[_SFSharablePasswordEncryptionInformation alloc] initWithEncryptedPasswordData:v22 encryptionKeyReference:result];

        goto LABEL_14;
      }

      v25 = WBS_LOG_CHANNEL_PREFIXPasswordSharing();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [SFSharablePassword _encryptionInformationWithNewKey];
      }
    }

    else
    {
      v28 = error;
      v29 = WBS_LOG_CHANNEL_PREFIXPasswordSharing();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(SFSharablePassword *)v29 _encryptionInformationWithNewKey];
      }
    }

    v27 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v21 = error;
  v26 = WBS_LOG_CHANNEL_PREFIXPasswordSharing();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [(SFSharablePassword *)v26 _encryptionInformationWithNewKey];
  }

  v27 = 0;
LABEL_15:

  v31 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_decryptedDataForEncryptedData:(id)data encryptionKeyReference:(id)reference
{
  v19[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  referenceCopy = reference;
  result = 0;
  v7 = *MEMORY[0x277CDC228];
  v18[0] = *MEMORY[0x277CDC5F0];
  v18[1] = v7;
  v8 = *MEMORY[0x277CDC250];
  v19[0] = referenceCopy;
  v19[1] = v8;
  v18[2] = *MEMORY[0x277CDC568];
  v19[2] = MEMORY[0x277CBEC38];
  if (SecItemCopyMatching([MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3], &result))
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswordSharing();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SFSharablePassword _decryptedDataForEncryptedData:encryptionKeyReference:];
    }

    v10 = 0;
  }

  else
  {
    error = 0;
    v10 = SecKeyCreateDecryptedData(result, *MEMORY[0x277CDC360], dataCopy, &error);
    CFRelease(result);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v12 = error;
      v13 = WBS_LOG_CHANNEL_PREFIXPasswordSharing();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SFSharablePassword _decryptedDataForEncryptedData:v13 encryptionKeyReference:?];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)hasAnyCredentialData
{
  if ([(SFSharablePassword *)self _hasPasskeyData])
  {
    return 1;
  }

  return [(SFSharablePassword *)self _hasPasswordData];
}

- (BOOL)hasPasswordWithConflicts
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(SFSharablePassword *)self _hasPasswordData])
  {
    mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
    _usernameOrEmptyString = [(SFSharablePassword *)self _usernameOrEmptyString];
    password = [(SFSharablePassword *)self password];
    highLevelDomain = [(SFSharablePassword *)self highLevelDomain];
    notesEntry = [(SFSharablePassword *)self notesEntry];
    customTitle = [(SFSharablePassword *)self customTitle];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [(SFSharablePassword *)self protectionSpaces];
    v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      v11 = *MEMORY[0x277D49C38];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(obj);
          }

          if (![mEMORY[0x277D49B58] canSaveUser:_usernameOrEmptyString password:password forProtectionSpace:*(*(&v16 + 1) + 8 * i) highLevelDomain:highLevelDomain notes:notesEntry customTitle:customTitle groupID:v11 error:0])
          {
            LOBYTE(v9) = 1;
            goto LABEL_13;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)saveToKeychainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _savePasswordAccount = [(SFSharablePassword *)self _savePasswordAccount];
  _savePasskeyAccount = [(SFSharablePassword *)self _savePasskeyAccount];
  v7 = _savePasskeyAccount;
  if (_savePasswordAccount && _savePasskeyAccount)
  {
    mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
    [mEMORY[0x277D49B58] _mergeSavedAccountWithPasskey:v7 toSavedAccountWithPassword:_savePasswordAccount];
  }

  if (_savePasswordAccount)
  {
    v9 = _savePasswordAccount;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  if (v10)
  {
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__SFSharablePassword_AccountSavingExtras__saveToKeychainWithCompletionHandler___block_invoke;
    v25[3] = &unk_279B613D8;
    v12 = v11;
    v26 = v12;
    [(SFSharablePassword *)self _saveAdditionalSitesForSavedAccount:v10 completionHandler:v25];
    dispatch_group_enter(v12);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __79__SFSharablePassword_AccountSavingExtras__saveToKeychainWithCompletionHandler___block_invoke_2;
    v23[3] = &unk_279B613D8;
    v13 = v12;
    v24 = v13;
    [(SFSharablePassword *)self _saveNotesEntryForSavedAccount:v10 completionHandler:v23];
    dispatch_group_enter(v13);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __79__SFSharablePassword_AccountSavingExtras__saveToKeychainWithCompletionHandler___block_invoke_3;
    v21[3] = &unk_279B613D8;
    v14 = v13;
    v22 = v14;
    [(SFSharablePassword *)self _saveCustomTitleForSavedAccount:v10 completionHandler:v21];
    dispatch_group_enter(v14);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __79__SFSharablePassword_AccountSavingExtras__saveToKeychainWithCompletionHandler___block_invoke_4;
    v19[3] = &unk_279B613D8;
    v20 = v14;
    v15 = v14;
    [(SFSharablePassword *)self _saveOneTimeCodeForSavedAccount:v10 completionHandler:v19];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__SFSharablePassword_AccountSavingExtras__saveToKeychainWithCompletionHandler___block_invoke_5;
    v16[3] = &unk_279B617F0;
    v18 = handlerCopy;
    v17 = v10;
    dispatch_group_notify(v15, MEMORY[0x277D85CD0], v16);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)savePasskeyAccountAndMergeIntoSavedPasswordAccountIfNeeded:(id)needed
{
  neededCopy = needed;
  _savePasskeyAccount = [(SFSharablePassword *)self _savePasskeyAccount];
  if (_savePasskeyAccount)
  {
    mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
    [mEMORY[0x277D49B58] _mergeSavedAccountWithPasskey:_savePasskeyAccount toSavedAccountWithPassword:neededCopy];
  }
}

- (id)_usernameOrEmptyString
{
  username = [(SFSharablePassword *)self username];
  v3 = username;
  if (username)
  {
    v4 = username;
  }

  else
  {
    v4 = &stru_2875FD420;
  }

  v5 = v4;

  return v4;
}

- (BOOL)_hasPasswordData
{
  password = [(SFSharablePassword *)self password];
  if ([password length])
  {
    highLevelDomain = [(SFSharablePassword *)self highLevelDomain];
    if ([highLevelDomain length])
    {
      protectionSpaces = [(SFSharablePassword *)self protectionSpaces];
      v6 = [protectionSpaces count] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_hasPasskeyData
{
  passkeyCredential = [(SFSharablePassword *)self passkeyCredential];
  if ([passkeyCredential length])
  {
    passkeyCredentialID = [(SFSharablePassword *)self passkeyCredentialID];
    if ([passkeyCredentialID length])
    {
      highLevelDomain = [(SFSharablePassword *)self highLevelDomain];
      v6 = [highLevelDomain length] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_savePasswordAccount
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(SFSharablePassword *)self _hasPasswordData])
  {
    mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
    _usernameOrEmptyString = [(SFSharablePassword *)self _usernameOrEmptyString];
    password = [(SFSharablePassword *)self password];
    highLevelDomain = [(SFSharablePassword *)self highLevelDomain];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [(SFSharablePassword *)self protectionSpaces];
    v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      v11 = *MEMORY[0x277D49C38];
      do
      {
        v12 = 0;
        v13 = v9;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [mEMORY[0x277D49B58] saveUser:_usernameOrEmptyString password:password forProtectionSpace:*(*(&v17 + 1) + 8 * v12) highLevelDomain:highLevelDomain groupID:v11];

          ++v12;
          v13 = v9;
        }

        while (v8 != v12);
        v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_savePasskeyAccount
{
  if ([(SFSharablePassword *)self _hasPasskeyData])
  {
    v3 = objc_alloc(MEMORY[0x277D49A80]);
    passkeyCredentialID = [(SFSharablePassword *)self passkeyCredentialID];
    passkeyCredential = [(SFSharablePassword *)self passkeyCredential];
    v6 = [v3 initWithFirst:passkeyCredentialID second:passkeyCredential];

    mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
    _usernameOrEmptyString = [(SFSharablePassword *)self _usernameOrEmptyString];
    passkeyRelyingPartyID = [(SFSharablePassword *)self passkeyRelyingPartyID];
    v10 = [mEMORY[0x277D49B58] _saveUser:_usernameOrEmptyString passkeyCredential:v6 passkeyRelyingPartyID:passkeyRelyingPartyID];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_saveAdditionalSitesForSavedAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  additionalSites = [(SFSharablePassword *)self additionalSites];
  if ([additionalSites count])
  {
    mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
    [mEMORY[0x277D49B58] saveAdditionalSites:additionalSites forSavedAccount:accountCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_saveNotesEntryForSavedAccount:(id)account completionHandler:(id)handler
{
  v6 = MEMORY[0x277D49B58];
  handlerCopy = handler;
  accountCopy = account;
  sharedStore = [v6 sharedStore];
  notesEntry = [(SFSharablePassword *)self notesEntry];
  [sharedStore saveNotesEntry:notesEntry forSavedAccount:accountCopy completionHandler:handlerCopy];
}

- (void)_saveCustomTitleForSavedAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  customTitle = [(SFSharablePassword *)self customTitle];
  if ([customTitle length])
  {
    mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
    [mEMORY[0x277D49B58] saveCustomTitle:customTitle forSavedAccount:accountCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_saveOneTimeCodeForSavedAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  otpAuthURL = [(SFSharablePassword *)self otpAuthURL];
  if (otpAuthURL)
  {
    v8 = [objc_alloc(MEMORY[0x277D49B78]) initWithOTPAuthURL:otpAuthURL];
    if (v8)
    {
      mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
      [mEMORY[0x277D49B58] saveTOTPGenerator:v8 forSavedAccount:accountCopy completionHandler:handlerCopy];
    }

    else
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

+ (void)sharablePasswordFromData:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26450F000, v4, v5, "Failed to unarchive sharable password with error %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_encryptionInformationWithNewKey
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  safari_privacyPreservingDescription = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26450F000, v4, v5, "Failed to create private key with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_decryptedDataForEncryptedData:encryptionKeyReference:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_decryptedDataForEncryptedData:(void *)a1 encryptionKeyReference:.cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26450F000, v4, v5, "Failed to decrypt password data with error %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end
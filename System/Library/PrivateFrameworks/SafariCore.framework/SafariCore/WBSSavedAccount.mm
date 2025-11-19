@interface WBSSavedAccount
+ (BOOL)_shouldUseFuzzyStringMatchingForMatchingType:(int64_t)a3;
+ (id)fuzzyMatchString:(id)a3 with:(id)a4 matchingType:(int64_t)a5;
+ (id)searchMatchWithTokenizer:(__CFStringTokenizer *)a3 string:(id)a4 searchPattern:(id)a5 matchingType:(int64_t)a6;
+ (id)searchPatternForWebsiteComparisonFromSearchPattern:(id)a3;
+ (void)enumerateRangesMatchingPatternWithTokenizer:(__CFStringTokenizer *)a3 string:(id)a4 pattern:(id)a5 matchingType:(int64_t)a6 withBlock:(id)a7;
- (BOOL)_allSitesHaveSameNonDefaultPort:(int64_t *)a3;
- (BOOL)_canMergeWithSavedAccount:(id)a3 requiresDataCopying:(BOOL *)a4;
- (BOOL)_computeHasValidWebsite;
- (BOOL)_containsProtectionSpace:(id)a3;
- (BOOL)_isSidecarDataForCredentialMergingCompatible:(id)a3;
- (BOOL)_isSidecarDataForCredentialMergingEqual:(id)a3;
- (BOOL)canBeDeletedByServiceViaCredentialUpdater;
- (BOOL)canBeExportedToPasswordsCSVFile;
- (BOOL)canBeExportedViaCredentialExchange;
- (BOOL)canUserEditSavedAccount;
- (BOOL)hasPasswordSidecars;
- (BOOL)hasProtectionSpace:(id)a3;
- (BOOL)hasProtectionSpaceForAdditionalSite:(id)a3;
- (BOOL)hasProtectionSpaceWithHighLevelDomainMatchingProtectionSpace:(id)a3;
- (BOOL)hasSidecarData;
- (BOOL)hasSidecarDataToConsiderForCredentialMerging;
- (BOOL)hasValidWebsite;
- (BOOL)isCurrentUserOriginalContributor;
- (BOOL)isDuplicateWithoutUserNameOfSavedAccount:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForMovingSharedSavedAccountsBackToPersonalKeychainOnGroupExit:(id)a3;
- (BOOL)isEqualForSuggestingDuplicatesCleanup:(id)a3;
- (BOOL)isOneTimeSharable;
- (BOOL)markOriginalContributorParticipantID;
- (BOOL)markParticipantIDThatMovedSavedAccountToRecentlyDeleted;
- (BOOL)matchesServiceNameHintString:(id)a3;
- (BOOL)shouldOverrideRecentlyDeletedSavedAccountWhenDeleted:(id)a3;
- (BOOL)stringMatchesPatternWithTokenizer:(__CFStringTokenizer *)a3 string:(id)a4 pattern:(id)a5 matchingType:(int64_t)a6;
- (NSArray)additionalSites;
- (NSArray)allPasswordSidecars;
- (NSArray)allSidecars;
- (NSArray)historyItems;
- (NSArray)personalHistoryItems;
- (NSArray)protectionSpaces;
- (NSArray)protectionSpacesForAdditionalSites;
- (NSArray)protectionSpacesIncludingAdditionalSites;
- (NSArray)sharedHistoryItems;
- (NSArray)sites;
- (NSArray)sitesAndAdditionalSites;
- (NSArray)totpGenerators;
- (NSArray)userVisibleSites;
- (NSDate)creationDate;
- (NSDate)lastModifiedDate;
- (NSDate)lastOneTimeShareDateForPasskey;
- (NSDate)lastRecentlyDeletedNotificationDate;
- (NSDate)lastUsedDateAcrossAllContextsAndSites;
- (NSMutableArray)_allPasswordSidecarsAsMutableArray;
- (NSString)currentOneTimeCode;
- (NSString)customTitle;
- (NSString)effectiveTitle;
- (NSString)effectiveTitleForSorting;
- (NSString)monogramCharacter;
- (NSString)notesEntry;
- (NSString)originalContributorParticipantID;
- (NSString)participantIDThatMovedSavedAccountToRecentlyDeleted;
- (NSString)sharedGroupName;
- (NSString)uniqueIdentifierForPasswordManagerLegacy;
- (NSString)userVisibleDomain;
- (NSURL)wellKnownChangePasswordURL;
- (WBSFileVaultRecoveryKeyDeviceInfo)fileVaultRecoveryKeyDeviceInfo;
- (WBSPasswordWarningHideMarker)hideWarningMarker;
- (id)_allSidecarsForSite:(id)a3;
- (id)_copyPasskeyCredentialToNewSavedAccount;
- (id)_copyPasswordCredentialToNewSavedAccount;
- (id)_exportPasskeyCredential;
- (id)_firstSidecarForAnySiteOfType:(int64_t)a3 inSitesToSidecars:(id)a4 passkeySidecars:(id)a5;
- (id)_formerlySharedMarkerForCredentialType:(int64_t)a3;
- (id)_highLevelDomainWithPortIncluded;
- (id)_initWithHighLevelDomain:(id)a3 passkeyRelyingPartyID:(id)a4 user:(id)a5 password:(id)a6 passkeyUserHandle:(id)a7 passkeyCredentialID:(id)a8 siteToProtectionSpaces:(id)a9 sitesToSidecars:(id)a10 serviceName:(id)a11;
- (id)_initWithHighLevelDomain:(id)a3 user:(id)a4 password:(id)a5;
- (id)_initWithPasskeyRelyingPartyID:(id)a3 user:(id)a4 passkeyUserHandle:(id)a5 passkeyCredentialID:(id)a6;
- (id)_initWithSignInWithAppleAccount:(id)a3;
- (id)_movePasskeyCredentialToNewSavedAccount;
- (id)_movePasswordCredentialToNewSavedAccount;
- (id)_passkeySidecarOfType:(int64_t)a3;
- (id)_quirksForServiceName:(id)a3;
- (id)_searchMatchForSearchPattern:(id)a3 matchAgainstUser:(BOOL)a4 associatedDomains:(id)a5;
- (id)_sidecarForSite:(id)a3 ofType:(int64_t)a4;
- (id)_stringMatchesPatternWithTokenizer:(__CFStringTokenizer *)a3 string:(id)a4 pattern:(id)a5 matchingType:(int64_t)a6;
- (id)description;
- (id)lastUsedDateAcrossAllContextsForSite:(id)a3;
- (id)lastUsedDateForSite:(id)a3 inContext:(id)a4;
- (id)stableIDString;
- (id)totpGeneratorForSite:(id)a3;
- (int64_t)compare:(id)a3 byType:(int64_t)a4;
- (int64_t)credentialTypes;
- (unint64_t)hash;
- (void)_addFileVaultRecoveryKeyMetadataFromUniqueIdentifier:(id)a3;
- (void)_addPasskeySidecar:(id)a3;
- (void)_addPasswordCredentialCreationDate:(id)a3;
- (void)_addPasswordCredentialModificationDate:(id)a3;
- (void)_addProtectionSpace:(id)a3 forSite:(id)a4 isDefaultCredentialForSite:(BOOL)a5;
- (void)_addSidecar:(id)a3 forSite:(id)a4;
- (void)_adoptSitesFromSavedAccount:(id)a3;
- (void)_clearFormerlySharedSavedAccountMarkerForCredentialTypes:(int64_t)a3;
- (void)_clearFormerlySharedSavedAccountMarkerForCredentialTypesIfNecessary:(int64_t)a3;
- (void)_copyHistoryItemsFromSharedSidecarToPersonalSidecarAndSetupNewSharedSidecarForGroupID:(id)a3;
- (void)_copySharableDataFromPersonalSidecarToSharedSidecarInDictionary:(id)a3;
- (void)_copySharableDataFromSharedSidecarIntoPersonalSidecarInDictionary:(id)a3;
- (void)_copySharablePasswordSidecarDataFromPersonalSidecarsToSharedSidecars;
- (void)_copySharablePasswordSidecarDataFromSharedSidecarsToPersonalSidecars;
- (void)_createSidecarsForProtectionSpaceIfNecessary:(id)a3;
- (void)_deleteCredentialForProtectionSpace:(id)a3 fromStorage:(id)a4 forGroupID:(id)a5;
- (void)_deleteCredentialTypes:(int64_t)a3;
- (void)_deletePasskeyCredentialForGroupID:(id)a3;
- (void)_deletePasskeyCredentialRemovingCachedCredentialData:(BOOL)a3;
- (void)_deletePasswordCredentialsForGroupID:(id)a3;
- (void)_deletePasswordCredentialsForSite:(id)a3;
- (void)_deletePasswordCredentialsForSite:(id)a3 forGroupID:(id)a4;
- (void)_deletePasswordCredentialsRemovingCachedCredentialData:(BOOL)a3;
- (void)_deleteSidecarForPasskeyCredentialForGroupID:(id)a3;
- (void)_deleteSidecarForProtectionSpace:(id)a3 fromStorage:(id)a4 forGroupID:(id)a5;
- (void)_deleteTOTPGeneratorIfNecessary;
- (void)_removePasskeyCredentialAndSidecars;
- (void)_removePasswordCredentialAndSidecars;
- (void)_removeSharableDataFromPersonalPasskeySidecars;
- (void)_setUser:(id)a3 password:(id)a4;
- (void)_updatePasskeySidecarsIfNecessaryWithBlock:(id)a3;
- (void)_updatePasswordSidecarsIfNecessaryWithBlock:(id)a3;
- (void)_updateSidecarsWithHistoryItems:(id)a3 sharedSidecar:(id)a4;
- (void)_writeFormerlySharedSavedAccountMarkerForCredentialTypes:(int64_t)a3;
- (void)addItemToAccountHistory:(id)a3;
- (void)clearParticipantIDThatMovedSavedAccountToRecentlyDeleted;
- (void)deleteItemFromAccountHistory:(id)a3;
- (void)enumeratePasskeySidecarsWithBlock:(id)a3;
- (void)enumeratePasswordSidecarsWithBlock:(id)a3;
- (void)setAdditionalSites:(id)a3;
- (void)setCustomTitle:(id)a3 performSidecarUpdate:(BOOL)a4;
- (void)setFileVaultRecoveryKeyDeviceInfo:(id)a3;
- (void)setLastRecentlyDeletedNotificationDate:(id)a3;
- (void)setLastUsedDate:(id)a3 forSite:(id)a4 inContext:(id)a5;
- (void)setNotesEntry:(id)a3;
- (void)setPassword:(id)a3;
- (void)setTOTPGenerator:(id)a3;
@end

@implementation WBSSavedAccount

- (NSArray)protectionSpaces
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  siteToProtectionSpaces = self->_siteToProtectionSpaces;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__WBSSavedAccount_protectionSpaces__block_invoke;
  v7[3] = &unk_1E7CF4160;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)siteToProtectionSpaces enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (NSString)effectiveTitleForSorting
{
  v3 = [(WBSSavedAccount *)self customTitle];
  if ([v3 length])
  {
    v4 = [(WBSSavedAccount *)self customTitle];
  }

  else
  {
    v4 = self->_serviceName;
  }

  v5 = v4;

  if ([(NSString *)v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = [(WBSSavedAccount *)self highLevelDomain];
    v6 = [v7 _lp_userVisibleHost];
  }

  return v6;
}

- (NSString)customTitle
{
  v3 = [(WBSSavedAccount *)self isSavedInSharedGroup];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__15;
  v17 = __Block_byref_object_dispose__15;
  v18 = 0;
  sitesToSidecars = self->_sitesToSidecars;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__WBSSavedAccount_customTitle__block_invoke;
  v11[3] = &unk_1E7CF3F98;
  v12 = v3;
  v11[4] = &v13;
  [(NSMutableDictionary *)sitesToSidecars enumerateKeysAndObjectsUsingBlock:v11];
  v5 = [(WBSSavedAccount *)self isSavedInSharedGroup];
  v6 = v14[5];
  if (!v5)
  {
    if (!v6)
    {
      v7 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E498];
      v8 = [v7 customTitle];
      goto LABEL_7;
    }

LABEL_5:
    v9 = v6;
    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_5;
  }

  v7 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E480];
  v8 = [v7 customTitle];
LABEL_7:
  v9 = v8;

LABEL_8:
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __30__WBSSavedAccount_customTitle__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if (*(a1 + 40) == 1)
  {
    v7 = &unk_1F308E480;
  }

  else
  {
    v7 = &unk_1F308E498;
  }

  v8 = [a3 objectForKeyedSubscript:v7];
  obj = [v8 customTitle];

  v9 = obj;
  if (obj)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    v9 = obj;
    *a4 = 1;
  }
}

- (NSArray)additionalSites
{
  v2 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:[(WBSSavedAccount *)self isSavedInSharedGroup]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 additionalSites];
    v5 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_80];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (int64_t)credentialTypes
{
  password = self->_password;
  v3 = password == 0;
  v4 = password != 0;
  v5 = 2;
  if (!v3)
  {
    v5 = 3;
  }

  if (self->_passkeyCredentialID)
  {
    v4 = v5;
  }

  if (self->_signInWithAppleAccount)
  {
    v4 |= 4uLL;
  }

  if (self->_recoveryKeySerialNumber && self->_recoveryKeyVolumeID)
  {
    return v4 | 8;
  }

  return v4;
}

- (id)_initWithHighLevelDomain:(id)a3 passkeyRelyingPartyID:(id)a4 user:(id)a5 password:(id)a6 passkeyUserHandle:(id)a7 passkeyCredentialID:(id)a8 siteToProtectionSpaces:(id)a9 sitesToSidecars:(id)a10 serviceName:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v56 = a9;
  v55 = a10;
  v23 = v17;
  v24 = a11;
  v57.receiver = self;
  v57.super_class = WBSSavedAccount;
  v25 = [(WBSSavedAccount *)&v57 init];
  v26 = v25;
  if (v25)
  {
    v25->_lock._os_unfair_lock_opaque = 0;
    v54 = v23;
    v27 = [v23 copy];
    highLevelDomain = v26->_highLevelDomain;
    v26->_highLevelDomain = v27;

    v53 = v18;
    v29 = [v18 copy];
    passkeyRelyingPartyID = v26->_passkeyRelyingPartyID;
    v26->_passkeyRelyingPartyID = v29;

    v31 = [v19 copy];
    user = v26->_user;
    v26->_user = v31;

    v33 = v26->_user;
    v34 = +[WBSDontSaveMarker dontSaveMarker];
    v26->_userIsNeverSaveMarker = [(NSString *)v33 isEqualToString:v34];

    v35 = [v20 copy];
    password = v26->_password;
    v26->_password = v35;

    v37 = [v21 copy];
    passkeyUserHandle = v26->_passkeyUserHandle;
    v26->_passkeyUserHandle = v37;

    v39 = [v22 copy];
    passkeyCredentialID = v26->_passkeyCredentialID;
    v26->_passkeyCredentialID = v39;

    v41 = [MEMORY[0x1E695DF90] dictionary];
    passkeyCredentialSidecarsDictionary = v26->_passkeyCredentialSidecarsDictionary;
    v26->_passkeyCredentialSidecarsDictionary = v41;

    objc_storeStrong(&v26->_siteToProtectionSpaces, a9);
    objc_storeStrong(&v26->_sitesToSidecars, a10);
    v43 = [MEMORY[0x1E695DFA8] set];
    sitesForWhichSelfIsDefault = v26->_sitesForWhichSelfIsDefault;
    v26->_sitesForWhichSelfIsDefault = v43;

    v45 = [v24 copy];
    serviceName = v26->_serviceName;
    v26->_serviceName = v45;

    v47 = [(WBSSavedAccount *)v26 _firstSidecarForAnySiteOfType:0 inSitesToSidecars:v26->_sitesToSidecars passkeySidecars:v26->_passkeyCredentialSidecarsDictionary];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v49 = 0;
    if (isKindOfClass)
    {
      v49 = [v47 customTitle];
    }

    customTitle = v26->_customTitle;
    v26->_customTitle = v49;

    v51 = v26;
    v18 = v53;
    v23 = v54;
  }

  return v26;
}

- (id)_initWithHighLevelDomain:(id)a3 user:(id)a4 password:(id)a5
{
  v8 = MEMORY[0x1E695DF90];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = [(WBSSavedAccount *)self _initWithHighLevelDomain:v11 passkeyRelyingPartyID:0 user:v10 password:v9 passkeyUserHandle:0 passkeyCredentialID:0 siteToProtectionSpaces:v12 sitesToSidecars:v13 serviceName:0];

  if (v14)
  {
    v15 = v14;
  }

  return v14;
}

- (id)_initWithPasskeyRelyingPartyID:(id)a3 user:(id)a4 passkeyUserHandle:(id)a5 passkeyCredentialID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 safari_highLevelDomainForPasswordManager];
  v15 = [(WBSSavedAccount *)self _initWithHighLevelDomain:v14 passkeyRelyingPartyID:v13 user:v12 password:0 passkeyUserHandle:v11 passkeyCredentialID:v10 siteToProtectionSpaces:0 sitesToSidecars:0 serviceName:0];

  if (v15)
  {
    v16 = v15;
  }

  return v15;
}

- (id)_initWithSignInWithAppleAccount:(id)a3
{
  v5 = a3;
  v6 = [v5 localizedAppName];
  v7 = [(WBSSavedAccount *)self _initWithHighLevelDomain:0 passkeyRelyingPartyID:0 user:0 password:0 passkeyUserHandle:0 passkeyCredentialID:0 siteToProtectionSpaces:0 sitesToSidecars:0 serviceName:v6];

  if (v7)
  {
    objc_storeStrong(v7 + 10, a3);
    v8 = [v5 shareInfo];
    v9 = [v8 groupID];

    if ([v9 length])
    {
      objc_storeStrong(v7 + 22, v9);
    }

    v10 = v7;
  }

  return v7;
}

- (void)setPassword:(id)a3
{
  v4 = [a3 copy];
  password = self->_password;
  self->_password = v4;

  v6 = [MEMORY[0x1E695DF90] dictionary];
  siteToProtectionSpaces = self->_siteToProtectionSpaces;
  self->_siteToProtectionSpaces = v6;

  v8 = [MEMORY[0x1E695DF90] dictionary];
  sitesToSidecars = self->_sitesToSidecars;
  self->_sitesToSidecars = v8;
}

- (id)description
{
  v3 = [(WBSSavedAccount *)self customTitle];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v7 = [(WBSSavedAccount *)self customTitle];
    [v4 stringWithFormat:@"<%@: %p; title = %@; highLevelDomain = %@; user = %@>", v6, self, v7, self->_highLevelDomain, self->_user];
  }

  else
  {
    v7 = NSStringFromClass(v5);
    [v4 stringWithFormat:@"<%@: %p; highLevelDomain = %@; user = %@>", v7, self, self->_highLevelDomain, self->_user, v10];
  }
  v8 = ;

  return v8;
}

- (void)_addProtectionSpace:(id)a3 forSite:(id)a4 isDefaultCredentialForSite:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_siteToProtectionSpaces objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    if (([v10 containsObject:v8] & 1) == 0)
    {
      [v11 addObject:v8];
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v12 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v8 host];
      user = self->_user;
      v20 = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = user;
      _os_log_impl(&dword_1B8447000, v13, OS_LOG_TYPE_INFO, "Attempted to add a duplicate protection space for %@ to saved account for %@", &v20, 0x16u);

      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    siteToProtectionSpaces = self->_siteToProtectionSpaces;
    v17 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
    [(NSMutableDictionary *)siteToProtectionSpaces setObject:v17 forKey:v9];

    sites = self->_sites;
    self->_sites = 0;
  }

  if (v5)
  {
LABEL_8:
    [(NSMutableSet *)self->_sitesForWhichSelfIsDefault addObject:v9];
  }

LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
}

- (NSDate)lastModifiedDate
{
  if ([(WBSSavedAccount *)self credentialTypes]== 4)
  {
    v3 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount creationDate];
  }

  else
  {
    earliestPasswordCredentialModificationDate = self->_earliestPasswordCredentialModificationDate;
    p_earliestPasswordCredentialModificationDate = &self->_earliestPasswordCredentialModificationDate;
    v4 = earliestPasswordCredentialModificationDate;
    v7 = p_earliestPasswordCredentialModificationDate[21];
    if (earliestPasswordCredentialModificationDate)
    {
      if (v7)
      {
        if ([(NSDate *)v7 compare:?]== NSOrderedDescending)
        {
          v8 = (p_earliestPasswordCredentialModificationDate + 21);
        }

        else
        {
          v8 = p_earliestPasswordCredentialModificationDate;
        }

        v3 = *v8;
        goto LABEL_11;
      }

      v7 = v4;
    }

    v3 = v7;
  }

LABEL_11:

  return v3;
}

- (void)_addPasswordCredentialModificationDate:(id)a3
{
  v5 = a3;
  earliestPasswordCredentialModificationDate = self->_earliestPasswordCredentialModificationDate;
  p_earliestPasswordCredentialModificationDate = &self->_earliestPasswordCredentialModificationDate;
  v10 = v5;
  if (!earliestPasswordCredentialModificationDate || (v8 = [v5 compare:?] == -1, v9 = v10, v8))
  {
    objc_storeStrong(p_earliestPasswordCredentialModificationDate, a3);
    v9 = v10;
  }
}

- (void)_addPasswordCredentialCreationDate:(id)a3
{
  v5 = a3;
  earliestPasswordCredentialCreationDate = self->_earliestPasswordCredentialCreationDate;
  p_earliestPasswordCredentialCreationDate = &self->_earliestPasswordCredentialCreationDate;
  v10 = v5;
  if (!earliestPasswordCredentialCreationDate || (v8 = [v5 compare:?] == -1, v9 = v10, v8))
  {
    objc_storeStrong(p_earliestPasswordCredentialCreationDate, a3);
    v9 = v10;
  }
}

- (void)_addFileVaultRecoveryKeyMetadataFromUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [WBSFileVaultRecoveryKey serialNumberFromUniqueIdentifier:v4];
  recoveryKeySerialNumber = self->_recoveryKeySerialNumber;
  self->_recoveryKeySerialNumber = v5;

  v7 = [WBSFileVaultRecoveryKey volumeIDFromUniqueIdentifier:v4];

  recoveryKeyVolumeID = self->_recoveryKeyVolumeID;
  self->_recoveryKeyVolumeID = v7;
}

- (NSDate)creationDate
{
  if ([(WBSSavedAccount *)self credentialTypes]== 4)
  {
    v3 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount creationDate];
LABEL_5:
    v4 = v3;
    goto LABEL_12;
  }

  if (([(WBSSavedAccount *)self credentialTypes]& 2) == 0)
  {
    v3 = self->_earliestPasswordCredentialCreationDate;
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E695DF00] now];
  v6 = v5;
  earliestPasswordCredentialCreationDate = self->_earliestPasswordCredentialCreationDate;
  if (!earliestPasswordCredentialCreationDate)
  {
    earliestPasswordCredentialCreationDate = v5;
  }

  if (self->_creationDateForPasskey)
  {
    creationDateForPasskey = self->_creationDateForPasskey;
  }

  else
  {
    creationDateForPasskey = v5;
  }

  v9 = earliestPasswordCredentialCreationDate;
  v4 = [(NSDate *)v9 earlierDate:creationDateForPasskey];

LABEL_12:

  return v4;
}

- (NSArray)totpGenerators
{
  v3 = [MEMORY[0x1E695DF70] array];
  sitesToSidecars = self->_sitesToSidecars;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__WBSSavedAccount_totpGenerators__block_invoke;
  v9[3] = &unk_1E7CF3F20;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(NSMutableDictionary *)sitesToSidecars enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __33__WBSSavedAccount_totpGenerators__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  if ([v4 isSavedInSharedGroup])
  {
    v6 = &unk_1F308E480;
  }

  else
  {
    v6 = &unk_1F308E498;
  }

  v7 = [v5 objectForKeyedSubscript:v6];

  v9 = [v7 totpGenerator];

  v8 = v9;
  if (v9)
  {
    [*(a1 + 40) addObject:v9];
    v8 = v9;
  }
}

- (id)totpGeneratorForSite:(id)a3
{
  v4 = a3;
  v5 = [(WBSSavedAccount *)self _sidecarForSite:v4 ofType:[(WBSSavedAccount *)self isSavedInSharedGroup]];

  v6 = [v5 totpGenerator];

  return v6;
}

- (void)setTOTPGenerator:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __36__WBSSavedAccount_setTOTPGenerator___block_invoke;
  v10 = &unk_1E7CF3F48;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(&v7);
  [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v6, v7, v8, v9, v10, v11];
  [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:v6];
}

void __36__WBSSavedAccount_setTOTPGenerator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2 == 1)
  {
    v8 = [*(a1 + 32) isSavedInSharedGroup];
    v6 = v9;
    if (v8)
    {
LABEL_4:
      [v6 setTotpGenerator:*(a1 + 40)];
      v6 = v9;
    }
  }

  else
  {
    v6 = v5;
    if (!a2)
    {
      v7 = [*(a1 + 32) isSavedInSharedGroup];
      v6 = v9;
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }
}

- (NSDate)lastRecentlyDeletedNotificationDate
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [v3 dictionaryForKey:@"lastRecentlyDeletedNotificationDateDictionary"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WBSSavedAccount hash](self, "hash")}];
  v6 = [v5 stringValue];
  v7 = [v4 objectForKey:v6];

  return v7;
}

- (void)setLastRecentlyDeletedNotificationDate:(id)a3
{
  v10 = a3;
  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v5 = [v4 dictionaryForKey:@"lastRecentlyDeletedNotificationDateDictionary"];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WBSSavedAccount hash](self, "hash")}];
  v8 = [v7 stringValue];

  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:v8];
  }

  else
  {
    [v6 removeObjectForKey:v8];
  }

  v9 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v9 setValue:v6 forKey:@"lastRecentlyDeletedNotificationDateDictionary"];
}

- (NSString)currentOneTimeCode
{
  v2 = [(WBSSavedAccount *)self totpGenerators];
  v3 = [v2 firstObject];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 codeForDate:v4];

  return v5;
}

- (NSString)notesEntry
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__15;
  v15 = __Block_byref_object_dispose__15;
  v16 = 0;
  sitesToSidecars = self->_sitesToSidecars;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__WBSSavedAccount_notesEntry__block_invoke;
  v10[3] = &unk_1E7CF3F70;
  v10[4] = self;
  v10[5] = &v11;
  [(NSMutableDictionary *)sitesToSidecars enumerateKeysAndObjectsUsingBlock:v10];
  v4 = [(WBSSavedAccount *)self isSavedInSharedGroup];
  v5 = v12[5];
  if (!v4)
  {
    if (!v5)
    {
      v6 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E498];
      v7 = [v6 notesEntry];
      goto LABEL_7;
    }

LABEL_5:
    v8 = v5;
    goto LABEL_8;
  }

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E480];
  v7 = [v6 notesEntry];
LABEL_7:
  v8 = v7;

LABEL_8:
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __29__WBSSavedAccount_notesEntry__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  if ([v6 isSavedInSharedGroup])
  {
    v8 = &unk_1F308E480;
  }

  else
  {
    v8 = &unk_1F308E498;
  }

  v9 = [v7 objectForKeyedSubscript:v8];

  obj = [v9 notesEntry];

  v10 = obj;
  if (obj)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    v10 = obj;
    *a4 = 1;
  }
}

- (void)setNotesEntry:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __33__WBSSavedAccount_setNotesEntry___block_invoke;
  v10 = &unk_1E7CF3F48;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(&v7);
  [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v6, v7, v8, v9, v10, v11];
  [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:v6];
}

void __33__WBSSavedAccount_setNotesEntry___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2 == 1)
  {
    v8 = [*(a1 + 32) isSavedInSharedGroup];
    v6 = v9;
    if (v8)
    {
LABEL_4:
      [v6 setNotesEntry:*(a1 + 40)];
      v6 = v9;
    }
  }

  else
  {
    v6 = v5;
    if (!a2)
    {
      v7 = [*(a1 + 32) isSavedInSharedGroup];
      v6 = v9;
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }
}

- (NSString)effectiveTitle
{
  v3 = [(WBSSavedAccount *)self customTitle];
  if ([v3 length])
  {
    v4 = [(WBSSavedAccount *)self customTitle];
  }

  else
  {
    v4 = self->_serviceName;
  }

  v5 = v4;

  if ([(NSString *)v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = [(WBSSavedAccount *)self userVisibleDomain];
  }

  v7 = v6;

  return v7;
}

- (void)setCustomTitle:(id)a3 performSidecarUpdate:(BOOL)a4
{
  v6 = a3;
  if (WBSIsEqual(v6, self->_customTitle))
  {
    if (a4)
    {
      v7 = [v6 copy];
      customTitle = self->_customTitle;
      self->_customTitle = v7;

LABEL_7:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__WBSSavedAccount_setCustomTitle_performSidecarUpdate___block_invoke;
      aBlock[3] = &unk_1E7CF3FC0;
      aBlock[4] = self;
      v11 = _Block_copy(aBlock);
      [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v11];
      [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:v11];
    }
  }

  else if (![(NSString *)self->_customTitle isEqualToString:v6]|| a4)
  {
    v9 = [v6 copy];
    v10 = self->_customTitle;
    self->_customTitle = v9;

    if (a4)
    {
      goto LABEL_7;
    }
  }
}

void __55__WBSSavedAccount_setCustomTitle_performSidecarUpdate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v12 = v5;
  if (a2 == 1)
  {
    v10 = *(a1 + 32);
    v7 = a1 + 32;
    v11 = [v10 isSavedInSharedGroup];
    v6 = v12;
    if (v11)
    {
LABEL_4:
      [v6 setCustomTitle:*(*v7 + 72)];
      v6 = v12;
    }
  }

  else
  {
    v6 = v5;
    if (!a2)
    {
      v8 = *(a1 + 32);
      v7 = a1 + 32;
      v9 = [v8 isSavedInSharedGroup];
      v6 = v12;
      if ((v9 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }
}

- (id)lastUsedDateForSite:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSSavedAccount *)self credentialTypes];
  if (v8 == 3)
  {
    v14 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:0];
    v17 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E498];
    v18 = [v14 lastUsedDateForSite:v6 inContext:v7];
    v19 = [v17 lastUsedDateForSite:v6 inContext:v7];
    v20 = v19;
    if (v18 && v19)
    {
      v21 = [v18 laterDate:v19];
    }

    else
    {
      if (v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v18;
      }

      v21 = v22;
    }

    v16 = v21;

    goto LABEL_19;
  }

  if (v8 == 2)
  {
    v15 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E498];
LABEL_8:
    v14 = v15;
    goto LABEL_9;
  }

  if (v8 != 1)
  {
    v16 = 0;
    goto LABEL_20;
  }

  v9 = [(WBSSavedAccount *)self additionalSites];
  v10 = [v9 containsObject:v6];

  if (v10)
  {
    v11 = [(WBSSavedAccount *)self sites];
    v12 = [v11 containsObject:v6];

    if (!v12)
    {
      v15 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:0];
      goto LABEL_8;
    }
  }

  v13 = [(NSMutableDictionary *)self->_sitesToSidecars objectForKeyedSubscript:v6];
  v14 = [v13 objectForKeyedSubscript:&unk_1F308E498];

  v15 = v14;
LABEL_9:
  v16 = [v15 lastUsedDateForSite:v6 inContext:v7];
LABEL_19:

LABEL_20:

  return v16;
}

- (void)setLastUsedDate:(id)a3 forSite:(id)a4 inContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WBSSavedAccount *)self additionalSites];
  v12 = [v11 containsObject:v9];

  if (v12)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__WBSSavedAccount_setLastUsedDate_forSite_inContext___block_invoke;
    aBlock[3] = &unk_1E7CF3FE8;
    v26 = v8;
    v27 = v9;
    v28 = v10;
    v13 = _Block_copy(aBlock);
    [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v13];
    [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:v13];
  }

  else
  {
    v14 = [(WBSSavedAccount *)self highLevelDomain];
    v15 = [v9 safari_highLevelDomainFromHost];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      v17 = [(NSMutableDictionary *)self->_sitesToSidecars objectForKeyedSubscript:v9];
      v18 = [v17 objectForKeyedSubscript:&unk_1F308E498];

      if (!v18)
      {
        v24 = 0;
        [WBSSavedAccountStore getProtectionSpaceAndHighLevelDomainForUserTypedSite:v9 protectionSpace:&v24 highLevelDomain:0];
        v19 = v24;
        v18 = [[WBSSavedAccountSidecar alloc] initWithUser:self->_user protectionSpace:v19];
        [(WBSSavedAccount *)self _addSidecar:v18 forSite:v9];
      }

      [(WBSSavedAccountSidecar *)v18 setLastUsedDate:v8 forSite:v9 inContext:v10];
      v20 = [MEMORY[0x1E695AC48] safari_credentialWithUser:self->_user password:self->_password persistence:3];
      v21 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      v22 = [(WBSSavedAccountSidecar *)v18 protectionSpace];
      [v21 safari_setSidecar:v18 credential:v20 htmlFormProtectionSpace:v22 forGroupID:self->_sharedGroupID fromRecentlyDeleted:{-[WBSSavedAccount isRecentlyDeleted](self, "isRecentlyDeleted")}];
    }

    else
    {
      v23 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccount setLastUsedDate:v9 forSite:v23 inContext:self];
      }
    }
  }
}

void __53__WBSSavedAccount_setLastUsedDate_forSite_inContext___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = v5;
    [v5 setLastUsedDate:a1[4] forSite:a1[5] inContext:a1[6]];
    v5 = v6;
  }
}

- (id)lastUsedDateAcrossAllContextsForSite:(id)a3
{
  sitesToSidecars = self->_sitesToSidecars;
  v4 = a3;
  v5 = [(NSMutableDictionary *)sitesToSidecars objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:&unk_1F308E498];

  v7 = [v6 lastUsedDateAcrossAllContextsForSite:v4];

  return v7;
}

- (NSDate)lastUsedDateAcrossAllContextsAndSites
{
  v2 = [(WBSSavedAccount *)self allSidecars];
  v3 = [v2 safari_reduceObjectsUsingBlock:&__block_literal_global_59];

  return v3;
}

id __56__WBSSavedAccount_lastUsedDateAcrossAllContextsAndSites__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 lastUsedDateAcrossAllContextsAndSites];
    v7 = v6;
    if (v5 && v6)
    {
      v8 = [v5 laterDate:v6];
    }

    else if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (BOOL)canUserEditSavedAccount
{
  v2 = [(WBSSavedAccount *)self passkeyRelyingPartyID];
  v3 = [v2 isEqualToString:@"apple.com"];

  return v3 ^ 1;
}

- (BOOL)isCurrentUserOriginalContributor
{
  if ([(WBSSavedAccount *)self isSavedInPersonalKeychain])
  {
    return 1;
  }

  v3 = [(WBSSavedAccount *)self originalContributorParticipantID];

  if (!v3)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccount isCurrentUserOriginalContributor];
    }

    return 1;
  }

  v4 = +[WBSOngoingSharingGroupProvider sharedProvider];
  v5 = [v4 currentUserParticipantID];

  if (v5)
  {
    v6 = [(WBSSavedAccount *)self originalContributorParticipantID];
    v7 = [v6 isEqual:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)participantIDThatMovedSavedAccountToRecentlyDeleted
{
  v2 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:1];
  v3 = [v2 participantIDForUserThatMovedSavedAccountToRecentlyDeleted];

  return v3;
}

- (BOOL)markOriginalContributorParticipantID
{
  v3 = +[WBSOngoingSharingGroupProvider sharedProvider];
  v4 = [v3 currentUserParticipantID];

  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__WBSSavedAccount_markOriginalContributorParticipantID__block_invoke;
    aBlock[3] = &unk_1E7CF3FC0;
    v9 = v4;
    v5 = _Block_copy(aBlock);
    [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v5];
    [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:v5];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccount markOriginalContributorParticipantID];
    }
  }

  return v4 != 0;
}

void __55__WBSSavedAccount_markOriginalContributorParticipantID__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    v6 = v5;
    [v5 setOriginalContributorParticipantID:*(a1 + 32)];
    v5 = v6;
  }
}

- (BOOL)markParticipantIDThatMovedSavedAccountToRecentlyDeleted
{
  v3 = +[WBSOngoingSharingGroupProvider sharedProvider];
  v4 = [v3 currentUserParticipantID];

  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__WBSSavedAccount_markParticipantIDThatMovedSavedAccountToRecentlyDeleted__block_invoke;
    aBlock[3] = &unk_1E7CF3FC0;
    v9 = v4;
    v5 = _Block_copy(aBlock);
    [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v5];
    [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:v5];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccount markOriginalContributorParticipantID];
    }
  }

  return v4 != 0;
}

void __74__WBSSavedAccount_markParticipantIDThatMovedSavedAccountToRecentlyDeleted__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    v6 = v5;
    [v5 setParticipantIDForUserThatMovedSavedAccountToRecentlyDeleted:*(a1 + 32)];
    v5 = v6;
  }
}

- (void)clearParticipantIDThatMovedSavedAccountToRecentlyDeleted
{
  [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:&__block_literal_global_45_0];

  [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:&__block_literal_global_45_0];
}

void __75__WBSSavedAccount_clearParticipantIDThatMovedSavedAccountToRecentlyDeleted__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a2 == 1)
  {
    v5 = v4;
    [v4 setParticipantIDForUserThatMovedSavedAccountToRecentlyDeleted:0];
    v4 = v5;
  }
}

- (NSString)originalContributorParticipantID
{
  if ([(WBSSavedAccount *)self credentialTypes]== 4)
  {
    v3 = [(WBSSavedAccount *)self signInWithAppleAccount];
    v4 = [v3 shareInfo];
    v5 = [v4 participantID];
  }

  else
  {
    v3 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:1];
    v5 = [v3 originalContributorParticipantID];
  }

  return v5;
}

- (BOOL)hasSidecarDataToConsiderForCredentialMerging
{
  v3 = [(WBSSavedAccount *)self totpGenerators];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WBSSavedAccount *)self notesEntry];
    if ([v5 length])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(WBSSavedAccount *)self customTitle];
      if ([v6 length])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(WBSSavedAccount *)self originalContributorParticipantID];
        v4 = [v7 length] != 0;
      }
    }
  }

  return v4;
}

- (BOOL)_canMergeWithSavedAccount:(id)a3 requiresDataCopying:(BOOL *)a4
{
  v6 = a3;
  v7 = [(WBSSavedAccount *)self credentialTypes];
  v8 = [v6 credentialTypes];
  if (v7 == 1 && v8 == 2 || v7 == 2 && v8 == 1)
  {
    if ([(WBSSavedAccount *)self _isSidecarDataForCredentialMergingEqual:v6])
    {
      *a4 = 0;
      v9 = 1;
    }

    else
    {
      v9 = [(WBSSavedAccount *)self _isSidecarDataForCredentialMergingCompatible:v6];
      *a4 = v9;
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccount _canMergeWithSavedAccount:requiresDataCopying:];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_isSidecarDataForCredentialMergingEqual:(id)a3
{
  v4 = a3;
  v5 = [(WBSSavedAccount *)self notesEntry];
  v6 = [v4 notesEntry];
  if (WBSIsEqual(v5, v6))
  {
    v7 = [(WBSSavedAccount *)self customTitle];
    v8 = [v4 customTitle];
    if (WBSIsEqual(v7, v8))
    {
      v9 = [(WBSSavedAccount *)self originalContributorParticipantID];
      v10 = [v4 originalContributorParticipantID];
      v11 = WBSIsEqual(v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_isSidecarDataForCredentialMergingCompatible:(id)a3
{
  v4 = a3;
  v5 = [(WBSSavedAccount *)self notesEntry];
  v6 = [v4 notesEntry];
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 1;
  }

  v8 = [(WBSSavedAccount *)self customTitle];
  v9 = [v4 customTitle];
  if (![v8 length])
  {
    v11 = v7;
    goto LABEL_11;
  }

  v10 = [v9 length];
  v11 = (v10 == 0) & v7;
  if (!v10 || ((v7 ^ 1) & 1) != 0)
  {
LABEL_11:
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_12:
    v13 = [(WBSSavedAccount *)self originalContributorParticipantID];
    v14 = [v4 originalContributorParticipantID];
    v12 = WBSIsEqual(v13, v14);

    goto LABEL_13;
  }

  if ([v8 isEqual:v9])
  {
    goto LABEL_12;
  }

LABEL_9:
  v12 = 0;
LABEL_13:

  return v12;
}

- (NSString)uniqueIdentifierForPasswordManagerLegacy
{
  if ([(NSString *)self->_sharedGroupID length])
  {
    sharedGroupID = self->_sharedGroupID;
  }

  else
  {
    sharedGroupID = &stru_1F3064D08;
  }

  v4 = sharedGroupID;
  v5 = [(WBSSavedAccount *)self credentialTypes];
  v6 = MEMORY[0x1E696AEC0];
  if (v5 == 4)
  {
    v7 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount userID];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1F3064D08;
    }

    if (self->_serviceName)
    {
      serviceName = self->_serviceName;
    }

    else
    {
      serviceName = &stru_1F3064D08;
    }

    v11 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount clientID];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1F3064D08;
    }

    v14 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount privateEmail];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1F3064D08;
    }

    [v6 stringWithFormat:@"user = %@; serviceName = %@; clientID = %@; privateEmail = %@; groupID = %@;", v9, serviceName, v13, v16, v4, v27];
  }

  else
  {
    if (self->_user)
    {
      user = self->_user;
    }

    else
    {
      user = &stru_1F3064D08;
    }

    v8 = [(WBSSavedAccount *)self protectionSpaces];
    v18 = [v8 safari_mapObjectsUsingBlock:&__block_literal_global_574];
    v12 = [v18 componentsJoinedByString:{@", "}];

    v19 = [v6 stringWithFormat:@"[ %@ ]", v12];
    v15 = v19;
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = &stru_1F3064D08;
    }

    passkeyRelyingPartyID = self->_passkeyRelyingPartyID;
    if (!passkeyRelyingPartyID)
    {
      passkeyRelyingPartyID = &stru_1F3064D08;
    }

    passkeyCredentialID = self->_passkeyCredentialID;
    if (!passkeyCredentialID)
    {
      passkeyCredentialID = &stru_1F3064D08;
    }

    if (v4)
    {
      v23 = v4;
    }

    else
    {
      v23 = &stru_1F3064D08;
    }

    customTitle = self->_customTitle;
    if (!customTitle)
    {
      customTitle = &stru_1F3064D08;
    }

    [v6 stringWithFormat:@"user = %@; password_protectionSpaces = %@; passkey_rpid = %@; passkey_credentialID = %@; groupID = %@; customTitle = %@;", user, v20, passkeyRelyingPartyID, passkeyCredentialID, v23, customTitle];
  }
  v25 = ;

  return v25;
}

- (BOOL)canBeExportedToPasswordsCSVFile
{
  if (([(WBSSavedAccount *)self credentialTypes]& 1) == 0 || [(WBSSavedAccount *)self userIsNeverSaveMarker])
  {
    return 0;
  }

  return [(WBSSavedAccount *)self isCurrentUserOriginalContributor];
}

- (BOOL)canBeExportedViaCredentialExchange
{
  v3 = [(WBSSavedAccount *)self signInWithAppleAccount];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(WBSSavedAccount *)self isCurrentUserOriginalContributor];
  }

  return v4;
}

- (BOOL)canBeDeletedByServiceViaCredentialUpdater
{
  v3 = [(WBSSavedAccount *)self notesEntry];

  v4 = [(WBSSavedAccount *)self totpGenerators];
  v5 = [v4 count];

  return !v3 && !v5 || [(WBSSavedAccount *)self credentialTypes]== 3;
}

- (id)_firstSidecarForAnySiteOfType:(int64_t)a3 inSitesToSidecars:(id)a4 passkeySidecars:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v7 allValues];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) objectForKeyedSubscript:v9];
        if (v15)
        {
          v16 = v15;

          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v8 objectForKeyedSubscript:v9];
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_sidecarForSite:(id)a3 ofType:(int64_t)a4
{
  v5 = [(NSMutableDictionary *)self->_sitesToSidecars objectForKeyedSubscript:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (id)_passkeySidecarOfType:(int64_t)a3
{
  passkeyCredentialSidecarsDictionary = self->_passkeyCredentialSidecarsDictionary;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)passkeyCredentialSidecarsDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (void)_addPasskeySidecar:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 customTitle];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 copy];
      customTitle = self->_customTitle;
      self->_customTitle = v7;
    }

    v9 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 1;
LABEL_7:
    passkeyCredentialSidecarsDictionary = self->_passkeyCredentialSidecarsDictionary;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    [(NSMutableDictionary *)passkeyCredentialSidecarsDictionary setObject:v4 forKeyedSubscript:v11];

    goto LABEL_10;
  }

  v12 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [WBSSavedAccount _addPasskeySidecar:v12];
  }

LABEL_10:
}

- (BOOL)hasPasswordSidecars
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sitesToSidecars = self->_sitesToSidecars;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__WBSSavedAccount_hasPasswordSidecars__block_invoke;
  v5[3] = &unk_1E7CF4050;
  v5[4] = &v6;
  [(NSMutableDictionary *)sitesToSidecars enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__WBSSavedAccount_hasPasswordSidecars__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)enumeratePasswordSidecarsWithBlock:(id)a3
{
  v4 = a3;
  sitesToSidecars = self->_sitesToSidecars;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__WBSSavedAccount_enumeratePasswordSidecarsWithBlock___block_invoke;
  v7[3] = &unk_1E7CF40A0;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)sitesToSidecars enumerateKeysAndObjectsUsingBlock:v7];
}

void __54__WBSSavedAccount_enumeratePasswordSidecarsWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__WBSSavedAccount_enumeratePasswordSidecarsWithBlock___block_invoke_2;
  v4[3] = &unk_1E7CF4078;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __54__WBSSavedAccount_enumeratePasswordSidecarsWithBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  (*(v6 + 16))(v6, [a2 unsignedIntegerValue], v7, a4);
}

- (void)enumeratePasskeySidecarsWithBlock:(id)a3
{
  v4 = a3;
  passkeyCredentialSidecarsDictionary = self->_passkeyCredentialSidecarsDictionary;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__WBSSavedAccount_enumeratePasskeySidecarsWithBlock___block_invoke;
  v7[3] = &unk_1E7CF4078;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)passkeyCredentialSidecarsDictionary enumerateKeysAndObjectsUsingBlock:v7];
}

void __53__WBSSavedAccount_enumeratePasskeySidecarsWithBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  (*(v6 + 16))(v6, [a2 unsignedIntegerValue], v7, a4);
}

- (NSArray)allPasswordSidecars
{
  v2 = [(WBSSavedAccount *)self _allPasswordSidecarsAsMutableArray];
  v3 = [v2 copy];

  return v3;
}

- (NSMutableArray)_allPasswordSidecarsAsMutableArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_sitesToSidecars allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) allValues];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_addSidecar:(id)a3 forSite:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_sitesToSidecars objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_sitesToSidecars setObject:v8 forKeyedSubscript:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v6 forKeyedSubscript:&unk_1F308E498];
    v9 = [v6 customTitle];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 copy];
      customTitle = self->_customTitle;
      self->_customTitle = v11;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setObject:v6 forKeyedSubscript:&unk_1F308E480];
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccount _addSidecar:v7 forSite:v13];
      }
    }
  }
}

- (id)_allSidecarsForSite:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sitesToSidecars objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

- (NSArray)allSidecars
{
  v3 = [(WBSSavedAccount *)self _allPasswordSidecarsAsMutableArray];
  passkeyCredentialSidecarsDictionary = self->_passkeyCredentialSidecarsDictionary;
  if (passkeyCredentialSidecarsDictionary)
  {
    v5 = [(NSMutableDictionary *)passkeyCredentialSidecarsDictionary allValues];
    [v3 addObjectsFromArray:v5];
  }

  return v3;
}

- (void)_updatePasswordSidecarsIfNecessaryWithBlock:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(WBSSavedAccount *)self credentialTypes]& 1) != 0)
  {
    v5 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v6 = [MEMORY[0x1E695AC48] safari_credentialWithUser:self->_user password:self->_password persistence:3];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(WBSSavedAccount *)self protectionSpaces];
    v25 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v25)
    {
      v7 = *v32;
      v23 = self;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = [v9 host];
          v11 = [(NSMutableDictionary *)self->_sitesToSidecars objectForKeyedSubscript:v10];
          v12 = [v11 objectForKeyedSubscript:&unk_1F308E498];

          if (!v12)
          {
            v13 = [[WBSSavedAccountSidecar alloc] initWithUser:self->_user protectionSpace:v9];
            [(WBSSavedAccount *)self _addSidecar:v13 forSite:v10];
            [(NSMutableDictionary *)self->_sitesToSidecars objectForKeyedSubscript:v10];
            v14 = v7;
            v15 = v6;
            v16 = v5;
            v18 = v17 = v4;

            v11 = v18;
            v4 = v17;
            v5 = v16;
            v6 = v15;
            v7 = v14;
            self = v23;
          }

          if ([(WBSSavedAccount *)self isSavedInSharedGroup])
          {
            v19 = [v11 objectForKeyedSubscript:&unk_1F308E480];

            if (!v19)
            {
              v20 = [WBSSavedAccountSharedSidecar alloc];
              v21 = [(WBSSavedAccountSharedSidecar *)v20 initWithUser:self->_user protectionSpace:v9 dictionaryRepresentation:MEMORY[0x1E695E0F8]];
              [(WBSSavedAccount *)self _addSidecar:v21 forSite:v10];
            }
          }

          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __63__WBSSavedAccount__updatePasswordSidecarsIfNecessaryWithBlock___block_invoke;
          v26[3] = &unk_1E7CF40C8;
          v30 = v4;
          v27 = v5;
          v28 = v6;
          v29 = self;
          [v11 enumerateKeysAndObjectsUsingBlock:v26];
        }

        v25 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v25);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __63__WBSSavedAccount__updatePasswordSidecarsIfNecessaryWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v10);
  }

  if (v5 <= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [v10 protectionSpace];
    [v7 safari_setSidecar:v10 credential:v8 htmlFormProtectionSpace:v9 forGroupID:*(*(a1 + 48) + 176) fromRecentlyDeleted:{objc_msgSend(*(a1 + 48), "isRecentlyDeleted")}];
  }
}

- (void)_updatePasskeySidecarsIfNecessaryWithBlock:(id)a3
{
  v4 = a3;
  if (([(WBSSavedAccount *)self credentialTypes]& 2) != 0)
  {
    v5 = [MEMORY[0x1E695AC48] safari_credentialWithUser:self->_passkeyUserHandle password:&stru_1F3064D08 persistence:3];
    v6 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v7 = [MEMORY[0x1E695AC58] safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:self->_passkeyRelyingPartyID];
    v8 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E498];

    if (!v8)
    {
      v9 = [[WBSSavedAccountSidecar alloc] initWithUser:self->_passkeyUserHandle protectionSpace:v7];
      [(WBSSavedAccount *)self _addPasskeySidecar:v9];
    }

    if ([(WBSSavedAccount *)self isSavedInSharedGroup])
    {
      v10 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E480];

      if (!v10)
      {
        v11 = [WBSSavedAccountSharedSidecar alloc];
        v12 = [(WBSSavedAccountSharedSidecar *)v11 initWithUser:self->_passkeyUserHandle protectionSpace:v7 dictionaryRepresentation:MEMORY[0x1E695E0F8]];
        [(WBSSavedAccount *)self _addPasskeySidecar:v12];
      }
    }

    passkeyCredentialSidecarsDictionary = self->_passkeyCredentialSidecarsDictionary;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__WBSSavedAccount__updatePasskeySidecarsIfNecessaryWithBlock___block_invoke;
    v16[3] = &unk_1E7CF40C8;
    v17 = v6;
    v18 = v5;
    v19 = self;
    v20 = v4;
    v14 = v5;
    v15 = v6;
    [(NSMutableDictionary *)passkeyCredentialSidecarsDictionary enumerateKeysAndObjectsUsingBlock:v16];
  }
}

void __62__WBSSavedAccount__updatePasskeySidecarsIfNecessaryWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v10);
  }

  if (v5 <= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [v10 protectionSpace];
    [v7 safari_setSidecar:v10 credential:v8 htmlFormProtectionSpace:v9 forGroupID:*(*(a1 + 48) + 176) fromRecentlyDeleted:{objc_msgSend(*(a1 + 48), "isRecentlyDeleted")}];
  }
}

- (BOOL)hasSidecarData
{
  v3 = [(WBSSavedAccount *)self totpGenerators];
  if ([v3 count])
  {
    goto LABEL_6;
  }

  v4 = [(WBSSavedAccount *)self hideWarningMarker];
  if (v4)
  {

LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  v5 = [(WBSSavedAccount *)self notesEntry];
  if ([v5 length])
  {

    goto LABEL_6;
  }

  v8 = [(WBSSavedAccount *)self customTitle];
  v9 = [v8 length];

  if (v9)
  {
    return 1;
  }

  v3 = [(WBSSavedAccount *)self lastOneTimeShareDateForPasskey];
  v6 = v3 != 0;
LABEL_7:

  return v6;
}

- (void)_copySharablePasswordSidecarDataFromPersonalSidecarsToSharedSidecars
{
  sitesToSidecars = self->_sitesToSidecars;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__WBSSavedAccount__copySharablePasswordSidecarDataFromPersonalSidecarsToSharedSidecars__block_invoke;
  v3[3] = &unk_1E7CF40F0;
  v3[4] = self;
  [(NSMutableDictionary *)sitesToSidecars enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_copySharableDataFromPersonalSidecarToSharedSidecarInDictionary:(id)a3
{
  v7 = a3;
  v3 = [v7 objectForKeyedSubscript:&unk_1F308E498];
  v4 = [v7 objectForKeyedSubscript:&unk_1F308E480];
  v5 = v4;
  if (v3 && !v4)
  {
    v6 = [[WBSSavedAccountSharedSidecar alloc] initWithPersonalSidecar:v3];
    [v7 setObject:v6 forKeyedSubscript:&unk_1F308E480];
  }
}

- (void)_copyHistoryItemsFromSharedSidecarToPersonalSidecarAndSetupNewSharedSidecarForGroupID:(id)a3
{
  v5 = [(WBSSavedAccount *)self isSavedInSharedGroup];
  if (a3 && v5)
  {
    v6 = [(WBSSavedAccount *)self highLevelDomain];
    v12 = [(WBSSavedAccount *)self _sidecarForSite:v6 ofType:0];

    v7 = [(WBSSavedAccount *)self highLevelDomain];
    v8 = [(WBSSavedAccount *)self _sidecarForSite:v7 ofType:1];

    v9 = [v12 historyItems];
    v10 = [v8 historyItems];
    v11 = [v9 arrayByAddingObjectsFromArray:v10];
    [v12 setHistoryItems:v11];

    [v8 setHistoryItems:MEMORY[0x1E695E0F0]];
  }
}

- (void)_copySharablePasswordSidecarDataFromSharedSidecarsToPersonalSidecars
{
  sitesToSidecars = self->_sitesToSidecars;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__WBSSavedAccount__copySharablePasswordSidecarDataFromSharedSidecarsToPersonalSidecars__block_invoke;
  v3[3] = &unk_1E7CF40F0;
  v3[4] = self;
  [(NSMutableDictionary *)sitesToSidecars enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_copySharableDataFromSharedSidecarIntoPersonalSidecarInDictionary:(id)a3
{
  v5 = a3;
  v3 = [v5 objectForKeyedSubscript:&unk_1F308E498];
  v4 = [v5 objectForKeyedSubscript:&unk_1F308E480];
  if (v4)
  {
    if (v3)
    {
      [(WBSSavedAccountSidecar *)v3 adoptSharableDataFromSharedSidecar:v4];
    }

    else
    {
      v3 = [[WBSSavedAccountSidecar alloc] initWithSharedSidecar:v4];
      [v5 setObject:v3 forKeyedSubscript:&unk_1F308E498];
    }
  }
}

void __66__WBSSavedAccount__removeSharableDataFromPersonalPasswordSidecars__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 objectForKeyedSubscript:&unk_1F308E498];
  [v3 removeSharableData];
}

- (void)_removeSharableDataFromPersonalPasskeySidecars
{
  v2 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E498];
  [v2 removeSharableData];
}

- (void)_createSidecarsForProtectionSpaceIfNecessary:(id)a3
{
  v19 = a3;
  v4 = [v19 host];
  v5 = [(NSMutableDictionary *)self->_sitesToSidecars objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695AC48] safari_credentialWithUser:self->_user password:self->_password persistence:3];
    v7 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:0];
    if (v7)
    {
      v8 = [WBSSavedAccountSidecar alloc];
      v9 = [v7 user];
      v10 = [v7 dictionaryRepresentation];
      v11 = [(WBSSavedAccountSidecar *)v8 initWithUser:v9 protectionSpace:v19 dictionaryRepresentation:v10];

      v12 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      [v12 safari_setSidecar:v11 credential:v6 htmlFormProtectionSpace:v19 forGroupID:self->_sharedGroupID fromRecentlyDeleted:self->_isRecentlyDeleted];

      [(WBSSavedAccount *)self _addSidecar:v11 forSite:v4];
    }

    v13 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:1];
    if (v13)
    {
      v14 = [WBSSavedAccountSharedSidecar alloc];
      v15 = [v13 user];
      v16 = [v13 dictionaryRepresentation];
      v17 = [(WBSSavedAccountSharedSidecar *)v14 initWithUser:v15 protectionSpace:v19 dictionaryRepresentation:v16];

      v18 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      [v18 safari_setSidecar:v17 credential:v6 htmlFormProtectionSpace:v19 forGroupID:self->_sharedGroupID fromRecentlyDeleted:self->_isRecentlyDeleted];

      [(WBSSavedAccount *)self _addSidecar:v17 forSite:v4];
    }
  }
}

- (void)_writeFormerlySharedSavedAccountMarkerForCredentialTypes:(int64_t)a3
{
  v3 = a3;
  v5 = [(WBSSavedAccount *)self credentialTypes];
  v6 = v5 & v3;
  if (v5 & v3)
  {
    v7 = [WBSFormerlySharedSavedAccountMarker alloc];
    v8 = [(WBSSavedAccount *)self password];
    v9 = [(WBSSavedAccount *)self sharedGroupName];
    v10 = [(WBSFormerlySharedSavedAccountMarker *)v7 initWithPasswordManagerCredentialIdentifier:v8 nameOfGroupCredentialWasLastSharedIn:v9];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__WBSSavedAccount__writeFormerlySharedSavedAccountMarkerForCredentialTypes___block_invoke;
    v19[3] = &unk_1E7CF3FC0;
    v20 = v10;
    v11 = v10;
    [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v19];
  }

  if ((v6 & 2) != 0)
  {
    v12 = [WBSFormerlySharedSavedAccountMarker alloc];
    v13 = [(WBSSavedAccount *)self passkeyCredentialID];
    v14 = [(WBSSavedAccount *)self sharedGroupName];
    v15 = [(WBSFormerlySharedSavedAccountMarker *)v12 initWithPasswordManagerCredentialIdentifier:v13 nameOfGroupCredentialWasLastSharedIn:v14];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__WBSSavedAccount__writeFormerlySharedSavedAccountMarkerForCredentialTypes___block_invoke_2;
    v17[3] = &unk_1E7CF3FC0;
    v18 = v15;
    v16 = v15;
    [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:v17];
  }
}

void __76__WBSSavedAccount__writeFormerlySharedSavedAccountMarkerForCredentialTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = v5;
    [v5 setFormerlySharedSavedAccountMarker:*(a1 + 32)];
    v5 = v6;
  }
}

void __76__WBSSavedAccount__writeFormerlySharedSavedAccountMarkerForCredentialTypes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = v5;
    [v5 setFormerlySharedSavedAccountMarker:*(a1 + 32)];
    v5 = v6;
  }
}

- (void)_clearFormerlySharedSavedAccountMarkerForCredentialTypesIfNecessary:(int64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v6 = [(WBSSavedAccount *)self formerlySharedPasswordMarker];
    v5 = v6 != 0;

    if ((v3 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if ((a3 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  v7 = [(WBSSavedAccount *)self formerlySharedPasskeyMarker];

  if (v7)
  {
    v8 = v5 | 2;
    goto LABEL_9;
  }

LABEL_7:
  if (!v5)
  {
    return;
  }

  v8 = 1;
LABEL_9:

  [(WBSSavedAccount *)self _clearFormerlySharedSavedAccountMarkerForCredentialTypes:v8];
}

- (void)_clearFormerlySharedSavedAccountMarkerForCredentialTypes:(int64_t)a3
{
  v3 = a3;
  if (a3)
  {
    [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:&__block_literal_global_65];
  }

  if ((v3 & 2) != 0)
  {

    [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:&__block_literal_global_65];
  }
}

void __76__WBSSavedAccount__clearFormerlySharedSavedAccountMarkerForCredentialTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = v4;
    [v4 setFormerlySharedSavedAccountMarker:0];
    v4 = v5;
  }
}

- (WBSFileVaultRecoveryKeyDeviceInfo)fileVaultRecoveryKeyDeviceInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__15;
  v10 = __Block_byref_object_dispose__15;
  v11 = 0;
  sitesToSidecars = self->_sitesToSidecars;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__WBSSavedAccount_fileVaultRecoveryKeyDeviceInfo__block_invoke;
  v5[3] = &unk_1E7CF3F70;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)sitesToSidecars enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__WBSSavedAccount_fileVaultRecoveryKeyDeviceInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  if ([v6 isSavedInSharedGroup])
  {
    v8 = &unk_1F308E480;
  }

  else
  {
    v8 = &unk_1F308E498;
  }

  v9 = [v7 objectForKeyedSubscript:v8];

  obj = [v9 fileVaultRecoveryKeyDeviceInfo];

  v10 = obj;
  if (obj)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    v10 = obj;
    *a4 = 1;
  }
}

- (void)setFileVaultRecoveryKeyDeviceInfo:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __53__WBSSavedAccount_setFileVaultRecoveryKeyDeviceInfo___block_invoke;
  v10 = &unk_1E7CF3F48;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(&v7);
  [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v6, v7, v8, v9, v10, v11];
}

void __53__WBSSavedAccount_setFileVaultRecoveryKeyDeviceInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2 == 1)
  {
    v8 = [*(a1 + 32) isSavedInSharedGroup];
    v6 = v9;
    if (v8)
    {
LABEL_4:
      [v6 setFileVaultRecoveryKeyDeviceInfo:*(a1 + 40)];
      v6 = v9;
    }
  }

  else
  {
    v6 = v5;
    if (!a2)
    {
      v7 = [*(a1 + 32) isSavedInSharedGroup];
      v6 = v9;
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }
}

- (BOOL)_containsProtectionSpace:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  siteToProtectionSpaces = self->_siteToProtectionSpaces;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__WBSSavedAccount__containsProtectionSpace___block_invoke;
  v8[3] = &unk_1E7CF4138;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(NSMutableDictionary *)siteToProtectionSpaces enumerateKeysAndObjectsUsingBlock:v8];
  LOBYTE(siteToProtectionSpaces) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return siteToProtectionSpaces;
}

uint64_t __44__WBSSavedAccount__containsProtectionSpace___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_deleteCredentialForProtectionSpace:(id)a3 fromStorage:(id)a4 forGroupID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v14 = a3;
  v10 = [v14 host];
  v11 = [v10 length];

  user = self->_user;
  v13 = [(WBSSavedAccount *)self isRecentlyDeleted];
  if (v11)
  {
    [v9 safari_deletePasswordCredentialForUser:user forHTMLFormProtectionSpace:v14 forGroupID:v8 fromRecentlyDeleted:v13];
  }

  else
  {
    [v9 safari_deleteCredentialWithEmptyServerHostForUser:user forHTMLFormProtectionSpace:v14 forGroupID:v8 fromRecentlyDeleted:v13];
  }
}

- (id)_movePasswordCredentialToNewSavedAccount
{
  v3 = [(WBSSavedAccount *)self _copyPasswordCredentialToNewSavedAccount];
  [(WBSSavedAccount *)self _removePasswordCredentialAndSidecars];

  return v3;
}

- (id)_copyPasswordCredentialToNewSavedAccount
{
  v3 = [[WBSSavedAccount alloc] _initWithHighLevelDomain:self->_highLevelDomain user:self->_user password:self->_password];
  v4 = [(NSMutableArray *)self->_sites mutableCopy];
  v5 = *(v3 + 2);
  *(v3 + 2) = v4;

  v6 = [(NSMutableDictionary *)self->_siteToProtectionSpaces mutableCopy];
  v7 = *(v3 + 3);
  *(v3 + 3) = v6;

  v8 = [(NSMutableSet *)self->_sitesForWhichSelfIsDefault mutableCopy];
  v9 = *(v3 + 4);
  *(v3 + 4) = v8;

  objc_storeStrong(v3 + 5, self->_earliestPasswordCredentialModificationDate);
  objc_storeStrong(v3 + 6, self->_earliestPasswordCredentialCreationDate);
  v10 = [(NSMutableDictionary *)self->_sitesToSidecars mutableCopy];
  v11 = *(v3 + 7);
  *(v3 + 7) = v10;

  v12 = [(WBSSavedAccount *)self sharedGroupID];
  [v3 setSharedGroupID:v12];

  v13 = [(WBSSavedAccount *)self sharedGroupName];
  [v3 setSharedGroupName:v13];

  return v3;
}

- (id)_movePasskeyCredentialToNewSavedAccount
{
  v3 = [(WBSSavedAccount *)self _copyPasskeyCredentialToNewSavedAccount];
  [(WBSSavedAccount *)self _removePasskeyCredentialAndSidecars];

  return v3;
}

- (id)_copyPasskeyCredentialToNewSavedAccount
{
  v3 = [WBSSavedAccount alloc];
  highLevelDomain = self->_highLevelDomain;
  user = self->_user;
  passkeyRelyingPartyID = self->_passkeyRelyingPartyID;
  passkeyUserHandle = self->_passkeyUserHandle;
  passkeyCredentialID = self->_passkeyCredentialID;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = [(WBSSavedAccount *)v3 _initWithHighLevelDomain:highLevelDomain passkeyRelyingPartyID:passkeyRelyingPartyID user:user password:0 passkeyUserHandle:passkeyUserHandle passkeyCredentialID:passkeyCredentialID siteToProtectionSpaces:v9 sitesToSidecars:v10 serviceName:0];

  v12 = [(WBSSavedAccount *)self sharedGroupID];
  [v11 setSharedGroupID:v12];

  v13 = [(WBSSavedAccount *)self sharedGroupName];
  [v11 setSharedGroupName:v13];

  v14 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary mutableCopy];
  v15 = v11[8];
  v11[8] = v14;

  return v11;
}

- (void)_deleteCredentialTypes:(int64_t)a3
{
  v3 = a3;
  v5 = [(WBSSavedAccount *)self credentialTypes];
  v6 = v5;
  if (v3)
  {
    [(WBSSavedAccount *)self _deletePasswordCredentialsRemovingCachedCredentialData:v5 == 3];
  }

  if ((v3 & 2) != 0)
  {

    [(WBSSavedAccount *)self _deletePasskeyCredentialRemovingCachedCredentialData:v6 == 3];
  }
}

- (void)_deletePasswordCredentialsRemovingCachedCredentialData:(BOOL)a3
{
  v3 = a3;
  v5 = [(WBSSavedAccount *)self credentialTypes];
  if (v5 != 4)
  {
    if (v5 == 3)
    {
      [(WBSSavedAccount *)self _deleteTOTPGeneratorIfNecessary];
    }

    if ([(WBSSavedAccount *)self isSavedInPersonalKeychain])
    {
      [(WBSSavedAccount *)self _deletePasswordCredentialsInPersonalKeychain];
    }

    if ([(WBSSavedAccount *)self isSavedInSharedGroup])
    {
      [(WBSSavedAccount *)self _deletePasswordCredentialsForGroupID:self->_sharedGroupID];
    }

    if (v3)
    {

      [(WBSSavedAccount *)self _removePasswordCredentialAndSidecars];
    }
  }
}

- (void)_removePasswordCredentialAndSidecars
{
  [(NSMutableDictionary *)self->_sitesToSidecars removeAllObjects];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  siteToProtectionSpaces = self->_siteToProtectionSpaces;
  self->_siteToProtectionSpaces = v3;

  v5 = [MEMORY[0x1E695DFA8] set];
  sitesForWhichSelfIsDefault = self->_sitesForWhichSelfIsDefault;
  self->_sitesForWhichSelfIsDefault = v5;

  sites = self->_sites;
  self->_sites = 0;

  earliestPasswordCredentialModificationDate = self->_earliestPasswordCredentialModificationDate;
  self->_earliestPasswordCredentialModificationDate = 0;

  earliestPasswordCredentialCreationDate = self->_earliestPasswordCredentialCreationDate;
  self->_earliestPasswordCredentialCreationDate = 0;

  password = self->_password;
  self->_password = 0;
}

- (void)_deletePasswordCredentialsForSite:(id)a3
{
  v6 = a3;
  if ([(WBSSavedAccount *)self isSavedInPersonalKeychain])
  {
    [(WBSSavedAccount *)self _deletePasswordCredentialsForSite:v6 forGroupID:0];
  }

  if ([(WBSSavedAccount *)self isSavedInSharedGroup])
  {
    [(WBSSavedAccount *)self _deletePasswordCredentialsForSite:v6 forGroupID:self->_sharedGroupID];
  }

  [(NSMutableDictionary *)self->_siteToProtectionSpaces removeObjectForKey:v6];
  [(NSMutableDictionary *)self->_sitesToSidecars removeObjectForKey:v6];
  [(NSMutableArray *)self->_sites removeObject:v6];
  v4 = [(WBSSavedAccount *)self credentialTypes];
  if (![(NSMutableArray *)self->_sites count]&& v4 == 3)
  {
    password = self->_password;
    self->_password = 0;
  }
}

- (void)_deletePasswordCredentialsForSite:(id)a3 forGroupID:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSMutableDictionary *)self->_siteToProtectionSpaces objectForKey:v6, 0];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [(WBSSavedAccount *)self _deleteCredentialForProtectionSpace:v14 fromStorage:v8 forGroupID:v7];
        [(WBSSavedAccount *)self _deleteSidecarForProtectionSpace:v14 fromStorage:v8 forGroupID:v7];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_deletePasswordCredentialsForGroupID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(WBSSavedAccount *)self protectionSpaces];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WBSSavedAccount *)self _deleteCredentialForProtectionSpace:*(*(&v19 + 1) + 8 * v10++) fromStorage:v5 forGroupID:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v11 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__WBSSavedAccount__deletePasswordCredentialsForGroupID___block_invoke;
  v15[3] = &unk_1E7CF2B48;
  v16 = v11;
  v17 = v4;
  v18 = self;
  v12 = v4;
  v13 = v11;
  [(WBSSavedAccount *)self enumeratePasswordSidecarsWithBlock:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __56__WBSSavedAccount__deletePasswordCredentialsForGroupID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [v6 user];
  v7 = [v6 protectionSpace];

  [v5 safari_deleteSidecarOfType:a2 forUser:v8 htmlFormProtectionSpace:v7 forGroupID:*(a1 + 40) fromRecentlyDeleted:{objc_msgSend(*(a1 + 48), "isRecentlyDeleted")}];
}

- (void)_deletePasskeyCredentialRemovingCachedCredentialData:(BOOL)a3
{
  v3 = a3;
  if ([(WBSSavedAccount *)self isSavedInPersonalKeychain])
  {
    [(WBSSavedAccount *)self _deletePasskeyCredentialForGroupID:&stru_1F3064D08];
  }

  if ([(WBSSavedAccount *)self isSavedInSharedGroup])
  {
    [(WBSSavedAccount *)self _deletePasskeyCredentialForGroupID:self->_sharedGroupID];
  }

  if (v3)
  {

    [(WBSSavedAccount *)self _removePasskeyCredentialAndSidecars];
  }
}

- (void)_removePasskeyCredentialAndSidecars
{
  passkeyCredentialID = self->_passkeyCredentialID;
  self->_passkeyCredentialID = 0;

  [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary removeAllObjects];
  passkeyUserHandle = self->_passkeyUserHandle;
  self->_passkeyUserHandle = 0;

  passkeyRelyingPartyID = self->_passkeyRelyingPartyID;
  self->_passkeyRelyingPartyID = 0;

  creationDateForPasskey = self->_creationDateForPasskey;
  self->_creationDateForPasskey = 0;

  lastModifiedDateForPasskey = self->_lastModifiedDateForPasskey;
  self->_lastModifiedDateForPasskey = 0;

  lastUsedDateForPasskey = self->_lastUsedDateForPasskey;
  self->_lastUsedDateForPasskey = 0;
}

- (void)_deleteSidecarForPasskeyCredentialForGroupID:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary count])
  {
    v5 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__WBSSavedAccount__deleteSidecarForPasskeyCredentialForGroupID___block_invoke;
    v7[3] = &unk_1E7CF2B48;
    v8 = v5;
    v9 = v4;
    v10 = self;
    v6 = v5;
    [(WBSSavedAccount *)self enumeratePasskeySidecarsWithBlock:v7];
  }
}

void __64__WBSSavedAccount__deleteSidecarForPasskeyCredentialForGroupID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [v6 user];
  v7 = [v6 protectionSpace];

  [v5 safari_deleteSidecarOfType:a2 forUser:v8 htmlFormProtectionSpace:v7 forGroupID:*(a1 + 40) fromRecentlyDeleted:{objc_msgSend(*(a1 + 48), "isRecentlyDeleted")}];
}

- (void)_deletePasskeyCredentialForGroupID:(id)a3
{
  if (self->_passkeyCredentialID)
  {
    v4 = MEMORY[0x1E695AC50];
    v6 = a3;
    v5 = [v4 sharedCredentialStorage];
    [v5 safari_deletePasskeyFromSavedAccount:self groupID:v6];

    [(WBSSavedAccount *)self _deleteSidecarForPasskeyCredentialForGroupID:v6];
  }
}

- (void)_deleteSidecarForProtectionSpace:(id)a3 fromStorage:(id)a4 forGroupID:(id)a5
{
  user = self->_user;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [v10 safari_deleteSidecarOfType:0 forUser:user htmlFormProtectionSpace:v11 forGroupID:v9 fromRecentlyDeleted:{-[WBSSavedAccount isRecentlyDeleted](self, "isRecentlyDeleted")}];
}

- (void)_deleteTOTPGeneratorIfNecessary
{
  v3 = [(WBSSavedAccount *)self totpGenerators];
  v4 = [v3 firstObject];

  if (v4)
  {
    [(WBSSavedAccount *)self setTOTPGenerator:0];
  }
}

- (NSArray)sitesAndAdditionalSites
{
  v3 = [(WBSSavedAccount *)self sites];
  v4 = [(WBSSavedAccount *)self additionalSites];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (NSArray)sites
{
  os_unfair_lock_lock(&self->_lock);
  sites = self->_sites;
  if (!sites)
  {
    v4 = [(NSMutableDictionary *)self->_siteToProtectionSpaces allKeys];
    v5 = [v4 safari_filterObjectsUsingBlock:&__block_literal_global_71];
    v6 = [v5 mutableCopy];
    v7 = self->_sites;
    self->_sites = v6;

    [(NSMutableArray *)self->_sites sortUsingSelector:sel_localizedCompare_];
    sites = self->_sites;
  }

  v8 = [(NSMutableArray *)sites copy];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (int64_t)compare:(id)a3 byType:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    if ([(WBSSavedAccount *)self hasValidWebsite])
    {
      [(WBSSavedAccount *)self userVisibleDomain];
    }

    else
    {
      [(WBSSavedAccount *)self effectiveTitleForSorting];
    }
    v7 = ;
    if ([v6 hasValidWebsite])
    {
      v8 = [v6 userVisibleDomain];
      goto LABEL_10;
    }

LABEL_9:
    v8 = [v6 effectiveTitleForSorting];
LABEL_10:
    v9 = v8;
    v10 = [v7 safari_localizedCompareSortingEmptyStringAndNumericPrefixToEnd:v8];

    if (v10)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (!a4)
  {
    v7 = [(WBSSavedAccount *)self effectiveTitleForSorting];
    goto LABEL_9;
  }

LABEL_11:
  v11 = *(v6 + 104);
  if (self->_userIsNeverSaveMarker)
  {
    if ((v6[13] & 1) == 0)
    {
LABEL_22:
      v10 = NSOrderedAscending;
      goto LABEL_23;
    }
  }

  else if (v6[13])
  {
LABEL_20:
    v10 = NSOrderedDescending;
    goto LABEL_23;
  }

  if (!-[NSString length](self->_user, "length") && [v6[15] length])
  {
    goto LABEL_20;
  }

  if (![v6[15] length] && -[NSString length](self->_user, "length"))
  {
    goto LABEL_22;
  }

  v10 = [(NSString *)self->_user localizedStandardCompare:v6[15]];
  if (v10 == NSOrderedSame)
  {
    v12 = [(WBSSavedAccount *)self sites];
    v13 = [v12 firstObject];
    v14 = [v6 sites];
    v15 = [v14 firstObject];
    v10 = [v13 localizedStandardCompare:v15];
  }

LABEL_23:

  return v10;
}

- (BOOL)isDuplicateWithoutUserNameOfSavedAccount:(id)a3
{
  v4 = a3;
  if ([(WBSSavedAccount *)self isEqual:v4]|| [(NSString *)self->_user length])
  {
    v5 = 0;
  }

  else
  {
    password = self->_password;
    v8 = [v4 password];
    if ([(NSString *)password isEqualToString:v8])
    {
      highLevelDomain = self->_highLevelDomain;
      v10 = [v4 highLevelDomain];
      v5 = [(NSString *)highLevelDomain isEqualToString:v10];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualForSuggestingDuplicatesCleanup:(id)a3
{
  v4 = a3;
  v5 = [(WBSSavedAccount *)self highLevelDomain];
  v6 = [v4 highLevelDomain];
  v7 = WBSIsEqual(v5, v6);

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [(WBSSavedAccount *)self user];
  v9 = [v4 user];
  v10 = WBSIsEqual(v8, v9);

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [(WBSSavedAccount *)self credentialTypes];
  if (v11 != [v4 credentialTypes])
  {
    goto LABEL_10;
  }

  v12 = [(WBSSavedAccount *)self password];
  v13 = [v4 password];
  v14 = WBSIsEqual(v12, v13);

  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = [(WBSSavedAccount *)self passkeyRelyingPartyID];
  v16 = [v4 passkeyRelyingPartyID];
  v17 = WBSIsEqual(v15, v16);

  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = [(WBSSavedAccount *)self passkeyCredentialID];
  v19 = [v4 passkeyCredentialID];
  v20 = WBSIsEqual(v18, v19);

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x1E695DFD8]);
    v22 = [(WBSSavedAccount *)self totpGenerators];
    v23 = [v21 initWithArray:v22];

    v24 = objc_alloc(MEMORY[0x1E695DFD8]);
    v25 = [v4 totpGenerators];
    v26 = [v24 initWithArray:v25];

    if (WBSIsEqual(v23, v26) && (-[WBSSavedAccount notesEntry](self, "notesEntry"), v27 = objc_claimAutoreleasedReturnValue(), [v4 notesEntry], v28 = objc_claimAutoreleasedReturnValue(), v29 = WBSIsEqual(v27, v28), v28, v27, v29))
    {
      v30 = [(WBSSavedAccount *)self customTitle];
      v31 = [v4 customTitle];
      v32 = WBSIsEqual(v30, v31);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
LABEL_10:
    v32 = 0;
  }

  return v32;
}

- (void)_setUser:(id)a3 password:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccount _setUser:password:];
      }

      v8 = self->_password;
    }

    v10 = [v6 isEqualToString:self->_user];
    if (v10)
    {
      if ([(NSString *)v8 isEqualToString:self->_password])
      {
        goto LABEL_40;
      }
    }

    else if (self->_passkeyCredentialID && [(WBSSavedAccount *)self credentialTypes]== 2)
    {
      v12 = [v6 copy];
      user = self->_user;
      self->_user = v12;

      goto LABEL_40;
    }

    v14 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v45 = v8;
    v46 = v6;
    v15 = [MEMORY[0x1E695AC48] safari_credentialWithUser:v6 password:v8 persistence:3];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = self->_siteToProtectionSpaces;
    v49 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v49)
    {
      v48 = *v63;
      v16 = &stru_1F3064D08;
      do
      {
        v17 = 0;
        do
        {
          if (*v63 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = v17;
          v18 = *(*(&v62 + 1) + 8 * v17);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v19 = [(NSMutableDictionary *)self->_siteToProtectionSpaces objectForKeyedSubscript:v18];
          v20 = [v19 countByEnumeratingWithState:&v58 objects:v66 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v59;
            v51 = *v59;
            do
            {
              v23 = 0;
              v52 = v21;
              do
              {
                if (*v59 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v58 + 1) + 8 * v23);
                if ((v10 & 1) == 0)
                {
                  if ([(WBSSavedAccount *)self isSavedInPersonalKeychain])
                  {
                    v25 = self->_user;
                    v26 = [(WBSSavedAccount *)self isRecentlyDeleted];
                    v27 = v25;
                    v21 = v52;
                    [v14 safari_deletePasswordCredentialForUser:v27 forHTMLFormProtectionSpace:v24 forGroupID:v16 fromRecentlyDeleted:v26];
                  }

                  if ([(WBSSavedAccount *)self isSavedInSharedGroup])
                  {
                    v28 = self->_user;
                    v29 = v19;
                    v30 = v10;
                    v31 = v16;
                    v32 = v15;
                    sharedGroupID = self->_sharedGroupID;
                    v34 = [(WBSSavedAccount *)self isRecentlyDeleted];
                    v35 = v28;
                    v36 = sharedGroupID;
                    v15 = v32;
                    v16 = v31;
                    v10 = v30;
                    v19 = v29;
                    v22 = v51;
                    v21 = v52;
                    [v14 safari_deletePasswordCredentialForUser:v35 forHTMLFormProtectionSpace:v24 forGroupID:v36 fromRecentlyDeleted:v34];
                  }
                }

                if ([(WBSSavedAccount *)self isSavedInPersonalKeychain])
                {
                  [v14 safari_setCredential:v15 forHTMLFormProtectionSpace:v24 forGroupID:v16];
                }

                if ([(WBSSavedAccount *)self isSavedInSharedGroup])
                {
                  [v14 safari_setCredential:v15 forHTMLFormProtectionSpace:v24 forGroupID:self->_sharedGroupID];
                }

                ++v23;
              }

              while (v21 != v23);
              v21 = [v19 countByEnumeratingWithState:&v58 objects:v66 count:16];
            }

            while (v21);
          }

          v17 = v50 + 1;
        }

        while (v50 + 1 != v49);
        v49 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v49);
    }

    v6 = v46;
    if ((v10 & 1) == 0)
    {
      sitesToSidecars = self->_sitesToSidecars;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __37__WBSSavedAccount__setUser_password___block_invoke;
      v53[3] = &unk_1E7CF41B0;
      v54 = v14;
      v55 = self;
      v56 = v46;
      v57 = v15;
      [(NSMutableDictionary *)sitesToSidecars enumerateKeysAndObjectsUsingBlock:v53];
    }

    v8 = v45;
    v38 = [(NSString *)v45 copy];
    password = self->_password;
    self->_password = v38;

    v40 = [v46 copy];
    v41 = self->_user;
    self->_user = v40;

    v42 = self->_user;
    v43 = +[WBSDontSaveMarker dontSaveMarker];
    self->_userIsNeverSaveMarker = [(NSString *)v42 isEqualToString:v43];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccount _setUser:password:];
    }
  }

LABEL_40:

  v44 = *MEMORY[0x1E69E9840];
}

void __37__WBSSavedAccount__setUser_password___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__WBSSavedAccount__setUser_password___block_invoke_2;
  v11[3] = &unk_1E7CF4188;
  v5 = a1 + 5;
  *&v6 = a1[4];
  *(&v6 + 1) = *v5;
  v10 = v6;
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
}

void __37__WBSSavedAccount__setUser_password___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = [v25 protectionSpace];
  v7 = [*(a1 + 32) credentialsForProtectionSpace:v6];
  v8 = [v7 objectForKeyedSubscript:*(*(a1 + 40) + 120)];

  if (v5 == 1)
  {
    v19 = *(a1 + 32);
    v20 = [v8 user];
    [v19 safari_deleteSidecarOfType:1 forUser:v20 htmlFormProtectionSpace:v6 forGroupID:*(*(a1 + 40) + 176) fromRecentlyDeleted:{objc_msgSend(*(a1 + 40), "isRecentlyDeleted")}];

    [v25 setUser:*(a1 + 48)];
    v21 = *(a1 + 56);
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24 = v22[22];
    v13 = [v22 isRecentlyDeleted];
    v14 = v23;
    v15 = v25;
    v16 = v21;
    v17 = v6;
    v18 = v24;
    goto LABEL_5;
  }

  if (!v5)
  {
    v9 = *(a1 + 32);
    v10 = [v8 user];
    [v9 safari_deleteSidecarOfType:0 forUser:v10 htmlFormProtectionSpace:v6 forGroupID:0 fromRecentlyDeleted:{objc_msgSend(*(a1 + 40), "isRecentlyDeleted")}];

    [v25 setUser:*(a1 + 48)];
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) isRecentlyDeleted];
    v14 = v12;
    v15 = v25;
    v16 = v11;
    v17 = v6;
    v18 = 0;
LABEL_5:
    [v14 safari_setSidecar:v15 credential:v16 htmlFormProtectionSpace:v17 forGroupID:v18 fromRecentlyDeleted:v13];
    goto LABEL_7;
  }

  [v25 setUser:*(a1 + 48)];
LABEL_7:
}

- (void)_adoptSitesFromSavedAccount:(id)a3
{
  if (self != a3)
  {
    v12[9] = v3;
    v12[10] = v4;
    v7 = *(a3 + 3);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__WBSSavedAccount__adoptSitesFromSavedAccount___block_invoke;
    v12[3] = &unk_1E7CF4160;
    v12[4] = self;
    v8 = a3;
    [v7 enumerateKeysAndObjectsUsingBlock:v12];
    v9 = *(a3 + 3);
    *(a3 + 3) = 0;

    v10 = v8[2];
    v8[2] = 0;

    sites = self->_sites;
    self->_sites = 0;
  }
}

void __47__WBSSavedAccount__adoptSitesFromSavedAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v5];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(*(a1 + 32) + 24) setObject:v7 forKeyedSubscript:v5];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (([v7 containsObject:{v13, v15}] & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (NSString)userVisibleDomain
{
  if (![(WBSSavedAccount *)self hasValidWebsite])
  {
    v5 = &stru_1F3064D08;
    goto LABEL_18;
  }

  if (self->_shouldShowSpecificSubdomainForUserVisibleDomain)
  {
    goto LABEL_6;
  }

  if (setOfHighLevelDomainsWhereFullDomainIsPreferableToHighLevelDomainForDisplayToUser_onceToken != -1)
  {
    [WBSSavedAccount userVisibleDomain];
  }

  if ([setOfHighLevelDomainsWhereFullDomainIsPreferableToHighLevelDomainForDisplayToUser_set containsObject:self->_highLevelDomain])
  {
LABEL_6:
    v3 = [(WBSSavedAccount *)self userVisibleSites];
    if ([(NSString *)v3 count])
    {
      v4 = [(NSString *)v3 objectAtIndexedSubscript:0];
      goto LABEL_17;
    }
  }

  if (([(WBSSavedAccount *)self credentialTypes]& 1) != 0 && [(WBSSavedAccount *)self _allSitesHaveSameNonDefaultPort:0])
  {
    v5 = [(WBSSavedAccount *)self _highLevelDomainWithPortIncluded];
    goto LABEL_18;
  }

  if (domainIsUUID(self->_highLevelDomain))
  {
    v6 = [(WBSSavedAccount *)self additionalSites];
    v3 = [v6 firstObject];
  }

  else
  {
    v3 = self->_highLevelDomain;
  }

  v4 = [(NSString *)v3 _lp_userVisibleHost];
LABEL_17:
  v5 = v4;

LABEL_18:

  return v5;
}

- (NSArray)userVisibleSites
{
  v3 = [(WBSSavedAccount *)self sites];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__WBSSavedAccount_userVisibleSites__block_invoke;
  v7[3] = &unk_1E7CF41D8;
  v7[4] = self;
  v4 = [v3 safari_mapObjectsUsingBlock:v7];
  v5 = [v4 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  return v5;
}

id __35__WBSSavedAccount_userVisibleSites__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:a2];
  v3 = [v2 firstObject];
  v4 = [v3 safari_userVisibleSiteForProtectionSpace];

  return v4;
}

- (NSString)monogramCharacter
{
  v3 = [(WBSSavedAccount *)self customTitle];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safari_monogramString];
  }

  else
  {
    v6 = [(NSString *)self->_highLevelDomain _lp_userVisibleHost];
    v5 = [v6 safari_monogramString];
  }

  return v5;
}

- (void)setAdditionalSites:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:[(WBSSavedAccount *)self isSavedInSharedGroup]];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v5 additionalSites];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __38__WBSSavedAccount_setAdditionalSites___block_invoke;
        v21[3] = &unk_1E7CF4220;
        v21[4] = v11;
        v13 = [v12 safari_firstObjectPassingTest:v21];

        if (v13)
        {
          [v6 addObject:v13];
        }

        else
        {
          v14 = [[WBSSavedAccountAdditionalSite alloc] initWithSite:v11];
          [v6 addObject:v14];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__WBSSavedAccount_setAdditionalSites___block_invoke_2;
  aBlock[3] = &unk_1E7CF3F48;
  aBlock[4] = self;
  v20 = v6;
  v15 = v6;
  v16 = _Block_copy(aBlock);
  [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v16];
  [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:v16];

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __38__WBSSavedAccount_setAdditionalSites___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 site];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __38__WBSSavedAccount_setAdditionalSites___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2 == 1)
  {
    v8 = [*(a1 + 32) isSavedInSharedGroup];
    v6 = v9;
    if (v8)
    {
LABEL_4:
      [v6 setAdditionalSites:*(a1 + 40)];
      v6 = v9;
    }
  }

  else
  {
    v6 = v5;
    if (!a2)
    {
      v7 = [*(a1 + 32) isSavedInSharedGroup];
      v6 = v9;
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }
}

- (NSArray)protectionSpacesIncludingAdditionalSites
{
  v3 = [(WBSSavedAccount *)self protectionSpaces];
  v4 = [(WBSSavedAccount *)self protectionSpacesForAdditionalSites];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (NSArray)protectionSpacesForAdditionalSites
{
  v2 = [(WBSSavedAccount *)self additionalSites];
  v3 = [v2 safari_mapObjectsUsingBlock:&__block_literal_global_85_0];

  return v3;
}

id __53__WBSSavedAccount_protectionSpacesForAdditionalSites__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  [WBSSavedAccountStore getProtectionSpaceAndHighLevelDomainForUserTypedSite:a2 protectionSpace:&v6 highLevelDomain:&v5];
  v2 = v6;
  v3 = v6;

  return v2;
}

- (NSArray)personalHistoryItems
{
  v2 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 historyItems];
    v5 = [v4 safari_filterObjectsUsingBlock:&__block_literal_global_88_0];

    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_92];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

BOOL __39__WBSSavedAccount_personalHistoryItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t __39__WBSSavedAccount_personalHistoryItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  v8 = -1;
  if (v7 != 1)
  {
    v8 = 1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (NSArray)sharedHistoryItems
{
  v2 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 historyItems];
    v5 = [v4 safari_filterObjectsUsingBlock:&__block_literal_global_94];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

BOOL __37__WBSSavedAccount_sharedHistoryItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (NSArray)historyItems
{
  v3 = [(WBSSavedAccount *)self personalHistoryItems];
  v4 = [(WBSSavedAccount *)self sharedHistoryItems];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (void)addItemToAccountHistory:(id)a3
{
  v18 = a3;
  v4 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:1];
  v5 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:0];
  v6 = [v5 historyItems];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] array];
  }

  v10 = v9;

  v11 = [v4 historyItems];
  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E695DF70] array];
  }

  v15 = v14;

  v16 = +[WBSGeneratedPasswordStore sharedStore];
  [v16 removeGeneratedPasswordMatchingSavedAccount:self];

  if ([(WBSSavedAccount *)self isSavedInSharedGroup])
  {
    v17 = v15;
  }

  else
  {
    v17 = v10;
  }

  [v17 addObject:v18];
  [(WBSSavedAccount *)self _updateSidecarsWithHistoryItems:v10 sharedSidecar:v15];
}

- (void)_updateSidecarsWithHistoryItems:(id)a3 sharedSidecar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __65__WBSSavedAccount__updateSidecarsWithHistoryItems_sharedSidecar___block_invoke;
  v14 = &unk_1E7CF3F48;
  v15 = v6;
  v16 = v7;
  v8 = v7;
  v9 = v6;
  v10 = _Block_copy(&v11);
  [(WBSSavedAccount *)self _updatePasswordSidecarsIfNecessaryWithBlock:v10, v11, v12, v13, v14];
  [(WBSSavedAccount *)self _updatePasskeySidecarsIfNecessaryWithBlock:v10];
}

void __65__WBSSavedAccount__updateSidecarsWithHistoryItems_sharedSidecar___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v6 = 40;
  }

  else
  {
    v6 = 32;
  }

  v7 = v5;
  [v5 setHistoryItems:*(a1 + v6)];
  v5 = v7;
LABEL_6:
}

- (void)deleteItemFromAccountHistory:(id)a3
{
  v4 = a3;
  v5 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:0];
  v6 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:1];
  v7 = [v5 historyItems];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__WBSSavedAccount_deleteItemFromAccountHistory___block_invoke;
  v18[3] = &unk_1E7CF42A8;
  v8 = v4;
  v19 = v8;
  v9 = [v7 safari_filterObjectsUsingBlock:v18];

  v10 = [v6 historyItems];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __48__WBSSavedAccount_deleteItemFromAccountHistory___block_invoke_2;
  v16 = &unk_1E7CF42A8;
  v17 = v8;
  v11 = v8;
  v12 = [v10 safari_filterObjectsUsingBlock:&v13];

  [(WBSSavedAccount *)self _updateSidecarsWithHistoryItems:v9 sharedSidecar:v12, v13, v14, v15, v16];
}

- (WBSPasswordWarningHideMarker)hideWarningMarker
{
  v2 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 hideWarningMarker];
  }

  return v3;
}

- (BOOL)isOneTimeSharable
{
  if ([(WBSSavedAccount *)self userIsNeverSaveMarker])
  {
    return 0;
  }

  v3 = [(WBSSavedAccount *)self credentialTypes];
  v4 = +[WBSPrimaryAppleAccountObserver sharedObserver];
  v5 = [v4 isCurrentAppleIDManaged];

  if (v5 && (v3 & 2) != 0)
  {
    return 0;
  }

  v7 = [(WBSSavedAccount *)self isCurrentUserOriginalContributor];
  v8 = v3 & 1;
  if ((v3 & 2) != 0)
  {
    v8 = v7;
  }

  return v7 && v8;
}

- (id)_exportPasskeyCredential
{
  if ([(NSString *)self->_passkeyCredentialID length])
  {
    v3 = +[WBSSavedAccountStore sharedStore];
    v4 = [v3 exportPasskeyCredentialWithID:self->_passkeyCredentialID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)lastOneTimeShareDateForPasskey
{
  v2 = [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary objectForKeyedSubscript:&unk_1F308E498];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 lastOneTimeShareDateForPasskey];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_allSitesHaveSameNonDefaultPort:(int64_t *)a3
{
  v4 = [(WBSSavedAccount *)self protectionSpaces];
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [v5 port];
    v7 = 0;
    if (v6 && v6 != 80 && v6 != 443)
    {
      if (a3)
      {
        *a3 = v6;
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__WBSSavedAccount__allSitesHaveSameNonDefaultPort___block_invoke;
      v9[3] = &__block_descriptor_40_e30_B16__0__NSURLProtectionSpace_8l;
      v9[4] = v6;
      v7 = [v4 safari_allObjectsPassTest:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_highLevelDomainWithPortIncluded
{
  siteToProtectionSpaces = self->_siteToProtectionSpaces;
  v4 = [(NSMutableArray *)self->_sites firstObject];
  v5 = [(NSMutableDictionary *)siteToProtectionSpaces objectForKeyedSubscript:v4];
  v6 = [v5 firstObject];

  v7 = objc_alloc(MEMORY[0x1E695AC58]);
  highLevelDomain = self->_highLevelDomain;
  v9 = [v6 port];
  v10 = [v6 protocol];
  v11 = [v6 realm];
  v12 = [v6 authenticationMethod];
  v13 = [v7 initWithHost:highLevelDomain port:v9 protocol:v10 realm:v11 authenticationMethod:v12];

  v14 = [v13 safari_userVisibleSiteForProtectionSpace];

  return v14;
}

- (id)_formerlySharedMarkerForCredentialType:(int64_t)a3
{
  if ([(WBSSavedAccount *)self isSavedInSharedGroup])
  {
LABEL_2:
    v5 = 0;
    goto LABEL_33;
  }

  v5 = 0;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v7 = [(WBSSavedAccount *)self _firstSidecarForAnySiteOfType:0];
        break;
      case 2:
        v7 = [(WBSSavedAccount *)self _passkeySidecarOfType:0];
        break;
      case 3:
        v6 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [WBSSavedAccount _formerlySharedMarkerForCredentialType:];
        }

        goto LABEL_2;
      default:
LABEL_16:
        v8 = [v5 formerlySharedSavedAccountMarker];
        v9 = v8;
        if (!v8)
        {
LABEL_31:
          v10 = 0;
          goto LABEL_32;
        }

        v10 = 0;
        if (a3 > 7)
        {
          if ((a3 - 8) >= 2)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (a3 == 1)
          {
            v12 = [v8 passwordManagerCredentialIdentifier];
            v13 = [(WBSSavedAccount *)self password];
          }

          else
          {
            if (a3 != 2)
            {
              goto LABEL_30;
            }

            v12 = [v8 passwordManagerCredentialIdentifier];
            v13 = [(WBSSavedAccount *)self passkeyCredentialID];
          }

          v14 = v13;
          v15 = [v12 isEqual:v13];

          if (!v15)
          {
LABEL_30:
            [(WBSSavedAccount *)self _clearFormerlySharedSavedAccountMarkerForCredentialTypes:a3];
            goto LABEL_31;
          }

          v10 = v9;
        }

LABEL_32:

        v5 = v10;
        goto LABEL_33;
    }

    v5 = v7;
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [WBSSavedAccount _formerlySharedMarkerForCredentialType:v11];
        }

        goto LABEL_2;
      }
    }

    goto LABEL_16;
  }

  if ((a3 - 8) >= 2 && a3 != 4)
  {
    goto LABEL_16;
  }

LABEL_33:

  return v5;
}

+ (void)enumerateRangesMatchingPatternWithTokenizer:(__CFStringTokenizer *)a3 string:(id)a4 pattern:(id)a5 matchingType:(int64_t)a6 withBlock:(id)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v13 = [v11 safari_stringByTrimmingWhitespace];
  if ([v13 length])
  {
    v14 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    v15 = [v14 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", 0)}];

    v16 = [(__CFString *)v10 length];
    v17 = [v13 length];
    v34.location = 0;
    v34.length = v16;
    CFStringTokenizerSetString(a3, v10, v34);
    v18 = [(__CFString *)v10 rangeOfString:v13 options:1];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = v18;
      v30 = ((a6 - 4) < 0xFFFFFFFFFFFFFFFDLL) & v15;
      v28 = a6;
      while (v30)
      {
        v21 = CFStringTokenizerGoToTokenAtIndex(a3, v20);
        location = CFStringTokenizerGetCurrentTokenRange(a3).location;
        if (a6 == 7)
        {
          if (!v20 && !location)
          {
            break;
          }
        }

        else if (location == v20)
        {
          break;
        }

        if ((v21 & 2) != 0)
        {
          CurrentSubTokens = CFStringTokenizerGetCurrentSubTokens(a3, ranges, 32, 0);
          if (CurrentSubTokens >= 1)
          {
            v24 = CurrentSubTokens;
            for (i = 0; i < v24; ++i)
            {
              while (1)
              {
                v26 = ranges[i].location;
                if (v26 == v20)
                {
                  break;
                }

                ++i;
                if (v26 > v20 || i >= v24)
                {
                  goto LABEL_24;
                }
              }

              v31 = 0;
              v12[2](v12, v20, v17, &v31);
              if (v31)
              {
                goto LABEL_3;
              }
            }
          }

LABEL_24:
          a6 = v28;
        }

LABEL_10:
        v20 = [(__CFString *)v10 rangeOfString:v13 options:1 range:v20 + v17, v16 - (v20 + v17), v28];
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_3;
        }
      }

      LOBYTE(ranges[0].location) = 0;
      (v12)[2](v12, v20, v17, ranges);
      if (ranges[0].location)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }
  }

LABEL_3:

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)stringMatchesPatternWithTokenizer:(__CFStringTokenizer *)a3 string:(id)a4 pattern:(id)a5 matchingType:(int64_t)a6
{
  v6 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:a3 string:a4 pattern:a5 matchingType:a6];
  v7 = v6 != 0;

  return v7;
}

- (id)_stringMatchesPatternWithTokenizer:(__CFStringTokenizer *)a3 string:(id)a4 pattern:(id)a5 matchingType:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = [objc_opt_class() searchMatchWithTokenizer:a3 string:v10 searchPattern:v9 matchingType:a6];

  return v11;
}

+ (id)searchMatchWithTokenizer:(__CFStringTokenizer *)a3 string:(id)a4 searchPattern:(id)a5 matchingType:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    if ([objc_opt_class() _shouldUseFuzzyStringMatchingForMatchingType:a6])
    {
      v12 = [a1 fuzzyMatchString:v10 with:v11 matchingType:a6];
    }

    else
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x3010000000;
      v22 = 0;
      v23 = 0;
      v21 = &unk_1B85A7575;
      v13 = objc_opt_class();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __78__WBSSavedAccount_searchMatchWithTokenizer_string_searchPattern_matchingType___block_invoke;
      v17[3] = &unk_1E7CF42F0;
      v17[4] = &v18;
      v17[5] = &v24;
      [v13 enumerateRangesMatchingPatternWithTokenizer:a3 string:v10 pattern:v11 matchingType:a6 withBlock:v17];
      if (v25[3])
      {
        v14 = [_TtC10SafariCore26WBSSavedAccountSearchMatch alloc];
        v15 = [v11 length];
        v12 = [(WBSSavedAccountSearchMatch *)v14 initWithScore:v15 matchingType:a6 matchingRange:v19[4], v19[5]];
      }

      else
      {
        v12 = 0;
      }

      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v24, 8);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __78__WBSSavedAccount_searchMatchWithTokenizer_string_searchPattern_matchingType___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  v4 = *(*(result + 32) + 8);
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

- (BOOL)matchesServiceNameHintString:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E695E480];
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v41.location = 0;
  v41.length = 0;
  v7 = CFStringTokenizerCreate(v5, 0, v41, 0, v6);
  v8 = objc_alloc_init(WBSScopeExitHandler);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __48__WBSSavedAccount_matchesServiceNameHintString___block_invoke;
  v37[3] = &__block_descriptor_40_e5_v8__0l;
  v37[4] = v7;
  v27 = v8;
  [(WBSScopeExitHandler *)v8 setHandler:v37];
  v9 = [(WBSSavedAccount *)self highLevelDomain];
  v10 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
  v28 = v4;
  v11 = [(WBSSavedAccount *)self _quirksForServiceName:v4];
  [v10 addObjectsFromArray:v11];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        if ([v9 length])
        {
          v18 = [(WBSSavedAccount *)self highLevelDomain];
          LOBYTE(v19) = 1;
          v20 = [(WBSSavedAccount *)self stringMatchesPatternWithTokenizer:v7 string:v18 pattern:v17 matchingType:1];

          if (v20)
          {
            v21 = v12;
            goto LABEL_24;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v21 = [(WBSSavedAccount *)self customTitle];
  if ([v21 length])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v12;
    v19 = [v22 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v19)
    {
      v23 = *v30;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v22);
          }

          if ([(WBSSavedAccount *)self stringMatchesPatternWithTokenizer:v7 string:v21 pattern:*(*(&v29 + 1) + 8 * j) matchingType:3])
          {
            LOBYTE(v19) = 1;
            goto LABEL_22;
          }
        }

        v19 = [v22 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {
    LOBYTE(v19) = 0;
  }

LABEL_24:

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)_searchMatchForSearchPattern:(id)a3 matchAgainstUser:(BOOL)a4 associatedDomains:(id)a5
{
  v164[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = *MEMORY[0x1E695E480];
  v10 = [MEMORY[0x1E695DF58] currentLocale];
  v166.location = 0;
  v166.length = 0;
  v11 = CFStringTokenizerCreate(v9, 0, v166, 0, v10);
  v12 = objc_alloc_init(WBSScopeExitHandler);
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 3221225472;
  v154[2] = __83__WBSSavedAccount__searchMatchForSearchPattern_matchAgainstUser_associatedDomains___block_invoke;
  v154[3] = &__block_descriptor_40_e5_v8__0l;
  v154[4] = v11;
  [(WBSScopeExitHandler *)v12 setHandler:v154];
  v13 = [v7 safari_stringByTrimmingWhitespace];
  v14 = [(WBSSavedAccount *)self credentialTypes];
  v15 = 0;
  if (v14 <= 3)
  {
    if (v14 == 1)
    {
      v44 = [(WBSSavedAccount *)self sites];
    }

    else
    {
      if (v14 != 2)
      {
        v16 = 0;
        if (v14 != 3)
        {
          goto LABEL_36;
        }

        v17 = [(WBSSavedAccount *)self sites];
        v15 = [v17 arrayByAddingObject:self->_passkeyRelyingPartyID];

        goto LABEL_35;
      }

      v164[0] = self->_passkeyRelyingPartyID;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:1];
    }

    v15 = v44;
LABEL_35:
    v16 = 0;
    goto LABEL_36;
  }

  if ((v14 - 8) < 2)
  {
    v115 = v7;
    v18 = [(WBSSavedAccount *)self fileVaultRecoveryKeyDeviceInfo];
    v19 = MEMORY[0x1E695DF70];
    password = self->_password;
    v161[0] = self->_recoveryKeySerialNumber;
    v161[1] = password;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:2];
    v22 = [v19 arrayWithArray:v21];

    v23 = [v18 model];

    if (v23)
    {
      v24 = [v18 model];
      [v22 addObject:v24];
    }

    v119 = v8;
    v125 = v12;
    v25 = [v18 variant];

    if (v25)
    {
      v26 = [v18 variant];
      [v22 addObject:v26];
    }

    v27 = _WBSLocalizedString(@"Recovery Key", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v160[0] = v27;
    v28 = _WBSLocalizedString(@"FileVault", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v160[1] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:2];

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v30 = v22;
    v31 = [v30 countByEnumeratingWithState:&v146 objects:v159 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v147;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v147 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:*(*(&v146 + 1) + 8 * i) pattern:v13 matchingType:1];
          if (v35)
          {
            v16 = v35;

            v7 = v115;
            v8 = v119;
            v12 = v125;
            goto LABEL_120;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v146 objects:v159 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v36 = v29;
    v37 = [v36 countByEnumeratingWithState:&v142 objects:v158 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v143;
      while (2)
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v143 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:*(*(&v142 + 1) + 8 * j) pattern:v13 matchingType:7];
          if (v41)
          {
            v16 = v41;
            v42 = 0;
            goto LABEL_80;
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v142 objects:v158 count:16];
        if (v38)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
    v42 = 1;
LABEL_80:

    v12 = v125;
    if (!v42)
    {
      v7 = v115;
      v8 = v119;
      goto LABEL_120;
    }

    v15 = 0;
    v7 = v115;
    v8 = v119;
LABEL_36:
    v45 = [(WBSSavedAccount *)self customTitle];
    if (v45)
    {
      v46 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:v45 pattern:v13 matchingType:3];

      if (v46)
      {
        v16 = v46;
LABEL_119:

        goto LABEL_120;
      }

      v120 = v8;
      v126 = v12;
      v112 = v45;
      [(WBSSavedAccount *)self _quirksForServiceName:v45];
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v52 = v141 = 0u;
      v53 = [v52 countByEnumeratingWithState:&v138 objects:v157 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v139;
        while (2)
        {
          for (k = 0; k != v54; ++k)
          {
            if (*v139 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:*(*(&v138 + 1) + 8 * k) pattern:v13 matchingType:5];
            if (v57)
            {
              v16 = v57;

              v8 = v120;
              v12 = v126;
              v45 = v112;
              goto LABEL_119;
            }
          }

          v54 = [v52 countByEnumeratingWithState:&v138 objects:v157 count:16];
          if (v54)
          {
            continue;
          }

          break;
        }
      }

      v116 = v15;
      v47 = v7;

      v16 = 0;
      v48 = v120;
      v12 = v126;
      v45 = v112;
    }

    else
    {
      v116 = v15;
      v47 = v7;
      v48 = v8;
    }

    v49 = [(WBSSavedAccount *)self serviceName];
    v111 = v49;
    if (v49)
    {
      v50 = v49;
      v51 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:v49 pattern:v13 matchingType:4];

      if (v51)
      {
        v16 = v51;
        v8 = v48;
        v7 = v47;
        v15 = v116;
LABEL_118:

        goto LABEL_119;
      }

      v114 = v45;
      v122 = v48;
      v128 = v12;
      [(WBSSavedAccount *)self _quirksForServiceName:v50];
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v75 = v137 = 0u;
      v76 = [v75 countByEnumeratingWithState:&v134 objects:v156 count:16];
      v7 = v47;
      v15 = v116;
      if (v76)
      {
        v77 = v76;
        v78 = *v135;
        while (2)
        {
          for (m = 0; m != v77; ++m)
          {
            if (*v135 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v80 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:*(*(&v134 + 1) + 8 * m) pattern:v13 matchingType:5];
            if (v80)
            {
              v16 = v80;

              v8 = v122;
              v12 = v128;
              v45 = v114;
              goto LABEL_118;
            }
          }

          v77 = [v75 countByEnumeratingWithState:&v134 objects:v156 count:16];
          if (v77)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
      v8 = v122;
      v12 = v128;
      v45 = v114;
    }

    else
    {
      v8 = v48;
      v7 = v47;
      v15 = v116;
    }

    v113 = v45;
    if ([v8 count])
    {
      v58 = [v8 allObjects];
      v59 = [v15 arrayByAddingObjectsFromArray:v58];

      v15 = v59;
    }

    v60 = [(WBSSavedAccount *)self additionalSites];
    v61 = [v60 count];

    v127 = v12;
    if (v61)
    {
      v62 = [(WBSSavedAccount *)self additionalSites];
      v63 = [v15 arrayByAddingObjectsFromArray:v62];

      v15 = v63;
    }

    v64 = [objc_opt_class() searchPatternForWebsiteComparisonFromSearchPattern:v7];
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v15 = v15;
    v65 = [v15 countByEnumeratingWithState:&v130 objects:v155 count:16];
    if (v65)
    {
      v66 = v65;
      v117 = v7;
      v121 = v8;
      v67 = *v131;

      while (2)
      {
        for (n = 0; n != v66; ++n)
        {
          if (*v131 != v67)
          {
            objc_enumerationMutation(v15);
          }

          v69 = *(*(&v130 + 1) + 8 * n);
          v70 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:v69 pattern:v64 matchingType:1];
          if (v70)
          {
            v72 = v70;
LABEL_86:
            v45 = v113;
            v16 = v72;

            v7 = v117;
            v8 = v121;
            v12 = v127;
            goto LABEL_117;
          }

          v71 = [v69 _lp_userVisibleHost];
          v72 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:v71 pattern:v64 matchingType:1];

          if (v72)
          {
            goto LABEL_86;
          }
        }

        v66 = [v15 countByEnumeratingWithState:&v130 objects:v155 count:16];
        if (v66)
        {
          continue;
        }

        break;
      }

      v16 = 0;
      v7 = v117;
      v8 = v121;
    }

    v73 = [(WBSSavedAccount *)self user];
    v74 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:v73 pattern:v7 matchingType:0];

    if (v74)
    {
      v16 = v74;
      goto LABEL_116;
    }

    v86 = [(WBSSavedAccount *)self originalContributorParticipantID];
    if (v86)
    {
      v87 = v86;
      v88 = [(WBSSavedAccount *)self isCurrentUserOriginalContributor];

      if (!v88)
      {
        v89 = [(WBSSavedAccount *)self originalContributorParticipantID];
        v90 = [(WBSSavedAccount *)self sharedGroupID];
        v91 = [WBSSavedAccountStore _displayNameForOriginalContributorParticipantID:v89 inGroupID:v90];

        v92 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:v91 pattern:v7 matchingType:0];
        if (v92)
        {
          v16 = v92;
LABEL_113:

          goto LABEL_116;
        }
      }
    }

    v102 = [(WBSSavedAccount *)self notesEntry];
    v103 = [v102 length];

    if (v103)
    {
      v104 = [(WBSSavedAccount *)self notesEntry];
      v105 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v106 = [v104 componentsSeparatedByCharactersInSet:v105];
      v124 = [v106 mutableCopy];

      v91 = v124;
      [v124 removeObject:&stru_1F3064D08];
      v107 = [v124 componentsJoinedByString:@" "];
      v108 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:v107 pattern:v13 matchingType:2];
      if (v108)
      {
        v16 = v108;

        goto LABEL_113;
      }
    }

    v16 = 0;
LABEL_116:
    v12 = v127;
    v45 = v113;
LABEL_117:

    goto LABEL_118;
  }

  v16 = 0;
  if (v14 != 4)
  {
    goto LABEL_36;
  }

  v43 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:self->_serviceName pattern:v7 matchingType:4];
  if (v43)
  {
    v16 = v43;
  }

  else
  {
    v81 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount privateEmail];
    v82 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:v81 pattern:v7 matchingType:6];
    if (v82)
    {
      v16 = v82;
    }

    else
    {
      v83 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount shareInfo];
      v84 = [v83 participantName];

      v85 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:v84 pattern:v7 matchingType:0];
      if (v85)
      {
        v16 = v85;
      }

      else
      {
        v129 = v12;
        v118 = v7;
        v93 = _WBSLocalizedString(@"Sign in with Apple", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
        v163[0] = v93;
        v94 = _WBSLocalizedString(@"SIWA", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
        v163[1] = v94;
        v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:2];

        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v96 = v95;
        v97 = [v96 countByEnumeratingWithState:&v150 objects:v162 count:16];
        if (v97)
        {
          v98 = v97;
          v123 = v8;
          v99 = *v151;
          while (2)
          {
            for (ii = 0; ii != v98; ++ii)
            {
              if (*v151 != v99)
              {
                objc_enumerationMutation(v96);
              }

              v101 = [(WBSSavedAccount *)self _stringMatchesPatternWithTokenizer:v11 string:*(*(&v150 + 1) + 8 * ii) pattern:v13 matchingType:7];
              if (v101)
              {
                v16 = v101;
                goto LABEL_104;
              }
            }

            v98 = [v96 countByEnumeratingWithState:&v150 objects:v162 count:16];
            if (v98)
            {
              continue;
            }

            break;
          }

          v16 = 0;
LABEL_104:
          v8 = v123;
        }

        else
        {
          v16 = 0;
        }

        v7 = v118;
        v12 = v129;
      }
    }
  }

LABEL_120:

  v109 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)searchPatternForWebsiteComparisonFromSearchPattern:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 safari_stringByRemovingCharactersInSet:v5];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"+" withString:@"plus"];

  return v7;
}

- (id)_quirksForServiceName:(id)a3
{
  v3 = a3;
  if (_quirksForServiceName__onceToken != -1)
  {
    [WBSSavedAccount _quirksForServiceName:];
  }

  v4 = _quirksForServiceName__quirksMap;
  v5 = [v3 lowercaseString];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = v7;
  if (v6)
  {
    [v7 addObjectsFromArray:v6];
  }

  else
  {
    [v7 addObject:v3];
  }

  return v8;
}

void __41__WBSSavedAccount__quirksForServiceName___block_invoke()
{
  v0 = _quirksForServiceName__quirksMap;
  _quirksForServiceName__quirksMap = &unk_1F308E660;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v34 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      user = self->_user;
      v7 = [v5 user];
      if (WBSIsEqual(user, v7))
      {
        password = self->_password;
        v9 = [v5 password];
        if (WBSIsEqual(password, v9))
        {
          passkeyCredentialID = self->_passkeyCredentialID;
          v11 = [v5 passkeyCredentialID];
          if (WBSIsEqual(passkeyCredentialID, v11) && WBSIsEqual(self->_passkeyCredentialSidecarsDictionary, v5[8]))
          {
            passkeyRelyingPartyID = self->_passkeyRelyingPartyID;
            v13 = [v5 passkeyRelyingPartyID];
            if (WBSIsEqual(passkeyRelyingPartyID, v13))
            {
              sharedGroupID = self->_sharedGroupID;
              v15 = [v5 sharedGroupID];
              if (WBSIsEqual(sharedGroupID, v15))
              {
                serviceName = self->_serviceName;
                v17 = [v5 serviceName];
                if (WBSIsEqual(serviceName, v17))
                {
                  v18 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount clientID];
                  v52 = [v5 signInWithAppleAccount];
                  v19 = [v52 clientID];
                  v53 = v18;
                  v20 = v18;
                  v21 = v19;
                  if (WBSIsEqual(v20, v19))
                  {
                    v49 = v21;
                    v22 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount userID];
                    v50 = [v5 signInWithAppleAccount];
                    v23 = [v50 userID];
                    v51 = v22;
                    v24 = v22;
                    v25 = v23;
                    if (WBSIsEqual(v24, v23))
                    {
                      v48 = v25;
                      v47 = [(AKSignInWithAppleAccount *)self->_signInWithAppleAccount shareInfo];
                      v26 = [v47 groupID];
                      v45 = [v5 signInWithAppleAccount];
                      v44 = [v45 shareInfo];
                      v27 = [v44 groupID];
                      v46 = v26;
                      v28 = v26;
                      v29 = v27;
                      if (WBSIsEqual(v28, v27))
                      {
                        highLevelDomain = self->_highLevelDomain;
                        v30 = [v5 highLevelDomain];
                        v31 = highLevelDomain;
                        v43 = v30;
                        if (WBSIsEqual(v31, v30))
                        {
                          v41 = [(WBSSavedAccount *)self protectionSpaces];
                          v40 = [v5 protectionSpaces];
                          if (WBSIsEqual(v41, v40))
                          {
                            v39 = v29;
                            if (WBSIsEqual(self->_sitesToSidecars, v5[7]))
                            {
                              v32 = [(WBSSavedAccount *)self sites];
                              v37 = [v5 sites];
                              v38 = v32;
                              if (WBSIsEqual(v32, v37))
                              {
                                v36 = [(WBSSavedAccount *)self lastModifiedDate];
                                v33 = [v5 lastModifiedDate];
                                v34 = WBSIsEqual(v36, v33);
                              }

                              else
                              {
                                v34 = 0;
                              }
                            }

                            else
                            {
                              v34 = 0;
                            }

                            v29 = v39;
                          }

                          else
                          {
                            v34 = 0;
                          }
                        }

                        else
                        {
                          v34 = 0;
                        }
                      }

                      else
                      {
                        v34 = 0;
                      }

                      v25 = v48;
                    }

                    else
                    {
                      v34 = 0;
                    }

                    v21 = v49;
                  }

                  else
                  {
                    v34 = 0;
                  }
                }

                else
                {
                  v34 = 0;
                }
              }

              else
              {
                v34 = 0;
              }
            }

            else
            {
              v34 = 0;
            }
          }

          else
          {
            v34 = 0;
          }
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 0;
    }
  }

  return v34;
}

- (BOOL)isEqualForMovingSharedSavedAccountsBackToPersonalKeychainOnGroupExit:(id)a3
{
  v4 = a3;
  user = self->_user;
  v6 = [v4 user];
  if ([(NSString *)user isEqualToString:v6])
  {
    password = self->_password;
    v8 = [v4 password];
    if (WBSIsEqual(password, v8))
    {
      passkeyCredentialID = self->_passkeyCredentialID;
      v10 = [v4 passkeyCredentialID];
      if (WBSIsEqual(passkeyCredentialID, v10) && WBSIsEqual(self->_passkeyCredentialSidecarsDictionary, v4[8]))
      {
        passkeyRelyingPartyID = self->_passkeyRelyingPartyID;
        v12 = [v4 passkeyRelyingPartyID];
        if (WBSIsEqual(passkeyRelyingPartyID, v12))
        {
          highLevelDomain = self->_highLevelDomain;
          v14 = [v4 highLevelDomain];
          if ([(NSString *)highLevelDomain isEqualToString:v14])
          {
            v15 = [(WBSSavedAccount *)self protectionSpaces];
            v16 = [v4 protectionSpaces];
            if (WBSIsEqual(v15, v16))
            {
              v17 = [(WBSSavedAccount *)self notesEntry];
              v30 = [v4 notesEntry];
              v31 = v17;
              if (WBSIsEqual(v17, v30))
              {
                v18 = [(WBSSavedAccount *)self customTitle];
                v28 = [v4 customTitle];
                v29 = v18;
                if (WBSIsEqual(v18, v28))
                {
                  v19 = [(WBSSavedAccount *)self totpGenerators];
                  v20 = [v4 totpGenerators];
                  v27 = v19;
                  v21 = v19;
                  v22 = v20;
                  if (WBSIsEqual(v21, v20))
                  {
                    v26 = [(WBSSavedAccount *)self sites];
                    v25 = [v4 sites];
                    v23 = WBSIsEqual(v26, v25);
                  }

                  else
                  {
                    v23 = 0;
                  }
                }

                else
                {
                  v23 = 0;
                }
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)shouldOverrideRecentlyDeletedSavedAccountWhenDeleted:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = MEMORY[0x1E695DFD8];
    v6 = [(NSMutableDictionary *)self->_siteToProtectionSpaces allValues];
    v7 = [v5 setWithArray:v6];
    v8 = MEMORY[0x1E695DFD8];
    v9 = [(NSMutableDictionary *)v4->_siteToProtectionSpaces allValues];
    v10 = [v8 setWithArray:v9];
    v11 = [v7 intersectsSet:v10];

    if (![(NSString *)self->_user isEqualToString:v4->_user])
    {
      goto LABEL_5;
    }

    if (self->_isRecentlyDeleted != v4->_isRecentlyDeleted)
    {
      v12 = WBSIsEqual(self->_sharedGroupID, v4->_sharedGroupID) & v11;
    }

    else
    {
LABEL_5:
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_user hash];
  v4 = [(NSString *)self->_password hash]^ v3;
  v5 = [(NSString *)self->_passkeyCredentialID hash];
  v6 = v4 ^ v5 ^ [(NSMutableDictionary *)self->_passkeyCredentialSidecarsDictionary hash];
  v7 = [(NSString *)self->_passkeyRelyingPartyID hash];
  v8 = v7 ^ [(NSString *)self->_highLevelDomain hash];
  v9 = [(WBSSavedAccount *)self protectionSpaces];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(WBSSavedAccount *)self sites];
  v12 = [v11 hash];
  v13 = v12 ^ [(NSMutableDictionary *)self->_sitesToSidecars hash];
  v14 = [(WBSSavedAccount *)self lastModifiedDate];
  v15 = v13 ^ [v14 hash];

  return v10 ^ v15 ^ [(NSString *)self->_sharedGroupID hash];
}

+ (BOOL)_shouldUseFuzzyStringMatchingForMatchingType:(int64_t)a3
{
  v4 = +[WBSFeatureAvailability isPasswordsAppFuzzySearchEnabled];
  if (a3 <= 7)
  {
    v5 = 0x3Bu >> a3;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)hasProtectionSpace:(id)a3
{
  v4 = a3;
  v5 = [(WBSSavedAccount *)self protectionSpaces];
  v6 = [(WBSSavedAccount *)self protectionSpacesForAdditionalSites];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__WBSSavedAccount_hasProtectionSpace___block_invoke;
  v10[3] = &unk_1E7CF4318;
  v11 = v4;
  v8 = v4;
  LOBYTE(v4) = [v7 safari_containsObjectPassingTest:v10];

  return v4;
}

- (BOOL)hasProtectionSpaceForAdditionalSite:(id)a3
{
  v4 = a3;
  v5 = [(WBSSavedAccount *)self protectionSpacesForAdditionalSites];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__WBSSavedAccount_hasProtectionSpaceForAdditionalSite___block_invoke;
  v9[3] = &unk_1E7CF4318;
  v10 = v4;
  v6 = v4;
  v7 = [v5 safari_containsObjectPassingTest:v9];

  return v7;
}

- (BOOL)hasProtectionSpaceWithHighLevelDomainMatchingProtectionSpace:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_protectionSpaceByReplacingHostWithHighlevelDomain];
  v6 = [(WBSSavedAccount *)self protectionSpaces];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__WBSSavedAccount_hasProtectionSpaceWithHighLevelDomainMatchingProtectionSpace___block_invoke;
  v11[3] = &unk_1E7CF4340;
  v12 = v4;
  v13 = v5;
  v7 = v5;
  v8 = v4;
  v9 = [v6 safari_containsObjectPassingTest:v11];

  return v9;
}

uint64_t __80__WBSSavedAccount_hasProtectionSpaceWithHighLevelDomainMatchingProtectionSpace___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_protectionSpaceByReplacingHostWithHighlevelDomain];
  if ([v3 isEqualToProtectionSpaceForPasswordManager:*(a1 + 32)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToProtectionSpaceForPasswordManager:*(a1 + 40)];
  }

  return v4;
}

- (NSURL)wellKnownChangePasswordURL
{
  v9 = 0;
  if ([(WBSSavedAccount *)self _allSitesHaveSameNonDefaultPort:&v9])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%ld", self->_highLevelDomain, v9];
  }

  else
  {
    if (domainIsUUID(self->_highLevelDomain))
    {
      v4 = [(WBSSavedAccount *)self additionalSites];
      v5 = [v4 firstObject];

      goto LABEL_7;
    }

    v3 = self->_highLevelDomain;
  }

  v5 = v3;
LABEL_7:
  v6 = [v5 safari_bestURLForUserTypedString];
  v7 = [v6 safari_wellKnownChangePasswordURL];

  return v7;
}

- (NSString)sharedGroupName
{
  v3 = +[WBSOngoingSharingGroupProvider sharedProvider];
  v4 = [v3 cachedGroupWithID:self->_sharedGroupID];
  v5 = [v4 displayName];

  return v5;
}

- (BOOL)_computeHasValidWebsite
{
  if ([(WBSSavedAccount *)self credentialTypes]== 4)
  {
    return 0;
  }

  if (!domainIsUUID(self->_highLevelDomain))
  {
    return [(NSString *)self->_highLevelDomain length]!= 0;
  }

  v4 = [(WBSSavedAccount *)self additionalSites];
  v3 = [v4 count] != 0;

  return v3;
}

- (BOOL)hasValidWebsite
{
  hasValidWebsite = self->_hasValidWebsite;
  if (!hasValidWebsite)
  {
    v4 = [(WBSSavedAccount *)self _computeHasValidWebsite];
    hasValidWebsite = 1;
    if (v4)
    {
      hasValidWebsite = 2;
    }

    self->_hasValidWebsite = hasValidWebsite;
  }

  return hasValidWebsite == 2;
}

- (id)stableIDString
{
  v2 = self;
  object = WBSSavedAccount.stableIDString()().value._object;

  if (object)
  {
    v4 = sub_1B8565D68();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fuzzyMatchString:(id)a3 with:(id)a4 matchingType:(int64_t)a5
{
  v6 = sub_1B8565DA8();
  v8 = v7;
  v9 = sub_1B8565DA8();
  matched = _sSo15WBSSavedAccountC10SafariCoreE16fuzzyMatchString_4with12matchingTypeAC0ab6SearchF0CSgSS_SSSo0ab8MatchingJ0VtFZ_0(v6, v8, v9, v10, a5);

  return matched;
}

- (void)setLastUsedDate:(uint64_t)a1 forSite:(void *)a2 inContext:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v12 = [a3 highLevelDomain];
  OUTLINED_FUNCTION_1(&dword_1B8447000, v5, v6, "Attempted to set last used date for %{sensitive}@ which is not related to the saved account for %{sensitive}@", v7, v8, v9, v10, 3u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_addPasskeySidecar:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2(&dword_1B8447000, v4, v5, "Attempted to add a non-Sidecar object to the passkey Sidecar map. type:%{public}@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_addSidecar:(uint64_t)a1 forSite:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_class();
  v11 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1(&dword_1B8447000, v4, v5, "Attempted to add a non-Sidecar object to the Sidecar map for site %@ type:%{public}@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_formerlySharedMarkerForCredentialType:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v2, v3, "Expected personal sidecar to check formerly shared marker but received sidecar of type %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end
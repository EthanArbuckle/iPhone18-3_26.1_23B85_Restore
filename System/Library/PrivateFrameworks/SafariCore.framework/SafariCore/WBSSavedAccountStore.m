@interface WBSSavedAccountStore
+ (BOOL)getProtectionSpaceAndHighLevelDomainForUserTypedSite:(id)a3 protectionSpace:(id *)a4 highLevelDomain:(id *)a5 mode:(int64_t)a6;
+ (BOOL)shouldShowServiceNamesForPasswordAndPasskeyItems;
+ (BOOL)userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount:(id)a3;
+ (WBSSavedAccountStore)sharedStore;
+ (id)protectionSpaceForNewStandalonePassword;
+ (void)removeCredentialTypes:(int64_t)a3 forSavedAccount:(id)a4 forGroup:(id)a5;
- (BOOL)_applyServiceNamesToSavedAccounts:(id)a3;
- (BOOL)_canChangeSavedAccount:(id)a3 toUser:(id)a4 password:(id)a5 forGroupID:(id)a6;
- (BOOL)_canMoveSavedAccount:(id)a3 toGroupWithID:(id)a4;
- (BOOL)_canMoveSavedAccountWithPasskey:(id)a3 toGroup:(id)a4;
- (BOOL)_canPerformMaintenanceTasks;
- (BOOL)_copySavedAccount:(id)a3 toGroup:(id)a4;
- (BOOL)_deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:(id)a3 inGroup:(id)a4;
- (BOOL)_hasPersonWithParticipantID:(id)a3 contributedSavedAccountsToGroupWithID:(id)a4;
- (BOOL)_hasSavedAccountWithSameUserNameOfSavedAccount:(id)a3 forProtectionSpace:(id)a4;
- (BOOL)_isMigratingKeychainItemsWithInvalidAuthenticationTypes;
- (BOOL)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:(id)a3 isForAlreadyExitedGroup:(BOOL)a4;
- (BOOL)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:(id)a3 isForAlreadyExitedGroup:(BOOL)a4;
- (BOOL)_moveSignInWithAppleSavedAccount:(id)a3 toGroupID:(id)a4;
- (BOOL)_shareSignInWithAppleAccountWithContext:(id)a3 withGroupInfo:(id)a4 savedAccount:(id)a5;
- (BOOL)_shouldLoadCredentialRecordWithHostIntoAccountStore:(id)a3;
- (BOOL)_shouldUpdateLastUsedDateForSavedAccount:(id)a3 forProtectionSpace:(id)a4 inContext:(id)a5;
- (BOOL)_unshareSignInWithAppleAccountWithContext:(id)a3;
- (BOOL)canChangeSavedAccount:(id)a3 toUser:(id)a4 password:(id)a5;
- (BOOL)canChangeSavedAccountWithRequest:(id)a3;
- (BOOL)canSaveUser:(id)a3 password:(id)a4 forProtectionSpace:(id)a5 highLevelDomain:(id)a6 notes:(id)a7 customTitle:(id)a8 groupID:(id)a9 error:(id *)a10;
- (BOOL)canSaveUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 notes:(id)a6 customTitle:(id)a7 groupID:(id)a8 error:(id *)a9;
- (BOOL)shouldShowServiceNamesForPasswordAndPasskeyItems;
- (NSArray)allRecentlyDeletedSavedAccounts;
- (NSArray)recentlyDeletedSavedAccountsInPersonalKeychain;
- (NSArray)savedAccounts;
- (NSArray)savedAccountsExcludingNeverSaveMarkerPasswords;
- (NSArray)savedAccountsInPersonalKeychain;
- (NSArray)savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords;
- (NSArray)savedAccountsWithNeverSaveMarker;
- (NSArray)savedAccountsWithPasswords;
- (NSArray)savedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords;
- (NSArray)savedAccountsWithTOTPGenerators;
- (NSArray)sharedSavedAccountsInRecentlyDeletedToNotifyUserAbout;
- (NSArray)sharingGroupsWithRecentlyDeletedSavedAccounts;
- (NSArray)sharingGroupsWithSavedAccounts;
- (NSSet)highLevelDomainsOfAllSavedAccountsExcludingNeverSaveMarkerPasswords;
- (NSSet)highLevelDomainsOfAllSavedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords;
- (NSSet)highLevelDomainsOfRecentlyDeletedAccounts;
- (id)_allInternetPasswordEntriesFromGroupID:(id)a3;
- (id)_allInternetPasswordEntriesFromPersonalKeychain;
- (id)_allPersonalSidecarsFromPersonalKeychainFromRecentlyDeleted:(BOOL)a3;
- (id)_allSidecarsFromPersonalKeychain;
- (id)_convertSignInWithAppleAccountsToSavedAccounts:(id)a3;
- (id)_diagnosticStateDictionary;
- (id)_fetchCurrentAutoFillPasskeysWithCriteria:(id)a3;
- (id)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(id)a3 withCriteria:(id)a4 mergingAutoFillPasskeys:(id)a5 nearbyDeviceOptions:(id)a6;
- (id)_getSavedAccountTreeMatchesWithCriteriaOnInternalQueue:(id)a3 relyingPartyURL:(id)a4;
- (id)_getSavedAccountsMatchingCriteriaOnInternalQueue:(id)a3;
- (id)_groupIDArrayForUserDefaultsKey:(id)a3;
- (id)_loadAndMergeSavedAccountsFromGroupID:(id)a3 intoAllSavedAccounts:(id)a4;
- (id)_loadSavedAccounts;
- (id)_loadSavedAccountsAfterSettingTestMode;
- (id)_loadSavedAccountsWithPasskeysFromPasskeyData:(id)a3 forGroupID:(id)a4 fromRecentlyDeleted:(BOOL)a5 withDictionaryForSavedAccountsWithPasskeys:(id)a6;
- (id)_loadSavedAccountsWithPasswordsFromKeychainData:(id)a3 forGroupID:(id)a4 withDictionaryForSavedAccountsWithPasswords:(id)a5 fromRecentlyDeleted:(BOOL)a6;
- (id)_mergeLoadedSavedAccounts:(id)a3 intoAllSavedAccounts:(id)a4;
- (id)_mergeSavedAccountsWithPasskeys:(id)a3 andSavedAccountsWithPasswords:(id)a4 usingDictionaryForSavedAccountsWithPasswords:(id)a5 dictionaryForSavedAccountsWithPasskeys:(id)a6;
- (id)_moveCredentialTypesToRecentlyDeletedOnInternalQueue:(int64_t)a3 fromSavedAccount:(id)a4;
- (id)_persistentIdentifierForUser:(id)a3 host:(id)a4;
- (id)_relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue:(id)a3 credentialIdentifiersToAutoFillPasskeys:(id)a4;
- (id)_saveAccountOnInternalQueueWithUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 groupID:(id)a6;
- (id)_saveAccountOnInternalQueueWithUser:(id)a3 password:(id)a4 protectionSpace:(id)a5 highLevelDomain:(id)a6 groupID:(id)a7;
- (id)_saveUser:(id)a3 passkeyCredential:(id)a4 passkeyRelyingPartyID:(id)a5;
- (id)_savedAccountForProtectionSpace:(id)a3 user:(id)a4 password:(id)a5;
- (id)_savedAccounts;
- (id)_savedAccountsWithPasswords;
- (id)duplicateAccountsWithGroupID:(id)a3;
- (id)exportPasskeyCredentialWithID:(id)a3;
- (id)exportPasskeyCredentialWithIDOnInternalQueue:(id)a3;
- (id)highLevelDomainsOfSavedAccountsExcludingNeverSaveMarkerPasswordsForGroupID:(id)a3;
- (id)importPasskeyCredentialOnInternalQueue:(id)a3;
- (id)passkeyDataForPasskeyCredentialIDOnInternalQueue:(id)a3;
- (id)persistentIdentifierForCredential:(id)a3 protectionSpace:(id)a4;
- (id)persistentIdentifierForSavedAccount:(id)a3;
- (id)recentlyDeletedSavedAccountsForGroupWithID:(id)a3;
- (id)saveUser:(id)a3 password:(id)a4 forProtectionSpace:(id)a5 highLevelDomain:(id)a6 groupID:(id)a7;
- (id)savedAccountForURL:(id)a3 user:(id)a4 password:(id)a5;
- (id)savedAccountForURLCredential:(id)a3 protectionSpace:(id)a4;
- (id)savedAccountForUserTypedSite:(id)a3 userName:(id)a4;
- (id)savedAccountWithAllMetadataForURLCredential:(id)a3 protectionSpace:(id)a4;
- (id)savedAccountsForGroupID:(id)a3;
- (id)savedAccountsForPersistentIdentifiers:(id)a3;
- (unint64_t)numberOfSavedAccountsInPersonalKeychainForHighLevelDomain:(id)a3;
- (void)_addAccountHistoryItemOnInternalQueue:(id)a3 toSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)_addGroupID:(id)a3 toArrayForUserDefaultsKey:(id)a4;
- (void)_addNewGroupToCachedSharingGroups:(id)a3;
- (void)_addSavedAccount:(id)a3 toCachedDictionaryForSavedAccountsWithPasskeysForGroupID:(id)a4;
- (void)_addSavedAccount:(id)a3 toCachedDictionaryForSavedAccountsWithPasswordsForGroupID:(id)a4;
- (void)_addSavedAccountToRecentlyDeletedCachedCollections:(id)a3;
- (void)_changeSavedAccountWithRequestOnInternalQueue:(id)a3 performPostUpdateActions:(BOOL)a4;
- (void)_cleanUpRedundantCredentialsWithoutUsernames;
- (void)_clearExpiredRecentlyDeletedNotificationDates;
- (void)_deleteAccountHistoryItemOnInternalQueue:(id)a3 fromSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)_ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount:(id)a3;
- (void)_ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue;
- (void)_fetchAndFilterAllPasskeysData;
- (void)_fetchAndFilterPasskeysData;
- (void)_fetchAndFilterRecentlyDeletedPasskeysData;
- (void)_fetchSharedAccountsGroups;
- (void)_fetchSignInWithAppleAccounts;
- (void)_identifySharedSavedAccountsWithSameUsernameAndHighLevelDomainPairs;
- (void)_loadRecentlyDeletedSavedAccounts;
- (void)_loadRecentlyDeletedSavedAccountsFromSharedGroupIDs:(id)a3;
- (void)_loadRecentlyDeletedSavedAccountsInPersonalKeychain;
- (void)_matchSidecars:(id)a3 toSavedAccountsWithPasskeysInDictionary:(id)a4 unmatchedSidecars:(id)a5;
- (void)_matchSidecars:(id)a3 toSavedAccountsWithPasswordsInDictionary:(id)a4 unmatchedSidecars:(id)a5;
- (void)_mergeSavedAccountWithPasskey:(id)a3 toSavedAccountWithPassword:(id)a4;
- (void)_mergeSavedAccountWithPassword:(id)a3 toSavedAccountWithPasskey:(id)a4;
- (void)_migratePasswordsWithInvalidAuthenticationTypes;
- (void)_moveContributedSavedAccountsBackToPersonalKeychainIfNecessary;
- (void)_moveCredentialTypesToRecentlyDeleted:(int64_t)a3 fromSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)_moveSavedAccount:(id)a3 toGroupWithID:(id)a4 completionHandler:(id)a5;
- (void)_notifyClientsAboutWebsiteNamesChanges;
- (void)_performCleanupForExitedGroupsIfNecessary:(id)a3;
- (void)_performLegacySidecarModificationWithChangeRequest:(id)a3 toSavedAccount:(id)a4;
- (void)_performPostUpdateActionsOnInternalQueue;
- (void)_performRecentlyDeletedMaintenanceIfNecessary;
- (void)_postSavedAccountStoreDidChangeNotification;
- (void)_prewarm;
- (void)_pruneSavedAccountTreeMatchesOnInternalQueue:(id)a3 basedOnUsernameAndPasswordCriteria:(id)a4 autoFillPasskeyIdentifiers:(id)a5 keepAllPasskeyMatches:(BOOL)a6;
- (void)_recordGroupIdentifierForExitCleanup:(id)a3 completionHandler:(id)a4;
- (void)_recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:(id)a3;
- (void)_recoverRecentlyDeletedSavedAccount:(id)a3 completionHandler:(id)a4;
- (void)_removeCredentialTypes:(int64_t)a3 forSavedAccount:(id)a4;
- (void)_removeGroupID:(id)a3 fromArrayForUserDefaultsKey:(id)a4;
- (void)_removeSavedAccount:(id)a3 fromCachedCollectionsForCredentialTypes:(int64_t)a4;
- (void)_removeSavedAccount:(id)a3 fromCachedDictionaryForSavedAccountsWithPasskeysForGroupID:(id)a4;
- (void)_removeSavedAccount:(id)a3 fromCachedDictionaryForSavedAccountsWithPasswordsForGroupID:(id)a4;
- (void)_removeSavedAccount:(id)a3 fromGroupID:(id)a4;
- (void)_removeSavedAccountFromRecentlyDeletedCachedCollections:(id)a3;
- (void)_reportAccountsWithUnknownContributorIDIfNeeded;
- (void)_reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded;
- (void)_resetOnInternalQueue;
- (void)_saveSidecarObjectsOnInternalQueueForSavedAccount:(id)a3 withBlock:(id)a4;
- (void)_saveSidecarObjectsOnInternalQueueForSavedAccountWithPassword:(id)a3 withBlock:(id)a4;
- (void)_saveSidecarOnInternalQueueForSavedAccountWithPasskey:(id)a3 withBlock:(id)a4;
- (void)_setSavedAccountAsDefaultOnInternalQueue:(id)a3 forProtectionSpace:(id)a4 context:(id)a5 associatedDomainsManager:(id)a6;
- (void)_signInWithApplePushNotificationReceived:(id)a3;
- (void)_updateCachedSharedAccountGroupsOnInternalQueue;
- (void)_updateCachedSignInWithAppleAccountsOnInternalQueueWithAccounts:(id)a3;
- (void)_updateLastOneTimeShareDateforSavedAccountIfNeeded:(id)a3;
- (void)_updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:(id)a3 withChangeFromOldUser:(id)a4 oldPassword:(id)a5 forSavedAccountWithPassword:(id)a6;
- (void)_updateShowServiceNamesInPasswordsPreference;
- (void)_verifyGroupsInSync;
- (void)_warmDataStoreAfterResetTimerFired:(id)a3;
- (void)_writeSidecarDataForMergedSavedAccount:(id)a3;
- (void)addAccountHistoryItem:(id)a3 toSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)addAdditionalSite:(id)a3 toSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)changeSavedAccount:(id)a3 toUser:(id)a4 password:(id)a5;
- (void)changeSavedAccountWithRequest:(id)a3 completionHandler:(id)a4;
- (void)changeSavedAccountsWithRequests:(id)a3 completionHandler:(id)a4;
- (void)clearSavedAccountHistory:(id)a3 withCompletionHandler:(id)a4;
- (void)dealloc;
- (void)deleteAccountHistoryItem:(id)a3 fromSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)deletePasskeyWithIdentifier:(WBSPublicKeyCredentialIdentifier *)a3 completionHandler:(id)a4;
- (void)deletePasskeyWithIdentifierOnInternalQueue:(id)a3;
- (void)getSavedAccountsMatchingCriteria:(id)a3 withSynchronousCompletionHandler:(id)a4;
- (void)knownWebsiteNamesDidChange;
- (void)knownWebsiteNamesDidChangeOnDomains:(id)a3;
- (void)newPasskeysAvailableForApplicationIdentifier:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:(id)a3 task:(id)a4;
- (void)removeCredentialTypes:(int64_t)a3 forSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)removeDontSaveMarkerForProtectionSpace:(id)a3;
- (void)removeHideWarningMarkerForSavedAccount:(id)a3;
- (void)removeLegacyPlatformCredentialsForDomains:(id)a3;
- (void)removeSite:(id)a3 fromSavedAccountWithPassword:(id)a4 withCompletion:(id)a5;
- (void)removeTOTPGeneratorForSavedAccount:(id)a3;
- (void)reset;
- (void)resetHiddenSecurityRecommendationsWithCompletionHandler:(id)a3;
- (void)saveAdditionalSites:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)saveCustomTitle:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)saveHideMarker:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)saveNotesEntry:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)saveTOTPGenerator:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5;
- (void)saveUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 customTitle:(id)a6 notesEntry:(id)a7 groupID:(id)a8 completionHandler:(id)a9;
- (void)saveUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 groupID:(id)a6 completionHandler:(id)a7;
- (void)saveUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 notesEntry:(id)a6 groupID:(id)a7 completionHandler:(id)a8;
- (void)savedAccountWithAllMetadataForURLCredential:(id)a3 protectionSpace:(id)a4 completion:(id)a5;
- (void)savedAccountsMatchingCriteria:(id)a3 withCompletionHandler:(id)a4;
- (void)setDontSaveMarkerForSavedAccountsWithProtectionSpace:(id)a3;
- (void)setSavedAccountAsDefault:(id)a3 forProtectionSpace:(id)a4 context:(id)a5 associatedDomainsManager:(id)a6;
- (void)setSavedAccountAsDefault:(id)a3 forProtectionSpace:(id)a4 context:(id)a5 associatedDomainsManager:(id)a6 completionHandler:(id)a7;
- (void)setShouldShowServiceNamesForPasswordAndPasskeyItems:(BOOL)a3;
- (void)test_createLegacyWebAuthnCredentialWithUserName:(id)a3 displayName:(id)a4 relyingPartyIdentifier:(id)a5 userHandle:(id)a6 completionHandler:(id)a7;
- (void)test_reloadAllSavedAccounts;
- (void)test_setSharedAccountsGroups:(id)a3;
- (void)updateAllSavedAccountsWithPasswordsWithUser:(id)a3 protectionSpace:(id)a4 withNewPassword:(id)a5;
- (void)updateUserVisibleName:(NSString *)a3 forPasskeyWithIdentifier:(WBSPublicKeyCredentialIdentifier *)a4 completionHandler:(id)a5;
- (void)updateUserVisibleNameOnInternalQueue:(id)a3 forPasskeyWithIdentifier:(id)a4;
@end

@implementation WBSSavedAccountStore

+ (WBSSavedAccountStore)sharedStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__WBSSavedAccountStore_sharedStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedStore_onceToken_0 != -1)
  {
    dispatch_once(&sharedStore_onceToken_0, block);
  }

  v2 = sharedStore_store;

  return v2;
}

void __35__WBSSavedAccountStore_sharedStore__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 safari_isPasswordManagerTestMode];

  if (v3)
  {
    [MEMORY[0x1E695AC50] safari_test_setUseTestingAccessGroups:1];
  }

  v4 = [objc_alloc(*(a1 + 32)) initAndPrewarmSavedAccounts:1 forTesting:v3];
  v5 = sharedStore_store;
  sharedStore_store = v4;
}

- (void)_fetchSharedAccountsGroups
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSSavedAccountStore__fetchSharedAccountsGroups__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateCachedSharedAccountGroupsOnInternalQueue
{
  v3 = +[WBSOngoingSharingGroupProvider sharedProvider];
  v4 = [v3 cachedGroups];

  if ((WBSIsEqual(v4, self->_sharedAccountsGroups) & 1) == 0)
  {
    v5 = [v4 copy];
    sharedAccountsGroups = self->_sharedAccountsGroups;
    self->_sharedAccountsGroups = v5;

    [(WBSSavedAccountStore *)self _resetOnInternalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__WBSSavedAccountStore__updateCachedSharedAccountGroupsOnInternalQueue__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)_canPerformMaintenanceTasks
{
  if (isProcessAllowedToPerformAccountStoreMaintenance_onceToken != -1)
  {
    [WBSSavedAccountStore _canPerformMaintenanceTasks];
  }

  return isProcessAllowedToPerformAccountStoreMaintenance_isAllowedToPerformMaintenance;
}

- (void)_prewarm
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__WBSSavedAccountStore__prewarm__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_moveContributedSavedAccountsBackToPersonalKeychainIfNecessary
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(WBSSavedAccountStore *)self _canPerformMaintenanceTasks])
  {
    v3 = [(WBSSavedAccountStore *)self _groupIDArrayForUserDefaultsKey:@"groupIdentifiersToMoveContributedCredentialsBackToPersonalKeychainFrom"];
    if ([v3 count])
    {
      v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v3;
        _os_log_impl(&dword_1B8447000, v4, OS_LOG_TYPE_DEFAULT, "Moving credentials back to personal keychain for group ID's recorded for cleanup: %@", buf, 0xCu);
      }

      queue = self->_queue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __86__WBSSavedAccountStore__moveContributedSavedAccountsBackToPersonalKeychainIfNecessary__block_invoke;
      v7[3] = &unk_1E7CF1708;
      v7[4] = self;
      v8 = v3;
      dispatch_async(queue, v7);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __32__WBSSavedAccountStore__prewarm__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _savedAccounts];
  v3 = *(a1 + 32);

  return [v3 _loadRecentlyDeletedSavedAccounts];
}

- (id)_savedAccounts
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_savedAccountsWithPasswords)
  {
    v3 = [(WBSSavedAccountStore *)self _loadSavedAccounts];
  }

  v4 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    savedAccounts = self->_savedAccounts;
    v6 = v4;
    v10 = 136315394;
    v11 = "[WBSSavedAccountStore _savedAccounts]";
    v12 = 2048;
    v13 = [(NSArray *)savedAccounts count];
    _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_DEFAULT, "%s: Returning %lu saved accounts", &v10, 0x16u);
  }

  v7 = self->_savedAccounts;
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_loadSavedAccounts
{
  if (self->_isForTesting)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__16;
    v9 = __Block_byref_object_dispose__16;
    v10 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __42__WBSSavedAccountStore__loadSavedAccounts__block_invoke;
    v4[3] = &unk_1E7CF19B0;
    v4[4] = self;
    v4[5] = &v5;
    [MEMORY[0x1E695AC50] safari_performUsingTestingMode:v4];
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = [(WBSSavedAccountStore *)self _loadSavedAccountsAfterSettingTestMode];
  }

  return v2;
}

- (id)_loadSavedAccountsAfterSettingTestMode
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEFAULT, "Beginning saved account store load", buf, 2u);
  }

  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8447000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AccountStoreLoad", "", buf, 2u);
  }

  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v5 processName];
  v7 = [v6 isEqualToString:@"AuthenticationServicesAgent"];

  if (v7)
  {
    v51 = os_transaction_create();
  }

  else
  {
    v51 = 0;
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts = self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts;
  self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts = v8;

  v10 = [MEMORY[0x1E695DF70] array];
  [(WBSSavedAccountStore *)self _fetchAndFilterAllPasskeysData];
  v11 = [(WBSSavedAccountStore *)self _loadAndMergeSavedAccountsFromPersonalKeychainIntoAllSavedAccounts:v10];
  savedAccountsInPersonalKeychain = self->_savedAccountsInPersonalKeychain;
  self->_savedAccountsInPersonalKeychain = v11;

  v13 = [MEMORY[0x1E695DF90] dictionary];
  groupIdentifiersToSavedAccounts = self->_groupIdentifiersToSavedAccounts;
  self->_groupIdentifiersToSavedAccounts = v13;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = self->_sharedAccountsGroups;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v57;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v57 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v56 + 1) + 8 * i);
        v21 = [v20 groupID];
        v22 = [(WBSSavedAccountStore *)self _loadAndMergeSavedAccountsFromGroupID:v21 intoAllSavedAccounts:v10];
        v23 = self->_groupIdentifiersToSavedAccounts;
        v24 = [v20 groupID];
        [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v17);
  }

  if ([(NSArray *)self->_sharedAccountsGroups count])
  {
    [(WBSSavedAccountStore *)self _identifySharedSavedAccountsWithSameUsernameAndHighLevelDomainPairs];
  }

  v25 = [MEMORY[0x1E696AE30] processInfo];
  v26 = [v25 safari_isPasswordManagerTestMode];

  if ((v26 & 1) == 0)
  {
    [(WBSSavedAccountStore *)self _fetchSignInWithAppleAccounts];
  }

  v27 = [MEMORY[0x1E695DF70] array];
  v28 = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v29 = v10;
  v30 = [v29 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v53;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v53 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v52 + 1) + 8 * j);
        if ([v34 userIsNeverSaveMarker])
        {
          v35 = v28;
        }

        else
        {
          v35 = v27;
        }

        [v35 addObject:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v31);
  }

  v36 = [v27 sortedArrayUsingSelector:sel_compare_];
  savedAccounts = self->_savedAccounts;
  self->_savedAccounts = v36;

  v38 = [v28 sortedArrayUsingSelector:sel_compare_];
  savedAccountsWithNeverSaveMarker = self->_savedAccountsWithNeverSaveMarker;
  self->_savedAccountsWithNeverSaveMarker = v38;

  v40 = [(NSArray *)self->_savedAccounts safari_filterObjectsUsingBlock:&__block_literal_global_218];
  savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
  self->_savedAccountsWithPasswords = v40;

  if ([(NSArray *)self->_savedAccountsWithSignInWithAppleRecords count])
  {
    v42 = [(NSArray *)self->_savedAccounts arrayByAddingObjectsFromArray:self->_savedAccountsWithSignInWithAppleRecords];
    v43 = [v42 sortedArrayUsingSelector:sel_compare_];
    v44 = self->_savedAccounts;
    self->_savedAccounts = v43;
  }

  v45 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_signpost_enabled(v45))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8447000, v45, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AccountStoreLoad", "", buf, 2u);
  }

  v46 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v46, OS_LOG_TYPE_DEFAULT, "Completed saved account store load", buf, 2u);
  }

  [(WBSSavedAccountStore *)self _cleanUpRedundantCredentialsWithoutUsernames];
  [(WBSSavedAccountStore *)self _cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted:0];
  [(WBSSavedAccountStore *)self _performRecentlyDeletedMaintenanceIfNecessary];
  if (self->_shouldShowServiceNamesForPasswordAndPasskeyItems)
  {
    [(WBSSavedAccountStore *)self _applyServiceNamesToSavedAccounts:self->_savedAccounts];
  }

  v47 = self->_savedAccounts;
  v48 = v47;

  v49 = *MEMORY[0x1E69E9840];
  return v47;
}

- (void)_fetchAndFilterAllPasskeysData
{
  [(WBSSavedAccountStore *)self _fetchAndFilterPasskeysData];

  [(WBSSavedAccountStore *)self _fetchAndFilterRecentlyDeletedPasskeysData];
}

- (void)_fetchAndFilterPasskeysData
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [(WBSSavedAccountStore *)self passkeysDataOnInternalQueue];
  v36 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  highLevelDomainToLegacyPlatformAuthenticatorCredentials = self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials;
  self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials = v4;

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = [v11 safari_numberForKey:@"IsSynchronizable"];
        v13 = [v11 safari_numberForKey:@"Test_isLegacyCredential"];
        v14 = [v13 BOOLValue];

        v15 = [v12 BOOLValue];
        v16 = [v11 safari_stringForKey:@"GroupID"];
        v17 = v16;
        isForTesting = self->_isForTesting;
        v19 = isForTesting | v15;
        if (isForTesting && (v15 & 1) == 0)
        {
          v19 = [v16 length] == 0;
          LOBYTE(isForTesting) = self->_isForTesting;
        }

        if (isForTesting)
        {
          v19 &= ~v14;
        }

        if (v19)
        {
          [v36 addObject:v11];
LABEL_17:
          self->_hasPasskeysEligibleForAutoFill = 1;
          goto LABEL_18;
        }

        if ([v17 length])
        {
          v20 = [v6 objectForKeyedSubscript:v17];

          if (!v20)
          {
            v21 = [MEMORY[0x1E695DF70] array];
            [v6 setObject:v21 forKeyedSubscript:v17];
          }

          v22 = [v6 objectForKeyedSubscript:v17];
          [v22 addObject:v11];

          goto LABEL_17;
        }

        v23 = [v11 safari_stringForKey:@"CredentialRelyingPartyID"];
        v24 = [v23 safari_highLevelDomainForPasswordManager];

        v25 = [(NSMutableDictionary *)self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials safari_mutableArrayForKey:v24];
        if (v25)
        {
          v26 = v25;
          [v25 addObject:v11];
        }

        else
        {
          v26 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
          [(NSMutableDictionary *)self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials setObject:v26 forKeyedSubscript:v24];
        }

LABEL_18:
        ++v10;
      }

      while (v8 != v10);
      v27 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      v8 = v27;
    }

    while (v27);
  }

  v28 = [v36 copy];
  passkeysDataInPersonalKeychain = self->_passkeysDataInPersonalKeychain;
  self->_passkeysDataInPersonalKeychain = v28;

  v30 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    v32 = [v36 count];
    *buf = 136315394;
    v43 = "[WBSSavedAccountStore _fetchAndFilterPasskeysData]";
    v44 = 2048;
    v45 = v32;
    _os_log_impl(&dword_1B8447000, v31, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu passkey keychain records from personal keychain", buf, 0x16u);
  }

  v33 = [v6 copy];
  groupIdentifiersToPasskeysData = self->_groupIdentifiersToPasskeysData;
  self->_groupIdentifiersToPasskeysData = v33;

  [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_243];
  v35 = *MEMORY[0x1E69E9840];
}

- (void)_updateShowServiceNamesInPasswordsPreference
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WBSSavedAccountStore__updateShowServiceNamesInPasswordsPreference__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_fetchAndFilterRecentlyDeletedPasskeysData
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(WBSSavedAccountStore *)self recentlyDeletedPasskeysDataOnInternalQueue];
  v24 = [MEMORY[0x1E695DF70] array];
  v23 = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v3;
  v25 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v25)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v7 safari_numberForKey:@"IsSynchronizable"];
        v9 = [v8 BOOLValue];
        v10 = [v7 safari_stringForKey:@"GroupID"];
        v11 = v10;
        if (self->_isForTesting)
        {
          if ((v9 & 1) != 0 || ![v10 length])
          {
LABEL_14:
            [v24 addObject:v7];
            goto LABEL_15;
          }
        }

        else if (v9)
        {
          goto LABEL_14;
        }

        if ([v11 length])
        {
          v12 = [v23 objectForKeyedSubscript:v11];

          if (!v12)
          {
            v13 = [MEMORY[0x1E695DF70] array];
            [v23 setObject:v13 forKeyedSubscript:v11];
          }

          v14 = [v23 objectForKeyedSubscript:v11];
          [v14 addObject:v7];
        }

LABEL_15:
      }

      v25 = [v4 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v25);
  }

  v15 = [v24 copy];
  recentlyDeletedPasskeysDataInPersonalKeychain = self->_recentlyDeletedPasskeysDataInPersonalKeychain;
  self->_recentlyDeletedPasskeysDataInPersonalKeychain = v15;

  v17 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [v24 count];
    *buf = 136315394;
    v31 = "[WBSSavedAccountStore _fetchAndFilterRecentlyDeletedPasskeysData]";
    v32 = 2048;
    v33 = v19;
    _os_log_impl(&dword_1B8447000, v18, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu recently deleted passkey keychain records from personal keychain", buf, 0x16u);
  }

  v20 = [v23 copy];
  groupIdentifiersToRecentlyDeletedPasskeysData = self->_groupIdentifiersToRecentlyDeletedPasskeysData;
  self->_groupIdentifiersToRecentlyDeletedPasskeysData = v20;

  [v23 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_245_0];
  v22 = *MEMORY[0x1E69E9840];
}

- (NSArray)savedAccounts
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__16;
  v15 = __Block_byref_object_dispose__16;
  v16 = 0;
  v3 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[WBSSavedAccountStore savedAccounts]";
    _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEFAULT, "%s: Loading saved accounts", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__WBSSavedAccountStore_savedAccounts__block_invoke;
  v10[3] = &unk_1E7CF19B0;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(queue, v10);
  v5 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v12[5] count];
    *buf = 136315394;
    v18 = "[WBSSavedAccountStore savedAccounts]";
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "%s: Loading completed with %lu saved accounts", buf, 0x16u);
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_allInternetPasswordEntriesFromPersonalKeychain
{
  v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v3 = [v2 safari_allPasswordCredentialItemsInPersonalKeychain];

  return v3;
}

- (id)_allSidecarsFromPersonalKeychain
{
  v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v3 = [v2 safari_allPersonalSidecarsInPersonalKeychain];

  return v3;
}

- (void)_resetOnInternalQueue
{
  v3 = +[WBSKeyBagLockStatusManager sharedManager];
  v4 = [v3 keyBagLockStatus];

  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Skipping account store reset because the key bag is locked", buf, 2u);
    }
  }

  else
  {
    savedAccounts = self->_savedAccounts;
    self->_savedAccounts = 0;

    savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
    self->_savedAccountsWithPasswords = 0;

    v8 = self->_savedAccountsWithPasswords;
    self->_savedAccountsWithPasswords = 0;

    savedAccountsWithNeverSaveMarker = self->_savedAccountsWithNeverSaveMarker;
    self->_savedAccountsWithNeverSaveMarker = 0;

    *&self->_hasPasswordsEligibleForAutoFill = 0;
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = 0;

    groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
    self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = 0;

    savedAccountsInPersonalKeychain = self->_savedAccountsInPersonalKeychain;
    self->_savedAccountsInPersonalKeychain = 0;

    allRecentlyDeletedSavedAccounts = self->_allRecentlyDeletedSavedAccounts;
    self->_allRecentlyDeletedSavedAccounts = 0;

    recentlyDeletedSavedAccountsInPersonalKeychain = self->_recentlyDeletedSavedAccountsInPersonalKeychain;
    self->_recentlyDeletedSavedAccountsInPersonalKeychain = 0;

    recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = 0;

    recentlyDeletedPersonalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_recentlyDeletedPersonalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    self->_recentlyDeletedPersonalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = 0;

    sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts;
    self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__WBSSavedAccountStore__resetOnInternalQueue__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_fetchSignInWithAppleAccounts
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanUpRedundantCredentialsWithoutUsernames
{
  if ([(WBSSavedAccountStore *)self _canPerformMaintenanceTasks])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__WBSSavedAccountStore__cleanUpRedundantCredentialsWithoutUsernames__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_performRecentlyDeletedMaintenanceIfNecessary
{
  if ([(WBSSavedAccountStore *)self _canPerformMaintenanceTasks])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__WBSSavedAccountStore__performRecentlyDeletedMaintenanceIfNecessary__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_loadRecentlyDeletedSavedAccounts
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_savedAccountsWithPasswords)
  {
    v3 = [(WBSSavedAccountStore *)self _loadSavedAccounts];
  }

  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 processName];
  v6 = [v5 isEqualToString:@"AuthenticationServicesAgent"];

  if (v6)
  {
    v7 = os_transaction_create();
  }

  else
  {
    v7 = 0;
  }

  [(WBSSavedAccountStore *)self _loadRecentlyDeletedSavedAccountsInPersonalKeychain];
  v8 = [(NSMutableArray *)self->_recentlyDeletedSavedAccountsInPersonalKeychain mutableCopy];
  v9 = [(NSArray *)self->_sharedAccountsGroups safari_mapObjectsUsingBlock:&__block_literal_global_241];
  [(WBSSavedAccountStore *)self _loadRecentlyDeletedSavedAccountsFromSharedGroupIDs:v9];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts allValues];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v8 addObjectsFromArray:*(*(&v16 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [v8 sortUsingSelector:sel_compare_];
  objc_storeStrong(&self->_allRecentlyDeletedSavedAccounts, v8);
  if (self->_shouldShowServiceNamesForPasswordAndPasskeyItems)
  {
    [(WBSSavedAccountStore *)self _applyServiceNamesToSavedAccounts:self->_allRecentlyDeletedSavedAccounts];
  }

  [(WBSSavedAccountStore *)self _cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted:1];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_loadRecentlyDeletedSavedAccountsInPersonalKeychain
{
  v13 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
  self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = v3;
  v5 = v3;

  v6 = [v13 safari_allRecentlyDeletedPasswordCredentialItemsInPersonalKeychain];
  v7 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasswordsFromKeychainData:v6 forGroupID:&stru_1F3064D08 withDictionaryForSavedAccountsWithPasswords:self->_recentlyDeletedPersonalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts fromRecentlyDeleted:1];

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasskeysFromPasskeyData:self->_recentlyDeletedPasskeysDataInPersonalKeychain forGroupID:&stru_1F3064D08 fromRecentlyDeleted:1 withDictionaryForSavedAccountsWithPasskeys:v8];
  v10 = [(WBSSavedAccountStore *)self _mergeSavedAccountsWithPasskeys:v9 andSavedAccountsWithPasswords:v7 usingDictionaryForSavedAccountsWithPasswords:v5 dictionaryForSavedAccountsWithPasskeys:v8];
  v11 = [v10 mutableCopy];
  recentlyDeletedSavedAccountsInPersonalKeychain = self->_recentlyDeletedSavedAccountsInPersonalKeychain;
  self->_recentlyDeletedSavedAccountsInPersonalKeychain = v11;
}

uint64_t __68__WBSSavedAccountStore__updateShowServiceNamesInPasswordsPreference__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() shouldShowServiceNamesForPasswordAndPasskeyItems];
  v4 = *(a1 + 32);

  return [v4 setShouldShowServiceNamesForPasswordAndPasskeyItems:v3];
}

+ (BOOL)shouldShowServiceNamesForPasswordAndPasskeyItems
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 processName];

  if ([v4 isEqualToString:@"AuthenticationServicesAgent"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"webbookmarksd"))
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v7 = [v6 objectForKey:@"ShowServiceNamesInPasswords"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 setShouldShowServiceNamesForPasswordAndPasskeyItems:{objc_msgSend(v7, "BOOLValue")}];
      [v6 removeObjectForKey:@"ShowServiceNamesInPasswords"];
    }

    v8 = [MEMORY[0x1E695E000] pm_defaults];
    v5 = [v8 safari_BOOLForKey:@"ShowServiceNamesInPasswords" defaultValue:1];
  }

  return v5;
}

void __68__WBSSavedAccountStore__cleanUpRedundantCredentialsWithoutUsernames__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__WBSSavedAccountStore__cleanUpRedundantCredentialsWithoutUsernames__block_invoke_2;
  v14[3] = &unk_1E7CF4788;
  v14[4] = v2;
  v4 = [v3 safari_filterObjectsUsingBlock:v14];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _removeCredentialTypes:1 forSavedAccount:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __69__WBSSavedAccountStore__performRecentlyDeletedMaintenanceIfNecessary__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 168) count])
  {
    v2 = [MEMORY[0x1E695DF00] now];
    v3 = [MEMORY[0x1E695DEE8] currentCalendar];
    v4 = [v3 dateByAddingUnit:16 value:-30 toDate:v2 options:0];

    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v6 = [v5 valueForKey:@"DebugPasswordManagerRecentlyDeletedRecoveryWindowInMinutes"];

    if (v6)
    {
      v7 = [MEMORY[0x1E695E000] safari_browserDefaults];
      v8 = [v7 integerForKey:@"DebugPasswordManagerRecentlyDeletedRecoveryWindowInMinutes"];

      v9 = [MEMORY[0x1E695DEE8] currentCalendar];
      v10 = [v9 dateByAddingUnit:64 value:-v8 toDate:v2 options:0];

      v11 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v36 = v8;
        _os_log_impl(&dword_1B8447000, v11, OS_LOG_TYPE_DEFAULT, "Using debug recently deleted limit of %ld minutes", buf, 0xCu);
      }

      v12 = [MEMORY[0x1E695E000] safari_browserDefaults];
      [v12 removeObjectForKey:@"DebugPasswordManagerRecentlyDeletedRecoveryWindowInMinutes"];

      v4 = v10;
    }

    *(*(a1 + 32) + 224) = 1;
    v13 = [*(*(a1 + 32) + 168) copy];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v28 = a1;
      v27 = 0;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v20 = [v19 lastModifiedDate];
          v21 = [v20 earlierDate:v4];

          if (v21 != v4)
          {
            v22 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
            v23 = [v22 safari_mostRecentLastModifiedDateForCredentialsOnSavedAccount:v19];

            if (v23)
            {
              v24 = [v4 earlierDate:v23];

              if (v24 != v4)
              {
                v25 = WBS_LOG_CHANNEL_PREFIXPasswords();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  v36 = 30;
                  _os_log_impl(&dword_1B8447000, v25, OS_LOG_TYPE_DEFAULT, "Permanently deleting a saved account from Recently Deleted because it is more than %zu days old.", buf, 0xCu);
                }

                [*(v28 + 32) _removeCredentialTypes:objc_msgSend(v19 forSavedAccount:{"credentialTypes"), v19}];
                v27 = 1;
              }
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);

      *(*(v28 + 32) + 224) = 0;
      if (v27)
      {
        [*(v28 + 32) _resetOnInternalQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__WBSSavedAccountStore__performRecentlyDeletedMaintenanceIfNecessary__block_invoke_334;
        block[3] = &unk_1E7CF16E0;
        block[4] = *(v28 + 32);
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {

      *(*(a1 + 32) + 224) = 0;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke_2;
  block[3] = &unk_1E7CF15E8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[224] & 1) == 0)
    {
      v4 = WeakRetained;
      v3 = [WeakRetained _isMigratingKeychainItemsWithInvalidAuthenticationTypes];
      v2 = v4;
      if ((v3 & 1) == 0)
      {
        [v4 reset];
        [v4 _postSavedAccountStoreDidChangeNotification];
        v2 = v4;
      }
    }
  }
}

id __120__WBSSavedAccountStore_initWithAuthenticationServicesAgentProxy_shouldPrewarmSavedAccounts_limitedToDomains_forTesting___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _diagnosticStateDictionary];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (showServiceNamesInPasswordsEnabledKVOContext == a6)
  {
    [(WBSSavedAccountStore *)self _updateShowServiceNamesInPasswordsPreference:a3];
  }
}

- (id)_diagnosticStateDictionary
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"number of saved accounts";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_savedAccounts, "count")}];
  v11[0] = v3;
  v10[1] = @"number of passkeys in personal keychain";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_passkeysDataInPersonalKeychain, "count")}];
  v11[1] = v4;
  v10[2] = @"number of saved accounts with passwords";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_savedAccountsWithPasswords, "count")}];
  v11[2] = v5;
  v10[3] = @"number of personal keychain high level domains";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableDictionary count](self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts, "count")}];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)dealloc
{
  [(WBSKeychainCredentialNotificationMonitor *)self->_keychainMonitor removeObserverForToken:self->_keychainNotificationRegistrationToken];
  [(NSTimer *)self->_warmDataStoreAfterResetTimer invalidate];
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WBSSavedAccountStore;
  [(WBSSavedAccountStore *)&v4 dealloc];
}

- (id)savedAccountForURLCredential:(id)a3 protectionSpace:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 user];
  v9 = [v7 password];

  v10 = [(WBSSavedAccountStore *)self _savedAccountForProtectionSpace:v6 user:v8 password:v9];

  return v10;
}

- (NSArray)savedAccountsInPersonalKeychain
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__WBSSavedAccountStore_savedAccountsInPersonalKeychain__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__WBSSavedAccountStore_savedAccountsInPersonalKeychain__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[16];
  if (!v3)
  {
    v4 = [v2 _loadSavedAccounts];
    v3 = *(*(a1 + 32) + 128);
  }

  v5 = [v3 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSArray)savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords
{
  v2 = [(WBSSavedAccountStore *)self savedAccountsInPersonalKeychain];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_167];

  return v3;
}

- (id)savedAccountsForGroupID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__16;
    v17 = __Block_byref_object_dispose__16;
    v18 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__WBSSavedAccountStore_savedAccountsForGroupID___block_invoke;
    block[3] = &unk_1E7CF2D98;
    block[4] = self;
    v12 = &v13;
    v11 = v4;
    dispatch_sync(queue, block);
    v6 = v14[5];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore savedAccountsForGroupID:];
      }

      v7 = MEMORY[0x1E695E0F0];
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = [(WBSSavedAccountStore *)self savedAccountsInPersonalKeychainExcludingNeverSaveMarkerPasswords];
  }

  return v7;
}

void __48__WBSSavedAccountStore_savedAccountsForGroupID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 64))
  {
    v3 = [v2 _loadSavedAccounts];
    v2 = a1[4];
  }

  v4 = [*(v2 + 136) objectForKeyedSubscript:a1[5]];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)removeLegacyPlatformCredentialsForDomains:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__WBSSavedAccountStore_removeLegacyPlatformCredentialsForDomains___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __66__WBSSavedAccountStore_removeLegacyPlatformCredentialsForDomains___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2[11])
  {
    v3 = [v2 _loadSavedAccounts];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 40);
  v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v18)
  {
    v17 = *v26;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v25 + 1) + 8 * v4) safari_highLevelDomainFromHost];
        v6 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:v5];
        if (![v6 count])
        {

          goto LABEL_20;
        }

        v19 = v5;
        v20 = v4;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v21 + 1) + 8 * i) safari_dataForKey:@"CredentialID"];
              v13 = [v12 base64EncodedStringWithOptions:0];

              v14 = [[WBSPublicKeyCredentialIdentifier alloc] initWithCredentialID:v13 groupID:&stru_1F3064D08];
              [*(a1 + 32) deletePasskeyWithIdentifierOnInternalQueue:v14];
            }

            v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }

        [*(*(a1 + 32) + 88) removeObjectForKey:v19];
        v4 = v20 + 1;
      }

      while (v20 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)savedAccountWithAllMetadataForURLCredential:(id)a3 protectionSpace:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(17, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__WBSSavedAccountStore_savedAccountWithAllMetadataForURLCredential_protectionSpace_completion___block_invoke;
  v15[3] = &unk_1E7CF4738;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __95__WBSSavedAccountStore_savedAccountWithAllMetadataForURLCredential_protectionSpace_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) savedAccountWithAllMetadataForURLCredential:*(a1 + 40) protectionSpace:*(a1 + 48)];
  (*(v1 + 16))(v1, v2);
}

- (id)savedAccountWithAllMetadataForURLCredential:(id)a3 protectionSpace:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a4;
  v7 = [v6 user];
  v8 = [v6 password];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [(WBSSavedAccountStore *)self savedAccountsWithPasswords];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v22 = v6;
    v11 = *v26;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if (([v13 userIsNeverSaveMarker] & 1) == 0)
        {
          v14 = [v13 user];
          if (![v14 isEqualToString:v7])
          {
            goto LABEL_12;
          }

          v15 = [v13 password];
          if (([v15 isEqualToString:v8] & 1) == 0)
          {

LABEL_12:
            continue;
          }

          [v13 protectionSpaces];
          v16 = v9;
          v17 = v7;
          v19 = v18 = v8;
          v24 = [v19 containsObject:v23];

          v8 = v18;
          v7 = v17;
          v9 = v16;

          if (v24)
          {
            v10 = v13;
            goto LABEL_15;
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v10)
      {
LABEL_15:
        v6 = v22;
        break;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)savedAccountForURL:(id)a3 user:(id)a4 password:(id)a5
{
  v8 = MEMORY[0x1E695AC58];
  v9 = a5;
  v10 = a4;
  v11 = [v8 safari_HTMLFormProtectionSpaceForURL:a3];
  v12 = [(WBSSavedAccountStore *)self _savedAccountForProtectionSpace:v11 user:v10 password:v9];

  return v12;
}

- (id)_savedAccountForProtectionSpace:(id)a3 user:(id)a4 password:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [a3 host];
  v10 = [v9 safari_highLevelDomainForPasswordManager];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v14 = [v13 safari_allSafariCredentials];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __70__WBSSavedAccountStore__savedAccountForProtectionSpace_user_password___block_invoke;
  v39[3] = &unk_1E7CF4760;
  v15 = v10;
  v40 = v15;
  v16 = v7;
  v41 = v16;
  v17 = v8;
  v42 = v17;
  v18 = v11;
  v43 = v18;
  v19 = v12;
  v44 = v19;
  [v14 enumerateKeysAndObjectsUsingBlock:v39];

  v33 = v15;
  v34 = v16;
  v32 = v17;
  v20 = [[WBSSavedAccount alloc] _initWithHighLevelDomain:v15 user:v16 password:v17];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v18;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v35 + 1) + 8 * i);
        v27 = [v26 host];
        if ([v19 containsObject:v27])
        {
          v28 = [v26 safari_addressString];
          v29 = [v28 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:0 simplifiedStringOffset:0];
        }

        else
        {
          v29 = v27;
        }

        [v20 _addProtectionSpace:v26 forSite:v29 isDefaultCredentialForSite:{objc_msgSend(v20, "isDefaultCredentialForFullyQualifiedHostname:", v27)}];
      }

      v23 = [v21 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v23);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v20;
}

void __70__WBSSavedAccountStore__savedAccountForProtectionSpace_user_password___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v15 host];
  v7 = [v6 safari_highLevelDomainForPasswordManager];
  v8 = [v7 safari_isCaseInsensitiveEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:*(a1 + 40)];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 password];
      v12 = [v11 isEqualToString:*(a1 + 48)];

      if (v12)
      {
        [*(a1 + 56) addObject:v15];
      }

      else
      {
        v13 = *(a1 + 64);
        v14 = [v15 host];
        [v13 addObject:v14];
      }
    }
  }
}

- (id)savedAccountsForPersistentIdentifiers:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = [(WBSSavedAccountStore *)self savedAccountsWithPasswords];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__WBSSavedAccountStore_savedAccountsForPersistentIdentifiers___block_invoke;
  v9[3] = &unk_1E7CF4788;
  v10 = v4;
  v6 = v4;
  v7 = [v5 safari_filterObjectsUsingBlock:v9];

  return v7;
}

uint64_t __62__WBSSavedAccountStore_savedAccountsForPersistentIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 persistentIdentifiersForWarningManager];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(a1 + 32) containsObject:*(*(&v11 + 1) + 8 * v7)])
        {
          v8 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (void)removeCredentialTypes:(int64_t)a3 forSavedAccount:(id)a4 forGroup:(id)a5
{
  v6 = a3;
  v11 = a4;
  v7 = a5;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 groupID];
    [v11 _deletePasswordCredentialsForGroupID:v9];
  }

  if ((v6 & 2) != 0)
  {
    v10 = [v8 groupID];
    [v11 _deletePasskeyCredentialForGroupID:v10];
  }
}

- (NSArray)savedAccountsWithTOTPGenerators
{
  v2 = [(WBSSavedAccountStore *)self savedAccountsWithPasswords];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_179];

  return v3;
}

BOOL __55__WBSSavedAccountStore_savedAccountsWithTOTPGenerators__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 totpGenerators];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_allPersonalSidecarsFromPersonalKeychainFromRecentlyDeleted:(BOOL)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v4 = [v3 safari_allRecentlyDeletedPersonalSidecarsInPersonalKeychain];
  }

  else
  {
    v4 = [(WBSSavedAccountStore *)self _allSidecarsFromPersonalKeychain];
  }

  return v4;
}

- (NSArray)savedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords
{
  v2 = [(WBSSavedAccountStore *)self savedAccountsWithPasswords];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_181_0];

  return v3;
}

- (NSSet)highLevelDomainsOfAllSavedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords
{
  v2 = [(WBSSavedAccountStore *)self savedAccountsWithPasswordsExcludingNeverSaveMarkerPasswords];
  v3 = [v2 safari_setByApplyingBlock:&__block_literal_global_184];

  return v3;
}

- (NSArray)savedAccountsExcludingNeverSaveMarkerPasswords
{
  v2 = [(WBSSavedAccountStore *)self savedAccounts];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_186];

  return v3;
}

- (NSSet)highLevelDomainsOfAllSavedAccountsExcludingNeverSaveMarkerPasswords
{
  v2 = [(WBSSavedAccountStore *)self savedAccountsExcludingNeverSaveMarkerPasswords];
  v3 = [v2 safari_setByApplyingBlock:&__block_literal_global_188_0];

  return v3;
}

- (NSSet)highLevelDomainsOfRecentlyDeletedAccounts
{
  v2 = [(WBSSavedAccountStore *)self allRecentlyDeletedSavedAccounts];
  v3 = [v2 safari_setByApplyingBlock:&__block_literal_global_190_0];

  return v3;
}

- (id)highLevelDomainsOfSavedAccountsExcludingNeverSaveMarkerPasswordsForGroupID:(id)a3
{
  v3 = [(WBSSavedAccountStore *)self savedAccountsForGroupID:a3];
  v4 = [v3 safari_setByApplyingBlock:&__block_literal_global_192];

  return v4;
}

id __99__WBSSavedAccountStore_highLevelDomainsOfSavedAccountsExcludingNeverSaveMarkerPasswordsForGroupID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 userIsNeverSaveMarker])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 highLevelDomain];
  }

  return v3;
}

- (void)_warmDataStoreAfterResetTimerFired:(id)a3
{
  [(WBSSavedAccountStore *)self _prewarm];
  [(NSTimer *)self->_warmDataStoreAfterResetTimer invalidate];
  warmDataStoreAfterResetTimer = self->_warmDataStoreAfterResetTimer;
  self->_warmDataStoreAfterResetTimer = 0;
}

- (NSArray)savedAccountsWithPasswords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__WBSSavedAccountStore_savedAccountsWithPasswords__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__WBSSavedAccountStore_savedAccountsWithPasswords__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _savedAccountsWithPasswords];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __37__WBSSavedAccountStore_savedAccounts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _savedAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)savedAccountsWithNeverSaveMarker
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__WBSSavedAccountStore_savedAccountsWithNeverSaveMarker__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__WBSSavedAccountStore_savedAccountsWithNeverSaveMarker__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[7])
  {
    v3 = v2[7];
  }

  else
  {
    v4 = [v2 _loadSavedAccounts];
    v3 = *(*(a1 + 32) + 56);
  }

  v5 = [v3 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_savedAccountsWithPasswords
{
  savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
  if (!savedAccountsWithPasswords)
  {
    v4 = [(WBSSavedAccountStore *)self _loadSavedAccounts];
    savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
  }

  v5 = savedAccountsWithPasswords;

  return v5;
}

- (void)_ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue
{
  if (!self->_allRecentlyDeletedSavedAccounts)
  {
    [(WBSSavedAccountStore *)self _loadRecentlyDeletedSavedAccounts];
  }
}

- (NSArray)allRecentlyDeletedSavedAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__WBSSavedAccountStore_allRecentlyDeletedSavedAccounts__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__WBSSavedAccountStore_allRecentlyDeletedSavedAccounts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  v2 = [*(*(a1 + 32) + 168) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)recentlyDeletedSavedAccountsInPersonalKeychain
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__WBSSavedAccountStore_recentlyDeletedSavedAccountsInPersonalKeychain__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __70__WBSSavedAccountStore_recentlyDeletedSavedAccountsInPersonalKeychain__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  v2 = [*(*(a1 + 32) + 176) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)sharingGroupsWithSavedAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__WBSSavedAccountStore_sharingGroupsWithSavedAccounts__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__WBSSavedAccountStore_sharingGroupsWithSavedAccounts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDomainsToUsersExists];
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__WBSSavedAccountStore_sharingGroupsWithSavedAccounts__block_invoke_2;
  v7[3] = &unk_1E7CF2D20;
  v7[4] = v2;
  v4 = [v3 safari_filterObjectsUsingBlock:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

BOOL __54__WBSSavedAccountStore_sharingGroupsWithSavedAccounts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 136);
  v3 = [a2 groupID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (NSArray)sharingGroupsWithRecentlyDeletedSavedAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__WBSSavedAccountStore_sharingGroupsWithRecentlyDeletedSavedAccounts__block_invoke;
  v5[3] = &unk_1E7CF1FA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__WBSSavedAccountStore_sharingGroupsWithRecentlyDeletedSavedAccounts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__WBSSavedAccountStore_sharingGroupsWithRecentlyDeletedSavedAccounts__block_invoke_2;
  v7[3] = &unk_1E7CF2D20;
  v7[4] = v2;
  v4 = [v3 safari_filterObjectsUsingBlock:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

BOOL __69__WBSSavedAccountStore_sharingGroupsWithRecentlyDeletedSavedAccounts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 192);
  v3 = [a2 groupID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)recentlyDeletedSavedAccountsForGroupWithID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSSavedAccountStore_recentlyDeletedSavedAccountsForGroupWithID___block_invoke;
  block[3] = &unk_1E7CF2D98;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__WBSSavedAccountStore_recentlyDeletedSavedAccountsForGroupWithID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  v5 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_shouldLoadCredentialRecordWithHostIntoAccountStore:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSArray *)self->_domainsStoreIsLimitedTo count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_domainsStoreIsLimitedTo;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([v4 safari_isHostOrSubdomainOfHost:{*(*(&v11 + 1) + 8 * i), v11}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)_loadSavedAccountsWithPasswordsFromKeychainData:(id)a3 forGroupID:(id)a4 withDictionaryForSavedAccountsWithPasswords:(id)a5 fromRecentlyDeleted:(BOOL)a6
{
  v6 = a6;
  v138 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v86 = a5;
  v106 = [MEMORY[0x1E695DF90] dictionary];
  v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v10 count];
    v15 = @"NO";
    if (v6)
    {
      v15 = @"YES";
    }

    v16 = v15;
    *buf = 136315906;
    v131 = "[WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:]";
    v132 = 2048;
    v133 = v14;
    v134 = 2114;
    v135 = v11;
    v136 = 2112;
    v137 = v16;
    _os_log_impl(&dword_1B8447000, v13, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu password keychain records from group: %{public}@ from Recently Deleted: %@", buf, 0x2Au);
  }

  v85 = v11;
  v87 = v6;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v123 objects:v129 count:16];
  if (v18)
  {
    v19 = v18;
    v104 = 0;
    v89 = 0;
    v20 = *v124;
    v21 = *MEMORY[0x1E697AE00];
    v116 = *MEMORY[0x1E697AC30];
    v115 = *MEMORY[0x1E697AE80];
    v99 = *MEMORY[0x1E697AC50];
    v98 = *MEMORY[0x1E697AC60];
    v88 = *MEMORY[0x1E697ABD0];
    v97 = *MEMORY[0x1E697B3C0];
    v96 = *MEMORY[0x1E697ADF8];
    v95 = *MEMORY[0x1E695AB50];
    v94 = *MEMORY[0x1E697ACD0];
    v93 = *MEMORY[0x1E697ADD0];
    v92 = *MEMORY[0x1E697B3C8];
    v90 = *MEMORY[0x1E697ADC8];
    v91 = *MEMORY[0x1E697ACC8];
    v102 = v17;
    v103 = self;
    v100 = *MEMORY[0x1E697AE00];
    v101 = *v124;
    do
    {
      v22 = 0;
      v105 = v19;
      do
      {
        if (*v124 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v123 + 1) + 8 * v22);
        v24 = [v23 objectForKeyedSubscript:{v21, v85}];
        v25 = WBSHTTPProtocolFromSecAttrProtocolValue(v24);

        if (v25)
        {
          v26 = [v23 objectForKeyedSubscript:v116];
          v27 = v26;
          v28 = &stru_1F3064D08;
          if (v26)
          {
            v28 = v26;
          }

          v29 = v28;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [v23 objectForKeyedSubscript:v115];
            if ([v30 length] && -[WBSSavedAccountStore _shouldLoadCredentialRecordWithHostIntoAccountStore:](self, "_shouldLoadCredentialRecordWithHostIntoAccountStore:", v30))
            {
              v31 = [v23 safari_stringForKey:v99];
              if (([v31 isEqualToString:v98] & 1) == 0)
              {
                v32 = v30;
                v33 = [v23 safari_stringForKey:v88];
                v34 = WBS_LOG_CHANNEL_PREFIXKeychain();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v131 = v31;
                  v132 = 2114;
                  v133 = v33;
                  _os_log_error_impl(&dword_1B8447000, v34, OS_LOG_TYPE_ERROR, "Invalid authentication type for keychain item; kSecAttrAuthenticationType: %{public}@, kSecAttrAccessGroup: %{public}@", buf, 0x16u);
                }

                ++v104;

                v30 = v32;
              }

              v35 = [v30 safari_highLevelDomainForPasswordManager];
              v36 = v30;
              v37 = v35;
              v38 = v36;
              if (v35)
              {
                v36 = v35;
              }

              v39 = v36;

              v40 = [v106 objectForKeyedSubscript:v39];
              if (!v40)
              {
                v40 = [MEMORY[0x1E695DF90] dictionary];
                [v106 setObject:v40 forKeyedSubscript:v39];
              }

              v41 = [v23 objectForKeyedSubscript:v97];
              v110 = v41;
              if (v41)
              {
                v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v41 encoding:4];
                v43 = v42;
                v44 = &stru_1F3064D08;
                if (v42)
                {
                  v44 = v42;
                }

                v45 = v44;
              }

              else
              {
                v45 = &stru_1F3064D08;
              }

              v47 = [v40 objectForKeyedSubscript:v29];
              if (!v47)
              {
                v47 = [MEMORY[0x1E695DF90] dictionary];
                [v40 setObject:v47 forKeyedSubscript:v29];
              }

              v114 = v47;
              v48 = [v47 objectForKeyedSubscript:v45];
              v112 = v39;
              v113 = v31;
              v111 = v40;
              v109 = v45;
              if (v48)
              {
                v49 = v48;
              }

              else
              {
                ++v89;
                v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v114 setObject:v49 forKeyedSubscript:v45];
              }

              v50 = objc_alloc(MEMORY[0x1E695AC58]);
              v51 = [v23 objectForKeyedSubscript:v96];
              v108 = v38;
              v107 = [v50 initWithHost:v38 port:objc_msgSend(v51 protocol:"integerValue") realm:v25 authenticationMethod:{0, v95}];

              v52 = [v23 objectForKeyedSubscript:v94];
              v53 = [v23 objectForKeyedSubscript:v93];
              v54 = v53;
              if (v53)
              {
                v55 = v53;
              }

              else
              {
                v55 = v52;
              }

              v56 = v55;

              v57 = [v23 safari_dataForKey:v92];
              v58 = [v23 objectForKeyedSubscript:v91];
              v59 = [v58 isEqualToString:@"default"];

              v60 = [[_WBSSavedAccountPartialCredential alloc] initWithProtectionSpace:v107 modificationDate:v56 creationDate:v52 persistentIdentifier:v57 isDefaultCredentialForProtectionSpace:v59];
              v61 = [v23 objectForKeyedSubscript:v90];
              [(_WBSSavedAccountPartialCredential *)v60 setRecoveryKeyUniqueIdentifier:v61];

              [v49 addObject:v60];
              v30 = v108;

              v17 = v102;
              self = v103;
              v21 = v100;
              v20 = v101;
              v19 = v105;
            }
          }

          else
          {
            v46 = WBS_LOG_CHANNEL_PREFIXKeychain();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              [WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:v46 forGroupID:v29 withDictionaryForSavedAccountsWithPasswords:&v128 fromRecentlyDeleted:?];
            }
          }
        }

        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v123 objects:v129 count:16];
    }

    while (v19);
  }

  else
  {
    v104 = 0;
    v89 = 0;
  }

  v62 = [MEMORY[0x1E695DF70] arrayWithCapacity:v89];
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke;
  v117[3] = &unk_1E7CF4868;
  v63 = v85;
  v118 = v63;
  v122 = v87;
  v64 = v62;
  v119 = v64;
  v120 = self;
  v65 = v86;
  v121 = v65;
  [v106 enumerateKeysAndObjectsUsingBlock:v117];
  v66 = [MEMORY[0x1E695DF70] array];
  if ([v63 length])
  {
    v67 = [(WBSSavedAccountStore *)self _allSharedSidecarsForGroupID:v63 fromRecentlyDeleted:v87];
    [(WBSSavedAccountStore *)self _matchSidecars:v67 toSavedAccountsWithPasswordsInDictionary:v65 unmatchedSidecars:v66];
    v68 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v68;
      v70 = [v67 count];
      *buf = 136315650;
      v131 = "[WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:]";
      v132 = 2048;
      v133 = v70;
      v134 = 2114;
      v135 = v63;
      _os_log_impl(&dword_1B8447000, v69, OS_LOG_TYPE_DEFAULT, "%s: loaded %lu shared sidecar items from group %{public}@", buf, 0x20u);
    }

    v71 = [(WBSSavedAccountStore *)self _allPersonalSidecarsForGroupID:v63 fromRecentlyDeleted:v87, v85];
    [(WBSSavedAccountStore *)self _matchSidecars:v71 toSavedAccountsWithPasswordsInDictionary:v65 unmatchedSidecars:v66];
    v72 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = v72;
      v74 = [v71 count];
      *buf = 136315650;
      v131 = "[WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:]";
      v132 = 2048;
      v133 = v74;
      v134 = 2114;
      v135 = v63;
      _os_log_impl(&dword_1B8447000, v73, OS_LOG_TYPE_DEFAULT, "%s: loaded %lu personal sidecar items from group %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v67 = [(WBSSavedAccountStore *)self _allPersonalSidecarsFromPersonalKeychainFromRecentlyDeleted:v87];
    [(WBSSavedAccountStore *)self _matchSidecars:v67 toSavedAccountsWithPasswordsInDictionary:v65 unmatchedSidecars:v66];
    v75 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    v71 = v75;
    v76 = [v67 count];
    *buf = 136315394;
    v131 = "[WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:]";
    v132 = 2048;
    v133 = v76;
    _os_log_impl(&dword_1B8447000, v71, OS_LOG_TYPE_DEFAULT, "%s: loaded %lu sidecar items from personal keychain", buf, 0x16u);
  }

LABEL_54:
  v77 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    v78 = v77;
    v79 = [v66 count];
    *buf = 134217984;
    v131 = v79;
    _os_log_impl(&dword_1B8447000, v78, OS_LOG_TYPE_DEFAULT, "%ld unmatched sidecars", buf, 0xCu);
  }

  v80 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
  {
    [WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:];
    if (!v104)
    {
      goto LABEL_61;
    }
  }

  else if (!v104)
  {
    goto LABEL_61;
  }

  v81 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
  {
    [WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:];
  }

  [(WBSSavedAccountStore *)self _reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded];
LABEL_61:
  v82 = [v64 copy];

  v83 = *MEMORY[0x1E69E9840];

  return v82;
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v6 count] < 2)
  {
    v10 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_2;
    v62[3] = &unk_1E7CF40F0;
    v9 = v8;
    v63 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:v62];
    if ([v9 count] == 1)
    {
      v10 = 0;
    }

    else
    {
      v43 = v7;
      v44 = v6;
      v41 = v9;
      v11 = v9;
      v42 = v5;
      v12 = v5;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v64 objects:v70 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v65;
        v17 = &isSearchEvaluationLoggingEnabled_isSearchEvaluationLoggingEnabled;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v65 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = [*(*(&v64 + 1) + 8 * v18) substringToIndex:{objc_msgSend(*(*(&v64 + 1) + 8 * v18), "length") - objc_msgSend(v12, "length")}];
            if ([v19 length])
            {
              v20 = v19;
              if (*(v17 + 96) != -1)
              {
                __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_cold_1();
              }

              if ([setOfUninterestingSubdomains_set containsObject:v20])
              {
              }

              else
              {
                if (numberedSubdomainRegexp_onceToken != -1)
                {
                  __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_cold_2();
                }

                v21 = numberedSubdomainRegexp_regexp;
                v22 = [v21 firstMatchInString:v20 options:0 range:{0, objc_msgSend(v20, "length")}];

                v17 = &isSearchEvaluationLoggingEnabled_isSearchEvaluationLoggingEnabled;
                if (!v22)
                {

                  v10 = 1;
                  goto LABEL_22;
                }
              }
            }

            ++v18;
          }

          while (v15 != v18);
          v15 = [v13 countByEnumeratingWithState:&v64 objects:v70 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v10 = 0;
LABEL_22:
      v6 = v44;
      v5 = v42;
      v7 = v43;
      v9 = v41;
    }
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_5;
  v53[3] = &unk_1E7CF4840;
  v60 = v10;
  v23 = v5;
  v54 = v23;
  v55 = *(a1 + 32);
  v61 = *(a1 + 64);
  v56 = *(a1 + 40);
  v24 = v7;
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v57 = v24;
  v58 = v25;
  v59 = v26;
  [v6 enumerateKeysAndObjectsUsingBlock:v53];
  if ([v24 count] >= 2)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v28 = v24;
    v29 = [v28 countByEnumeratingWithState:&v49 objects:v69 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v50;
LABEL_27:
      v32 = 0;
      while (1)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v49 + 1) + 8 * v32);
        if (![v33 shouldShowSpecificSubdomainForUserVisibleDomain])
        {
          break;
        }

        v34 = [v33 userVisibleDomain];
        [v27 addObject:v34];

        if (v30 == ++v32)
        {
          v30 = [v28 countByEnumeratingWithState:&v49 objects:v69 count:16];
          if (v30)
          {
            goto LABEL_27;
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
LABEL_33:

      if ([v27 count] != 1)
      {
LABEL_42:

        goto LABEL_43;
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v35 = v28;
      v36 = [v35 countByEnumeratingWithState:&v45 objects:v68 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v46;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v46 != v38)
            {
              objc_enumerationMutation(v35);
            }

            [*(*(&v45 + 1) + 8 * i) setShouldShowSpecificSubdomainForUserVisibleDomain:0];
          }

          v37 = [v35 countByEnumeratingWithState:&v45 objects:v68 count:16];
        }

        while (v37);
      }
    }

    goto LABEL_42;
  }

LABEL_43:

  v40 = *MEMORY[0x1E69E9840];
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_3;
  v4[3] = &unk_1E7CF47D0;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_201];
  [v3 addObjectsFromArray:v4];
}

id __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 protectionSpace];
  v3 = [v2 host];

  return v3;
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_6;
  v28[3] = &unk_1E7CF47D0;
  v8 = v7;
  v29 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v28];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = (*(a1 + 80) & 1) != 0 || [v6 count] > 1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_8;
  v19[3] = &unk_1E7CF4818;
  v20 = *(a1 + 32);
  v11 = v5;
  v21 = v11;
  v12 = v8;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  v14 = *(a1 + 40);
  v26 = *(a1 + 81);
  v15 = *(a1 + 48);
  *&v16 = *(a1 + 56);
  *(&v16 + 1) = *(a1 + 64);
  v27 = v10;
  *&v17 = v14;
  *(&v17 + 1) = v15;
  v24 = v17;
  v25 = v16;
  [v6 enumerateKeysAndObjectsUsingBlock:v19];
  v18 = [*(a1 + 72) objectForKeyedSubscript:*(a1 + 32)];
  if (!v18)
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1 + 72) setObject:v18 forKeyedSubscript:*(a1 + 32)];
  }

  [v18 setObject:v13 forKeyedSubscript:v11];
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_206];
  [v3 addObjectsFromArray:v4];
}

id __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 protectionSpace];
  v3 = [v2 host];

  return v3;
}

void __147__WBSSavedAccountStore__loadSavedAccountsWithPasswordsFromKeychainData_forGroupID_withDictionaryForSavedAccountsWithPasswords_fromRecentlyDeleted___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v24 = a1;
  v22 = v5;
  v7 = [[WBSSavedAccount alloc] _initWithHighLevelDomain:*(a1 + 32) user:*(a1 + 40) password:v5];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 protectionSpace];
        v14 = [v13 host];
        if ([*(v24 + 48) countForObject:v14] == 1)
        {
          v15 = v14;
        }

        else
        {
          v16 = [v13 safari_addressString];
          v15 = [v16 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:0 simplifiedStringOffset:0];
        }

        [v7 _addProtectionSpace:v13 forSite:v15 isDefaultCredentialForSite:{objc_msgSend(v12, "isDefaultCredentialForProtectionSpace")}];
        v17 = [v12 modificationDate];
        [v7 _addPasswordCredentialModificationDate:v17];

        v18 = [v12 creationDate];
        [v7 _addPasswordCredentialCreationDate:v18];

        if ([v14 isEqualToString:@"972A5469-4550-4949-8F8C-5E5E1C5CD33D"])
        {
          v19 = [v12 recoveryKeyUniqueIdentifier];
          [v7 _addFileVaultRecoveryKeyMetadataFromUniqueIdentifier:v19];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v20 = [obj safari_mapObjectsUsingBlock:&__block_literal_global_209];
  [v7 setPersistentIdentifiersForWarningManager:v20];
  [*(v24 + 56) setObject:v7 forKeyedSubscript:v22];
  [v7 setSharedGroupID:*(v24 + 64)];
  [v7 setIsRecentlyDeleted:*(v24 + 96)];
  [*(v24 + 72) addObject:v7];
  [*(v24 + 80) addObject:v7];
  if (*(v24 + 97) == 1)
  {
    [v7 setShouldShowSpecificSubdomainForUserVisibleDomain:1];
  }

  if (([v7 userIsNeverSaveMarker] & 1) == 0)
  {
    *(*(v24 + 88) + 259) = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_matchSidecars:(id)a3 toSavedAccountsWithPasswordsInDictionary:(id)a4 unmatchedSidecars:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v40 = a4;
  v36 = a5;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v56;
    v37 = *v56;
    v38 = self;
    do
    {
      v12 = 0;
      v39 = v10;
      do
      {
        if (*v56 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v55 + 1) + 8 * v12);
        v14 = [v13 protectionSpace];
        v15 = [v14 host];
        if ([(WBSSavedAccountStore *)self _shouldLoadCredentialRecordWithHostIntoAccountStore:v15])
        {
          v16 = [v15 safari_highLevelDomainForPasswordManager];
          v17 = [v40 objectForKeyedSubscript:v16];
          v45 = v13;
          [v13 user];
          v19 = v18 = v11;
          [v17 objectForKeyedSubscript:v19];
          v20 = v10;
          v22 = v21 = self;

          v11 = v18;
          v46 = v22;
          v23 = v22;
          self = v21;
          v10 = v20;
          v24 = [v23 allValues];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v25 = v24;
          v43 = [v25 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v43)
          {
            v26 = *v52;
            v42 = v16;
            v44 = v25;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v52 != v26)
                {
                  objc_enumerationMutation(v25);
                }

                v28 = *(*(&v51 + 1) + 8 * i);
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v50 = 0u;
                v29 = [v28 protectionSpaces];
                v30 = [v29 countByEnumeratingWithState:&v47 objects:v59 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v48;
                  while (2)
                  {
                    for (j = 0; j != v31; ++j)
                    {
                      if (*v48 != v32)
                      {
                        objc_enumerationMutation(v29);
                      }

                      if ([*(*(&v47 + 1) + 8 * j) isEqualToProtectionSpaceForPasswordManager:v14])
                      {
                        v34 = [v14 host];
                        [v28 _addSidecar:v45 forSite:v34];

                        v25 = v44;
                        v11 = v37;
                        self = v38;
                        v10 = v39;
                        v16 = v42;
                        goto LABEL_24;
                      }
                    }

                    v31 = [v29 countByEnumeratingWithState:&v47 objects:v59 count:16];
                    if (v31)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v25 = v44;
              }

              v11 = v37;
              self = v38;
              v10 = v39;
              v16 = v42;
              v43 = [v44 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v43);
          }

          [v36 addObject:v45];
LABEL_24:
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v10);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [v3 safari_dateForKey:@"LastInvalidAuthTypeMigrationDate"];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [v5 dateByAddingUnit:16 value:-7 toDate:v6 options:0];

  if (![v7 safari_isEarlierThanDate:v4])
  {

LABEL_7:
    v9 = dispatch_get_global_queue(17, 0);
    dispatch_async(v9, &__block_literal_global_213_0);

    [(WBSSavedAccountStore *)self _migratePasswordsWithInvalidAuthenticationTypes];
    v10 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v11 = [MEMORY[0x1E695DF00] now];
    [v10 safari_setDate:v11 forKey:@"LastInvalidAuthTypeMigrationDate"];

    goto LABEL_8;
  }

  v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = 7;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Skipping invalid auth type migration because the migration has already run in the past %lu days.", &v13, 0xCu);
  }

LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
}

void __82__WBSSavedAccountStore__reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __82__WBSSavedAccountStore__reportKeychainItemsWithInvalidAuthenticationTypesIfNeeded__block_invoke_cold_1();
  }
}

void __42__WBSSavedAccountStore__loadSavedAccounts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _loadSavedAccountsAfterSettingTestMode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke_cold_1();
    }
  }

  else
  {
    v8 = *(*(a1 + 32) + 120);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke_226;
    v11[3] = &unk_1E7CF1708;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    dispatch_async(v8, v11);
  }
}

uint64_t __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke_226(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_1B8447000, v4, OS_LOG_TYPE_DEFAULT, "Successfully fetched '%lu' Sign in with Apple accounts.", &v7, 0xCu);
  }

  result = [*(a1 + 40) _updateCachedSignInWithAppleAccountsOnInternalQueueWithAccounts:*(a1 + 32)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_updateCachedSignInWithAppleAccountsOnInternalQueueWithAccounts:(id)a3
{
  v4 = [(WBSSavedAccountStore *)self _convertSignInWithAppleAccountsToSavedAccounts:a3];
  savedAccounts = self->_savedAccounts;
  if (!savedAccounts)
  {
    savedAccounts = MEMORY[0x1E695E0F0];
  }

  v6 = savedAccounts;
  v7 = [(NSArray *)v6 safari_filterObjectsUsingBlock:&__block_literal_global_229_0];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v10 = [v8 isEqualToSet:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v4 copy];
    savedAccountsWithSignInWithAppleRecords = self->_savedAccountsWithSignInWithAppleRecords;
    self->_savedAccountsWithSignInWithAppleRecords = v11;

    v13 = [(NSArray *)v6 safari_filterObjectsUsingBlock:&__block_literal_global_231];
    if ([(NSArray *)self->_savedAccountsWithSignInWithAppleRecords count])
    {
      v14 = [v13 arrayByAddingObjectsFromArray:self->_savedAccountsWithSignInWithAppleRecords];

      v6 = v14;
    }

    v15 = [(NSArray *)v6 sortedArrayUsingSelector:sel_compare_];
    v16 = self->_savedAccounts;
    self->_savedAccounts = v15;

    v17 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v17, OS_LOG_TYPE_DEFAULT, "Merging Sign in with Apple accounts into all saved accounts", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__WBSSavedAccountStore__updateCachedSignInWithAppleAccountsOnInternalQueueWithAccounts___block_invoke_232;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)_convertSignInWithAppleAccountsToSavedAccounts:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 localizedAppName];
        v12 = [v11 length];

        if (v12)
        {
          v13 = [[WBSSavedAccount alloc] _initWithSignInWithAppleAccount:v10];
          [v4 addObject:v13];
        }

        else
        {
          v14 = WBS_LOG_CHANNEL_PREFIXPasswords();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(WBSSavedAccountStore *)&v22 _convertSignInWithAppleAccountsToSavedAccounts:v14, v10, &v23];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_signInWithApplePushNotificationReceived:(id)a3
{
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B8447000, v4, OS_LOG_TYPE_DEFAULT, "Sign in with Apple accounts changed push notification received, reloading accounts", v5, 2u);
  }

  [(WBSSavedAccountStore *)self _fetchSignInWithAppleAccounts];
}

- (BOOL)_moveSignInWithAppleSavedAccount:(id)a3 toGroupID:(id)a4
{
  v5 = a3;
  v28 = a4;
  v31 = v5;
  v6 = [v5 signInWithAppleAccount];
  v7 = [MEMORY[0x1E698DC80] sharedInstance];
  v8 = [v7 primaryAuthKitAccount];

  v9 = [MEMORY[0x1E698DC80] sharedInstance];
  v10 = [v9 altDSIDForAccount:v8];

  v11 = +[WBSOngoingSharingGroupProvider sharedProvider];
  v12 = [v11 currentUserParticipantID];

  v13 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v14 = [MEMORY[0x1E698DC80] sharedInstance];
  v15 = [v14 familyNameForAccount:v8];
  [v13 setFamilyName:v15];

  v16 = [MEMORY[0x1E698DC80] sharedInstance];
  v29 = v8;
  v17 = [v16 givenNameForAccount:v8];
  [v13 setGivenName:v17];

  v18 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v19 = [v18 stringFromPersonNameComponents:v13];
  v30 = v12;
  v20 = [objc_alloc(MEMORY[0x1E698DDE0]) initWithGroupID:v28 participantID:v12 participantName:v19];
  v21 = [objc_alloc(MEMORY[0x1E698DDF0]) initWithAltDSID:v10];
  [v21 setSignInWithAppleAccount:v6];
  v33 = v6;
  v22 = [v6 shareInfo];
  v23 = [v22 groupID];
  [v21 setCurrentGroupID:v23];

  v24 = [v28 length];
  if (v24)
  {
    v25 = v31;
    v26 = [(WBSSavedAccountStore *)self _shareSignInWithAppleAccountWithContext:v21 withGroupInfo:v20 savedAccount:v31];
  }

  else
  {
    v26 = [(WBSSavedAccountStore *)self _unshareSignInWithAppleAccountWithContext:v21];
    v25 = v31;
  }

  return v26;
}

- (BOOL)_shareSignInWithAppleAccountWithContext:(id)a3 withGroupInfo:(id)a4 savedAccount:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E698DDE8]);
  v11 = dispatch_group_create();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  dispatch_group_enter(v11);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__WBSSavedAccountStore__shareSignInWithAppleAccountWithContext_withGroupInfo_savedAccount___block_invoke;
  v17[3] = &unk_1E7CF48B8;
  v20 = &v21;
  v12 = v9;
  v18 = v12;
  v13 = v11;
  v19 = v13;
  [v10 shareAccountWithContext:v7 withGroup:v8 completion:v17];
  v14 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v13, v14);
  v15 = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return v15;
}

void __91__WBSSavedAccountStore__shareSignInWithAppleAccountWithContext_withGroupInfo_savedAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91__WBSSavedAccountStore__shareSignInWithAppleAccountWithContext_withGroupInfo_savedAccount___block_invoke_cold_1();
    }

    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Successfully shared Sign in with Apple Account.", v10, 2u);
    }

    [*(a1 + 32) setSignInWithAppleAccount:v5];
    v9 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v9;
  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)_unshareSignInWithAppleAccountWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E698DDE8]);
  v5 = dispatch_group_create();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  dispatch_group_enter(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__WBSSavedAccountStore__unshareSignInWithAppleAccountWithContext___block_invoke;
  v10[3] = &unk_1E7CF48E0;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  [v4 unshareAccountWithContext:v3 completion:v10];
  v7 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v6, v7);
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __66__WBSSavedAccountStore__unshareSignInWithAppleAccountWithContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXPasswords();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__WBSSavedAccountStore__unshareSignInWithAppleAccountWithContext___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Successfully unshared Sign in with Apple Account.", v8, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)exportPasskeyCredentialWithID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSSavedAccountStore_exportPasskeyCredentialWithID___block_invoke;
  block[3] = &unk_1E7CF1730;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__WBSSavedAccountStore_exportPasskeyCredentialWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) exportPasskeyCredentialWithIDOnInternalQueue:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_loadRecentlyDeletedSavedAccountsFromSharedGroupIDs:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts;
  self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = v5;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E695DF90] dictionary];
        v12 = [v22 safari_allRecentlyDeletedPasswordCredentialItemsInGroupWithID:v10];
        v13 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasswordsFromKeychainData:v12 forGroupID:v10 withDictionaryForSavedAccountsWithPasswords:v11 fromRecentlyDeleted:1];

        v14 = [MEMORY[0x1E695DF90] dictionary];
        v15 = [(NSDictionary *)self->_groupIdentifiersToRecentlyDeletedPasskeysData objectForKeyedSubscript:v10];
        v16 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasskeysFromPasskeyData:v15 forGroupID:v10 fromRecentlyDeleted:1 withDictionaryForSavedAccountsWithPasskeys:v14];

        v17 = [(WBSSavedAccountStore *)self _mergeSavedAccountsWithPasskeys:v16 andSavedAccountsWithPasswords:v13 usingDictionaryForSavedAccountsWithPasswords:v11 dictionaryForSavedAccountsWithPasskeys:v14];
        v18 = [v17 mutableCopy];
        [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts setObject:v18 forKeyedSubscript:v10];

        ++v9;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __51__WBSSavedAccountStore__fetchAndFilterPasskeysData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 136315650;
    v10 = "[WBSSavedAccountStore _fetchAndFilterPasskeysData]_block_invoke";
    v11 = 2048;
    v12 = [v5 count];
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu passkey keychain records from group %{public}@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __66__WBSSavedAccountStore__fetchAndFilterRecentlyDeletedPasskeysData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v9 = 136315650;
    v10 = "[WBSSavedAccountStore _fetchAndFilterRecentlyDeletedPasskeysData]_block_invoke";
    v11 = 2048;
    v12 = [v5 count];
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "%s: Loaded %zu recently deleted passkey keychain records from group %{public}@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_loadAndMergeSavedAccountsFromGroupID:(id)a3 intoAllSavedAccounts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v8)
  {
    if (!self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
      groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = v9;
    }

    v11 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts setObject:v11 forKeyedSubscript:v6];

    v12 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v6];
  }

  else
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = v13;

    v12 = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
  }

  v15 = v12;
  v16 = [MEMORY[0x1E695DF90] dictionary];
  if (v8)
  {
    v17 = [(WBSSavedAccountStore *)self _allInternetPasswordEntriesFromGroupID:v6];
    v18 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasswordsFromKeychainData:v17 forGroupID:v6 withDictionaryForSavedAccountsWithPasswords:v15 fromRecentlyDeleted:0];
    v19 = [(NSDictionary *)self->_groupIdentifiersToPasskeysData objectForKeyedSubscript:v6];
  }

  else
  {
    v17 = [(WBSSavedAccountStore *)self _allInternetPasswordEntriesFromPersonalKeychain];
    v18 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasswordsFromKeychainData:v17 forGroupID:v6 withDictionaryForSavedAccountsWithPasswords:v15 fromRecentlyDeleted:0];
    v19 = self->_passkeysDataInPersonalKeychain;
  }

  v20 = v19;
  v21 = [(WBSSavedAccountStore *)self _loadSavedAccountsWithPasskeysFromPasskeyData:v19 forGroupID:v6 fromRecentlyDeleted:0 withDictionaryForSavedAccountsWithPasskeys:v16];
  v22 = [(WBSSavedAccountStore *)self _mergeSavedAccountsWithPasskeys:v21 andSavedAccountsWithPasswords:v18 usingDictionaryForSavedAccountsWithPasswords:v15 dictionaryForSavedAccountsWithPasskeys:v16];
  v23 = [(WBSSavedAccountStore *)self _mergeLoadedSavedAccounts:v22 intoAllSavedAccounts:v7];

  return v23;
}

- (id)_loadSavedAccountsWithPasskeysFromPasskeyData:(id)a3 forGroupID:(id)a4 fromRecentlyDeleted:(BOOL)a5 withDictionaryForSavedAccountsWithPasskeys:(id)a6
{
  v7 = a5;
  v103 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v86 = v11;
  v13 = [v11 length];
  v14 = v13;
  v81 = v7;
  v82 = v12;
  v78 = v13;
  if (v7)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v84 = v15;
    if (!v14)
    {
      objc_storeStrong(&self->_recentlyDeletedPersonalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys, v15);
    }
  }

  else
  {
    if (v13)
    {
      if (!self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys)
      {
        v16 = [MEMORY[0x1E695DF90] dictionary];
        groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
        self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = v16;
      }

      v18 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys setObject:v18 forKeyedSubscript:v11];

      v19 = [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys objectForKeyedSubscript:v11];
    }

    else
    {
      v20 = [MEMORY[0x1E695DF90] dictionary];
      personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
      self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = v20;

      v19 = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    }

    v84 = v19;
  }

  v80 = [MEMORY[0x1E695DF70] array];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v22 = v10;
  v23 = [v22 countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v95;
    v88 = self;
    v79 = v22;
    v87 = *v95;
    do
    {
      v26 = 0;
      v83 = v24;
      do
      {
        if (*v95 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v94 + 1) + 8 * v26);
        v28 = [v27 objectForKeyedSubscript:@"CredentialRelyingPartyID"];
        if ([(WBSSavedAccountStore *)self _shouldLoadCredentialRecordWithHostIntoAccountStore:v28])
        {
          v90 = [v27 objectForKeyedSubscript:@"CredentialUserVisibleName"];
          v29 = [v27 objectForKeyedSubscript:@"UserHandle"];
          v30 = [v27 objectForKeyedSubscript:@"CredentialID"];
          v31 = [v30 base64EncodedStringWithOptions:0];

          v91 = [(__CFString *)v28 safari_highLevelDomainForPasswordManager];
          v89 = v31;
          if (v91)
          {
            if (v31)
            {
              v32 = [v27 safari_stringForKey:@"GroupID"];
              v33 = v32;
              v34 = &stru_1F3064D08;
              if (v32)
              {
                v34 = v32;
              }

              v35 = v34;

              if (([(__CFString *)v35 isEqualToString:v86]& 1) != 0)
              {
                v85 = v35;
                v36 = [(NSMutableDictionary *)self->_highLevelDomainToLegacyPlatformAuthenticatorCredentials safari_mutableArrayForKey:v91];
                v37 = 0;
                if ([v36 count])
                {
                  v38 = 0;
                  do
                  {
                    v39 = [v36 objectAtIndexedSubscript:v38];
                    v40 = [v39 objectForKeyedSubscript:@"UserHandle"];
                    v41 = [v40 isEqualToString:v29];

                    if (v41)
                    {
                      if (v37)
                      {
                        [v37 addIndex:v38];
                      }

                      else
                      {
                        v37 = [MEMORY[0x1E696AD50] indexSetWithIndex:v38];
                      }

                      v42 = [v39 objectForKeyedSubscript:@"CredentialID"];
                      v43 = [v42 base64EncodedStringWithOptions:0];

                      v44 = WBS_LOG_CHANNEL_PREFIXPasswords();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543618;
                        v99 = v91;
                        v100 = 2114;
                        v101 = v43;
                        _os_log_impl(&dword_1B8447000, v44, OS_LOG_TYPE_DEFAULT, "Found passkey and legacy credential for %{public}@ with matching userHandle %{public}@. Removing legacy credential.", buf, 0x16u);
                      }

                      v45 = [[WBSPublicKeyCredentialIdentifier alloc] initWithCredentialID:v43 groupID:&stru_1F3064D08];
                      [(WBSSavedAccountStore *)v88 deletePasskeyWithIdentifierOnInternalQueue:v45];
                    }

                    ++v38;
                  }

                  while (v38 < [v36 count]);
                  v46 = v89;
                  if (v37)
                  {
                    [v36 removeObjectsAtIndexes:v37];
                  }

                  v47 = v82;
                  v48 = v90;
                }

                else
                {
                  v46 = v89;
                  v48 = v90;
                  v47 = v82;
                }

                v52 = [[WBSSavedAccount alloc] _initWithPasskeyRelyingPartyID:v28 user:v48 passkeyUserHandle:v29 passkeyCredentialID:v46];
                v53 = [v27 objectForKeyedSubscript:@"CreationDate"];
                [v52 setCreationDateForPasskey:v53];

                v54 = [v47 objectForKeyedSubscript:v91];

                if (!v54)
                {
                  v55 = [MEMORY[0x1E695DF90] dictionary];
                  [v47 setObject:v55 forKeyedSubscript:v91];
                }

                v56 = [v47 objectForKeyedSubscript:v91];
                v57 = [v56 objectForKeyedSubscript:v48];

                if (!v57)
                {
                  v58 = [MEMORY[0x1E695DF70] array];
                  v59 = [v47 objectForKeyedSubscript:v91];
                  [v59 setObject:v58 forKeyedSubscript:v90];
                }

                v60 = [v47 objectForKeyedSubscript:v91];
                v61 = [v60 objectForKeyedSubscript:v90];
                [v61 addObject:v52];

                v62 = [MEMORY[0x1E695AC58] safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:v28];
                v63 = [[WBSPair alloc] initWithFirst:v29 second:v62];
                v64 = [(NSMutableDictionary *)v84 objectForKeyedSubscript:v63];
                if (!v64)
                {
                  v64 = [MEMORY[0x1E695DF70] array];
                  [(NSMutableDictionary *)v84 setObject:v64 forKeyedSubscript:v63];
                }

                [v64 addObject:v52];
                v65 = [v27 objectForKeyedSubscript:@"LastModifiedDate"];
                [v52 setLastModifiedDateForPasskey:v65];

                v66 = [v52 lastModifiedDateForPasskey];
                [v52 setLastUsedDateForPasskey:v66];

                [v52 setSharedGroupID:v86];
                [v52 setIsRecentlyDeleted:v81];
                [v80 addObject:v52];

                self = v88;
                v22 = v79;
                v24 = v83;
                v35 = v85;
              }

              else
              {
                v51 = WBS_LOG_CHANNEL_PREFIXPasswords();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138543618;
                  v99 = v35;
                  v100 = 2114;
                  v101 = v86;
                  _os_log_fault_impl(&dword_1B8447000, v51, OS_LOG_TYPE_FAULT, "Given passkey with group %{public}@ does not match expected group %{public}@. Skipping.", buf, 0x16u);
                }
              }
            }

            else
            {
              v50 = WBS_LOG_CHANNEL_PREFIXPasswords();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
              {
                [WBSSavedAccountStore _loadSavedAccountsWithPasskeysFromPasskeyData:v93 forGroupID:v50 fromRecentlyDeleted:? withDictionaryForSavedAccountsWithPasskeys:?];
              }
            }
          }

          else
          {
            v49 = WBS_LOG_CHANNEL_PREFIXPasswords();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              *buf = 138739971;
              v99 = v28;
              _os_log_error_impl(&dword_1B8447000, v49, OS_LOG_TYPE_ERROR, "Failed to create high level domain from passkey data relying party ID: %{sensitive}@", buf, 0xCu);
            }
          }

          v25 = v87;
        }

        ++v26;
      }

      while (v26 != v24);
      v24 = [v22 countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v24);
  }

  v67 = [MEMORY[0x1E695DF70] array];
  if (v78)
  {
    v68 = [(WBSSavedAccountStore *)self _allSharedSidecarsForGroupID:v86 fromRecentlyDeleted:v81];
    v69 = v84;
    [(WBSSavedAccountStore *)self _matchSidecars:v68 toSavedAccountsWithPasskeysInDictionary:v84 unmatchedSidecars:v67];
    v70 = [(WBSSavedAccountStore *)self _allPersonalSidecarsForGroupID:v86 fromRecentlyDeleted:v81];
    [(WBSSavedAccountStore *)self _matchSidecars:v70 toSavedAccountsWithPasskeysInDictionary:v84 unmatchedSidecars:v67];
  }

  else
  {
    v68 = [(WBSSavedAccountStore *)self _allPersonalSidecarsFromPersonalKeychainFromRecentlyDeleted:v81];
    v69 = v84;
    [(WBSSavedAccountStore *)self _matchSidecars:v68 toSavedAccountsWithPasskeysInDictionary:v84 unmatchedSidecars:v67];
  }

  v71 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    v72 = v71;
    v73 = [v67 count];
    *buf = 134217984;
    v99 = v73;
    _os_log_impl(&dword_1B8447000, v72, OS_LOG_TYPE_INFO, "%ld unmatched sidecars.", buf, 0xCu);
  }

  v74 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
  {
    [WBSSavedAccountStore _loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:];
  }

  v75 = [v80 copy];

  v76 = *MEMORY[0x1E69E9840];

  return v75;
}

- (void)_matchSidecars:(id)a3 toSavedAccountsWithPasskeysInDictionary:(id)a4 unmatchedSidecars:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v25 = a5;
  obj = v7;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [WBSPair alloc];
        v15 = [v13 user];
        v16 = [v13 protectionSpace];
        v17 = [(WBSPair *)v14 initWithFirst:v15 second:v16];

        v18 = [v8 objectForKeyedSubscript:v17];
        v19 = v18;
        if (v18)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v28;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v28 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [*(*(&v27 + 1) + 8 * j) _addPasskeySidecar:v13];
              }

              v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v21);
          }
        }

        else
        {
          [v25 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_mergeSavedAccountsWithPasskeys:(id)a3 andSavedAccountsWithPasswords:(id)a4 usingDictionaryForSavedAccountsWithPasswords:(id)a5 dictionaryForSavedAccountsWithPasskeys:(id)a6
{
  v82 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v55 = a5;
  v54 = a6;
  v52 = [a4 mutableCopy];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v9;
  v56 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v56)
  {
    v53 = *v76;
    v10 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v76 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v75 + 1) + 8 * i);
        v13 = [v12 user];
        v14 = [v12 highLevelDomain];
        v15 = [v55 objectForKeyedSubscript:v14];
        v16 = [v15 objectForKeyedSubscript:v13];

        v17 = [v16 allValues];
        v18 = [v54 objectForKeyedSubscript:v14];
        v19 = [v18 objectForKeyedSubscript:v13];

        v64 = v19;
        v62 = [v19 count];
        if ([v17 count])
        {
          v59 = v14;
          v60 = v13;
          v61 = i;
          v63 = [*(v10 + 3952) array];
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v57 = v17;
          v65 = v17;
          v20 = [v65 countByEnumeratingWithState:&v71 objects:v80 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v72;
            while (2)
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v72 != v22)
                {
                  objc_enumerationMutation(v65);
                }

                v24 = *(*(&v71 + 1) + 8 * j);
                v25 = [v24 sites];
                v26 = [v12 passkeyRelyingPartyID];
                v27 = [v25 containsObject:v26];

                if (v27)
                {
                  [v63 addObject:v24];
                  goto LABEL_17;
                }
              }

              v21 = [v65 countByEnumeratingWithState:&v71 objects:v80 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
          v58 = v16;

          v28 = [*(v10 + 3952) array];
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v29 = v64;
          v30 = [v29 countByEnumeratingWithState:&v67 objects:v79 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v68;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v68 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v67 + 1) + 8 * k);
                v35 = [v12 passkeyRelyingPartyID];
                v36 = [v34 passkeyRelyingPartyID];
                v37 = [v35 isEqualToString:v36];

                if (v37)
                {
                  [v28 addObject:v34];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v67 objects:v79 count:16];
            }

            while (v31);
          }

          if ([v63 count] == 1 && (v38 = objc_msgSend(v28, "count"), v39 = v63, v38 == 1) || objc_msgSend(v65, "count") == 1 && (v39 = v65, v62 == 1))
          {
            v40 = [v39 firstObject];
            v66 = 0;
            v16 = v58;
            v14 = v59;
            if ([v40 _canMergeWithSavedAccount:v12 requiresDataCopying:&v66])
            {
              v41 = [v12 passkeyCredentialID];
              [v40 setPasskeyCredentialID:v41];

              v42 = [v12 passkeyUserHandle];
              [v40 setPasskeyUserHandle:v42];

              v43 = [v12 passkeyRelyingPartyID];
              [v40 setPasskeyRelyingPartyID:v43];

              v44 = [v12 creationDateForPasskey];
              [v40 setCreationDateForPasskey:v44];

              v45 = [v12 lastModifiedDate];
              [v40 setLastModifiedDateForPasskey:v45];

              v46 = [v12 lastUsedDateForPasskey];
              [v40 setLastUsedDateForPasskey:v46];

              [v40 _mergePasskeySidecarsFromSavedAccount:v12];
              v13 = v60;
              if (v66 == 1)
              {
                [(WBSSavedAccountStore *)self _writeSidecarDataForMergedSavedAccount:v40];
              }
            }

            else
            {
              [v52 addObject:v12];
              v13 = v60;
            }

            v10 = 0x1E695D000;
          }

          else
          {
            [v52 addObject:v12];
            v10 = 0x1E695D000;
            v14 = v59;
            v13 = v60;
            v16 = v58;
          }

          i = v61;
          v17 = v57;
        }

        else
        {
          [v52 addObject:v12];
        }
      }

      v56 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v56);
  }

  v47 = [v52 sortedArrayUsingSelector:sel_compare_];

  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)_mergeLoadedSavedAccounts:(id)a3 intoAllSavedAccounts:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  obj = a3;
  v36 = a4;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v38)
  {
    v37 = *v45;
    *&v6 = 138740227;
    v34 = v6;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * i);
        v9 = [v8 highLevelDomain];

        if (v9)
        {
          v39 = i;
          v10 = [v8 highLevelDomain];
          v49 = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];

          v12 = [v8 additionalSites];
          v13 = [v12 safari_mapObjectsUsingBlock:&__block_literal_global_251];
          v14 = [v11 arrayByAddingObjectsFromArray:v13];

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v41;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v41 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v40 + 1) + 8 * j);
                v21 = [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts objectForKeyedSubscript:v20];
                if (!v21)
                {
                  v21 = [MEMORY[0x1E695DF90] dictionary];
                  [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts setObject:v21 forKeyedSubscript:v20];
                }

                v22 = [v8 user];
                v23 = [v21 objectForKeyedSubscript:v22];

                if (!v23)
                {
                  v23 = [MEMORY[0x1E695DF90] dictionary];
                  v24 = [v8 user];
                  [v21 setObject:v23 forKeyedSubscript:v24];
                }

                v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "credentialTypes")}];
                v26 = [v23 objectForKeyedSubscript:v25];
                if (!v26)
                {
                  v26 = [MEMORY[0x1E695DF70] array];
                  [v23 setObject:v26 forKeyedSubscript:v25];
                }

                [v26 addObject:v8];
              }

              v17 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v17);
          }

          [v36 addObject:v8];
          i = v39;
        }

        else
        {
          v27 = WBS_LOG_CHANNEL_PREFIXPasswords();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = v27;
            v29 = [v8 user];
            v30 = [v8 protectionSpaces];
            *buf = v34;
            v51 = v29;
            v52 = 2117;
            v53 = v30;
            _os_log_error_impl(&dword_1B8447000, v28, OS_LOG_TYPE_ERROR, "Encountered saved account without high level domain with user: %{sensitive}@ protectionSpaces: %{sensitive}@", buf, 0x16u);
          }
        }
      }

      v38 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v38);
  }

  v31 = [obj sortedArrayUsingSelector:sel_compare_];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (void)_removeSavedAccount:(id)a3 fromCachedCollectionsForCredentialTypes:(int64_t)a4
{
  v23 = a3;
  v6 = [(NSArray *)self->_savedAccountsWithPasswords containsObject:?];
  if ((a4 & 1) != 0 && v6)
  {
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    v8 = [v23 highLevelDomain];
    v9 = [(NSMutableDictionary *)personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v8];

    v10 = [v23 user];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = [v23 password];
    [v11 removeObjectForKey:v12];

    v13 = [(NSArray *)self->_savedAccountsWithPasswords mutableCopy];
    [v13 removeObject:v23];
    v14 = [v13 copy];
    savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
    self->_savedAccountsWithPasswords = v14;
  }

  if ([(NSArray *)self->_savedAccounts containsObject:v23])
  {
    v16 = [v23 credentialTypes];
    if (v16 == ([v23 credentialTypes] & a4))
    {
      if ([v23 credentialTypes] == 4)
      {
        v17 = [(NSArray *)self->_savedAccountsWithSignInWithAppleRecords mutableCopy];
        [v17 removeObject:v23];
        v18 = [v17 copy];
        savedAccountsWithSignInWithAppleRecords = self->_savedAccountsWithSignInWithAppleRecords;
        self->_savedAccountsWithSignInWithAppleRecords = v18;
      }

      v20 = [(NSArray *)self->_savedAccounts mutableCopy];
      [v20 removeObject:v23];
      v21 = [v20 copy];
      savedAccounts = self->_savedAccounts;
      self->_savedAccounts = v21;
    }
  }
}

- (void)_addSavedAccountToRecentlyDeletedCachedCollections:(id)a3
{
  v6 = a3;
  [(NSMutableArray *)self->_allRecentlyDeletedSavedAccounts addObject:v6];
  [(NSMutableArray *)self->_allRecentlyDeletedSavedAccounts sortUsingSelector:sel_compare_];
  v4 = [v6 sharedGroupID];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:v4];
    [v5 addObject:v6];
    [v5 sortUsingSelector:sel_compare_];
  }

  else
  {
    [(NSMutableArray *)self->_recentlyDeletedSavedAccountsInPersonalKeychain addObject:v6];
    [(NSMutableArray *)self->_recentlyDeletedSavedAccountsInPersonalKeychain sortUsingSelector:sel_compare_];
  }
}

- (void)_removeSavedAccountFromRecentlyDeletedCachedCollections:(id)a3
{
  v6 = a3;
  [(NSMutableArray *)self->_allRecentlyDeletedSavedAccounts removeObject:v6];
  v4 = [v6 sharedGroupID];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:v4];
    [v5 removeObject:v6];
  }

  else
  {
    [(NSMutableArray *)self->_recentlyDeletedSavedAccountsInPersonalKeychain removeObject:v6];
  }
}

- (void)removeCredentialTypes:(int64_t)a3 forSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__WBSSavedAccountStore_removeCredentialTypes_forSavedAccount_completionHandler___block_invoke;
  v13[3] = &unk_1E7CF4948;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

uint64_t __80__WBSSavedAccountStore_removeCredentialTypes_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeCredentialTypes:*(a1 + 56) forSavedAccount:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_removeCredentialTypes:(int64_t)a3 forSavedAccount:(id)a4
{
  v6 = a4;
  if ([v6 isRecentlyDeleted])
  {
    [(WBSSavedAccountStore *)self _removeSavedAccountFromRecentlyDeletedCachedCollections:v6];
  }

  else
  {
    [(WBSSavedAccountStore *)self _removeSavedAccount:v6 fromCachedCollectionsForCredentialTypes:a3];
  }

  [v6 _deleteCredentialTypes:a3];
}

- (void)removeSite:(id)a3 fromSavedAccountWithPassword:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__WBSSavedAccountStore_removeSite_fromSavedAccountWithPassword_withCompletion___block_invoke;
  v15[3] = &unk_1E7CF4970;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

uint64_t __79__WBSSavedAccountStore_removeSite_fromSavedAccountWithPassword_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sites];
  if ([v2 count] == 1)
  {
    v3 = [*(a1 + 32) sites];
    v4 = [v3 firstObject];
    v5 = [v4 isEqualToString:*(a1 + 40)];

    if (v5)
    {
      [*(a1 + 48) _removeSavedAccount:*(a1 + 32) fromCachedCollectionsForCredentialTypes:1];
    }
  }

  else
  {
  }

  [*(a1 + 32) _deletePasswordCredentialsForSite:*(a1 + 40)];
  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (BOOL)canChangeSavedAccount:(id)a3 toUser:(id)a4 password:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 user];
  v12 = [v9 isEqualToString:v11];

  v13 = [v8 password];
  if (v12 && ([v10 isEqualToString:v13] & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__WBSSavedAccountStore_canChangeSavedAccount_toUser_password___block_invoke;
    block[3] = &unk_1E7CF4998;
    v22 = &v23;
    v18 = v8;
    v19 = self;
    v20 = v9;
    v21 = v10;
    dispatch_sync(queue, block);
    v14 = *(v24 + 24);

    _Block_object_dispose(&v23, 8);
  }

  return v14 & 1;
}

void __62__WBSSavedAccountStore_canChangeSavedAccount_toUser_password___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSavedInPersonalKeychain])
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) _canChangeSavedAccountInPersonalKeychain:*(a1 + 32) toUser:*(a1 + 48) password:*(a1 + 56)];
  }

  if ([*(a1 + 32) isSavedInSharedGroup])
  {
    v2 = *(*(a1 + 64) + 8);
    if (*(v2 + 24))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = [v4 sharedGroupID];
      *(*(*(a1 + 64) + 8) + 24) = [v3 _canChangeSavedAccount:v4 toUser:v5 password:v6 forGroupID:v7];
    }

    else
    {
      *(v2 + 24) = 0;
    }
  }
}

- (BOOL)_canChangeSavedAccount:(id)a3 toUser:(id)a4 password:(id)a5 forGroupID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v13];
    v15 = [v10 highLevelDomain];
    v16 = [v14 objectForKeyedSubscript:v15];
  }

  else
  {
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    v14 = [v10 highLevelDomain];
    v16 = [(NSMutableDictionary *)personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v14];
  }

  v18 = [v16 objectForKeyedSubscript:v11];
  v19 = [v10 protectionSpaces];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v20 = [v10 user];
  v21 = [v11 isEqualToString:v20];

  v22 = [v10 password];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __74__WBSSavedAccountStore__canChangeSavedAccount_toUser_password_forGroupID___block_invoke;
  v27[3] = &unk_1E7CF49C0;
  v32 = v21;
  v23 = v22;
  v28 = v23;
  v24 = v12;
  v29 = v24;
  v25 = v19;
  v30 = v25;
  v31 = &v33;
  [v18 enumerateKeysAndObjectsUsingBlock:v27];
  LOBYTE(v20) = *(v34 + 24);

  _Block_object_dispose(&v33, 8);
  return v20;
}

void __74__WBSSavedAccountStore__canChangeSavedAccount_toUser_password_forGroupID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if ((*(a1 + 64) != 1 || ([v7 isEqualToString:*(a1 + 32)] & 1) == 0) && (objc_msgSend(v7, "isEqualToString:", *(a1 + 40)) & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = *(a1 + 48);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([v8 _containsProtectionSpace:{*(*(&v15 + 1) + 8 * i), v15}])
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
            *a4 = 1;
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)changeSavedAccount:(id)a3 toUser:(id)a4 password:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 user];
  v12 = [v9 isEqualToString:v11];
  v13 = [v8 password];
  v14 = [v10 isEqualToString:v13];
  v15 = v14;
  if (!v12 || (v14 & 1) == 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__WBSSavedAccountStore_changeSavedAccount_toUser_password___block_invoke;
    block[3] = &unk_1E7CF49E8;
    v24 = v12;
    v18 = v8;
    v19 = self;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v13;
    v25 = v15;
    dispatch_sync(queue, block);
  }
}

uint64_t __59__WBSSavedAccountStore_changeSavedAccount_toUser_password___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passkeyCredentialID];
  if (v2)
  {
    v3 = *(a1 + 80);

    if ((v3 & 1) == 0)
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = [WBSPublicKeyCredentialIdentifier alloc];
      v7 = [*(a1 + 32) passkeyCredentialID];
      v8 = [*(a1 + 32) sharedGroupID];
      v9 = [(WBSPublicKeyCredentialIdentifier *)v6 initWithCredentialID:v7 groupID:v8];
      [v4 updateUserVisibleNameOnInternalQueue:v5 forPasskeyWithIdentifier:v9];
    }
  }

  [*(a1 + 32) _setUser:*(a1 + 48) password:*(a1 + 56)];
  if ([*(a1 + 32) isSavedInPersonalKeychain])
  {
    [*(a1 + 40) _updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:*(*(a1 + 40) + 8) withChangeFromOldUser:*(a1 + 64) oldPassword:*(a1 + 72) forSavedAccountWithPassword:*(a1 + 32)];
  }

  if ([*(a1 + 32) isSavedInSharedGroup])
  {
    v10 = *(*(a1 + 40) + 24);
    v11 = [*(a1 + 32) sharedGroupID];
    v12 = [v10 objectForKeyedSubscript:v11];

    [*(a1 + 40) _updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:v12 withChangeFromOldUser:*(a1 + 64) oldPassword:*(a1 + 72) forSavedAccountWithPassword:*(a1 + 32)];
  }

  if ((*(a1 + 81) & 1) == 0)
  {
    [*(a1 + 40) _saveSidecarObjectsOnInternalQueueForSavedAccountWithPassword:*(a1 + 32) withBlock:&__block_literal_global_255];
  }

  v13 = *(a1 + 40);

  return [v13 _performPostUpdateActionsOnInternalQueue];
}

uint64_t __59__WBSSavedAccountStore_changeSavedAccount_toUser_password___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return [a3 setHideWarningMarker:0];
  }

  return result;
}

- (BOOL)canChangeSavedAccountWithRequest:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 savedAccount];
  if (([v5 hasValidWebsite] & 1) == 0)
  {
    v6 = [v4 customTitle];
    v7 = [v6 safari_stringByTrimmingWhitespace];
    v8 = [v7 length];

    if (!v8)
    {
      v26 = 0;
      goto LABEL_39;
    }
  }

  v9 = [v5 credentialTypes];
  v10 = 0;
  if (v9 <= 9)
  {
    if (((1 << v9) & 0x30A) != 0)
    {
      v11 = [v4 password];
      if (![v11 length])
      {
        v10 = 0;
        goto LABEL_10;
      }

      v12 = [v4 user];
      v13 = [v4 password];
      v10 = [(WBSSavedAccountStore *)self canChangeSavedAccount:v5 toUser:v12 password:v13];
      goto LABEL_7;
    }

    if (v9 == 2)
    {
      v11 = [v4 password];
      v34 = [v11 length];
      v35 = [v4 user];
      v12 = v35;
      if (v34)
      {
        v13 = [v4 password];
        v41 = [v5 passkeyRelyingPartyID];
        v36 = [v4 notesEntry];
        v37 = [v4 customTitle];
        v38 = [v5 sharedGroupID];
        v10 = [(WBSSavedAccountStore *)self canSaveUser:v12 password:v13 forUserTypedSite:v41 notes:v36 customTitle:v37 groupID:v38 error:0];
      }

      else
      {
        if ([v35 length])
        {
          v10 = 1;
          goto LABEL_8;
        }

        v13 = [v5 user];
        v10 = [v13 length] == 0;
      }

LABEL_7:

LABEL_8:
LABEL_10:
    }
  }

  v14 = [v4 notesEntry];
  v15 = [v14 length];
  v16 = [v5 notesEntry];
  v17 = [v16 length];

  if (v17 <= 0x1000)
  {
    v18 = 4096;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v4 customTitle];
  v20 = [v19 length];
  v21 = [v5 customTitle];
  v22 = [v21 length];

  if (v22 <= 0x80)
  {
    v23 = 128;
  }

  else
  {
    v23 = v22;
  }

  v25 = v20 <= v23 && v15 <= v18;
  v26 = v25 && v10;
  if ([v4 hasAdditionalSitesChange])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = [v4 additionalSites];
    v28 = [v27 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v45;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v45 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v44 + 1) + 8 * i);
          v33 = objc_opt_class();
          v42 = 0;
          v43 = 0;
          LODWORD(v32) = [v33 getProtectionSpaceAndHighLevelDomainForUserTypedSite:v32 protectionSpace:&v43 highLevelDomain:&v42 mode:1];

          if (!v32)
          {
            v26 = 0;
            goto LABEL_34;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

LABEL_34:
  }

LABEL_39:

  v39 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)changeSavedAccountWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasChanges])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__WBSSavedAccountStore_changeSavedAccountWithRequest_completionHandler___block_invoke;
    block[3] = &unk_1E7CF1908;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v7[2](v7);
  }
}

uint64_t __72__WBSSavedAccountStore_changeSavedAccountWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _changeSavedAccountWithRequestOnInternalQueue:*(a1 + 40) performPostUpdateActions:1];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)changeSavedAccountsWithRequests:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 safari_containsObjectPassingTest:&__block_literal_global_262])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__WBSSavedAccountStore_changeSavedAccountsWithRequests_completionHandler___block_invoke_2;
    block[3] = &unk_1E7CF1908;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v7[2](v7);
  }
}

uint64_t __74__WBSSavedAccountStore_changeSavedAccountsWithRequests_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _changeSavedAccountWithRequestOnInternalQueue:*(*(&v9 + 1) + 8 * v6++) performPostUpdateActions:{0, v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _performPostUpdateActionsOnInternalQueue];
  result = (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_changeSavedAccountWithRequestOnInternalQueue:(id)a3 performPostUpdateActions:(BOOL)a4
{
  v4 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 savedAccount];
  if (![v6 hasChanges])
  {
    goto LABEL_46;
  }

  v50 = v4;
  v8 = [v6 user];
  v9 = [v6 password];
  v53 = [v7 user];
  v54 = [v7 password];
  v10 = [v7 credentialTypes];
  v11 = [v6 hasPasswordChange];
  v51 = [v6 shouldClearHistory];
  v52 = v8;
  if (([v6 hasUserChange] & 1) != 0 || v11)
  {
    v12 = [v7 passkeyCredentialID];
    if (v12)
    {
      v13 = v12;
      v14 = [v6 hasUserChange];

      if (v14)
      {
        v15 = [WBSPublicKeyCredentialIdentifier alloc];
        v16 = [v7 passkeyCredentialID];
        v17 = [v7 sharedGroupID];
        v18 = [(WBSPublicKeyCredentialIdentifier *)v15 initWithCredentialID:v16 groupID:v17];
        [(WBSSavedAccountStore *)self updateUserVisibleNameOnInternalQueue:v8 forPasskeyWithIdentifier:v18];
      }
    }

    [v7 _setUser:v8 password:v9];
    if (v11)
    {
      v19 = +[WBSGeneratedPasswordStore sharedStore];
      [v19 removeGeneratedPasswordMatchingSavedAccount:v7];
    }
  }

  v49 = v9;
  v20 = [v6 sites];

  if (v20)
  {
    v21 = MEMORY[0x1E695DFA8];
    v22 = [v7 sites];
    v23 = [v21 setWithArray:v22];

    v24 = MEMORY[0x1E695DFD8];
    v25 = [v6 sites];
    v26 = [v24 setWithArray:v25];
    [v23 minusSet:v26];

    v27 = [v23 allObjects];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v64;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v64 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [v7 _deletePasswordCredentialsForSite:*(*(&v63 + 1) + 8 * i)];
        }

        v29 = [v27 countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v29);
    }
  }

  if (v10)
  {
    if ([v7 isSavedInPersonalKeychain])
    {
      [(WBSSavedAccountStore *)self _updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts withChangeFromOldUser:v53 oldPassword:v54 forSavedAccountWithPassword:v7];
    }

    if ([v7 isSavedInSharedGroup])
    {
      groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      v33 = [v7 sharedGroupID];
      v34 = [(NSMutableDictionary *)groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v33];

      [(WBSSavedAccountStore *)self _updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:v34 withChangeFromOldUser:v53 oldPassword:v54 forSavedAccountWithPassword:v7];
    }
  }

  v35 = [v6 hasTOTPGeneratorChange];
  v36 = [v6 hasNotesEntryChange];
  v37 = [v6 hasCustomTitleChange];
  v38 = [v6 hasAdditionalSitesChange];
  v39 = v38;
  if ((v35 & 1) != 0 || (v36 & 1) != 0 || (v11 & 1) != 0 || (v37 & 1) != 0 || (v51 & 1) != 0 || v38)
  {
    v40 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v41 = [v40 valueForKey:@"safariUseLegacySidecarModificationPath"];

    if (!v41)
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __95__WBSSavedAccountStore__changeSavedAccountWithRequestOnInternalQueue_performPostUpdateActions___block_invoke;
      v55[3] = &unk_1E7CF4A30;
      v57 = v35;
      v56 = v6;
      v58 = v36;
      v59 = v37;
      v60 = v11;
      v61 = v39;
      v62 = v51;
      [(WBSSavedAccountStore *)self _saveSidecarObjectsOnInternalQueueForSavedAccount:v7 withBlock:v55];

      if (!v37)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    [(WBSSavedAccountStore *)self _performLegacySidecarModificationWithChangeRequest:v6 toSavedAccount:v7];
    if (v37)
    {
LABEL_31:
      v42 = [v6 customTitle];
      [v7 setCustomTitle:v42 performSidecarUpdate:0];
    }
  }

LABEL_32:
  if ([v6 isAddingPasswordToAccountWithPasskey])
  {
    v43 = [v7 passkeyRelyingPartyID];
    v44 = [v7 sharedGroupID];
    v45 = [(WBSSavedAccountStore *)self _saveAccountOnInternalQueueWithUser:v52 password:v49 forUserTypedSite:v43 groupID:v44];

    if (v45)
    {
      [(WBSSavedAccountStore *)self _mergeSavedAccountWithPassword:v45 toSavedAccountWithPasskey:v7];
    }

    else
    {
      v46 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _changeSavedAccountWithRequestOnInternalQueue:performPostUpdateActions:];
      }
    }
  }

  if (v11 && +[WBSFeatureAvailability isSavedAccountHistoryEnabled])
  {
    v47 = [[WBSSavedAccountPasswordHistoryItem alloc] initWithPassword:v49 oldPassword:v54];
    [(WBSSavedAccountStore *)self _addAccountHistoryItemOnInternalQueue:v47 toSavedAccount:v7 completionHandler:&__block_literal_global_272];
  }

  if (v50)
  {
    [(WBSSavedAccountStore *)self _performPostUpdateActionsOnInternalQueue];
  }

LABEL_46:
  v48 = *MEMORY[0x1E69E9840];
}

void __95__WBSSavedAccountStore__changeSavedAccountWithRequestOnInternalQueue_performPostUpdateActions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = a3;
  if (*(a1 + 40) == 1)
  {
    v5 = [*(a1 + 32) totpGenerator];
    [v21 setTotpGenerator:v5];
  }

  if (*(a1 + 41) == 1)
  {
    v6 = [*(a1 + 32) notesEntry];
    [v21 setNotesEntry:v6];
  }

  if (*(a1 + 42) == 1)
  {
    v7 = [*(a1 + 32) customTitle];
    [v21 setCustomTitle:v7];
  }

  if (!a2 && (*(a1 + 43) & 1) != 0)
  {
    [v21 setHideWarningMarker:0];
  }

  if (*(a1 + 44) == 1)
  {
    v8 = objc_alloc(MEMORY[0x1E695DF70]);
    v9 = [*(a1 + 32) additionalSites];
    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [*(a1 + 32) additionalSites];
    v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v21 additionalSites];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __95__WBSSavedAccountStore__changeSavedAccountWithRequestOnInternalQueue_performPostUpdateActions___block_invoke_2;
          v22[3] = &unk_1E7CF4220;
          v22[4] = v15;
          v17 = [v16 safari_firstObjectPassingTest:v22];

          if (v17)
          {
            [v10 addObject:v17];
          }

          else
          {
            v18 = [[WBSSavedAccountAdditionalSite alloc] initWithSite:v15];
            [v10 addObject:v18];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    [v21 setAdditionalSites:v10];
  }

  if (*(a1 + 45) == 1)
  {
    [v21 setHistoryItems:MEMORY[0x1E695E0F0]];
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __95__WBSSavedAccountStore__changeSavedAccountWithRequestOnInternalQueue_performPostUpdateActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 site];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_performPostUpdateActionsOnInternalQueue
{
  v3 = [(NSArray *)self->_savedAccounts sortedArrayUsingSelector:sel_compare_];
  savedAccounts = self->_savedAccounts;
  self->_savedAccounts = v3;

  v5 = [(NSArray *)self->_savedAccountsWithPasswords sortedArrayUsingSelector:sel_compare_];
  savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
  self->_savedAccountsWithPasswords = v5;

  v7 = +[WBSKeychainSyncingMonitor sharedMonitor];
  v8 = [v7 keychainSyncSettingValue];

  if (v8 == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__WBSSavedAccountStore__performPostUpdateActionsOnInternalQueue__block_invoke;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_performLegacySidecarModificationWithChangeRequest:(id)a3 toSavedAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasTOTPGeneratorChange])
  {
    v8 = [v7 totpGenerators];
    v9 = [v8 firstObject];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  if ([v6 hasNotesEntryChange])
  {
    v11 = [v7 notesEntry];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  if ([v6 hasCustomTitleChange])
  {
    v13 = [v7 customTitle];
    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __90__WBSSavedAccountStore__performLegacySidecarModificationWithChangeRequest_toSavedAccount___block_invoke;
  v33[3] = &unk_1E7CF4A58;
  v36 = v10;
  v37 = v12;
  v38 = v14;
  v15 = v7;
  v34 = v15;
  v16 = v6;
  v35 = v16;
  [(WBSSavedAccountStore *)self _saveSidecarObjectsOnInternalQueueForSavedAccount:v15 withBlock:v33];
  if ([v16 hasTOTPGeneratorChange])
  {
    v17 = [v16 totpGenerator];
    v18 = v17 != 0;
  }

  else
  {
    v18 = 0;
  }

  if ([v16 hasNotesEntryChange])
  {
    v19 = [v16 notesEntry];
    v20 = [v19 length] != 0;
  }

  else
  {
    v20 = 0;
  }

  if ([v16 hasCustomTitleChange])
  {
    v21 = [v16 customTitle];
    if ([v21 length])
    {
      v22 = [v16 customTitle];
      v23 = [v15 userVisibleDomain];
      v24 = WBSIsEqual(v22, v23) ^ 1;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __90__WBSSavedAccountStore__performLegacySidecarModificationWithChangeRequest_toSavedAccount___block_invoke_2;
  v27[3] = &unk_1E7CF4A58;
  v30 = v18;
  v31 = v20;
  v32 = v24;
  v28 = v16;
  v29 = v15;
  v25 = v15;
  v26 = v16;
  [(WBSSavedAccountStore *)self _saveSidecarObjectsOnInternalQueueForSavedAccount:v25 withBlock:v27];
}

void __90__WBSSavedAccountStore__performLegacySidecarModificationWithChangeRequest_toSavedAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (*(a1 + 48) == 1)
  {
    [v6 setTotpGenerator:0];
  }

  if (*(a1 + 49) == 1)
  {
    [v6 setNotesEntry:0];
  }

  if (*(a1 + 50) == 1)
  {
    [*(a1 + 32) setCustomTitle:0 performSidecarUpdate:0];
  }

  v5 = [*(a1 + 40) hasPasswordChange];
  if (!a2 && v5)
  {
    [v6 setHideWarningMarker:0];
  }
}

void __90__WBSSavedAccountStore__performLegacySidecarModificationWithChangeRequest_toSavedAccount___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) totpGenerator];
    [v8 setTotpGenerator:v4];
  }

  if (*(a1 + 49) == 1)
  {
    v5 = [*(a1 + 32) notesEntry];
    [v8 setNotesEntry:v5];
  }

  if (*(a1 + 50) == 1)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) customTitle];
    [v6 setCustomTitle:v7 performSidecarUpdate:0];
  }
}

- (void)_updateSavedAccountsAndSavedAccountsWithPasswordsDictionary:(id)a3 withChangeFromOldUser:(id)a4 oldPassword:(id)a5 forSavedAccountWithPassword:(id)a6
{
  v25 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [v11 highLevelDomain];
  v14 = [v12 objectForKeyedSubscript:v13];

  v15 = [v14 objectForKeyedSubscript:v25];
  v16 = [v11 user];
  v17 = [v11 password];
  v18 = [v11 user];
  v19 = [v25 isEqualToString:v18];

  if ((v19 & 1) == 0)
  {
    v20 = [v14 objectForKeyedSubscript:v25];

    [v20 removeObjectForKey:v10];
    if (![v20 count])
    {
      [v14 removeObjectForKey:v25];
    }

    v15 = [v14 objectForKeyedSubscript:v16];

    if (!v15)
    {
      v15 = [MEMORY[0x1E695DF90] dictionary];
      [v14 setObject:v15 forKeyedSubscript:v16];
    }
  }

  v21 = [v15 objectForKeyedSubscript:v17];
  if (v21)
  {
    [v11 _adoptSitesFromSavedAccount:v21];
    v22 = [(NSArray *)self->_savedAccountsWithPasswords mutableCopy];
    [v22 removeObject:v21];
    [v22 addObject:v11];
    objc_storeStrong(&self->_savedAccountsWithPasswords, v22);
    if ([(NSArray *)self->_savedAccounts containsObject:v21])
    {
      v23 = [(NSArray *)self->_savedAccounts mutableCopy];
      [(NSArray *)v23 removeObject:v21];
      [(NSArray *)v23 addObject:v11];
      savedAccounts = self->_savedAccounts;
      self->_savedAccounts = v23;
    }
  }

  else
  {
    [v15 setObject:v11 forKeyedSubscript:v17];
  }
}

+ (id)protectionSpaceForNewStandalonePassword
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = objc_alloc(MEMORY[0x1E695AC58]);
  v4 = [v2 UUIDString];
  v5 = [v3 initWithHost:v4 port:0 protocol:@"https" realm:0 authenticationMethod:*MEMORY[0x1E695AB50]];

  return v5;
}

+ (BOOL)getProtectionSpaceAndHighLevelDomainForUserTypedSite:(id)a3 protectionSpace:(id *)a4 highLevelDomain:(id *)a5 mode:(int64_t)a6
{
  v9 = a3;
  v10 = [v9 safari_bestURLForUserTypedString];
  if (v10)
  {
    v11 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:v10];
    v12 = [v11 protocol];
    if ([v12 isEqualToString:*MEMORY[0x1E695AB98]])
    {
      v13 = [v9 safari_stringByTrimmingWhitespace];
      v14 = [v13 safari_hasCaseInsensitivePrefix:@"http:"];

      if (v14)
      {
        goto LABEL_6;
      }

      v29 = objc_alloc(MEMORY[0x1E695AC58]);
      v12 = [v11 host];
      v28 = [v11 port];
      v15 = *MEMORY[0x1E695ABA0];
      v16 = [v11 realm];
      v17 = [v11 authenticationMethod];
      v18 = [v29 initWithHost:v12 port:v28 protocol:v15 realm:v16 authenticationMethod:v17];

      v11 = v18;
    }

LABEL_6:
    if (a4)
    {
      v19 = v11;
      *a4 = v11;
    }

    v20 = [v11 host];
    v21 = [v20 safari_isCaseInsensitiveEqualToString:@"localhost"];

    if (v21)
    {
      v22 = @"localhost";
      if (a5)
      {
        *a5 = @"localhost";
      }

      v23 = 1;
      goto LABEL_20;
    }

    if (a6 == 1)
    {
      v24 = [v11 host];
      v25 = [v24 safari_highLevelDomainForPasswordManager];
    }

    else
    {
      if (a6)
      {
        v22 = 0;
        if (!a5)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v24 = [v11 host];
      v25 = [v24 safari_highLevelDomainForUserTypedStringWhenAddingPasswordInPasswordManager];
    }

    v22 = v25;

    if (!a5)
    {
LABEL_19:
      v23 = v22 != 0;
LABEL_20:

      goto LABEL_21;
    }

LABEL_18:
    v26 = v22;
    *a5 = v22;
    goto LABEL_19;
  }

  v23 = 0;
LABEL_21:

  return v23;
}

- (BOOL)canSaveUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 notes:(id)a6 customTitle:(id)a7 groupID:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if ([v16 length])
  {
    if ([v17 length])
    {
      v26 = v15;
      v27 = 0;
      v28 = 0;
      v21 = [objc_opt_class() getProtectionSpaceAndHighLevelDomainForUserTypedSite:v17 protectionSpace:&v28 highLevelDomain:&v27];
      v22 = v28;
      v23 = v27;
      if (v21)
      {
        [v19 length];
        v15 = v26;
        v24 = [(WBSSavedAccountStore *)self canSaveUser:v26 password:v16 forProtectionSpace:v22 highLevelDomain:v23 notes:v18 customTitle:v19 groupID:v20 error:a9];
      }

      else
      {
        if (a9)
        {
          [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:1 privacyPreservingDescription:@"userTypedSite does not have a valid format."];
          *a9 = v24 = 0;
        }

        else
        {
          v24 = 0;
        }

        v15 = v26;
      }
    }

    else if ([v19 length])
    {
      v23 = 0;
      v22 = 0;
      v24 = 1;
    }

    else if (a9)
    {
      [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:4 privacyPreservingDescription:@"Must provide either a website or a custom title"];
      v23 = 0;
      v22 = 0;
      *a9 = v24 = 0;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v24 = 0;
    }
  }

  else if (a9)
  {
    [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:4 privacyPreservingDescription:@"Account details provided are incomplete."];
    *a9 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)saveUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 groupID:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __85__WBSSavedAccountStore_saveUser_password_forUserTypedSite_groupID_completionHandler___block_invoke;
  v23[3] = &unk_1E7CF4A80;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v16;
  dispatch_async(queue, v23);
}

void __85__WBSSavedAccountStore_saveUser_password_forUserTypedSite_groupID_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = [*(a1 + 32) _saveAccountOnInternalQueueWithUser:*(a1 + 40) password:*(a1 + 48) forUserTypedSite:*(a1 + 56) groupID:*(a1 + 64)];
  (*(v1 + 16))(v1, v2);
}

- (id)_saveAccountOnInternalQueueWithUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 groupID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 length];
  v15 = objc_opt_class();
  if (!v14)
  {
    v17 = [v15 protectionSpaceForNewStandalonePassword];
    v18 = [v17 host];
    goto LABEL_6;
  }

  v23 = 0;
  v24 = 0;
  v16 = [v15 getProtectionSpaceAndHighLevelDomainForUserTypedSite:v12 protectionSpace:&v24 highLevelDomain:&v23];
  v17 = v24;
  v18 = v23;
  v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];

  if (v19)
  {
    v20 = v12;

    v18 = v20;
LABEL_6:
    v21 = [(WBSSavedAccountStore *)self _saveAccountOnInternalQueueWithUser:v10 password:v11 protectionSpace:v17 highLevelDomain:v18 groupID:v13];
    goto LABEL_7;
  }

  if (v16)
  {
    goto LABEL_6;
  }

  v21 = 0;
LABEL_7:

  return v21;
}

- (void)saveUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 notesEntry:(id)a6 groupID:(id)a7 completionHandler:(id)a8
{
  v14 = a6;
  v15 = a8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__WBSSavedAccountStore_saveUser_password_forUserTypedSite_notesEntry_groupID_completionHandler___block_invoke;
  v18[3] = &unk_1E7CF4AA8;
  v18[4] = self;
  v19 = v14;
  v20 = v15;
  v16 = v15;
  v17 = v14;
  [(WBSSavedAccountStore *)self saveUser:a3 password:a4 forUserTypedSite:a5 groupID:a7 completionHandler:v18];
}

void __96__WBSSavedAccountStore_saveUser_password_forUserTypedSite_notesEntry_groupID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__WBSSavedAccountStore_saveUser_password_forUserTypedSite_notesEntry_groupID_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7CF1888;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 saveNotesEntry:v5 forSavedAccount:v7 completionHandler:v8];
}

- (void)saveUser:(id)a3 password:(id)a4 forUserTypedSite:(id)a5 customTitle:(id)a6 notesEntry:(id)a7 groupID:(id)a8 completionHandler:(id)a9
{
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __108__WBSSavedAccountStore_saveUser_password_forUserTypedSite_customTitle_notesEntry_groupID_completionHandler___block_invoke;
  v21[3] = &unk_1E7CF4AD0;
  v21[4] = self;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v18 = v17;
  v19 = v16;
  v20 = v15;
  [(WBSSavedAccountStore *)self saveUser:a3 password:a4 forUserTypedSite:a5 groupID:a8 completionHandler:v21];
}

void __108__WBSSavedAccountStore_saveUser_password_forUserTypedSite_customTitle_notesEntry_groupID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) saveCustomTitle:*(a1 + 40) forSavedAccount:v3 completionHandler:&__block_literal_global_296];
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__WBSSavedAccountStore_saveUser_password_forUserTypedSite_customTitle_notesEntry_groupID_completionHandler___block_invoke_3;
  v8[3] = &unk_1E7CF1888;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 saveNotesEntry:v5 forSavedAccount:v7 completionHandler:v8];
}

- (BOOL)canSaveUser:(id)a3 password:(id)a4 forProtectionSpace:(id)a5 highLevelDomain:(id)a6 notes:(id)a7 customTitle:(id)a8 groupID:(id)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (v16 && (v23 = [v17 length], v18) && v23 && objc_msgSend(v19, "length"))
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__16;
    v41 = __Block_byref_object_dispose__16;
    v42 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke;
    block[3] = &unk_1E7CF4B20;
    block[4] = self;
    v29 = v22;
    v35 = &v37;
    v36 = &v43;
    v30 = v19;
    v31 = v16;
    v32 = v18;
    v33 = v17;
    v34 = v20;
    dispatch_sync(queue, block);
    if (a10)
    {
      v24 = v38[5];
      if (v24)
      {
        *a10 = v24;
      }
    }

    v25 = *(v44 + 24);

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);
  }

  else if (a10)
  {
    [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:4 privacyPreservingDescription:@"Account details provided are incomplete."];
    *a10 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

void __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDomainsToUsersExists];
  v2 = [*(a1 + 40) length];
  v3 = *(a1 + 32);
  if (!v2)
  {
    v6 = [*(v3 + 8) objectForKeyedSubscript:*(a1 + 48)];
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v4 = [*(v3 + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 objectForKeyedSubscript:*(a1 + 48)];

    if (v6)
    {
LABEL_4:
      v7 = [v6 objectForKeyedSubscript:*(a1 + 56)];
      *(*(*(a1 + 96) + 8) + 24) = 1;
      if (v7)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke_300;
        v12[3] = &unk_1E7CF4AF8;
        v13 = *(a1 + 64);
        v17 = *(a1 + 88);
        v14 = *(a1 + 72);
        v15 = *(a1 + 48);
        v16 = *(a1 + 80);
        [v7 enumerateKeysAndObjectsUsingBlock:v12];
      }

      return;
    }

LABEL_8:
    *(*(*(a1 + 96) + 8) + 24) = 1;
    return;
  }

  v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke_cold_1();
  }

  v9 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:5 privacyPreservingDescription:@"Adding password to unknown group."];
  v10 = *(*(a1 + 88) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *(*(*(a1 + 96) + 8) + 24) = 0;
}

void __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke_300(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = a3;
  if ([v18 _containsProtectionSpace:*(a1 + 32)])
  {
    v6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:2 privacyPreservingDescription:@"Account details provided already exist."];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
  }

  v9 = [v18 password];
  v10 = [v9 isEqualToString:*(a1 + 40)];

  v11 = v18;
  if (v10)
  {
    v12 = [v18 notesEntry];
    v13 = [v18 highLevelDomain];
    if ([v13 isEqualToString:*(a1 + 48)] && objc_msgSend(*(a1 + 56), "length") && objc_msgSend(v12, "length"))
    {
      v14 = [v12 isEqualToString:*(a1 + 56)];

      if ((v14 & 1) == 0)
      {
        v15 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.SaveUserErrorDomain" code:3 privacyPreservingDescription:{@"An account with the same username/password of this highLevelDomain exists, with different notes."}];
        v16 = *(*(a1 + 64) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        *(*(*(a1 + 72) + 8) + 24) = 0;
        *a4 = 1;
      }
    }

    else
    {
    }

    v11 = v18;
  }
}

- (id)saveUser:(id)a3 password:(id)a4 forProtectionSpace:(id)a5 highLevelDomain:(id)a6 groupID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__16;
  v36 = __Block_byref_object_dispose__16;
  v37 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__WBSSavedAccountStore_saveUser_password_forProtectionSpace_highLevelDomain_groupID___block_invoke;
  block[3] = &unk_1E7CF4B48;
  v30 = v16;
  v31 = &v32;
  block[4] = self;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_sync(queue, block);
  v23 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v23;
}

void __85__WBSSavedAccountStore_saveUser_password_forProtectionSpace_highLevelDomain_groupID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _saveAccountOnInternalQueueWithUser:*(a1 + 40) password:*(a1 + 48) protectionSpace:*(a1 + 56) highLevelDomain:*(a1 + 64) groupID:*(a1 + 72)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_canMoveSavedAccountWithPasskey:(id)a3 toGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__WBSSavedAccountStore__canMoveSavedAccountWithPasskey_toGroup___block_invoke;
  v12[3] = &unk_1E7CF4B70;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v12);
  LOBYTE(queue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return queue;
}

void __64__WBSSavedAccountStore__canMoveSavedAccountWithPasskey_toGroup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureDomainsToUsersExists];
  v2 = MEMORY[0x1E695AC58];
  v3 = [*(a1 + 40) passkeyRelyingPartyID];
  v4 = [v2 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:v3];

  v5 = [WBSPair alloc];
  v6 = [*(a1 + 40) passkeyUserHandle];
  v7 = [(WBSPair *)v5 initWithFirst:v6 second:v4];

  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  if (!v8)
  {
    v12 = [*(v9 + 16) objectForKeyedSubscript:v7];
    v14 = [v12 firstObject];
    goto LABEL_5;
  }

  v10 = *(v9 + 32);
  v11 = [v8 groupID];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:v7];
    v14 = [v13 firstObject];

LABEL_5:
    *(*(*(a1 + 56) + 8) + 24) = v14 == 0;

    goto LABEL_9;
  }

  v15 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __64__WBSSavedAccountStore__canMoveSavedAccountWithPasskey_toGroup___block_invoke_cold_1();
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_9:
}

- (id)_saveAccountOnInternalQueueWithUser:(id)a3 password:(id)a4 protectionSpace:(id)a5 highLevelDomain:(id)a6 groupID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = 0;
  if (!v12 || !v14)
  {
    goto LABEL_32;
  }

  if (![v15 length])
  {
    goto LABEL_18;
  }

  if (!v13)
  {
    v13 = &stru_1F3064D08;
  }

  if ([v16 length])
  {
    v18 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v19 = [v18 currentUserParticipantID];

    if (v19)
    {
      groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      if (!groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts)
      {
        v21 = [MEMORY[0x1E695DF90] dictionary];
        v22 = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
        self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = v21;

        groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      }

      v23 = [(NSMutableDictionary *)groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v16];

      if (!v23)
      {
        v24 = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts setObject:v24 forKeyedSubscript:v16];
      }

      v25 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v16];
      v26 = [v25 objectForKeyedSubscript:v15];

      if (!v26)
      {
        v26 = [MEMORY[0x1E695DF90] dictionary];
        v27 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v16];
        [v27 setObject:v26 forKeyedSubscript:v15];
      }

      goto LABEL_20;
    }

    v29 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:];
    }

LABEL_18:
    v17 = 0;
    goto LABEL_32;
  }

  v28 = [(NSMutableDictionary *)self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v15];
  if (v28)
  {
    v26 = v28;
  }

  else
  {
    v26 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts setObject:v26 forKeyedSubscript:v15];
  }

LABEL_20:
  v30 = [v26 objectForKeyedSubscript:v12];
  if (!v30)
  {
    v30 = [MEMORY[0x1E695DF90] dictionary];
    [v26 setObject:v30 forKeyedSubscript:v12];
  }

  v45 = v26;
  v46 = v30;
  v31 = [v30 objectForKeyedSubscript:v13];
  v32 = v31;
  if (!v31)
  {
    v32 = [[WBSSavedAccount alloc] _initWithHighLevelDomain:v15 user:v12 password:v13];
    [v30 setObject:v32 forKeyedSubscript:v13];
    v33 = [(NSArray *)self->_savedAccountsWithPasswords mutableCopy];
    [(NSArray *)v33 safari_insertObject:v32 inSortedOrderUsingComparator:&__block_literal_global_309_0];
    savedAccountsWithPasswords = self->_savedAccountsWithPasswords;
    self->_savedAccountsWithPasswords = v33;
  }

  v35 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v36 = [MEMORY[0x1E695AC48] safari_credentialWithUser:v12 password:v13 persistence:3];
  [v35 safari_setCredential:v36 forHTMLFormProtectionSpace:v14 forGroupID:v16];

  if ([v16 length])
  {
    sharedAccountsGroups = self->_sharedAccountsGroups;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __109__WBSSavedAccountStore__saveAccountOnInternalQueueWithUser_password_protectionSpace_highLevelDomain_groupID___block_invoke_2;
    v47[3] = &unk_1E7CF2D20;
    v48 = v16;
    v38 = [(NSArray *)sharedAccountsGroups safari_firstObjectPassingTest:v47];
    if (!v38)
    {
      v44 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:];
      }
    }

    v39 = [v38 groupID];
    [v32 setSharedGroupID:v39];
  }

  else
  {
    [v32 setSharedGroupID:&stru_1F3064D08];
  }

  [v32 _createSidecarsForProtectionSpaceIfNecessary:v14];
  v40 = [v14 host];
  [v32 _addProtectionSpace:v14 forSite:v40 isDefaultCredentialForSite:v31 == 0];

  if (!v31)
  {
    if (!self->_shouldSkipHistoryEvents)
    {
      v42 = [[WBSSavedAccountPasswordHistoryItem alloc] initWithPassword:v13 type:@"pwcr"];
      [v32 addItemToAccountHistory:v42];
    }

    if ([v16 length])
    {
      if (([v32 markOriginalContributorParticipantID] & 1) == 0)
      {
        v43 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [WBSSavedAccountStore _saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:];
        }
      }
    }
  }

  v17 = v32;

LABEL_32:

  return v17;
}

uint64_t __109__WBSSavedAccountStore__saveAccountOnInternalQueueWithUser_password_protectionSpace_highLevelDomain_groupID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 groupID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_saveSidecarObjectsOnInternalQueueForSavedAccount:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WBSSavedAccountStore *)self _saveSidecarObjectsOnInternalQueueForSavedAccountWithPassword:v7 withBlock:v6];
  [(WBSSavedAccountStore *)self _saveSidecarOnInternalQueueForSavedAccountWithPasskey:v7 withBlock:v6];
}

- (void)_saveSidecarObjectsOnInternalQueueForSavedAccountWithPassword:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [v7 password];

  if (v6)
  {
    [v7 _updatePasswordSidecarsIfNecessaryWithBlock:v5];
  }
}

- (void)_saveSidecarOnInternalQueueForSavedAccountWithPasskey:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [v7 passkeyCredentialID];

  if (v6)
  {
    [v7 _updatePasskeySidecarsIfNecessaryWithBlock:v5];
  }
}

- (void)_writeSidecarDataForMergedSavedAccount:(id)a3
{
  v5 = a3;
  v3 = [v5 notesEntry];
  if ([v3 length])
  {
    [v5 setNotesEntry:v3];
  }

  v4 = [v5 customTitle];
  if ([v4 length])
  {
    [v5 setCustomTitle:v4 performSidecarUpdate:1];
  }
}

- (void)saveAdditionalSites:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSSavedAccountStore_saveAdditionalSites_forSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1908;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, block);
}

uint64_t __78__WBSSavedAccountStore_saveAdditionalSites_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAdditionalSites:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)addAdditionalSite:(id)a3 toSavedAccount:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 additionalSites];
  v11 = [v10 containsObject:v14];

  if (v11)
  {
    v9[2](v9);
  }

  else
  {
    v12 = [v8 additionalSites];
    v13 = [v12 arrayByAddingObject:v14];
    [(WBSSavedAccountStore *)self saveAdditionalSites:v13 forSavedAccount:v8 completionHandler:v9];
  }
}

- (void)addAccountHistoryItem:(id)a3 toSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__WBSSavedAccountStore_addAccountHistoryItem_toSavedAccount_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4BB8;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

uint64_t __79__WBSSavedAccountStore_addAccountHistoryItem_toSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) historyItems];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = *(*(a1 + 56) + 16);

    return v4();
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);

    return [v8 _addAccountHistoryItemOnInternalQueue:v6 toSavedAccount:v7 completionHandler:v9];
  }
}

- (void)_addAccountHistoryItemOnInternalQueue:(id)a3 toSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  if (!self->_shouldSkipHistoryEvents)
  {
    [a4 addItemToAccountHistory:a3];
  }

  v8[2]();
}

- (void)deleteAccountHistoryItem:(id)a3 fromSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__WBSSavedAccountStore_deleteAccountHistoryItem_fromSavedAccount_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4BB8;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

uint64_t __84__WBSSavedAccountStore_deleteAccountHistoryItem_fromSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) historyItems];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    return [v6 _deleteAccountHistoryItemOnInternalQueue:v4 fromSavedAccount:v5 completionHandler:v7];
  }

  else
  {
    v9 = *(*(a1 + 56) + 16);

    return v9();
  }
}

- (void)_deleteAccountHistoryItemOnInternalQueue:(id)a3 fromSavedAccount:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  [a4 deleteItemFromAccountHistory:a3];
  v7[2]();
}

- (void)clearSavedAccountHistory:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isCurrentUserOriginalContributor])
  {
    v8 = objc_alloc_init(WBSSavedAccountChangeRequest);
    [(WBSSavedAccountChangeRequest *)v8 setSavedAccount:v6];
    [(WBSSavedAccountChangeRequest *)v8 setShouldClearHistory:1];
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__WBSSavedAccountStore_clearSavedAccountHistory_withCompletionHandler___block_invoke;
    v15[3] = &unk_1E7CF16E0;
    v10 = v9;
    v16 = v10;
    [(WBSSavedAccountStore *)self changeSavedAccountWithRequest:v8 completionHandler:v15];
    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v11 = [WBSSavedAccountPasswordHistoryItem alloc];
    v12 = [v6 password];
    v13 = [(WBSSavedAccountPasswordHistoryItem *)v11 initWithPassword:v12 type:@"pw"];

    if (!self->_shouldSkipHistoryEvents)
    {
      [v6 addItemToAccountHistory:v13];
    }

    v7[2](v7);
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore clearSavedAccountHistory:withCompletionHandler:];
    }

    v7[2](v7);
  }
}

- (void)saveTOTPGenerator:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSSavedAccountStore_saveTOTPGenerator_forSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1908;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, block);
}

uint64_t __76__WBSSavedAccountStore_saveTOTPGenerator_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTOTPGenerator:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)removeTOTPGeneratorForSavedAccount:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WBSSavedAccountStore_removeTOTPGeneratorForSavedAccount___block_invoke;
  block[3] = &unk_1E7CF16E0;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
}

- (void)saveNotesEntry:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WBSSavedAccountStore_saveNotesEntry_forSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1A28;
  v17 = v9;
  v18 = v10;
  v16 = v8;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, block);
}

uint64_t __73__WBSSavedAccountStore_saveNotesEntry_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 40) setNotesEntry:*(a1 + 32)];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)saveCustomTitle:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__WBSSavedAccountStore_saveCustomTitle_forSavedAccount_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4BB8;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __74__WBSSavedAccountStore_saveCustomTitle_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userVisibleDomain];
  LODWORD(v2) = WBSIsEqual(v2, v3);

  if (v2)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    [*(a1 + 40) setCustomTitle:*(a1 + 32) performSidecarUpdate:0];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__WBSSavedAccountStore_saveCustomTitle_forSavedAccount_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7CF3FC0;
    v8 = *(a1 + 32);
    [v5 _saveSidecarObjectsOnInternalQueueForSavedAccount:v6 withBlock:v7];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)saveHideMarker:(id)a3 forSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__WBSSavedAccountStore_saveHideMarker_forSavedAccount_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4970;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

void __73__WBSSavedAccountStore_saveHideMarker_forSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__WBSSavedAccountStore_saveHideMarker_forSavedAccount_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7CF3FC0;
  v5 = *(a1 + 48);
  [v2 _saveSidecarObjectsOnInternalQueueForSavedAccount:v3 withBlock:v4];
  (*(*(a1 + 56) + 16))();
}

void __73__WBSSavedAccountStore_saveHideMarker_forSavedAccount_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = v5;
    [v5 setHideWarningMarker:*(a1 + 32)];
    v5 = v6;
  }
}

- (void)removeHideWarningMarkerForSavedAccount:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__WBSSavedAccountStore_removeHideWarningMarkerForSavedAccount___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __63__WBSSavedAccountStore_removeHideWarningMarkerForSavedAccount___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = v4;
    [v4 setHideWarningMarker:0];
    v4 = v5;
  }
}

- (void)resetHiddenSecurityRecommendationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__WBSSavedAccountStore_resetHiddenSecurityRecommendationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __80__WBSSavedAccountStore_resetHiddenSecurityRecommendationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 hideWarningMarker];

        if (v8)
        {
          [*(a1 + 32) _saveSidecarObjectsOnInternalQueueForSavedAccount:v7 withBlock:&__block_literal_global_315];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __80__WBSSavedAccountStore_resetHiddenSecurityRecommendationsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = v4;
    [v4 setHideWarningMarker:0];
    v4 = v5;
  }
}

- (void)_postSavedAccountStoreDidChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"WBSSavedAccountStoreDidChangeNotification" object:self];
}

- (unint64_t)numberOfSavedAccountsInPersonalKeychainForHighLevelDomain:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WBSSavedAccountStore_numberOfSavedAccountsInPersonalKeychainForHighLevelDomain___block_invoke;
  block[3] = &unk_1E7CF1730;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __82__WBSSavedAccountStore_numberOfSavedAccountsInPersonalKeychainForHighLevelDomain___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 count];
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__WBSSavedAccountStore_reset__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __45__WBSSavedAccountStore__resetOnInternalQueue__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 262) == 1)
  {
    v3 = result;
    [*(v2 + 232) invalidate];
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*(v3 + 32) target:sel__warmDataStoreAfterResetTimerFired_ selector:0 userInfo:0 repeats:3.0];
    v5 = *(v3 + 32);
    v6 = *(v5 + 232);
    *(v5 + 232) = v4;

    v7 = *(*(v3 + 32) + 232);

    return [v7 setTolerance:0.3];
  }

  return result;
}

uint64_t __68__WBSSavedAccountStore__cleanUpRedundantCredentialsWithoutUsernames__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 user];
  v5 = [v4 length];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = *(*(a1 + 32) + 64);
    v6 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v7);
          }

          if ([v3 isDuplicateWithoutUserNameOfSavedAccount:{*(*(&v12 + 1) + 8 * i), v12}])
          {
            v6 = 1;
            goto LABEL_13;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:(id)a3 inGroup:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count] && (objc_msgSend(v6, "participants"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v9 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v10 = [v9 currentUserParticipantID];

    if (v10)
    {
      v11 = MEMORY[0x1E695DFD8];
      v12 = [v6 participants];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __114__WBSSavedAccountStore__deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts_inGroup___block_invoke;
      v37[3] = &unk_1E7CF4BE0;
      v30 = v10;
      v38 = v10;
      v13 = [v12 safari_mapObjectsUsingBlock:v37];
      v14 = [v11 setWithArray:v13];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = v5;
      v15 = [v5 copy];
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            v22 = [v6 groupID];
            v23 = [v21 originalContributorParticipantID];
            if (v23)
            {
              if (([v14 containsObject:v23] & 1) == 0)
              {
                v24 = WBS_LOG_CHANNEL_PREFIXPasswords();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138478339;
                  v40 = v22;
                  v41 = 2113;
                  v42 = v23;
                  v43 = 2113;
                  v44 = v14;
                  _os_log_impl(&dword_1B8447000, v24, OS_LOG_TYPE_DEFAULT, "Deleting a shared saved account with a contributor ID that does not map to a participant in group ID: %{private}@, saved account original contributor ID: %{private}@, group participant IDs: %{private}@", buf, 0x20u);
                }

                v25 = [v6 groupID];
                [(WBSSavedAccountStore *)self _removeSavedAccount:v21 fromGroupID:v25];

                v18 = 1;
              }
            }

            else
            {
              v26 = WBS_LOG_CHANNEL_PREFIXPasswords();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138477827;
                v40 = v22;
                _os_log_error_impl(&dword_1B8447000, v26, OS_LOG_TYPE_ERROR, "Found a shared saved account without an original contributor participant ID in group ID: %{private}@", buf, 0xCu);
              }

              [(WBSSavedAccountStore *)self _reportAccountsWithUnknownContributorIDIfNeeded];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
        }

        while (v17);
      }

      else
      {
        v18 = 0;
      }

      v10 = v30;
      v5 = v31;
    }

    else
    {
      v27 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:inGroup:];
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

id __114__WBSSavedAccountStore__deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts_inGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCurrentUser])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = [v3 participantID];
  }

  v5 = v4;

  return v5;
}

- (void)_reportAccountsWithUnknownContributorIDIfNeeded
{
  if ((atomic_exchange(&self->_didReportAccountsWithUnknownContributorID._Value, 1u) & 1) == 0)
  {
    v3 = dispatch_get_global_queue(17, 0);
    dispatch_async(v3, &__block_literal_global_323);
  }
}

void __71__WBSSavedAccountStore__reportAccountsWithUnknownContributorIDIfNeeded__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __71__WBSSavedAccountStore__reportAccountsWithUnknownContributorIDIfNeeded__block_invoke_cold_1();
  }
}

void __126__WBSSavedAccountStore__cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __126__WBSSavedAccountStore__cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted___block_invoke_cold_1(v5);
      }
    }

    else
    {
      v6 = +[WBSOngoingSharingGroupProvider sharedProvider];
      v7 = [v6 cachedGroups];

      if ([v7 isEqual:*(a1 + 32)])
      {
        *(WeakRetained + 224) = 1;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = *(WeakRetained + 18);
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v20 = v7;
          LOBYTE(v11) = 0;
          v12 = *v23;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v22 + 1) + 8 * i);
              v15 = *(WeakRetained + 17);
              v16 = [v14 groupID];
              v17 = [v15 objectForKeyedSubscript:v16];

              if (v11)
              {
                v11 = 1;
              }

              else
              {
                v11 = [WeakRetained _deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:v17 inGroup:v14];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
          }

          while (v10);

          *(WeakRetained + 224) = 0;
          v7 = v20;
          if (v11)
          {
            [WeakRetained _resetOnInternalQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __126__WBSSavedAccountStore__cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted___block_invoke_324;
            block[3] = &unk_1E7CF16E0;
            block[4] = WeakRetained;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }
        }

        else
        {

          *(WeakRetained + 224) = 0;
        }
      }

      else
      {
        v18 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B8447000, v18, OS_LOG_TYPE_DEFAULT, "Aborting clean up for passwords with unmatchable contributor ID because groups have changed since the account store was loaded.", buf, 2u);
        }

        [WeakRetained _updateCachedSharedAccountGroupsOnInternalQueue];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_identifySharedSavedAccountsWithSameUsernameAndHighLevelDomainPairs
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(NSMutableDictionary *)self->_groupIdentifiersToSavedAccounts allValues];
  v5 = [v4 safari_flattenedArray];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        v12 = [WBSPair alloc];
        v13 = [v11 highLevelDomain];
        v14 = [v11 user];
        v15 = [(WBSPair *)v12 initWithFirst:v13 second:v14];

        v16 = [v3 objectForKeyedSubscript:v15];

        if (!v16)
        {
          v17 = [MEMORY[0x1E695DFA8] set];
          [v3 setObject:v17 forKeyedSubscript:v15];
        }

        v18 = [v3 objectForKeyedSubscript:v15];
        v19 = [v11 sharedGroupID];
        [v18 addObject:v19];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      v24 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * v24);
        v26 = [WBSPair alloc];
        v27 = [v25 highLevelDomain];
        v28 = [v25 user];
        v29 = [(WBSPair *)v26 initWithFirst:v27 second:v28];

        v30 = [v3 objectForKeyedSubscript:v29];
        v31 = [v30 count];

        if (v31 >= 2)
        {
          [v25 setHasSameUsernameAndHighLevelDomainAsOtherSharedSavedAccounts:1];
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v22);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_mergeSavedAccountWithPassword:(id)a3 toSavedAccountWithPasskey:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 password];
  [v6 setPassword:v7];

  v8 = [v5 protectionSpaces];
  v9 = [v8 firstObject];

  v10 = [v9 host];
  v11 = v9;
  [v6 _addProtectionSpace:v9 forSite:v10 isDefaultCredentialForSite:{objc_msgSend(v5, "isDefaultCredentialForFullyQualifiedHostname:", v10)}];
  if ([v6 hasPasskeySidecars])
  {
    v32 = v10;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v6;
    v13 = [v6 passkeyCredentialSidecarsDictionary];
    v14 = [v13 allValues];

    obj = v14;
    v15 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v37;
      do
      {
        v18 = 0;
        do
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v36 + 1) + 8 * v18);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v21 = off_1E7CEFB18;
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), v22 = objc_opt_isKindOfClass(), v21 = off_1E7CEFB10, (v22))
          {
            v23 = objc_alloc(*v21);
            v24 = [v5 user];
            v25 = [v19 dictionaryRepresentation];
            v26 = [v23 initWithUser:v24 protectionSpace:v11 dictionaryRepresentation:v25];

            v27 = v19;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v27 setLastOneTimeShareDateForPasskey:0];
            }

            v28 = [v26 protectionSpace];
            v29 = [v28 host];
            [v12 _addSidecar:v26 forSite:v29];
          }

          else
          {
            v30 = WBS_LOG_CHANNEL_PREFIXPasswords();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [(WBSSavedAccountStore *)&buf _mergeSavedAccountWithPassword:v35 toSavedAccountWithPasskey:v30];
            }
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v16);
    }

    v6 = v12;
    [v12 _updatePasswordSidecarsIfNecessaryWithBlock:0];
    v10 = v32;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_mergeSavedAccountWithPasskey:(id)a3 toSavedAccountWithPassword:(id)a4
{
  v25 = a3;
  v5 = a4;
  v6 = [v25 passkeyUserHandle];
  [v5 setPasskeyUserHandle:v6];

  v7 = [v25 passkeyCredentialID];
  [v5 setPasskeyCredentialID:v7];

  v8 = [v25 passkeyRelyingPartyID];
  [v5 setPasskeyRelyingPartyID:v8];

  v9 = [v25 creationDateForPasskey];
  [v5 setCreationDateForPasskey:v9];

  v10 = [v25 lastModifiedDateForPasskey];
  [v5 setLastModifiedDateForPasskey:v10];

  v11 = [v25 lastUsedDateForPasskey];
  [v5 setLastUsedDateForPasskey:v11];

  if ([v5 hasPasswordSidecars])
  {
    v12 = [v5 allPasswordSidecars];
    v13 = [v12 firstObject];

    v14 = [v13 copy];
    v15 = [v25 passkeyUserHandle];
    [v14 setUser:v15];

    [v5 _addPasskeySidecar:v14];
    v16 = MEMORY[0x1E695AC58];
    v17 = [v25 passkeyRelyingPartyID];
    v18 = [v16 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:v17];

    v19 = MEMORY[0x1E695AC48];
    v20 = [v25 passkeyUserHandle];
    v21 = [v19 safari_credentialWithUser:v20 password:&stru_1F3064D08 persistence:3];

    if ([v5 isSavedInPersonalKeychain])
    {
      v22 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      [v22 safari_setSidecar:v13 credential:v21 htmlFormProtectionSpace:v18 forGroupID:&stru_1F3064D08 fromRecentlyDeleted:{objc_msgSend(v5, "isRecentlyDeleted")}];
    }

    if ([v5 isSavedInSharedGroup])
    {
      v23 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      v24 = [v5 sharedGroupID];
      [v23 safari_setSidecar:v13 credential:v21 htmlFormProtectionSpace:v18 forGroupID:v24 fromRecentlyDeleted:{objc_msgSend(v5, "isRecentlyDeleted")}];
    }
  }
}

- (id)_saveUser:(id)a3 passkeyCredential:(id)a4 passkeyRelyingPartyID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    goto LABEL_9;
  }

  v11 = [v9 first];
  if (![v11 length])
  {
    goto LABEL_8;
  }

  v12 = [v9 second];
  if (![v12 length])
  {

LABEL_8:
    goto LABEL_9;
  }

  v13 = [v10 length];

  if (v13)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__16;
    v37 = __Block_byref_object_dispose__16;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__16;
    v31 = __Block_byref_object_dispose__16;
    v32 = 0;
    queue = self->_queue;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __74__WBSSavedAccountStore__saveUser_passkeyCredential_passkeyRelyingPartyID___block_invoke;
    v22 = &unk_1E7CF4C30;
    v25 = &v33;
    v23 = self;
    v24 = v9;
    v26 = &v27;
    dispatch_sync(queue, &v19);
    if ([v28[5] length])
    {
      v15 = [WBSSavedAccount alloc];
      v16 = [(WBSSavedAccount *)v15 _initWithPasskeyRelyingPartyID:v10 user:v8 passkeyUserHandle:v28[5] passkeyCredentialID:v34[5]];
      v17 = [MEMORY[0x1E695DF00] date];
      [v16 setCreationDateForPasskey:v17];
      [v16 setLastModifiedDateForPasskey:v17];
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);

    goto LABEL_10;
  }

LABEL_9:
  v16 = 0;
LABEL_10:

  return v16;
}

void __74__WBSSavedAccountStore__saveUser_passkeyCredential_passkeyRelyingPartyID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) importPasskeyCredentialOnInternalQueue:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(*(*(a1 + 48) + 8) + 40) length])
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) first];
    v7 = [v5 passkeyDataForPasskeyCredentialIDOnInternalQueue:v6];
    v11 = [v7 firstObject];

    v8 = [v11 objectForKeyedSubscript:@"UserHandle"];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)setSavedAccountAsDefault:(id)a3 forProtectionSpace:(id)a4 context:(id)a5 associatedDomainsManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__WBSSavedAccountStore_setSavedAccountAsDefault_forProtectionSpace_context_associatedDomainsManager___block_invoke;
  block[3] = &unk_1E7CF4C58;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_sync(queue, block);
}

- (void)setSavedAccountAsDefault:(id)a3 forProtectionSpace:(id)a4 context:(id)a5 associatedDomainsManager:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __119__WBSSavedAccountStore_setSavedAccountAsDefault_forProtectionSpace_context_associatedDomainsManager_completionHandler___block_invoke;
  v23[3] = &unk_1E7CF4C80;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(queue, v23);
}

uint64_t __119__WBSSavedAccountStore_setSavedAccountAsDefault_forProtectionSpace_context_associatedDomainsManager_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setSavedAccountAsDefaultOnInternalQueue:*(a1 + 40) forProtectionSpace:*(a1 + 48) context:*(a1 + 56) associatedDomainsManager:*(a1 + 64)];
  v2 = *(*(a1 + 72) + 16);

  return v2();
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:(id)a3 forProtectionSpace:(id)a4 context:(id)a5 associatedDomainsManager:(id)a6
{
  v78 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 safari_protectionSpaceBySimplifyingHost];
  if (v14 != v11)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v11 host];
      v18 = [v14 host];
      *buf = 138740227;
      v75 = v17;
      v76 = 2117;
      v77 = v18;
      _os_log_impl(&dword_1B8447000, v16, OS_LOG_TYPE_DEFAULT, "Simplified protection space from %{sensitive}@ to %{sensitive}@ before setting saved account as default", buf, 0x16u);
    }

    v19 = v14;

    v11 = v19;
  }

  if ([(WBSSavedAccountStore *)self _hasSavedAccountWithSameUserNameOfSavedAccount:v10 forProtectionSpace:v11])
  {
    v20 = [(WBSSavedAccountStore *)self _shouldUpdateLastUsedDateForSavedAccount:v10 forProtectionSpace:v11 inContext:v12];
    v21 = WBS_LOG_CHANNEL_PREFIXKeychain();
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [v10 user];
        v25 = [v11 host];
        *buf = 138740227;
        v75 = v24;
        v76 = 2117;
        v77 = v25;
        _os_log_impl(&dword_1B8447000, v23, OS_LOG_TYPE_DEFAULT, "Setting last used date on account for user '%{sensitive}@' and host '%{sensitive}@'", buf, 0x16u);
      }

      v26 = [MEMORY[0x1E695DF00] now];
      v27 = [v11 host];
      [v10 setLastUsedDate:v26 forSite:v27 inContext:v12];
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:];
    }

    goto LABEL_40;
  }

  v28 = [v10 protectionSpaces];
  v29 = [v28 count];

  if (!v29)
  {
    v73 = v13;
    goto LABEL_25;
  }

  v72 = v12;
  v30 = [v10 hasProtectionSpace:v11];
  v31 = [v10 hasProtectionSpaceWithHighLevelDomainMatchingProtectionSpace:v11];
  v32 = [v10 highLevelDomain];
  v33 = [v13 domainsWithAssociatedCredentialsForDomain:v32];
  v34 = [v33 allObjects];

  v35 = [v11 host];
  v36 = [v34 containsObject:v35];

  if ((v30 & 1) == 0 && v31)
  {
    v71 = v34;
    v73 = v13;
    v37 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = v37;
      v39 = [v10 user];
      v40 = [v11 host];
      *buf = 138740227;
      v75 = v39;
      v76 = 2117;
      v77 = v40;
      _os_log_impl(&dword_1B8447000, v38, OS_LOG_TYPE_INFO, "While setting the account for '%{sensitive}@' as default for host '%{sensitive}@', adding high-level domain to the account's sites list", buf, 0x16u);
    }

    v41 = [v10 user];
    v42 = [v10 password];
    v43 = [v11 host];
    v44 = [v43 safari_highLevelDomainFromHost];
    v45 = [v10 sharedGroupID];
    v46 = [(WBSSavedAccountStore *)self _saveAccountOnInternalQueueWithUser:v41 password:v42 protectionSpace:v11 highLevelDomain:v44 groupID:v45];

    if (v46 != v10)
    {
      v47 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:];
      }
    }

    v10 = v46;
    v34 = v71;
    v12 = v72;
    goto LABEL_24;
  }

  if ((v36 | v30))
  {
    v73 = v13;
    v12 = v72;
LABEL_24:

LABEL_25:
    v48 = [v11 authenticationMethod];
    v49 = [v48 isEqualToString:*MEMORY[0x1E695AB50]];

    if (v49)
    {
      if ([(WBSSavedAccountStore *)self _shouldUpdateLastUsedDateForSavedAccount:v10 forProtectionSpace:v11 inContext:v12])
      {
        v50 = MEMORY[0x1E695AC58];
        v51 = [v11 safari_URL];
        v52 = [v50 safari_HTMLFormProtectionSpaceForURL:v51];

        v53 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v53;
          v55 = [v10 user];
          v56 = [v52 host];
          *buf = 138740227;
          v75 = v55;
          v76 = 2117;
          v77 = v56;
          _os_log_impl(&dword_1B8447000, v54, OS_LOG_TYPE_DEFAULT, "Setting last used date on account for user '%{sensitive}@' and host '%{sensitive}@'", buf, 0x16u);
        }

        v57 = [MEMORY[0x1E695DF00] now];
        v58 = [v52 host];
        [v10 setLastUsedDate:v57 forSite:v58 inContext:v12];
      }

      v13 = v73;
      if ([v10 isSavedInPersonalKeychain] && objc_msgSend(v10, "hasProtectionSpaceWithHighLevelDomainMatchingProtectionSpace:", v11))
      {
        v59 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v59;
          v61 = [v10 user];
          v62 = [v11 host];
          *buf = 138740227;
          v75 = v61;
          v76 = 2117;
          v77 = v62;
          _os_log_impl(&dword_1B8447000, v60, OS_LOG_TYPE_DEFAULT, "Setting account for user '%{sensitive}@' as default for host '%{sensitive}@'", buf, 0x16u);
        }

        v63 = objc_alloc(MEMORY[0x1E695AC48]);
        v64 = [v10 user];
        v65 = [v10 password];
        v66 = [v63 initWithUser:v64 password:v65 persistence:3];

        v67 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
        [v67 safari_setDefaultCredential:v66 forHTMLFormProtectionSpace:v11];

        v13 = v73;
      }
    }

    else
    {
      v68 = WBS_LOG_CHANNEL_PREFIXKeychain();
      v13 = v73;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:];
      }
    }

    goto LABEL_40;
  }

  v69 = WBS_LOG_CHANNEL_PREFIXKeychain();
  v12 = v72;
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    [WBSSavedAccountStore _setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:];
  }

LABEL_40:
  v70 = *MEMORY[0x1E69E9840];
}

- (BOOL)_hasSavedAccountWithSameUserNameOfSavedAccount:(id)a3 forProtectionSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [WBSStringQuery alloc];
  v9 = [v6 user];
  v10 = [(WBSStringQuery *)v8 initWithString:v9 matchingType:1];

  v11 = [WBSSavedAccountMatchCriteria alloc];
  v12 = [v7 safari_URL];

  v13 = [(WBSSavedAccountMatchCriteria *)v11 initWithURL:v12 options:16 userNameQuery:v10 associatedDomainsManager:0 webFrameIdentifier:0];
  v14 = [(WBSSavedAccountStore *)self _getSavedAccountsMatchingCriteriaOnInternalQueue:v13];
  v15 = [v14 matchesForPasswordAutoFill];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__WBSSavedAccountStore__hasSavedAccountWithSameUserNameOfSavedAccount_forProtectionSpace___block_invoke;
  v19[3] = &unk_1E7CF4428;
  v20 = v6;
  v16 = v6;
  v17 = [v15 safari_firstObjectPassingTest:v19];
  LOBYTE(v12) = v17 != 0;

  return v12;
}

uint64_t __90__WBSSavedAccountStore__hasSavedAccountWithSameUserNameOfSavedAccount_forProtectionSpace___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 savedAccount];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (void)updateAllSavedAccountsWithPasswordsWithUser:(id)a3 protectionSpace:(id)a4 withNewPassword:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[WBSStringQuery alloc] initWithString:v7 matchingType:1];
  v11 = [WBSSavedAccountMatchCriteria alloc];
  v12 = [v8 safari_URL];
  v13 = [(WBSSavedAccountMatchCriteria *)v11 initWithURL:v12 options:16 userNameQuery:v10 associatedDomainsManager:0 webFrameIdentifier:0];

  v14 = +[WBSSavedAccountStore sharedStore];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__WBSSavedAccountStore_updateAllSavedAccountsWithPasswordsWithUser_protectionSpace_withNewPassword___block_invoke;
  v18[3] = &unk_1E7CF4CA8;
  v19 = v7;
  v20 = v9;
  v21 = v8;
  v15 = v8;
  v16 = v9;
  v17 = v7;
  [v14 getSavedAccountsMatchingCriteria:v13 withSynchronousCompletionHandler:v18];
}

void __100__WBSSavedAccountStore_updateAllSavedAccountsWithPasswordsWithUser_protectionSpace_withNewPassword___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [a2 exactMatches];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = +[WBSSavedAccountStore sharedStore];
        v8 = a1[4];
        v9 = a1[5];
        v10 = a1[6];
        v11 = [v10 host];
        v12 = [v6 savedAccount];
        v13 = [v12 sharedGroupID];
        v14 = [v7 saveUser:v8 password:v9 forProtectionSpace:v10 highLevelDomain:v11 groupID:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldUpdateLastUsedDateForSavedAccount:(id)a3 forProtectionSpace:(id)a4 inContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 host];
  v12 = [v8 lastUsedDateForSite:v11 inContext:v10];

  if (v12)
  {
    v13 = [v9 safari_URL];
    v14 = [WBSSavedAccountMatchCriteria criteriaForExactFQDNPasswordMatchesOfURL:v13];

    [v14 setOptions:{objc_msgSend(v14, "options") | 0x21}];
    [v14 setContext:v10];
    v15 = [(WBSSavedAccountStore *)self _getSavedAccountsMatchingCriteriaOnInternalQueue:v14];
    v16 = [v15 matchesForPasswordAutoFill];
    v17 = [v16 firstObject];
    v18 = [v17 savedAccount];

    v19 = [v18 isEqual:v8];
    v20 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(WBSSavedAccountStore *)v19 _shouldUpdateLastUsedDateForSavedAccount:v20 forProtectionSpace:v21 inContext:v22, v23, v24, v25, v26];
    }

    v27 = v19 ^ 1;
  }

  else
  {
    v28 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [WBSSavedAccountStore _shouldUpdateLastUsedDateForSavedAccount:forProtectionSpace:inContext:];
    }

    v27 = 1;
  }

  return v27;
}

- (id)savedAccountForUserTypedSite:(id)a3 userName:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v25 = a4;
  v8 = [(WBSSavedAccountStore *)self savedAccounts];
  v30 = 0;
  v31 = 0;
  v24 = v7;
  LODWORD(self) = [objc_opt_class() getProtectionSpaceAndHighLevelDomainForUserTypedSite:v7 protectionSpace:&v31 highLevelDomain:&v30];
  v9 = v31;
  v10 = v30;
  v11 = 0;
  if (self)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v11)
    {
      v21 = v10;
      v22 = v8;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v14 protectionSpaces];
          v16 = [v15 containsObject:v9];
          if (v16 & 1) != 0 || ([v14 passkeyRelyingPartyID], v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v24, "isEqualToString:", v4)))
          {
            v17 = [v14 user];
            v18 = [v17 isEqualToString:v25];

            if ((v16 & 1) == 0)
            {
            }

            if (v18)
            {
              v11 = v14;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v11);
LABEL_16:
      v10 = v21;
      v8 = v22;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_migratePasswordsWithInvalidAuthenticationTypes
{
  v4 = 0;
  atomic_compare_exchange_strong(&self->_isMigratingKeychainItemsWithInvalidAuthenticationTypes, &v4, 1u);
  if (!v4)
  {
    v7[7] = v2;
    v7[8] = v3;
    v6 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__WBSSavedAccountStore__migratePasswordsWithInvalidAuthenticationTypes__block_invoke;
    v7[3] = &unk_1E7CF16E0;
    v7[4] = self;
    [v6 safari_migrateKeychainItemsWithInvalidAuthenticationTypesWithCompletionHandler:v7];
  }
}

void __71__WBSSavedAccountStore__migratePasswordsWithInvalidAuthenticationTypes__block_invoke(uint64_t a1)
{
  v2 = 1;
  atomic_compare_exchange_strong((*(a1 + 32) + 240), &v2, 0);
  [*(a1 + 32) reset];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__WBSSavedAccountStore__migratePasswordsWithInvalidAuthenticationTypes__block_invoke_2;
  block[3] = &unk_1E7CF16E0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)_isMigratingKeychainItemsWithInvalidAuthenticationTypes
{
  v2 = 1;
  atomic_compare_exchange_strong(&self->_isMigratingKeychainItemsWithInvalidAuthenticationTypes, &v2, v2);
  return v2 == 1;
}

- (void)_moveSavedAccount:(id)a3 toGroupWithID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF4BB8;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(queue, v15);
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) length])
  {
    v3 = *(*(a1 + 40) + 144);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_2;
    v34[3] = &unk_1E7CF2D20;
    v35 = *(a1 + 32);
    v4 = [v3 safari_firstObjectPassingTest:v34];
    if (!v4)
    {
      v18 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_1();
      }

      (*(*(a1 + 56) + 16))();
      v5 = v35;
      goto LABEL_36;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 48) sharedGroupID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_5();
    }

LABEL_8:
    (*(*(a1 + 56) + 16))();
    goto LABEL_36;
  }

  if ([*v2 length])
  {
    v9 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v10 = [v9 currentUserParticipantID];

    if (!v10)
    {
      v27 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_2(v2);
      }

      goto LABEL_8;
    }
  }

  v11 = [*(a1 + 48) sharedGroupID];
  v12 = [*(a1 + 48) credentialTypes];
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  if (v12 == 4)
  {
    v15 = [v13 _moveSignInWithAppleSavedAccount:v14 toGroupID:*v2];
    if (v15 && [*(a1 + 40) _copySavedAccount:*(a1 + 48) toGroup:v5])
    {
      [*(a1 + 40) _removeSavedAccount:*(a1 + 48) fromGroupID:v11];
    }

    else
    {
      v26 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_3(v11, v26, v5);
      }
    }
  }

  else if ([v13 _copySavedAccount:v14 toGroup:v5])
  {
    if (![v11 length])
    {
      v19 = [v5 groupID];
      v20 = [v19 length];

      if (v20)
      {
        [*(a1 + 48) _removeSharableDataFromPersonalPasswordSidecars];
        [*(a1 + 48) _removeSharableDataFromPersonalPasskeySidecars];
        [*(a1 + 48) _updatePasswordSidecarsIfNecessaryWithBlock:0];
        [*(a1 + 48) _updatePasskeySidecarsIfNecessaryWithBlock:0];
      }
    }

    [*(a1 + 40) _removeSavedAccount:*(a1 + 48) fromGroupID:v11];
    if ([*(a1 + 32) length])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_335;
      aBlock[3] = &unk_1E7CF1708;
      v32 = *(a1 + 48);
      v33 = *(a1 + 32);
      v21 = _Block_copy(aBlock);
      v22 = [MEMORY[0x1E695E000] safari_browserDefaults];
      v23 = [v22 BOOLForKey:@"useOriginalContributorWorkaround"];

      if (v23)
      {
        v24 = dispatch_time(0, 1000000000);
        v25 = *(*(a1 + 40) + 120);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_339;
        v29[3] = &unk_1E7CF1630;
        v30 = v21;
        dispatch_after(v24, v25, v29);
      }

      else
      {
        v21[2](v21);
      }
    }

    v15 = 1;
  }

  else
  {
    v28 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_3(v11, v28, v5);
    }

    v15 = 0;
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v15, v16, v17);

LABEL_36:
}

uint64_t __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 groupID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_335(uint64_t a1)
{
  if (([*(a1 + 32) markOriginalContributorParticipantID] & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_335_cold_1(a1);
    }
  }
}

- (BOOL)_copySavedAccount:(id)a3 toGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 credentialTypes];
  v9 = [v7 groupID];
  if (v8)
  {
    v10 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v11 = v10;
    if (v7)
    {
      v12 = [v10 safari_copySavedAccountWithPassword:v6 toGroupWithID:v9];
    }

    else
    {
      v12 = [v10 safari_copySavedAccountWithPasswordToPersonalKeychain:v6];
    }

    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v17 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _copySavedAccount:toGroup:];
      }

      goto LABEL_21;
    }

    [(WBSSavedAccountStore *)self _addSavedAccount:v6 toCachedDictionaryForSavedAccountsWithPasswordsForGroupID:v9];
  }

  if ((v8 & 2) != 0)
  {
    v14 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
    v15 = v14;
    if (v7)
    {
      v16 = [v14 safari_copySavedAccountWithPasskey:v6 toGroupWithID:v9];
    }

    else
    {
      v16 = [v14 safari_copySavedAccountWithPasskeyToPersonalKeychain:v6];
    }

    v18 = v16;

    if (v18)
    {
      [(WBSSavedAccountStore *)self _addSavedAccount:v6 toCachedDictionaryForSavedAccountsWithPasskeysForGroupID:v9];
      goto LABEL_15;
    }

    v28 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _copySavedAccount:toGroup:];
    }

LABEL_21:
    v29 = 0;
    goto LABEL_25;
  }

LABEL_15:
  v19 = [v7 groupID];
  [v6 setSharedGroupID:v19];

  if (v7)
  {
    groupIdentifiersToSavedAccounts = self->_groupIdentifiersToSavedAccounts;
    v21 = [v7 groupID];
    v22 = [(NSMutableDictionary *)groupIdentifiersToSavedAccounts objectForKeyedSubscript:v21];
    v23 = [v22 mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [MEMORY[0x1E695DF70] array];
    }

    v30 = v25;

    [v30 addObject:v6];
    [v30 sortUsingSelector:sel_compare_];
    v31 = self->_groupIdentifiersToSavedAccounts;
    v32 = [v7 groupID];
    [(NSMutableDictionary *)v31 setObject:v30 forKeyedSubscript:v32];
  }

  else
  {
    v26 = [(NSArray *)self->_savedAccountsInPersonalKeychain mutableCopy];
    [(NSArray *)v26 addObject:v6];
    [(NSArray *)v26 sortUsingSelector:sel_compare_];
    savedAccountsInPersonalKeychain = self->_savedAccountsInPersonalKeychain;
    self->_savedAccountsInPersonalKeychain = v26;
  }

  v29 = 1;
LABEL_25:

  return v29;
}

- (void)_removeSavedAccount:(id)a3 fromGroupID:(id)a4
{
  v14 = a3;
  v6 = a4;
  if ([v14 credentialTypes])
  {
    [v14 _deletePasswordCredentialsForGroupID:v6];
    [(WBSSavedAccountStore *)self _removeSavedAccount:v14 fromCachedDictionaryForSavedAccountsWithPasswordsForGroupID:v6];
  }

  if (([v14 credentialTypes] & 2) != 0)
  {
    [v14 _deletePasskeyCredentialForGroupID:v6];
    [(WBSSavedAccountStore *)self _removeSavedAccount:v14 fromCachedDictionaryForSavedAccountsWithPasskeysForGroupID:v6];
  }

  if ([v6 length])
  {
    v7 = [(NSMutableDictionary *)self->_groupIdentifiersToSavedAccounts objectForKeyedSubscript:v6];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x1E695DF70] array];
    }

    v11 = v10;

    [v11 removeObject:v14];
    savedAccountsInPersonalKeychain = [v11 copy];
    [(NSMutableDictionary *)self->_groupIdentifiersToSavedAccounts setObject:savedAccountsInPersonalKeychain forKeyedSubscript:v6];
  }

  else
  {
    v11 = [(NSArray *)self->_savedAccountsInPersonalKeychain mutableCopy];
    [v11 removeObject:v14];
    v12 = [v11 copy];
    savedAccountsInPersonalKeychain = self->_savedAccountsInPersonalKeychain;
    self->_savedAccountsInPersonalKeychain = v12;
  }
}

- (BOOL)_canMoveSavedAccount:(id)a3 toGroupWithID:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isCurrentUserOriginalContributor] && objc_msgSend(v6, "canUserEditSavedAccount"))
  {
    if ([v7 length])
    {
      sharedAccountsGroups = self->_sharedAccountsGroups;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __59__WBSSavedAccountStore__canMoveSavedAccount_toGroupWithID___block_invoke;
      v35[3] = &unk_1E7CF2D20;
      v36 = v7;
      v9 = [(NSArray *)sharedAccountsGroups safari_firstObjectPassingTest:v35];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 participants];
        v12 = [v11 safari_firstObjectPassingTest:&__block_literal_global_342];

        if (!v12 || [v12 permissionLevel])
        {

LABEL_10:
          v14 = [v6 sharedGroupID];
          v15 = WBSIsEqual(v14, v7);

          if ((v15 & 1) == 0)
          {
            if ([v6 credentialTypes])
            {
              v30 = [v6 user];
              v29 = [v6 password];
              v28 = [v6 highLevelDomain];
              v27 = [v6 notesEntry];
              v16 = [v6 customTitle];
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              obj = [v6 protectionSpaces];
              v17 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v32;
                while (2)
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v32 != v19)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v21 = *(*(&v31 + 1) + 8 * i);
                    v22 = v10;
                    v23 = [v10 groupID];
                    LODWORD(v21) = [(WBSSavedAccountStore *)self canSaveUser:v30 password:v29 forProtectionSpace:v21 highLevelDomain:v28 notes:v27 customTitle:v16 groupID:v23 error:0];

                    if (!v21)
                    {

                      v13 = 0;
                      v10 = v22;
                      goto LABEL_28;
                    }

                    v10 = v22;
                  }

                  v18 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            if (([v6 credentialTypes] & 2) == 0 || -[WBSSavedAccountStore _canMoveSavedAccountWithPasskey:toGroup:](self, "_canMoveSavedAccountWithPasskey:toGroup:", v6, v10))
            {
              v13 = 1;
LABEL_28:

              goto LABEL_29;
            }
          }

LABEL_27:
          v13 = 0;
          goto LABEL_28;
        }
      }

      goto LABEL_27;
    }

    v10 = 0;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_29:

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __59__WBSSavedAccountStore__canMoveSavedAccount_toGroupWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 groupID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID:(id)a3 isForAlreadyExitedGroup:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    [(WBSSavedAccountStore *)self _recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:v6];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __130__WBSSavedAccountStore__moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID_isForAlreadyExitedGroup___block_invoke;
  v13[3] = &unk_1E7CF4CF0;
  v16 = &v18;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v17 = v4;
  v10 = v7;
  v15 = v10;
  [(WBSSavedAccountStore *)self performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:queue task:v13];
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11;
}

void __130__WBSSavedAccountStore__moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID_isForAlreadyExitedGroup___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:*(a1 + 40) isForAlreadyExitedGroup:*(a1 + 64)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (BOOL)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:(id)a3 isForAlreadyExitedGroup:(BOOL)a4
{
  v82 = a4;
  v102 = *MEMORY[0x1E69E9840];
  v80 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v101 = v80;
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Beginning sweep to move contributed credentials back to personal keychain from groupID: %{private}@", buf, 0xCu);
  }

  self->_shouldIgnoreKeychainUpdates = 1;
  if (v82)
  {
    v6 = [(WBSSavedAccountStore *)self _loadAndMergeSavedAccountsFromGroupID:v80 intoAllSavedAccounts:0];
    v7 = [v6 safari_filterObjectsUsingBlock:&__block_literal_global_344];
    v99 = v80;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
    [(WBSSavedAccountStore *)self _loadRecentlyDeletedSavedAccountsFromSharedGroupIDs:v8];

    v9 = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:v80];
    v10 = [v9 safari_filterObjectsUsingBlock:&__block_literal_global_344];
    v11 = v7;
    v12 = v10;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_groupIdentifiersToSavedAccounts objectForKeyedSubscript:v80];
    v9 = [v6 safari_filterObjectsUsingBlock:&__block_literal_global_344];
    v10 = [(NSMutableDictionary *)self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:v80];
    v7 = [v10 safari_filterObjectsUsingBlock:&__block_literal_global_344];
    v11 = v9;
    v12 = v7;
  }

  v13 = [v11 arrayByAddingObjectsFromArray:v12];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
  if (!v14)
  {
    LOBYTE(v87) = 1;
    goto LABEL_93;
  }

  v15 = v14;
  v87 = 1;
  v16 = *v93;
  v81 = *v93;
  do
  {
    v17 = 0;
    v83 = v15;
    do
    {
      if (*v93 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v92 + 1) + 8 * v17);
      v19 = [v18 credentialTypes];
      if ((v19 & 1) == 0)
      {
        v20 = 0;
        if ((v19 & 2) != 0)
        {
          goto LABEL_49;
        }

        goto LABEL_74;
      }

      v85 = v19;
      v88 = v17;
      v21 = [v18 user];
      v89 = 0;
      v22 = 0;
      for (i = 0; i != 10; ++i)
      {
        if (i)
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%ld)", v21, i];
        }

        else
        {
          v24 = v21;
        }

        v25 = v24;
        v26 = [v18 isRecentlyDeleted];
        v27 = 8;
        if (v26)
        {
          v27 = 40;
        }

        v28 = self;
        v29 = *(&self->super.isa + v27);
        v30 = [v18 highLevelDomain];
        v31 = [v29 objectForKeyedSubscript:v30];
        v32 = [v31 objectForKeyedSubscript:v25];
        v33 = [v32 allValues];

        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __145__WBSSavedAccountStore__moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue_isForAlreadyExitedGroup___block_invoke_2;
        v91[3] = &unk_1E7CF4788;
        v91[4] = v18;
        v34 = [v33 safari_firstObjectPassingTest:v91];
        if (v34)
        {
          v35 = WBS_LOG_CHANNEL_PREFIXPasswords();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B8447000, v35, OS_LOG_TYPE_DEFAULT, "Skipping moving saved account from group to personal keychain because there is already an identical copy in personal keychain.", buf, 2u);
          }

          v36 = 1;
          [v34 _writeFormerlySharedSavedAccountMarkerForCredentialTypes:1];
          v22 = 1;
        }

        else if ([v33 count])
        {
          v36 = 0;
        }

        else
        {
          if (i)
          {
            v37 = v25;
          }

          else
          {
            v37 = v89;
          }

          v38 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
          v39 = [v38 safari_copySavedAccountWithPasswordToPersonalKeychain:v18 withNewUsername:v37];

          v89 = v37;
          if (v39)
          {
            self = v28;
            [(WBSSavedAccountStore *)v28 _addSavedAccount:v18 toCachedDictionaryForSavedAccountsWithPasswordsForGroupID:&stru_1F3064D08];
            v36 = 1;
            v22 = 1;
            goto LABEL_35;
          }

          v40 = WBS_LOG_CHANNEL_PREFIXPasswords();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v101 = v80;
            _os_log_error_impl(&dword_1B8447000, v40, OS_LOG_TYPE_ERROR, "Failed to copy saved account with password back to personal keychain on exit from group %{private}@.", buf, 0xCu);
          }

          v36 = 0;
          v22 = 0;
          v87 = 0;
        }

        self = v28;
LABEL_35:

        if (v36)
        {
          if (v22)
          {
            goto LABEL_41;
          }

LABEL_46:

          v87 = 0;
          v15 = v83;
          v16 = v81;
          goto LABEL_85;
        }
      }

      if ((v22 & 1) == 0)
      {
        v45 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [(WBSSavedAccountStore *)v96 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:v45 isForAlreadyExitedGroup:?];
        }

        goto LABEL_46;
      }

LABEL_41:

      v15 = v83;
      v16 = v81;
      if ((v85 & 2) == 0)
      {
        goto LABEL_73;
      }

      if (v89)
      {
        v41 = [WBSPublicKeyCredentialIdentifier alloc];
        v42 = [v18 passkeyCredentialID];
        v43 = [v18 sharedGroupID];
        v44 = [(WBSPublicKeyCredentialIdentifier *)v41 initWithCredentialID:v42 groupID:v43];
        [(WBSSavedAccountStore *)self updateUserVisibleNameOnInternalQueue:v89 forPasskeyWithIdentifier:v44];

        v20 = v89;
      }

      else
      {
        v20 = 0;
      }

      v17 = v88;
LABEL_49:
      v88 = v17;
      v89 = v20;
      v46 = MEMORY[0x1E695AC58];
      v47 = [v18 passkeyRelyingPartyID];
      v48 = [v46 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:v47];

      v49 = [WBSPair alloc];
      v50 = [v18 passkeyUserHandle];
      v51 = [(WBSPair *)v49 initWithFirst:v50 second:v48];

      v52 = [v18 isRecentlyDeleted];
      v53 = 16;
      if (v52)
      {
        v53 = 48;
      }

      v54 = [*(&self->super.isa + v53) objectForKeyedSubscript:v51];
      v55 = [v54 firstObject];

      if (!v55)
      {
        goto LABEL_71;
      }

      if ([v55 isEqualForMovingSharedSavedAccountsBackToPersonalKeychainOnGroupExit:v18])
      {
        v56 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B8447000, v56, OS_LOG_TYPE_DEFAULT, "Skipping moving saved account from group to personal keychain because there is already an identical copy in personal keychain.", buf, 2u);
        }

        [v55 _writeFormerlySharedSavedAccountMarkerForCredentialTypes:2];
        [(WBSSavedAccountStore *)self _removeSavedAccount:v18 fromGroupID:v80];
        v57 = v87;
        goto LABEL_84;
      }

      if ([v18 isRecentlyDeleted])
      {
        [(WBSSavedAccountStore *)self _removeSavedAccount:v55 fromGroupID:&stru_1F3064D08];
        v58 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
        v59 = [v58 safari_copySavedAccountWithPasskeyToPersonalKeychain:v18];

        v57 = v59 & v87;
        if (v59 && !v82)
        {
          v57 = v87;
          [(WBSSavedAccountStore *)self _removeSavedAccount:v18 fromGroupID:v80];
        }

        goto LABEL_84;
      }

      v60 = [v18 lastModifiedDate];
      v61 = [v55 lastModifiedDate];
      v62 = [v60 earlierDate:v61];
      v86 = v60;
      LODWORD(v60) = [v62 isEqual:v60];

      v63 = WBS_LOG_CHANNEL_PREFIXPasswords();
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
      if (!v60)
      {
        if (v64)
        {
          *buf = 0;
          _os_log_impl(&dword_1B8447000, v63, OS_LOG_TYPE_DEFAULT, "Moving passkey already in personal keychain into Recently Deleted because there is a more recently modified conflicting passkey being moved to the personal keychain from a group.", buf, 2u);
        }

        v68 = [(WBSSavedAccountStore *)self _moveCredentialTypesToRecentlyDeletedOnInternalQueue:2 fromSavedAccount:v55];

LABEL_71:
        v69 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
        v70 = [v69 safari_copySavedAccountWithPasskeyToPersonalKeychain:v18];

        if ((v70 & 1) == 0)
        {
          v71 = WBS_LOG_CHANNEL_PREFIXPasswords();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v101 = v80;
            _os_log_error_impl(&dword_1B8447000, v71, OS_LOG_TYPE_ERROR, "Failed to copy saved account with passkey back to personal keychain on exit from group %{private}@.", buf, 0xCu);
          }

          v57 = 0;
          goto LABEL_84;
        }

        [(WBSSavedAccountStore *)self _addSavedAccount:v18 toCachedDictionaryForSavedAccountsWithPasskeysForGroupID:&stru_1F3064D08];

LABEL_73:
        v17 = v88;
        v20 = v89;
LABEL_74:
        if (!v82)
        {
          [(WBSSavedAccountStore *)self _removeSavedAccount:v18 fromGroupID:v80];
        }

        goto LABEL_86;
      }

      if (v64)
      {
        *buf = 0;
        _os_log_impl(&dword_1B8447000, v63, OS_LOG_TYPE_DEFAULT, "Moving shared passkey into Recently Deleted for personal keychain because there is already a more recently modified conflicting passkey in personal keychain.", buf, 2u);
      }

      v65 = [(WBSSavedAccountStore *)self _moveCredentialTypesToRecentlyDeletedOnInternalQueue:2 fromSavedAccount:v18];
      if (!v65)
      {
        v72 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        *buf = 138477827;
        v101 = v80;
        v73 = v72;
        v74 = "Failed to move saved account with passkey back to personal keychain on exit from group %{private}@.";
LABEL_89:
        _os_log_error_impl(&dword_1B8447000, v73, OS_LOG_TYPE_ERROR, v74, buf, 0xCu);
        goto LABEL_82;
      }

      v66 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      v67 = [v66 safari_copySavedAccountWithPasskeyToPersonalKeychain:v65];

      if (v67)
      {
        if (!v82)
        {
          [(WBSSavedAccountStore *)self _removeSavedAccount:v65 fromGroupID:v80];
        }

        v57 = v87;
        goto LABEL_83;
      }

      v75 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v101 = v80;
        v73 = v75;
        v74 = "Failed to copy saved account with passkey back to personal keychain on exit from group %{private}@.";
        goto LABEL_89;
      }

LABEL_82:
      v57 = 0;
LABEL_83:

LABEL_84:
      v87 = v57;
LABEL_85:
      v17 = v88;
      v20 = v89;
LABEL_86:

      ++v17;
    }

    while (v17 != v15);
    v76 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
    v15 = v76;
  }

  while (v76);
LABEL_93:

  self->_shouldIgnoreKeychainUpdates = 0;
  if ([obj count])
  {
    [(WBSSavedAccountStore *)self reset];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __145__WBSSavedAccountStore__moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue_isForAlreadyExitedGroup___block_invoke_348;
    block[3] = &unk_1E7CF16E0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (v82)
  {
    [(WBSSavedAccountStore *)self _recordGroupIdentifierForExitCleanup:v80 completionHandler:&__block_literal_global_351];
    [(WBSSavedAccountStore *)self _removeGroupID:v80 fromArrayForUserDefaultsKey:@"groupIdentifiersToMoveContributedCredentialsBackToPersonalKeychainFrom"];
  }

  v77 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v101 = v80;
    _os_log_impl(&dword_1B8447000, v77, OS_LOG_TYPE_DEFAULT, "Ended sweep to move contributed credentials back to personal keychain from groupID: %{private}@", buf, 0xCu);
  }

  v78 = *MEMORY[0x1E69E9840];
  return v87 & 1;
}

- (id)_groupIDArrayForUserDefaultsKey:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 safari_browserDefaults];
  v6 = [v5 valueForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addGroupID:(id)a3 toArrayForUserDefaultsKey:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138478083;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Logging groupID %{private}@ in user defaults list %@", &v13, 0x16u);
  }

  v8 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v9 = [v8 valueForKey:v6];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF70] array];
  }

  [v10 addObject:v5];
  v11 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v11 setValue:v10 forKey:v6];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_removeGroupID:(id)a3 fromArrayForUserDefaultsKey:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Removing groupID %@ from user defaults list %@", &v13, 0x16u);
  }

  v8 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v9 = [v8 valueForKey:v6];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    [v10 removeObject:v5];
    v11 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v11 setValue:v10 forKey:v6];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_addSavedAccount:(id)a3 toCachedDictionaryForSavedAccountsWithPasswordsForGroupID:(id)a4
{
  v34 = a3;
  v6 = a4;
  if ([v6 length])
  {
    groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
    if (!groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v9 = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
      self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = v8;

      groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts;
    }

    v10 = [(NSMutableDictionary *)groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v6];

    if (!v10)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts setObject:v11 forKeyedSubscript:v6];
    }

    v12 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v6];
  }

  else
  {
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    if (!personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts)
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v15 = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
      self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = v14;

      personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    }

    v12 = personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
  }

  v16 = v12;
  v17 = [v34 highLevelDomain];
  v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];

  if (!v18)
  {
    v19 = [MEMORY[0x1E695DF90] dictionary];
    v20 = [v34 highLevelDomain];
    [(NSMutableDictionary *)v16 setObject:v19 forKeyedSubscript:v20];
  }

  v21 = [v34 highLevelDomain];
  v22 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v21];
  v23 = [v34 user];
  v24 = [v22 objectForKeyedSubscript:v23];

  if (!v24)
  {
    v25 = [MEMORY[0x1E695DF90] dictionary];
    v26 = [v34 highLevelDomain];
    v27 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v26];
    v28 = [v34 user];
    [v27 setObject:v25 forKeyedSubscript:v28];
  }

  v29 = [v34 highLevelDomain];
  v30 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v29];
  v31 = [v34 user];
  v32 = [v30 objectForKeyedSubscript:v31];
  v33 = [v34 password];
  [v32 setObject:v34 forKeyedSubscript:v33];
}

- (void)_removeSavedAccount:(id)a3 fromCachedDictionaryForSavedAccountsWithPasswordsForGroupID:(id)a4
{
  v14 = a4;
  v6 = a3;
  if ([v14 length])
  {
    v7 = [(NSMutableDictionary *)self->_groupIdentifiersToHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v14];
    v8 = [v6 highLevelDomain];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v6 user];
    v11 = [v9 objectForKeyedSubscript:v10];
  }

  else
  {
    personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts = self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts;
    v7 = [v6 highLevelDomain];
    v8 = [(NSMutableDictionary *)personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts objectForKeyedSubscript:v7];
    v9 = [v6 user];
    v11 = [v8 objectForKeyedSubscript:v9];
  }

  v13 = [v6 password];

  [v11 removeObjectForKey:v13];
}

- (void)_addSavedAccount:(id)a3 toCachedDictionaryForSavedAccountsWithPasskeysForGroupID:(id)a4
{
  v24 = a3;
  v6 = a4;
  if ([v6 length])
  {
    groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    if (!groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v9 = self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
      self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = v8;

      groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    }

    v10 = [(NSMutableDictionary *)groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys objectForKeyedSubscript:v6];

    if (!v10)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys setObject:v11 forKeyedSubscript:v6];
    }

    v12 = [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys objectForKeyedSubscript:v6];
  }

  else
  {
    personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    if (!personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys)
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v15 = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
      self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = v14;

      personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
    }

    v12 = personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
  }

  v16 = v12;
  v17 = MEMORY[0x1E695AC58];
  v18 = [v24 passkeyRelyingPartyID];
  v19 = [v17 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:v18];

  v20 = [WBSPair alloc];
  v21 = [v24 passkeyUserHandle];
  v22 = [(WBSPair *)v20 initWithFirst:v21 second:v19];

  v23 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v22];
  if (!v23)
  {
    v23 = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)v16 setObject:v23 forKeyedSubscript:v22];
  }

  [v23 addObject:v24];
}

- (void)_removeSavedAccount:(id)a3 fromCachedDictionaryForSavedAccountsWithPasskeysForGroupID:(id)a4
{
  v15 = a4;
  v6 = MEMORY[0x1E695AC58];
  v7 = a3;
  v8 = [v7 passkeyRelyingPartyID];
  v9 = [v6 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:v8];

  v10 = [WBSPair alloc];
  v11 = [v7 passkeyUserHandle];

  v12 = [(WBSPair *)v10 initWithFirst:v11 second:v9];
  if ([v15 length])
  {
    v13 = [(NSMutableDictionary *)self->_groupIdentifiersToUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys objectForKeyedSubscript:v15];
  }

  else
  {
    v13 = self->_personalKeychainUserHandleProtectionSpacePairsToSavedAccountsWithPasskeys;
  }

  v14 = v13;
  [(NSMutableDictionary *)v13 removeObjectForKey:v12];
}

- (id)_allInternetPasswordEntriesFromGroupID:(id)a3
{
  v3 = MEMORY[0x1E695AC50];
  v4 = a3;
  v5 = [v3 sharedCredentialStorage];
  v6 = [v5 safari_allPasswordCredentialItemsFromGroupID:v4];

  return v6;
}

- (void)_addNewGroupToCachedSharingGroups:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__WBSSavedAccountStore__addNewGroupToCachedSharingGroups___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __58__WBSSavedAccountStore__addNewGroupToCachedSharingGroups___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = *(a1 + 32);
    v5 = *(v4 + 144);
    *(v4 + 144) = v3;

    v2 = *(*(a1 + 32) + 144);
  }

  v6 = [v2 arrayByAddingObject:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 144);
  *(v7 + 144) = v6;

  v9 = *(a1 + 32);
  if (!*(v9 + 24))
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    v9 = *(a1 + 32);
  }

  if (!*(v9 + 32))
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = *(a1 + 32);
    v15 = *(v14 + 32);
    *(v14 + 32) = v13;
  }

  v19 = [*(a1 + 40) groupID];
  v16 = [MEMORY[0x1E695DF70] array];
  [*(*(a1 + 32) + 136) setObject:v16 forKeyedSubscript:v19];

  v17 = [MEMORY[0x1E695DF90] dictionary];
  [*(*(a1 + 32) + 24) setObject:v17 forKeyedSubscript:v19];

  v18 = [MEMORY[0x1E695DF90] dictionary];
  [*(*(a1 + 32) + 32) setObject:v18 forKeyedSubscript:v19];
}

- (void)_clearExpiredRecentlyDeletedNotificationDates
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 dictionaryForKey:@"lastRecentlyDeletedNotificationDateDictionary"];
  v4 = [v3 mutableCopy];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [MEMORY[0x1E695DF00] now];
    v7 = [v5 dateByAddingUnit:16 value:-30 toDate:v6 options:0];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v4 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v4 objectForKeyedSubscript:v13];
          v15 = [v14 earlierDate:v7];
          v16 = [v15 isEqual:v14];

          if (v16)
          {
            [v4 removeObjectForKey:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (NSArray)sharedSavedAccountsInRecentlyDeletedToNotifyUserAbout
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [v3 BOOLForKey:@"DebugIgnoreLastNotificationDateAndFiveDayGracePeriodForRecentlyDeletedNotifications"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v5 removeObjectForKey:@"DebugIgnoreLastNotificationDateAndFiveDayGracePeriodForRecentlyDeletedNotifications"];
  }

  v37 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = self;
  v6 = [(WBSSavedAccountStore *)self allRecentlyDeletedSavedAccounts];
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    v36 = v4;
    v35 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        if (([v11 isSavedInPersonalKeychain] & 1) == 0)
        {
          if ([v11 isCurrentUserOriginalContributor])
          {
            v12 = [v11 participantIDThatMovedSavedAccountToRecentlyDeleted];
            v13 = [v11 originalContributorParticipantID];
            v14 = [v12 isEqual:v13];

            if ((v14 & 1) == 0)
            {
              v15 = [MEMORY[0x1E695DF00] now];
              v16 = [MEMORY[0x1E695DEE8] currentCalendar];
              v17 = [v11 lastModifiedDate];
              v18 = [v16 dateByAddingUnit:16 value:30 toDate:v17 options:0];

              if (([v15 safari_numberOfDaysUntilDate:v18] & 0x8000000000000000) == 0)
              {
                if (v4)
                {
                  [v37 addObject:v11];
                }

                else
                {
                  v19 = [MEMORY[0x1E695DEE8] currentCalendar];
                  v20 = [v19 dateByAddingUnit:16 value:-5 toDate:v15 options:0];

                  v21 = [v11 lastModifiedDate];
                  v22 = [v21 earlierDate:v20];
                  v23 = [v22 isEqual:v20];

                  if ((v23 & 1) == 0)
                  {
                    v24 = [MEMORY[0x1E695DEE8] currentCalendar];
                    v25 = [v24 dateByAddingUnit:16 value:-7 toDate:v15 options:0];

                    v26 = [v11 lastRecentlyDeletedNotificationDate];
                    if (!v26)
                    {
                      goto LABEL_17;
                    }

                    v27 = v26;
                    v34 = [v11 lastRecentlyDeletedNotificationDate];
                    v28 = [v34 earlierDate:v25];
                    v33 = [v28 isEqual:v25];

                    if ((v33 & 1) == 0)
                    {
LABEL_17:
                      [v37 addObject:v11];
                      [v11 setLastRecentlyDeletedNotificationDate:v15];
                    }
                  }

                  v4 = v36;
                  v6 = v35;
                }
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v8);
  }

  [(WBSSavedAccountStore *)v32 _clearExpiredRecentlyDeletedNotificationDates];
  v29 = [v37 copy];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (void)_recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(WBSSavedAccountStore *)self _addGroupID:v4 toArrayForUserDefaultsKey:@"groupIdentifiersToMoveContributedCredentialsBackToPersonalKeychainFrom"];
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:];
    }
  }
}

- (void)_recordGroupIdentifierForExitCleanup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:];
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else if (!v7)
    {
      goto LABEL_6;
    }

    v9 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.CredentialSharingGroupsErrorDomain" code:1 privacyPreservingDescription:@"Failed find group with given group ID."];
    v7[2](v7, v9);

    goto LABEL_6;
  }

  [(WBSSavedAccountStore *)self _addGroupID:v6 toArrayForUserDefaultsKey:@"groupIdentifiersToDeleteAllItemsFrom"];
  [(WBSSavedAccountStore *)self _performCleanupForExitedGroupsIfNecessary:v7];
LABEL_6:
}

- (BOOL)_hasPersonWithParticipantID:(id)a3 contributedSavedAccountsToGroupWithID:(id)a4
{
  v6 = a3;
  v7 = [(WBSSavedAccountStore *)self savedAccountsForGroupID:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__WBSSavedAccountStore__hasPersonWithParticipantID_contributedSavedAccountsToGroupWithID___block_invoke;
  v10[3] = &unk_1E7CF4788;
  v11 = v6;
  v8 = v6;
  LOBYTE(v6) = [v7 safari_containsObjectPassingTest:v10];

  return v6;
}

uint64_t __90__WBSSavedAccountStore__hasPersonWithParticipantID_contributedSavedAccountsToGroupWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 originalContributorParticipantID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __86__WBSSavedAccountStore__moveContributedSavedAccountsBackToPersonalKeychainIfNecessary__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 224) = 1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 138412290;
    v11 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (([*(a1 + 32) _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:v8 isForAlreadyExitedGroup:{1, v11}] & 1) == 0)
        {
          v9 = WBS_LOG_CHANNEL_PREFIXPasswords();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = v11;
            v18 = v8;
            _os_log_error_impl(&dword_1B8447000, v9, OS_LOG_TYPE_ERROR, "Failed to move contributed credentials back to personal keychain from group ID: %@", buf, 0xCu);
          }
        }

        [*(a1 + 32) _removeGroupID:v8 fromArrayForUserDefaultsKey:@"groupIdentifiersToMoveContributedCredentialsBackToPersonalKeychainFrom"];
      }

      v5 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  *(*(a1 + 32) + 224) = 0;
  [*(a1 + 32) reset];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__WBSSavedAccountStore__moveContributedSavedAccountsBackToPersonalKeychainIfNecessary__block_invoke_355;
  block[3] = &unk_1E7CF16E0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_performCleanupForExitedGroupsIfNecessary:(id)a3
{
  v4 = a3;
  if ([(WBSSavedAccountStore *)self _canPerformMaintenanceTasks])
  {
    v5 = [(WBSSavedAccountStore *)self _groupIDArrayForUserDefaultsKey:@"groupIdentifiersToDeleteAllItemsFrom"];
    if ([v5 count])
    {
      v6 = +[WBSOngoingSharingGroupProvider sharedProvider];
      queue = self->_queue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke;
      v8[3] = &unk_1E7CF4D38;
      v10 = v4;
      v8[4] = self;
      v9 = v5;
      [v6 performTaskOnQueueAfterFetchingGroups:queue task:v8];
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v7 = [v6 cachedGroups];
    v8 = [v7 safari_mapObjectsUsingBlock:&__block_literal_global_359];
    v9 = [v5 setWithArray:v8];

    *(*(a1 + 32) + 224) = 1;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v27 = a1;
      v26 = 0;
      v13 = 0;
      v14 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = WBS_LOG_CHANNEL_PREFIXPasswords();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            v34 = v16;
            _os_log_impl(&dword_1B8447000, v17, OS_LOG_TYPE_DEFAULT, "Deleting all items for exited groupID: %{private}@", buf, 0xCu);
          }

          if ([v9 containsObject:v16])
          {
            v18 = WBS_LOG_CHANNEL_PREFIXPasswords();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v34 = v16;
              _os_log_error_impl(&dword_1B8447000, v18, OS_LOG_TYPE_ERROR, "Skipping clean up for group that user still has access to: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v19 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
            v20 = [v19 safari_deleteAllItemsForGroupID:v16];

            if (v20)
            {
              [*(v27 + 32) _removeGroupID:v16 fromArrayForUserDefaultsKey:@"groupIdentifiersToDeleteAllItemsFrom"];
              v21 = WBS_LOG_CHANNEL_PREFIXPasswords();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138477827;
                v34 = v16;
                _os_log_impl(&dword_1B8447000, v21, OS_LOG_TYPE_DEFAULT, "Successfully deleted all items for exited groupID: %{private}@", buf, 0xCu);
              }

              v13 = 1;
            }

            else
            {
              v22 = WBS_LOG_CHANNEL_PREFIXPasswords();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v34 = v16;
                _os_log_error_impl(&dword_1B8447000, v22, OS_LOG_TYPE_ERROR, "Failed to delete all items from group with identifier: %{public}@", buf, 0xCu);
              }

              v26 = 1;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v12);

      a1 = v27;
      *(*(v27 + 32) + 224) = 0;
      if (v13)
      {
        [*(v27 + 32) reset];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke_360;
        block[3] = &unk_1E7CF16E0;
        block[4] = *(v27 + 32);
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      v3 = 0;
      if (v26)
      {
        v23 = *(v27 + 48);
        v24 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"com.apple.AuthenticationServices.CredentialSharingGroupsErrorDomain" code:3 privacyPreservingDescription:0];
        (*(v23 + 16))(v23, v24);

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {

      *(*(a1 + 32) + 224) = 0;
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_30;
  }

  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke_cold_1(v4);
  }

  (*(*(a1 + 48) + 16))();
LABEL_31:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:(id)a3 task:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WBSSavedAccountStore_performTaskEnsuringAllAccountSourcesAreLoadedOnQueue_task___block_invoke;
  block[3] = &unk_1E7CF1908;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __82__WBSSavedAccountStore_performTaskEnsuringAllAccountSourcesAreLoadedOnQueue_task___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 144) && *(v2 + 72))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    dispatch_async(v3, v4);
  }

  else
  {
    v5 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 120);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__WBSSavedAccountStore_performTaskEnsuringAllAccountSourcesAreLoadedOnQueue_task___block_invoke_2;
    v9[3] = &unk_1E7CF4D60;
    v9[4] = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    [v5 performTaskEnsuringGroupsAreLoadedOnQueue:v8 task:v9];
  }
}

void __82__WBSSavedAccountStore_performTaskEnsuringAllAccountSourcesAreLoadedOnQueue_task___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateCachedSharedAccountGroupsOnInternalQueue];
  v2 = [*(a1 + 32) _savedAccounts];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  dispatch_async(v3, v4);
}

- (void)setDontSaveMarkerForSavedAccountsWithProtectionSpace:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WBSSavedAccountStore_setDontSaveMarkerForSavedAccountsWithProtectionSpace___block_invoke;
  block[3] = &unk_1E7CF16E0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

void __77__WBSSavedAccountStore_setDontSaveMarkerForSavedAccountsWithProtectionSpace___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695AC48]);
  v3 = +[WBSDontSaveMarker dontSaveMarker];
  v5 = [v2 initWithUser:v3 password:@" " persistence:3];

  v4 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  [v4 safari_setDefaultCredential:v5 forHTMLFormProtectionSpace:*(a1 + 32)];
}

- (void)removeDontSaveMarkerForProtectionSpace:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WBSSavedAccountStore_removeDontSaveMarkerForProtectionSpace___block_invoke;
  block[3] = &unk_1E7CF16E0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

void __63__WBSSavedAccountStore_removeDontSaveMarkerForProtectionSpace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v3 = [v2 credentialsForProtectionSpace:*(a1 + 32)];
  v4 = [v3 copy];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__WBSSavedAccountStore_removeDontSaveMarkerForProtectionSpace___block_invoke_2;
  v6[3] = &unk_1E7CF4D88;
  v7 = v2;
  v8 = *(a1 + 32);
  v5 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __63__WBSSavedAccountStore_removeDontSaveMarkerForProtectionSpace___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 user];
  v6 = +[WBSDontSaveMarker dontSaveMarker];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12 = *MEMORY[0x1E695AB88];
    v13[0] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v9 removeCredential:v4 forProtectionSpace:v8 options:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateLastOneTimeShareDateforSavedAccountIfNeeded:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSSavedAccountStore__updateLastOneTimeShareDateforSavedAccountIfNeeded___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __75__WBSSavedAccountStore__updateLastOneTimeShareDateforSavedAccountIfNeeded___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v4 = MEMORY[0x1E695DF00];
    v5 = a3;
    v6 = [v4 date];
    [v5 setLastOneTimeShareDateForPasskey:v6];
  }
}

- (void)_moveCredentialTypesToRecentlyDeleted:(int64_t)a3 fromSavedAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__WBSSavedAccountStore__moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler___block_invoke;
  v13[3] = &unk_1E7CF4948;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __97__WBSSavedAccountStore__moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _moveCredentialTypesToRecentlyDeletedOnInternalQueue:*(a1 + 56) fromSavedAccount:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (id)_moveCredentialTypesToRecentlyDeletedOnInternalQueue:(int64_t)a3 fromSavedAccount:(id)a4
{
  v6 = a4;
  [(WBSSavedAccountStore *)self _ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount:v6];
  v7 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v8 = [v7 safari_moveCredentialTypesToRecentlyDeleted:a3 onSavedAccount:v6];

  if (v8)
  {
    if ([v6 credentialTypes] == a3)
    {
      v9 = 3;
    }

    else
    {
      v9 = a3;
    }

    [v6 setLastRecentlyDeletedNotificationDate:0];
    v10 = v6;
    v11 = v10;
    if (v9 > 3)
    {
      if ((v9 - 8) >= 2)
      {
        v13 = 0;
        if (v9 == 4)
        {
LABEL_25:

          goto LABEL_26;
        }

LABEL_20:
        if ([v11 isSavedInSharedGroup])
        {
          v17 = [MEMORY[0x1E695E000] safari_browserDefaults];
          v18 = [v17 BOOLForKey:@"useOriginalContributorWorkaround"];

          if (v18)
          {
            v19 = dispatch_time(0, 1000000000);
            queue = self->_queue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __94__WBSSavedAccountStore__moveCredentialTypesToRecentlyDeletedOnInternalQueue_fromSavedAccount___block_invoke;
            block[3] = &unk_1E7CF16E0;
            v23 = v11;
            dispatch_after(v19, queue, block);
          }

          else
          {
            [v11 markParticipantIDThatMovedSavedAccountToRecentlyDeleted];
          }
        }

        v11 = v11;
        v13 = v11;
        goto LABEL_25;
      }
    }

    else if (v9 != 1)
    {
      if (v9 != 2)
      {
        if (v9 == 3)
        {
          [v10 setIsRecentlyDeleted:1];
          [(WBSSavedAccountStore *)self _removeSavedAccount:v11 fromCachedCollectionsForCredentialTypes:3];
          [(WBSSavedAccountStore *)self _addSavedAccountToRecentlyDeletedCachedCollections:v11];
        }

        goto LABEL_20;
      }

      v14 = [v10 _movePasskeyCredentialToNewSavedAccount];
      [v14 setIsRecentlyDeleted:1];
      goto LABEL_19;
    }

    v14 = [v10 _movePasswordCredentialToNewSavedAccount];
    [v14 setIsRecentlyDeleted:1];
    v15 = [v14 totpGenerators];
    v16 = [v15 count];

    if (v16)
    {
      [v11 setTOTPGenerator:0];
    }

LABEL_19:
    [(WBSSavedAccountStore *)self _addSavedAccountToRecentlyDeletedCachedCollections:v14];

    v11 = v14;
    goto LABEL_20;
  }

  v12 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [WBSSavedAccountStore _moveCredentialTypesToRecentlyDeletedOnInternalQueue:fromSavedAccount:];
  }

  v13 = 0;
LABEL_26:

  return v13;
}

- (void)_ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount:(id)a3
{
  v4 = a3;
  [(WBSSavedAccountStore *)self _ensureRecentlyDeletedSavedAccountsAreLoadedOnInternalQueue];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__WBSSavedAccountStore__ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount___block_invoke;
  aBlock[3] = &unk_1E7CF4DB0;
  v5 = v4;
  v19 = v5;
  v20 = self;
  v6 = _Block_copy(aBlock);
  if ([v5 isSavedInSharedGroup])
  {
    sharedGroupIdentifiersToRecentlyDeletedSavedAccounts = self->_sharedGroupIdentifiersToRecentlyDeletedSavedAccounts;
    v8 = [v5 sharedGroupID];
    v9 = [(NSMutableDictionary *)sharedGroupIdentifiersToRecentlyDeletedSavedAccounts objectForKeyedSubscript:v8];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__WBSSavedAccountStore__ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount___block_invoke_368;
    v16[3] = &unk_1E7CF4DD8;
    v10 = &v17;
    v17 = v6;
    v11 = v6;
    [v9 enumerateObjectsUsingBlock:v16];
  }

  else
  {
    recentlyDeletedSavedAccountsInPersonalKeychain = self->_recentlyDeletedSavedAccountsInPersonalKeychain;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__WBSSavedAccountStore__ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount___block_invoke_2;
    v14[3] = &unk_1E7CF4DD8;
    v10 = &v15;
    v15 = v6;
    v13 = v6;
    [(NSMutableArray *)recentlyDeletedSavedAccountsInPersonalKeychain enumerateObjectsUsingBlock:v14];
  }
}

void __86__WBSSavedAccountStore__ensureNoRecentlyDeletedSavedAccountsConflictWithSavedAccount___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) shouldOverrideRecentlyDeletedSavedAccountWhenDeleted:v3])
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v3 user];
      v7 = [v3 highLevelDomain];
      v9 = 141558787;
      v10 = 1752392040;
      v11 = 2117;
      v12 = v6;
      v13 = 2160;
      v14 = 1752392040;
      v15 = 2117;
      v16 = v7;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Deleting account for %{sensitive, mask.hash}@ on %{sensitive, mask.hash}@ from recently deleted to make room for another account", &v9, 0x2Au);
    }

    [*(a1 + 40) _removeCredentialTypes:3 forSavedAccount:v3];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_recoverRecentlyDeletedSavedAccount:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1A28;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isRecentlyDeleted] & 1) == 0)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke_cold_1();
    }

    return (*(*(a1 + 48) + 16))();
  }

  v2 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v3 = [v2 safari_recoverSavedAccountFromRecentlyDeleted:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke_cold_2();
    }

    return (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 32) setIsRecentlyDeleted:0];
  [*(a1 + 40) _removeSavedAccountFromRecentlyDeletedCachedCollections:*(a1 + 32)];
  [*(a1 + 32) setLastRecentlyDeletedNotificationDate:0];
  if ([*(a1 + 32) isSavedInSharedGroup])
  {
    [*(a1 + 32) clearParticipantIDThatMovedSavedAccountToRecentlyDeleted];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)savedAccountsMatchingCriteria:(id)a3 withCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v17 = v6;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Enqueueing asynchronous query for saved accounts matching criteria %{sensitive}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSSavedAccountStore_savedAccountsMatchingCriteria_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CF2AA8;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __76__WBSSavedAccountStore_savedAccountsMatchingCriteria_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _getSavedAccountsMatchingCriteriaOnInternalQueue:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)_getSavedAccountsMatchingCriteriaOnInternalQueue:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Beginning query for saved accounts matching criteria", buf, 2u);
  }

  v6 = [v4 context];

  if (!v6)
  {
    v7 = +[WBSSavedAccountContext defaultContext];
    [v4 setContext:v7];
  }

  if (!self->_personalKeychainHighLevelDomainToUsernameToPasswordToSavedAccounts)
  {
    v8 = [(WBSSavedAccountStore *)self _loadSavedAccounts];
  }

  v9 = [(WBSSavedAccountStore *)self _fetchCurrentAutoFillPasskeysWithCriteria:v4];
  v10 = [v9 first];
  v11 = [v9 second];
  v12 = [v4 passkeyCredentialIdentifier];
  v13 = [(WBSSavedAccountStore *)self _relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue:v12 credentialIdentifiersToAutoFillPasskeys:v10];

  v14 = [(WBSSavedAccountStore *)self _getSavedAccountTreeMatchesWithCriteriaOnInternalQueue:v4 relyingPartyURL:v13];
  v15 = [v10 allValues];
  v16 = [v15 firstObject];
  v17 = [v16 requestUsedNonEmptyAllowList];

  v18 = [v10 allKeys];
  [(WBSSavedAccountStore *)self _pruneSavedAccountTreeMatchesOnInternalQueue:v14 basedOnUsernameAndPasswordCriteria:v4 autoFillPasskeyIdentifiers:v18 keepAllPasskeyMatches:v17];

  v19 = [(WBSSavedAccountStore *)self _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v14 withCriteria:v4 mergingAutoFillPasskeys:v10 nearbyDeviceOptions:v11];
  v20 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_1B8447000, v20, OS_LOG_TYPE_DEFAULT, "Finished query for saved accounts matching criteria", v22, 2u);
  }

  return v19;
}

- (void)getSavedAccountsMatchingCriteria:(id)a3 withSynchronousCompletionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138739971;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Enqueueing synchronous query for saved accounts matching criteria %{sensitive}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__WBSSavedAccountStore_getSavedAccountsMatchingCriteria_withSynchronousCompletionHandler___block_invoke;
  block[3] = &unk_1E7CF1730;
  p_buf = &buf;
  block[4] = self;
  v10 = v6;
  v13 = v10;
  dispatch_sync(queue, block);
  v7[2](v7, *(*(&buf + 1) + 40));

  _Block_object_dispose(&buf, 8);
  v11 = *MEMORY[0x1E69E9840];
}

void __90__WBSSavedAccountStore_getSavedAccountsMatchingCriteria_withSynchronousCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getSavedAccountsMatchingCriteriaOnInternalQueue:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue:(id)a3 credentialIdentifiersToAutoFillPasskeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__16;
    v33 = __Block_byref_object_dispose__16;
    v34 = 0;
    passkeysDataInPersonalKeychain = self->_passkeysDataInPersonalKeychain;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke;
    v27[3] = &unk_1E7CF4E00;
    v10 = v6;
    v28 = v10;
    v11 = [(NSArray *)passkeysDataInPersonalKeychain safari_firstObjectPassingTest:v27];
    v12 = v30[5];
    v30[5] = v11;

    v13 = v30[5];
    if (v13)
    {
      goto LABEL_4;
    }

    v14 = [(NSDictionary *)self->_groupIdentifiersToPasskeysData allValues];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke_2;
    v24[3] = &unk_1E7CF4E28;
    v26 = &v29;
    v25 = v10;
    [v14 enumerateObjectsUsingBlock:v24];

    v13 = v30[5];
    if (v13)
    {
LABEL_4:
      v15 = MEMORY[0x1E695DFF8];
      v16 = [v13 objectForKeyedSubscript:@"CredentialRelyingPartyID"];
      v17 = [@"https://" stringByAppendingString:v16];
      v18 = [v15 URLWithString:v17];
    }

    else
    {
      v18 = 0;
    }

    _Block_object_dispose(&v29, 8);
  }

  else if ([v7 count])
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v19 setScheme:@"https"];
    v20 = [v8 allValues];
    v21 = [v20 firstObject];
    v22 = [v21 relyingPartyIdentifier];
    [v19 setHost:v22];

    v18 = [v19 URL];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"CredentialID"];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

void __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke_2(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke_3;
  v7[3] = &unk_1E7CF4E00;
  v8 = *(a1 + 32);
  v4 = [a2 safari_firstObjectPassingTest:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __126__WBSSavedAccountStore__relyingPartyURLForPasskeyCredentialIdentifierOnInternalQueue_credentialIdentifiersToAutoFillPasskeys___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"CredentialID"];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

- (id)_getSavedAccountTreeMatchesWithCriteriaOnInternalQueue:(id)a3 relyingPartyURL:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_INFO, "Getting credential matches by looking through account store by high level domain.", buf, 2u);
  }

  if ([v6 queryShouldOnlyIncludePasswordsWithoutWebsites])
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = self->_savedAccountsWithPasswords;
    v10 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (v10)
    {
      v11 = v10;
      v54 = v7;
      v56 = v6;
      v12 = *v67;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v67 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v66 + 1) + 8 * i);
          if (([v14 hasValidWebsite] & 1) == 0)
          {
            v15 = [v14 user];
            v80 = v15;
            v77 = v14;
            v78 = &unk_1F308E4E0;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
            v79 = v16;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v81 = v17;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];

            v19 = [WBSSavedAccountTreeMatch alloc];
            v20 = [v14 highLevelDomain];
            v21 = [(WBSSavedAccountTreeMatch *)v19 initWithDomain:v20 savedAccountTree:v18 matchLevel:2];
            v22 = [v14 highLevelDomain];
            [v9 setObject:v21 forKeyedSubscript:v22];
          }
        }

        v11 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v82 count:16];
      }

      while (v11);
      v7 = v54;
      v6 = v56;
    }
  }

  else
  {
    obj = [v6 URL];
    v23 = [(NSArray *)obj host];
    v24 = [v23 safari_highLevelDomainForPasswordManager];
    v25 = [v7 host];
    v26 = [v25 safari_highLevelDomainForPasswordManager];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v27 = [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts objectForKeyedSubscript:v24];
    if (v27)
    {
      v28 = [[WBSSavedAccountTreeMatch alloc] initWithDomain:v23 savedAccountTree:v27 matchLevel:4];
      [v9 setObject:v28 forKeyedSubscript:v24];
    }

    v29 = [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts objectForKeyedSubscript:v26];
    v52 = v29;
    if (v29)
    {
      v30 = [[WBSSavedAccountTreeMatch alloc] initWithDomain:v23 savedAccountTree:v29 matchLevel:4];
      [v9 setObject:v30 forKeyedSubscript:v26];
    }

    v58 = [v6 associatedDomainsForURL];
    v60 = v27;
    v53 = v26;
    if ([v6 queryShouldReturnSavedAccountsMatchingAssociatedDomains])
    {
      v50 = v25;
      v51 = v23;
      v59 = v24;
      v55 = v7;
      v57 = v6;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v31 = v58;
      v32 = [v31 countByEnumeratingWithState:&v62 objects:v76 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v63;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v63 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v62 + 1) + 8 * j);
            v37 = [v36 safari_highLevelDomainForPasswordManager];
            v38 = [(NSMutableDictionary *)self->_allSavedAccountsHighLevelDomainToUsernameToCredentialTypesToSavedAccounts objectForKeyedSubscript:v37];
            if (v38)
            {
              v39 = [v9 objectForKeyedSubscript:v37];

              if (v39)
              {
                v40 = WBS_LOG_CHANNEL_PREFIXAutoFill();
                v27 = v60;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138739971;
                  v71 = v59;
                  _os_log_debug_impl(&dword_1B8447000, v40, OS_LOG_TYPE_DEBUG, "Associated domain with same high level domain as query URL: %{sensitive}@", buf, 0xCu);
                }
              }

              else
              {
                v41 = [[WBSSavedAccountTreeMatch alloc] initWithDomain:v36 savedAccountTree:v38 matchLevel:3];
                [v9 setObject:v41 forKeyedSubscript:v37];

                v27 = v60;
              }
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v62 objects:v76 count:16];
        }

        while (v33);
      }

      v7 = v55;
      v6 = v57;
      v25 = v50;
      v23 = v51;
      v24 = v59;
      v26 = v53;
    }

    v42 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      v44 = v25;
      v45 = [v9 count];
      v46 = [v58 allObjects];
      v47 = [v46 componentsJoinedByString:{@", "}];
      *buf = 134218499;
      v71 = v45;
      v25 = v44;
      v72 = 2117;
      v73 = v24;
      v74 = 2117;
      v75 = v47;
      _os_log_impl(&dword_1B8447000, v43, OS_LOG_TYPE_DEFAULT, "Found %lu tree matches for %{sensitive}@ and associated domains: %{sensitive}@", buf, 0x20u);

      v26 = v53;
      v27 = v60;
    }
  }

  v48 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_fetchCurrentAutoFillPasskeysWithCriteria:(id)a3
{
  v4 = a3;
  if ([v4 queryShouldOmitAutoFillPasskeyMatches])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Omitting AutoFill passkey matches as requested by match criteria.", buf, 2u);
    }

    v6 = [WBSPair alloc];
    v7 = [(WBSPair *)v6 initWithFirst:MEMORY[0x1E695E0F8] second:0];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__16;
    v30 = __Block_byref_object_dispose__16;
    v31 = 0;
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v11 bundleIdentifier];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __66__WBSSavedAccountStore__fetchCurrentAutoFillPasskeysWithCriteria___block_invoke;
    v21 = &unk_1E7CF4E78;
    v22 = v4;
    v13 = v8;
    v23 = v13;
    v25 = buf;
    v14 = v9;
    v24 = v14;
    [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy getPasskeysForRunningAssertionWithApplicationIdentifier:v12 withCompletionHandler:&v18];

    v15 = dispatch_time(0, 3000000000);
    dispatch_group_wait(v14, v15);
    v16 = [WBSPair alloc];
    v7 = [(WBSPair *)v16 initWithFirst:v13 second:*(v27 + 5), v18, v19, v20, v21];

    _Block_object_dispose(buf, 8);
  }

  return v7;
}

void __66__WBSSavedAccountStore__fetchCurrentAutoFillPasskeysWithCriteria___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__WBSSavedAccountStore__fetchCurrentAutoFillPasskeysWithCriteria___block_invoke_2;
  v22[3] = &unk_1E7CF4E50;
  v23 = *(a1 + 32);
  v6 = [a2 safari_filterObjectsUsingBlock:v22];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = *(a1 + 40);
        v13 = [v11 identifier];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v5;
  v16 = v5;

  dispatch_group_leave(*(a1 + 48));
  v17 = *MEMORY[0x1E69E9840];
}

BOOL __66__WBSSavedAccountStore__fetchCurrentAutoFillPasskeysWithCriteria___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) userNameQuery];
  v5 = [v4 matchingType];

  v6 = [*(a1 + 32) userNameQuery];
  v7 = [v6 string];

  if (v5 || [v7 length])
  {
    v8 = [v3 username];
    v9 = [*(a1 + 32) userNameQuery];
    v10 = [WBSSavedAccountTreeMatch userName:v8 matchesQuery:v9];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_pruneSavedAccountTreeMatchesOnInternalQueue:(id)a3 basedOnUsernameAndPasswordCriteria:(id)a4 autoFillPasskeyIdentifiers:(id)a5 keepAllPasskeyMatches:(BOOL)a6
{
  v6 = a6;
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v26 = a5;
  v11 = [v10 queryShouldReturnSavedAccountsWithEmptyUsernames];
  v12 = [v10 queryShouldIncludePasskeyMatchesForNonAutoFillContext];
  v13 = [v10 queryShouldOmitAutoFillPasskeyMatches];
  v14 = [v10 queryShouldIncludeSavedAccountsWithDoNotSaveMarkers];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = v9;
  obj = [v9 allValues];
  v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    if (v6)
    {
      v18 = v26;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v19 = v12 | v13;
    do
    {
      v20 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v28 + 1) + 8 * v20);
        if ((v14 & 1) == 0)
        {
          [*(*(&v28 + 1) + 8 * v20) pruneDontSaveTrees];
        }

        if (v11)
        {
          [v21 pruneEmptyUsernameTrees];
        }

        v22 = [v10 userNameQuery];
        [v21 pruneUsernameTreesNotMatchingUserNameQuery:v22 orPasskeyIdentifiers:v18];

        v23 = [v10 titleQuery];
        if (v23)
        {
          [v21 pruneUsernameTreesNotMatchingTitleQuery:v23];
        }

        if ((v19 & 1) == 0)
        {
          [v21 pruneTreesWithoutPasswordOrMatchingPasskeyIdentifiers:v26];
        }

        ++v20;
      }

      while (v16 != v20);
      v16 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(id)a3 withCriteria:(id)a4 mergingAutoFillPasskeys:(id)a5 nearbyDeviceOptions:(id)a6
{
  v217 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v131 = a6;
  v141 = [v10 queryShouldReturnSavedAccountsMatchingHighLevelAndSimplifiedDomains];
  v12 = [v10 URL];
  v13 = [v12 host];
  v163 = [v13 safari_highLevelDomainForPasswordManager];
  v170 = v13;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", v13];
  v162 = [v14 safari_simplifiedUserVisibleURLStringWithSimplifications:330 forDisplayOnly:0 simplifiedStringOffset:0];

  v15 = [v12 port];
  v16 = [v15 integerValue];

  v139 = v12;
  v171 = [v12 scheme];
  v130 = [v10 passkeyCredentialIdentifier];
  v17 = [v130 base64EncodedStringWithOptions:0];
  v18 = [MEMORY[0x1E695DF70] array];
  v140 = [MEMORY[0x1E695DF70] array];
  v142 = [MEMORY[0x1E695DF70] array];
  v145 = [MEMORY[0x1E695DF70] array];
  v149 = [MEMORY[0x1E695DF70] array];
  v132 = v11;
  v146 = [v11 safari_mapAndFilterKeysUsingBlock:&__block_literal_global_390];
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v133 = v9;
  obj = [v9 allValues];
  v143 = v17;
  v136 = [obj countByEnumeratingWithState:&v197 objects:v216 count:16];
  if (v136)
  {
    v135 = *v198;
    v148 = v10;
    v150 = v18;
    do
    {
      for (i = 0; i != v136; ++i)
      {
        if (*v198 != v135)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v197 + 1) + 8 * i);
        v21 = [v20 flattenedSavedAccountsFromTree];
        if ([v10 queryShouldOnlyIncludePasswordsWithoutWebsites])
        {
          v137 = v21;
          v138 = i;
          v195 = 0u;
          v196 = 0u;
          v193 = 0u;
          v194 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v193 objects:v215 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v194;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v194 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v193 + 1) + 8 * j);
                v28 = [WBSSavedAccountMatch alloc];
                v29 = [v10 context];
                v30 = [(WBSSavedAccountMatch *)v28 initWithSavedAccount:v27 protectionSpace:0 context:v29 matchLevel:1 autoFillPasskey:0];

                [v18 addObject:v30];
              }

              v24 = [v22 countByEnumeratingWithState:&v193 objects:v215 count:16];
            }

            while (v24);
          }

LABEL_91:
          v21 = v137;

          v17 = v143;
          i = v138;
          goto LABEL_92;
        }

        if ([v20 matchLevel] == 4)
        {
          v137 = v21;
          v138 = i;
          v191 = 0u;
          v192 = 0u;
          v189 = 0u;
          v190 = 0u;
          v147 = v21;
          v153 = [v147 countByEnumeratingWithState:&v189 objects:v214 count:16];
          if (!v153)
          {
            goto LABEL_91;
          }

          v152 = *v190;
          while (1)
          {
            v31 = 0;
            v32 = v143;
            v33 = v149;
            do
            {
              if (*v190 != v152)
              {
                objc_enumerationMutation(v147);
              }

              v158 = v31;
              v34 = *(*(&v189 + 1) + 8 * v31);
              v154 = [v34 isDefaultCredentialForFullyQualifiedHostname:v170];
              v35 = [v34 passkeyCredentialID];
              v36 = [v35 isEqualToString:v32];

              if (v36)
              {
                v37 = [WBSSavedAccountMatch alloc];
                v38 = [v10 context];
                v39 = [(WBSSavedAccountMatch *)v37 initWithSavedAccount:v34 protectionSpace:0 context:v38 matchLevel:1 autoFillPasskey:0];
                [v33 addObject:v39];
                v40 = v158;
                goto LABEL_64;
              }

              v41 = [v34 passkeyCredentialID];
              v42 = [v146 objectForKeyedSubscript:v41];

              v151 = v42;
              if (v42)
              {
                v43 = [WBSSavedAccountMatch alloc];
                v44 = [v10 context];
                v45 = [(WBSSavedAccountMatch *)v43 initWithSavedAccount:v34 protectionSpace:0 context:v44 matchLevel:1 autoFillPasskey:v42];
                v46 = v33;
              }

              else
              {
                if (![v10 queryShouldIncludePasskeyMatchesForNonAutoFillContext] || objc_msgSend(v34, "credentialTypes") != 2 || (objc_msgSend(v34, "passkeyRelyingPartyID"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "isEqualToString:", v170), v47, !v48))
                {
                  v51 = [v34 protectionSpaces];
                  v144 = v34;
                  v52 = [v34 protectionSpacesForAdditionalSites];
                  v53 = [v51 arrayByAddingObjectsFromArray:v52];

                  v187 = 0u;
                  v188 = 0u;
                  v185 = 0u;
                  v186 = 0u;
                  v54 = v53;
                  v55 = [v54 countByEnumeratingWithState:&v185 objects:v213 count:16];
                  v160 = v54;
                  if (v55)
                  {
                    v56 = v55;
                    v166 = 0;
                    v168 = 0;
                    v38 = 0;
                    v164 = *v186;
                    v57 = v142;
                    if (v154)
                    {
                      v57 = v33;
                    }

                    v155 = v57;
                    v156 = 0;
                    while (2)
                    {
                      for (k = 0; k != v56; ++k)
                      {
                        if (*v186 != v164)
                        {
                          objc_enumerationMutation(v160);
                        }

                        v59 = *(*(&v185 + 1) + 8 * k);
                        v60 = [v59 host];
                        v61 = [v59 port] != v16 && (v16 || (objc_msgSend(v59, "safari_hasDefaultPortForProtocol") & 1) == 0) && (v16 != objc_msgSend(v59, "safari_defaultPortForProtocol") || objc_msgSend(v59, "port") != 0);
                        v62 = [v59 protocol];
                        v63 = [v62 isEqualToString:v171];

                        v64 = [v60 safari_highLevelDomainForPasswordManager];
                        v65 = [v64 isEqualToString:v163];

                        if (v65)
                        {
                          v66 = v59;

                          v38 = v66;
                        }

                        v67 = [v60 isEqualToString:v170];
                        if (!v61 && (v63 & 1) != 0 && v67)
                        {
                          v33 = v149;
                          v75 = v150;
                          if (v154)
                          {
                            v75 = v149;
                          }

                          v73 = v75;

                          v72 = v59;
                          v74 = 1;
                          goto LABEL_57;
                        }

                        v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", v60];
                        v69 = [v68 safari_simplifiedUserVisibleURLStringWithSimplifications:330 forDisplayOnly:0 simplifiedStringOffset:0];

                        if ([v69 isEqualToString:v162])
                        {
                          v70 = v155;

                          v71 = v59;
                          v166 = v70;
                          v168 = v71;
                          v156 = 2;
                        }
                      }

                      v56 = [v160 countByEnumeratingWithState:&v185 objects:v213 count:16];
                      if (v56)
                      {
                        continue;
                      }

                      break;
                    }

                    v33 = v149;
                    v73 = v166;
                    v72 = v168;
                    v74 = v156;
                    if (!v156)
                    {
                      v10 = v148;
                      v32 = v143;
                      v18 = v150;
                      goto LABEL_59;
                    }

LABEL_57:
                    v76 = [WBSSavedAccountMatch alloc];
                    v10 = v148;
                    v77 = [v148 context];
                    v168 = v72;
                    v78 = [(WBSSavedAccountMatch *)v76 initWithSavedAccount:v144 protectionSpace:v72 context:v77 matchLevel:v74 autoFillPasskey:0];

                    v166 = v73;
                    [v73 addObject:v78];
                    v32 = v143;
                    v18 = v150;
LABEL_61:
                  }

                  else
                  {

                    v38 = 0;
                    v166 = 0;
                    v168 = 0;
LABEL_59:
                    if (v141)
                    {
                      v79 = [WBSSavedAccountMatch alloc];
                      v80 = [v10 context];
                      v78 = [(WBSSavedAccountMatch *)v79 initWithSavedAccount:v144 protectionSpace:v38 context:v80 matchLevel:4 autoFillPasskey:0];

                      [v140 addObject:v78];
                      goto LABEL_61;
                    }
                  }

                  v40 = v158;

                  v44 = v160;
                  v45 = v168;
                  goto LABEL_63;
                }

                v44 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:v139];
                v49 = [WBSSavedAccountMatch alloc];
                v50 = [v10 context];
                v45 = [(WBSSavedAccountMatch *)v49 initWithSavedAccount:v34 protectionSpace:v44 context:v50 matchLevel:1];

                v46 = v18;
              }

              [v46 addObject:v45];
              v38 = 0;
              v40 = v158;
LABEL_63:

              v39 = v151;
LABEL_64:

              v31 = v40 + 1;
            }

            while (v31 != v153);
            v153 = [v147 countByEnumeratingWithState:&v189 objects:v214 count:16];
            if (!v153)
            {
              goto LABEL_91;
            }
          }
        }

        if ([v20 matchLevel] == 3)
        {
          v137 = v21;
          v138 = i;
          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          v157 = v21;
          v165 = [v157 countByEnumeratingWithState:&v181 objects:v212 count:16];
          if (!v165)
          {
            goto LABEL_91;
          }

          v159 = *v182;
          v161 = v20;
          while (1)
          {
            v81 = 0;
            do
            {
              if (*v182 != v159)
              {
                objc_enumerationMutation(v157);
              }

              v169 = v81;
              v82 = *(*(&v181 + 1) + 8 * v81);
              v83 = [v20 domain];
              v84 = [v82 protectionSpaces];
              v167 = v82;
              v85 = [v82 protectionSpacesForAdditionalSites];
              v86 = [v84 arrayByAddingObjectsFromArray:v85];

              v179 = 0u;
              v180 = 0u;
              v177 = 0u;
              v178 = 0u;
              v87 = v86;
              v88 = [v87 countByEnumeratingWithState:&v177 objects:v211 count:16];
              if (!v88)
              {
LABEL_83:

                goto LABEL_85;
              }

              v89 = v88;
              v90 = *v178;
LABEL_75:
              v91 = 0;
              while (1)
              {
                if (*v178 != v90)
                {
                  objc_enumerationMutation(v87);
                }

                v92 = *(*(&v177 + 1) + 8 * v91);
                v93 = [v92 host];
                if ([v92 port] == v16)
                {
                  v94 = [v92 protocol];
                  v95 = [v94 isEqualToString:v171];

                  v96 = [v93 isEqualToString:v83];
                  if (v95)
                  {
                    if (v96)
                    {
                      break;
                    }
                  }
                }

                if (v89 == ++v91)
                {
                  v89 = [v87 countByEnumeratingWithState:&v177 objects:v211 count:16];
                  if (!v89)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_75;
                }
              }

              v97 = v92;

              if (!v97)
              {
LABEL_85:
                v97 = [v87 firstObject];
              }

              v98 = [WBSSavedAccountMatch alloc];
              v10 = v148;
              v99 = [v148 context];
              v100 = [(WBSSavedAccountMatch *)v98 initWithSavedAccount:v167 protectionSpace:v97 context:v99 matchLevel:3];

              if ([v167 isDefaultCredentialForFullyQualifiedHostname:v170])
              {
                v101 = v149;
              }

              else
              {
                v101 = v145;
              }

              [v101 addObject:v100];

              v81 = v169 + 1;
              v18 = v150;
              v20 = v161;
            }

            while (v169 + 1 != v165);
            v165 = [v157 countByEnumeratingWithState:&v181 objects:v212 count:16];
            if (!v165)
            {
              goto LABEL_91;
            }
          }
        }

LABEL_92:
      }

      v136 = [obj countByEnumeratingWithState:&v197 objects:v216 count:16];
    }

    while (v136);
  }

  v102 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    v103 = v102;
    v104 = [v139 host];
    v105 = [v10 userNameQuery];
    v106 = [v105 string];
    v107 = [v10 userNameQuery];
    v108 = [v107 matchingTypeDescriptionString];
    *buf = 141559043;
    v202 = 1752392040;
    v203 = 2117;
    v204 = v104;
    v205 = 2160;
    v206 = 1752392040;
    v207 = 2117;
    v208 = v106;
    v209 = 2112;
    v210 = v108;
    v17 = v143;
    _os_log_impl(&dword_1B8447000, v103, OS_LOG_TYPE_DEFAULT, "Executed query for host '%{sensitive, mask.hash}@' with partial username '%{sensitive, mask.hash}@', %@", buf, 0x34u);
  }

  v109 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  v110 = os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG);
  v111 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  v112 = v111;
  if (v110)
  {
    v113 = v142;
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v112 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }

    v114 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v114 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }

    v115 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v115 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }

    v116 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v116 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }

    v117 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
    {
      [WBSSavedAccountStore _getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:v117 withCriteria:? mergingAutoFillPasskeys:? nearbyDeviceOptions:?];
    }
  }

  else
  {
    v113 = v142;
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v118 = v112;
      v119 = [v18 count];
      v120 = [v140 count] + v119;
      v121 = [v142 count];
      v122 = v120 + v121 + [v145 count];
      v123 = [v149 count];
      *buf = 67109120;
      LODWORD(v202) = v122 + v123;
      _os_log_impl(&dword_1B8447000, v118, OS_LOG_TYPE_DEFAULT, "Query returned %d matches", buf, 8u);
    }
  }

  if ([v163 isEqualToString:@"apple.com"])
  {
    v172[0] = MEMORY[0x1E69E9820];
    v172[1] = 3221225472;
    v172[2] = __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_395;
    v172[3] = &unk_1E7CF4F10;
    v173 = v18;
    v174 = v149;
    v175 = v140;
    v176 = v10;
    [v146 enumerateKeysAndObjectsUsingBlock:v172];
  }

  if ([v113 count])
  {
    if ([v18 count])
    {
      if (!v141)
      {
        goto LABEL_117;
      }

      v124 = v140;
      [v113 addObjectsFromArray:v140];
      v140 = v113;
    }

    else
    {
      v124 = v18;
      v18 = v113;
    }

    v125 = v113;
  }

LABEL_117:
  if ([v149 count])
  {
    [v149 addObjectsFromArray:v18];
    v126 = v149;

    v18 = v126;
  }

  [v18 sortUsingSelector:sel_compare_];
  [v140 sortUsingSelector:sel_compare_];
  [v145 sortUsingSelector:sel_compare_];
  v127 = [[WBSSavedAccountMatchResult alloc] initWithExactMatches:v18 potentialMatches:v140 associatedDomainMatches:v145 nearbyDeviceOptions:v131];

  v128 = *MEMORY[0x1E69E9840];

  return v127;
}

void __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_395(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16;
  v27 = __Block_byref_object_dispose__16;
  v28 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_2;
  v20 = &unk_1E7CF4EE8;
  v7 = v6;
  v21 = v7;
  v22 = &v23;
  v8 = _Block_copy(&v17);
  v8[2](v8, *(a1 + 32));
  v8[2](v8, *(a1 + 40));
  if (v24[5])
  {
    [*(a1 + 48) addObject:{v17, v18, v19, v20}];
  }

  v9 = [WBSSavedAccount alloc];
  v10 = [v7 relyingPartyIdentifier];
  v11 = [v7 username];
  v12 = [(WBSSavedAccount *)v9 _initWithPasskeyRelyingPartyID:v10 user:v11 passkeyUserHandle:&stru_1F3064D08 passkeyCredentialID:v5];

  v13 = *(a1 + 40);
  v14 = [WBSSavedAccountMatch alloc];
  v15 = [*(a1 + 56) context];
  v16 = [(WBSSavedAccountMatch *)v14 initWithSavedAccount:v12 protectionSpace:0 context:v15 matchLevel:1 autoFillPasskey:v7];
  [v13 addObject:v16];

  _Block_object_dispose(&v23, 8);
}

void __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_3;
  v7[3] = &unk_1E7CF4EC0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v8 = v4;
  v6 = v3;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __147__WBSSavedAccountStore__getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue_withCriteria_mergingAutoFillPasskeys_nearbyDeviceOptions___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 savedAccount];
  v6 = [v5 user];
  v7 = [*(a1 + 32) username];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    v12 = *(a1 + 40);

    [v12 removeObjectAtIndex:a3];
  }
}

- (void)_verifyGroupsInSync
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__WBSSavedAccountStore__verifyGroupsInSync__block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_DEFAULT, "Received reply from group sync verification. Groups were in sync.", v8, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __43__WBSSavedAccountStore__verifyGroupsInSync__block_invoke_cold_1();
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
      goto LABEL_8;
    }

    v7 = WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__WBSSavedAccountStore__verifyGroupsInSync__block_invoke_cold_2(v7);
    }
  }

LABEL_8:
}

- (id)duplicateAccountsWithGroupID:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WBSSavedAccountStore *)self savedAccountsInPersonalKeychain];
  v20 = v4;
  v6 = [(WBSSavedAccountStore *)self savedAccountsForGroupID:v4];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v6;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ([v12 isEqualForSuggestingDuplicatesCleanup:*(*(&v22 + 1) + 8 * j)])
              {
                [v7 addObject:v12];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v15);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)newPasskeysAvailableForApplicationIdentifier:(id)a3
{
  if ([MEMORY[0x1E696AAE8] safari_isSafariFamilyBundleIdentifier:a3])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_INFO, "Notifying that new passkeys are available.", v5, 2u);
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"WBSSavedAccountStoreNewAutoFillablePasskeysAvailableNotification" object:0];
  }
}

- (id)persistentIdentifierForCredential:(id)a3 protectionSpace:(id)a4
{
  v6 = a3;
  v7 = [a4 host];
  v8 = [v6 user];

  v9 = [(WBSSavedAccountStore *)self _persistentIdentifierForUser:v8 host:v7];

  return v9;
}

- (id)persistentIdentifierForSavedAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 protectionSpaces];
  v6 = [v5 firstObject];
  v7 = [v6 host];

  v8 = [v4 user];

  v9 = [(WBSSavedAccountStore *)self _persistentIdentifierForUser:v8 host:v7];

  return v9;
}

- (id)_persistentIdentifierForUser:(id)a3 host:(id)a4
{
  v25[8] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v23 = 0;
    v8 = *MEMORY[0x1E697B018];
    v9 = *MEMORY[0x1E697ABD0];
    v24[0] = *MEMORY[0x1E697AFF8];
    v24[1] = v9;
    v25[0] = v8;
    v25[1] = @"com.apple.cfnetwork";
    v10 = *MEMORY[0x1E697AEB8];
    v11 = *MEMORY[0x1E697AC50];
    v24[2] = *MEMORY[0x1E697AEB0];
    v24[3] = v11;
    v12 = *MEMORY[0x1E697AC60];
    v25[2] = v10;
    v25[3] = v12;
    v13 = *MEMORY[0x1E697B268];
    v14 = *MEMORY[0x1E697B320];
    v24[4] = *MEMORY[0x1E697B260];
    v24[5] = v14;
    v25[4] = v13;
    v25[5] = MEMORY[0x1E695E118];
    v15 = *MEMORY[0x1E697AC30];
    v24[6] = *MEMORY[0x1E697AE80];
    v24[7] = v15;
    v25[6] = v6;
    v25[7] = v5;
    v16 = SecItemCopyMatching([MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:8], &v23);
    if (v16 != -25300)
    {
      if (!v16)
      {
        v17 = v23;
        v18 = [v23 firstObject];

        goto LABEL_11;
      }

      v20 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [WBSSavedAccountStore _persistentIdentifierForUser:host:];
      }
    }
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [WBSSavedAccountStore _persistentIdentifierForUser:host:];
    }
  }

  v18 = 0;
LABEL_11:

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)test_createLegacyWebAuthnCredentialWithUserName:(id)a3 displayName:(id)a4 relyingPartyIdentifier:(id)a5 userHandle:(id)a6 completionHandler:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v14)
  {
    v16 = [MEMORY[0x1E696AFB0] UUID];
    v17 = [v16 UUIDString];
    v14 = [v17 dataUsingEncoding:4];
  }

  [(WBSPasskeyStore *)self->_passkeyStore test_createLegacyCredentialWithName:v18 displayName:v12 relyingParty:v13 userHandle:v14 completionHandler:v15];
}

- (void)test_setSharedAccountsGroups:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__WBSSavedAccountStore_test_setSharedAccountsGroups___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)test_reloadAllSavedAccounts
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WBSSavedAccountStore_test_reloadAllSavedAccounts__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __51__WBSSavedAccountStore_test_reloadAllSavedAccounts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetOnInternalQueue];
  v2 = [*(a1 + 32) _savedAccounts];
  v3 = *(a1 + 32);

  return [v3 _loadRecentlyDeletedSavedAccounts];
}

- (BOOL)shouldShowServiceNamesForPasswordAndPasskeyItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__WBSSavedAccountStore_shouldShowServiceNamesForPasswordAndPasskeyItems__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldShowServiceNamesForPasswordAndPasskeyItems:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke;
  v4[3] = &unk_1E7CF3D78;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

void __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(WBSScopeExitHandler);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_2;
  v14[3] = &unk_1E7CF16E0;
  v14[4] = *(a1 + 32);
  [(WBSScopeExitHandler *)v2 setHandler:v14];
  v3 = *(a1 + 40);
  if (v3 != *(*(a1 + 32) + 256))
  {
    [objc_opt_class() setShouldShowServiceNamesForPasswordAndPasskeyItems:v3];
    v4 = *(a1 + 40);
    *(*(a1 + 32) + 256) = v4;
    if (v4 == 1)
    {
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [*(a1 + 32) websiteNameProvider];
    v8 = objc_opt_respondsToSelector();

    v9 = [*(a1 + 32) websiteNameProvider];
    v10 = v9;
    if (v8)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_3;
      v13[3] = &unk_1E7CF16E0;
      v13[4] = *(a1 + 32);
      [v9 setWebsiteNameConsumer:v6 completion:v13];
    }

    else
    {

      if (v10)
      {
        v11 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v16 = "[WBSSavedAccountStore setShouldShowServiceNamesForPasswordAndPasskeyItems:]_block_invoke";
          _os_log_impl(&dword_1B8447000, v11, OS_LOG_TYPE_INFO, "In %s, found websiteNameProvider that didn't respond to -setWebsiteNameConsumer:completion:, indicating that AuthenticationServices framework category wasn't loaded. Service names will not function properly.", buf, 0xCu);
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_4;
  block[3] = &unk_1E7CF16E0;
  block[4] = v1;
  dispatch_async(v2, block);
}

_BYTE *__76__WBSSavedAccountStore_setShouldShowServiceNamesForPasswordAndPasskeyItems___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[257] == 1)
  {
    [result _resetOnInternalQueue];
    v3 = [*(a1 + 32) _loadSavedAccounts];
    [*(a1 + 32) _loadRecentlyDeletedSavedAccounts];
    v4 = *(a1 + 32);

    return [v4 _notifyClientsAboutWebsiteNamesChanges];
  }

  return result;
}

- (BOOL)_applyServiceNamesToSavedAccounts:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = [(WBSSavedAccountStore *)self websiteNameProvider];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v25;
  do
  {
    v10 = 0;
    do
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      if ([v11 hasValidWebsite] && (objc_msgSend(v11, "userIsNeverSaveMarker") & 1) == 0)
      {
        v12 = [v11 serviceName];
        if (self->_shouldShowServiceNamesForPasswordAndPasskeyItems)
        {
          v13 = [v11 userVisibleDomain];
          v14 = [v23 knownWebsiteNameForDomain:v13];
          if ([v14 length])
          {
            if (![v11 shouldShowSpecificSubdomainForUserVisibleDomain] || objc_msgSend(v13, "safari_isCaseInsensitiveEqualToString:", v14))
            {
              v15 = v11;
              v16 = v14;
              goto LABEL_15;
            }

            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v14, v13];
            [v11 setServiceName:v22];
          }

          else
          {
            v15 = v11;
            v16 = 0;
LABEL_15:
            [v15 setServiceName:v16];
          }
        }

        else
        {
          [v11 setServiceName:0];
        }

        v17 = [v11 serviceName];
        v18 = WBSIsEqual(v12, v17);

        v8 |= v18 ^ 1;
      }

      ++v10;
    }

    while (v7 != v10);
    v19 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    v7 = v19;
  }

  while (v19);
LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (void)knownWebsiteNamesDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSSavedAccountStore_knownWebsiteNamesDidChange__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

_BYTE *__50__WBSSavedAccountStore_knownWebsiteNamesDidChange__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[256] == 1)
  {
    result = [result _reapplyServiceNamesFromProvider];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 _notifyClientsAboutWebsiteNamesChanges];
    }
  }

  return result;
}

- (void)knownWebsiteNamesDidChangeOnDomains:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSSavedAccountStore_knownWebsiteNamesDidChangeOnDomains___block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(queue, block);
}

_BYTE *__60__WBSSavedAccountStore_knownWebsiteNamesDidChangeOnDomains___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[256] == 1)
  {
    result = [result _reapplyServiceNamesFromProvider];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 _notifyClientsAboutWebsiteNamesChanges];
    }
  }

  return result;
}

- (void)_notifyClientsAboutWebsiteNamesChanges
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSSavedAccountStore__notifyClientsAboutWebsiteNamesChanges__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (BOOL)userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  [v3 rangeOfCharacterFromSet:v4];
  v6 = v5;

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v7 = [objc_opt_class() getProtectionSpaceAndHighLevelDomainForUserTypedSite:v3 protectionSpace:&v10 highLevelDomain:&v9];
  }

  return v7;
}

- (id)passkeyDataForPasskeyCredentialIDOnInternalQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B85659D8();
  v8 = v7;

  v9 = [(WBSSavedAccountStore *)v5 passkeyStore];
  v12[2] = v6;
  v12[3] = v8;
  v12[4] = v5;
  sub_1B8450D18(sub_1B8526968, v12);

  sub_1B851D53C(v6, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A818, &qword_1B8576980);
  v10 = sub_1B8565FF8();

  return v10;
}

- (void)updateUserVisibleName:(NSString *)a3 forPasskeyWithIdentifier:(WBSPublicKeyCredentialIdentifier *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1B8566108();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B8574720;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B8574728;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1B8534B98(0, 0, v12, &unk_1B8574730, v17);
}

- (void)updateUserVisibleNameOnInternalQueue:(id)a3 forPasskeyWithIdentifier:(id)a4
{
  v6 = sub_1B8565DA8();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  v13.super.isa = v9;
  WBSSavedAccountStore.updateUserVisibleName(onInternalQueue:forPasskeyWith:)(v11, v13);
}

- (void)deletePasskeyWithIdentifier:(WBSPublicKeyCredentialIdentifier *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B8566108();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8574710;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B8574428;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1B8534B98(0, 0, v10, &unk_1B8574430, v15);
}

- (void)deletePasskeyWithIdentifierOnInternalQueue:(id)a3
{
  v4 = a3;
  v7._credentialID = self;
  credentialID = v7._credentialID;
  v7.super.isa = v4;
  WBSSavedAccountStore.deletePasskeyWithIdentifier(onInternalQueue:)(v7);
}

- (id)exportPasskeyCredentialWithIDOnInternalQueue:(id)a3
{
  v4 = sub_1B8565DA8();
  v6 = v5;
  v7 = self;
  v8 = [(WBSSavedAccountStore *)v7 passkeyStore];
  v11[2] = v4;
  v11[3] = v6;
  v9 = sub_1B851FE7C(sub_1B8526998, v11);

  return v9;
}

- (id)importPasskeyCredentialOnInternalQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(WBSSavedAccountStore *)v5 passkeyStore];
  v11[2] = v4;
  sub_1B8520078(sub_1B8526950, v11);
  v8 = v7;

  if (v8)
  {
    v9 = sub_1B8565D68();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)savedAccountsForGroupID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_loadSavedAccountsWithPasswordsFromKeychainData:(_DWORD *)a1 forGroupID:(void *)a2 withDictionaryForSavedAccountsWithPasswords:(uint64_t)a3 fromRecentlyDeleted:(void *)a4 .cold.1(_DWORD *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  *a1 = 138412290;
  *a4 = v7;
  v8 = v7;
  OUTLINED_FUNCTION_14_0(&dword_1B8447000, v9, v10, "kSecAttrAccount value for keychain item was not of type string, got type: %@");
}

- (void)_loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0(&dword_1B8447000, v0, v1, "Unmatched sidecars: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_loadSavedAccountsWithPasswordsFromKeychainData:forGroupID:withDictionaryForSavedAccountsWithPasswords:fromRecentlyDeleted:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __53__WBSSavedAccountStore__fetchSignInWithAppleAccounts__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_convertSignInWithAppleAccountsToSavedAccounts:(void *)a3 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 clientID];
  *a1 = 138412290;
  *a4 = v8;
  OUTLINED_FUNCTION_14_0(&dword_1B8447000, v9, v10, "Error, Sign in with Apple account missing app name for clientID: %@, unable to convert to savedAccount");
}

void __91__WBSSavedAccountStore__shareSignInWithAppleAccountWithContext_withGroupInfo_savedAccount___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__WBSSavedAccountStore__unshareSignInWithAppleAccountWithContext___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_loadSavedAccountsWithPasskeysFromPasskeyData:(os_log_t)log forGroupID:fromRecentlyDeleted:withDictionaryForSavedAccountsWithPasskeys:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_1B8447000, log, OS_LOG_TYPE_FAULT, "Found passkey with nil credentialID. Skipping.", buf, 2u);
}

- (void)_changeSavedAccountWithRequestOnInternalQueue:performPostUpdateActions:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __112__WBSSavedAccountStore_canSaveUser_password_forProtectionSpace_highLevelDomain_notes_customTitle_groupID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__WBSSavedAccountStore__canMoveSavedAccountWithPasskey_toGroup___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_saveAccountOnInternalQueueWithUser:password:protectionSpace:highLevelDomain:groupID:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clearSavedAccountHistory:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_deleteSavedAccountsWithUnknownOriginalContributorParticipantIDsFromSavedAccounts:inGroup:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __126__WBSSavedAccountStore__cleanUpSharedSavedAccountsWithUnknownOriginalContributorParticipantIDsIfNecessaryFromRecentlyDeleted___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0(&dword_1B8447000, v1, v4, "Aborting clean up for passwords with unmatchable contributor ID because of error fetching groups: %{private}@.", v6);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_mergeSavedAccountWithPassword:(os_log_t)log toSavedAccountWithPasskey:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Received unexpected sidecar type when merging password to passkey", buf, 2u);
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v13 = *MEMORY[0x1E69E9840];
  v4 = v3;
  [OUTLINED_FUNCTION_3() host];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() user];
  v6 = [v0 highLevelDomain];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x1E69E9840];
  v3 = v2;
  [OUTLINED_FUNCTION_3() user];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() host];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x1E69E9840];
  v3 = v2;
  [OUTLINED_FUNCTION_3() user];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() host];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setSavedAccountAsDefaultOnInternalQueue:forProtectionSpace:context:associatedDomainsManager:.cold.4()
{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x1E69E9840];
  v3 = v2;
  [OUTLINED_FUNCTION_3() user];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_0() host];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_shouldUpdateLastUsedDateForSavedAccount:(uint64_t)a3 forProtectionSpace:(uint64_t)a4 inContext:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_0(&dword_1B8447000, a2, a3, "Saved account %s first match for criteria", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_3(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a3 groupID];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__WBSSavedAccountStore__moveSavedAccount_toGroupWithID_completionHandler___block_invoke_335_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_copySavedAccount:toGroup:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_copySavedAccount:toGroup:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupIDOnInternalQueue:(NSObject *)a3 isForAlreadyExitedGroup:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 134217984;
  *a2 = 10;
  OUTLINED_FUNCTION_7_0(&dword_1B8447000, a3, a3, "Failed to copy password back to personal keychain because there were %zu other passwords with the same username", a1);
}

- (void)_recordGroupIdentifierForMovingContributedCredentialsBackToPersonalKeychain:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__WBSSavedAccountStore__performCleanupForExitedGroupsIfNecessary___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0(&dword_1B8447000, v1, v4, "Error fetching groups, skipping clean up for now: %{public}@", v6);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_moveCredentialTypesToRecentlyDeletedOnInternalQueue:fromSavedAccount:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__WBSSavedAccountStore__recoverRecentlyDeletedSavedAccount_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d exact domain matches", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d high-level domain matches", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.3(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d simplified domain matches", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.4(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d associated domain matches", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_getSavedAccountMatchesFromSavedAccountTreeMatchesOnInternalQueue:(void *)a1 withCriteria:mergingAutoFillPasskeys:nearbyDeviceOptions:.cold.5(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_2_0() count];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0(&dword_1B8447000, v3, v4, "%d default matches", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __43__WBSSavedAccountStore__verifyGroupsInSync__block_invoke_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0(&dword_1B8447000, v1, v4, "Received error from group sync verification: %{private}@", v6);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_persistentIdentifierForUser:host:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_persistentIdentifierForUser:host:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end
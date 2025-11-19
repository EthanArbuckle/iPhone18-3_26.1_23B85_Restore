@interface MailAccount
+ (BOOL)canMoveMessagesFromAccount:(id)a3 toAccount:(id)a4;
+ (BOOL)mailboxListingNotificationAreEnabled;
+ (MailAccount)accountWithPath:(id)a3;
+ (id)URLForInfo:(id)a3;
+ (id)_accountContainingEmailAddress:(id)a3 matchingAddress:(id *)a4 fullUserName:(id *)a5 includingInactive:(BOOL)a6;
+ (id)_accountWithPath:(id)a3;
+ (id)accountContainingEmailAddress:(id)a3;
+ (id)accountThatMessageIsFrom:(id)a3;
+ (id)accountUsingHeadersFromMessage:(id)a3;
+ (id)addressesThatReceivedMessage:(id)a3;
+ (id)defaultAccountDirectory;
+ (id)defaultPathForAccountWithHostname:(id)a3 username:(id)a4;
+ (id)defaultPathNameForAccountWithHostname:(id)a3 username:(id)a4;
+ (id)existingAccountForUniqueID:(id)a3;
+ (id)lastMailAccountsReloadDate;
+ (id)lastMailAccountsReloadError;
+ (id)mailboxUidFromActiveAccountsForURL:(id)a3;
+ (id)outboxMailboxUid;
+ (void)_addAccountToSortedPaths:(id)a3;
+ (void)_removeAccountFromSortedPaths:(id)a3;
+ (void)_setOutboxMailboxUid:(id)a3;
+ (void)_setupSortedPathsForAccounts:(id)a3;
+ (void)disableMailboxListingNotifications;
+ (void)enableMailboxListingNotifications:(BOOL)a3;
+ (void)initialize;
+ (void)reloadAccounts;
+ (void)saveStateForAllAccounts;
+ (void)setDataclassesConsideredActive:(id)a3;
+ (void)setGlobalPathForAccounts:(id)a3;
+ (void)setMailAccountLoadOptions:(unint64_t)a3;
+ (void)updateAutoFetchSettings;
- (BOOL)_loadMailboxListingIntoCache:(id)a3 attributes:(unsigned int)a4 children:(id)a5 parent:(id)a6;
- (BOOL)_renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (BOOL)_resetSpecialMailboxes;
- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4;
- (BOOL)_setPath:(id)a3;
- (BOOL)_shouldLogDeleteActivity;
- (BOOL)canArchiveForMailbox:(id)a3;
- (BOOL)canMailboxBeRenamed:(id)a3;
- (BOOL)deleteMailbox:(id)a3;
- (BOOL)hasEnoughInformationForEasySetup;
- (BOOL)isAccountClassEquivalentTo:(id)a3;
- (BOOL)isEquivalentTo:(id)a3 hostname:(id)a4 username:(id)a5;
- (BOOL)isHostnameEquivalentTo:(id)a3;
- (BOOL)isSpecialMailbox:(id)a3;
- (BOOL)isUsernameEquivalentTo:(id)a3;
- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4;
- (BOOL)ownsMailboxUidWithURL:(id)a3;
- (BOOL)perMessageEncryptionEnabled;
- (BOOL)preventArchiveForMailbox:(id)a3;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4;
- (BOOL)restrictedFromSendingExternally;
- (BOOL)restrictedFromSyncingRecents;
- (BOOL)restrictedFromTransferingMessagesToOtherAccounts;
- (BOOL)secureMIMEEnabled;
- (BOOL)shouldArchiveByDefault;
- (BOOL)shouldFetchAgainWithError:(id)a3 foregroundRequest:(BOOL)a4;
- (BOOL)sourceIsManaged;
- (BOOL)supportsContinuationType:(id)a3;
- (BOOL)supportsMailDrop;
- (BOOL)updateEmailAliases;
- (BOOL)willPerformActionForChokePoint:(id)a3 coalescePoint:(id)a4 result:(id *)a5;
- (Class)storeClassForMailbox:(id)a3;
- (MailAccount)initWithLibrary:(id)a3;
- (MailAccount)initWithLibrary:(id)a3 path:(id)a4;
- (id)URLString;
- (id)_URLForInfo:(id)a3;
- (id)_childOfMailbox:(id)a3 withComponentName:(id)a4;
- (id)_defaultSpecialMailboxNameForType:(int)a3;
- (id)_infoForMatchingURL:(id)a3;
- (id)_specialMailboxIvarOfType:(int)a3;
- (id)allLocalMailboxUids;
- (id)allMailboxUids;
- (id)connectionError;
- (id)description;
- (id)displayName;
- (id)displayNameForMailboxUid:(id)a3;
- (id)emailAddresses;
- (id)emailAddressesAndAliases;
- (id)emailAddressesDictionary;
- (id)encryptionIdentityPersistentReferenceForAddress:(id)a3;
- (id)firstEmailAddress;
- (id)iconString;
- (id)lastEmailAliasesSyncDate;
- (id)library;
- (id)loggingIdentifier;
- (id)mailboxCachePath;
- (id)mailboxUidForInfo:(id)a3;
- (id)mailboxUidForRelativePath:(id)a3 create:(BOOL)a4 withOption:(int)a5;
- (id)mailboxUidForURL:(id)a3;
- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)a3;
- (id)moveMessages:(id)a3 fromMailbox:(id)a4 toMailbox:(id)a5 markAsRead:(BOOL)a6;
- (id)newMailboxWithParent:(id)a3 name:(id)a4;
- (id)path;
- (id)powerAssertionIdentifierWithPrefix:(id)a3;
- (id)pushedMailboxUids;
- (id)receiveEmailAliasAddresses;
- (id)receiveEmailAliasAddressesList;
- (id)rootMailboxUid;
- (id)signingIdentityPersistentReferenceForAddress:(id)a3;
- (id)specialMailboxNameForType:(int)a3;
- (id)storeForMailboxUid:(id)a3;
- (id)tildeAbbreviatedPath;
- (id)uniqueServerIdForMessage:(id)a3;
- (int)_emptyFrequencyForKey:(id)a3 defaultValue:(id)a4;
- (int)archiveDestinationForMailbox:(id)a3;
- (int)cachePolicy;
- (int)secureCompositionEncryptionPolicyForAddress:(id)a3;
- (int)secureCompositionSigningPolicyForAddress:(id)a3;
- (int64_t)libraryID;
- (void)_asynchronouslyInvalidate;
- (void)_invalidate__;
- (void)_loadEntriesFromFileSystemPath:(id)a3 parent:(id)a4;
- (void)_setSpecialMailboxName:(id)a3 forType:(int)a4;
- (void)_synchronizeMailboxListWithFileSystem;
- (void)_writeMailboxCacheWithPrejudice:(BOOL)a3;
- (void)dealloc;
- (void)didFinishActionForChokePoint:(id)a3 coalescePoint:(id)a4 withResult:(id)a5;
- (void)emptyTrash;
- (void)forceFetchMailboxList;
- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization;
- (void)saveState;
- (void)setCachePolicy:(int)a3;
- (void)setConnectionError:(id)a3;
- (void)setDefaultEmailAddress:(id)a3;
- (void)setLastEmailAliasesSyncDate:(id)a3;
- (void)setLastKnownHostname:(id)a3;
- (void)setLibrary:(id)a3;
- (void)setMailboxCachePath:(id)a3;
- (void)setPath:(id)a3;
@end

@implementation MailAccount

+ (void)initialize
{
  if (!_accountsSortedByPath)
  {
    _accountsSortedByPath = CFArrayCreateMutable(0, 0, 0);
    _sortedAccountPaths = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }
}

+ (BOOL)mailboxListingNotificationAreEnabled
{
  _MFLockGlobalLock();
  v2 = _disableMailboxListingNotifications;
  _MFUnlockGlobalLock();
  return (v2 & 1) == 0;
}

+ (void)disableMailboxListingNotifications
{
  _MFLockGlobalLock();
  _disableMailboxListingNotifications = 1;

  _MFUnlockGlobalLock();
}

+ (void)enableMailboxListingNotifications:(BOOL)a3
{
  v3 = a3;
  _MFLockGlobalLock();
  _disableMailboxListingNotifications = 0;
  _MFUnlockGlobalLock();
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"AccountMailboxListingDidChange" object:0 userInfo:0];
  }
}

+ (void)_addAccountToSortedPaths:(id)a3
{
  value = a3;
  v3 = [value path];
  v4 = [v3 hasPrefix:@"~"];
  v5 = v3;
  v6 = v5;
  if (v4)
  {
    v7 = [v5 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
    v8 = v6;
  }

  else
  {
    [value tildeAbbreviatedPath];
    v8 = v7 = v6;
  }

  v9 = [v7 mf_betterStringByResolvingSymlinksInPath];
  v10 = _sortedAccountPaths;
  v18.length = CFArrayGetCount(_sortedAccountPaths);
  v18.location = 0;
  v11 = CFArrayBSearchValues(v10, v18, v7, MEMORY[0x277CBE560], 0);
  CFArrayInsertValueAtIndex(_sortedAccountPaths, v11, v7);
  CFArrayInsertValueAtIndex(_accountsSortedByPath, v11, value);
  if (([v7 isEqualToString:v8] & 1) == 0)
  {
    v12 = _sortedAccountPaths;
    v19.length = CFArrayGetCount(_sortedAccountPaths);
    v19.location = 0;
    v13 = CFArrayBSearchValues(v12, v19, v8, MEMORY[0x277CBE560], 0);
    CFArrayInsertValueAtIndex(_sortedAccountPaths, v13, v8);
    CFArrayInsertValueAtIndex(_accountsSortedByPath, v13, value);
  }

  if (([v7 isEqualToString:v9] & 1) == 0)
  {
    v14 = _sortedAccountPaths;
    v20.length = CFArrayGetCount(_sortedAccountPaths);
    v20.location = 0;
    v15 = CFArrayBSearchValues(v14, v20, v9, MEMORY[0x277CBE560], 0);
    CFArrayInsertValueAtIndex(_sortedAccountPaths, v15, v9);
    CFArrayInsertValueAtIndex(_accountsSortedByPath, v15, value);
  }
}

+ (void)_setupSortedPathsForAccounts:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  CFArrayRemoveAllValues(_sortedAccountPaths);
  CFArrayRemoveAllValues(_accountsSortedByPath);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [a1 _addAccountToSortedPaths:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)existingAccountForUniqueID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  +[MailAccount mf_lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [0 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(0);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 uniqueId];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [0 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  +[MailAccount mf_unlock];

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)setMailAccountLoadOptions:(unint64_t)a3
{
  +[MailAccount mf_lock];

  +[MailAccount mf_unlock];
}

+ (void)reloadAccounts
{
  [a1 disableMailboxListingNotifications];
  +[MailAccount mf_lock];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = _lastAccountsReloadDate;
  _lastAccountsReloadDate = v3;

  +[MailAccount mf_unlock];

  [a1 enableMailboxListingNotifications:0];
}

+ (id)lastMailAccountsReloadDate
{
  +[MailAccount mf_lock];
  v2 = _lastAccountsReloadDate;
  +[MailAccount mf_unlock];

  return v2;
}

+ (id)lastMailAccountsReloadError
{
  +[MailAccount mf_lock];
  +[MailAccount mf_unlock];
  return 0;
}

+ (void)_removeAccountFromSortedPaths:(id)a3
{
  v5 = a3;
  if (_accountsSortedByPath)
  {
    Count = CFArrayGetCount(_accountsSortedByPath);
    if (Count)
    {
      v4 = Count - 1;
      do
      {
        if (CFArrayGetValueAtIndex(_accountsSortedByPath, v4) == v5)
        {
          CFArrayRemoveValueAtIndex(_accountsSortedByPath, v4);
          CFArrayRemoveValueAtIndex(_sortedAccountPaths, v4);
        }

        --v4;
      }

      while (v4 != -1);
    }
  }
}

- (BOOL)isEquivalentTo:(id)a3 hostname:(id)a4 username:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MailAccount *)self isAccountClassEquivalentTo:v8]&& [(MailAccount *)self isHostnameEquivalentTo:v9]&& [(MailAccount *)self isUsernameEquivalentTo:v10];

  return v11;
}

- (BOOL)isUsernameEquivalentTo:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self username];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(MFAccount *)self username];
    v7 = [v4 compare:v6 options:1] == 0;
  }

  return v7;
}

+ (void)updateAutoFetchSettings
{
  v2 = v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCACC8] callStackSymbols];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_2720B1000, v2, OS_LOG_TYPE_DEFAULT, "#I updateAutoFetchSettings was called. Backtrace:\n%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_accountContainingEmailAddress:(id)a3 matchingAddress:(id *)a4 fullUserName:(id *)a5 includingInactive:(BOOL)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v6 = [v26 mf_uncommentedAddress];
  v7 = [v26 mf_addressComment];
  if (([v7 isEqualToString:&stru_288159858] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", v26))
  {

    v7 = 0;
  }

  +[MailAccount mf_lock];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [0 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v33 = 0;
    v9 = 0;
    v28 = *v39;
LABEL_6:
    v30 = 0;
    v27 = v8;
    while (1)
    {
      if (*v39 != v28)
      {
        objc_enumerationMutation(0);
      }

      v10 = *(*(&v38 + 1) + 8 * v30);
      if (a6 || [*(*(&v38 + 1) + 8 * v30) isActive])
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v11 = [v10 emailAddressesAndAliasesList];
        v12 = [v11 mf_uncommentedAddressList];

        v13 = [v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v13)
        {
          v14 = *v35;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v35 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v34 + 1) + 8 * i);
              if (![v16 caseInsensitiveCompare:v6])
              {
                v17 = [v10 fullUserName];
                v18 = v17;
                if (v7 && (!v17 || [v7 caseInsensitiveCompare:v17]))
                {
                  v19 = v10;

                  v33 = v19;
                }

                else
                {
                  if (a4)
                  {
                    v20 = v16;
                    *a4 = v16;
                  }

                  if (a5 && v18 && ([v18 isEqualToString:&stru_288159858] & 1) == 0)
                  {
                    v21 = v18;
                    *a5 = v18;
                  }

                  v22 = v10;

                  if ([v22 isActive])
                  {

                    v9 = v22;
                    goto LABEL_34;
                  }

                  v9 = v22;
                }
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_34:
      }

      if ([v9 isActive])
      {
        break;
      }

      if (++v30 == v27)
      {
        v8 = [0 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v33 = 0;
    v9 = 0;
  }

  +[MailAccount mf_unlock];
  if (!v9 && v33)
  {
    v9 = v33;
  }

  v23 = v9;

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)accountContainingEmailAddress:(id)a3
{
  v3 = [a1 _accountContainingEmailAddress:a3 matchingAddress:0 fullUserName:0 includingInactive:0];

  return v3;
}

+ (id)accountUsingHeadersFromMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 headers];
  if (!v5)
  {
    v5 = [v4 headersIfAvailable];
  }

  v6 = [a1 accountForHeaders:v5 message:v4 includingInactive:0];

  return v6;
}

+ (id)accountThatMessageIsFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 headersIfAvailable];
  v6 = [a1 accountForHeaders:v5 message:v4 includingInactive:0];

  return v6;
}

+ (id)addressesThatReceivedMessage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = [a3 headersIfAvailable];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v17 copyAddressListForTo];
  [v4 addObjectsFromArray:v6];
  v7 = [v17 copyAddressListForCc];

  [v4 addObjectsFromArray:v7];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) mf_uncommentedAddress];
        v13 = [a1 _accountContainingEmailAddress:v12 matchingAddress:0 fullUserName:0 includingInactive:0];
        v14 = v13 == 0;

        if (!v14)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)outboxMailboxUid
{
  +[MailAccount mf_lock];
  v3 = +[LocalAccount localAccount];
  v4 = _outboxUid;
  if ([v4 isValid])
  {
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v5 = [v3 mailboxUidForRelativePath:@"Outbox" create:1];
  if (v5)
  {
    [a1 _setOutboxMailboxUid:v5];
    v4 = v5;
    [v3 resetSpecialMailboxes];
  }

  else
  {
    v4 = 0;
  }

LABEL_8:
  +[MailAccount mf_unlock];

  return v4;
}

+ (MailAccount)accountWithPath:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MailAccount _accountWithPath:v3];
    v5 = v3;
    if (!v4)
    {
      v5 = [v3 mf_betterStringByResolvingSymlinksInPath];

      v4 = [MailAccount _accountWithPath:v5];
    }
  }

  else
  {
    v4 = 0;
    v5 = v3;
  }

  return v4;
}

- (MailAccount)initWithLibrary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MailAccount;
  v5 = [(MFAccount *)&v15 initWithoutPersistentAccount];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"CachedMailboxenLock" andDelegate:v5];
    cachedMailboxenLock = v5->_cachedMailboxenLock;
    v5->_cachedMailboxenLock = v6;

    v8 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MailAccountDeletionLock" andDelegate:0];
    deletionLock = v5->_deletionLock;
    v5->_deletionLock = v8;

    if (v4)
    {
      [(MailAccount *)v5 setLibrary:v4];
    }

    else
    {
      [(MailAccount *)v5 setupLibrary];
    }

    v5->_cachedLibraryID = -1;
    v10 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MailAccount LibraryID Lock" andDelegate:0];
    cachedLibraryIDLock = v5->_cachedLibraryIDLock;
    v5->_cachedLibraryIDLock = v10;

    v12 = [[MFWeakObjectCache alloc] initWithBlock:&__block_literal_global_17];
    messageStoresCache = v5->_messageStoresCache;
    v5->_messageStoresCache = v12;
  }

  return v5;
}

id __31__MailAccount_initWithLibrary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 account];
  v4 = [v3 getStoreForMailbox:v2 readOnly:0];

  return v4;
}

- (MailAccount)initWithLibrary:(id)a3 path:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MailAccount *)self initWithLibrary:v6];
  v9 = v8;
  if (v8)
  {
    [(MailAccount *)v8 _setPath:v7];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MailAccount;
  [(MFAccount *)&v4 dealloc];
}

+ (id)defaultPathForAccountWithHostname:(id)a3 username:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 defaultAccountDirectory];
  v9 = [a1 defaultPathNameForAccountWithHostname:v6 username:v7];
  v10 = [v8 stringByAppendingPathComponent:v9];
  v11 = [v10 mf_betterStringByResolvingSymlinksInPath];

  return v11;
}

+ (id)defaultAccountDirectory
{
  if (+[MailAccount defaultAccountDirectory]::sOnceToken != -1)
  {
    +[MailAccount defaultAccountDirectory];
  }

  v3 = +[MailAccount defaultAccountDirectory]::sMailAccountDirectory;

  return v3;
}

uint64_t __38__MailAccount_defaultAccountDirectory__block_invoke()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Mail"];
  v1 = +[MailAccount defaultAccountDirectory]::sMailAccountDirectory;
  +[MailAccount defaultAccountDirectory]::sMailAccountDirectory = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)defaultPathNameForAccountWithHostname:(id)a3 username:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CCACA8];
  v9 = [a1 accountTypeString];
  v10 = [v8 stringWithFormat:@"%@-%@@%@", v9, v7, v6];

  return v10;
}

+ (void)setGlobalPathForAccounts:(id)a3
{
  v3 = a3;
  if (__globalPathSwitch != v3)
  {
    v6 = v3;
    v4 = [v3 copy];
    v5 = __globalPathSwitch;
    __globalPathSwitch = v4;

    v3 = v6;
  }
}

- (id)path
{
  path = self->_path;
  if (!path)
  {
    v4 = objc_opt_class();
    v5 = [(MFAccount *)self hostname];
    v6 = [(MFAccount *)self username];
    v7 = [v4 defaultPathForAccountWithHostname:v5 username:v6];
    [(MailAccount *)self setPath:v7];

    path = self->_path;
  }

  v8 = path;
  v9 = __globalPathSwitch;
  if (__globalPathSwitch)
  {
    nonPersistentPath = self->_nonPersistentPath;
    if (!nonPersistentPath)
    {
      v11 = objc_opt_class();
      v12 = [(MFAccount *)self hostname];
      v13 = [(MFAccount *)self username];
      v14 = [v11 defaultPathNameForAccountWithHostname:v12 username:v13];
      v15 = [v9 stringByAppendingPathComponent:v14];
      v16 = self->_nonPersistentPath;
      self->_nonPersistentPath = v15;

      v17 = [(NSString *)self->_nonPersistentPath mf_betterStringByResolvingSymlinksInPath];
      v18 = self->_nonPersistentPath;
      self->_nonPersistentPath = v17;

      nonPersistentPath = self->_nonPersistentPath;
    }

    v19 = nonPersistentPath;

    v8 = v19;
  }

  return v8;
}

- (void)setPath:(id)a3
{
  v4 = a3;
  if ([(MailAccount *)self _setPath:?])
  {
    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

- (void)setLastKnownHostname:(id)a3
{
  v8 = a3;
  [(MailAccount *)self mf_lock];
  if (self->_lastKnownHostname == v8 || [(NSString *)v8 isEqualToString:?])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(NSString *)v8 copy];
    lastKnownHostname = self->_lastKnownHostname;
    self->_lastKnownHostname = v5;

    v4 = 1;
  }

  [(MailAccount *)self mf_unlock];
  if (v4)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"MailAccountCurrentURLDidChange" object:self];
  }
}

- (id)tildeAbbreviatedPath
{
  +[MailAccount mf_lock];
  v3 = CFArrayGetCount(_accountsSortedByPath) - 1;
  while (1)
  {
    v4 = v3;
    if (v3 == -1)
    {
      break;
    }

    v5 = CFArrayGetValueAtIndex(_accountsSortedByPath, v3);
    if (v5 == self)
    {
      v7 = CFArrayGetValueAtIndex(_sortedAccountPaths, v4);
      if ([v7 hasPrefix:@"~"])
      {
        v6 = v7;
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

    v3 = v4 - 1;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  v6 = 0;
LABEL_12:
  +[MailAccount mf_unlock];
  if (v4 == -1)
  {
    _MFLockGlobalLock();
    v8 = [(MFAccount *)self accountPropertyForKey:@"AccountPath"];
    _MFUnlockGlobalLock();
    v6 = [v8 mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];

    if ([v6 hasPrefix:@"~"])
    {
      if (v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v6 = [(NSString *)self->_path mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
  }

LABEL_18:

  return v6;
}

- (id)firstEmailAddress
{
  v2 = [(MailAccount *)self emailAddresses];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDefaultEmailAddress:(id)a3
{
  v8 = a3;
  v4 = [(MailAccount *)self defaultEmailAddress];
  if (v4 != v8)
  {
    v5 = v4;
    if (!v4)
    {
      v5 = [MEMORY[0x277CCACA8] string];
    }

    v6 = [v8 isEqualToString:v5];
    v7 = v6;
    if (v4)
    {
      if (v6)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_12;
      }
    }

    _MFLockGlobalLock();
    if (v8)
    {
      [(MFAccount *)self setAccountProperty:v8 forKey:@"defaultAddress"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"defaultAddress"];
    }

    _MFUnlockGlobalLock();
  }

LABEL_12:
}

- (id)emailAddresses
{
  v2 = [(MailAccount *)self emailAddressesDictionary];
  v3 = [v2 allKeys];
  v4 = [v3 mf_uncommentedAddressList];

  return v4;
}

- (id)emailAddressesDictionary
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"EmailAddresses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 componentsSeparatedByString:{@", "}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v10 = v3;
        v5 = 0;
        goto LABEL_21;
      }

      if (v3)
        v12 = {;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          mambaID = self->super.mambaID;
          *buf = 136315650;
          v23 = mambaID;
          v24 = 2080;
          v25 = " ";
          v26 = 2112;
          v27 = v3;
          _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, "#W %s%sReturned unhandled email addresses %@", buf, 0x20u);
        }
      }

      v5 = 0;
LABEL_20:
      v10 = 0;
      goto LABEL_21;
    }

    v4 = v3;
  }

  v5 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v5;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    v9 = MEMORY[0x277CBEC38];
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      [v6 addObject:{v9, v17}];
      if (!--v7)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5];

LABEL_21:
  v14 = v10;

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)receiveEmailAliasAddresses
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"ReceiveEmailAliasAddresses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      v7 = MEMORY[0x277CBEC38];
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{v7, v11}];
        if (!--v5)
        {
          v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (!v5)
          {
            break;
          }
        }
      }
    }

    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v4];

    v2 = v8;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)receiveEmailAliasAddressesList
{
  v2 = [(MailAccount *)self receiveEmailAliasAddresses];
  v3 = [v2 allKeys];

  return v3;
}

- (id)lastEmailAliasesSyncDate
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"LastEmailAliasesSyncDate"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEAA8];
    [v2 doubleValue];
    v5 = [v4 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLastEmailAliasesSyncDate:(id)a3
{
  v6 = a3;
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  [v6 timeIntervalSince1970];
  v5 = [v4 initWithDouble:?];
  _MFLockGlobalLock();
  [(MFAccount *)self setAccountProperty:v5 forKey:@"LastEmailAliasesSyncDate"];
  _MFUnlockGlobalLock();
}

- (id)emailAddressesAndAliases
{
  v3 = [(MailAccount *)self emailAddressesDictionary];
  v4 = [(MailAccount *)self receiveEmailAliasAddresses];
  if (v4)
  {
    if (!v3)
    {
LABEL_12:
      if (v3 | v4)
      {
        if (v3)
        {
          v9 = v3;
        }

        else
        {
          v9 = v4;
        }

        v8 = v9;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v5 = [(MailAccount *)self lastEmailAliasesSyncDate];
    v6 = v5;
    if (v5 && ([v5 timeIntervalSinceNow], v7 >= -600.0) || !-[MailAccount updateEmailAliases](self, "updateEmailAliases"))
    {
      v4 = 0;
    }

    else
    {
      v4 = [(MailAccount *)self receiveEmailAliasAddresses];
    }

    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];
  [v8 addEntriesFromDictionary:v4];
LABEL_18:

  return v8;
}

- (void)_invalidate__
{
  [objc_opt_class() disableMailboxListingNotifications];
  [(MailAccount *)self releaseAllConnections];
  [(MFLock *)self->_deletionLock lock];
  _invalidateMailboxCache(self);
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:7];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:4];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:3];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:5];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:2];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:1];
  v3 = [(MailAccount *)self library];
  [v3 invalidateAccount:self];

  [(MFLock *)self->_deletionLock unlock];
  v4 = objc_opt_class();

  [v4 enableMailboxListingNotifications:1];
}

- (void)_asynchronouslyInvalidate
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MailAccount__asynchronouslyInvalidate__block_invoke;
  block[3] = &unk_279E34528;
  block[4] = self;
  dispatch_async(v3, block);
}

+ (void)saveStateForAllAccounts
{
  +[MailAccount mf_lock];
  v2 = [0 copy];
  +[MailAccount mf_unlock];
  [v2 makeObjectsPerformSelector:sel_saveState withObject:0];
}

- (void)saveState
{
  if (self->_flags)
  {
    [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  }
}

- (void)_synchronizeMailboxListWithFileSystem
{
  v3 = [(MailAccount *)self _mailboxPathPrefix];
  v4 = [(MailAccount *)self path];
  v7 = [v4 mutableCopyWithZone:0];

  if (v3 && [v3 length])
  {
    [v7 appendString:@"/"];
    v5 = [(MailAccount *)self _mailboxPathPrefix];
    [v7 appendString:v5];
  }

  [(MailAccount *)self mf_lock];
  v6 = [(MailAccount *)self rootMailboxUid];
  [(MailAccount *)self _loadEntriesFromFileSystemPath:v7 parent:v6];

  [(MailAccount *)self mf_unlock];
  *&self->_flags &= ~0x40000u;
  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  [(MailAccount *)self resetSpecialMailboxes];
  [(MailAccount *)self emptyTrash];
}

- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization
{
  v5 = +[MFInvocationQueue sharedInvocationQueue];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Synchronizing with file system"];
  v4 = [MFMonitoredInvocation invocationWithSelector:sel__synchronizeMailboxListWithFileSystem target:self taskName:v3 priority:0 canBeCancelled:0];
  [v5 addInvocation:v4];
}

- (void)forceFetchMailboxList
{
  v5 = +[MFInvocationQueue sharedInvocationQueue];
  v3 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_resetMailboxTimer target:self];
  [v5 addInvocation:v3];

  v6 = +[MFInvocationQueue sharedInvocationQueue];
  v4 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_fetchMailboxList target:self];
  [v6 addInvocation:v4];
}

- (id)rootMailboxUid
{
  error[8] = *MEMORY[0x277D85DE8];
  v2 = self;
  if ([(MailAccount *)v2 _shouldConfigureMailboxCache])
  {
    [(MailAccount *)v2 mf_lock];
    if (!v2->_rootMailboxUid)
    {
      v3 = [(MailAccount *)v2 _copyMailboxWithParent:0 name:0 attributes:18 dictionary:0];
      rootMailboxUid = v2->_rootMailboxUid;
      v2->_rootMailboxUid = v3;

      if ([(MFMailboxUid *)v2->_rootMailboxUid type]!= 8)
      {
        [(MFMailboxUid *)v2->_rootMailboxUid setType:8];
      }
    }

    flags = v2->_flags;
    if ((*&flags & 0x20000) == 0)
    {
      v2->_flags = (*&flags | 0x20000);
      v6 = v2;
      v7 = [(MailAccount *)v6 mailboxCachePath];
      v8 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithContentsOfFile:v7 options:1 error:0];
      v9 = v8;
      if (!v6->_rootMailboxUid)
      {
        __assert_rtn("_readMailboxCache", "MailAccount.mm", 2306, "self->_rootMailboxUid");
      }

      if (v8)
      {
        error[0] = 0;
        v10 = CFPropertyListCreateWithData(0, v8, 1uLL, 0, error);
        v11 = CFDictionaryGetValue(v10, @"mboxes");
        [(MailAccount *)v6 _readCustomInfoFromMailboxCache:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MailAccount *)v6 _loadMailboxListingIntoCache:0 attributes:0 children:v11 parent:v6->_rootMailboxUid];
        }

        if (error[0])
        {
          CFRelease(error[0]);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }
    }

    [(MailAccount *)v2 mf_unlock];
  }

  else
  {
    _invalidateMailboxCache(v2);
  }

  [(MailAccount *)v2 mf_lock];
  v12 = v2->_rootMailboxUid;
  [(MailAccount *)v2 mf_unlock];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isSpecialMailbox:(id)a3
{
  v3 = a3;
  if ([v3 isStandardizedMailboxUid])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 isStore] ^ 1;
  }

  return v4;
}

- (id)specialMailboxNameForType:(int)a3
{
  if ((a3 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MFAccount *)self _objectForAccountInfoKey:off_279E35268[a3 - 1], v3];
  }

  return v5;
}

- (id)allMailboxUids
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(MailAccount *)self rootMailboxUid];
  if (v5)
  {
    [v4 addObject:v5];
  }

  while ([v4 count])
  {
    v6 = [v4 lastObject];
    v7 = [v6 mutableCopyOfChildren];
    [v3 addObjectsFromArray:v7];
    [v4 removeLastObject];
    [v4 addObjectsFromArray:v7];
  }

  v8 = [(MailAccount *)self primaryMailboxUid];
  v9 = [v3 indexOfObject:v8];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 exchangeObjectAtIndex:0 withObjectAtIndex:v9];
  }

  return v3;
}

- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [(MailAccount *)self allMailMailboxUid];
  v6 = v5;
  if (v5)
  {
    v14[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v8 = [(MailAccount *)self allMailboxUids];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke;
    v13[3] = &__block_descriptor_40_e22_B16__0__MFMailboxUid_8l;
    *&v13[4] = a3;
    v9 = [v8 vf_filter:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke_2;
    v12[3] = &__block_descriptor_40_e39_q24__0__MFMailboxUid_8__MFMailboxUid_16l;
    *&v12[4] = a3;
    v7 = [v9 sortedArrayUsingComparator:v12];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

BOOL __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  if ([v3 type] != 3 && objc_msgSend(v3, "type") != 1)
  {
    if ([v3 isStore])
    {
      v4 = *(a1 + 32);
      if (v4 == 0.0 || ([v3 suggestionsLostMessageSearchTimestamp], v4 >= v5))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

uint64_t __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) != 0.0)
  {
    [v5 suggestionsLostMessageSearchTimestamp];
    v8 = v7;
    [v6 suggestionsLostMessageSearchTimestamp];
    if (v8 < v9)
    {
      v10 = -1;
      goto LABEL_10;
    }

    [v5 suggestionsLostMessageSearchTimestamp];
    v12 = v11;
    [v6 suggestionsLostMessageSearchTimestamp];
    if (v12 > v13)
    {
      goto LABEL_6;
    }
  }

  v14 = [v5 suggestionsLostMessageSearchResultCount];
  if (v14 > [v6 suggestionsLostMessageSearchResultCount])
  {
LABEL_6:
    v10 = 1;
    goto LABEL_10;
  }

  v15 = [v5 suggestionsLostMessageSearchResultCount];
  if (v15 >= [v6 suggestionsLostMessageSearchResultCount])
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

LABEL_10:

  return v10;
}

- (id)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(MailAccount *)self firstEmailAddress];

    if (v4)
    {
      _MFLockGlobalLock();
      [(MFAccount *)self setAccountProperty:v4 forKey:@"DisplayName"];
      _MFUnlockGlobalLock();
    }

    else
    {
      v6.receiver = self;
      v6.super_class = MailAccount;
      v4 = [(MFAccount *)&v6 displayName];
    }
  }

  return v4;
}

- (id)displayNameForMailboxUid:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rootMailboxUid == v4)
  {
    v7 = [(MailAccount *)self displayName];
  }

  else
  {
    v6 = [(MFMailboxUid *)v4 name];
    v7 = [(MailAccount *)self _pathComponentForUidName:v6];
  }

  return v7;
}

- (BOOL)_resetSpecialMailboxes
{
  [(MailAccount *)self mf_lock];
  v3 = (self->_inboxMailboxUid != 0) | (2 * (self->_draftsMailboxUid != 0)) | (4 * (self->_sentMessagesMailboxUid != 0)) | (8 * (self->_trashMailboxUid != 0)) | (16 * (self->_archiveMailboxUid != 0));
  v4 = self->_junkMailboxUid != 0;
  [(MailAccount *)self mf_unlock];
  v5 = [objc_opt_class() mailboxListingNotificationAreEnabled];
  if (v5)
  {
    [objc_opt_class() disableMailboxListingNotifications];
  }

  v6 = 0;
  v7 = 0;
  v13 = v3 | (32 * v4);
  do
  {
    v8 = dword_272170098[v6];
    v9 = [(MailAccount *)self _specialMailboxUidWithType:v8 create:0];
    LOBYTE(v8) = [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:v9 forType:v8];
    ++v6;

    v7 |= v8;
  }

  while (v6 != 6);
  if (v7)
  {
    v10 = 1;
    if (!v5)
    {
      return v10;
    }

    goto LABEL_9;
  }

  [(MailAccount *)self mf_lock];
  v11 = (self->_inboxMailboxUid != 0) | (2 * (self->_draftsMailboxUid != 0)) | (4 * (self->_sentMessagesMailboxUid != 0)) | (8 * (self->_trashMailboxUid != 0)) | (16 * (self->_archiveMailboxUid != 0)) | (32 * (self->_junkMailboxUid != 0));
  [(MailAccount *)self mf_unlock];
  v10 = v13 != v11;
  if (v5)
  {
LABEL_9:
    [objc_opt_class() enableMailboxListingNotifications:v10];
  }

  return v10;
}

- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4
{
  v5 = a3;
  v6 = [v5 pathComponents];
  v7 = [v6 count];

  if (a4)
  {
    if (v7 == 1)
    {
      *a4 = 0;
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Mailbox names may not include “%@”.", @"/"];
      *a4 = v8;
    }
  }

  return v7 == 1;
}

- (BOOL)canMailboxBeRenamed:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_rootMailboxUid])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 type];
    v5 = v6 == -100 || v6 == 0;
  }

  return v5;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 parent];
  LOBYTE(self) = [(MailAccount *)self renameMailbox:v6 newName:v7 parent:v8];

  return self;
}

- (BOOL)_renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v48 = a4;
  v56 = a5;
  v53 = v8;
  v52 = [v8 fullPath];
  v9 = [v8 attributes];
  v51 = [v8 parent];
  [(MailAccount *)self mf_lock];
  v10 = [v8 depthFirstEnumerator];
  v11 = [v10 allObjects];

  v50 = v11;
  v45 = [v11 arrayByApplyingSelector:sel_URLString];
  if (v48)
  {
    v12 = [(MailAccount *)self _uidNameForPathComponent:v48];
    [v53 setName:v12];
  }

  if (v56)
  {
    [v53 setParent:v56];
  }

  [v11 makeObjectsPerformSelector:sel_flushCriteria];
  v46 = [v11 arrayByApplyingSelector:sel_URLString];
  v47 = [v53 fullPath];
  v54 = [v47 stringByDeletingLastPathComponent];
  v55 = [MEMORY[0x277CCAA00] defaultManager];
  if ((([v55 fileExistsAtPath:v54] & 1) != 0 || objc_msgSend(v55, "mf_makeCompletePath:mode:", v54, 448)) && (!objc_msgSend(v55, "fileExistsAtPath:", v52) || (v13 = objc_msgSend(v52, "fileSystemRepresentation"), v14 = objc_msgSend(v47, "fileSystemRepresentation"), rename(v13, v14, v15), !v16)))
  {
    v17 = [(MailAccount *)self library];
    v18 = [v17 renameMailboxes:v45 to:v46];

    v49 = v18;
    if ((v9 & 3) != 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    if (v19 == 1)
    {
      v20 = [v52 stringByDeletingPathExtension];

      if ([v55 fileExistsAtPath:v20])
      {
        v21 = [v20 fileSystemRepresentation];
        v22 = [v47 stringByDeletingPathExtension];
        v23 = [v22 fileSystemRepresentation];
        rename(v21, v23, v24);
        v49 = v25 == 0;
      }

      else
      {
        v49 = 1;
      }

      v52 = v20;
    }
  }

  else
  {
    v49 = 0;
  }

  [(MailAccount *)self mf_unlock];
  if (v49)
  {
    v26 = 0;
  }

  else
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = MEMORY[0x277CCACA8];
    v29 = [v52 mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
    v30 = [v28 stringWithFormat:@"Mail was unable to rename “%@”.", v29];
    v26 = [v27 errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v30];
  }

  v31 = [v26 localizedDescription];

  if (v31)
  {
    v32 = +[MFActivityMonitor currentMonitor];
    [v32 setError:v26];
  }

  if ((([v56 isEqual:v51] | !v49) & 1) == 0 && objc_msgSend(objc_opt_class(), "mailboxListingNotificationAreEnabled"))
  {
    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    v34 = [MEMORY[0x277CCAB88] notificationWithName:@"AccountMailboxListingDidChange" object:v51 userInfo:0];
    [v33 postNotification:v34];
  }

  if (v56 && (*(&self->_flags + 2) & 2) != 0 && [objc_opt_class() mailboxListingNotificationAreEnabled])
  {
    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    v36 = [MEMORY[0x277CCAB88] notificationWithName:@"AccountMailboxListingDidChange" object:v56 userInfo:0];
    [v35 postNotification:v36];
  }

  if (!v26)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v37 = v11;
    v38 = [v37 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v38)
    {
      v39 = *v58;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v58 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v57 + 1) + 8 * i);
          v42 = [MEMORY[0x277CCAB98] defaultCenter];
          [v42 postNotificationName:@"MFMailboxUidWasRenamedNotification" object:v41 userInfo:0];
        }

        v38 = [v37 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v38);
    }
  }

  [(MailAccount *)self _synchronouslyLoadListingForParent:v56];
  if (([v56 isEqual:v51] & 1) == 0)
  {
    [(MailAccount *)self _synchronouslyLoadListingForParent:v51];
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];

  v43 = *MEMORY[0x277D85DE8];
  return v49;
}

- (BOOL)deleteMailbox:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v4 = +[MFActivityMonitor currentMonitor];
  v5 = [v38 type];
  v39 = [v38 fullPath];
  v6 = [v38 depthFirstEnumerator];
  v7 = [v6 nextObject];
  v37 = v5;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = 0;
  v10 = 1;
LABEL_2:
  v11 = v9;
  while ((([v4 shouldCancel] ^ 1) & v10) == 1 && v7 != 0)
  {
    v9 = [v7 parent];

    v10 = [(MailAccount *)self _deleteMailbox:v7];
    v11 = v9;
    if (v10)
    {
      v13 = v7;
      v14 = [v13 URLString];
      [v8 addObject:v14];

      if (v6)
      {
        v7 = [v6 nextObject];
      }

      else
      {
        v7 = 0;
      }

      flags = self->_flags;
      if ((*&flags & 0x40000) == 0)
      {
        self->_flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
      }

      [v13 setParent:0];

      goto LABEL_2;
    }
  }

  if (v10)
  {
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v16 fileExistsAtPath:v39])
    {
      v17 = MFRemoveItemAtPath();

      if (v17)
        v19 = {;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          mambaID = self->super.mambaID;
          *buf = 136315650;
          v41 = mambaID;
          v42 = 2080;
          v43 = " ";
          v44 = 2112;
          v45 = v39;
          _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#W %s%sfailed to remove path %@", buf, 0x20u);
        }
      }
    }

    else
    {
    }
  }

  if ([v8 count])
  {
    v21 = [(MailAccount *)self library];
    [v21 deleteMailboxes:v8 account:self];
  }

  if (v10)
  {
    if (v37)
    {
      [(MFLock *)self->_cachedMailboxenLock lock];
      if (v37 <= 7 && ((0x5Fu >> (v37 - 1)) & 1) != 0)
      {
        v22 = *off_279E35230[v37 - 1];
        v23 = *(&self->super.super.isa + v22);
        *(&self->super.super.isa + v22) = 0;
      }

      [(MFLock *)self->_cachedMailboxenLock unlock];
    }
  }

  else
  {
    v24 = +[MFActivityMonitor currentMonitor];
    v25 = [v24 error];
    v26 = v25 == 0;

    if (v26)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = [v38 accountRelativePath];
      v29 = [v27 stringWithFormat:@"Unable to delete “%@”.", v28];

      v30 = +[MFActivityMonitor currentMonitor];
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v29];
      [v30 setError:v31];
    }
  }

  if (v11)
  {
    v32 = +[MFActivityMonitor currentMonitor];
    v33 = [v32 error];

    [(MailAccount *)self _synchronouslyLoadListingForParent:v11];
    [(MailAccount *)self mf_lock];
    [(MailAccount *)self _setChildren:0 forMailboxUid:v11];
    [(MailAccount *)self mf_unlock];
    if (v33)
    {
      v34 = +[MFActivityMonitor currentMonitor];
      [v34 setError:v33];
    }
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];

  v35 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isHostnameEquivalentTo:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self hostname];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(MFAccount *)self hostname];
    v7 = [v6 isEqualToString:v4];
  }

  return v7;
}

- (BOOL)isAccountClassEquivalentTo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (v5 == v3)
  {
    v8 = 1;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 isEqualToString:v3];
  }

  return v8;
}

- (void)setConnectionError:(id)a3
{
  v7 = a3;
  _MFLockGlobalLock();
  v5 = self->_lastConnectionError;
  objc_storeStrong(&self->_lastConnectionError, a3);
  _MFUnlockGlobalLock();
  if ((v7 != 0) == (v5 == 0))
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"AccountOfflineStatusDidChange" object:self userInfo:0];
  }
}

- (id)connectionError
{
  _MFLockGlobalLock();
  v3 = self->_lastConnectionError;
  _MFUnlockGlobalLock();

  return v3;
}

- (id)storeForMailboxUid:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_rootMailboxUid == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(MFWeakObjectCache *)self->_messageStoresCache objectForKey:v4];
    v7 = [(MailAccount *)self library];
    [v6 setLibrary:v7];
  }

  return v6;
}

- (Class)storeClassForMailbox:(id)a3
{
  v3 = [(MailAccount *)self storeClass];

  return v3;
}

- (id)_childOfMailbox:(id)a3 withComponentName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 childWithName:v6];
  if (!v7)
  {
    v7 = [v5 childWithExtraAttribute:v6];
  }

  return v7;
}

- (id)mailboxUidForRelativePath:(id)a3 create:(BOOL)a4 withOption:(int)a5
{
  v5 = a4;
  v35[1] = *MEMORY[0x277D85DE8];
  v30 = a3;
  v34 = [v30 pathComponents];
  v7 = [v34 count];
  v8 = [(MailAccount *)self rootMailboxUid];
  [(MailAccount *)self mf_lock];
  v9 = 0;
  if (v8 && v7)
  {
    v31 = 0;
    v32 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [v34 objectAtIndex:v11 - 1];
      if (v7 == v11)
      {
        v13 = [(MailAccount *)self mailboxPathExtension];
        v14 = [v12 hasSuffix:v13];

        if (v14)
        {
          v15 = [v12 stringByDeletingPathExtension];

          v12 = v15;
        }
      }

      v16 = [(MailAccount *)self _uidNameForPathComponent:v12];
      v17 = [(MailAccount *)self _childOfMailbox:v8 withComponentName:v16];

      if (!v17 && v5)
      {
        [(MailAccount *)self mf_unlock];
        if (v7 == v11)
        {
          v18 = 257;
        }

        else
        {
          v18 = 258;
        }

        v19 = [(MailAccount *)self _newMailboxWithParent:v8 name:v16 attributes:v18 dictionary:0 withCreationOption:a5];
        [(MailAccount *)self mf_lock];
        v20 = [(MailAccount *)self _childOfMailbox:v8 withComponentName:v16];
        v17 = v20;
        if (v19 && !v20)
        {
          if (v31)
          {
            v35[0] = v19;
            v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
            [v8 setChildren:v21];
          }

          else
          {
            v31 = v8;
            v22 = [v31 mutableCopyOfChildren];

            v23 = v22;
            if (!v22)
            {
              v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v32 = v23;
            [v23 addObject:v19];
          }

          v17 = v19;
          v24 = (*&self->_flags + 1);
          ++*&self->_flags;
        }
      }

      v10 = v17;

      if (!v10)
      {
        break;
      }

      v8 = v10;
    }

    while (v11++ < v7);
    if (v10)
    {
      v9 = v31;
      if (v31)
      {
        [(MailAccount *)self mf_unlock];
        [(MailAccount *)self _setChildren:v32 forMailboxUid:v31];
        v26 = v10;
        [(MailAccount *)self mf_lock];
      }

      else
      {
        v26 = v10;
      }
    }

    else
    {
      v26 = 0;
      v9 = v31;
    }
  }

  else
  {
    v26 = 0;
    v10 = v8;
    v32 = 0;
  }

  [(MailAccount *)self mf_unlock];
  v27 = v10;

  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)URLForInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"Account"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _URLForInfo:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)URLString
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{self, @"Account", &stru_288159858, @"RelativePath", 0}];
  v4 = [(MailAccount *)self _URLForInfo:v3];
  v5 = [v4 absoluteString];

  return v5;
}

- (id)mailboxUidForInfo:(id)a3
{
  v4 = [a3 objectForKey:@"RelativePath"];
  v5 = [(MailAccount *)self mailboxUidForRelativePath:v4 create:0];

  return v5;
}

+ (id)mailboxUidFromActiveAccountsForURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
    v5 = [MailAccount infoForURL:v4];
    v6 = [v5 objectForKey:@"Account"];
    v7 = [v6 mailboxUidForInfo:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mailboxUidForURL:(id)a3
{
  v4 = a3;
  if ([(MailAccount *)self ownsMailboxUidWithURL:v4])
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    v6 = [(MailAccount *)self _infoForMatchingURL:v5];
    v7 = [(MailAccount *)self mailboxUidForInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)ownsMailboxUidWithURL:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self URLString];
  v6 = [v4 hasPrefix:v5];

  return v6;
}

- (void)emptyTrash
{
  v3 = [(MailAccount *)self emptyFrequencyForMailboxType:3];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    v5 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];
    if (v5)
    {
      [(MailAccount *)self deleteMessagesFromMailboxUid:v5 olderThanNumberOfDays:v4];
    }
  }
}

- (BOOL)updateEmailAliases
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(MailAccount *)self setLastEmailAliasesSyncDate:v3];

  return 0;
}

- (int64_t)libraryID
{
  v3 = [(MailAccount *)self library];
  [(MFLock *)self->_cachedLibraryIDLock lock];
  if (self->_cachedLibraryID < 0)
  {
    v4 = [v3 libraryIDForAccount:self];
    self->_cachedLibraryID = v4;
    if (v4 < 0)
    {
      v5 = [v3 createLibraryIDForAccount:self];
      self->_cachedLibraryID = v5;
      if (v5 < 0)
      {
        __assert_rtn("[MailAccount libraryID]", "MailAccount.mm", 1707, "0 && account must have a library ID");
      }
    }
  }

  [(MFLock *)self->_cachedLibraryIDLock unlock];
  cachedLibraryID = self->_cachedLibraryID;

  return cachedLibraryID;
}

- (void)setLibrary:(id)a3
{
  v5 = a3;
  if (self->_library != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_library, a3);
    v5 = v6;
  }
}

- (id)library
{
  v14 = *MEMORY[0x277D85DE8];
  library = self->_library;
  if (!library)
    v4 = {;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->super.mambaID;
      v8 = 136315650;
      v9 = mambaID;
      v10 = 2080;
      v11 = " ";
      v12 = 2112;
      v13 = self;
      _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%@: no library!", &v8, 0x20u);
    }

    library = self->_library;
  }

  v6 = *MEMORY[0x277D85DE8];

  return library;
}

- (void)setCachePolicy:(int)a3
{
  v3 = a3;
  if ([(MailAccount *)self cachePolicy]!= a3)
  {
    if (v3 > 3)
    {
      v3 = 0;
    }

    _MFLockGlobalLock();
    [(MFAccount *)self setAccountProperty:_cachePolicyNames[v3] forKey:@"CachePolicy"];

    _MFUnlockGlobalLock();
  }
}

- (int)cachePolicy
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"CachePolicy"];
  v3 = 0;
  while (([v2 isEqualToString:_cachePolicyNames[v3]] & 1) == 0)
  {
    if (++v3 == 4)
    {
      LODWORD(v3) = 0;
      break;
    }
  }

  return v3;
}

- (id)loggingIdentifier
{
  v3 = [(MailAccount *)self statisticsKind];
  v4 = [(MFAccount *)self uniqueId];
  v5 = [v4 substringToIndex:8];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v3, v5];

  return v6;
}

- (BOOL)hasEnoughInformationForEasySetup
{
  v3 = [(MFAccount *)self hostname];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MFAccount *)self username];
  v6 = [v5 length];

  if (!v6)
  {
    return 0;
  }

  v7 = [(MFAccount *)self password];
  v8 = [v7 length] != 0;

  return v8;
}

- (BOOL)willPerformActionForChokePoint:(id)a3 coalescePoint:(id)a4 result:(id *)a5
{
  v8 = a3;
  v21 = a4;
  [(MailAccount *)self mf_lock];
  currentChokedActions = self->_currentChokedActions;
  if (!currentChokedActions)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = self->_currentChokedActions;
    self->_currentChokedActions = v10;

    currentChokedActions = self->_currentChokedActions;
  }

  v12 = [(NSMutableDictionary *)currentChokedActions objectForKey:v8];
  if (!v12)
  {
    v12 = objc_opt_new();
    [(NSMutableDictionary *)self->_currentChokedActions setObject:v12 forKey:v8];
  }

  v13 = [v12 objectForKey:@"MFMailboxDictClientCount"];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "intValue") + 1}];
  [v12 setObject:v14 forKey:@"MFMailboxDictClientCount"];
  v15 = [v12 objectForKey:@"MFMailboxDictLock"];
  v16 = v15;
  if (!v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D24EF0]) initWithName:@"ChokeLock" condition:1 andDelegate:0];
    [v12 setObject:v16 forKey:@"MFMailboxDictLock"];
  }

  [(MailAccount *)self mf_unlock];
  if (v15)
  {
    [v16 lockWhenCondition:2];
    *a5 = [v12 objectForKey:v21];
    [(MailAccount *)self mf_lock];
    v17 = [v12 objectForKey:@"MFMailboxDictClientCount"];

    v18 = [v17 intValue];
    if (v18 < 2)
    {
      [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:v8];
    }

    else
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInt:(v18 - 1)];
      [v12 setObject:v19 forKey:@"MFMailboxDictClientCount"];
    }

    [(MailAccount *)self mf_unlock];
    [v16 unlockWithCondition:2];
    v13 = v17;
  }

  else
  {
    [v16 lock];
  }

  return v15 != 0;
}

- (void)didFinishActionForChokePoint:(id)a3 coalescePoint:(id)a4 withResult:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v8 = a4;
  v9 = a5;
  [(MailAccount *)self mf_lock];
  v10 = [(NSMutableDictionary *)self->_currentChokedActions objectForKey:v19];
  v11 = [v10 objectForKey:@"MFMailboxDictLock"];
  v12 = [v10 objectForKey:@"MFMailboxDictClientCount"];
  v13 = [v12 intValue];
  if (v13 < 2)
  {
    [v11 unlock];
    [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:v19];
  }

  else
  {
    if (!v9)
      v16 = {;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        mambaID = self->super.mambaID;
        currentChokedActions = self->_currentChokedActions;
        *buf = 136315906;
        v21 = mambaID;
        v22 = 2080;
        v23 = " ";
        v24 = 2112;
        v25 = currentChokedActions;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_2720B1000, v16, OS_LOG_TYPE_DEFAULT, "#W %s%s<rdar://problem/17733540> _currentChokedActions: %@\nmailboxDict: %@", buf, 0x2Au);
      }

      __assert_rtn("[MailAccount didFinishActionForChokePoint:coalescePoint:withResult:]", "MailAccount.mm", 1932, "0");
    }

    v14 = [MEMORY[0x277CCABB0] numberWithInt:(v13 - 1)];
    [v10 setObject:v14 forKey:@"MFMailboxDictClientCount"];

    [v10 setObject:v9 forKey:v8];
    [v11 unlockWithCondition:2];
  }

  [(MailAccount *)self mf_unlock];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)pushedMailboxUids
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(MailAccount *)self primaryMailboxUid];
  v4 = [v2 setWithObject:v3];

  return v4;
}

+ (id)_accountWithPath:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 mailboxUidForFileSystemPath:v4 create:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 account];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = _accountsSortedByPath;
    v7 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 path];
          v13 = [v4 isEqualToString:v12];

          if (v13)
          {
            v7 = v11;
            goto LABEL_13;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_setPath:(id)a3
{
  v4 = a3;
  v5 = [v4 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  v6 = [v5 stringByStandardizingPath];

  if (v4 && ![(NSString *)self->_path isEqualToString:v6])
  {
    v9 = [v6 copy];
    path = self->_path;
    self->_path = v9;

    +[MailAccount mf_lock];
    v11 = _accountsSortedByPath;
    if (!_accountsSortedByPath || (v13.length = CFArrayGetCount(_accountsSortedByPath), v13.location = 0, CFArrayGetFirstIndexOfValue(v11, v13, self) != -1))
    {
      [objc_opt_class() _removeAccountFromSortedPaths:self];
      [objc_opt_class() _addAccountToSortedPaths:self];
    }

    +[MailAccount mf_unlock];
    v7 = [(MailAccount *)self tildeAbbreviatedPath];
    _MFLockGlobalLock();
    [(MFAccount *)self setAccountProperty:v7 forKey:@"AccountPath"];
    _MFUnlockGlobalLock();
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v8;
}

+ (void)setDataclassesConsideredActive:(id)a3
{
  v5 = a3;
  if (+[MailAccount setDataclassesConsideredActive:]::pred != -1)
  {
    +[MailAccount setDataclassesConsideredActive:];
  }

  [__dataclassesConsideredActiveLock lock];
  if (__dataclassesConsideredActive != v5)
  {
    v3 = [v5 copy];
    v4 = __dataclassesConsideredActive;
    __dataclassesConsideredActive = v3;
  }

  [__dataclassesConsideredActiveLock unlock];
}

uint64_t __46__MailAccount_setDataclassesConsideredActive___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"Active Dataclasses Lock" andDelegate:0];
  v1 = __dataclassesConsideredActiveLock;
  __dataclassesConsideredActiveLock = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (int)_emptyFrequencyForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(MFAccount *)self _objectForAccountInfoKey:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = [v7 isEqualToString:&stru_288159858], v9 = v7, v10))
    {
      v9 = v6;
    }
  }

  v11 = [v9 intValue];

  return v11;
}

- (BOOL)shouldFetchAgainWithError:(id)a3 foregroundRequest:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = v6;
  if (!v5)
  {
    goto LABEL_11;
  }

  if ([v6 isEqualToString:*MEMORY[0x277CCA670]])
  {
    a4 = 0;
    goto LABEL_12;
  }

  if (![v7 isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    if ([v7 isEqualToString:@"MFMessageErrorDomain"])
    {
      v8 = [v5 code];
      if ((v8 - 1032) <= 0x1B)
      {
        a4 = 0x77FFF7Eu >> (v8 - 8);
      }

      else
      {
        a4 = 1;
      }

      goto LABEL_12;
    }

LABEL_11:
    a4 = 1;
    goto LABEL_12;
  }

  if ([v5 code] != 60)
  {
    a4 = 1;
  }

LABEL_12:

  return a4;
}

- (BOOL)_loadMailboxListingIntoCache:(id)a3 attributes:(unsigned int)a4 children:(id)a5 parent:(id)a6
{
  v40 = a3;
  v42 = a5;
  v41 = a6;
  Mutable = 0;
  theArray = 0;
  v9 = 0;
  v45 = 0;
  do
  {
    ValueAtIndex = v42;
    if (v9)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
    }

    v49 = ValueAtIndex;
    v11 = v41;
    if (theArray)
    {
      v11 = CFArrayGetValueAtIndex(theArray, 0);
    }

    v47 = v11;
    v48 = [v47 mutableCopyOfChildren];
    v12 = [v49 count];
    if (v9)
    {
      CFArrayRemoveValueAtIndex(v9, 0);
    }

    if (theArray)
    {
      CFArrayRemoveValueAtIndex(theArray, 0);
    }

    v43 = v9;
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v15 = [v49 objectAtIndex:{i, v40}];
        v16 = [v15 objectForKey:@"MailboxName"];
        [v13 setObject:v15 forKey:v16];
      }
    }

    v17 = [v48 count];
    if (v17)
    {
      v18 = v17 - 1;
      do
      {
        v19 = [v48 objectAtIndex:v18];
        v20 = [v19 name];
        v21 = [v13 objectForKey:v20];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 objectForKey:@"MailboxAttributes"];
          v24 = [v23 unsignedIntValue];

          v25 = [(MailAccount *)self _copyMailboxUidWithParent:v47 name:v20 attributes:v24 existingMailboxUid:v19 dictionary:v22];
        }

        else
        {
          v25 = [(MailAccount *)self _copyMailboxUidWithParent:v47 name:0 attributes:0 existingMailboxUid:v19 dictionary:0];
        }

        v26 = v25;
        if (v25)
        {
          v27 = [v25 name];
          if (([v26 isEqual:v19] & 1) == 0)
          {
            [v48 replaceObjectAtIndex:v18 withObject:v26];
            v45 = 1;
          }

          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
          }

          CFDictionarySetValue(Mutable, v27, v26);
          if (([v27 isEqualToString:v20] & 1) == 0)
          {
            CFDictionarySetValue(Mutable, v20, v26);
          }

          v28 = v22 == 0;
        }

        else
        {
          [v48 removeObjectAtIndex:v18];
          if (v22)
          {
            v28 = -1;
          }

          else
          {
            v28 = 0;
          }

          v45 = 1;
        }

        v12 += v28;

        --v18;
      }

      while (v18 != -1);
    }

    v29 = [v49 count];
    v30 = CFArrayCreateMutable(0, v12, MEMORY[0x277CBF128]);
    v31 = v30;
    if (v48)
    {
      [(__CFArray *)v30 addObjectsFromArray:v48];
    }

    if (v29)
    {
      for (j = 0; j != v29; ++j)
      {
        v33 = [v49 objectAtIndex:j];
        v34 = [v33 objectForKey:@"MailboxName"];
        v35 = [v33 objectForKey:@"MailboxAttributes"];
        v36 = [v35 unsignedIntValue];

        v37 = [v33 objectForKey:@"MailboxChildren"];
        if (Mutable && (v38 = CFDictionaryGetValue(Mutable, v34)) != 0 || (v38 = [(MailAccount *)self _copyMailboxUidWithParent:v47 name:v34 attributes:v36 existingMailboxUid:0 dictionary:v33]) != 0)
        {
          if ([(__CFArray *)v31 indexOfObjectIdenticalTo:v38]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = 1;
            [(__CFArray *)v31 vf_insertObject:v38 usingSortFunction:_MFCompareMailboxUids context:0 allowDuplicates:1];
          }

          if (v37 && (v36 & 1) == 0)
          {
            if (!v43)
            {
              v43 = CFArrayCreateMutable(0, 0, 0);
            }

            if (!theArray)
            {
              theArray = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            }

            CFArrayAppendValue(v43, v37);
            CFArrayAppendValue(theArray, v38);
          }
        }
      }
    }

    if (Mutable)
    {
      CFDictionaryRemoveAllValues(Mutable);
    }

    v45 |= [(MailAccount *)self _cleanInboxDuplication:v31];
    if (v45)
    {
      [(MailAccount *)self _setChildren:v31 forMailboxUid:v47];
    }

    v9 = v43;
  }

  while (v43 && CFArrayGetCount(v43) > 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return v45 & 1;
}

- (id)mailboxCachePath
{
  mailboxCachePath = self->_mailboxCachePath;
  if (mailboxCachePath)
  {
    v3 = mailboxCachePath;
  }

  else
  {
    v4 = [(MailAccount *)self path];
    v3 = [v4 stringByAppendingPathComponent:@".mboxCache.plist"];
  }

  return v3;
}

- (void)setMailboxCachePath:(id)a3
{
  v5 = a3;
  if (self->_mailboxCachePath != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mailboxCachePath, a3);
    v5 = v6;
  }
}

- (void)_loadEntriesFromFileSystemPath:(id)a3 parent:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = a4;
  v7 = objc_autoreleasePoolPush();
  v32 = v6;
  v8 = [v6 length];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v31 = [v9 contentsOfDirectoryAtPath:v32 error:0];
  v29 = v7;

  theArray = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = self;
  context = v35;
  v10 = v32;
  v43 = v10;
  v33 = v30;
  v44 = v33;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v31;
  v11 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v11)
  {
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        if (([v14 hasPrefix:@"."] & 1) == 0)
        {
          v37 = 0;
          [v10 appendString:@"/"];
          [v10 appendString:v14];
          v15 = [MEMORY[0x277CCAA00] defaultManager];
          v16 = [v15 fileExistsAtPath:v10 isDirectory:&v37];
          v17 = v37;

          if ((v16 & v17) != 0)
          {
            v18 = [(MailAccount *)v35 mailboxPathExtension];
            v19 = [v14 pathExtension];
            v20 = [v18 isEqualToString:v19];

            if (v20)
            {
              v21 = [v14 stringByDeletingPathExtension];
            }

            else
            {
              v21 = v14;
            }

            v22 = v21;
            v23 = [(MailAccount *)v35 _uidNameForPathComponent:v21];

            v24 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v23, @"MailboxName", &unk_2881756F8, @"MailboxAttributes", 0}];
            [(__CFArray *)theArray addObject:v24];
          }

          [v10 deleteCharactersInRange:{v8, objc_msgSend(v10, "length") - v8}];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v11);
  }

  v25 = [v33 name];
  v26 = [(MailAccount *)v35 _loadMailboxListingIntoCache:v25 attributes:2 children:theArray parent:v33];

  if (v26)
  {
    flags = v35->_flags;
    if ((*&flags & 0x40000) == 0)
    {
      v35->_flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
    }
  }

  v47.length = [(__CFArray *)theArray count];
  v47.location = 0;
  CFArrayApplyFunction(theArray, v47, _recurseIntoFileSystem, &context);

  objc_autoreleasePoolPop(v29);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_writeMailboxCacheWithPrejudice:(BOOL)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 || ((*&self->_flags & 0xFFFEu) >= 0xA ? (v4 = (*&self->_flags & 0x40000) == 0) : (v4 = 1), !v4))
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [(MailAccount *)self path];
    v7 = [v5 fileExistsAtPath:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [(MailAccount *)self path];
      [v8 mf_makeDirectoryWithMode:448];
    }

    v9 = [(MailAccount *)self mailboxCachePath];
    [(MailAccount *)self mf_lock];
    v10 = [(MFMailboxUid *)self->_rootMailboxUid children];
    v11 = [v10 count];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
            [v12 addObject:v17];
          }

          v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);
      }

      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      CFDictionarySetValue(v18, @"mboxes", v12);
      [(MailAccount *)self _writeCustomInfoToMailboxCache:v18];
      v19 = [MEMORY[0x277CCAC58] dataWithPropertyList:v18 format:200 options:0 error:0];
      [v19 writeToFile:v9 options:1073741825 error:0];
    }

    [(MailAccount *)self mf_unlock];
    self->_flags = (*(&self->_flags + 1) << 16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4
{
  v6 = a3;
  v7 = v6;
  v8 = a4;
  v9 = [v8 mutableCopyOfChildren];
  v10 = v9;
  if (!v6)
  {
    v7 = v9;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v11 = [v8 setChildren:v7] ^ 1;
  if (!v6)
  {
    LOBYTE(v11) = 0;
  }

  if (v11)
  {
    v16 = 0;
  }

  else
  {
LABEL_14:
    if ((*(&self->_flags + 2) & 2) != 0 && [objc_opt_class() mailboxListingNotificationAreEnabled])
    {
      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      v13 = MEMORY[0x277CCAB88];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v10, @"OldChildren", v7, @"NewChildren", 0}];
      v15 = [v13 notificationWithName:@"AccountMailboxListingDidChange" object:v8 userInfo:v14];
      [v12 postNotification:v15];
    }

    v16 = 1;
  }

  return v16;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = MailAccount;
  v3 = [(MFAccount *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" path=%@", self->_path];

  return v4;
}

- (id)powerAssertionIdentifierWithPrefix:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self displayName];
  if ([v5 length])
  {
    v6 = [(MailAccount *)self displayName];
  }

  else
  {
    v6 = &stru_288159858;
  }

  v7 = [(MFAccount *)self uniqueId];
  v8 = [v4 stringByAppendingFormat:@"-%@-(%@)", v7, v6];

  return v8;
}

+ (void)_setOutboxMailboxUid:(id)a3
{
  v8 = a3;
  [a1 mf_lock];
  v5 = v8;
  if (_outboxUid != v8)
  {
    objc_storeStrong(&_outboxUid, a3);
    [_outboxUid setType:6];
    v5 = v8;
  }

  if ([v5 isValid])
  {
    v6 = [v8 account];
    v7 = [v8 parent];
    [v6 _setChildren:0 forMailboxUid:v7];
  }

  [a1 mf_unlock];
}

- (id)_defaultSpecialMailboxNameForType:(int)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_279E351F8[a3 - 1];
  }
}

- (id)_specialMailboxIvarOfType:(int)a3
{
  v3 = a3 - 1;
  if (a3 - 1) <= 6 && ((0x5Fu >> v3))
  {
    return (&self->super.super.isa + *off_279E35230[v3]);
  }

  else
  {
    return 0;
  }
}

- (void)_setSpecialMailboxName:(id)a3 forType:(int)a4
{
  v7 = a3;
  _MFLockGlobalLock();
  if ((a4 - 1) < 5)
  {
    v6 = off_279E35268[a4 - 1];
    if (v7)
    {
      [(MFAccount *)self setAccountProperty:v7 forKey:v6];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:v6];
    }
  }

  _MFUnlockGlobalLock();
}

- (BOOL)_shouldLogDeleteActivity
{
  v2 = _logDeleteActivity;
  if (_logDeleteActivity == -1)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v3 BOOLForKey:@"LogDeleteActivity"];

    _logDeleteActivity = v2;
  }

  return v2 == 1;
}

- (id)_infoForMatchingURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 relativePath];
  [v5 setObject:self forKey:@"Account"];
  v8 = [v6 rangeOfString:@"/" options:8];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 substringWithRange:{v8 + v7, objc_msgSend(v6, "length") - (v8 + v7)}];

    v6 = v9;
  }

  if (v6 && ([v6 isEqualToString:&stru_288159858] & 1) == 0)
  {
    [v5 setObject:v6 forKey:@"RelativePath"];
  }

  return v5;
}

- (id)_URLForInfo:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self _URLScheme];
  if (v5)
  {
    v6 = [(MFAccount *)self hostname];
    v7 = encodedURLComponent(v6);

    v8 = [(MFAccount *)self username];
    v9 = encodedURLComponent(v8);

    v10 = [(MFAccount *)self portNumber];
    v11 = [v4 objectForKey:@"RelativePath"];
    v12 = [v5 mutableCopy];
    [v12 appendString:@"://"];
    if (v9 && ([v9 isEqualToString:&stru_288159858] & 1) == 0)
    {
      [v12 appendString:v9];
      [v12 appendString:@"@"];
    }

    if (v7)
    {
      [v12 appendString:v7];
    }

    if (v10 && (v10 != -[MFAccount defaultPortNumber](self, "defaultPortNumber") && v10 != -[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber") || v10 == -[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber") && [v4 mf_BOOLForKey:@"IncludeDefaultSecurePortNumber"]))
    {
      [v12 appendFormat:@":%u", v10];
    }

    [v12 appendString:@"/"];
    if (v11)
    {
      v13 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
      v14 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v13];
      [v12 appendString:v14];
    }

    v15 = [MEMORY[0x277CBEBC0] URLWithString:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)uniqueServerIdForMessage:(id)a3
{
  v3 = [a3 globalMessageURL];
  v4 = [v3 absoluteString];

  return v4;
}

- (id)newMailboxWithParent:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 account];
  v9 = [v8 rootMailboxUid];
  v10 = [v6 pathRelativeToMailbox:v9];

  v11 = [v10 stringByAppendingPathComponent:v7];
  v12 = [(MailAccount *)self mailboxUidForRelativePath:v11 create:1];

  return v12;
}

+ (BOOL)canMoveMessagesFromAccount:(id)a3 toAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 == v6)
  {
    v7 = 1;
  }

  else if ([v5 restrictedFromTransferingMessagesToOtherAccounts])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 supportsAppend];
  }

  return v7;
}

- (id)moveMessages:(id)a3 fromMailbox:(id)a4 toMailbox:(id)a5 markAsRead:(BOOL)a6
{
  v6 = [MFMessageTransferResult alloc];
  v7 = [(MFMessageTransferResult *)v6 initWithResultCode:0 failedMessages:MEMORY[0x277CBEBF8] transferedMessage:MEMORY[0x277CBEBF8]];

  return v7;
}

- (id)allLocalMailboxUids
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = dword_2721700B0[v3];
    if ([(MailAccount *)self isMailboxLocalForType:v5])
    {
      v6 = [(MailAccount *)self mailboxUidOfType:v5 createIfNeeded:0];
      if (v6)
      {
        if (!v4)
        {
          v4 = [MEMORY[0x277CBEB18] array];
        }

        [v4 addObject:v6];
      }
    }

    ++v3;
  }

  while (v3 != 4);

  return v4;
}

- (id)iconString
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(MFAccount *)self accountPropertyForKey:@"AccountIcon"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"otherAccountIcon";
  }

  v5 = [(MailAccount *)self emailAddresses];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (([v11 hasSuffix:{@"@apple.com", v14}] & 1) != 0 || objc_msgSend(v11, "hasSuffix:", @".apple.com"))
          {

            v4 = @"appleAccountIcon";
            goto LABEL_17;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)signingIdentityPersistentReferenceForAddress:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"SendingIdentities"];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)encryptionIdentityPersistentReferenceForAddress:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"EncryptionIdentities"];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (BOOL)secureMIMEEnabled
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"SMIMEEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)perMessageEncryptionEnabled
{
  if (![(MFAccount *)self isManaged])
  {
    return 1;
  }

  v3 = [(MFAccount *)self accountPropertyForKey:@"PerMessageSMIMEEnabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int)secureCompositionSigningPolicyForAddress:(id)a3
{
  v4 = [a3 mf_uncommentedAddress];
  v5 = [(MailAccount *)self firstEmailAddress];
  v6 = [v5 mf_uncommentedAddress];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(MFAccount *)self accountPropertyForKey:@"SMIMESigningEnabled"];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)secureCompositionEncryptionPolicyForAddress:(id)a3
{
  v4 = [a3 mf_uncommentedAddress];
  v5 = [(MailAccount *)self firstEmailAddress];
  v6 = [v5 mf_uncommentedAddress];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(MFAccount *)self accountPropertyForKey:@"SMIMEEncryptionEnabled"];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)restrictedFromTransferingMessagesToOtherAccounts
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"MFRestrictMessageTransfersToOtherAccounts"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)restrictedFromSendingExternally
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"MFRestrictSendingFromExternalProcesses"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)restrictedFromSyncingRecents
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"Prevent Recents Syncing"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)preventArchiveForMailbox:(id)a3
{
  v4 = a3;
  v5 = ![(MailAccount *)self supportsArchiving];
  if (!v4)
  {
    LOBYTE(v5) = 1;
  }

  v6 = (v5 & 1) == 0 && [v4 type] - 1 < 5;

  return v6;
}

- (BOOL)canArchiveForMailbox:(id)a3
{
  v4 = a3;
  if ([(MailAccount *)self supportsArchiving])
  {
    v5 = ![(MailAccount *)self preventArchiveForMailbox:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (int)archiveDestinationForMailbox:(id)a3
{
  v4 = a3;
  if (![(MailAccount *)self supportsArchiving])
  {
    __assert_rtn("[MailAccount archiveDestinationForMailbox:]", "MailAccount.mm", 3058, "[self supportsArchiving] && only accounts that support archiving should call into this");
  }

  if ([(MailAccount *)self canArchiveForMailbox:v4])
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (BOOL)shouldArchiveByDefault
{
  v3 = [(MailAccount *)self supportsArchiving];
  if (v3)
  {

    LOBYTE(v3) = [(MFAccount *)self _BOOLForAccountInfoKey:@"ArchiveMessages" defaultValue:0];
  }

  return v3;
}

- (BOOL)sourceIsManaged
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ForceSourceIsManaged"];

  return v3;
}

- (BOOL)supportsContinuationType:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self unsupportedContinuationTypes];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

- (BOOL)supportsMailDrop
{
  v3.receiver = self;
  v3.super_class = MailAccount;
  return [(MFAccount *)&v3 supportsMailDrop];
}

@end
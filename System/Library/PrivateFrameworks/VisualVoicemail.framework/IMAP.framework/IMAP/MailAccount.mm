@interface MailAccount
+ (BOOL)canMoveMessagesFromAccount:(id)account toAccount:(id)toAccount;
+ (BOOL)mailboxListingNotificationAreEnabled;
+ (MailAccount)accountWithPath:(id)path;
+ (id)URLForInfo:(id)info;
+ (id)_accountContainingEmailAddress:(id)address matchingAddress:(id *)matchingAddress fullUserName:(id *)name includingInactive:(BOOL)inactive;
+ (id)_accountWithPath:(id)path;
+ (id)accountContainingEmailAddress:(id)address;
+ (id)accountThatMessageIsFrom:(id)from;
+ (id)accountUsingHeadersFromMessage:(id)message;
+ (id)addressesThatReceivedMessage:(id)message;
+ (id)defaultAccountDirectory;
+ (id)defaultPathForAccountWithHostname:(id)hostname username:(id)username;
+ (id)defaultPathNameForAccountWithHostname:(id)hostname username:(id)username;
+ (id)existingAccountForUniqueID:(id)d;
+ (id)lastMailAccountsReloadDate;
+ (id)lastMailAccountsReloadError;
+ (id)mailboxUidFromActiveAccountsForURL:(id)l;
+ (id)outboxMailboxUid;
+ (void)_addAccountToSortedPaths:(id)paths;
+ (void)_removeAccountFromSortedPaths:(id)paths;
+ (void)_setOutboxMailboxUid:(id)uid;
+ (void)_setupSortedPathsForAccounts:(id)accounts;
+ (void)disableMailboxListingNotifications;
+ (void)enableMailboxListingNotifications:(BOOL)notifications;
+ (void)initialize;
+ (void)reloadAccounts;
+ (void)saveStateForAllAccounts;
+ (void)setDataclassesConsideredActive:(id)active;
+ (void)setGlobalPathForAccounts:(id)accounts;
+ (void)setMailAccountLoadOptions:(unint64_t)options;
+ (void)updateAutoFetchSettings;
- (BOOL)_loadMailboxListingIntoCache:(id)cache attributes:(unsigned int)attributes children:(id)children parent:(id)parent;
- (BOOL)_renameMailbox:(id)mailbox newName:(id)name parent:(id)parent;
- (BOOL)_resetSpecialMailboxes;
- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid;
- (BOOL)_setPath:(id)path;
- (BOOL)_shouldLogDeleteActivity;
- (BOOL)canArchiveForMailbox:(id)mailbox;
- (BOOL)canMailboxBeRenamed:(id)renamed;
- (BOOL)deleteMailbox:(id)mailbox;
- (BOOL)hasEnoughInformationForEasySetup;
- (BOOL)isAccountClassEquivalentTo:(id)to;
- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username;
- (BOOL)isHostnameEquivalentTo:(id)to;
- (BOOL)isSpecialMailbox:(id)mailbox;
- (BOOL)isUsernameEquivalentTo:(id)to;
- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure;
- (BOOL)ownsMailboxUidWithURL:(id)l;
- (BOOL)perMessageEncryptionEnabled;
- (BOOL)preventArchiveForMailbox:(id)mailbox;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name;
- (BOOL)restrictedFromSendingExternally;
- (BOOL)restrictedFromSyncingRecents;
- (BOOL)restrictedFromTransferingMessagesToOtherAccounts;
- (BOOL)secureMIMEEnabled;
- (BOOL)shouldArchiveByDefault;
- (BOOL)shouldFetchAgainWithError:(id)error foregroundRequest:(BOOL)request;
- (BOOL)sourceIsManaged;
- (BOOL)supportsContinuationType:(id)type;
- (BOOL)supportsMailDrop;
- (BOOL)updateEmailAliases;
- (BOOL)willPerformActionForChokePoint:(id)point coalescePoint:(id)coalescePoint result:(id *)result;
- (Class)storeClassForMailbox:(id)mailbox;
- (MailAccount)initWithLibrary:(id)library;
- (MailAccount)initWithLibrary:(id)library path:(id)path;
- (id)URLString;
- (id)_URLForInfo:(id)info;
- (id)_childOfMailbox:(id)mailbox withComponentName:(id)name;
- (id)_defaultSpecialMailboxNameForType:(int)type;
- (id)_infoForMatchingURL:(id)l;
- (id)_specialMailboxIvarOfType:(int)type;
- (id)allLocalMailboxUids;
- (id)allMailboxUids;
- (id)connectionError;
- (id)description;
- (id)displayName;
- (id)displayNameForMailboxUid:(id)uid;
- (id)emailAddresses;
- (id)emailAddressesAndAliases;
- (id)emailAddressesDictionary;
- (id)encryptionIdentityPersistentReferenceForAddress:(id)address;
- (id)firstEmailAddress;
- (id)iconString;
- (id)lastEmailAliasesSyncDate;
- (id)library;
- (id)loggingIdentifier;
- (id)mailboxCachePath;
- (id)mailboxUidForInfo:(id)info;
- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create withOption:(int)option;
- (id)mailboxUidForURL:(id)l;
- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)time;
- (id)moveMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox markAsRead:(BOOL)read;
- (id)newMailboxWithParent:(id)parent name:(id)name;
- (id)path;
- (id)powerAssertionIdentifierWithPrefix:(id)prefix;
- (id)pushedMailboxUids;
- (id)receiveEmailAliasAddresses;
- (id)receiveEmailAliasAddressesList;
- (id)rootMailboxUid;
- (id)signingIdentityPersistentReferenceForAddress:(id)address;
- (id)specialMailboxNameForType:(int)type;
- (id)storeForMailboxUid:(id)uid;
- (id)tildeAbbreviatedPath;
- (id)uniqueServerIdForMessage:(id)message;
- (int)_emptyFrequencyForKey:(id)key defaultValue:(id)value;
- (int)archiveDestinationForMailbox:(id)mailbox;
- (int)cachePolicy;
- (int)secureCompositionEncryptionPolicyForAddress:(id)address;
- (int)secureCompositionSigningPolicyForAddress:(id)address;
- (int64_t)libraryID;
- (void)_asynchronouslyInvalidate;
- (void)_invalidate__;
- (void)_loadEntriesFromFileSystemPath:(id)path parent:(id)parent;
- (void)_setSpecialMailboxName:(id)name forType:(int)type;
- (void)_synchronizeMailboxListWithFileSystem;
- (void)_writeMailboxCacheWithPrejudice:(BOOL)prejudice;
- (void)dealloc;
- (void)didFinishActionForChokePoint:(id)point coalescePoint:(id)coalescePoint withResult:(id)result;
- (void)emptyTrash;
- (void)forceFetchMailboxList;
- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization;
- (void)saveState;
- (void)setCachePolicy:(int)policy;
- (void)setConnectionError:(id)error;
- (void)setDefaultEmailAddress:(id)address;
- (void)setLastEmailAliasesSyncDate:(id)date;
- (void)setLastKnownHostname:(id)hostname;
- (void)setLibrary:(id)library;
- (void)setMailboxCachePath:(id)path;
- (void)setPath:(id)path;
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

+ (void)enableMailboxListingNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  _MFLockGlobalLock();
  _disableMailboxListingNotifications = 0;
  _MFUnlockGlobalLock();
  if (notificationsCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"AccountMailboxListingDidChange" object:0 userInfo:0];
  }
}

+ (void)_addAccountToSortedPaths:(id)paths
{
  value = paths;
  path = [value path];
  v4 = [path hasPrefix:@"~"];
  v5 = path;
  v6 = v5;
  if (v4)
  {
    mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = [v5 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
    v8 = v6;
  }

  else
  {
    [value tildeAbbreviatedPath];
    v8 = mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = v6;
  }

  mf_betterStringByResolvingSymlinksInPath = [mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath mf_betterStringByResolvingSymlinksInPath];
  v10 = _sortedAccountPaths;
  v18.length = CFArrayGetCount(_sortedAccountPaths);
  v18.location = 0;
  v11 = CFArrayBSearchValues(v10, v18, mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath, MEMORY[0x277CBE560], 0);
  CFArrayInsertValueAtIndex(_sortedAccountPaths, v11, mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath);
  CFArrayInsertValueAtIndex(_accountsSortedByPath, v11, value);
  if (([mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath isEqualToString:v8] & 1) == 0)
  {
    v12 = _sortedAccountPaths;
    v19.length = CFArrayGetCount(_sortedAccountPaths);
    v19.location = 0;
    v13 = CFArrayBSearchValues(v12, v19, v8, MEMORY[0x277CBE560], 0);
    CFArrayInsertValueAtIndex(_sortedAccountPaths, v13, v8);
    CFArrayInsertValueAtIndex(_accountsSortedByPath, v13, value);
  }

  if (([mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath isEqualToString:mf_betterStringByResolvingSymlinksInPath] & 1) == 0)
  {
    v14 = _sortedAccountPaths;
    v20.length = CFArrayGetCount(_sortedAccountPaths);
    v20.location = 0;
    v15 = CFArrayBSearchValues(v14, v20, mf_betterStringByResolvingSymlinksInPath, MEMORY[0x277CBE560], 0);
    CFArrayInsertValueAtIndex(_sortedAccountPaths, v15, mf_betterStringByResolvingSymlinksInPath);
    CFArrayInsertValueAtIndex(_accountsSortedByPath, v15, value);
  }
}

+ (void)_setupSortedPathsForAccounts:(id)accounts
{
  v15 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  CFArrayRemoveAllValues(_sortedAccountPaths);
  CFArrayRemoveAllValues(_accountsSortedByPath);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = accountsCopy;
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

        [self _addAccountToSortedPaths:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)existingAccountForUniqueID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
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
        uniqueId = [v7 uniqueId];
        v9 = [uniqueId isEqualToString:dCopy];

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

+ (void)setMailAccountLoadOptions:(unint64_t)options
{
  +[MailAccount mf_lock];

  +[MailAccount mf_unlock];
}

+ (void)reloadAccounts
{
  [self disableMailboxListingNotifications];
  +[MailAccount mf_lock];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = _lastAccountsReloadDate;
  _lastAccountsReloadDate = date;

  +[MailAccount mf_unlock];

  [self enableMailboxListingNotifications:0];
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

+ (void)_removeAccountFromSortedPaths:(id)paths
{
  pathsCopy = paths;
  if (_accountsSortedByPath)
  {
    Count = CFArrayGetCount(_accountsSortedByPath);
    if (Count)
    {
      v4 = Count - 1;
      do
      {
        if (CFArrayGetValueAtIndex(_accountsSortedByPath, v4) == pathsCopy)
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

- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username
{
  toCopy = to;
  hostnameCopy = hostname;
  usernameCopy = username;
  v11 = [(MailAccount *)self isAccountClassEquivalentTo:toCopy]&& [(MailAccount *)self isHostnameEquivalentTo:hostnameCopy]&& [(MailAccount *)self isUsernameEquivalentTo:usernameCopy];

  return v11;
}

- (BOOL)isUsernameEquivalentTo:(id)to
{
  toCopy = to;
  username = [(MFAccount *)self username];
  if (username == toCopy)
  {
    v7 = 1;
  }

  else
  {
    username2 = [(MFAccount *)self username];
    v7 = [toCopy compare:username2 options:1] == 0;
  }

  return v7;
}

+ (void)updateAutoFetchSettings
{
  v2 = v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v5 = 138543362;
    v6 = callStackSymbols;
    _os_log_impl(&dword_2720B1000, v2, OS_LOG_TYPE_DEFAULT, "#I updateAutoFetchSettings was called. Backtrace:\n%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_accountContainingEmailAddress:(id)address matchingAddress:(id *)matchingAddress fullUserName:(id *)name includingInactive:(BOOL)inactive
{
  v44 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  mf_uncommentedAddress = [addressCopy mf_uncommentedAddress];
  mf_addressComment = [addressCopy mf_addressComment];
  if (([mf_addressComment isEqualToString:&stru_288159858] & 1) != 0 || objc_msgSend(mf_addressComment, "isEqualToString:", addressCopy))
  {

    mf_addressComment = 0;
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
      if (inactive || [*(*(&v38 + 1) + 8 * v30) isActive])
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        emailAddressesAndAliasesList = [v10 emailAddressesAndAliasesList];
        mf_uncommentedAddressList = [emailAddressesAndAliasesList mf_uncommentedAddressList];

        v13 = [mf_uncommentedAddressList countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v13)
        {
          v14 = *v35;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v35 != v14)
              {
                objc_enumerationMutation(mf_uncommentedAddressList);
              }

              v16 = *(*(&v34 + 1) + 8 * i);
              if (![v16 caseInsensitiveCompare:mf_uncommentedAddress])
              {
                fullUserName = [v10 fullUserName];
                v18 = fullUserName;
                if (mf_addressComment && (!fullUserName || [mf_addressComment caseInsensitiveCompare:fullUserName]))
                {
                  v19 = v10;

                  v33 = v19;
                }

                else
                {
                  if (matchingAddress)
                  {
                    v20 = v16;
                    *matchingAddress = v16;
                  }

                  if (name && v18 && ([v18 isEqualToString:&stru_288159858] & 1) == 0)
                  {
                    v21 = v18;
                    *name = v18;
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

            v13 = [mf_uncommentedAddressList countByEnumeratingWithState:&v34 objects:v42 count:16];
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

+ (id)accountContainingEmailAddress:(id)address
{
  v3 = [self _accountContainingEmailAddress:address matchingAddress:0 fullUserName:0 includingInactive:0];

  return v3;
}

+ (id)accountUsingHeadersFromMessage:(id)message
{
  messageCopy = message;
  headers = [messageCopy headers];
  if (!headers)
  {
    headers = [messageCopy headersIfAvailable];
  }

  v6 = [self accountForHeaders:headers message:messageCopy includingInactive:0];

  return v6;
}

+ (id)accountThatMessageIsFrom:(id)from
{
  fromCopy = from;
  headersIfAvailable = [fromCopy headersIfAvailable];
  v6 = [self accountForHeaders:headersIfAvailable message:fromCopy includingInactive:0];

  return v6;
}

+ (id)addressesThatReceivedMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  headersIfAvailable = [message headersIfAvailable];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  array = [MEMORY[0x277CBEB18] array];
  copyAddressListForTo = [headersIfAvailable copyAddressListForTo];
  [v4 addObjectsFromArray:copyAddressListForTo];
  copyAddressListForCc = [headersIfAvailable copyAddressListForCc];

  [v4 addObjectsFromArray:copyAddressListForCc];
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

        mf_uncommentedAddress = [*(*(&v18 + 1) + 8 * i) mf_uncommentedAddress];
        v13 = [self _accountContainingEmailAddress:mf_uncommentedAddress matchingAddress:0 fullUserName:0 includingInactive:0];
        v14 = v13 == 0;

        if (!v14)
        {
          [array addObject:mf_uncommentedAddress];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
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
    [self _setOutboxMailboxUid:v5];
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

+ (MailAccount)accountWithPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    v4 = [MailAccount _accountWithPath:pathCopy];
    mf_betterStringByResolvingSymlinksInPath = pathCopy;
    if (!v4)
    {
      mf_betterStringByResolvingSymlinksInPath = [pathCopy mf_betterStringByResolvingSymlinksInPath];

      v4 = [MailAccount _accountWithPath:mf_betterStringByResolvingSymlinksInPath];
    }
  }

  else
  {
    v4 = 0;
    mf_betterStringByResolvingSymlinksInPath = pathCopy;
  }

  return v4;
}

- (MailAccount)initWithLibrary:(id)library
{
  libraryCopy = library;
  v15.receiver = self;
  v15.super_class = MailAccount;
  initWithoutPersistentAccount = [(MFAccount *)&v15 initWithoutPersistentAccount];
  if (initWithoutPersistentAccount)
  {
    v6 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"CachedMailboxenLock" andDelegate:initWithoutPersistentAccount];
    cachedMailboxenLock = initWithoutPersistentAccount->_cachedMailboxenLock;
    initWithoutPersistentAccount->_cachedMailboxenLock = v6;

    v8 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MailAccountDeletionLock" andDelegate:0];
    deletionLock = initWithoutPersistentAccount->_deletionLock;
    initWithoutPersistentAccount->_deletionLock = v8;

    if (libraryCopy)
    {
      [(MailAccount *)initWithoutPersistentAccount setLibrary:libraryCopy];
    }

    else
    {
      [(MailAccount *)initWithoutPersistentAccount setupLibrary];
    }

    initWithoutPersistentAccount->_cachedLibraryID = -1;
    v10 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MailAccount LibraryID Lock" andDelegate:0];
    cachedLibraryIDLock = initWithoutPersistentAccount->_cachedLibraryIDLock;
    initWithoutPersistentAccount->_cachedLibraryIDLock = v10;

    v12 = [[MFWeakObjectCache alloc] initWithBlock:&__block_literal_global_17];
    messageStoresCache = initWithoutPersistentAccount->_messageStoresCache;
    initWithoutPersistentAccount->_messageStoresCache = v12;
  }

  return initWithoutPersistentAccount;
}

id __31__MailAccount_initWithLibrary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 account];
  v4 = [v3 getStoreForMailbox:v2 readOnly:0];

  return v4;
}

- (MailAccount)initWithLibrary:(id)library path:(id)path
{
  libraryCopy = library;
  pathCopy = path;
  v8 = [(MailAccount *)self initWithLibrary:libraryCopy];
  v9 = v8;
  if (v8)
  {
    [(MailAccount *)v8 _setPath:pathCopy];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MailAccount;
  [(MFAccount *)&v4 dealloc];
}

+ (id)defaultPathForAccountWithHostname:(id)hostname username:(id)username
{
  hostnameCopy = hostname;
  usernameCopy = username;
  defaultAccountDirectory = [self defaultAccountDirectory];
  v9 = [self defaultPathNameForAccountWithHostname:hostnameCopy username:usernameCopy];
  v10 = [defaultAccountDirectory stringByAppendingPathComponent:v9];
  mf_betterStringByResolvingSymlinksInPath = [v10 mf_betterStringByResolvingSymlinksInPath];

  return mf_betterStringByResolvingSymlinksInPath;
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

+ (id)defaultPathNameForAccountWithHostname:(id)hostname username:(id)username
{
  hostnameCopy = hostname;
  usernameCopy = username;
  v8 = MEMORY[0x277CCACA8];
  accountTypeString = [self accountTypeString];
  hostnameCopy = [v8 stringWithFormat:@"%@-%@@%@", accountTypeString, usernameCopy, hostnameCopy];

  return hostnameCopy;
}

+ (void)setGlobalPathForAccounts:(id)accounts
{
  accountsCopy = accounts;
  if (__globalPathSwitch != accountsCopy)
  {
    v6 = accountsCopy;
    v4 = [accountsCopy copy];
    v5 = __globalPathSwitch;
    __globalPathSwitch = v4;

    accountsCopy = v6;
  }
}

- (id)path
{
  path = self->_path;
  if (!path)
  {
    v4 = objc_opt_class();
    hostname = [(MFAccount *)self hostname];
    username = [(MFAccount *)self username];
    v7 = [v4 defaultPathForAccountWithHostname:hostname username:username];
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
      hostname2 = [(MFAccount *)self hostname];
      username2 = [(MFAccount *)self username];
      v14 = [v11 defaultPathNameForAccountWithHostname:hostname2 username:username2];
      v15 = [v9 stringByAppendingPathComponent:v14];
      v16 = self->_nonPersistentPath;
      self->_nonPersistentPath = v15;

      mf_betterStringByResolvingSymlinksInPath = [(NSString *)self->_nonPersistentPath mf_betterStringByResolvingSymlinksInPath];
      v18 = self->_nonPersistentPath;
      self->_nonPersistentPath = mf_betterStringByResolvingSymlinksInPath;

      nonPersistentPath = self->_nonPersistentPath;
    }

    v19 = nonPersistentPath;

    v8 = v19;
  }

  return v8;
}

- (void)setPath:(id)path
{
  pathCopy = path;
  if ([(MailAccount *)self _setPath:?])
  {
    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

- (void)setLastKnownHostname:(id)hostname
{
  hostnameCopy = hostname;
  [(MailAccount *)self mf_lock];
  if (self->_lastKnownHostname == hostnameCopy || [(NSString *)hostnameCopy isEqualToString:?])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(NSString *)hostnameCopy copy];
    lastKnownHostname = self->_lastKnownHostname;
    self->_lastKnownHostname = v5;

    v4 = 1;
  }

  [(MailAccount *)self mf_unlock];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MailAccountCurrentURLDidChange" object:self];
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
        mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = v7;
      }

      else
      {
        mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = 0;
      }
    }

    else
    {
      mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = 0;
    }

    v3 = v4 - 1;
    if (mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath)
    {
      goto LABEL_12;
    }
  }

  mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = 0;
LABEL_12:
  +[MailAccount mf_unlock];
  if (v4 == -1)
  {
    _MFLockGlobalLock();
    v8 = [(MFAccount *)self accountPropertyForKey:@"AccountPath"];
    _MFUnlockGlobalLock();
    mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = [v8 mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];

    if ([mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:@"~"])
    {
      if (mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = [(NSString *)self->_path mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
  }

LABEL_18:

  return mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath;
}

- (id)firstEmailAddress
{
  emailAddresses = [(MailAccount *)self emailAddresses];
  if ([emailAddresses count])
  {
    v3 = [emailAddresses objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDefaultEmailAddress:(id)address
{
  addressCopy = address;
  defaultEmailAddress = [(MailAccount *)self defaultEmailAddress];
  if (defaultEmailAddress != addressCopy)
  {
    string = defaultEmailAddress;
    if (!defaultEmailAddress)
    {
      string = [MEMORY[0x277CCACA8] string];
    }

    v6 = [addressCopy isEqualToString:string];
    v7 = v6;
    if (defaultEmailAddress)
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
    if (addressCopy)
    {
      [(MFAccount *)self setAccountProperty:addressCopy forKey:@"defaultAddress"];
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
  emailAddressesDictionary = [(MailAccount *)self emailAddressesDictionary];
  allKeys = [emailAddressesDictionary allKeys];
  mf_uncommentedAddressList = [allKeys mf_uncommentedAddressList];

  return mf_uncommentedAddressList;
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

  array = [MEMORY[0x277CBEB18] array];
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

      [array addObject:{v9, v17}];
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

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:array forKeys:v5];

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
  receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];
  allKeys = [receiveEmailAliasAddresses allKeys];

  return allKeys;
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

- (void)setLastEmailAliasesSyncDate:(id)date
{
  dateCopy = date;
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  [dateCopy timeIntervalSince1970];
  v5 = [v4 initWithDouble:?];
  _MFLockGlobalLock();
  [(MFAccount *)self setAccountProperty:v5 forKey:@"LastEmailAliasesSyncDate"];
  _MFUnlockGlobalLock();
}

- (id)emailAddressesAndAliases
{
  emailAddressesDictionary = [(MailAccount *)self emailAddressesDictionary];
  receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];
  if (receiveEmailAliasAddresses)
  {
    if (!emailAddressesDictionary)
    {
LABEL_12:
      if (emailAddressesDictionary | receiveEmailAliasAddresses)
      {
        if (emailAddressesDictionary)
        {
          v9 = emailAddressesDictionary;
        }

        else
        {
          v9 = receiveEmailAliasAddresses;
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
    lastEmailAliasesSyncDate = [(MailAccount *)self lastEmailAliasesSyncDate];
    v6 = lastEmailAliasesSyncDate;
    if (lastEmailAliasesSyncDate && ([lastEmailAliasesSyncDate timeIntervalSinceNow], v7 >= -600.0) || !-[MailAccount updateEmailAliases](self, "updateEmailAliases"))
    {
      receiveEmailAliasAddresses = 0;
    }

    else
    {
      receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];
    }

    if (!emailAddressesDictionary)
    {
      goto LABEL_12;
    }
  }

  if (!receiveEmailAliasAddresses)
  {
    goto LABEL_12;
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:emailAddressesDictionary];
  [v8 addEntriesFromDictionary:receiveEmailAliasAddresses];
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
  library = [(MailAccount *)self library];
  [library invalidateAccount:self];

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
  _mailboxPathPrefix = [(MailAccount *)self _mailboxPathPrefix];
  path = [(MailAccount *)self path];
  v7 = [path mutableCopyWithZone:0];

  if (_mailboxPathPrefix && [_mailboxPathPrefix length])
  {
    [v7 appendString:@"/"];
    _mailboxPathPrefix2 = [(MailAccount *)self _mailboxPathPrefix];
    [v7 appendString:_mailboxPathPrefix2];
  }

  [(MailAccount *)self mf_lock];
  rootMailboxUid = [(MailAccount *)self rootMailboxUid];
  [(MailAccount *)self _loadEntriesFromFileSystemPath:v7 parent:rootMailboxUid];

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
  selfCopy = self;
  if ([(MailAccount *)selfCopy _shouldConfigureMailboxCache])
  {
    [(MailAccount *)selfCopy mf_lock];
    if (!selfCopy->_rootMailboxUid)
    {
      v3 = [(MailAccount *)selfCopy _copyMailboxWithParent:0 name:0 attributes:18 dictionary:0];
      rootMailboxUid = selfCopy->_rootMailboxUid;
      selfCopy->_rootMailboxUid = v3;

      if ([(MFMailboxUid *)selfCopy->_rootMailboxUid type]!= 8)
      {
        [(MFMailboxUid *)selfCopy->_rootMailboxUid setType:8];
      }
    }

    flags = selfCopy->_flags;
    if ((*&flags & 0x20000) == 0)
    {
      selfCopy->_flags = (*&flags | 0x20000);
      v6 = selfCopy;
      mailboxCachePath = [(MailAccount *)v6 mailboxCachePath];
      v8 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithContentsOfFile:mailboxCachePath options:1 error:0];
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

    [(MailAccount *)selfCopy mf_unlock];
  }

  else
  {
    _invalidateMailboxCache(selfCopy);
  }

  [(MailAccount *)selfCopy mf_lock];
  v12 = selfCopy->_rootMailboxUid;
  [(MailAccount *)selfCopy mf_unlock];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isSpecialMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([mailboxCopy isStandardizedMailboxUid])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [mailboxCopy isStore] ^ 1;
  }

  return v4;
}

- (id)specialMailboxNameForType:(int)type
{
  if ((type - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MFAccount *)self _objectForAccountInfoKey:off_279E35268[type - 1], v3];
  }

  return v5;
}

- (id)allMailboxUids
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  rootMailboxUid = [(MailAccount *)self rootMailboxUid];
  if (rootMailboxUid)
  {
    [array2 addObject:rootMailboxUid];
  }

  while ([array2 count])
  {
    lastObject = [array2 lastObject];
    mutableCopyOfChildren = [lastObject mutableCopyOfChildren];
    [array addObjectsFromArray:mutableCopyOfChildren];
    [array2 removeLastObject];
    [array2 addObjectsFromArray:mutableCopyOfChildren];
  }

  primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
  v9 = [array indexOfObject:primaryMailboxUid];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [array exchangeObjectAtIndex:0 withObjectAtIndex:v9];
  }

  return array;
}

- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)time
{
  v14[1] = *MEMORY[0x277D85DE8];
  allMailMailboxUid = [(MailAccount *)self allMailMailboxUid];
  v6 = allMailMailboxUid;
  if (allMailMailboxUid)
  {
    v14[0] = allMailMailboxUid;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    allMailboxUids = [(MailAccount *)self allMailboxUids];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke;
    v13[3] = &__block_descriptor_40_e22_B16__0__MFMailboxUid_8l;
    *&v13[4] = time;
    v9 = [allMailboxUids vf_filter:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke_2;
    v12[3] = &__block_descriptor_40_e39_q24__0__MFMailboxUid_8__MFMailboxUid_16l;
    *&v12[4] = time;
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
    firstEmailAddress = v3;
  }

  else
  {
    firstEmailAddress = [(MailAccount *)self firstEmailAddress];

    if (firstEmailAddress)
    {
      _MFLockGlobalLock();
      [(MFAccount *)self setAccountProperty:firstEmailAddress forKey:@"DisplayName"];
      _MFUnlockGlobalLock();
    }

    else
    {
      v6.receiver = self;
      v6.super_class = MailAccount;
      firstEmailAddress = [(MFAccount *)&v6 displayName];
    }
  }

  return firstEmailAddress;
}

- (id)displayNameForMailboxUid:(id)uid
{
  uidCopy = uid;
  v5 = uidCopy;
  if (self->_rootMailboxUid == uidCopy)
  {
    displayName = [(MailAccount *)self displayName];
  }

  else
  {
    name = [(MFMailboxUid *)uidCopy name];
    displayName = [(MailAccount *)self _pathComponentForUidName:name];
  }

  return displayName;
}

- (BOOL)_resetSpecialMailboxes
{
  [(MailAccount *)self mf_lock];
  v3 = (self->_inboxMailboxUid != 0) | (2 * (self->_draftsMailboxUid != 0)) | (4 * (self->_sentMessagesMailboxUid != 0)) | (8 * (self->_trashMailboxUid != 0)) | (16 * (self->_archiveMailboxUid != 0));
  v4 = self->_junkMailboxUid != 0;
  [(MailAccount *)self mf_unlock];
  mailboxListingNotificationAreEnabled = [objc_opt_class() mailboxListingNotificationAreEnabled];
  if (mailboxListingNotificationAreEnabled)
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
    if (!mailboxListingNotificationAreEnabled)
    {
      return v10;
    }

    goto LABEL_9;
  }

  [(MailAccount *)self mf_lock];
  v11 = (self->_inboxMailboxUid != 0) | (2 * (self->_draftsMailboxUid != 0)) | (4 * (self->_sentMessagesMailboxUid != 0)) | (8 * (self->_trashMailboxUid != 0)) | (16 * (self->_archiveMailboxUid != 0)) | (32 * (self->_junkMailboxUid != 0));
  [(MailAccount *)self mf_unlock];
  v10 = v13 != v11;
  if (mailboxListingNotificationAreEnabled)
  {
LABEL_9:
    [objc_opt_class() enableMailboxListingNotifications:v10];
  }

  return v10;
}

- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure
{
  acceptableCopy = acceptable;
  pathComponents = [acceptableCopy pathComponents];
  v7 = [pathComponents count];

  if (failure)
  {
    if (v7 == 1)
    {
      *failure = 0;
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Mailbox names may not include “%@”.", @"/"];
      *failure = v8;
    }
  }

  return v7 == 1;
}

- (BOOL)canMailboxBeRenamed:(id)renamed
{
  renamedCopy = renamed;
  if ([renamedCopy isEqual:self->_rootMailboxUid])
  {
    v5 = 0;
  }

  else
  {
    type = [renamedCopy type];
    v5 = type == -100 || type == 0;
  }

  return v5;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name
{
  mailboxCopy = mailbox;
  nameCopy = name;
  parent = [mailboxCopy parent];
  LOBYTE(self) = [(MailAccount *)self renameMailbox:mailboxCopy newName:nameCopy parent:parent];

  return self;
}

- (BOOL)_renameMailbox:(id)mailbox newName:(id)name parent:(id)parent
{
  v62 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  nameCopy = name;
  parentCopy = parent;
  v53 = mailboxCopy;
  fullPath = [mailboxCopy fullPath];
  attributes = [mailboxCopy attributes];
  parent = [mailboxCopy parent];
  [(MailAccount *)self mf_lock];
  depthFirstEnumerator = [mailboxCopy depthFirstEnumerator];
  allObjects = [depthFirstEnumerator allObjects];

  v50 = allObjects;
  v45 = [allObjects arrayByApplyingSelector:sel_URLString];
  if (nameCopy)
  {
    v12 = [(MailAccount *)self _uidNameForPathComponent:nameCopy];
    [v53 setName:v12];
  }

  if (parentCopy)
  {
    [v53 setParent:parentCopy];
  }

  [allObjects makeObjectsPerformSelector:sel_flushCriteria];
  v46 = [allObjects arrayByApplyingSelector:sel_URLString];
  fullPath2 = [v53 fullPath];
  stringByDeletingLastPathComponent = [fullPath2 stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ((([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) != 0 || objc_msgSend(defaultManager, "mf_makeCompletePath:mode:", stringByDeletingLastPathComponent, 448)) && (!objc_msgSend(defaultManager, "fileExistsAtPath:", fullPath) || (v13 = objc_msgSend(fullPath, "fileSystemRepresentation"), v14 = objc_msgSend(fullPath2, "fileSystemRepresentation"), rename(v13, v14, v15), !v16)))
  {
    library = [(MailAccount *)self library];
    v18 = [library renameMailboxes:v45 to:v46];

    v49 = v18;
    if ((attributes & 3) != 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    if (v19 == 1)
    {
      stringByDeletingPathExtension = [fullPath stringByDeletingPathExtension];

      if ([defaultManager fileExistsAtPath:stringByDeletingPathExtension])
      {
        fileSystemRepresentation = [stringByDeletingPathExtension fileSystemRepresentation];
        stringByDeletingPathExtension2 = [fullPath2 stringByDeletingPathExtension];
        fileSystemRepresentation2 = [stringByDeletingPathExtension2 fileSystemRepresentation];
        rename(fileSystemRepresentation, fileSystemRepresentation2, v24);
        v49 = v25 == 0;
      }

      else
      {
        v49 = 1;
      }

      fullPath = stringByDeletingPathExtension;
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
    mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = [fullPath mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
    v30 = [v28 stringWithFormat:@"Mail was unable to rename “%@”.", mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
    v26 = [v27 errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v30];
  }

  localizedDescription = [v26 localizedDescription];

  if (localizedDescription)
  {
    v32 = +[MFActivityMonitor currentMonitor];
    [v32 setError:v26];
  }

  if ((([parentCopy isEqual:parent] | !v49) & 1) == 0 && objc_msgSend(objc_opt_class(), "mailboxListingNotificationAreEnabled"))
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v34 = [MEMORY[0x277CCAB88] notificationWithName:@"AccountMailboxListingDidChange" object:parent userInfo:0];
    [defaultCenter postNotification:v34];
  }

  if (parentCopy && (*(&self->_flags + 2) & 2) != 0 && [objc_opt_class() mailboxListingNotificationAreEnabled])
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v36 = [MEMORY[0x277CCAB88] notificationWithName:@"AccountMailboxListingDidChange" object:parentCopy userInfo:0];
    [defaultCenter2 postNotification:v36];
  }

  if (!v26)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v37 = allObjects;
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
          defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter3 postNotificationName:@"MFMailboxUidWasRenamedNotification" object:v41 userInfo:0];
        }

        v38 = [v37 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v38);
    }
  }

  [(MailAccount *)self _synchronouslyLoadListingForParent:parentCopy];
  if (([parentCopy isEqual:parent] & 1) == 0)
  {
    [(MailAccount *)self _synchronouslyLoadListingForParent:parent];
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];

  v43 = *MEMORY[0x277D85DE8];
  return v49;
}

- (BOOL)deleteMailbox:(id)mailbox
{
  v46 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v4 = +[MFActivityMonitor currentMonitor];
  type = [mailboxCopy type];
  fullPath = [mailboxCopy fullPath];
  depthFirstEnumerator = [mailboxCopy depthFirstEnumerator];
  nextObject = [depthFirstEnumerator nextObject];
  v37 = type;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  parent = 0;
  v10 = 1;
LABEL_2:
  v11 = parent;
  while ((([v4 shouldCancel] ^ 1) & v10) == 1 && nextObject != 0)
  {
    parent = [nextObject parent];

    v10 = [(MailAccount *)self _deleteMailbox:nextObject];
    v11 = parent;
    if (v10)
    {
      v13 = nextObject;
      uRLString = [v13 URLString];
      [v8 addObject:uRLString];

      if (depthFirstEnumerator)
      {
        nextObject = [depthFirstEnumerator nextObject];
      }

      else
      {
        nextObject = 0;
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
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:fullPath])
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
          v45 = fullPath;
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
    library = [(MailAccount *)self library];
    [library deleteMailboxes:v8 account:self];
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
    error = [v24 error];
    v26 = error == 0;

    if (v26)
    {
      v27 = MEMORY[0x277CCACA8];
      accountRelativePath = [mailboxCopy accountRelativePath];
      v29 = [v27 stringWithFormat:@"Unable to delete “%@”.", accountRelativePath];

      v30 = +[MFActivityMonitor currentMonitor];
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v29];
      [v30 setError:v31];
    }
  }

  if (v11)
  {
    v32 = +[MFActivityMonitor currentMonitor];
    error2 = [v32 error];

    [(MailAccount *)self _synchronouslyLoadListingForParent:v11];
    [(MailAccount *)self mf_lock];
    [(MailAccount *)self _setChildren:0 forMailboxUid:v11];
    [(MailAccount *)self mf_unlock];
    if (error2)
    {
      v34 = +[MFActivityMonitor currentMonitor];
      [v34 setError:error2];
    }
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];

  v35 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isHostnameEquivalentTo:(id)to
{
  toCopy = to;
  hostname = [(MFAccount *)self hostname];
  if (hostname == toCopy)
  {
    v7 = 1;
  }

  else
  {
    hostname2 = [(MFAccount *)self hostname];
    v7 = [hostname2 isEqualToString:toCopy];
  }

  return v7;
}

- (BOOL)isAccountClassEquivalentTo:(id)to
{
  toCopy = to;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (v5 == toCopy)
  {
    v8 = 1;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 isEqualToString:toCopy];
  }

  return v8;
}

- (void)setConnectionError:(id)error
{
  errorCopy = error;
  _MFLockGlobalLock();
  v5 = self->_lastConnectionError;
  objc_storeStrong(&self->_lastConnectionError, error);
  _MFUnlockGlobalLock();
  if ((errorCopy != 0) == (v5 == 0))
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"AccountOfflineStatusDidChange" object:self userInfo:0];
  }
}

- (id)connectionError
{
  _MFLockGlobalLock();
  v3 = self->_lastConnectionError;
  _MFUnlockGlobalLock();

  return v3;
}

- (id)storeForMailboxUid:(id)uid
{
  uidCopy = uid;
  v5 = uidCopy;
  if (!uidCopy || self->_rootMailboxUid == uidCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(MFWeakObjectCache *)self->_messageStoresCache objectForKey:uidCopy];
    library = [(MailAccount *)self library];
    [v6 setLibrary:library];
  }

  return v6;
}

- (Class)storeClassForMailbox:(id)mailbox
{
  storeClass = [(MailAccount *)self storeClass];

  return storeClass;
}

- (id)_childOfMailbox:(id)mailbox withComponentName:(id)name
{
  mailboxCopy = mailbox;
  nameCopy = name;
  v7 = [mailboxCopy childWithName:nameCopy];
  if (!v7)
  {
    v7 = [mailboxCopy childWithExtraAttribute:nameCopy];
  }

  return v7;
}

- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create withOption:(int)option
{
  createCopy = create;
  v35[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  pathComponents = [pathCopy pathComponents];
  v7 = [pathComponents count];
  rootMailboxUid = [(MailAccount *)self rootMailboxUid];
  [(MailAccount *)self mf_lock];
  v9 = 0;
  if (rootMailboxUid && v7)
  {
    v31 = 0;
    v32 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [pathComponents objectAtIndex:v11 - 1];
      if (v7 == v11)
      {
        mailboxPathExtension = [(MailAccount *)self mailboxPathExtension];
        v14 = [v12 hasSuffix:mailboxPathExtension];

        if (v14)
        {
          stringByDeletingPathExtension = [v12 stringByDeletingPathExtension];

          v12 = stringByDeletingPathExtension;
        }
      }

      v16 = [(MailAccount *)self _uidNameForPathComponent:v12];
      v17 = [(MailAccount *)self _childOfMailbox:rootMailboxUid withComponentName:v16];

      if (!v17 && createCopy)
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

        v19 = [(MailAccount *)self _newMailboxWithParent:rootMailboxUid name:v16 attributes:v18 dictionary:0 withCreationOption:option];
        [(MailAccount *)self mf_lock];
        v20 = [(MailAccount *)self _childOfMailbox:rootMailboxUid withComponentName:v16];
        v17 = v20;
        if (v19 && !v20)
        {
          if (v31)
          {
            v35[0] = v19;
            v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
            [rootMailboxUid setChildren:v21];
          }

          else
          {
            v31 = rootMailboxUid;
            mutableCopyOfChildren = [v31 mutableCopyOfChildren];

            v23 = mutableCopyOfChildren;
            if (!mutableCopyOfChildren)
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

      rootMailboxUid = v10;
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
    v10 = rootMailboxUid;
    v32 = 0;
  }

  [(MailAccount *)self mf_unlock];
  v27 = v10;

  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)URLForInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:@"Account"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _URLForInfo:infoCopy];
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
  absoluteString = [v4 absoluteString];

  return absoluteString;
}

- (id)mailboxUidForInfo:(id)info
{
  v4 = [info objectForKey:@"RelativePath"];
  v5 = [(MailAccount *)self mailboxUidForRelativePath:v4 create:0];

  return v5;
}

+ (id)mailboxUidFromActiveAccountsForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
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

- (id)mailboxUidForURL:(id)l
{
  lCopy = l;
  if ([(MailAccount *)self ownsMailboxUidWithURL:lCopy])
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
    v6 = [(MailAccount *)self _infoForMatchingURL:v5];
    v7 = [(MailAccount *)self mailboxUidForInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)ownsMailboxUidWithURL:(id)l
{
  lCopy = l;
  uRLString = [(MailAccount *)self URLString];
  v6 = [lCopy hasPrefix:uRLString];

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
  date = [MEMORY[0x277CBEAA8] date];
  [(MailAccount *)self setLastEmailAliasesSyncDate:date];

  return 0;
}

- (int64_t)libraryID
{
  library = [(MailAccount *)self library];
  [(MFLock *)self->_cachedLibraryIDLock lock];
  if (self->_cachedLibraryID < 0)
  {
    v4 = [library libraryIDForAccount:self];
    self->_cachedLibraryID = v4;
    if (v4 < 0)
    {
      v5 = [library createLibraryIDForAccount:self];
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

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  if (self->_library != libraryCopy)
  {
    v6 = libraryCopy;
    objc_storeStrong(&self->_library, library);
    libraryCopy = v6;
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
      selfCopy = self;
      _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%@: no library!", &v8, 0x20u);
    }

    library = self->_library;
  }

  v6 = *MEMORY[0x277D85DE8];

  return library;
}

- (void)setCachePolicy:(int)policy
{
  policyCopy = policy;
  if ([(MailAccount *)self cachePolicy]!= policy)
  {
    if (policyCopy > 3)
    {
      policyCopy = 0;
    }

    _MFLockGlobalLock();
    [(MFAccount *)self setAccountProperty:_cachePolicyNames[policyCopy] forKey:@"CachePolicy"];

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
  statisticsKind = [(MailAccount *)self statisticsKind];
  uniqueId = [(MFAccount *)self uniqueId];
  v5 = [uniqueId substringToIndex:8];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", statisticsKind, v5];

  return v6;
}

- (BOOL)hasEnoughInformationForEasySetup
{
  hostname = [(MFAccount *)self hostname];
  v4 = [hostname length];

  if (!v4)
  {
    return 0;
  }

  username = [(MFAccount *)self username];
  v6 = [username length];

  if (!v6)
  {
    return 0;
  }

  password = [(MFAccount *)self password];
  v8 = [password length] != 0;

  return v8;
}

- (BOOL)willPerformActionForChokePoint:(id)point coalescePoint:(id)coalescePoint result:(id *)result
{
  pointCopy = point;
  coalescePointCopy = coalescePoint;
  [(MailAccount *)self mf_lock];
  currentChokedActions = self->_currentChokedActions;
  if (!currentChokedActions)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = self->_currentChokedActions;
    self->_currentChokedActions = v10;

    currentChokedActions = self->_currentChokedActions;
  }

  v12 = [(NSMutableDictionary *)currentChokedActions objectForKey:pointCopy];
  if (!v12)
  {
    v12 = objc_opt_new();
    [(NSMutableDictionary *)self->_currentChokedActions setObject:v12 forKey:pointCopy];
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
    *result = [v12 objectForKey:coalescePointCopy];
    [(MailAccount *)self mf_lock];
    v17 = [v12 objectForKey:@"MFMailboxDictClientCount"];

    intValue = [v17 intValue];
    if (intValue < 2)
    {
      [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:pointCopy];
    }

    else
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInt:(intValue - 1)];
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

- (void)didFinishActionForChokePoint:(id)point coalescePoint:(id)coalescePoint withResult:(id)result
{
  v28 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  coalescePointCopy = coalescePoint;
  resultCopy = result;
  [(MailAccount *)self mf_lock];
  v10 = [(NSMutableDictionary *)self->_currentChokedActions objectForKey:pointCopy];
  v11 = [v10 objectForKey:@"MFMailboxDictLock"];
  v12 = [v10 objectForKey:@"MFMailboxDictClientCount"];
  intValue = [v12 intValue];
  if (intValue < 2)
  {
    [v11 unlock];
    [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:pointCopy];
  }

  else
  {
    if (!resultCopy)
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

    v14 = [MEMORY[0x277CCABB0] numberWithInt:(intValue - 1)];
    [v10 setObject:v14 forKey:@"MFMailboxDictClientCount"];

    [v10 setObject:resultCopy forKey:coalescePointCopy];
    [v11 unlockWithCondition:2];
  }

  [(MailAccount *)self mf_unlock];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)pushedMailboxUids
{
  v2 = MEMORY[0x277CBEB98];
  primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
  v4 = [v2 setWithObject:primaryMailboxUid];

  return v4;
}

+ (id)_accountWithPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [self mailboxUidForFileSystemPath:pathCopy create:0];
  v6 = v5;
  if (v5)
  {
    account = [v5 account];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = _accountsSortedByPath;
    account = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (account)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != account; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          path = [v11 path];
          v13 = [pathCopy isEqualToString:path];

          if (v13)
          {
            account = v11;
            goto LABEL_13;
          }
        }

        account = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (account)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v14 = *MEMORY[0x277D85DE8];

  return account;
}

- (BOOL)_setPath:(id)path
{
  pathCopy = path;
  mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = [pathCopy mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  stringByStandardizingPath = [mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath stringByStandardizingPath];

  if (pathCopy && ![(NSString *)self->_path isEqualToString:stringByStandardizingPath])
  {
    v9 = [stringByStandardizingPath copy];
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
    tildeAbbreviatedPath = [(MailAccount *)self tildeAbbreviatedPath];
    _MFLockGlobalLock();
    [(MFAccount *)self setAccountProperty:tildeAbbreviatedPath forKey:@"AccountPath"];
    _MFUnlockGlobalLock();
    v8 = 1;
  }

  else
  {
    tildeAbbreviatedPath = 0;
    v8 = 0;
  }

  return v8;
}

+ (void)setDataclassesConsideredActive:(id)active
{
  activeCopy = active;
  if (+[MailAccount setDataclassesConsideredActive:]::pred != -1)
  {
    +[MailAccount setDataclassesConsideredActive:];
  }

  [__dataclassesConsideredActiveLock lock];
  if (__dataclassesConsideredActive != activeCopy)
  {
    v3 = [activeCopy copy];
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

- (int)_emptyFrequencyForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(MFAccount *)self _objectForAccountInfoKey:key];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = [v7 isEqualToString:&stru_288159858], v9 = v7, v10))
    {
      v9 = valueCopy;
    }
  }

  intValue = [v9 intValue];

  return intValue;
}

- (BOOL)shouldFetchAgainWithError:(id)error foregroundRequest:(BOOL)request
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = domain;
  if (!errorCopy)
  {
    goto LABEL_11;
  }

  if ([domain isEqualToString:*MEMORY[0x277CCA670]])
  {
    request = 0;
    goto LABEL_12;
  }

  if (![v7 isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    if ([v7 isEqualToString:@"MFMessageErrorDomain"])
    {
      code = [errorCopy code];
      if ((code - 1032) <= 0x1B)
      {
        request = 0x77FFF7Eu >> (code - 8);
      }

      else
      {
        request = 1;
      }

      goto LABEL_12;
    }

LABEL_11:
    request = 1;
    goto LABEL_12;
  }

  if ([errorCopy code] != 60)
  {
    request = 1;
  }

LABEL_12:

  return request;
}

- (BOOL)_loadMailboxListingIntoCache:(id)cache attributes:(unsigned int)attributes children:(id)children parent:(id)parent
{
  cacheCopy = cache;
  childrenCopy = children;
  parentCopy = parent;
  Mutable = 0;
  theArray = 0;
  v9 = 0;
  v45 = 0;
  do
  {
    ValueAtIndex = childrenCopy;
    if (v9)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
    }

    v49 = ValueAtIndex;
    v11 = parentCopy;
    if (theArray)
    {
      v11 = CFArrayGetValueAtIndex(theArray, 0);
    }

    v47 = v11;
    mutableCopyOfChildren = [v47 mutableCopyOfChildren];
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
        v15 = [v49 objectAtIndex:{i, cacheCopy}];
        v16 = [v15 objectForKey:@"MailboxName"];
        [v13 setObject:v15 forKey:v16];
      }
    }

    v17 = [mutableCopyOfChildren count];
    if (v17)
    {
      v18 = v17 - 1;
      do
      {
        v19 = [mutableCopyOfChildren objectAtIndex:v18];
        name = [v19 name];
        v21 = [v13 objectForKey:name];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 objectForKey:@"MailboxAttributes"];
          unsignedIntValue = [v23 unsignedIntValue];

          v25 = [(MailAccount *)self _copyMailboxUidWithParent:v47 name:name attributes:unsignedIntValue existingMailboxUid:v19 dictionary:v22];
        }

        else
        {
          v25 = [(MailAccount *)self _copyMailboxUidWithParent:v47 name:0 attributes:0 existingMailboxUid:v19 dictionary:0];
        }

        v26 = v25;
        if (v25)
        {
          name2 = [v25 name];
          if (([v26 isEqual:v19] & 1) == 0)
          {
            [mutableCopyOfChildren replaceObjectAtIndex:v18 withObject:v26];
            v45 = 1;
          }

          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
          }

          CFDictionarySetValue(Mutable, name2, v26);
          if (([name2 isEqualToString:name] & 1) == 0)
          {
            CFDictionarySetValue(Mutable, name, v26);
          }

          v28 = v22 == 0;
        }

        else
        {
          [mutableCopyOfChildren removeObjectAtIndex:v18];
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
    if (mutableCopyOfChildren)
    {
      [(__CFArray *)v30 addObjectsFromArray:mutableCopyOfChildren];
    }

    if (v29)
    {
      for (j = 0; j != v29; ++j)
      {
        v33 = [v49 objectAtIndex:j];
        v34 = [v33 objectForKey:@"MailboxName"];
        v35 = [v33 objectForKey:@"MailboxAttributes"];
        unsignedIntValue2 = [v35 unsignedIntValue];

        v37 = [v33 objectForKey:@"MailboxChildren"];
        if (Mutable && (v38 = CFDictionaryGetValue(Mutable, v34)) != 0 || (v38 = [(MailAccount *)self _copyMailboxUidWithParent:v47 name:v34 attributes:unsignedIntValue2 existingMailboxUid:0 dictionary:v33]) != 0)
        {
          if ([(__CFArray *)v31 indexOfObjectIdenticalTo:v38]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = 1;
            [(__CFArray *)v31 vf_insertObject:v38 usingSortFunction:_MFCompareMailboxUids context:0 allowDuplicates:1];
          }

          if (v37 && (unsignedIntValue2 & 1) == 0)
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
    path = [(MailAccount *)self path];
    v3 = [path stringByAppendingPathComponent:@".mboxCache.plist"];
  }

  return v3;
}

- (void)setMailboxCachePath:(id)path
{
  pathCopy = path;
  if (self->_mailboxCachePath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_mailboxCachePath, path);
    pathCopy = v6;
  }
}

- (void)_loadEntriesFromFileSystemPath:(id)path parent:(id)parent
{
  v46 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  parentCopy = parent;
  v7 = objc_autoreleasePoolPush();
  v32 = pathCopy;
  v8 = [pathCopy length];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v31 = [defaultManager contentsOfDirectoryAtPath:v32 error:0];
  v29 = v7;

  theArray = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  context = selfCopy;
  v10 = v32;
  v43 = v10;
  v33 = parentCopy;
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
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v16 = [defaultManager2 fileExistsAtPath:v10 isDirectory:&v37];
          v17 = v37;

          if ((v16 & v17) != 0)
          {
            mailboxPathExtension = [(MailAccount *)selfCopy mailboxPathExtension];
            pathExtension = [v14 pathExtension];
            v20 = [mailboxPathExtension isEqualToString:pathExtension];

            if (v20)
            {
              stringByDeletingPathExtension = [v14 stringByDeletingPathExtension];
            }

            else
            {
              stringByDeletingPathExtension = v14;
            }

            v22 = stringByDeletingPathExtension;
            v23 = [(MailAccount *)selfCopy _uidNameForPathComponent:stringByDeletingPathExtension];

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

  name = [v33 name];
  v26 = [(MailAccount *)selfCopy _loadMailboxListingIntoCache:name attributes:2 children:theArray parent:v33];

  if (v26)
  {
    flags = selfCopy->_flags;
    if ((*&flags & 0x40000) == 0)
    {
      selfCopy->_flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
    }
  }

  v47.length = [(__CFArray *)theArray count];
  v47.location = 0;
  CFArrayApplyFunction(theArray, v47, _recurseIntoFileSystem, &context);

  objc_autoreleasePoolPop(v29);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_writeMailboxCacheWithPrejudice:(BOOL)prejudice
{
  v26 = *MEMORY[0x277D85DE8];
  if (prejudice || ((*&self->_flags & 0xFFFEu) >= 0xA ? (v4 = (*&self->_flags & 0x40000) == 0) : (v4 = 1), !v4))
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [(MailAccount *)self path];
    v7 = [defaultManager fileExistsAtPath:path];

    if ((v7 & 1) == 0)
    {
      path2 = [(MailAccount *)self path];
      [path2 mf_makeDirectoryWithMode:448];
    }

    mailboxCachePath = [(MailAccount *)self mailboxCachePath];
    [(MailAccount *)self mf_lock];
    children = [(MFMailboxUid *)self->_rootMailboxUid children];
    v11 = [children count];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = children;
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

            dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
            [v12 addObject:dictionaryRepresentation];
          }

          v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);
      }

      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      CFDictionarySetValue(v18, @"mboxes", v12);
      [(MailAccount *)self _writeCustomInfoToMailboxCache:v18];
      v19 = [MEMORY[0x277CCAC58] dataWithPropertyList:v18 format:200 options:0 error:0];
      [v19 writeToFile:mailboxCachePath options:1073741825 error:0];
    }

    [(MailAccount *)self mf_unlock];
    self->_flags = (*(&self->_flags + 1) << 16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid
{
  childrenCopy = children;
  v7 = childrenCopy;
  uidCopy = uid;
  mutableCopyOfChildren = [uidCopy mutableCopyOfChildren];
  v10 = mutableCopyOfChildren;
  if (!childrenCopy)
  {
    v7 = mutableCopyOfChildren;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v11 = [uidCopy setChildren:v7] ^ 1;
  if (!childrenCopy)
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
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v13 = MEMORY[0x277CCAB88];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v10, @"OldChildren", v7, @"NewChildren", 0}];
      v15 = [v13 notificationWithName:@"AccountMailboxListingDidChange" object:uidCopy userInfo:v14];
      [defaultCenter postNotification:v15];
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

- (id)powerAssertionIdentifierWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  displayName = [(MailAccount *)self displayName];
  if ([displayName length])
  {
    displayName2 = [(MailAccount *)self displayName];
  }

  else
  {
    displayName2 = &stru_288159858;
  }

  uniqueId = [(MFAccount *)self uniqueId];
  v8 = [prefixCopy stringByAppendingFormat:@"-%@-(%@)", uniqueId, displayName2];

  return v8;
}

+ (void)_setOutboxMailboxUid:(id)uid
{
  uidCopy = uid;
  [self mf_lock];
  v5 = uidCopy;
  if (_outboxUid != uidCopy)
  {
    objc_storeStrong(&_outboxUid, uid);
    [_outboxUid setType:6];
    v5 = uidCopy;
  }

  if ([v5 isValid])
  {
    account = [uidCopy account];
    parent = [uidCopy parent];
    [account _setChildren:0 forMailboxUid:parent];
  }

  [self mf_unlock];
}

- (id)_defaultSpecialMailboxNameForType:(int)type
{
  if ((type - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_279E351F8[type - 1];
  }
}

- (id)_specialMailboxIvarOfType:(int)type
{
  v3 = type - 1;
  if (type - 1) <= 6 && ((0x5Fu >> v3))
  {
    return (&self->super.super.isa + *off_279E35230[v3]);
  }

  else
  {
    return 0;
  }
}

- (void)_setSpecialMailboxName:(id)name forType:(int)type
{
  nameCopy = name;
  _MFLockGlobalLock();
  if ((type - 1) < 5)
  {
    v6 = off_279E35268[type - 1];
    if (nameCopy)
    {
      [(MFAccount *)self setAccountProperty:nameCopy forKey:v6];
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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [standardUserDefaults BOOLForKey:@"LogDeleteActivity"];

    _logDeleteActivity = v2;
  }

  return v2 == 1;
}

- (id)_infoForMatchingURL:(id)l
{
  lCopy = l;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  relativePath = [lCopy relativePath];
  [dictionary setObject:self forKey:@"Account"];
  v8 = [relativePath rangeOfString:@"/" options:8];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [relativePath substringWithRange:{v8 + v7, objc_msgSend(relativePath, "length") - (v8 + v7)}];

    relativePath = v9;
  }

  if (relativePath && ([relativePath isEqualToString:&stru_288159858] & 1) == 0)
  {
    [dictionary setObject:relativePath forKey:@"RelativePath"];
  }

  return dictionary;
}

- (id)_URLForInfo:(id)info
{
  infoCopy = info;
  _URLScheme = [(MailAccount *)self _URLScheme];
  if (_URLScheme)
  {
    hostname = [(MFAccount *)self hostname];
    v7 = encodedURLComponent(hostname);

    username = [(MFAccount *)self username];
    v9 = encodedURLComponent(username);

    portNumber = [(MFAccount *)self portNumber];
    v11 = [infoCopy objectForKey:@"RelativePath"];
    v12 = [_URLScheme mutableCopy];
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

    if (portNumber && (portNumber != -[MFAccount defaultPortNumber](self, "defaultPortNumber") && portNumber != -[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber") || portNumber == -[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber") && [infoCopy mf_BOOLForKey:@"IncludeDefaultSecurePortNumber"]))
    {
      [v12 appendFormat:@":%u", portNumber];
    }

    [v12 appendString:@"/"];
    if (v11)
    {
      uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
      v14 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
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

- (id)uniqueServerIdForMessage:(id)message
{
  globalMessageURL = [message globalMessageURL];
  absoluteString = [globalMessageURL absoluteString];

  return absoluteString;
}

- (id)newMailboxWithParent:(id)parent name:(id)name
{
  parentCopy = parent;
  nameCopy = name;
  account = [parentCopy account];
  rootMailboxUid = [account rootMailboxUid];
  v10 = [parentCopy pathRelativeToMailbox:rootMailboxUid];

  v11 = [v10 stringByAppendingPathComponent:nameCopy];
  v12 = [(MailAccount *)self mailboxUidForRelativePath:v11 create:1];

  return v12;
}

+ (BOOL)canMoveMessagesFromAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  if (accountCopy == toAccountCopy)
  {
    supportsAppend = 1;
  }

  else if ([accountCopy restrictedFromTransferingMessagesToOtherAccounts])
  {
    supportsAppend = 0;
  }

  else
  {
    supportsAppend = [toAccountCopy supportsAppend];
  }

  return supportsAppend;
}

- (id)moveMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox markAsRead:(BOOL)read
{
  v6 = [MFMessageTransferResult alloc];
  v7 = [(MFMessageTransferResult *)v6 initWithResultCode:0 failedMessages:MEMORY[0x277CBEBF8] transferedMessage:MEMORY[0x277CBEBF8]];

  return v7;
}

- (id)allLocalMailboxUids
{
  v3 = 0;
  array = 0;
  do
  {
    v5 = dword_2721700B0[v3];
    if ([(MailAccount *)self isMailboxLocalForType:v5])
    {
      v6 = [(MailAccount *)self mailboxUidOfType:v5 createIfNeeded:0];
      if (v6)
      {
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        [array addObject:v6];
      }
    }

    ++v3;
  }

  while (v3 != 4);

  return array;
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

  emailAddresses = [(MailAccount *)self emailAddresses];
  v6 = emailAddresses;
  if (emailAddresses && [emailAddresses count])
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

- (id)signingIdentityPersistentReferenceForAddress:(id)address
{
  addressCopy = address;
  v5 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"SendingIdentities"];
  v6 = [v5 objectForKey:addressCopy];

  return v6;
}

- (id)encryptionIdentityPersistentReferenceForAddress:(id)address
{
  addressCopy = address;
  v5 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"EncryptionIdentities"];
  v6 = [v5 objectForKey:addressCopy];

  return v6;
}

- (BOOL)secureMIMEEnabled
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"SMIMEEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)perMessageEncryptionEnabled
{
  if (![(MFAccount *)self isManaged])
  {
    return 1;
  }

  v3 = [(MFAccount *)self accountPropertyForKey:@"PerMessageSMIMEEnabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int)secureCompositionSigningPolicyForAddress:(id)address
{
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  firstEmailAddress = [(MailAccount *)self firstEmailAddress];
  mf_uncommentedAddress2 = [firstEmailAddress mf_uncommentedAddress];
  v7 = [mf_uncommentedAddress isEqualToString:mf_uncommentedAddress2];

  if (v7)
  {
    v8 = [(MFAccount *)self accountPropertyForKey:@"SMIMESigningEnabled"];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int)secureCompositionEncryptionPolicyForAddress:(id)address
{
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  firstEmailAddress = [(MailAccount *)self firstEmailAddress];
  mf_uncommentedAddress2 = [firstEmailAddress mf_uncommentedAddress];
  v7 = [mf_uncommentedAddress isEqualToString:mf_uncommentedAddress2];

  if (v7)
  {
    v8 = [(MFAccount *)self accountPropertyForKey:@"SMIMEEncryptionEnabled"];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)restrictedFromTransferingMessagesToOtherAccounts
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"MFRestrictMessageTransfersToOtherAccounts"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)restrictedFromSendingExternally
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"MFRestrictSendingFromExternalProcesses"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)restrictedFromSyncingRecents
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"Prevent Recents Syncing"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)preventArchiveForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = ![(MailAccount *)self supportsArchiving];
  if (!mailboxCopy)
  {
    LOBYTE(v5) = 1;
  }

  v6 = (v5 & 1) == 0 && [mailboxCopy type] - 1 < 5;

  return v6;
}

- (BOOL)canArchiveForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([(MailAccount *)self supportsArchiving])
  {
    v5 = ![(MailAccount *)self preventArchiveForMailbox:mailboxCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (int)archiveDestinationForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if (![(MailAccount *)self supportsArchiving])
  {
    __assert_rtn("[MailAccount archiveDestinationForMailbox:]", "MailAccount.mm", 3058, "[self supportsArchiving] && only accounts that support archiving should call into this");
  }

  if ([(MailAccount *)self canArchiveForMailbox:mailboxCopy])
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
  supportsArchiving = [(MailAccount *)self supportsArchiving];
  if (supportsArchiving)
  {

    LOBYTE(supportsArchiving) = [(MFAccount *)self _BOOLForAccountInfoKey:@"ArchiveMessages" defaultValue:0];
  }

  return supportsArchiving;
}

- (BOOL)sourceIsManaged
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ForceSourceIsManaged"];

  return v3;
}

- (BOOL)supportsContinuationType:(id)type
{
  typeCopy = type;
  unsupportedContinuationTypes = [(MailAccount *)self unsupportedContinuationTypes];
  v6 = [unsupportedContinuationTypes containsObject:typeCopy];

  return v6 ^ 1;
}

- (BOOL)supportsMailDrop
{
  v3.receiver = self;
  v3.super_class = MailAccount;
  return [(MFAccount *)&v3 supportsMailDrop];
}

@end
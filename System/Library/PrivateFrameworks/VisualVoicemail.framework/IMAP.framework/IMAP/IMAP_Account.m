@interface IMAP_Account
+ (void)_deleteQueuedMailboxes:(id)a3;
- (BOOL)_deleteMailbox:(id)a3;
- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4;
- (BOOL)canFetch;
- (BOOL)canMailboxBeDeleted:(id)a3;
- (BOOL)connectAndAuthenticate:(id)a3;
- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5;
- (BOOL)getMailboxListWithConnection:(id)a3 statusDataItems:(id)a4 statusEntriesByMailbox:(id *)a5;
- (BOOL)hasPendingOfflineOperations;
- (BOOL)isMailboxLocalForType:(int)a3;
- (BOOL)isSpecialMailbox:(id)a3;
- (BOOL)needToSynchronizeMailboxCaches;
- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (BOOL)storeMailboxTypeOnServer:(int)a3;
- (BOOL)verifyESearchSupportWithBlock:(id)a3;
- (IMAP_Account)initWithLibrary:(id)a3;
- (id)_fileSystemServerPathPrefix;
- (id)_infoForMatchingURL:(id)a3;
- (id)_listingForMailboxUid:(id)a3 listAllChildren:(BOOL)a4 onlySubscribed:(BOOL)a5 statusDataItems:(id)a6 withConnection:(id)a7 statusEntriesByMailbox:(id *)a8;
- (id)_mailboxPathPrefix;
- (id)_mailboxUidForName:(id)a3;
- (id)_nameForMailboxUid:(id)a3;
- (id)_pathComponentForUidName:(id)a3;
- (id)_uidNameForPathComponent:(id)a3;
- (id)allMailMailboxUid;
- (id)connectionForStore:(id)a3 delegate:(id)a4 options:(unsigned int)a5;
- (id)errorForResponse:(id)a3;
- (id)fetchLimits;
- (id)flagChangesForMailboxPath:(id)a3 UID:(unsigned int)a4 connectTime:(double)a5;
- (id)hostname;
- (id)lastKnownCapabilities;
- (id)nameForMailboxUid:(id)a3;
- (id)offlineCache;
- (id)offlineCacheDirectoryPath;
- (id)offlineCacheIfExists;
- (id)offlineCacheIfOffline;
- (id)separatorChar;
- (id)serverPathPrefix;
- (id)serverPathPrefixAccountValue;
- (id)specialUseAttributeForType:(int)a3;
- (id)specialUseAttributesForMailbox:(id)a3;
- (unint64_t)greatestInboxUid;
- (unsigned)readBufferSize;
- (void)_didSynchronizeMailboxCachesAndFoundChanges:(BOOL)a3;
- (void)_flushOfflineCache;
- (void)_mailboxesWereRemovedFromTree:(id)a3 withFileSystemPaths:(id)a4;
- (void)_purgeStaleFlagChanges;
- (void)_readCustomInfoFromMailboxCache:(id)a3;
- (void)_releaseAllConnectionsAndCallSuper:(BOOL)a3 edgeForcedOnly:(BOOL)a4 ifIdleForTimeInterval:(double)a5 saveOfflineCache:(BOOL)a6;
- (void)_renameLocalSpecialMailboxesToName:(id)a3;
- (void)_setCapabilities:(id)a3;
- (void)_synchronizeAccountWithServer;
- (void)_synchronouslyLoadListingForParent:(id)a3;
- (void)_updateSeparatorAndNamespaceWithConnection:(id)a3;
- (void)_waitForMailboxListingLoadToComplete;
- (void)_writeCustomInfoToMailboxCache:(id)a3;
- (void)checkInConnection:(id)a3 destroy:(BOOL)a4;
- (void)checkInConnectionsForStore:(id)a3;
- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id *)a5;
- (void)connectionDidDisconnect:(id)a3;
- (void)dealloc;
- (void)filterMailboxList:(id)a3 forMailbox:(id)a4 options:(int)a5;
- (void)flushOfflineCache;
- (void)handleAlertResponse:(id)a3;
- (void)messagesAdded:(id)a3;
- (void)networkChanged;
- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization;
- (void)releaseAllForcedConnections;
- (void)removeFlagChanges:(id)a3 forMessages:(id)a4;
- (void)removeFlagChangesCommittedBefore:(double)a3;
- (void)saveState;
- (void)setAllowsPartialDownloads:(BOOL)a3;
- (void)setCommitTime:(double)a3 forConnectionTag:(unsigned int)a4;
- (void)setDisplayName:(id)a3;
- (void)setHandlerForOfflineCacheFlush:(id)a3;
- (void)setIsOffline:(BOOL)a3;
- (void)setLibrary:(id)a3;
- (void)setServerPathPrefix:(id)a3 shouldSync:(BOOL)a4;
- (void)throttledGetMailboxListWithConnection:(id)a3;
- (void)unselectMailbox:(id)a3;
@end

@implementation IMAP_Account

- (IMAP_Account)initWithLibrary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = IMAP_Account;
  v5 = [(MailAccount *)&v20 initWithLibrary:v4];
  v6 = v5;
  if (v5)
  {
    *(v5 + 312) |= 2u;
    v5->_greatestInboxUid = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [objc_alloc(MEMORY[0x277D24FA8]) initWithName:@"flagChangesLock" andDelegate:v5];
    flagChangesLock = v6->_flagChangesLock;
    v6->_flagChangesLock = v7;

    v9 = [objc_alloc(MEMORY[0x277D24FA8]) initWithName:@"connectionLock" andDelegate:v6];
    connectionLock = v6->_connectionLock;
    v6->_connectionLock = v9;

    v11 = objc_alloc(MEMORY[0x277CBEA60]);
    v12 = [v11 initWithObjects:{v6->_connectionLock, v6->_flagChangesLock, *MEMORY[0x277D24EB8], 0}];
    lockOrderingArray = v6->_lockOrderingArray;
    v6->_lockOrderingArray = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    eSearchSupportedLock = v6->_eSearchSupportedLock;
    v6->_eSearchSupportedLock = v14;

    *(v6 + 344) &= ~1u;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__1;
    v18[4] = __Block_byref_object_dispose__1;
    v19 = v6;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __32__IMAP_Account_initWithLibrary___block_invoke;
    v17[3] = &unk_279E34BF8;
    v17[4] = v18;
    [(IMAP_Account *)v19 setHandlerForOfflineCacheFlush:v17];
    _Block_object_dispose(v18, 8);
  }

  return v6;
}

- (void)messagesAdded:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = [a3 userInfo];
  v4 = [v15 objectForKey:@"mailboxes"];
  if ([v4 count])
  {
    v14 = [v4 lastObject];
    if ([v14 type] == 7)
    {
      v5 = [v14 account];

      if (v5 == self)
      {
        [v15 objectForKey:@"messages"];
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v6 = v17 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          v8 = *v17;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v16 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v11 = [v10 uid];
                greatestInboxUid = self->_greatestInboxUid;
                if (greatestInboxUid < v11)
                {
                  greatestInboxUid = [v10 uid];
                }

                self->_greatestInboxUid = greatestInboxUid;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v7);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (unint64_t)greatestInboxUid
{
  result = self->_greatestInboxUid;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(MailAccount *)self primaryMailboxUid];
    v5 = [(MailAccount *)self library];
    v6 = [v4 URLString];
    self->_greatestInboxUid = [v5 maximumRemoteIDForMailbox:v6];

    return self->_greatestInboxUid;
  }

  return result;
}

- (void)_readCustomInfoFromMailboxCache:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"separator"];
  v6 = [v4 objectForKey:@"namespace"];
  _MFLockGlobalLock();
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isEqualToString:&stru_288159858] & 1) == 0)
    {
      v7 = [v5 copyWithZone:0];
      separatorChar = self->_separatorChar;
      self->_separatorChar = v7;
    }
  }

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 isEqualToString:&stru_288159858] & 1) == 0)
    {
      objc_storeStrong(&self->_serverNamespace, v6);
    }
  }

  if (!self->_lastKnownCapabilities)
  {
    v9 = [v4 objectForKey:@"capabilities"];
    lastKnownCapabilities = self->_lastKnownCapabilities;
    self->_lastKnownCapabilities = v9;
  }

  _MFUnlockGlobalLock();
  v11.receiver = self;
  v11.super_class = IMAP_Account;
  [(MailAccount *)&v11 _readCustomInfoFromMailboxCache:v4];
}

- (void)_writeCustomInfoToMailboxCache:(id)a3
{
  v4 = a3;
  _MFLockGlobalLock();
  separatorChar = self->_separatorChar;
  if (separatorChar)
  {
    [v4 setObject:separatorChar forKey:@"separator"];
  }

  serverNamespace = self->_serverNamespace;
  if (serverNamespace)
  {
    [v4 setObject:serverNamespace forKey:@"namespace"];
  }

  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (lastKnownCapabilities)
  {
    [v4 setObject:lastKnownCapabilities forKey:@"capabilities"];
  }

  _MFUnlockGlobalLock();
  v8.receiver = self;
  v8.super_class = IMAP_Account;
  [(MailAccount *)&v8 _writeCustomInfoToMailboxCache:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  cachedConnections = self->_cachedConnections;
  if (cachedConnections)
  {
    CFRelease(cachedConnections);
  }

  mailboxesToSynchronize = self->_mailboxesToSynchronize;
  if (mailboxesToSynchronize)
  {
    CFRelease(mailboxesToSynchronize);
  }

  [(IMAP_Account *)self setHandlerForOfflineCacheFlush:0];
  v6.receiver = self;
  v6.super_class = IMAP_Account;
  [(MailAccount *)&v6 dealloc];
}

- (void)saveState
{
  v3 = [(IMAP_Account *)self offlineCacheIfExists];
  [v3 saveChanges];

  v4.receiver = self;
  v4.super_class = IMAP_Account;
  [(MailAccount *)&v4 saveState];
}

- (id)hostname
{
  v5.receiver = self;
  v5.super_class = IMAP_Account;
  v3 = [(MFAccount *)&v5 hostname];
  [(MailAccount *)self setLastKnownHostname:v3];

  return v3;
}

- (void)setDisplayName:(id)a3
{
  v4 = a3;
  [(IMAP_Account *)self _renameLocalSpecialMailboxesToName:v4];
  v5.receiver = self;
  v5.super_class = IMAP_Account;
  [(MFAccount *)&v5 setDisplayName:v4];
}

- (BOOL)needToSynchronizeMailboxCaches
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DaysBetweenSyncs"];
  v4 = [v3 intValue];

  if (!v4)
  {
    return 1;
  }

  v5 = [(MFAccount *)self _objectForAccountInfoKey:@"DateOfLastSync"];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v8 = [v7 dateByAddingUnit:64 value:-30 toDate:v6 options:0];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v7 components:16 fromDate:v8 toDate:v9 options:0];

  v11 = [v10 day] >= v4;
  return v11;
}

- (void)_didSynchronizeMailboxCachesAndFoundChanges:(BOOL)a3
{
  v3 = a3;
  _MFLockGlobalLock();
  v5 = [MEMORY[0x277CBEAA8] date];
  [(MFAccount *)self setAccountProperty:v5 forKey:@"DateOfLastSync"];

  _MFUnlockGlobalLock();
  v6 = [(MFAccount *)self _objectForAccountInfoKey:@"DaysBetweenSyncs"];
  v7 = [v6 unsignedIntValue];

  if (!v7)
  {
    v8 = 7;
    goto LABEL_15;
  }

  if (!v3)
  {
    if (v7 <= 6)
    {
      v8 = v7 + 1;
      goto LABEL_15;
    }

    if (v7 >= 0x1C)
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 + 7;
    }

LABEL_14:
    if (v7 == v8)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v7 < 8)
  {
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    goto LABEL_14;
  }

  v8 = v7 - 7;
LABEL_15:
  _MFLockGlobalLock();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  [(MFAccount *)self setAccountProperty:v9 forKey:@"DaysBetweenSyncs"];

  _MFUnlockGlobalLock();
}

- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4
{
  v5.receiver = self;
  v5.super_class = IMAP_Account;
  return [(MailAccount *)&v5 _setChildren:a3 forMailboxUid:a4];
}

- (BOOL)storeMailboxTypeOnServer:(int)a3
{
  v3 = 0;
  do
  {
    v6 = *&_storeOnServer[v3];
    v7 = *&_storeOnServer[v3 + 4];
    if (v6 == a3)
    {
      break;
    }

    v4 = v3 == 24;
    v3 += 6;
  }

  while (!v4);
  return _storeOnServerForTuple(self, &v6);
}

- (void)handleAlertResponse:(id)a3
{
  v11 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = [(MailAccount *)self displayName];
  v6 = [v4 stringWithFormat:@"The IMAP server for “%@” wishes to alert you to the following:\n\n%@", v5, v11];

  _MFLockGlobalLock();
  v7 = [IMAP_Account handleAlertResponse:]::_handledAlerts;
  if (![IMAP_Account handleAlertResponse:]::_handledAlerts)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = [IMAP_Account handleAlertResponse:]::_handledAlerts;
    [IMAP_Account handleAlertResponse:]::_handledAlerts = v8;

    v7 = [IMAP_Account handleAlertResponse:]::_handledAlerts;
  }

  if ([v7 containsObject:v6])
  {

    v6 = 0;
  }

  else
  {
    [-[IMAP_Account handleAlertResponse:]::_handledAlerts addObject:v6];
  }

  _MFUnlockGlobalLock();
  if (v6)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v6 title:@"Warning" userInfo:0];
    [(MailAccount *)self setConnectionError:v10];
  }
}

- (id)errorForResponse:(id)a3
{
  v3 = a3;
  if (([v3 isResponseWithCode:17] & 1) != 0 || objc_msgSend(v3, "isAlertResponse"))
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1039 localizedDescription:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)readBufferSize
{
  readBufferSize = self->_readBufferSize;
  if (!readBufferSize)
  {
    readBufferSize = 0x2000;
    self->_readBufferSize = 0x2000;
  }

  return readBufferSize;
}

- (void)setAllowsPartialDownloads:(BOOL)a3
{
  v3 = a3;
  _MFLockGlobalLock();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:!v3];
  [(MFAccount *)self setAccountProperty:v5 forKey:@"PreventDismemberment"];

  _MFUnlockGlobalLock();
}

- (BOOL)connectAndAuthenticate:(id)a3
{
  v4 = a3;
  v5 = *(self + 312);
  v6 = +[MFActivityMonitor currentMonitor];
  v7 = [v4 connectionState];
  if ((v7 - 2) >= 2)
  {
    v8 = (v5 >> 1) & 1;
    if (v7)
    {
      if (v7 == 1)
      {
        v9 = 0;
        goto LABEL_5;
      }
    }

    else if (([v6 shouldCancel] & 1) == 0)
    {
      if (([v4 connectUsingAccount:self] & 1) == 0)
      {
        v16 = [v6 error];
        v13 = v16;
        if (!v16 || ([v16 mf_isUserCancelledError] & 1) != 0)
        {
          v8 = 0;
          v10 = 0;
          goto LABEL_22;
        }

        v10 = [v6 error];
LABEL_21:
        v8 = 1;
LABEL_22:

        if (v10)
        {
          v14 = +[MFNetworkController sharedInstance];
          v15 = [v14 isNetworkUp];

          if (v15)
          {
            if (([v10 mf_isUserCancelledError] & 1) == 0)
            {
              [(MailAccount *)self setConnectionError:v10];
            }
          }
        }

LABEL_12:
        v11 = 0;
        if ((v8 ^ ((*(self + 312) & 2) == 0)))
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      v9 = 1;
LABEL_5:
      if ([v4 authenticateUsingAccount:self])
      {
        [(MailAccount *)self setConnectionError:0];
        if (v9)
        {
          [(IMAP_Account *)self _updateSeparatorAndNamespaceWithConnection:v4];
          [(IMAP_Account *)self throttledGetMailboxListWithConnection:v4];
        }

        goto LABEL_8;
      }

      v10 = [v6 error];
      if ([(MFAccount *)self shouldEnableAfterError:v10])
      {
        [(MFAccount *)self enableAccount];
      }

      if (!v10)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:0];
        [v6 setError:v10];
      }

      v13 = [(MFAccount *)self preferredAuthScheme];
      [(MFAccount *)self reportAuthenticationError:v10 authScheme:v13];
      goto LABEL_21;
    }

    v10 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v10 = 0;
  v11 = 1;
  if ((*(self + 312) & 2) == 0)
  {
    goto LABEL_15;
  }

  v8 = 0;
LABEL_13:
  [(IMAP_Account *)self setIsOffline:v8];
  if ((v8 & 1) == 0)
  {
    [v4 setReadBufferSize:{-[IMAP_Account readBufferSize](self, "readBufferSize")}];
  }

LABEL_15:

  return v11;
}

- (id)connectionForStore:(id)a3 delegate:(id)a4 options:(unsigned int)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v66 = a4;
  v63 = v6;
  v64 = [v6 mailboxUid];
  if (v6)
  {
    v7 = [v6 mailboxName];
    if (!v7)
    {
      v7 = [(IMAP_Account *)self _nameForMailboxUid:v64];
      if (!v7)
        v8 = {;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [IMAP_Account connectionForStore:v6 delegate:v8 options:?];
        }

        v68 = 0;
        goto LABEL_126;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v69 = v7;
  while (2)
  {
    v9 = self;
    v68 = v69;
    v11 = v10 = v66;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = v9->super.super.mambaID;
      *buf = 136316930;
      *&buf[4] = mambaID;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2112;
      v71 = self;
      *v72 = 2112;
      *&v72[2] = v69;
      v73 = 2112;
      v74 = v66;
      v75 = 1024;
      v76 = a5 & 1;
      v77 = 1024;
      v78 = (a5 >> 3) & 1;
      v79 = 1024;
      v80 = (a5 >> 2) & 1;
      _os_log_impl(&dword_2720B1000, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s_getPotentialConnectionForMailbox : account:%@ mailboxName:%@, delegate:%@, createIfNeeded:%d, dontCareAboutMailbox:%d, lock:%d", buf, 0x46u);
    }

    v13 = +[MFActivityMonitor currentMonitor];
    [v13 setError:0];

    [(NSRecursiveLock *)v9->_connectionLock lock];
    [(IMAP_Account *)v9 mf_lock];
    cachedConnections = v9->_cachedConnections;
    if (a5)
    {
      if (cachedConnections)
      {
        goto LABEL_15;
      }

      *buf = 0;
      *&buf[8] = *(MEMORY[0x277CBF128] + 8);
      v71 = *(MEMORY[0x277CBF128] + 24);
      *v72 = 0;
      cachedConnections = CFArrayCreateMutable(0, 0, buf);
      v9->_cachedConnections = cachedConnections;
    }

    if (!cachedConnections)
    {
      v15 = 0;
      goto LABEL_17;
    }

LABEL_15:
    cachedConnections = CFArrayGetCount(cachedConnections);
    v15 = cachedConnections;
    v16 = LABEL_17:;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v9->super.super.mambaID;
      *buf = 136315650;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      v71 = v15;
      _os_log_impl(&dword_2720B1000, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s_getPotentialConnectionForMailbox : %lu cached connections", buf, 0x20u);
    }

    if (v15)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = CFArrayGetValueAtIndex(v9->_cachedConnections, v18);
        v21 = objc_claimAutoreleasedReturnValue();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v9->super.super.mambaID;
          *buf = 136315906;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2048;
          v71 = v18;
          *v72 = 2112;
          *&v72[2] = v20;
          _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sconnection %lu: %@", buf, 0x2Au);
        }

        v23 = [(_anonymous_namespace_::staticLogger_t *)v20 delegate];
        v24 = v23;
        if (v23 != v10)
        {
          break;
        }

        if ((a5 & 4) != 0)
        {
          v25 = [(_anonymous_namespace_::staticLogger_t *)v20 mf_tryLock];

          if ((v25 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
        }

        v8 = v20;
        v19 = v18;
LABEL_31:

        if (++v18 >= v15 || v8)
        {
          if (v8)
          {
            goto LABEL_34;
          }

          v39 = 0;
          while (1)
          {
            v40 = CFArrayGetValueAtIndex(v9->_cachedConnections, v39);
            v41 = [v40 delegate];
            if (v41)
            {
            }

            else if ((a5 & 4) == 0 || [v40 mf_tryLock])
            {
              if (v69)
              {
                v42 = [v40 selectedMailbox];
                v43 = [v42 isEqualToString:v68];

                if (v43)
                {
LABEL_81:
                  v8 = v40;
                  if ((a5 & 4) == 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_82;
                }
              }

              else
              {
                if ((a5 & 8) != 0)
                {
                  goto LABEL_81;
                }

                v44 = [v40 selectedMailbox];
                v45 = v44 == 0;

                if (v45)
                {
                  goto LABEL_81;
                }
              }

              v8 = 0;
              if ((a5 & 4) == 0)
              {
                goto LABEL_68;
              }

LABEL_82:
              if (v8)
              {
                goto LABEL_68;
              }

              [v40 mf_unlock];
            }

            v8 = 0;
LABEL_68:
            v27 = v8 == 0;
            if (v8)
            {
              v19 = v39;
            }

            if (++v39 >= v15 || !v27)
            {
              goto LABEL_36;
            }
          }
        }
      }

LABEL_25:
      v8 = 0;
      goto LABEL_31;
    }

    v19 = 0;
    v8 = 0;
    v27 = 1;
LABEL_36:
    v26 = 0;
    if ((a5 & 1) == 0 || !v27)
    {
      goto LABEL_55;
    }

    if (!v69 || !v15)
    {
LABEL_50:
      v31 = v8 = [(MFAccount *)v9 _newConnection];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v9->super.super.mambaID;
        *buf = 136315650;
        *&buf[4] = v32;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2112;
        v71 = v8;
        _os_log_impl(&dword_2720B1000, v31, OS_LOG_TYPE_DEFAULT, "#I %s%screated new connection: %@", buf, 0x20u);
      }

      if ((a5 & 4) != 0)
      {
        [v8 mf_lock];
      }

      [v8 setTag:v9->_nextConnectionTag++];
      [v8 setMailboxListFilter:v9];
      CFArrayAppendValue(v9->_cachedConnections, v8);
      v26 = 1;
      v19 = v15;
      goto LABEL_55;
    }

    v28 = 0;
    do
    {
      v29 = CFArrayGetValueAtIndex(v9->_cachedConnections, v28);
      v30 = [v29 delegate];
      if (v30)
      {
      }

      else if ((a5 & 4) == 0 || [v29 mf_tryLock])
      {
        v8 = v29;
        v19 = v28;
        goto LABEL_47;
      }

      v8 = 0;
LABEL_47:

      ++v28;
    }

    while (v28 < v15 && !v8);
    if (!v8)
    {
      goto LABEL_50;
    }

LABEL_34:
    v26 = 0;
LABEL_55:
    [(IMAP_Account *)v9 mf_unlock];
    if (!v8)
    {
      goto LABEL_102;
    }

    if ((a5 & 1) == 0)
    {
      if ([v8 connectionState]>= 2)
      {
        goto LABEL_91;
      }

LABEL_85:
      v38 = 0;
      goto LABEL_88;
    }

    v33 = MFUserAgent();
    v34 = [v33 isMobileMail];

    if (!v34)
    {
      if ([(IMAP_Account *)v9 connectAndAuthenticate:v8])
      {
        goto LABEL_91;
      }

      goto LABEL_85;
    }

    CFArrayRemoveValueAtIndex(v9->_cachedConnections, v19);
    [(NSRecursiveLock *)v9->_connectionLock unlock];
    v35 = [(IMAP_Account *)v9 connectAndAuthenticate:v8];
    [(NSRecursiveLock *)v9->_connectionLock lock];
    Mutable = v9->_cachedConnections;
    if (!Mutable)
    {
      *buf = 0;
      *&buf[8] = *(MEMORY[0x277CBF128] + 8);
      v71 = *(MEMORY[0x277CBF128] + 24);
      *v72 = 0;
      Mutable = CFArrayCreateMutable(0, 0, buf);
      v9->_cachedConnections = Mutable;
    }

    CFArrayAppendValue(Mutable, v8);
    if ([v8 isCellularConnection])
    {
      v37 = +[MFNetworkController sharedInstance];
      v38 = [v37 isFatPipe];
    }

    else
    {
      v38 = 0;
    }

    if ((v38 | !v35))
    {
LABEL_88:
      if ((a5 & 4) != 0)
      {
        [v8 mf_unlock];
      }

      [(IMAP_Account *)v9 checkInConnection:v8 destroy:v38];
      goto LABEL_100;
    }

LABEL_91:
    offlineCache = v9->_offlineCache;
    if (!offlineCache)
    {
      v47 = [objc_allocWithZone(MFIMAPOperationCache) initWithIMAPAccount:v9];
      v48 = v9->_offlineCache;
      v9->_offlineCache = v47;

      offlineCache = v9->_offlineCache;
    }

    if ([(MFIMAPOperationCache *)offlineCache hasPendingOfflineOperations])
    {
      [(MFIMAPOperationCache *)v9->_offlineCache performDeferredOperationsWithConnection:v8];
    }

    if ([v8 isValid])
    {
      v49 = v9->_offlineCache;
      v9->_offlineCache = 0;
    }

    else
    {
      if ((a5 & 4) != 0)
      {
        [v8 mf_unlock];
      }

      [(IMAP_Account *)v9 checkInConnection:v8];
LABEL_100:
      v49 = v8;
      v8 = 0;
    }

LABEL_102:
    if (v69)
    {
      v50 = [v8 selectedMailbox];
      v51 = [v8 delegate];
      v52 = 1;
      if (v51 == v10 && v50)
      {
        v52 = [v68 isEqualToString:v50] ^ 1;
      }
    }

    else
    {
      v52 = 0;
    }

    [v8 setDelegate:v10];
    [(NSRecursiveLock *)v9->_connectionLock unlock];

    if (v8)
    {
      if ((a5 & 0x10) != 0)
      {
        v53 = v26;
      }

      else
      {
        v53 = 1;
      }

      if ((v53 & 1) == 0)
      {
        [v8 noop];
      }

      if (v52)
      {
        if ((a5 & 2) == 0)
        {
          if ([v8 selectMailbox:v68 withAccount:v9])
          {
            [(IMAP_Account *)v9 setCommitTime:[v8 tag] forConnectionTag:CFAbsoluteTimeGetCurrent()];
            break;
          }

LABEL_119:
          if ((a5 & 4) != 0)
          {
            [v8 mf_unlock];
          }

          if (![v8 isValid])
          {
            [(IMAP_Account *)v9 checkInConnection:v8];

            if (v26)
            {
LABEL_127:
              v8 = 0;
              break;
            }

            continue;
          }

          v54 = +[MFActivityMonitor currentMonitor];
          v55 = [v54 error];

          if (v55)
          {
            v56 = MEMORY[0x277CCACA8];
            v57 = [v64 displayName];
            v58 = [v56 stringWithFormat:@"Unable to open “%@”", v57];
            v59 = [v55 setShortDescription:v58];

            v60 = +[MFActivityMonitor currentMonitor];
            [v60 setError:v59];
          }

LABEL_126:

          goto LABEL_127;
        }

        if (([v8 examineMailbox:v68]& 1) == 0)
        {
          goto LABEL_119;
        }
      }
    }

    break;
  }

  v61 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_purgeStaleFlagChanges
{
  v23 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  [(IMAP_Account *)self mf_lock];
  cachedConnections = self->_cachedConnections;
  if (cachedConnections)
  {
    Count = CFArrayGetCount(cachedConnections);
    if (Count)
    {
      v5 = Count;
      Current = CFAbsoluteTimeGetCurrent();
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v8 = CFArrayGetValueAtIndex(self->_cachedConnections, i);
          [v8 connectTime];
          if (v9 < Current)
          {
            [v8 connectTime];
            Current = v10;
          }
        }
      }

      [(IMAP_Account *)self mf_unlock];
      [(IMAP_Account *)self removeFlagChangesCommittedBefore:Current];
      goto LABEL_14;
    }

    v11 = self->_cachedConnections;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v12 = self->_cachedConnections = 0;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->super.super.mambaID;
    v14 = [(MFAccount *)self vf_publicDescription];
    v17 = 136315650;
    v18 = mambaID;
    v19 = 2080;
    v20 = " ";
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges removing all changes: %{public}@", &v17, 0x20u);
  }

  recentFlagChanges = self->_recentFlagChanges;
  self->_recentFlagChanges = 0;

LABEL_14:
  [(NSRecursiveLock *)self->_flagChangesLock unlock];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)checkInConnection:(id)a3 destroy:(BOOL)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    goto LABEL_25;
  }

  [(NSRecursiveLock *)self->_connectionLock lock];
  if (![v6 mf_tryLock])
  {
    goto LABEL_13;
  }

  [v6 setDelegate:0];
  v7 = [v6 connectionState];
  [v6 mf_unlock];
  [(IMAP_Account *)self mf_lock];
  if ([v6 gotBadResponse])
  {
    [(IMAP_Account *)self _setCapabilities:0];
  }

  if (a4)
  {
    v8 = 0;
    v9 = 1;
    goto LABEL_15;
  }

  if (!self->_cachedConnections)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if ((v7 - 2) >= 2)
  {
    v9 = 0;
    if (!v7)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_15;
    }

    if (v7 == 1)
    {
      v9 = 1;
      goto LABEL_12;
    }

LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  v25 = [v6 selectedMailbox];
  Count = CFArrayGetCount(self->_cachedConnections);
  if (Count < 1)
  {
    v9 = 0;
    v8 = 1;
    goto LABEL_37;
  }

  v9 = 0;
  v15 = 1;
  while (1)
  {
    v16 = CFArrayGetValueAtIndex(self->_cachedConnections, v15 - 1);
    v17 = v16;
    if (v16 != v6)
    {
      break;
    }

    v21 = 0;
LABEL_32:

    if (v15 < Count)
    {
      ++v15;
      if (!v21)
      {
        continue;
      }
    }

    v8 = !v21;
    goto LABEL_37;
  }

  v18 = [v16 selectedMailbox];
  v19 = [v18 isEqual:v25];

  if (!v19)
  {
    v20 = [v17 delegate];
    v21 = v20 == 0;

    v9 |= v21;
    goto LABEL_32;
  }

  v8 = 0;
  v9 = 1;
LABEL_37:
  v22 = [(MailAccount *)self _shouldLogDeleteActivity];
  if (v22)
    v23 = {;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->super.super.mambaID;
      *buf = 136315906;
      v27 = mambaID;
      v28 = 2080;
      v29 = " ";
      v30 = 2112;
      v31 = v25;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_2720B1000, v23, OS_LOG_TYPE_DEFAULT, "#W %s%sUnselected connection checked back in, mailbox: %@, connection: %@", buf, 0x2Au);
    }
  }

LABEL_15:
  [(IMAP_Account *)self mf_unlock];
  if (v9)
  {
    if ([v6 logout])
    {
      -[IMAP_Account setCommitTime:forConnectionTag:](self, "setCommitTime:forConnectionTag:", [v6 tag], CFAbsoluteTimeGetCurrent());
    }

    [v6 disconnectAndNotifyDelegate:0 reason:"IMAP_Account-> should logout"];
  }

  if (!((self->_cachedConnections == 0) | v8 & 1))
  {
    [(IMAP_Account *)self mf_lock];
    v10 = CFArrayGetCount(self->_cachedConnections);
    v11 = v6;
    while (1)
    {
      v35.location = 0;
      v35.length = v10;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_cachedConnections, v35, v11);
      if (FirstIndexOfValue == -1)
      {
        break;
      }

      CFArrayRemoveValueAtIndex(self->_cachedConnections, FirstIndexOfValue);
      --v10;
    }

    [(IMAP_Account *)self mf_unlock];
    [(IMAP_Account *)self _purgeStaleFlagChanges];
  }

  [(NSRecursiveLock *)self->_connectionLock unlock];
LABEL_25:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)checkInConnectionsForStore:(id)a3
{
  v13 = a3;
  if (v13 && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAP_Account *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v6 = 0;
      for (i = 0; i != Count; ++i)
      {
        v8 = CFArrayGetValueAtIndex(self->_cachedConnections, i);
        v9 = [v8 delegate];

        if (v9 == v13)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB18] array];
          }

          [v6 addObject:v8];
        }
      }
    }

    else
    {
      v6 = 0;
    }

    [(IMAP_Account *)self mf_unlock];
    v10 = [v6 count];
    if (v10 >= 1)
    {
      for (j = 0; j != v10; ++j)
      {
        v12 = [v6 objectAtIndex:j];
        [(IMAP_Account *)self checkInConnection:v12];
      }
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }
}

- (BOOL)verifyESearchSupportWithBlock:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_eSearchSupportedLock lock];
  eSearchSupported = self->_eSearchSupported;
  if (eSearchSupported)
  {
    LOBYTE(v6) = [(NSNumber *)eSearchSupported BOOLValue];
  }

  else
  {
    v6 = v4[2](v4);
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v8 = self->_eSearchSupported;
    self->_eSearchSupported = v7;
  }

  [(NSLock *)self->_eSearchSupportedLock unlock];

  return v6;
}

- (void)unselectMailbox:(id)a3
{
  v14 = a3;
  if (v14 && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAP_Account *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = CFArrayGetValueAtIndex(self->_cachedConnections, v6);
        v9 = [v8 selectedMailbox];
        v10 = v9;
        if (v9 && [v9 isEqualToString:v14])
        {
          if (!v7)
          {
            v7 = [MEMORY[0x277CBEB18] array];
          }

          [v7 addObject:v8];
          CFArrayRemoveValueAtIndex(self->_cachedConnections, v6);
          --Count;
        }

        else
        {
          ++v6;
        }
      }

      while (v6 < Count);
    }

    else
    {
      v7 = 0;
    }

    [(IMAP_Account *)self mf_unlock];
    v11 = [v7 count];
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = [v7 objectAtIndex:i];
        if ([v13 isValid] && objc_msgSend(v13, "logout"))
        {
          -[IMAP_Account setCommitTime:forConnectionTag:](self, "setCommitTime:forConnectionTag:", [v13 tag], CFAbsoluteTimeGetCurrent());
        }

        [v13 disconnectAndNotifyDelegate:1 reason:"IMAP_Account-> unselected mailbox"];
      }
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }
}

- (void)filterMailboxList:(id)a3 forMailbox:(id)a4 options:(int)a5
{
  v9 = a3;
  v5 = [v9 count];
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      v7 = [v9 objectAtIndex:v6];
      v8 = [v7 objectForKey:@"MailboxName"];
      if ([v8 isEqualToString:@"Apple Mail To Do"])
      {
        [v9 removeObjectAtIndex:v6];
      }

      --v6;
    }

    while (v6 != -1);
  }
}

- (void)_releaseAllConnectionsAndCallSuper:(BOOL)a3 edgeForcedOnly:(BOOL)a4 ifIdleForTimeInterval:(double)a5 saveOfflineCache:(BOOL)a6
{
  v58 = a6;
  v59 = a3;
  v7 = a4;
  v9 = v83 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->super.super.mambaID;
    v11 = [MEMORY[0x277CCACC8] isMainThread];
    v12 = objc_opt_class();
    v13 = @"BT";
    *buf = 136316930;
    v68 = mambaID;
    v69 = 2080;
    v70 = " ";
    if (v11)
    {
      v13 = @"MT";
    }

    v71 = 2112;
    v72 = v13;
    v14 = @"YES";
    v73 = 2112;
    v74 = v12;
    if (v59)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v75 = 2112;
    if (v7)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v76 = v15;
    if (!v58)
    {
      v14 = @"NO";
    }

    v77 = 2112;
    v78 = v16;
    v79 = 2048;
    v80 = a5;
    v81 = 2112;
    v82 = v14;
    v17 = v12;
    _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s#Network %@: [%@ _releaseAllConnectionsAndCallSuper:%@]", buf, 0x52u);
  }

  v65[0] = @"method";
  v65[1] = @"edgeOnly";
  v66[0] = @"_releaseAllConnectionsAndCallSuper";
  v18 = asNSStringBOOL(v7);
  v66[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  [MFPowerController powerlog:@"IMAP_Account" eventData:v19];

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(IMAP_Account *)self mf_lock];
    if (self->_cachedConnections)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __105__IMAP_Account__releaseAllConnectionsAndCallSuper_edgeForcedOnly_ifIdleForTimeInterval_saveOfflineCache___block_invoke;
      v61[3] = &unk_279E34C20;
      v61[4] = self;
      v62 = v59;
      v63 = v7;
      *&v61[5] = a5;
      v64 = v58;
      v20 = [v61 copy];
      v21 = MEMORY[0x2743C3100]();
      v22 = [MFMonitoredInvocation invocationWithSelector:sel__invokeBlock_ target:self object:v21 taskName:0 priority:3 canBeCancelled:1];

      [v22 retainArguments];
      v23 = +[MFInvocationQueue sharedInvocationQueue];
      [v23 addInvocation:v22];
    }

    [(IMAP_Account *)self mf_unlock];
    goto LABEL_71;
  }

  v24 = [(IMAP_Account *)self compactWhenClosingMailboxes];
  [(NSRecursiveLock *)self->_connectionLock lock];
  [(IMAP_Account *)self mf_lock];
  v25 = [(__CFArray *)self->_cachedConnections mutableCopy];
  v26 = v25;
  if (self->_cachedConnections)
    v27 = {;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = self->super.super.mambaID;
      cachedConnections = self->_cachedConnections;
      *buf = 136315650;
      v68 = v28;
      v69 = 2080;
      v70 = " ";
      v71 = 2112;
      v72 = cachedConnections;
      _os_log_impl(&dword_2720B1000, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s#Network All connections: %@", buf, 0x20u);
    }
  }

  v30 = [(IMAP_Account *)self mf_unlock];
  if (!v7)
  {
    goto LABEL_31;
  }
  v31 = ;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = self->super.super.mambaID;
    *buf = 136315394;
    v68 = v32;
    v69 = 2080;
    v70 = " ";
    _os_log_impl(&dword_2720B1000, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s#Network EDGE ONLY", buf, 0x16u);
  }

  v30 = [(_anonymous_namespace_::staticLogger_t *)v26 count];
  if (v30)
  {
    v33 = 0;
    v34 = v30 - 1;
    do
    {
      v35 = [(_anonymous_namespace_::staticLogger_t *)v26 objectAtIndex:v34];
      if ([v35 isCellularConnection])
      {
        v33 |= [v35 isFetching];
      }

      else
      {
        [(_anonymous_namespace_::staticLogger_t *)v26 removeObjectAtIndex:v34];
      }

      --v34;
    }

    while (v34 != -1);
  }

  else
  {
LABEL_31:
    LOBYTE(v33) = 0;
  }

  if (a5 > 0.0)
  {
    v36 = [(_anonymous_namespace_::staticLogger_t *)v26 count];
    Current = CFAbsoluteTimeGetCurrent();
    if (v36)
    {
      v38 = Current;
      v39 = v36 - 1;
      do
      {
        v40 = [(_anonymous_namespace_::staticLogger_t *)v26 objectAtIndex:v39];
        [v40 mf_lock];
        [v40 lastUsedTime];
        if (v41 + a5 > v38)
        {
          [(_anonymous_namespace_::staticLogger_t *)v26 removeObjectAtIndex:v39];
        }

        [v40 mf_unlock];

        --v39;
      }

      while (v39 != -1);
    }
  }
  v42 = ;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = self->super.super.mambaID;
    *buf = 136315650;
    v68 = v43;
    v69 = 2080;
    v70 = " ";
    v71 = 2112;
    v72 = v26;
    _os_log_impl(&dword_2720B1000, v42, OS_LOG_TYPE_DEFAULT, "#I %s%s#Network Dropping connections: %@", buf, 0x20u);
  }

  v44 = 0;
  while (1)
  {

    [(IMAP_Account *)self mf_lock];
    if ([(_anonymous_namespace_::staticLogger_t *)v26 count])
    {
      v45 = [(_anonymous_namespace_::staticLogger_t *)v26 objectAtIndex:0];
      v46 = [v45 delegate];
      [(_anonymous_namespace_::staticLogger_t *)v26 removeObjectAtIndex:0];
      v47 = self->_cachedConnections;
      if (v47)
      {
        v84.length = CFArrayGetCount(self->_cachedConnections);
        v84.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v47, v84, v45);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(self->_cachedConnections, FirstIndexOfValue);
        }
      }

      v49 = v46;
      v42 = v45;
    }

    else
    {
      v49 = 0;
      v42 = 0;
    }

    [(IMAP_Account *)self mf_unlock];
    if (!v42)
    {
      break;
    }

    if ((v33 & (v44 == 0)) != 1)
    {
      goto LABEL_51;
    }

    if ([v42 isFetching])
    {
      v44 = v42;
LABEL_51:
      if (!v24)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    v44 = 0;
    if (!v24)
    {
      goto LABEL_55;
    }

LABEL_52:
    v50 = [v42 selectedMailbox];
    v51 = v50 == 0;

    if (!v51)
    {
      v52 = [v42 closeAndLogout];
      goto LABEL_56;
    }

LABEL_55:
    v52 = [v42 logout];
LABEL_56:
    if (v52)
    {
      [(IMAP_Account *)self setCommitTime:[v42 tag] forConnectionTag:CFAbsoluteTimeGetCurrent()];
    }

    if (v49)
    {
      [(IMAP_Account *)self mf_lock];
      [v42 setDelegate:0];
      [(IMAP_Account *)self mf_unlock];
    }
  }

  [(IMAP_Account *)self _purgeStaleFlagChanges];
  if (v33)
  {
    v53 = [v44 selectedMailbox];
    v54 = [(IMAP_Account *)self _mailboxUidForName:v53];
  }

  else
  {
    v54 = 0;
  }

  [(NSRecursiveLock *)self->_connectionLock unlock];
  if ((v33 & (v54 != 0)) == 1)
  {
    v55 = MFUserAgent();
    [v55 autofetchAccount:self mailboxUid:v54];
  }

  if (v59)
  {
    v60.receiver = self;
    v60.super_class = IMAP_Account;
    [(MailAccount *)&v60 releaseAllConnections];
  }

  if (v58)
  {
    v56 = [(IMAP_Account *)self offlineCacheIfExists];
    [v56 saveChanges];
  }

LABEL_71:
  v57 = *MEMORY[0x277D85DE8];
}

- (void)releaseAllForcedConnections
{
  [(IMAP_Account *)self _releaseAllConnectionsAndCallSuper:0 edgeForcedOnly:1 ifIdleForTimeInterval:1 saveOfflineCache:0.0];
  v3.receiver = self;
  v3.super_class = IMAP_Account;
  [(MailAccount *)&v3 releaseAllForcedConnections];
}

- (void)_flushOfflineCache
{
  v3 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
  if (v3)
  {
    [(IMAP_Account *)self checkInConnection:v3];
  }
}

- (void)flushOfflineCache
{
  v4 = +[MFInvocationQueue sharedInvocationQueue];
  v3 = [MFMonitoredInvocation invocationWithSelector:sel__flushOfflineCache target:self taskName:0 priority:3 canBeCancelled:0];
  [v4 addInvocation:v3];
}

- (void)networkChanged
{
  offlineCacheFlushHandler = self->_offlineCacheFlushHandler;
  if (offlineCacheFlushHandler)
  {
    offlineCacheFlushHandler[2]();
  }
}

- (void)setHandlerForOfflineCacheFlush:(id)a3
{
  v4 = a3;
  if (self->_offlineCacheFlushHandler != v4)
  {
    if (v4)
    {
      v8 = v4;
      v5 = [v4 copy];

      v4 = v5;
    }

    v9 = v4;
    v6 = MEMORY[0x2743C3100]();
    offlineCacheFlushHandler = self->_offlineCacheFlushHandler;
    self->_offlineCacheFlushHandler = v6;

    v4 = v9;
  }
}

- (void)connectionDidDisconnect:(id)a3
{
  v4 = v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->super.super.mambaID;
    v6 = [(MailAccount *)self displayName];
    v8 = 136315650;
    v9 = mambaID;
    v10 = 2080;
    v11 = " ";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s(%@) Connection to server was lost/closed.", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5
{
  v7 = a4;
  v8 = [v7 isAlertResponse];
  if (v8)
  {
    v9 = [v7 userString];
    [(IMAP_Account *)self handleAlertResponse:v9];
LABEL_3:

    goto LABEL_14;
  }

  if (a5->var0 == 8 && [v7 responseType] == 13)
  {
    v10 = [v7 mailboxName];
    v9 = [(IMAP_Account *)self _mailboxUidForName:v10];

    v11 = [v7 statusEntries];
    v12 = [v9 URLString];

    if (v12)
    {
      v13 = [v11 objectForKey:@"UIDNEXT"];
      if (v13)
      {
        v14 = [v9 userInfoObjectForKey:@"UIDNEXT"];
        v15 = [v14 intValue];

        v16 = [v13 unsignedIntValue];
        if (v15 != v16)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v16];
          [v9 setUserInfoObject:v17 forKey:@"UIDNEXT"];
        }
      }

      v18 = [v11 objectForKeyedSubscript:@"UNSEEN"];

      if (v18)
      {
        [v9 updateMostRecentStatusCount:{objc_msgSend(v18, "unsignedIntegerValue")}];
      }
    }

    goto LABEL_3;
  }

LABEL_14:

  return v8 ^ 1;
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id *)a5
{
  v7 = a4;
  if ([v7 isAlertResponse])
  {
    v6 = [v7 userString];
    [(IMAP_Account *)self handleAlertResponse:v6];
  }
}

- (void)setIsOffline:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([IMAP_Account setIsOffline:]::sOnceToken != -1)
    {
      [IMAP_Account setIsOffline:];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__IMAP_Account_setIsOffline___block_invoke_2;
    block[3] = &unk_279E34640;
    block[4] = self;
    v10 = v3;
    dispatch_async([IMAP_Account setIsOffline:]::sOfflineStatusChangeQueue, block);
  }

  else
  {
    v5 = *(self + 312);
    if (((((v5 & 2) == 0) ^ v3) & 1) == 0)
    {
      if (v3)
      {
        [(IMAP_Account *)self _releaseAllConnectionsAndCallSuper:0];
        v5 = *(self + 312);
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      *(self + 312) = v5 & 0xFD | v6;
      if ([(MailAccount *)self isActive])
      {
        v8 = [MEMORY[0x277CCAB98] defaultCenter];
        v7 = [MEMORY[0x277CCAB88] notificationWithName:@"AccountOfflineStatusDidChange" object:self userInfo:0];
        [v8 postNotification:v7];
      }
    }
  }
}

- (void)_updateSeparatorAndNamespaceWithConnection:(id)a3
{
  v6 = a3;
  [(NSRecursiveLock *)self->_connectionLock lock];
  if ((*(self + 344) & 1) == 0)
  {
    v4 = [v6 separatorChar];
    v5 = [v6 serverPathPrefix];
    _setSeparatorCharAndNamespace(self, v4, v5);
    *(self + 344) |= 1u;
  }

  [(NSRecursiveLock *)self->_connectionLock unlock];
}

- (id)separatorChar
{
  _MFLockGlobalLock();
  v3 = self->_separatorChar;
  _MFUnlockGlobalLock();
  if (!v3)
  {
    v5 = [(MailAccount *)self rootMailboxUid];
    _MFLockGlobalLock();
    v3 = self->_separatorChar;
    _MFUnlockGlobalLock();
    if ((*(self + 312) & 2) == 0 && !v3)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v3 = 0;
      }

      else
      {
        v6 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
        v7 = v6;
        if (v6)
        {
          v3 = [v6 separatorChar];
          if (v3)
          {
            _setSeparatorCharAndNamespace(self, v3, 0);
          }

          [(IMAP_Account *)self checkInConnection:v7];
        }

        else
        {
          v3 = 0;
        }
      }
    }
  }

  return v3;
}

- (id)lastKnownCapabilities
{
  v3 = [(MailAccount *)self rootMailboxUid];
  _MFLockGlobalLock();
  v4 = self->_lastKnownCapabilities;
  _MFUnlockGlobalLock();

  return v4;
}

- (void)_setCapabilities:(id)a3
{
  v9 = a3;
  _MFLockGlobalLock();
  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (v9 | lastKnownCapabilities)
  {
    v6 = lastKnownCapabilities;
    objc_storeStrong(&self->_lastKnownCapabilities, a3);
    flags = self->super._flags;
    if ((*&flags & 0x40000) == 0)
    {
      self->super._flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
    }
  }

  else
  {
    v6 = 0;
  }

  _MFUnlockGlobalLock();
  if (v9 | v6)
  {
    v8 = [v9 isEqualToArray:v6] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:v8];
}

- (id)fetchLimits
{
  v2 = +[MFNetworkController sharedInstance];
  v3 = [v2 isFatPipe];
  v4 = +[MFPowerController sharedInstance];
  v5 = [v4 isPluggedIn];

  if (v3 & v5)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = [v2 is3GConnection];
    v10 = v3 | [v2 is4GConnection];
    v11 = 4096;
    if (v9)
    {
      v11 = 0x10000;
    }

    v12 = 0x4000;
    if (v9)
    {
      v12 = 0x80000;
    }

    if (v10)
    {
      v7 = 0x40000;
    }

    else
    {
      v7 = v11;
    }

    if (v10)
    {
      v8 = 0x200000;
    }

    else
    {
      v8 = v12;
    }

    v6 = v8 | v7;
  }

  v13 = objc_alloc_init(MFFetchLimits);
  [(MFFetchLimits *)v13 setFetchMinBytes:v8];
  [(MFFetchLimits *)v13 setMinBytesLeft:v7];
  [(MFFetchLimits *)v13 setFetchMaxBytes:v6];

  return v13;
}

- (id)_listingForMailboxUid:(id)a3 listAllChildren:(BOOL)a4 onlySubscribed:(BOOL)a5 statusDataItems:(id)a6 withConnection:(id)a7 statusEntriesByMailbox:(id *)a8
{
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v43 = a6;
  v15 = a7;
  if (v15 || ([(IMAP_Account *)self connectionForStore:0 delegate:self options:9], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v42 = [(IMAP_Account *)self serverPathPrefixAccountValue];
    if ([v42 length])
    {
      v16 = [(NSString *)self->_serverNamespace isEqualToString:v42];
    }

    else
    {
      v16 = 1;
    }

    if (self->super._rootMailboxUid == v14 && v16)
    {
      v17 = &stru_288159858;
    }

    else if (self->super._inboxMailboxUid == v14 && (-[IMAP_Account serverPathPrefix](self, "serverPathPrefix"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isEqualToString:@"INBOX"], v18, v19))
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [(IMAP_Account *)self separatorChar];
      v17 = [v20 stringWithFormat:@"INBOX%@INBOX", v21];
    }

    else
    {
      v17 = [(IMAP_Account *)self _nameForMailboxUid:v14];
    }

    if (v12)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if (!v11 || ([v15 subscribedListingForMailbox:v17 options:v22], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([v15 supportsCapability:22])
      {
        v24 = ([v15 supportsCapability:20] & 1) != 0 || -[IMAP_Account xListSupportedOnConnection:](self, "xListSupportedOnConnection:", v15);
      }

      else
      {
        v24 = 0;
      }

      v25 = [v15 listingForMailbox:v17 options:v22 getSpecialUse:v24 statusDataItems:v43 statusEntriesByMailbox:a8];
      v26 = v25;
      if (self->super._rootMailboxUid == v14 && self->_serverNamespace != 0 && v16)
      {
        v41 = [(NSArray *)v25 mutableCopy];
        v27 = _mailboxDictionaryWithName(v26, self->_serverNamespace, 0);
        [v41 removeObject:v27];
        v28 = [v27 objectForKeyedSubscript:@"MailboxChildren"];
        v29 = v28;
        v30 = MEMORY[0x277CBEBF8];
        if (v28)
        {
          v30 = v28;
        }

        v31 = v30;

        v40 = v31;
        v23 = [MEMORY[0x277CBEB18] arrayWithArray:v31];
        [(NSArray *)v23 addObjectsFromArray:v41];
        v32 = [(NSString *)self->_serverNamespace isEqualToString:@"INBOX"];
        if (v27)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        if (v33)
        {
          v44 = 0;
          v34 = _mailboxDictionaryWithName(v23, self->_serverNamespace, &v44);
          v39 = v34;
          v38 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v27];
          if (v34)
          {
            v35 = [v34 objectForKey:@"MailboxChildren"];
            [v38 setObject:v35 forKey:@"MailboxChildren"];

            [(NSArray *)v23 replaceObjectAtIndex:v44 withObject:v38];
          }

          else
          {
            v37 = [MEMORY[0x277CBEAC0] dictionary];
            [v38 setObject:v37 forKey:@"MailboxChildren"];

            [(NSArray *)v23 vf_insertObject:v38 usingSortFunction:_MFCompareMailboxDictionariesByName context:0 allowDuplicates:1];
          }
        }
      }

      else
      {
        v23 = v25;
      }
    }

    [(IMAP_Account *)self checkInConnection:v15];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)_deleteMailbox:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = IMAP_Account;
  if ([(MailAccount *)&v22 _deleteMailbox:v4])
  {
    v5 = [(IMAP_Account *)self _nameForMailboxUid:v4];
    [(IMAP_Account *)self unselectMailbox:v5];
    v6 = [(IMAP_Account *)self offlineCacheIfOffline];
    v7 = v6;
    if (v6)
    {
      v8 = 0;
      [v6 deleteMailbox:v5];
      v9 = 1;
LABEL_22:

      goto LABEL_23;
    }

    v10 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 deleteMailbox:v5];
      [(IMAP_Account *)self checkInConnection:v11];
      if (v12)
      {
        v9 = 1;
LABEL_21:
        v8 = v11;
        goto LABEL_22;
      }

      if ([v4 isStore])
      {
        v9 = 0;
        goto LABEL_21;
      }

      v13 = [v4 parent];
      if (v13)
      {
        v15 = +[MFActivityMonitor currentMonitor];
        v16 = [v15 error];
        v17 = [(IMAP_Account *)self _listingForMailboxUid:v13 listAllChildren:0];
        if ([v17 count] && (objc_msgSend(v4, "name"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "mf_indexOfMailboxDictionaryWithName:", v18) == 0x7FFFFFFFFFFFFFFFLL, v18, !v19))
        {
          [v15 setError:v16];
          v9 = 0;
        }

        else
        {
          [v15 setError:0];
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
      v13 = {;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        mambaID = self->super.super.mambaID;
        *buf = 136315394;
        v24 = mambaID;
        v25 = 2080;
        v26 = " ";
        _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sNo connection!! What's going on?", buf, 0x16u);
      }

      v11 = 0;
      v9 = 1;
    }

    goto LABEL_21;
  }

  v9 = 0;
LABEL_23:

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isMailboxLocalForType:(int)a3
{
  if ((a3 - 2) > 3)
  {
    return 0;
  }

  else
  {
    return ![(IMAP_Account *)self storeMailboxTypeOnServer:v3, v4];
  }
}

- (void)_renameLocalSpecialMailboxesToName:(id)a3
{
  v18 = a3;
  if ([(IMAP_Account *)self storeMailboxTypeOnServer:5])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
    v7 = [(MailAccount *)self _localMailboxNameForType:5 usingDisplayName:v18];
    v8 = [v6 account];
    v9 = [v6 parent];
    [v8 renameMailbox:v6 newName:v7 parent:v9];

    v4 = v7;
    v5 = v6;
  }

  if (![(IMAP_Account *)self storeMailboxTypeOnServer:4])
  {
    v10 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];

    v11 = [(MailAccount *)self _localMailboxNameForType:4 usingDisplayName:v18];

    v12 = [v10 account];
    v13 = [v10 parent];
    [v12 renameMailbox:v10 newName:v11 parent:v13];

    v4 = v11;
    v5 = v10;
  }

  if ([(IMAP_Account *)self storeMailboxTypeOnServer:3])
  {
    v14 = v4;
    v15 = v5;
  }

  else
  {
    v15 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];

    v14 = [(MailAccount *)self _localMailboxNameForType:3 usingDisplayName:v18];

    v16 = [v15 account];
    v17 = [v15 parent];
    [v16 renameMailbox:v15 newName:v14 parent:v17];
  }
}

- (id)specialUseAttributeForType:(int)a3
{
  if ([IMAP_Account specialUseAttributeForType:]::onceToken != -1)
  {
    [IMAP_Account specialUseAttributeForType:];
  }

  v4 = [IMAP_Account specialUseAttributeForType:]::map;

  return CFDictionaryGetValue(v4, a3);
}

- (id)allMailMailboxUid
{
  v2 = [(MailAccount *)self rootMailboxUid];
  v3 = [v2 descendantWithExtraAttribute:@"\\All"];

  return v3;
}

- (BOOL)isSpecialMailbox:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMAP_Account;
  if ([(MailAccount *)&v8 isSpecialMailbox:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(IMAP_Account *)self specialUseAttributesForMailbox:v4];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (id)specialUseAttributesForMailbox:(id)a3
{
  v3 = a3;
  if ([IMAP_Account specialUseAttributesForMailbox:]::onceToken != -1)
  {
    [IMAP_Account specialUseAttributesForMailbox:];
  }

  v4 = MEMORY[0x277CBEB58];
  v5 = [v3 extraAttributes];
  v6 = [v4 setWithArray:v5];

  [v6 intersectSet:-[IMAP_Account specialUseAttributesForMailbox:]::knownSpecialAttributes];

  return v6;
}

- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization
{
  if ([(MailAccount *)self isActive])
  {
    flags = self->super._flags;
    if ((*&flags & 0x10000) == 0)
    {
      self->super._flags = (*&flags | 0x10000);
      v5 = +[MFInvocationQueue sharedInvocationQueue];
      v4 = [MFMonitoredInvocation invocationWithSelector:sel__synchronizeAccountWithServer target:self taskName:@"Synchronizing with server" priority:0 canBeCancelled:1];
      [v5 addInvocation:v4];
    }
  }
}

- (BOOL)getMailboxListWithConnection:(id)a3 statusDataItems:(id)a4 statusEntriesByMailbox:(id *)a5
{
  v6 = [(IMAP_Account *)self _listingForMailboxUid:self->super._rootMailboxUid listAllChildren:1 onlySubscribed:0 statusDataItems:a4 withConnection:a3 statusEntriesByMailbox:a5];
  if (v6)
  {
    [(IMAP_Account *)self mf_lock];
    v7 = [(MailAccount *)self _loadMailboxListingIntoCache:0 attributes:0 children:v6 parent:self->super._rootMailboxUid];
    [(IMAP_Account *)self mf_unlock];
    if (v7)
    {
      [(IMAP_Account *)self _mailboxListingChanged];
      flags = self->super._flags;
      if ((*&flags & 0x40000) == 0)
      {
        self->super._flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
      }
    }

    [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  }

  [(MailAccount *)self resetSpecialMailboxes];

  return v6 != 0;
}

- (void)throttledGetMailboxListWithConnection:(id)a3
{
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = MFUserAgent();
  v7 = [v6 isForeground];

  if ((*(self + 312) & 1) == 0 || v7 && Current - self->_timeLastFetchedMailboxList > 300.0)
  {
    self->_timeLastFetchedMailboxList = Current;
    *(self + 312) |= 1u;
    v8 = +[MFActivityMonitor currentMonitor];
    v9 = [(MailAccount *)self rootMailboxUid];
    [v8 setMailbox:v9];

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"CHECKING_FOR_MAIL" value:&stru_288159858 table:@"Main"];
    [v8 setDisplayName:v11];

    v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"UNSEEN", 0}];
    v27 = 0;
    v13 = [(IMAP_Account *)self getMailboxListWithConnection:v4 statusDataItems:v12 statusEntriesByMailbox:&v27];
    v14 = v27;
    v15 = v14;
    if (v13)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __54__IMAP_Account_throttledGetMailboxListWithConnection___block_invoke;
      v26[3] = &unk_279E34C48;
      v26[4] = self;
      [v14 enumerateKeysAndObjectsUsingBlock:v26];
      if (!v15)
      {
        if (!v4)
        {
          v4 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:9];
        }

        v16 = [(MailAccount *)self allMailboxUids];
        v17 = [v16 vf_filter:&__block_literal_global_239];

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __54__IMAP_Account_throttledGetMailboxListWithConnection___block_invoke_3;
        v25[3] = &unk_279E34C90;
        v25[4] = self;
        v18 = [v17 vf_map:v25];
        v19 = [v18 vf_filter:&__block_literal_global_3];

        [v4 fetchStatusForMailboxes:v19 args:v12];
        [(IMAP_Account *)self checkInConnection:v4];
      }
    }

    else
    {
      *(self + 312) &= ~1u;
    }

    v20 = dispatch_time(0, 1000000000);
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__IMAP_Account_throttledGetMailboxListWithConnection___block_invoke_4;
    block[3] = &unk_279E34528;
    v24 = v8;
    v22 = v8;
    dispatch_after(v20, v21, block);
  }
}

- (void)_synchronizeAccountWithServer
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[MFActivityMonitor currentMonitor];
  v5 = [(MFAccount *)self password];
  if (v5)
  {
    v6 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
    if (v6 && ([v4 shouldCancel] & 1) == 0)
    {
      [(IMAP_Account *)self checkInConnection:v6];
      if (([v4 shouldCancel] & 1) == 0)
      {
        [(IMAP_Account *)self throttledGetMailboxListWithConnection:0];
      }

      if (([v4 shouldCancel] & 1) == 0)
      {
        [(MailAccount *)self emptyTrash];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  *&self->super._flags &= ~0x10000u;

  objc_autoreleasePoolPop(v3);
}

- (void)_synchronouslyLoadListingForParent:(id)a3
{
  v7 = a3;
  v4 = [IMAP_Account _listingForMailboxUid:"_listingForMailboxUid:listAllChildren:" listAllChildren:?];
  if (v4)
  {
    v5 = [v7 name];
    v6 = [(MailAccount *)self _loadMailboxListingIntoCache:v5 attributes:0 children:v4 parent:v7];

    if (v6)
    {
      [(IMAP_Account *)self _mailboxListingChanged];
    }
  }
}

- (void)_waitForMailboxListingLoadToComplete
{
  [(IMAP_Account *)self mf_lock];

  [(IMAP_Account *)self mf_unlock];
}

- (void)_mailboxesWereRemovedFromTree:(id)a3 withFileSystemPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  _MFLockGlobalLock();
  if (!_mailboxDeletionQueue)
  {
    v8 = [[MFInvocationQueue alloc] initWithDomain:"invc.del"];
    v9 = _mailboxDeletionQueue;
    _mailboxDeletionQueue = v8;
  }

  _MFUnlockGlobalLock();
  v10 = objc_alloc_init(_MFIMAPMailboxDeletionQueueEntry);
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setUrls:v6];
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setPaths:v7];
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setAccount:self];
  v11 = [MFMonitoredInvocation invocationWithSelector:sel__deleteQueuedMailboxes_ target:objc_opt_class() object:v10 taskName:@"Removing old cache files..." priority:12 canBeCancelled:1];
  [_mailboxDeletionQueue addInvocation:v11];
  v12.receiver = self;
  v12.super_class = IMAP_Account;
  [(MailAccount *)&v12 _mailboxesWereRemovedFromTree:v6 withFileSystemPaths:v7];
}

+ (void)_deleteQueuedMailboxes:(id)a3
{
  v18 = a3;
  v4 = [v18 account];
  [v4 _waitForMailboxListingLoadToComplete];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v18 urls];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    v9 = *MEMORY[0x277CBEEE8];
    do
    {
      v10 = [v18 urls];
      v11 = [v10 objectAtIndex:v8];

      v12 = [a1 mailboxUidFromActiveAccountsForURL:v11];
      v13 = v12;
      if (!v12 || ([v12 isValid] & 1) == 0)
      {
        v14 = [v18 paths];
        v15 = [v14 objectAtIndex:v8];

        if (v15 != v9)
        {
          v16 = MFRemoveItemAtPath();
        }

        [v5 addObject:v11];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v17 = [v4 library];
  [v17 deleteMailboxes:v5 account:v4];
}

- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = IMAP_Account;
  if ([(MailAccount *)&v12 newMailboxNameIsAcceptable:v6 reasonForFailure:a4])
  {
    v7 = [(IMAP_Account *)self separatorChar];
    if (v7)
    {
      v8 = [v6 rangeOfString:v7];
      v9 = v8 == 0x7FFFFFFFFFFFFFFFLL;
      if (!a4)
      {
LABEL_10:

        goto LABEL_11;
      }

      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Mailbox names may not include “%@”.", v7];
        *a4 = v10;

        v9 = 0;
        goto LABEL_10;
      }
    }

    else if (!a4)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }

    *a4 = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = [(IMAP_Account *)self _nameForMailboxUid:v8];
  if (![(IMAP_Account *)self isOffline])
  {
    v14 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
    if (!v14)
    {
      v13 = 0;
      goto LABEL_11;
    }

    inboxMailboxUid = self->super._inboxMailboxUid;
    if (inboxMailboxUid && [(MFMailboxUid *)inboxMailboxUid isEqual:v8])
    {
      v16 = self->super._inboxMailboxUid;
    }

    else
    {
      v16 = 0;
    }

    v13 = [(IMAP_Account *)self _nameForMailboxUid:v10];
    if (v9)
    {
      [(IMAP_Account *)self _uidNameForPathComponent:v9];
    }

    else
    {
      [v8 name];
    }
    v17 = ;
    if ([v13 length])
    {
      v19 = [v13 mutableCopyWithZone:0];
      v20 = [v14 separatorChar];
      [v19 appendString:v20];

      [v19 appendString:v17];
      v17 = v19;
    }

    if (v17 && [v14 renameMailbox:v23 toMailbox:v17])
    {
      if (v16)
      {
        [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:7];
      }

      v24.receiver = self;
      v24.super_class = IMAP_Account;
      [(MailAccount *)&v24 renameMailbox:v8 newName:v9 parent:v10];
      v21 = [v8 store];
      [v21 reselectMailbox];

      v18 = 1;
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
      if (!v16)
      {
LABEL_23:
        [(IMAP_Account *)self checkInConnection:v14];
        goto LABEL_24;
      }
    }

    [(MailAccount *)self resetSpecialMailboxes];
    goto LABEL_23;
  }

  v11 = +[MFActivityMonitor currentMonitor];
  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:@"You can’t rename mailboxes while an account is offline."];
  [v11 setError:v12];

  v13 = 0;
  v14 = 0;
LABEL_11:
  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_24:

  return v18;
}

- (id)_pathComponentForUidName:(id)a3
{
  v3 = [a3 mf_decodedIMAPMailboxName];

  return v3;
}

- (id)_uidNameForPathComponent:(id)a3
{
  v3 = [a3 mf_encodedIMAPMailboxName];

  return v3;
}

- (id)_nameForMailboxUid:(id)a3
{
  v4 = a3;
  if (self->super._inboxMailboxUid == v4)
  {
    v6 = @"INBOX";
    goto LABEL_32;
  }

  v5 = [(IMAP_Account *)self serverPathPrefix];
  if (!v5 && ([(MFMailboxUid *)v4 parent], v7 = objc_claimAutoreleasedReturnValue(), rootMailboxUid = self->super._rootMailboxUid, v7, v7 == rootMailboxUid))
  {
    v12 = [(MFMailboxUid *)v4 name];
  }

  else
  {
    if (self->super._rootMailboxUid != v4)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([(__CFString *)v5 length])
      {
        v10 = ![(MFMailboxUid *)v4 isShared];
        if (!v4)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v10 = 0;
        if (!v4)
        {
LABEL_16:
          if (v10)
          {
            v15 = [(__CFString *)v5 mutableCopyWithZone:0];
          }

          else
          {
            v15 = 0;
          }

          v16 = [v9 count];
          v17 = [(IMAP_Account *)self separatorChar];
          if (v16)
          {
            for (i = v16 - 1; i != -1; --i)
            {
              v19 = [v9 objectAtIndex:i];
              v20 = v19;
              if (v15)
              {
                if (!v17)
                {

                  v15 = 0;
                  break;
                }

                [v15 appendString:v17];
                [v15 appendString:v20];
              }

              else
              {
                v15 = [v19 mutableCopyWithZone:0];
              }
            }
          }

          v6 = v15;

          goto LABEL_31;
        }
      }

      do
      {
        if (v4 == self->super._rootMailboxUid)
        {
          break;
        }

        v13 = [(MFMailboxUid *)v4 name];
        [v9 addObject:v13];

        v14 = [(MFMailboxUid *)v4 parent];

        v4 = v14;
      }

      while (v14);
      goto LABEL_16;
    }

    v11 = &stru_288159858;
    if (v5)
    {
      v11 = v5;
    }

    v12 = v11;
  }

  v6 = v12;
LABEL_31:

LABEL_32:

  return v6;
}

- (id)nameForMailboxUid:(id)a3
{
  v3 = [(IMAP_Account *)self _nameForMailboxUid:a3];

  return v3;
}

- (id)_mailboxUidForName:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v15 = 0;
    goto LABEL_26;
  }

  v6 = [(__CFString *)v4 caseInsensitiveCompare:@"INBOX"];
  if (!v6)
  {

    v5 = @"INBOX";
  }

  v7 = [(IMAP_Account *)self serverPathPrefix];
  v8 = [(IMAP_Account *)self separatorChar];
  if (!v7 || ![v7 length] || !v6)
  {
    goto LABEL_14;
  }

  v9 = [(__CFString *)v5 rangeOfString:v7 options:8];
  if (v10)
  {
    v11 = [(__CFString *)v5 substringFromIndex:v9 + v10];

    if (v8 && v11 && (v12 = [(__CFString *)v11 rangeOfString:v8 options:8], v13))
    {
      v14 = [(__CFString *)v11 substringFromIndex:v12 + v13];

      v5 = v14;
    }

    else
    {
      v5 = v11;
    }

LABEL_14:
    v15 = 0;
    if (v8 && v5)
    {
      v16 = [(__CFString *)v5 componentsSeparatedByString:v8];
      v15 = [(MailAccount *)self rootMailboxUid];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = *v25;
        do
        {
          v20 = 0;
          v21 = v15;
          do
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v15 = [v21 childWithName:{*(*(&v24 + 1) + 8 * v20), v24}];

            ++v20;
            v21 = v15;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v18);
      }
    }

    goto LABEL_25;
  }

  v5 = 0;
  v15 = 0;
LABEL_25:

LABEL_26:
  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)canMailboxBeDeleted:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->super._inboxMailboxUid])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = IMAP_Account;
    v5 = [(MailAccount *)&v7 canMailboxBeDeleted:v4];
  }

  return v5;
}

- (id)serverPathPrefix
{
  v3 = [(IMAP_Account *)self serverPathPrefixAccountValue];
  if (!v3)
  {
    v3 = self->_serverNamespace;
  }

  return v3;
}

- (id)serverPathPrefixAccountValue
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"ServerPathPrefix"];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setServerPathPrefix:(id)a3 shouldSync:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(IMAP_Account *)self serverPathPrefixAccountValue];
  v7 = v14;
  if (!v14)
  {
    v7 = &stru_288159858;
  }

  v15 = v7;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_288159858;
  }

  v10 = [(IMAP_Account *)self separatorChar];
  if (v10)
  {
    v9 = [v15 rangeOfString:v10 options:12];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v15 substringToIndex:v9];

      v15 = v11;
    }
  }

  v12 = [v15 length];
  if (v12 != -[__CFString length](v8, "length") || ([v15 isEqual:v8] & 1) == 0)
  {
    v13 = [(MailAccount *)self allMailboxUids];
    [v13 makeObjectsPerformSelector:sel_URLString];

    _MFLockGlobalLock();
    if (v15 && [v15 length])
    {
      [(MFAccount *)self setAccountProperty:v15 forKey:@"ServerPathPrefix"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"ServerPathPrefix"];
    }

    _MFUnlockGlobalLock();
    if (v4)
    {
      [(IMAP_Account *)self releaseAllConnections];
      [(IMAP_Account *)self nowWouldBeAGoodTimeToStartBackgroundSynchronization];
    }
  }
}

- (id)_fileSystemServerPathPrefix
{
  v3 = [(IMAP_Account *)self serverPathPrefix];
  v4 = [(IMAP_Account *)self separatorChar];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v8 = [v3 rangeOfString:v4 options:8];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v3 length] <= (v8 + v7))
      {
        v6 = 0;
        goto LABEL_11;
      }

      v9 = [v3 substringFromIndex:?];

      v3 = v9;
    }

    v10 = [v3 componentsSeparatedByString:v5];
    v11 = [v10 mutableCopy];

    v12 = [v11 count];
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = [v11 objectAtIndex:i];
        v15 = [(IMAP_Account *)self _pathComponentForUidName:v14];
        [v11 replaceObjectAtIndex:i withObject:v15];
      }
    }

    v6 = [v11 componentsJoinedByString:@"/"];
  }

LABEL_11:

  return v6;
}

- (id)_mailboxPathPrefix
{
  v2 = [(IMAP_Account *)self _fileSystemServerPathPrefix];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_288159858;
  }

  return v4;
}

- (id)offlineCacheIfExists
{
  [(NSRecursiveLock *)self->_connectionLock lock];
  v3 = self->_offlineCache;
  [(NSRecursiveLock *)self->_connectionLock unlock];

  return v3;
}

- (id)offlineCacheIfOffline
{
  if ([(IMAP_Account *)self isOffline])
  {
    v3 = [(IMAP_Account *)self connectionForStore:0 delegate:0 options:1];
    [(NSRecursiveLock *)self->_connectionLock lock];
    if ([(IMAP_Account *)self isOffline])
    {
      offlineCache = self->_offlineCache;
      if (!offlineCache)
      {
        v5 = [objc_allocWithZone(MFIMAPOperationCache) initWithIMAPAccount:self];
        v6 = self->_offlineCache;
        self->_offlineCache = v5;

        offlineCache = self->_offlineCache;
      }

      v7 = offlineCache;
    }

    else
    {
      v7 = 0;
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)offlineCache
{
  [(NSRecursiveLock *)self->_connectionLock lock];
  offlineCache = self->_offlineCache;
  if (!offlineCache)
  {
    v4 = [objc_allocWithZone(MFIMAPOperationCache) initWithIMAPAccount:self];
    v5 = self->_offlineCache;
    self->_offlineCache = v4;

    offlineCache = self->_offlineCache;
  }

  v6 = offlineCache;
  [(NSRecursiveLock *)self->_connectionLock unlock];

  return v6;
}

- (id)offlineCacheDirectoryPath
{
  v2 = [(MailAccount *)self path];
  v3 = [v2 stringByAppendingPathComponent:@".OfflineCache"];

  return v3;
}

- (BOOL)hasPendingOfflineOperations
{
  v2 = [(IMAP_Account *)self offlineCache];
  v3 = [v2 hasPendingOfflineOperations];

  return v3;
}

- (id)_infoForMatchingURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 path];
  [v5 setObject:self forKey:@"Account"];
  if (v6)
  {
    v7 = [(IMAP_Account *)self separatorChar];
    v9 = [v6 rangeOfString:@"/" options:8];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v6 substringWithRange:{v9 + v8, objc_msgSend(v6, "length") - (v9 + v8)}];

      v6 = v10;
    }

    if (v7)
    {
      v12 = [v6 rangeOfString:v7 options:8];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [v6 substringWithRange:{v12 + v11, objc_msgSend(v6, "length") - (v12 + v11)}];

        v6 = v13;
      }
    }

    if (([v6 isEqualToString:&stru_288159858] & 1) == 0)
    {
      [v5 setObject:v6 forKey:@"RelativePath"];
    }
  }

  return v5;
}

- (id)flagChangesForMailboxPath:(id)a3 UID:(unsigned int)a4 connectTime:(double)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = self->_recentFlagChanges;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
  v29 = self;
  v11 = 0;
  if (v10)
  {
    v12 = *v31;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        if ([v14 uid] == a4 && objc_msgSend(v14, "connectionTag") == -1)
        {
          [v14 commitTime];
          if (v15 == 0.0 || ([v14 commitTime], v16 > a5))
          {
            v17 = [v14 path];
            v18 = [v17 isEqualToString:v8];

            if (v18)
              v20 = {;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                mambaID = v29->super.super.mambaID;
                *buf = 136315650;
                v35 = mambaID;
                v36 = 2080;
                v37 = " ";
                v38 = 2112;
                v39 = v14;
                _os_log_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges using changes from %@", buf, 0x20u);
              }

              v22 = [v14 changes];
              if (v11)
              {
                [v11 addEntriesFromDictionary:v22];
              }

              else
              {
                v11 = [v22 mutableCopy];
              }
            }
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v23 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v40 count:16];
      v10 = v23;
    }

    while (v23);
  }

  v24 = [(NSRecursiveLock *)v29->_flagChangesLock unlock];
  if (v11)
    v25 = {;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v29->super.super.mambaID;
      *buf = 136315650;
      v35 = v26;
      v36 = 2080;
      v37 = " ";
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_2720B1000, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges resulting changes are %@", buf, 0x20u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)removeFlagChanges:(id)a3 forMessages:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v7 = [(NSMutableArray *)self->_recentFlagChanges count];
  while (v7)
  {
    v8 = [(NSMutableArray *)self->_recentFlagChanges objectAtIndex:--v7];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v21;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v10)
    {
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v8 uid];
          if (v14 == [v13 uid])
          {
            v15 = [v8 changes];
            v16 = [v15 isEqual:v6];

            if (v16)
              v18 = {;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                mambaID = self->super.super.mambaID;
                *buf = 136315650;
                v27 = mambaID;
                v28 = 2080;
                v29 = " ";
                v30 = 2112;
                v31 = v8;
                _os_log_impl(&dword_2720B1000, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges removing failed entry %@", buf, 0x20u);
              }

              [(NSMutableArray *)self->_recentFlagChanges removeObjectAtIndex:v7];
              goto LABEL_15;
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  [(NSRecursiveLock *)self->_flagChangesLock unlock];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)removeFlagChangesCommittedBefore:(double)a3
{
  v25 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v5 = [(NSMutableArray *)self->_recentFlagChanges count];
  if (v5)
  {
    v7 = v5 - 1;
    *&v6 = 136315650;
    v18 = v6;
    do
    {
      v8 = [(NSMutableArray *)self->_recentFlagChanges objectAtIndex:v7, v18];
      [(NSMutableArray *)v8 commitTime];
      if (v9 != 0.0)
      {
        v10 = [(NSMutableArray *)v8 commitTime];
        if (v11 < a3)
          v12 = {;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            mambaID = self->super.super.mambaID;
            *buf = v18;
            v20 = mambaID;
            v21 = 2080;
            v22 = " ";
            v23 = 2112;
            v24 = v8;
            _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges removing committed entry %@", buf, 0x20u);
          }

          [(NSMutableArray *)self->_recentFlagChanges removeObjectAtIndex:v7];
        }
      }

      --v7;
    }

    while (v7 != -1);
  }
  v14 = ;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->super.super.mambaID;
    recentFlagChanges = self->_recentFlagChanges;
    *buf = 136315650;
    v20 = v15;
    v21 = 2080;
    v22 = " ";
    v23 = 2112;
    v24 = recentFlagChanges;
    _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges remaining change entries: %@", buf, 0x20u);
  }

  [(NSRecursiveLock *)self->_flagChangesLock unlock];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)setCommitTime:(double)a3 forConnectionTag:(unsigned int)a4
{
  v29 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_recentFlagChanges;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 connectionTag];
        if (v12 == a4)
          v13 = {;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            mambaID = self->super.super.mambaID;
            *buf = 136315906;
            v21 = mambaID;
            v22 = 2080;
            v23 = " ";
            v24 = 1024;
            v25 = a3;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges setting commit time %d for change %@", buf, 0x26u);
          }

          [v11 setCommitTime:a3];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v28 count:16];
    }

    while (v8);
  }

  [(NSRecursiveLock *)self->_flagChangesLock unlock];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setLibrary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = v5;
  if (self->super._library)
  {
    [v5 removeObserver:self name:0 object:?];
  }

  v7.receiver = self;
  v7.super_class = IMAP_Account;
  [(MailAccount *)&v7 setLibrary:v4];
  if (self->super._library)
  {
    [v6 addObserver:self selector:sel_messagesAdded_ name:@"MailMessageStoreMessagesAdded" object:?];
  }
}

- (BOOL)canFetch
{
  v3.receiver = self;
  v3.super_class = IMAP_Account;
  return [(MailAccount *)&v3 canFetch];
}

- (void)connectionForStore:(uint64_t)a1 delegate:(uint64_t)a2 options:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v5 = 136315650;
  v6 = v3;
  v7 = 2080;
  v8 = " ";
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2720B1000, log, OS_LOG_TYPE_ERROR, "#E %s%s*** Unable to determine name for %@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

@end
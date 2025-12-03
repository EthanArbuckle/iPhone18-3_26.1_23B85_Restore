@interface IMAPServiceAccount
- (BOOL)getMailboxListWithConnection:(id)connection;
- (Class)storeClassForMailbox:(id)mailbox;
- (IMAPService)service;
- (IMAPServiceAccount)initWithProperties:(id)properties mambaID:(const char *)d label:(id)label accountDir:(id)dir phoneNumber:(id)number isoCountryCode:(id)code networkIdentifier:(id)identifier;
- (IMAPServiceLibrary)library;
- (MFInvocationQueue)invocationQueue;
- (__CFString)connectionServiceType;
- (id)description;
- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create;
- (id)mimeBodyForAccountRecord:(void *)record;
- (id)offlineCacheDirectoryPath;
- (id)password;
- (id)storeForMailboxUid:(id)uid;
- (unint64_t)mailboxQuotaUsage;
- (unsigned)uidValidityForMailbox:(id)mailbox;
- (void)_addMonitoredInvocationForIdleConnectionDisconnection;
- (void)_clearConnectionCheckOuts;
- (void)_performDisconnectIdleConnections;
- (void)_startIdleTimer;
- (void)changePIN:(id)n;
- (void)checkInConnection:(id)connection;
- (void)checkInConnectionsForStore:(id)store;
- (void)checkInConnectionsPolitelyForStore:(id)store;
- (void)dealloc;
- (void)flushIMAPServiceLibraryCache;
- (void)invalidateServiceAccount;
- (void)moveMessagesWithTokensToDeleted:(id)deleted;
- (void)moveMessagesWithTokensToInbox:(id)inbox;
- (void)moveMessagesWithTokensToRead:(id)read;
- (void)moveMessagesWithTokensToTrash:(id)trash;
- (void)movePendingMessagesToTrash:(id)trash;
- (void)releaseAllConnections;
- (void)setLongLifeMessagesCache;
- (void)setPassword:(id)password;
- (void)setupLibrary;
- (void)storeFlags:(unsigned int)flags forRecord:(void *)record usingMessage:(id)message;
- (void)willSetFlags:(unsigned int)flags state:(unsigned int)state forRecord:(void *)record needToBeStored:(BOOL)stored;
@end

@implementation IMAPServiceAccount

- (IMAPServiceAccount)initWithProperties:(id)properties mambaID:(const char *)d label:(id)label accountDir:(id)dir phoneNumber:(id)number isoCountryCode:(id)code networkIdentifier:(id)identifier
{
  properties;
  labelCopy = label;
  dirCopy = dir;
  number;
  code;
  identifier;
  operator new();
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  objc_storeWeak(&self->_service, 0);
  [(NSTimer *)self->_idleTimer invalidate];
  [*&self->IMAP_Account_opaque[OBJC_IVAR___MailAccount__library] invalidateServiceLibrary];
  cachedStores = self->_cachedStores;
  if (cachedStores)
  {
    CFRelease(cachedStores);
  }

  v5.receiver = self;
  v5.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v5 dealloc];
}

- (void)invalidateServiceAccount
{
  [(NSRecursiveLock *)self->_storeCacheLock lock];
  cachedStores = self->_cachedStores;
  if (cachedStores)
  {
    CFRelease(cachedStores);
    self->_cachedStores = 0;
  }

  *(self + 352) |= 2u;
  [(NSRecursiveLock *)self->_storeCacheLock unlock];

  [(IMAPServiceAccount *)self invalidate];
}

- (id)description
{
  v3 = objc_opt_class();
  serviceMDN = [(IMAPServiceAccount *)self serviceMDN];
  hostname = [(IMAPServiceAccount *)self hostname];
  username = [(IMAPServiceAccount *)self username];
  v7 = [NSString stringWithFormat:@"<%@ %p servicePhoneNumber=%@ hostname=%@ username=%@>", v3, self, serviceMDN, hostname, username];

  return v7;
}

- (id)password
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  password = [WeakRetained password];

  return password;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained setPassword:passwordCopy];
}

- (Class)storeClassForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  name = [mailboxCopy name];
  v6 = [name isEqualToString:@"Greetings"];

  if (v6)
  {
    storeClass = objc_opt_class();
  }

  else
  {
    storeClass = [(IMAPServiceAccount *)self storeClass];
  }

  v8 = storeClass;
  v9 = storeClass;

  return v8;
}

- (id)storeForMailboxUid:(id)uid
{
  uidCopy = uid;
  [(NSRecursiveLock *)self->_storeCacheLock lock];
  cachedStores = self->_cachedStores;
  if (!cachedStores || (CFDictionaryGetValue(cachedStores, uidCopy), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9.receiver = self;
    v9.super_class = IMAPServiceAccount;
    v6 = [(IMAPServiceAccount *)&v9 storeForMailboxUid:uidCopy];
    if (v6)
    {
      if ((*(self + 352) & 2) == 0)
      {
        Mutable = self->_cachedStores;
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          self->_cachedStores = Mutable;
        }

        CFDictionarySetValue(Mutable, uidCopy, v6);
      }
    }
  }

  [(NSRecursiveLock *)self->_storeCacheLock unlock];

  return v6;
}

- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create
{
  createCopy = create;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = IMAPServiceAccount;
  v7 = -[IMAPServiceAccount mailboxUidForRelativePath:create:](&v13, "mailboxUidForRelativePath:create:", pathCopy, [pathCopy isEqualToString:@"INBOX"]);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !createCopy;
  }

  if (!v8)
  {
    stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
    v10 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:stringByDeletingLastPathComponent create:0];

    if (v10)
    {
      lastPathComponent = [pathCopy lastPathComponent];
      v7 = [(IMAPServiceAccount *)self _newMailboxWithParent:v10 name:lastPathComponent attributes:0 dictionary:0 withCreationOption:0];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (__CFString)connectionServiceType
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  connectionServiceType = [WeakRetained connectionServiceType];
  isWiFiNetworkAvailable = [WeakRetained isWiFiNetworkAvailable];
  if (connectionServiceType)
  {
    v6 = isWiFiNetworkAvailable;
  }

  else
  {
    v6 = 1;
  }

  if (v6 == 1)
  {
    v12.receiver = self;
    v12.super_class = IMAPServiceAccount;
    connectionServiceType = [(IMAPServiceAccount *)&v12 connectionServiceType];
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315906;
      v14 = v8;
      v15 = 2080;
      v16 = " ";
      v17 = 2112;
      v18 = connectionServiceType;
      v19 = 2112;
      v20 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%susing super connectionServiceType: %@, service %@", buf, 0x2Au);
    }
  }

  [WeakRetained setLastUsedConnectionType:connectionServiceType];
  v9 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315906;
    v14 = v10;
    v15 = 2080;
    v16 = " ";
    v17 = 2112;
    v18 = connectionServiceType;
    v19 = 2112;
    v20 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sconnectionServiceType: %@, service %@", buf, 0x2Au);
  }

  return connectionServiceType;
}

- (id)offlineCacheDirectoryPath
{
  [(NSRecursiveLock *)self->_serviceAccountLock lock];
  if (!self->_offlineCachePath)
  {
    accountDir = [(IMAPServiceAccount *)self accountDir];
    v4 = [accountDir URLByAppendingPathComponent:@"OfflineCache"];
    path = [v4 path];
    offlineCachePath = self->_offlineCachePath;
    self->_offlineCachePath = path;
  }

  [(NSRecursiveLock *)self->_serviceAccountLock unlock];
  v7 = self->_offlineCachePath;

  return v7;
}

- (void)setupLibrary
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    v6 = 136315394;
    v7 = v4;
    v8 = 2080;
    v9 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sIMAPServiceAccount::setupLibrary", &v6, 0x16u);
  }

  v5 = [[IMAPServiceLibrary alloc] initWithServiceAccount:self];
  [(IMAPServiceAccount *)self setLibrary:v5];
}

- (IMAPServiceLibrary)library
{
  v4.receiver = self;
  v4.super_class = IMAPServiceAccount;
  library = [(IMAPServiceAccount *)&v4 library];

  return library;
}

- (void)flushIMAPServiceLibraryCache
{
  library = [(IMAPServiceAccount *)self library];
  [library flushMessageCache];
}

- (void)setLongLifeMessagesCache
{
  library = [(IMAPServiceAccount *)self library];
  [library setLongLifeMessagesCache];
}

- (id)mimeBodyForAccountRecord:(void *)record
{
  library = [(IMAPServiceAccount *)self library];
  v6 = [library messageWithAccountStoreRecord:record];

  if (v6)
  {
    v7 = VMStoreRecordCopyDescription(record);
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v12 = 136315906;
      v13 = v9;
      v14 = 2080;
      v15 = " ";
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sDownloading data for message %@ record %@", &v12, 0x2Au);
    }

    messageBody = [v6 messageBody];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    messageBody = 0;
  }

  return messageBody;
}

- (void)willSetFlags:(unsigned int)flags state:(unsigned int)state forRecord:(void *)record needToBeStored:(BOOL)stored
{
  storedCopy = stored;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = v11;
  if (flags)
  {
    if (state)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    [v11 setObject:v13 forKey:MessageIsRead];
  }

  if ((flags & 4) != 0)
  {
    if ((state & 4) != 0)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    [v12 setObject:v14 forKey:MessageIsDeleted];
  }

  v15 = VMStoreRecordCopyFlagsDescription(flags);
  v16 = VMStoreRecordCopyFlagsDescription(state);
  v17 = VMStoreRecordCopyDescription(record);
  v18 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136316418;
    v27 = v19;
    v28 = 2080;
    v29 = " ";
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%swillSetFlags: flagsMask=%@, flagState=%@, dict=%@ for record %@", buf, 0x3Eu);
  }

  library = [(IMAPServiceAccount *)self library];
  v21 = [library messageWithAccountStoreRecord:record];

  v22 = [[NSArray alloc] initWithObjects:{v21, 0}];
  messageStore = [v21 messageStore];
  v24 = messageStore;
  if (storedCopy)
  {
    v25 = [messageStore willSetFlagsFromDictionary:v12 forMessages:v22];
  }

  else
  {
    [messageStore addFlagChanges:v12 forMessages:v22];
  }
}

- (void)storeFlags:(unsigned int)flags forRecord:(void *)record usingMessage:(id)message
{
  messageCopy = message;
  v9 = VMStoreRecordCopyFlagsDescription(flags);
  v10 = VMStoreRecordCopyDescription(record);
  v11 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    accountStore = [(IMAPServiceAccount *)self accountStore];
    *buf = 136316162;
    v30 = v12;
    v31 = 2080;
    v32 = " ";
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = accountStore;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sStore flags with mask:%@ for record:%@ store %@ to the server", buf, 0x34u);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (flags)
  {
    if (messageCopy || (-[IMAPServiceAccount library](self, "library"), v14 = objc_claimAutoreleasedReturnValue(), [v14 messageWithAccountStoreRecord:record], messageCopy = objc_claimAutoreleasedReturnValue(), v14, messageCopy))
    {
      messageStore = [messageCopy messageStore];
      v16 = [[NSArray alloc] initWithObjects:{messageCopy, 0}];
      Flags = VMStoreRecordGetFlags(record);
      v18 = objc_alloc_init(NSMutableDictionary);
      v19 = v18;
      if (flags)
      {
        if (Flags)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        [(__CFString *)v18 setObject:v20 forKey:MessageIsRead];
      }

      if ((flags & 4) != 0)
      {
        if ((Flags & 0x44) != 0)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        [(__CFString *)v19 setObject:v21 forKey:MessageIsDeleted];
      }

      v22 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315906;
        v30 = v23;
        v31 = 2080;
        v32 = " ";
        v33 = 2112;
        v34 = v19;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sSyncing flags %@ for messages %@ to the server", buf, 0x2Au);
      }

      v24 = [messageStore setFlagsFromDictionary:v19 forMessages:v16];
      if ((flags & 4) != 0)
      {
        v25 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
          Identifier = VMStoreRecordGetIdentifier(record);
          *buf = 136315650;
          v30 = v26;
          v31 = 2080;
          v32 = " ";
          v33 = 1024;
          LODWORD(v34) = Identifier;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sExpunging record with identifier %d", buf, 0x1Cu);
        }

        WeakRetained = objc_loadWeakRetained(&self->_service);
        [WeakRetained _removePendingDeleteForRecord:record];

        [messageStore doCompact];
      }
    }
  }
}

- (void)movePendingMessagesToTrash:(id)trash
{
  trashCopy = trash;
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    v7 = 136315394;
    v8 = v6;
    v9 = 2080;
    v10 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::movePendingMessagesToTrash", &v7, 0x16u);
  }

  [(IMAPServiceAccount *)self movePendingMessages:trashCopy isGoingToTrash:1];
}

- (void)moveMessagesWithTokensToTrash:(id)trash
{
  trashCopy = trash;
  context = objc_autoreleasePoolPush();
  v4 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315394;
    v50 = v5;
    v51 = 2080;
    v52 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::moveMessagesWithTokensToTrash", buf, 0x16u);
  }

  selfCopy = self;

  v41 = +[NSMutableArray array];
  v40 = +[NSMutableDictionary dictionary];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = trashCopy;
  v6 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v6)
  {
    v7 = *v46;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v45 + 1) + 8 * i);
        accountStore = [(IMAPServiceAccount *)selfCopy accountStore];
        v11 = sub_10009322C(accountStore, v9);

        if (v11)
        {
          if (CFArrayGetCount(v11))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
            accountStore2 = [(IMAPServiceAccount *)selfCopy accountStore];
            v14 = sub_100092B0C(accountStore2, ValueAtIndex);

            if ((v14 & 0x4C) == 0)
            {
              v15 = VMStoreCopyRecordsWithTokenInMailbox(v9, 3uLL);
              v16 = v15;
              if (v15)
              {
                if (CFArrayGetCount(v15))
                {
                  v42 = CFArrayGetValueAtIndex(v16, 0);
                  v17 = sub_100026660(selfCopy->logger.__ptr_);
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    log = v17;
                    v18 = *&selfCopy->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
                    v19 = sub_100087658(v42);
                    v20 = sub_100087658(ValueAtIndex);
                    *buf = 136315906;
                    v50 = v18;
                    v51 = 2080;
                    v52 = " ";
                    v53 = 2112;
                    v54 = v19;
                    v55 = 2112;
                    v56 = v20;
                    v17 = log;
                    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%smoving to Trash. Main has: %@, account has: %@", buf, 0x2Au);
                  }

                  TrashedDate = VMStoreRecordGetTrashedDate(v42);
                  accountStore3 = [(IMAPServiceAccount *)selfCopy accountStore];
                  sub_1000928E0(accountStore3, ValueAtIndex, TrashedDate);
                }

                CFRelease(v16);
              }

              library = [(IMAPServiceAccount *)selfCopy library];
              v24 = [library messageWithAccountStoreRecord:ValueAtIndex];

              if (v24)
              {
                [v41 addObject:v24];
                messageIDHeader = [v24 messageIDHeader];
                [v40 setObject:v9 forKeyedSubscript:messageIDHeader];
              }
            }
          }

          CFRelease(v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v6);
  }

  if ([v41 count])
  {
    v26 = sub_100026660(selfCopy->logger.__ptr_);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *&selfCopy->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v28 = [v41 count];
      *buf = 136315650;
      v50 = v27;
      v51 = 2080;
      v52 = " ";
      v53 = 2048;
      v54 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Moving %lu messages to Trash", buf, 0x20u);
    }

    v29 = [(IMAPServiceAccount *)selfCopy mailboxUidForRelativePath:@"Trash" create:1];
    v30 = [MFMailMessageStore copyMessages:v41 toMailbox:v29 markAsRead:0 deleteOriginals:1 isDeletion:1];
    v31 = sub_100026660(selfCopy->logger.__ptr_);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *&selfCopy->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v33 = [v30 debugDescription];
      *buf = 136315650;
      v50 = v32;
      v51 = 2080;
      v52 = " ";
      v53 = 2112;
      v54 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Message Transfer result %@", buf, 0x20u);
    }

    v34 = [(IMAPServiceAccount *)selfCopy mailboxUidForRelativePath:@"INBOX" create:0];
    v35 = [(IMAPServiceAccount *)selfCopy storeForMailboxUid:v34];
    [v35 doCompact];
  }

  objc_autoreleasePoolPop(context);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_service);
  [WeakRetained scheduleAutomatedTrashCompaction];
}

- (void)moveMessagesWithTokensToInbox:(id)inbox
{
  inboxCopy = inbox;
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100026660(self->logger.__ptr_);
  context = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315394;
    v45 = v6;
    v46 = 2080;
    v47 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::moveMessagesWithTokensToInbox", buf, 0x16u);
  }

  v38 = +[NSMutableArray array];
  v37 = +[NSMutableDictionary dictionary];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = inboxCopy;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v8)
  {
    v9 = *v41;
    v36 = v7;
    do
    {
      v39 = v8;
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        accountStore = [(IMAPServiceAccount *)self accountStore];
        v13 = sub_10009322C(accountStore, v11);

        if (v13)
        {
          if (CFArrayGetCount(v13))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
            accountStore2 = [(IMAPServiceAccount *)self accountStore];
            v16 = sub_100092B0C(accountStore2, ValueAtIndex);

            if ((v16 & 0x4C) == 8)
            {
              v17 = sub_100026660(self->logger.__ptr_);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
                v19 = sub_100087658(ValueAtIndex);
                *buf = 136315650;
                v45 = v18;
                v46 = 2080;
                v47 = " ";
                v48 = 2112;
                v49 = v19;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%smoving to Inbox. %@", buf, 0x20u);

                v7 = v36;
              }

              library = [(IMAPServiceAccount *)self library];
              v21 = [library messageWithAccountStoreRecord:ValueAtIndex];

              if (v21)
              {
                [v38 addObject:v21];
                messageIDHeader = [v21 messageIDHeader];
                [v37 setObject:v11 forKeyedSubscript:messageIDHeader];
              }
            }
          }

          CFRelease(v13);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v8);
  }

  if ([v38 count])
  {
    v23 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v25 = [v38 count];
      *buf = 136315650;
      v45 = v24;
      v46 = 2080;
      v47 = " ";
      v48 = 2048;
      v49 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Moving %lu messages to Inbox", buf, 0x20u);
    }

    primaryMailboxUid = [(IMAPServiceAccount *)self primaryMailboxUid];
    v27 = [MFMailMessageStore copyMessages:v38 toMailbox:primaryMailboxUid markAsRead:0 deleteOriginals:1 isDeletion:0];
    v28 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v30 = [v27 debugDescription];
      *buf = 136315650;
      v45 = v29;
      v46 = 2080;
      v47 = " ";
      v48 = 2112;
      v49 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Message Transfer result %@", buf, 0x20u);
    }

    if ([v27 resultCode] == 1)
    {
      v31 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:@"Trash" create:0];
      v32 = [(IMAPServiceAccount *)self storeForMailboxUid:v31];
      [v32 doCompact];
    }
  }

  objc_autoreleasePoolPop(context);
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained scheduleAutomatedTrashCompaction];
}

- (void)moveMessagesWithTokensToDeleted:(id)deleted
{
  deletedCopy = deleted;
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100026660(self->logger.__ptr_);
  context = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315394;
    v60 = v6;
    v61 = 2080;
    v62 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::moveMessagesWithTokensToDeleted", buf, 0x16u);
  }

  v49 = +[NSMutableArray array];
  v48 = +[NSMutableDictionary dictionary];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = deletedCopy;
  v8 = [v7 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v8)
  {
    v9 = *v55;
    v47 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        accountStore = [(IMAPServiceAccount *)self accountStore];
        v13 = sub_10009322C(accountStore, v11);

        if (v13)
        {
          if (CFArrayGetCount(v13))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
            v15 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v9;
              v17 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
              v18 = sub_100087658(ValueAtIndex);
              *buf = 136315650;
              v60 = v17;
              v61 = 2080;
              v62 = " ";
              v63 = 2112;
              v64 = v18;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%smoving to Deleted. %@", buf, 0x20u);

              v7 = v47;
              v9 = v16;
            }

            library = [(IMAPServiceAccount *)self library];
            v20 = [library messageWithAccountStoreRecord:ValueAtIndex];

            if (v20)
            {
              [v49 addObject:v20];
              messageIDHeader = [v20 messageIDHeader];
              [v48 setObject:v11 forKeyedSubscript:messageIDHeader];
            }
          }

          CFRelease(v13);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v8);
  }

  if ([v49 count])
  {
    v22 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v24 = [v49 count];
      *buf = 136315650;
      v60 = v23;
      v61 = 2080;
      v62 = " ";
      v63 = 2048;
      v64 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Deleting %lu messages", buf, 0x20u);
    }

    v25 = [v49 objectAtIndex:0];
    messageStore = [v25 messageStore];

    [messageStore deleteMessages:v49 moveToTrash:0];
    v43 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v43 error];
    v27 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v60 = v28;
      v61 = 2080;
      v62 = " ";
      v63 = 2112;
      v64 = error;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Deletion complete with %@", buf, 0x20u);
    }

    if (!error)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = v48;
      v30 = [v29 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v30)
      {
        v31 = *v51;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v51 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v50 + 1) + 8 * j);
            accountStore2 = [(IMAPServiceAccount *)self accountStore];
            v35 = [v29 objectForKeyedSubscript:v33];
            v36 = sub_10009322C(accountStore2, v35);

            if (v36)
            {
              if (CFArrayGetCount(v36))
              {
                v37 = CFArrayGetValueAtIndex(v36, 0);
                accountStore3 = [(IMAPServiceAccount *)self accountStore];
                sub_100093034(accountStore3, v37);
              }

              CFRelease(v36);
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v30);
      }

      v39 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315394;
        v60 = v40;
        v61 = 2080;
        v62 = " ";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sSaving updated records to store", buf, 0x16u);
      }

      accountStore4 = [(IMAPServiceAccount *)self accountStore];
      [accountStore4 save];
    }

    [messageStore doCompact];
  }

  objc_autoreleasePoolPop(context);
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained scheduleAutomatedTrashCompaction];
}

- (void)moveMessagesWithTokensToRead:(id)read
{
  readCopy = read;
  context = objc_autoreleasePoolPush();
  v4 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315394;
    v64 = v5;
    v65 = 2080;
    v66 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::moveMessagesWithTokensToRead", buf, 0x16u);
  }

  v52 = +[NSMutableArray array];
  v51 = +[NSMutableDictionary dictionary];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = readCopy;
  v6 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (v6)
  {
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v58 + 1) + 8 * i);
        accountStore = [(IMAPServiceAccount *)self accountStore];
        v11 = sub_10009322C(accountStore, v9);

        if (v11)
        {
          if (CFArrayGetCount(v11))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
            accountStore2 = [(IMAPServiceAccount *)self accountStore];
            v14 = sub_100092B0C(accountStore2, ValueAtIndex);

            if ((v14 & 0x45) == 0)
            {
              v15 = sub_100026660(self->logger.__ptr_);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
                v17 = sub_100087658(ValueAtIndex);
                *buf = 136315650;
                v64 = v16;
                v65 = 2080;
                v66 = " ";
                v67 = 2112;
                v68 = v17;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%smoving to Read. %@", buf, 0x20u);
              }

              library = [(IMAPServiceAccount *)self library];
              v19 = [library messageWithAccountStoreRecord:ValueAtIndex];

              if (v19)
              {
                [v52 addObject:v19];
                messageIDHeader = [v19 messageIDHeader];
                [v51 setObject:v9 forKeyedSubscript:messageIDHeader];
              }
            }
          }

          CFRelease(v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    }

    while (v6);
  }

  if ([v52 count])
  {
    v21 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v64 = v22;
      v65 = 2080;
      v66 = " ";
      v67 = 2112;
      v68 = v52;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s==== Syncing READ messages %@ to the server", buf, 0x20u);
    }

    v47 = [NSDictionary dictionaryWithObject:@"YES" forKey:MessageIsRead];
    v23 = [v52 objectAtIndex:0];
    messageStore = [v23 messageStore];

    v24 = [messageStore setFlagsFromDictionary:v47 forMessages:v52];
    v25 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315394;
      v64 = v26;
      v65 = 2080;
      v66 = " ";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s==== Syncing READ SEMI done", buf, 0x16u);
    }

    v45 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v45 error];
    v27 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v64 = v28;
      v65 = 2080;
      v66 = " ";
      v67 = 2112;
      v68 = error;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s==== Syncing READ done with %@", buf, 0x20u);
    }

    v29 = error;
    if (!error)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v30 = v51;
      v31 = [v30 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v31)
      {
        v32 = *v55;
        do
        {
          for (j = 0; j != v31; j = j + 1)
          {
            if (*v55 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v54 + 1) + 8 * j);
            accountStore3 = [(IMAPServiceAccount *)self accountStore];
            v36 = [v30 objectForKeyedSubscript:v34];
            v37 = sub_10009322C(accountStore3, v36);

            if (v37)
            {
              if (CFArrayGetCount(v37))
              {
                v38 = CFArrayGetValueAtIndex(v37, 0);
                accountStore4 = [(IMAPServiceAccount *)self accountStore];
                accountStore5 = [(IMAPServiceAccount *)self accountStore];
                v41 = sub_100092B0C(accountStore5, v38);
                sub_100092B3C(accountStore4, v38, v41 | 1u);
              }

              CFRelease(v37);
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v31);
      }

      v42 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315394;
        v64 = v43;
        v65 = 2080;
        v66 = " ";
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s%sSaving updated records to store", buf, 0x16u);
      }

      accountStore6 = [(IMAPServiceAccount *)self accountStore];
      [accountStore6 save];

      v29 = 0;
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)changePIN:(id)n
{
  nCopy = n;
  v5 = [(IMAPServiceAccount *)self connectionForStore:0 delegate:self options:9];
  v6 = +[MFActivityMonitor currentTracebleMonitor];
  v7 = v6;
  if (v5)
  {
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      serviceMDN = [(IMAPServiceAccount *)self serviceMDN];
      v16 = 136315650;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = serviceMDN;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Attempting to set the password for IMAP service account with service phone number %@", &v16, 0x20u);
    }

    [v5 changePassword:nCopy];
    error = [v7 error];
    v12 = error == 0;

    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_service);
      [WeakRetained setMailboxRequiresSetup:0];
    }

    error2 = 0;
  }

  else
  {
    error2 = [v6 error];
    if (!error2)
    {
      error2 = [NSError errorWithDomain:kVVErrorDomain code:1023 localizedDescription:@"Could not establish IMAP connection."];
    }

    v15 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10009C474(self);
    }

    if (error2)
    {
      [v7 setError:error2];
    }
  }
}

- (unint64_t)mailboxQuotaUsage
{
  v3 = [(IMAPServiceAccount *)self connectionForStore:0 delegate:self options:9];
  if (v3)
  {
    primaryMailboxUid = [(IMAPServiceAccount *)self primaryMailboxUid];
    v5 = [(IMAPServiceAccount *)self nameForMailboxUid:primaryMailboxUid];

    v6 = [v3 quotaPercentagesForMailbox:v5];
    v7 = [v6 count];
    if (v7)
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = [v6 objectAtIndex:v8];
        [v10 floatValue];
        v12 = v11;

        if (v12 > v9)
        {
          v9 = v12;
        }

        ++v8;
      }

      while (v7 != v8);
      v7 = (v9 * 100.0);
      if (v7 >= 0x50 && [v3 selectMailbox:v5 withAccount:self])
      {
        v13 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
          v16 = 136315650;
          v17 = v14;
          v18 = 2080;
          v19 = " ";
          v20 = 2048;
          v21 = (v9 * 100.0);
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sMailbox usage is at %ld%%. Expunging messages from Inbox.", &v16, 0x20u);
        }

        [v3 expunge];
      }
    }

    [(IMAPServiceAccount *)self checkInConnection:v3];
  }

  else
  {
    v5 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009C514(self);
    }

    v7 = 0;
  }

  return v7;
}

- (unsigned)uidValidityForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([mailboxCopy type] == 7)
  {
    accountStore = [(IMAPServiceAccount *)self accountStore];
    v6 = sub_100093234(accountStore, 0);
  }

  else
  {
    accountStore = [(IMAPServiceAccount *)self accountStore];
    v6 = sub_100093234(accountStore, [mailboxCopy name]);
  }

  v7 = v6;

  v8 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    name = [mailboxCopy name];
    v12 = 136316162;
    v13 = v9;
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = name;
    v18 = 1024;
    v19 = v7;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sgetUidValidity for mailbox %@ validity %u, service account %@", &v12, 0x30u);
  }

  return v7;
}

- (BOOL)getMailboxListWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:@"INBOX" create:0];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:@"Trash" create:0];
  if (!v6)
  {

    goto LABEL_6;
  }

  v7 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:@"Greetings" create:0];

  if (!v7)
  {
LABEL_6:
    v10.receiver = self;
    v10.super_class = IMAPServiceAccount;
    v8 = [(IMAPServiceAccount *)&v10 getMailboxListWithConnection:connectionCopy];
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (void)_addMonitoredInvocationForIdleConnectionDisconnection
{
  invocationQueue = [(IMAPServiceAccount *)self invocationQueue];
  service = [(IMAPServiceAccount *)self service];
  v5 = service;
  if (invocationQueue && service)
  {
    v6 = [MFMonitoredInvocation invocationWithSelector:"_performDisconnectIdleConnections" target:self taskName:@"DisconnectIdleConnections" priority:3 canBeCancelled:0];
    [v6 retainArguments];
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      monitor = [v6 monitor];
      monitor2 = [v6 monitor];
      v12 = 136316674;
      v13 = v8;
      v14 = 2080;
      v15 = " ";
      v16 = 2112;
      v17 = invocationQueue;
      v18 = 2048;
      v19 = monitor;
      v20 = 2112;
      v21 = monitor2;
      v22 = 2112;
      selfCopy = self;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: _addMonitoredInvocationForIdleConnectionDisconnection, account %@ => %@", &v12, 0x48u);
    }

    monitor3 = [v6 monitor];
    [v5 addScheduledActivity:monitor3];

    [invocationQueue addInvocation:v6];
  }
}

- (void)_performDisconnectIdleConnections
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    idleTimeout = self->_idleTimeout;
    *buf = 136315650;
    v26 = v4;
    v27 = 2080;
    v28 = " ";
    v29 = 2048;
    v30 = idleTimeout;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Idle Timer: Releasing connections that have been idle for %g s", buf, 0x20u);
  }

  [(IMAPServiceAccount *)self releaseAllConnectionsIdleForTimeInterval:self->_idleTimeout];
  v6 = OBJC_IVAR___IMAP_Account__connectionLock;
  [*&self->IMAP_Account_opaque[OBJC_IVAR___IMAP_Account__connectionLock] lock];
  [(IMAPServiceAccount *)self mf_lock];
  v7 = *&self->IMAP_Account_opaque[OBJC_IVAR___IMAP_Account__cachedConnections];
  if (v7)
  {
    Copy = CFArrayCreateCopy(kCFAllocatorDefault, v7);
  }

  else
  {
    Copy = 0;
  }

  [(IMAPServiceAccount *)self mf_unlock];
  [*&self->IMAP_Account_opaque[v6] unlock];
  if (Copy)
  {
    Count = CFArrayGetCount(Copy);
    v10 = Count > 0;
    if (Count < 1)
    {
      v10 = 0;
      v12 = 1.79769313e308;
    }

    else
    {
      v11 = 0;
      v12 = 1.79769313e308;
      do
      {
        v13 = CFArrayGetValueAtIndex(Copy, v11);
        [v13 mf_lock];
        [v13 lastUsedTime];
        v15 = v14;
        [v13 mf_unlock];
        if (v15 < v12)
        {
          v12 = v15;
        }

        ++v11;
      }

      while (Count != v11);
    }

    CFRelease(Copy);
  }

  else
  {
    v10 = 0;
    v12 = 1.79769313e308;
  }

  [(NSRecursiveLock *)self->_idleLock lock];
  idleTimer = self->_idleTimer;
  self->_idleTimer = 0;

  if (v10)
  {
    v17 = v12 + self->_idleTimeout;
    self->_nextIdleFire = v17;
    v18 = [NSTimer timerWithTimeInterval:self target:"_addMonitoredInvocationForIdleConnectionDisconnection" selector:0 userInfo:0 repeats:fmax(v17 - CFAbsoluteTimeGetCurrent(), 0.0)];
    v19 = self->_idleTimer;
    self->_idleTimer = v18;

    v20 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      nextIdleFire = self->_nextIdleFire;
      Current = CFAbsoluteTimeGetCurrent();
      *buf = 136315650;
      v26 = v21;
      v27 = 2080;
      v28 = " ";
      v29 = 2048;
      v30 = nextIdleFire - Current;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sIdle Timer: More connections were still active after releasing the idled connections, so we'll reschedule the idle timer for %g s", buf, 0x20u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002AF30;
    block[3] = &unk_1000EDEC8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  [(NSRecursiveLock *)self->_idleLock unlock];
}

- (void)_startIdleTimer
{
  [(NSRecursiveLock *)self->_idleLock lock];
  if (self->_idleTimeout > 0.0)
  {
    idleTimer = self->_idleTimer;
    if (idleTimer)
    {
      if ([(NSTimer *)idleTimer isValid])
      {
        nextIdleFire = self->_nextIdleFire;
        if (nextIdleFire < CFAbsoluteTimeGetCurrent())
        {
          [(NSTimer *)self->_idleTimer fire];
          goto LABEL_10;
        }
      }

      if (self->_idleTimer)
      {
        goto LABEL_10;
      }
    }

    v5 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      idleTimeout = self->_idleTimeout;
      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = " ";
      v14 = 2048;
      v15 = idleTimeout;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sIdle Timer: Starting up idle timer for %g s, service account %@", &v10, 0x2Au);
    }

    self->_nextIdleFire = CFAbsoluteTimeGetCurrent() + self->_idleTimeout;
    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_addMonitoredInvocationForIdleConnectionDisconnection" selector:0 userInfo:0 repeats:self->_idleTimeout];
    v9 = self->_idleTimer;
    self->_idleTimer = v8;
  }

LABEL_10:
  [(NSRecursiveLock *)self->_idleLock unlock];
}

- (void)releaseAllConnections
{
  [(NSRecursiveLock *)self->_idleLock lock];
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315650;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sReleasing connections, we will also stop waiting for idle connections for service account %@", buf, 0x20u);
  }

  [(NSTimer *)self->_idleTimer invalidate];
  idleTimer = self->_idleTimer;
  self->_idleTimer = 0;

  [(NSRecursiveLock *)self->_idleLock unlock];
  v6.receiver = self;
  v6.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v6 releaseAllConnections];
}

- (void)checkInConnectionsPolitelyForStore:(id)store
{
  v3.receiver = self;
  v3.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v3 checkInConnectionsForStore:store];
}

- (void)checkInConnectionsForStore:(id)store
{
  storeCopy = store;
  v5 = OBJC_IVAR___IMAP_Account__connectionLock;
  [*&self->IMAP_Account_opaque[OBJC_IVAR___IMAP_Account__connectionLock] lock];
  *(self + 352) |= 1u;
  v6.receiver = self;
  v6.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v6 checkInConnectionsForStore:storeCopy];
  *(self + 352) &= ~1u;
  [*&self->IMAP_Account_opaque[v5] unlock];
}

- (void)checkInConnection:(id)connection
{
  connectionCopy = connection;
  v5 = OBJC_IVAR___IMAP_Account__connectionLock;
  [*&self->IMAP_Account_opaque[OBJC_IVAR___IMAP_Account__connectionLock] lock];
  if (*(self + 352))
  {
    [connectionCopy checkInForcefully];
  }

  else if (![connectionCopy checkIn])
  {
    goto LABEL_6;
  }

  v6.receiver = self;
  v6.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v6 checkInConnection:connectionCopy];
LABEL_6:
  [*&self->IMAP_Account_opaque[v5] unlock];
}

- (void)_clearConnectionCheckOuts
{
  v3 = +[IMAPServiceConnection heldConnectionsForCheckingIn];
  [v3 makeObjectsPerformSelector:"checkInToAccount:" withObject:self];
}

- (IMAPService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (MFInvocationQueue)invocationQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_invocationQueue);

  return WeakRetained;
}

@end
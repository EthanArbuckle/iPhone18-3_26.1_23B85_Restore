@interface MFMailMessageStore
+ (BOOL)createEmptyStoreForPath:(id)path;
+ (BOOL)createEmptyStoreIfNeededForPath:(id)path;
+ (BOOL)storeAtPathIsWritable:(id)writable;
+ (id)copyMessages:(id)messages toMailbox:(id)mailbox markAsRead:(BOOL)read deleteOriginals:(BOOL)originals isDeletion:(BOOL)deletion;
- (BOOL)_updateFlagForMessage:(id)message key:(id)key value:(BOOL)value;
- (BOOL)hasCachedDataForMimePart:(id)part;
- (BOOL)hasMessageForAccount:(id)account;
- (BOOL)shouldArchive;
- (BOOL)shouldDeleteInPlace;
- (BOOL)shouldDownloadBodyDataForMessage:(id)message;
- (BOOL)shouldGrowFetchWindow;
- (BOOL)shouldSetSummaryForMessage:(id)message;
- (BOOL)supportsArchiving;
- (MFMailMessageStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only;
- (id)_fetchHeaderDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary;
- (id)displayName;
- (id)finishRoutingMessages:(id)messages routed:(id)routed;
- (id)lastViewedMessageDate;
- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages;
- (id)storeSearchResultMatchingCriterion:(id)criterion limit:(unsigned int)limit offset:(id)offset error:(id *)error;
- (int)archiveDestination;
- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)d options:(unint64_t)options;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set;
- (void)_flushAllMessageData;
- (void)_setFlagsForMessages:(id)messages;
- (void)allMessageFlagsDidChange:(id)change;
- (void)cancelOpen;
- (void)dealloc;
- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash;
- (void)didOpen;
- (void)messageFlagsDidChange:(id)change flags:(id)flags;
- (void)messagesWereAdded:(id)added;
- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date;
- (void)messagesWereCompacted:(id)compacted;
- (void)messagesWillBeCompacted:(id)compacted;
- (void)openAsynchronously;
- (void)setFlagForAllMessages:(id)messages state:(BOOL)state;
- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary;
- (void)structureDidChange;
- (void)undeleteMessages:(id)messages;
- (void)updateMessages:(id)messages updateNumberOfAttachments:(BOOL)attachments;
@end

@implementation MFMailMessageStore

+ (BOOL)createEmptyStoreIfNeededForPath:(id)path
{
  pathCopy = path;
  v8 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy isDirectory:&v8])
  {
    v6 = v8;
  }

  else
  {
    v6 = [self createEmptyStoreForPath:pathCopy];
  }

  return v6 & 1;
}

+ (BOOL)createEmptyStoreForPath:(id)path
{
  pathCopy = path;
  [self doesNotRecognizeSelector:a2];
  __assert_rtn("+[MFMailMessageStore createEmptyStoreForPath:]", "MailMessageStore.m", 164, "0");
}

+ (BOOL)storeAtPathIsWritable:(id)writable
{
  writableCopy = writable;
  [self doesNotRecognizeSelector:a2];
  __assert_rtn("+[MFMailMessageStore storeAtPathIsWritable:]", "MailMessageStore.m", 172, "0");
}

- (MFMailMessageStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only
{
  uidCopy = uid;
  v16.receiver = self;
  v16.super_class = MFMailMessageStore;
  v8 = [(MFMailMessageStore *)&v16 init];
  if (!v8)
  {
LABEL_8:
    v12 = v8;
    goto LABEL_9;
  }

  fullPath = [uidCopy fullPath];
  account = [uidCopy account];
  if ([objc_opt_class() createEmptyStoreIfNeededForPath:fullPath])
  {
    if (only)
    {
      v11 = 1;
    }

    else
    {
      v11 = [objc_opt_class() storeAtPathIsWritable:fullPath] ^ 1;
    }

    v8->_flags = (*&v8->_flags & 0xFFFFFFFE | v11);
    account = v8->_account;
    v8->_account = account;
    v14 = account;

    objc_storeStrong(&v8->_mailboxUid, uid);
    *&v8->_flags |= 0x100u;

    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMailMessageStore;
  [(MFMailMessageStore *)&v2 dealloc];
}

- (void)openAsynchronously
{
  _MFLockGlobalLock();
  if ((self->_state | 4) == 4)
  {
    self->_state = 1;
    if (!openAsynchronously__openMailboxesQueue)
    {
      v3 = [[MFInvocationQueue alloc] initWithDomain:"proc.open"];
      v4 = openAsynchronously__openMailboxesQueue;
      openAsynchronously__openMailboxesQueue = v3;

      [openAsynchronously__openMailboxesQueue setMaxThreadCount:3];
    }

    _MFUnlockGlobalLock();
    v7 = [MFMonitoredInvocation invocationWithSelector:sel_openSynchronously target:self taskName:0 priority:10 canBeCancelled:1];
    [openAsynchronously__openMailboxesQueue addInvocation:v7];
    [(MFMailMessageStore *)self mf_lock];
    monitor = [v7 monitor];
    openMonitor = self->_openMonitor;
    self->_openMonitor = monitor;

    [(MFMailMessageStore *)self mf_unlock];
  }

  else
  {

    _MFUnlockGlobalLock();
  }
}

- (void)didOpen
{
  [(MFMailMessageStore *)self mf_lock];
  openMonitor = self->_openMonitor;
  self->_openMonitor = 0;

  [(MFMailMessageStore *)self mf_unlock];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MailMessageStoreDidOpen" object:self userInfo:0];
}

- (void)cancelOpen
{
  [(MFMailMessageStore *)self mf_lock];
  [(MFActivityMonitor *)self->_openMonitor cancel];

  [(MFMailMessageStore *)self mf_unlock];
}

- (id)displayName
{
  account = [(MFMailMessageStore *)self account];
  displayName = [account displayName];
  accountRelativePath = [(MFMailboxUid *)self->_mailboxUid accountRelativePath];
  if (displayName && ![displayName isEqualToString:&stru_288159858] || (objc_msgSend(account, "hostname"), v6 = objc_claimAutoreleasedReturnValue(), displayName, (displayName = v6) != 0))
  {
    if (([displayName isEqualToString:&stru_288159858] & 1) == 0)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ --- %@", accountRelativePath, displayName];

      accountRelativePath = v7;
    }
  }

  return accountRelativePath;
}

- (void)messageFlagsDidChange:(id)change flags:(id)flags
{
  if (change)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"messages", flags, @"flags", 0}];
  }

  else
  {
    v6 = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v6];
}

- (void)allMessageFlagsDidChange:(id)change
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"flags";
  v10[0] = change;
  v4 = MEMORY[0x277CBEAC0];
  changeCopy = change;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)structureDidChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MailMessageStoreStructureChanged" object:self];
}

- (void)messagesWereAdded:(id)added
{
  v4 = MEMORY[0x277CBEAA8];
  addedCopy = added;
  distantPast = [v4 distantPast];
  [(MFMailMessageStore *)self messagesWereAdded:addedCopy earliestReceivedDate:distantPast];
}

- (void)messagesWereCompacted:(id)compacted
{
  v9[1] = *MEMORY[0x277D85DE8];
  compactedCopy = compacted;
  if ([compactedCopy count])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = @"messages";
    v9[0] = compactedCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesRemoved" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)messagesWillBeCompacted:(id)compacted
{
  v9[1] = *MEMORY[0x277D85DE8];
  compactedCopy = compacted;
  if ([compactedCopy count])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = @"messages";
    v9[0] = compactedCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesWillBeCompacted" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldGrowFetchWindow
{
  hasMoreFetchableMessages = [(MFMailMessageStore *)self hasMoreFetchableMessages];
  if (hasMoreFetchableMessages)
  {
    serverMessageCount = [(MFMailMessageStore *)self serverMessageCount];
    LOBYTE(hasMoreFetchableMessages) = serverMessageCount > [(MFMailMessageStore *)self fetchWindow];
  }

  return hasMoreFetchableMessages;
}

- (BOOL)hasMessageForAccount:(id)account
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  account = [(MFMailMessageStore *)self account];

  if (account == accountCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(MFMailMessageStore *)self copyOfAllMessagesWithOptions:128];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [MailAccount accountThatMessageIsFrom:*(*(&v13 + 1) + 8 * i), v13];

          if (v10 == accountCopy)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)storeSearchResultMatchingCriterion:(id)criterion limit:(unsigned int)limit offset:(id)offset error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 0;
}

- (id)finishRoutingMessages:(id)messages routed:(id)routed
{
  routedCopy = routed;
  v7 = [messages mutableCopy];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      v10 = [v7 objectAtIndex:v9];
      if (([v10 messageFlags] & 2) != 0)
      {
        [v7 removeObjectAtIndex:v9];
      }

      --v9;
    }

    while (v9 != -1);
  }

  if ([v7 count])
  {
    _defaultRouterDestination = [(MFMailMessageStore *)self _defaultRouterDestination];
    if (!_defaultRouterDestination)
    {
      goto LABEL_20;
    }

    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    v13 = [_defaultRouterDestination isEqual:mailboxUid];

    if (v13)
    {
      goto LABEL_20;
    }

    account = [_defaultRouterDestination account];
    v15 = [account storeForMailboxUid:_defaultRouterDestination];
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!v15)
    {
LABEL_19:

LABEL_20:
      goto LABEL_21;
    }

    [v15 appendMessages:v7 unsuccessfulOnes:v16];
    v17 = [v7 count];
    if (routedCopy)
    {
      v18 = [routedCopy mutableCopy];

      routedCopy = v18;
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      routedCopy = [MEMORY[0x277CBEB18] array];
      if (!v17)
      {
LABEL_18:
        [(MFMailMessageStore *)self deleteMessages:v7 moveToTrash:0];
        goto LABEL_19;
      }
    }

    v19 = v17 - 1;
    do
    {
      v20 = [v7 objectAtIndex:v19];
      if ([v16 indexOfObjectIdenticalTo:v20] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [routedCopy addObject:v20];
      }

      --v19;
    }

    while (v19 != -1);
    goto LABEL_18;
  }

LABEL_21:

  return routedCopy;
}

- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash
{
  trashCopy = trash;
  v33[2] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v7 = MEMORY[0x277CBEC38];
  v32[0] = @"MessageIsDeleted";
  v32[1] = @"MessageIsRead";
  v33[0] = MEMORY[0x277CBEC38];
  v33[1] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  if (trashCopy)
  {
    account = self->_account;
    v10 = [(MailAccount *)account mailboxUidOfType:3 createIfNeeded:1];
    v11 = [(MailAccount *)account storeForMailboxUid:v10];

    if (v11)
    {
      v30 = @"MessageIsRead";
      v31 = v7;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v13 = [(MFMailMessageStore *)self setFlagsFromDictionary:v12 forMessages:messagesCopy];

      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v11 mf_lock];
      [v11 appendMessages:messagesCopy unsuccessfulOnes:v14];
      [v11 mf_unlock];
      if ([v14 count])
      {
        v24 = v11;
        array = [MEMORY[0x277CBEB18] array];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = messagesCopy;
        v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v26;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v25 + 1) + 8 * i);
              if ([v14 indexOfObjectIdenticalTo:v21] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [array addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v18);
        }

        [(MFMailMessageStore *)self setFlag:@"MessageIsDeleted" state:0 forMessages:v14];
        messagesCopy = array;
        v11 = v24;
      }
    }
  }

  v22 = [(MFMailMessageStore *)self setFlagsFromDictionary:v8 forMessages:messagesCopy];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)undeleteMessages:(id)messages
{
  v9[1] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  if ((*&self->_flags & 1) == 0)
  {
    v8 = @"MessageIsDeleted";
    v9[0] = MEMORY[0x277CBEC28];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [(MFMailMessageStore *)self setFlagsFromDictionary:v5 forMessages:messagesCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)copyMessages:(id)messages toMailbox:(id)mailbox markAsRead:(BOOL)read deleteOriginals:(BOOL)originals isDeletion:(BOOL)deletion
{
  v46[2] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  Current = CFAbsoluteTimeGetCurrent();
  v45[0] = @"MessageIsDeleted";
  v45[1] = @"MessageIsRead";
  v46[0] = MEMORY[0x277CBEC38];
  v46[1] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  store = [mailboxCopy store];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = v18;
  if (store)
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __83__MFMailMessageStore_copyMessages_toMailbox_markAsRead_deleteOriginals_isDeletion___block_invoke;
    v30 = &unk_279E33D70;
    v31 = mailboxCopy;
    originalsCopy = originals;
    readCopy = read;
    v32 = v14;
    v33 = store;
    v34 = v16;
    deletionCopy = deletion;
    v35 = v19;
    [messagesCopy mf_enumerateByStoreUsingBlock:&v27];
  }

  else
  {
    [v18 addObjectsFromArray:messagesCopy];
  }

  v20 = [v19 count];
  [v13 addObjectsFromArray:v19];
  v21 = CFAbsoluteTimeGetCurrent();
  v22 = [messagesCopy count];
  v23 = getLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v40 = v22;
    v41 = 2048;
    v42 = v21 - Current;
    v43 = 2048;
    v44 = (v21 - Current) / v22;
    _os_log_debug_impl(&dword_2720B1000, v23, OS_LOG_TYPE_DEBUG, "#D [LogMessageTransferTimes] Transferring %lu messages took %4.5f seconds (%4.5f s/msg).", buf, 0x20u);
  }

  v24 = [[MFMessageTransferResult alloc] initWithResultCode:v20 == 0 failedMessages:v13 transferedMessage:v14];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __83__MFMailMessageStore_copyMessages_toMailbox_markAsRead_deleteOriginals_isDeletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v5 mailboxUid];
  v9 = [v8 representedAccount];

  if (!v9)
  {
    v9 = [v5 account];
  }

  v10 = [*(a1 + 32) representedAccount];
  v11 = [MailAccount canMoveMessagesFromAccount:v9 toAccount:v10];

  if (v11)
  {
    if (*(a1 + 72) != 1)
    {
      goto LABEL_32;
    }

    v12 = [v5 mailboxUid];
    v13 = [v9 moveMessages:v6 fromMailbox:v12 toMailbox:*(a1 + 32) markAsRead:*(a1 + 73)];

    v14 = [v13 resultCode];
    v15 = *(a1 + 40);
    v16 = [v13 transferedMessages];
    [v15 addObjectsFromArray:v16];

    v17 = [v13 failedMessages];
    [v7 addObjectsFromArray:v17];

    if (v14 != 1)
    {
LABEL_32:
      if (![v7 count])
      {
        if (*(a1 + 73) == 1 && [v6 count])
        {
          v45 = @"MessageIsRead";
          v46[0] = MEMORY[0x277CBEC38];
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
          v19 = [v5 setFlagsFromDictionary:v18 forMessages:v6];
        }

        v37 = v5;
        v20 = [MEMORY[0x277CBEB18] array];
        v36 = [MEMORY[0x277CBEB18] array];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v6 = v6;
        v21 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v39;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(v6);
              }

              v25 = [*(*(&v38 + 1) + 8 * i) messageFlags];
              v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25 & 0xFFFFFFFFFFFFFFFDLL];
              [v20 addObject:v26];
            }

            v22 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
          }

          while (v22);
        }

        v27 = v36;
        if ([*(a1 + 48) appendMessages:v6 unsuccessfulOnes:v7 newMessageIDs:v36 newMessages:*(a1 + 40) flagsToSet:v20] != 1)
        {
          v28 = [v6 mutableCopy];

          [v28 removeObjectsInArray:v7];
          v6 = v28;
        }

        v5 = v37;
        if ([v6 count] && *(a1 + 72) == 1)
        {
          v29 = [v37 setFlagsFromDictionary:*(a1 + 56) forMessages:v6];
        }

        if ([v7 count])
        {
          if (*(a1 + 74) == 1 && ([v37 mailboxUid], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "shouldRestoreMessagesAfterFailedDelete"), v30, (v31 & 1) == 0))
          {
            v34 = [v37 setFlagsFromDictionary:*(a1 + 56) forMessages:v7];
          }

          else
          {
            v42 = @"MessageIsDeleted";
            v43 = MEMORY[0x277CBEC28];
            v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            v33 = [v37 setFlagsFromDictionary:v32 forMessages:v7];
          }
        }
      }
    }
  }

  else
  {
    [v7 addObjectsFromArray:v6];
  }

  [*(a1 + 64) addObjectsFromArray:v7];

  v35 = *MEMORY[0x277D85DE8];
}

- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set
{
  onesCopy = ones;
  messagesCopy = messages;
  [onesCopy replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(onesCopy, "count"), messagesCopy}];

  return 0;
}

- (id)lastViewedMessageDate
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  lastViewedMessageDate = [mailboxUid lastViewedMessageDate];

  return lastViewedMessageDate;
}

- (BOOL)hasCachedDataForMimePart:(id)part
{
  mimeBody = [part mimeBody];
  message = [mimeBody message];
  isMessageContentsLocallyAvailable = [message isMessageContentsLocallyAvailable];

  return isMessageContentsLocallyAvailable;
}

- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  messagesCopy = messages;
  v8 = [dictionaryCopy count];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  allKeys = [dictionaryCopy allKeys];
  if (*&self->_flags)
  {
    v19 = 0;
  }

  else
  {
    v22 = &v22;
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v13 = [allKeys objectAtIndex:{i, v22}];
        v9[i] = [dictionaryCopy mf_BOOLForKey:v13];
      }
    }

    v24 = dictionaryCopy;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v28 = 0u;
    v23 = messagesCopy;
    v25 = messagesCopy;
    v27 = [v25 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v27)
    {
      v26 = *v29;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(v25);
          }

          if (v8)
          {
            v15 = 0;
            v16 = *(*(&v28 + 1) + 8 * j);
            do
            {
              v17 = [allKeys objectAtIndex:{v15, v22}];
              v18 = [(MFMailMessageStore *)self _updateFlagForMessage:v16 key:v17 value:v9[v15]];

              if (v18)
              {
                [v10 vf_addObjectIfAbsent:v16];
              }

              ++v15;
            }

            while (v8 != v15);
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v27);
    }

    v19 = v10;
    dictionaryCopy = v24;
    messagesCopy = v23;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)setFlagForAllMessages:(id)messages state:(BOOL)state
{
  stateCopy = state;
  v11[1] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  messagesCopy2 = messages;
  v7 = asNSStringBOOL(stateCopy);
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&messagesCopy count:1];

  [(MFMailMessageStore *)self setFlagsForAllMessagesFromDictionary:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [(MFMailMessageStore *)self copyOfAllMessagesWithOptions:128];
  v5 = [(MFMailMessageStore *)self setFlagsFromDictionary:dictionaryCopy forMessages:v4];
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  v5 = [MFActivityMonitor currentMonitor:messages];
  [v5 reset];

  return 0;
}

- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)d options:(unint64_t)options
{
  *&v48[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = getLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    *buf = 138412290;
    *v48 = mailboxUid;
    _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "#I [fetchMobileSynchronously] begin [mailbox:%@]", buf, 0xCu);
  }

  v8 = +[MFActivityMonitor currentMonitor];
  mailboxUid2 = [(MFMailMessageStore *)self mailboxUid];
  [v8 setMailbox:mailboxUid2];

  v10 = +[MFActivityMonitor currentMonitor];
  [v10 addReason:@"MonitoredActivityReasonFetching"];

  v11 = MEMORY[0x277CCACA8];
  mailboxUid3 = [(MFMailMessageStore *)self mailboxUid];
  uRLString = [mailboxUid3 URLString];
  v14 = [v11 stringWithFormat:@"%@", uRLString];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%lu|%@|%d", v14, lastFetchCount, dCopy, (options >> 1) & 1];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  account = [(MFMailMessageStore *)self account];
  v46 = v16;
  v18 = [account willPerformActionForChokePoint:v14 coalescePoint:v15 result:&v46];
  v19 = v46;

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  if (v20 == 1)
  {
    do
    {
      account2 = [(MFMailMessageStore *)self account];
      v45 = 0;
      LOBYTE(v18) = [account2 willPerformActionForChokePoint:v14 coalescePoint:v15 result:&v45];
      v19 = v45;

      if (v19)
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }
    }

    while ((v22 & 1) != 0);
  }

  if ((v18 & 1) == 0)
  {
    account3 = [(MFMailMessageStore *)self account];
    v41 = account3;
    if (account3)
    {
      v40 = [account3 powerAssertionIdentifierWithPrefix:@"com.apple.message.fetchMobileSynchronously"];
    }

    else
    {
      v40 = @"com.apple.message.fetchMobileSynchronously";
    }

    v24 = +[MFPowerController sharedInstance];
    [v24 retainAssertionWithIdentifier:v40 withAccount:v41];

    [(MFMailMessageStore *)self mf_lock];
    if (lastFetchCount)
    {
      self->_lastFetchCount = lastFetchCount;
    }

    else
    {
      lastFetchCount = self->_lastFetchCount;
    }

    [(MFMailMessageStore *)self mf_unlock];
    v25 = 2;
    while (1)
    {
      v26 = [(MFMailMessageStore *)self fetchNumMessages:lastFetchCount preservingUID:dCopy options:options];
      v27 = getLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v48[0] = v25;
        LOWORD(v48[1]) = 2048;
        *(&v48[1] + 2) = v26;
        _os_log_impl(&dword_2720B1000, v27, OS_LOG_TYPE_DEFAULT, "#I [fetchMobileSynchronously] fetchNumMessages completed [tries %d, result %ld]", buf, 0x12u);
      }

      if (v26 < 0)
      {
        v28 = +[MFActivityMonitor currentMonitor];
        error = [v28 error];
        v30 = [v41 shouldFetchAgainWithError:error foregroundRequest:(options >> 4) & 1];

        if (!v30)
        {
          break;
        }
      }

      v31 = [MEMORY[0x277CCABB0] numberWithInteger:v26];

      v33 = v25-- != 0 && v26 < 0;
      v19 = v31;
      if (!v33)
      {
        v19 = v31;
        break;
      }
    }

    account4 = [(MFMailMessageStore *)self account];
    [account4 didFinishActionForChokePoint:v14 coalescePoint:v15 withResult:v19];

    v35 = +[MFPowerController sharedInstance];
    [v35 releaseAssertionWithIdentifier:v40];
  }

  v36 = getLogger();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v48 = v19;
    _os_log_impl(&dword_2720B1000, v36, OS_LOG_TYPE_DEFAULT, "#I [fetchMobileSynchronously] completed [%@ messages]", buf, 0xCu);
  }

  integerValue = [v19 integerValue];
  v38 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (void)_flushAllMessageData
{
  [(MFMailMessageStore *)self mf_lock];
  self->_deletedMessageCount = 0;
  self->_deletedMessagesSize = 0;
  self->_unreadMessageCount = 0;
  _MFLockGlobalLock();
  _MFUnlockGlobalLock();
  [(MFMailMessageStore *)self mf_unlock];
  v3.receiver = self;
  v3.super_class = MFMailMessageStore;
  [(MFMailMessageStore *)&v3 _flushAllMessageData];
}

- (BOOL)shouldDownloadBodyDataForMessage:(id)message
{
  messageCopy = message;
  summary = [messageCopy summary];
  if (summary)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [messageCopy isMessageContentsLocallyAvailable] ^ 1;
  }

  return v5;
}

- (BOOL)shouldSetSummaryForMessage:(id)message
{
  summary = [message summary];
  v4 = summary == 0;

  return v4;
}

- (BOOL)shouldDeleteInPlace
{
  account = [(MFMailMessageStore *)self account];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  v5 = [account deleteInPlaceForMailbox:mailboxUid];

  return v5;
}

- (BOOL)supportsArchiving
{
  account = [(MFMailMessageStore *)self account];
  if ([account supportsArchiving])
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    v5 = [account preventArchiveForMailbox:mailboxUid] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldArchive
{
  account = [(MFMailMessageStore *)self account];
  if ([account shouldArchiveByDefault])
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    v5 = [account canArchiveForMailbox:mailboxUid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)archiveDestination
{
  account = [(MFMailMessageStore *)self account];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  v5 = [account archiveDestinationForMailbox:mailboxUid];

  return v5;
}

- (id)_fetchHeaderDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary
{
  messageCopy = message;
  [(MFMailMessageStore *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMailMessageStore _fetchHeaderDataForMessage:downloadIfNecessary:]", "MailMessageStore.m", 1113, "0");
}

- (void)_setFlagsForMessages:(id)messages
{
  messagesCopy = messages;
  keyEnumerator = [messagesCopy keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v5 = nextObject;
    do
    {
      v6 = [messagesCopy objectForKey:v5];
      v7 = [v6 objectForKey:@"messageFlags"];
      if (v7)
      {
        v8 = [v6 objectForKey:@"messageFlagsMask"];
        v9 = v8;
        unsignedIntValue = 0x1BFDDF7FFFFLL;
        if (v8)
        {
          unsignedIntValue = [v8 unsignedIntValue];
        }

        unsignedIntValue2 = [v7 unsignedIntValue];
        v12 = v5;
        v13 = v12;
        if (unsignedIntValue)
        {
          messageFlags = [v12 messageFlags];
          v15 = unsignedIntValue == 0x1BFDDF7FFFFLL ? unsignedIntValue2 : messageFlags & ~unsignedIntValue | unsignedIntValue & unsignedIntValue2;
          if (v15 != messageFlags)
          {
            [v13 setMessageFlags:?];
          }
        }
      }

      nextObject2 = [keyEnumerator nextObject];

      v5 = nextObject2;
    }

    while (nextObject2);
  }
}

- (void)updateMessages:(id)messages updateNumberOfAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  messagesCopy = messages;
  if (attachmentsCopy)
  {
    v13 = messagesCopy;
    copyOfAllMessages = messagesCopy;
    if (!copyOfAllMessages)
    {
      copyOfAllMessages = [(MFMailMessageStore *)self copyOfAllMessages];
    }

    v8 = [copyOfAllMessages count] - 1;
    do
    {
      if (v8 == -1)
      {
        break;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = [copyOfAllMessages objectAtIndex:v8];
      [v10 calculateAttachmentInfoFromBody:0];
      v11 = +[MFActivityMonitor currentMonitor];
      shouldCancel = [v11 shouldCancel];

      objc_autoreleasePoolPop(v9);
      --v8;
    }

    while (!shouldCancel);

    messagesCopy = v13;
  }
}

- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date
{
  addedCopy = added;
  dateCopy = date;
  generationNumber = self->_generationNumber;
  if (generationNumber == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 1;
  }

  else
  {
    v8 = generationNumber + 1;
  }

  self->_generationNumber = v8;
  if ([addedCopy count])
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{addedCopy, @"messages", dateCopy, @"previous earliest received date", 0}];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesAdded" object:self userInfo:v9];
  }
}

- (BOOL)_updateFlagForMessage:(id)message key:(id)key value:(BOOL)value
{
  valueCopy = value;
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  keyCopy = key;
  messageFlags = [messageCopy messageFlags];
  if ([keyCopy isEqual:@"MessageIsRead"])
  {
    if ((messageFlags & 1) != valueCopy)
    {
      unreadMessageCount = self->_unreadMessageCount;
      v12 = valueCopy ? unreadMessageCount - 1 : unreadMessageCount + 1;
      self->_unreadMessageCount = v12;
      if (v12 >> 31)
      {
        self->_unreadMessageCount = 0;
        v13 = getLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid = [(MFMailMessageStore *)self mailboxUid];
          v21 = 136315394;
          mambaID = [mailboxUid mambaID];
          v23 = 2080;
          v24 = " ";
          _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s#UnreadCount _unreadMessageCount went negative", &v21, 0x16u);
        }
      }
    }
  }

  else
  {
    if ([keyCopy isEqual:@"MessageIsDeleted"])
    {
      v15 = ((messageFlags >> 1) & 1) == valueCopy;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      deletedMessageCount = self->_deletedMessageCount;
      if (valueCopy)
      {
        self->_deletedMessageCount = deletedMessageCount + 1;
        v17 = self->_deletedMessagesSize + [messageCopy messageSize];
      }

      else
      {
        self->_deletedMessageCount = deletedMessageCount - 1;
        v17 = self->_deletedMessagesSize - [messageCopy messageSize];
      }

      self->_deletedMessagesSize = v17;
    }
  }

  v18 = _MFFlagsBySettingValueForKey(messageFlags, keyCopy, valueCopy);
  if (v18 != messageFlags && [(MFMailMessageStore *)self _shouldChangeComponentMessageFlagsForMessage:messageCopy])
  {
    [messageCopy setMessageFlags:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18 != messageFlags;
}

@end
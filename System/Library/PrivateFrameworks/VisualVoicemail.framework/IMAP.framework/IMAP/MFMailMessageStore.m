@interface MFMailMessageStore
+ (BOOL)createEmptyStoreForPath:(id)a3;
+ (BOOL)createEmptyStoreIfNeededForPath:(id)a3;
+ (BOOL)storeAtPathIsWritable:(id)a3;
+ (id)copyMessages:(id)a3 toMailbox:(id)a4 markAsRead:(BOOL)a5 deleteOriginals:(BOOL)a6 isDeletion:(BOOL)a7;
- (BOOL)_updateFlagForMessage:(id)a3 key:(id)a4 value:(BOOL)a5;
- (BOOL)hasCachedDataForMimePart:(id)a3;
- (BOOL)hasMessageForAccount:(id)a3;
- (BOOL)shouldArchive;
- (BOOL)shouldDeleteInPlace;
- (BOOL)shouldDownloadBodyDataForMessage:(id)a3;
- (BOOL)shouldGrowFetchWindow;
- (BOOL)shouldSetSummaryForMessage:(id)a3;
- (BOOL)supportsArchiving;
- (MFMailMessageStore)initWithMailboxUid:(id)a3 readOnly:(BOOL)a4;
- (id)_fetchHeaderDataForMessage:(id)a3 downloadIfNecessary:(BOOL)a4;
- (id)displayName;
- (id)finishRoutingMessages:(id)a3 routed:(id)a4;
- (id)lastViewedMessageDate;
- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (id)storeSearchResultMatchingCriterion:(id)a3 limit:(unsigned int)a4 offset:(id)a5 error:(id *)a6;
- (int)archiveDestination;
- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)a4 options:(unint64_t)a5;
- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5;
- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7;
- (void)_flushAllMessageData;
- (void)_setFlagsForMessages:(id)a3;
- (void)allMessageFlagsDidChange:(id)a3;
- (void)cancelOpen;
- (void)dealloc;
- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4;
- (void)didOpen;
- (void)messageFlagsDidChange:(id)a3 flags:(id)a4;
- (void)messagesWereAdded:(id)a3;
- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4;
- (void)messagesWereCompacted:(id)a3;
- (void)messagesWillBeCompacted:(id)a3;
- (void)openAsynchronously;
- (void)setFlagForAllMessages:(id)a3 state:(BOOL)a4;
- (void)setFlagsForAllMessagesFromDictionary:(id)a3;
- (void)structureDidChange;
- (void)undeleteMessages:(id)a3;
- (void)updateMessages:(id)a3 updateNumberOfAttachments:(BOOL)a4;
@end

@implementation MFMailMessageStore

+ (BOOL)createEmptyStoreIfNeededForPath:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v5 fileExistsAtPath:v4 isDirectory:&v8])
  {
    v6 = v8;
  }

  else
  {
    v6 = [a1 createEmptyStoreForPath:v4];
  }

  return v6 & 1;
}

+ (BOOL)createEmptyStoreForPath:(id)a3
{
  v5 = a3;
  [a1 doesNotRecognizeSelector:a2];
  __assert_rtn("+[MFMailMessageStore createEmptyStoreForPath:]", "MailMessageStore.m", 164, "0");
}

+ (BOOL)storeAtPathIsWritable:(id)a3
{
  v5 = a3;
  [a1 doesNotRecognizeSelector:a2];
  __assert_rtn("+[MFMailMessageStore storeAtPathIsWritable:]", "MailMessageStore.m", 172, "0");
}

- (MFMailMessageStore)initWithMailboxUid:(id)a3 readOnly:(BOOL)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = MFMailMessageStore;
  v8 = [(MFMailMessageStore *)&v16 init];
  if (!v8)
  {
LABEL_8:
    v12 = v8;
    goto LABEL_9;
  }

  v9 = [v7 fullPath];
  v10 = [v7 account];
  if ([objc_opt_class() createEmptyStoreIfNeededForPath:v9])
  {
    if (a4)
    {
      v11 = 1;
    }

    else
    {
      v11 = [objc_opt_class() storeAtPathIsWritable:v9] ^ 1;
    }

    v8->_flags = (*&v8->_flags & 0xFFFFFFFE | v11);
    account = v8->_account;
    v8->_account = v10;
    v14 = v10;

    objc_storeStrong(&v8->_mailboxUid, a3);
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
    v5 = [v7 monitor];
    openMonitor = self->_openMonitor;
    self->_openMonitor = v5;

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
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"MailMessageStoreDidOpen" object:self userInfo:0];
}

- (void)cancelOpen
{
  [(MFMailMessageStore *)self mf_lock];
  [(MFActivityMonitor *)self->_openMonitor cancel];

  [(MFMailMessageStore *)self mf_unlock];
}

- (id)displayName
{
  v3 = [(MFMailMessageStore *)self account];
  v4 = [v3 displayName];
  v5 = [(MFMailboxUid *)self->_mailboxUid accountRelativePath];
  if (v4 && ![v4 isEqualToString:&stru_288159858] || (objc_msgSend(v3, "hostname"), v6 = objc_claimAutoreleasedReturnValue(), v4, (v4 = v6) != 0))
  {
    if (([v4 isEqualToString:&stru_288159858] & 1) == 0)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ --- %@", v5, v4];

      v5 = v7;
    }
  }

  return v5;
}

- (void)messageFlagsDidChange:(id)a3 flags:(id)a4
{
  if (a3)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"messages", a4, @"flags", 0}];
  }

  else
  {
    v6 = 0;
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v6];
}

- (void)allMessageFlagsDidChange:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"flags";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];

  [v7 postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)structureDidChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"MailMessageStoreStructureChanged" object:self];
}

- (void)messagesWereAdded:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 distantPast];
  [(MFMailMessageStore *)self messagesWereAdded:v5 earliestReceivedDate:v6];
}

- (void)messagesWereCompacted:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = @"messages";
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 postNotificationName:@"MailMessageStoreMessagesRemoved" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)messagesWillBeCompacted:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = @"messages";
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 postNotificationName:@"MailMessageStoreMessagesWillBeCompacted" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldGrowFetchWindow
{
  v3 = [(MFMailMessageStore *)self hasMoreFetchableMessages];
  if (v3)
  {
    v4 = [(MFMailMessageStore *)self serverMessageCount];
    LOBYTE(v3) = v4 > [(MFMailMessageStore *)self fetchWindow];
  }

  return v3;
}

- (BOOL)hasMessageForAccount:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFMailMessageStore *)self account];

  if (v5 == v4)
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

          if (v10 == v4)
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

- (id)storeSearchResultMatchingCriterion:(id)a3 limit:(unsigned int)a4 offset:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  return 0;
}

- (id)finishRoutingMessages:(id)a3 routed:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
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
    v11 = [(MFMailMessageStore *)self _defaultRouterDestination];
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = [(MFMailMessageStore *)self mailboxUid];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      goto LABEL_20;
    }

    v14 = [v11 account];
    v15 = [v14 storeForMailboxUid:v11];
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!v15)
    {
LABEL_19:

LABEL_20:
      goto LABEL_21;
    }

    [v15 appendMessages:v7 unsuccessfulOnes:v16];
    v17 = [v7 count];
    if (v6)
    {
      v18 = [v6 mutableCopy];

      v6 = v18;
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = [MEMORY[0x277CBEB18] array];
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
        [v6 addObject:v20];
      }

      --v19;
    }

    while (v19 != -1);
    goto LABEL_18;
  }

LABEL_21:

  return v6;
}

- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4
{
  v4 = a4;
  v33[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEC38];
  v32[0] = @"MessageIsDeleted";
  v32[1] = @"MessageIsRead";
  v33[0] = MEMORY[0x277CBEC38];
  v33[1] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  if (v4)
  {
    account = self->_account;
    v10 = [(MailAccount *)account mailboxUidOfType:3 createIfNeeded:1];
    v11 = [(MailAccount *)account storeForMailboxUid:v10];

    if (v11)
    {
      v30 = @"MessageIsRead";
      v31 = v7;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v13 = [(MFMailMessageStore *)self setFlagsFromDictionary:v12 forMessages:v6];

      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v11 mf_lock];
      [v11 appendMessages:v6 unsuccessfulOnes:v14];
      [v11 mf_unlock];
      if ([v14 count])
      {
        v24 = v11;
        v15 = [MEMORY[0x277CBEB18] array];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = v6;
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
                [v15 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v18);
        }

        [(MFMailMessageStore *)self setFlag:@"MessageIsDeleted" state:0 forMessages:v14];
        v6 = v15;
        v11 = v24;
      }
    }
  }

  v22 = [(MFMailMessageStore *)self setFlagsFromDictionary:v8 forMessages:v6];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)undeleteMessages:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((*&self->_flags & 1) == 0)
  {
    v8 = @"MessageIsDeleted";
    v9[0] = MEMORY[0x277CBEC28];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [(MFMailMessageStore *)self setFlagsFromDictionary:v5 forMessages:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)copyMessages:(id)a3 toMailbox:(id)a4 markAsRead:(BOOL)a5 deleteOriginals:(BOOL)a6 isDeletion:(BOOL)a7
{
  v46[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  Current = CFAbsoluteTimeGetCurrent();
  v45[0] = @"MessageIsDeleted";
  v45[1] = @"MessageIsRead";
  v46[0] = MEMORY[0x277CBEC38];
  v46[1] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v17 = [v12 store];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = v18;
  if (v17)
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __83__MFMailMessageStore_copyMessages_toMailbox_markAsRead_deleteOriginals_isDeletion___block_invoke;
    v30 = &unk_279E33D70;
    v31 = v12;
    v36 = a6;
    v37 = a5;
    v32 = v14;
    v33 = v17;
    v34 = v16;
    v38 = a7;
    v35 = v19;
    [v11 mf_enumerateByStoreUsingBlock:&v27];
  }

  else
  {
    [v18 addObjectsFromArray:v11];
  }

  v20 = [v19 count];
  [v13 addObjectsFromArray:v19];
  v21 = CFAbsoluteTimeGetCurrent();
  v22 = [v11 count];
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

- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7
{
  v8 = a4;
  v9 = a3;
  [v8 replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(v8, "count"), v9}];

  return 0;
}

- (id)lastViewedMessageDate
{
  v2 = [(MFMailMessageStore *)self mailboxUid];
  v3 = [v2 lastViewedMessageDate];

  return v3;
}

- (BOOL)hasCachedDataForMimePart:(id)a3
{
  v3 = [a3 mimeBody];
  v4 = [v3 message];
  v5 = [v4 isMessageContentsLocallyAvailable];

  return v5;
}

- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v11 = [v6 allKeys];
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
        v13 = [v11 objectAtIndex:{i, v22}];
        v9[i] = [v6 mf_BOOLForKey:v13];
      }
    }

    v24 = v6;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v28 = 0u;
    v23 = v7;
    v25 = v7;
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
              v17 = [v11 objectAtIndex:{v15, v22}];
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
    v6 = v24;
    v7 = v23;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)setFlagForAllMessages:(id)a3 state:(BOOL)a4
{
  v4 = a4;
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v6 = a3;
  v7 = asNSStringBOOL(v4);
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(MFMailMessageStore *)self setFlagsForAllMessagesFromDictionary:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setFlagsForAllMessagesFromDictionary:(id)a3
{
  v6 = a3;
  v4 = [(MFMailMessageStore *)self copyOfAllMessagesWithOptions:128];
  v5 = [(MFMailMessageStore *)self setFlagsFromDictionary:v6 forMessages:v4];
}

- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5
{
  v5 = [MFActivityMonitor currentMonitor:a3];
  [v5 reset];

  return 0;
}

- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)a4 options:(unint64_t)a5
{
  *&v48[5] = *MEMORY[0x277D85DE8];
  v44 = a4;
  v6 = getLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MFMailMessageStore *)self mailboxUid];
    *buf = 138412290;
    *v48 = v7;
    _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "#I [fetchMobileSynchronously] begin [mailbox:%@]", buf, 0xCu);
  }

  v8 = +[MFActivityMonitor currentMonitor];
  v9 = [(MFMailMessageStore *)self mailboxUid];
  [v8 setMailbox:v9];

  v10 = +[MFActivityMonitor currentMonitor];
  [v10 addReason:@"MonitoredActivityReasonFetching"];

  v11 = MEMORY[0x277CCACA8];
  v12 = [(MFMailMessageStore *)self mailboxUid];
  v13 = [v12 URLString];
  v14 = [v11 stringWithFormat:@"%@", v13];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%lu|%@|%d", v14, lastFetchCount, v44, (a5 >> 1) & 1];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v17 = [(MFMailMessageStore *)self account];
  v46 = v16;
  v18 = [v17 willPerformActionForChokePoint:v14 coalescePoint:v15 result:&v46];
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
      v21 = [(MFMailMessageStore *)self account];
      v45 = 0;
      LOBYTE(v18) = [v21 willPerformActionForChokePoint:v14 coalescePoint:v15 result:&v45];
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
    v23 = [(MFMailMessageStore *)self account];
    v41 = v23;
    if (v23)
    {
      v40 = [v23 powerAssertionIdentifierWithPrefix:@"com.apple.message.fetchMobileSynchronously"];
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
      v26 = [(MFMailMessageStore *)self fetchNumMessages:lastFetchCount preservingUID:v44 options:a5];
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
        v29 = [v28 error];
        v30 = [v41 shouldFetchAgainWithError:v29 foregroundRequest:(a5 >> 4) & 1];

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

    v34 = [(MFMailMessageStore *)self account];
    [v34 didFinishActionForChokePoint:v14 coalescePoint:v15 withResult:v19];

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

  v37 = [v19 integerValue];
  v38 = *MEMORY[0x277D85DE8];
  return v37;
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

- (BOOL)shouldDownloadBodyDataForMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 summary];
  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v3 isMessageContentsLocallyAvailable] ^ 1;
  }

  return v5;
}

- (BOOL)shouldSetSummaryForMessage:(id)a3
{
  v3 = [a3 summary];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)shouldDeleteInPlace
{
  v3 = [(MFMailMessageStore *)self account];
  v4 = [(MFMailMessageStore *)self mailboxUid];
  v5 = [v3 deleteInPlaceForMailbox:v4];

  return v5;
}

- (BOOL)supportsArchiving
{
  v3 = [(MFMailMessageStore *)self account];
  if ([v3 supportsArchiving])
  {
    v4 = [(MFMailMessageStore *)self mailboxUid];
    v5 = [v3 preventArchiveForMailbox:v4] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldArchive
{
  v3 = [(MFMailMessageStore *)self account];
  if ([v3 shouldArchiveByDefault])
  {
    v4 = [(MFMailMessageStore *)self mailboxUid];
    v5 = [v3 canArchiveForMailbox:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)archiveDestination
{
  v3 = [(MFMailMessageStore *)self account];
  v4 = [(MFMailMessageStore *)self mailboxUid];
  v5 = [v3 archiveDestinationForMailbox:v4];

  return v5;
}

- (id)_fetchHeaderDataForMessage:(id)a3 downloadIfNecessary:(BOOL)a4
{
  v6 = a3;
  [(MFMailMessageStore *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMailMessageStore _fetchHeaderDataForMessage:downloadIfNecessary:]", "MailMessageStore.m", 1113, "0");
}

- (void)_setFlagsForMessages:(id)a3
{
  v17 = a3;
  v3 = [v17 keyEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v17 objectForKey:v5];
      v7 = [v6 objectForKey:@"messageFlags"];
      if (v7)
      {
        v8 = [v6 objectForKey:@"messageFlagsMask"];
        v9 = v8;
        v10 = 0x1BFDDF7FFFFLL;
        if (v8)
        {
          v10 = [v8 unsignedIntValue];
        }

        v11 = [v7 unsignedIntValue];
        v12 = v5;
        v13 = v12;
        if (v10)
        {
          v14 = [v12 messageFlags];
          v15 = v10 == 0x1BFDDF7FFFFLL ? v11 : v14 & ~v10 | v10 & v11;
          if (v15 != v14)
          {
            [v13 setMessageFlags:?];
          }
        }
      }

      v16 = [v3 nextObject];

      v5 = v16;
    }

    while (v16);
  }
}

- (void)updateMessages:(id)a3 updateNumberOfAttachments:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v13 = v6;
    v7 = v6;
    if (!v7)
    {
      v7 = [(MFMailMessageStore *)self copyOfAllMessages];
    }

    v8 = [v7 count] - 1;
    do
    {
      if (v8 == -1)
      {
        break;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = [v7 objectAtIndex:v8];
      [v10 calculateAttachmentInfoFromBody:0];
      v11 = +[MFActivityMonitor currentMonitor];
      v12 = [v11 shouldCancel];

      objc_autoreleasePoolPop(v9);
      --v8;
    }

    while (!v12);

    v6 = v13;
  }
}

- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4
{
  v11 = a3;
  v6 = a4;
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
  if ([v11 count])
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v11, @"messages", v6, @"previous earliest received date", 0}];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"MailMessageStoreMessagesAdded" object:self userInfo:v9];
  }
}

- (BOOL)_updateFlagForMessage:(id)a3 key:(id)a4 value:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 messageFlags];
  if ([v9 isEqual:@"MessageIsRead"])
  {
    if ((v10 & 1) != v5)
    {
      unreadMessageCount = self->_unreadMessageCount;
      v12 = v5 ? unreadMessageCount - 1 : unreadMessageCount + 1;
      self->_unreadMessageCount = v12;
      if (v12 >> 31)
      {
        self->_unreadMessageCount = 0;
        v13 = getLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(MFMailMessageStore *)self mailboxUid];
          v21 = 136315394;
          v22 = [v14 mambaID];
          v23 = 2080;
          v24 = " ";
          _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s#UnreadCount _unreadMessageCount went negative", &v21, 0x16u);
        }
      }
    }
  }

  else
  {
    if ([v9 isEqual:@"MessageIsDeleted"])
    {
      v15 = ((v10 >> 1) & 1) == v5;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      deletedMessageCount = self->_deletedMessageCount;
      if (v5)
      {
        self->_deletedMessageCount = deletedMessageCount + 1;
        v17 = self->_deletedMessagesSize + [v8 messageSize];
      }

      else
      {
        self->_deletedMessageCount = deletedMessageCount - 1;
        v17 = self->_deletedMessagesSize - [v8 messageSize];
      }

      self->_deletedMessagesSize = v17;
    }
  }

  v18 = _MFFlagsBySettingValueForKey(v10, v9, v5);
  if (v18 != v10 && [(MFMailMessageStore *)self _shouldChangeComponentMessageFlagsForMessage:v8])
  {
    [v8 setMessageFlags:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18 != v10;
}

@end
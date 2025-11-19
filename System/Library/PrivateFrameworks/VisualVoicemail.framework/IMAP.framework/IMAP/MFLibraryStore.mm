@interface MFLibraryStore
+ (BOOL)createEmptyStoreForPath:(id)a3;
+ (BOOL)storeAtPathIsWritable:(id)a3;
+ (id)sharedInstance;
+ (id)storeWithCriterion:(id)a3;
+ (id)storeWithMailbox:(id)a3;
- (BOOL)allowsAppend;
- (BOOL)canCompact;
- (BOOL)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 withConsumer:(id)a6 downloadIfNecessary:(BOOL)a7 didDownload:(BOOL *)a8;
- (BOOL)hasCompleteDataForMimePart:(id)a3;
- (BOOL)hasMessageForAccount:(id)a3;
- (BOOL)shouldGrowFetchWindow;
- (MFLibraryStore)initWithCriterion:(id)a3 mailbox:(id)a4 readOnly:(BOOL)a5;
- (id)URLString;
- (id)_cachedBodyDataContainerForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedHeaderDataForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedHeadersForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_memberMessagesWithCompactionNotification:(id)a3;
- (id)copyMessagesMatchingCriterion:(id)a3 options:(unsigned int)a4;
- (id)copyMessagesMatchingText:(id)a3 options:(unsigned int)a4;
- (id)copyMessagesWithRemoteIDs:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5;
- (id)criterion;
- (id)dateOfNewestNonSearchResultMessage;
- (id)dateOfOldestNonIndexedNonSearchResultMessage;
- (id)filterMessagesByMembership:(id)a3;
- (id)mutableCopyOfAllMessages;
- (id)newObjectCache;
- (id)serverSearchResults;
- (id)storeData:(id)a3 forMimePart:(id)a4 isComplete:(BOOL)a5;
- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)a3;
- (unint64_t)_fetchWindowMinimum;
- (unint64_t)_fetchWindowMultiple;
- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7;
- (unint64_t)fetchWindow;
- (unint64_t)fetchWindowCap;
- (unint64_t)growFetchWindow;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)totalCount;
- (unint64_t)unreadCount;
- (unint64_t)unreadCountMatchingCriterion:(id)a3;
- (void)_addInvocationToQueue:(id)a3;
- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)_queueMessageFlagsChanged:(id)a3;
- (void)_queueMessagesAdded:(id)a3;
- (void)_queueMessagesWereCompacted:(id)a3;
- (void)_queueMessagesWillBeCompacted:(id)a3;
- (void)addCountsForMessages:(id)a3 shouldUpdateUnreadCount:(BOOL)a4;
- (void)compactMessages:(id)a3;
- (void)dealloc;
- (void)deleteBodyDataForMessage:(id)a3;
- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4;
- (void)doCompact;
- (void)handleMessageFlagsChanged:(id)a3;
- (void)handleMessagesAdded:(id)a3 earliestReceivedDate:(id)a4;
- (void)handleMessagesCompacted:(id)a3;
- (void)handleMessagesWillBeCompacted:(id)a3;
- (void)invalidateFetchWindow;
- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4;
- (void)openSynchronously;
- (void)purgeMessagesBeyondLimit:(unint64_t)a3 keepingMessage:(id)a4;
- (void)setFlagsForAllMessagesFromDictionary:(id)a3;
- (void)setLibrary:(id)a3;
- (void)willFetchMessages;
@end

@implementation MFLibraryStore

- (MFLibraryStore)initWithCriterion:(id)a3 mailbox:(id)a4 readOnly:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = MFLibraryStore;
  v10 = [(MFLibraryStore *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_criterion, a3);
    objc_storeStrong(&v11->super._mailboxUid, a4);
    v12 = [v9 account];
    account = v11->super._account;
    v11->super._account = v12;

    *&v11->super._flags |= 0x100u;
  }

  return v11;
}

+ (id)storeWithCriterion:(id)a3
{
  v3 = a3;
  v4 = [[MFLibraryStore alloc] initWithCriterion:v3];

  return v4;
}

+ (id)storeWithMailbox:(id)a3
{
  v3 = a3;
  v4 = [[MFLibraryStore alloc] initWithMailbox:v3];

  return v4;
}

- (void)setLibrary:(id)a3
{
  v5 = a3;
  if (self->_library != v5)
  {
    v8 = v5;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = v6;
    if (self->_library)
    {
      [v6 removeObserver:self name:0 object:?];
    }

    objc_storeStrong(&self->_library, a3);
    if (v8)
    {
      [v7 addObserver:self selector:sel__queueMessagesAdded_ name:@"MailMessageStoreMessagesAdded" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessageFlagsChanged_ name:@"MailMessageStoreMessageFlagsChanged" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWillBeCompacted_ name:@"MailMessageStoreMessagesWillBeCompacted" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWereCompacted_ name:@"MailMessageStoreMessagesRemoved" object:self->_library];
    }

    [(MFLibraryStore *)self invalidateFetchWindow];

    v5 = v8;
  }
}

+ (id)sharedInstance
{
  pthread_once(&sharedInstanceInitializer, initializeSharedInstance);

  return [a1 sharedInstanceIfExists];
}

- (void)addCountsForMessages:(id)a3 shouldUpdateUnreadCount:(BOOL)a4
{
  v14 = a3;
  v5 = [(MFMailMessageStore *)self mailboxUid];
  v6 = [v5 type];

  v7 = [v14 count];
  [(MFLibraryStore *)self mf_lock];
  if (v7)
  {
    v8 = v6 - 5;
    for (i = v7 - 1; i != -1; --i)
    {
      v10 = [v14 objectAtIndex:i];
      v11 = [v10 messageFlags];
      v12 = [v10 messageSize];
      if ((v11 & 2) != 0)
      {
        ++self->super._deletedMessageCount;
        v13 = &OBJC_IVAR___MFMailMessageStore__deletedMessagesSize;
      }

      else
      {
        v13 = &OBJC_IVAR___MFMailMessageStore__unreadMessageCount;
        v12 = 1;
        if (v8 >= 2 && (v11 & 1) != 0)
        {
          goto LABEL_9;
        }
      }

      *(&self->super.super.super.isa + *v13) = (*(&self->super.super.super.isa + *v13) + v12);
LABEL_9:
    }
  }

  [(MFLibraryStore *)self mf_unlock];
}

- (void)_addInvocationToQueue:(id)a3
{
  v3 = _addInvocationToQueue__onceToken;
  v4 = a3;
  v6 = v4;
  if (v3 == -1)
  {
    v5 = v4;
  }

  else
  {
    [MFLibraryStore _addInvocationToQueue:];
    v5 = v6;
  }

  [_addInvocationToQueue__sInvocationQueue addInvocation:v5];
}

uint64_t __40__MFLibraryStore__addInvocationToQueue___block_invoke()
{
  v0 = [[MFInvocationQueue alloc] initWithDomain:"invc.lib"];
  v1 = _addInvocationToQueue__sInvocationQueue;
  _addInvocationToQueue__sInvocationQueue = v0;

  v2 = _addInvocationToQueue__sInvocationQueue;

  return [v2 setThreadRecycleTimeout:60.0];
}

- (void)openSynchronously
{
  [(MFLibraryStore *)self mf_lock];
  if (self->super._state > 2)
  {

    [(MFLibraryStore *)self mf_unlock];
  }

  else
  {
    self->super._state = 2;
    self->super._unreadMessageCount = 0;
    [(MFLibraryStore *)self mf_unlock];
    self->super._state = 3;

    [(MFMailMessageStore *)self didOpen];
  }
}

- (unint64_t)totalCount
{
  library = self->_library;
  v3 = [(MFLibraryStore *)self URLString];
  v4 = [(MFMessageLibrary *)library totalCountForMailbox:v3];

  return v4;
}

- (id)mutableCopyOfAllMessages
{
  v2 = [(MFLibraryStore *)self copyOfAllMessages];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)copyMessagesMatchingText:(id)a3 options:(unsigned int)a4
{
  v20[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [[MFMessageCriterion alloc] initWithType:34 qualifier:0 expression:v6];
  v8 = [[MFMessageCriterion alloc] initWithType:9 qualifier:0 expression:v6];
  v9 = [[MFMessageCriterion alloc] initWithType:1 qualifier:0 expression:v6];

  [(MFMessageCriterion *)v9 setCriterionIdentifier:*MEMORY[0x277D07030]];
  v20[0] = v7;
  v20[1] = v8;
  v20[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v11 = [MFMessageCriterion orCompoundCriterionWithCriteria:v10];

  v12 = [(MFLibraryStore *)self criterion];
  v19[0] = v12;
  v19[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v14 = [MFMessageCriterion andCompoundCriterionWithCriteria:v13];

  v15 = [(MFLibraryStore *)self library];
  v16 = [v15 messagesMatchingCriterion:v14 options:a4 | 3];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)copyMessagesMatchingCriterion:(id)a3 options:(unsigned int)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [(MFLibraryStore *)self criterion];
  v10 = [v8 initWithObjects:{v9, v7, 0}];

  if ((a4 & 0x80) != 0)
  {
    v11 = [MFMessageCriterion messageIsDeletedCriterion:0];
    [v10 addObject:v11];
  }

  v12 = [MFMessageCriterion andCompoundCriterionWithCriteria:v10];
  v13 = [(MFLibraryStore *)self library];
  v14 = [v13 messagesMatchingCriterion:v12 options:a4 | 3];

  [v14 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v14;
}

- (id)copyMessagesWithRemoteIDs:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(MFLibraryStore *)self library];
  v11 = [v8 URLString];

  v12 = [v10 copyMessagesWithRemoteIDs:v9 options:a4 | 3 inRemoteMailbox:v11];
  [v12 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v12;
}

- (id)serverSearchResults
{
  v3 = [(MFLibraryStore *)self library];
  v4 = [(MFLibraryStore *)self URLString];
  v5 = [v3 serverSearchResultMessagesForMailbox:v4];

  [v5 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];

  return v5;
}

- (id)dateOfOldestNonIndexedNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [(MFLibraryStore *)self library];
  v4 = [(MFLibraryStore *)self URLString];
  v5 = [v3 dateOfOldestNonIndexedNonSearchResultMessageInMailbox:v4];

  [(MFLibraryStore *)self mf_unlock];

  return v5;
}

- (id)dateOfNewestNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [(MFLibraryStore *)self library];
  v4 = [(MFLibraryStore *)self URLString];
  v5 = [v3 dateOfNewestNonSearchResultMessageInMailbox:v4];

  [(MFLibraryStore *)self mf_unlock];

  return v5;
}

- (void)willFetchMessages
{
  v5 = [(MFLibraryStore *)self library];
  v3 = [(MFLibraryStore *)self URLString];
  v4 = [v5 dateOfOldestNonSearchResultMessageInMailbox:v3];
  [(MFLibraryStore *)self setEarliestReceivedDate:v4];
}

- (unint64_t)_fetchWindowMultiple
{
  v2 = +[MFNetworkController sharedInstance];
  if ([v2 isFatPipe])
  {
    v3 = 250;
  }

  else if ([v2 is4GConnection])
  {
    v3 = 250;
  }

  else
  {
    v3 = 100;
  }

  return v3;
}

- (unint64_t)_fetchWindowMinimum
{
  v2 = +[MFNetworkController sharedInstance];
  if ([v2 isFatPipe] & 1) != 0 || (objc_msgSend(v2, "is4GConnection"))
  {
    v3 = 150;
  }

  else if ([v2 is3GConnection])
  {
    v3 = 100;
  }

  else
  {
    v3 = 50;
  }

  return v3;
}

- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFLibraryStore *)self _fetchWindowMultiple];
  v6 = [(MFLibraryStore *)self _fetchWindowMinimum];
  v7 = [(MFLibraryStore *)self allNonDeletedCountIncludingServerSearch:0 andThreadSearch:0]/ v5;
  v8 = ceilf(v7) * v5;
  if (v3)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v6 <= v9 + v8)
  {
    v10 = v9 + v8;
  }

  else
  {
    v10 = v6;
  }

  result = [(MFLibraryStore *)self fetchWindowCap];
  if (result >= v10)
  {
    return v10;
  }

  return result;
}

- (void)invalidateFetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  self->_fetchWindow = 0;

  [(MFLibraryStore *)self mf_unlock];
}

- (BOOL)shouldGrowFetchWindow
{
  v3 = [(MFLibraryStore *)self fetchWindow];
  if (v3 >= [(MFLibraryStore *)self fetchWindowCap])
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = MFLibraryStore;
  return [(MFMailMessageStore *)&v5 shouldGrowFetchWindow];
}

- (unint64_t)growFetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [(MFLibraryStore *)self _calculateFetchWindowWithAdditionalMultiple:1];
  self->_fetchWindow = v3;
  [(MFLibraryStore *)self mf_unlock];
  return v3;
}

- (unint64_t)fetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  fetchWindow = self->_fetchWindow;
  if (!fetchWindow)
  {
    fetchWindow = [(MFLibraryStore *)self _calculateFetchWindowWithAdditionalMultiple:0];
    self->_fetchWindow = fetchWindow;
  }

  [(MFLibraryStore *)self mf_unlock];
  return fetchWindow;
}

- (unint64_t)fetchWindowCap
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"FetchWithoutLimits"];

  if (v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 10000;
  }
}

- (id)filterMessagesByMembership:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        mailboxUid = self->super._mailboxUid;
        if (mailboxUid)
        {
          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 mailbox];

          if (mailboxUid == v12)
          {
            if (!v7)
            {
              v7 = [MEMORY[0x277CBEB18] array];
            }

            [v7 addObject:v11];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)handleMessagesAdded:(id)a3 earliestReceivedDate:(id)a4
{
  v13 = a4;
  v6 = [a3 userInfo];
  v7 = [v6 objectForKey:@"messages"];
  v8 = [v6 objectForKey:@"mailboxes"];
  v9 = [(MFMailMessageStore *)self mailboxUid];
  if (v9 && [v8 indexOfObject:v9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v7;
    v11 = 0;
  }

  else
  {
    v10 = [(MFLibraryStore *)self criterion];
    v11 = v10;
    v12 = 0;
    if (!v9 && v10)
    {
      v12 = [(MFMessageLibrary *)self->_library filterContiguousMessages:v7 forCriterion:v10 options:3];
    }
  }

  if ([v12 count])
  {
    [(MFLibraryStore *)self addCountsForMessages:v12 shouldUpdateUnreadCount:0];
    [(MFLibraryStore *)self messagesWereAdded:v12 earliestReceivedDate:v13];
  }
}

- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  v8.receiver = self;
  v8.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v8 messagesWereAdded:v7 earliestReceivedDate:v6];
}

- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MFMailboxUid *)self->super._mailboxUid type];
  [(MFLibraryStore *)self mf_lock];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v27 = v11 - 5;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [v10 objectForKey:v16];
        v18 = [v17 intValue];

        if (v9)
        {
          v19 = IMAPMessageFlagsByApplyingDictionary(v18, v9);
        }

        else
        {
          v19 = [v16 messageFlags];
        }

        v20 = v19;
        if (((v18 >> 1) & 1) != ((v19 >> 1) & 1))
        {
          v21 = [v16 messageSize];
          deletedMessageCount = self->super._deletedMessageCount;
          if ((v18 & 2) != 0)
          {
            self->super._deletedMessageCount = deletedMessageCount - 1;
            v23 = 56;
            v24 = (self->super._deletedMessagesSize - v21);
          }

          else
          {
            self->super._deletedMessageCount = deletedMessageCount + 1;
            self->super._deletedMessagesSize += v21;
            if (v27 > 1)
            {
              goto LABEL_15;
            }

            v23 = 72;
            v24 = (self->super._unreadMessageCount - 1);
          }

          *(&self->super.super.super.isa + v23) = v24;
        }

LABEL_15:
        if ((v18 & 1) != (v20 & 1))
        {
          v25 = -1;
          if ((v20 & 1) == 0)
          {
            v25 = 1;
          }

          goto LABEL_22;
        }

        if ((v20 & 2) != 0 && !((v20 | v18) & 1 | v18 & 2))
        {
          v25 = -1;
LABEL_22:
          self->super._unreadMessageCount += v25;
          continue;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  [(MFLibraryStore *)self mf_unlock];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleMessageFlagsChanged:(id)a3
{
  v9 = [a3 userInfo];
  v4 = [v9 objectForKey:@"mailboxes"];
  v5 = [v9 objectForKey:@"messages"];
  v6 = [(MFLibraryStore *)self filterMessagesByMembership:v5];

  if ([v6 count])
  {
    v7 = [v9 objectForKey:@"flags"];
    v8 = [v9 objectForKey:@"oldFlagsByMessage"];
    if (v8)
    {
      [(MFLibraryStore *)self _handleFlagsChangedForMessages:v6 flags:v7 oldFlagsByMessage:v8];
    }

    [(MFMailMessageStore *)self messageFlagsDidChange:v6 flags:v7];

    goto LABEL_5;
  }

  if (self->super._mailboxUid && [v4 containsObject:?])
  {
    v7 = [v9 objectForKeyedSubscript:@"flags"];
    [(MFMailMessageStore *)self allMessageFlagsDidChange:v7];
LABEL_5:
  }
}

- (id)_memberMessagesWithCompactionNotification:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"messages"];
  v7 = [v5 objectForKey:@"mailboxes"];
  if ([v6 count] && self->super._mailboxUid && objc_msgSend(v7, "indexOfObject:") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v7;
    v21 = v6;
    v22 = v5;
    v23 = v4;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v8 = 0;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          mailboxUid = self->super._mailboxUid;
          v19 = [v17 mailbox];

          if (mailboxUid == v19)
          {
            if (!v8)
            {
              v8 = [MEMORY[0x277CBEB18] array];
            }

            [v8 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    else
    {
      v8 = 0;
    }

    v5 = v22;
    v4 = v23;
    v7 = v20;
    v6 = v21;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)handleMessagesCompacted:(id)a3
{
  v4 = a3;
  [(MFLibraryStore *)self mf_lock];
  v5 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:v4];

  if ([v5 count])
  {
    self->super._deletedMessagesSize = 0;
    self->super._deletedMessageCount = 0;
  }

  [(MFLibraryStore *)self mf_unlock];
  [(MFMailMessageStore *)self messagesWereCompacted:v5];
}

- (void)handleMessagesWillBeCompacted:(id)a3
{
  v4 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:a3];
  [(MFMailMessageStore *)self messagesWillBeCompacted:v4];
}

- (void)dealloc
{
  [(MFLibraryStore *)self setLibrary:0];
  v3.receiver = self;
  v3.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v3 dealloc];
}

- (BOOL)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 withConsumer:(id)a6 downloadIfNecessary:(BOOL)a7 didDownload:(BOOL *)a8
{
  v81 = a7;
  location = a4.location;
  length = a4.length;
  v92 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = [v11 mimeBody];
  v14 = [v13 message];

  v15 = getLogger_0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MFMailMessageStore *)self mailboxUid];
    v17 = [v16 mambaID];
    [v14 messageID];
    v19 = v18 = v12;
    v20 = [v11 partNumber];
    *buf = 136315906;
    v83 = v17;
    v84 = 2080;
    v85 = " ";
    v86 = 2114;
    v87 = v19;
    v88 = 2114;
    v89 = v20;
    _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads requesting data for MIME part %{public}@:%{public}@", buf, 0x2Au);

    v12 = v18;
  }

  v21 = [v11 parentPart];

  if (v21 || length != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v14 valueIfNotPresent:0];
    v25 = v24;
    if (v24 && (v26 = MEMORY[0x277D24FE8], *(v24 + *MEMORY[0x277D24FE8])) && (*(v24 + *MEMORY[0x277D24FF8]) & 1) == 0)
    {
      v75 = v12;
      v40 = getLogger_0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v74 = [(MFMailMessageStore *)self mailboxUid];
        v41 = [v74 mambaID];
        v42 = [v14 messageID];
        v43 = [v11 partNumber];
        *buf = 136315906;
        v83 = v41;
        v84 = 2080;
        v85 = " ";
        v86 = 2114;
        v87 = v42;
        v88 = 2114;
        v89 = v43;
        _os_log_impl(&dword_2720B1000, v40, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads found full cached data for %{public}@:%{public}@", buf, 0x2Au);
      }

      v44 = [*&v25[*v26] length];
      v45 = [v11 range];
      v22 = 0;
      if (v45 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v75;
      }

      else
      {
        v47 = v45;
        v48 = v46;
        v49 = v45 + v46 > v44;
        v12 = v75;
        if (!v49)
        {
          v22 = *&v25[*v26];
          v50 = [v22 mf_subdataWithRange:{v47, v48}];
          [v75 appendData:v50];

          if (a5)
          {
            *a5 = 1;
          }
        }
      }
    }

    else
    {
      v22 = 0;
    }

    if (v22 || location)
    {
      if (v22)
      {
LABEL_23:

LABEL_24:
        v23 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v27 = [(MFLibraryStore *)self library];
      v22 = [v27 dataForMimePart:v11 isComplete:a5];

      if (v22)
      {
        v28 = v25;
        v29 = getLogger_0();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [(MFMailMessageStore *)self mailboxUid];
          v31 = [v30 mambaID];
          v32 = [v14 messageID];
          [v11 partNumber];
          v34 = v33 = v12;
          *buf = 136315906;
          v83 = v31;
          v84 = 2080;
          v85 = " ";
          v86 = 2114;
          v87 = v32;
          v88 = 2114;
          v89 = v34;
          v35 = "#I %s%s#CacheLoads found part data in database %{public}@:%{public}@";
LABEL_21:
          _os_log_impl(&dword_2720B1000, v29, OS_LOG_TYPE_DEFAULT, v35, buf, 0x2Au);

          v12 = v33;
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    v36 = partDataFromFullBodyData(self, v14, v11, a5, 0, a8);
    if (v36)
    {
      v22 = v36;
      v28 = v25;
      v29 = getLogger_0();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(MFMailMessageStore *)self mailboxUid];
        v37 = [v30 mambaID];
        v32 = [v14 messageID];
        [v11 partNumber];
        v34 = v33 = v12;
        *buf = 136315906;
        v83 = v37;
        v84 = 2080;
        v85 = " ";
        v86 = 2114;
        v87 = v32;
        v88 = 2114;
        v89 = v34;
        v35 = "#I %s%s#CacheLoads extracted part data from full body data in database %{public}@:%{public}@";
        goto LABEL_21;
      }

LABEL_22:

      [v12 appendData:v22];
      v25 = v28;
      goto LABEL_23;
    }

    v51 = [v11 type];
    v52 = [v51 isEqualToString:@"multipart"];

    v23 = 0;
    if (v52)
    {
      v53 = a8;
    }

    else
    {
      v53 = a8;
      if (v81)
      {
        v54 = getLogger_0();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [(MFMailMessageStore *)self mailboxUid];
          v56 = [v55 mambaID];
          [v14 messageID];
          v76 = v25;
          v58 = v57 = v12;
          v59 = [v11 partNumber];
          *buf = 136315906;
          v83 = v56;
          v53 = a8;
          v84 = 2080;
          v85 = " ";
          v86 = 2114;
          v87 = v58;
          v88 = 2114;
          v89 = v59;
          _os_log_impl(&dword_2720B1000, v54, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads downloading part data from server %{public}@:%{public}@", buf, 0x2Au);

          v12 = v57;
          v25 = v76;
        }

        v60 = [(MFLibraryStore *)self _fetchDataForMimePart:v11 range:location isComplete:length consumer:a5, v12];
        v23 = v60;
        if (v53)
        {
          *v53 = v60;
        }

        v61 = getLogger_0();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v79 = [(MFMailMessageStore *)self mailboxUid];
          v62 = [v79 mambaID];
          if (v23)
          {
            v63 = @"SUCCESS";
          }

          else
          {
            v63 = @"FAILED";
          }

          [v14 messageID];
          v64 = v77 = v12;
          v65 = [v11 partNumber];
          *buf = 136316162;
          v83 = v62;
          v53 = a8;
          v84 = 2080;
          v85 = " ";
          v86 = 2112;
          v87 = v63;
          v88 = 2114;
          v89 = v64;
          v90 = 2114;
          v91 = v65;
          _os_log_impl(&dword_2720B1000, v61, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads %@ downloading part data from server %{public}@:%{public}@", buf, 0x34u);

          v12 = v77;
        }
      }

      if (v23)
      {
        goto LABEL_52;
      }
    }

    if (v81)
    {
      v66 = partDataFromFullBodyData(self, v14, v11, a5, 1, v53);
      if (v66)
      {
        v22 = v66;
        v67 = v25;
        v68 = getLogger_0();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = [(MFMailMessageStore *)self mailboxUid];
          v70 = [v69 mambaID];
          v71 = [v14 messageID];
          [v11 partNumber];
          v73 = v72 = v12;
          *buf = 136315906;
          v83 = v70;
          v84 = 2080;
          v85 = " ";
          v86 = 2114;
          v87 = v71;
          v88 = 2114;
          v89 = v73;
          _os_log_impl(&dword_2720B1000, v68, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads extracted part data from full body data via download %{public}@:%{public}@", buf, 0x2Au);

          v12 = v72;
        }

        [v12 appendData:v22];
        goto LABEL_24;
      }
    }

LABEL_52:
    v22 = v25;
    goto LABEL_25;
  }

  v22 = [(MFLibraryStore *)self fullBodyDataForMessage:v14 andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:v81 usePartDatas:0 didDownload:a8];
  if (v22)
  {
    [v12 appendData:v22];
  }

  v23 = v22 != 0;
LABEL_25:

  v38 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)storeData:(id)a3 forMimePart:(id)a4 isComplete:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 mimeBody];
  v11 = [v10 message];

  if ([v11 isLibraryMessage])
  {
    v12 = [(MFLibraryStore *)self library];
    v13 = [v9 partNumber];
    v14 = [v12 dataConsumerForMessage:v11 part:v13 incomplete:!v5];

    [v14 appendData:v8];
    [v14 done];
    v15 = [v14 data];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)deleteBodyDataForMessage:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFMessageLibrary *)self->_library deleteDataForMessage:v4];
  }
}

- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4
{
  v4 = a4;
  v53 = self;
  v81 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v55 = [MEMORY[0x277CBEB38] dictionary];
  v54 = [MEMORY[0x277CBEB18] array];
  Current = CFAbsoluteTimeGetCurrent();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v61 objects:v80 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    do
    {
      v11 = 0;
      v56 = v9;
      do
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v61 + 1) + 8 * v11);
        v13 = [v12 account];
        v14 = [v12 mailbox];
        if (v4)
        {
          v15 = [v13 path];
          v16 = [v13 mailboxUidOfType:3 createIfNeeded:0];

          if (v14 != v16)
          {
            v17 = [v55 objectForKey:v15];

            if (!v17)
            {
              v18 = [MEMORY[0x277CBEB18] array];
              [v55 setObject:v18 forKey:v15];
            }

            v19 = [v55 objectForKey:v15];
            [v19 addObject:v12];

            v9 = v56;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v61 objects:v80 count:16];
    }

    while (v9);
  }

  v20 = v55;
  v21 = [v55 count];
  v22 = MEMORY[0x277CBEC38];
  v23 = 0x277CBE000uLL;
  if (v21)
  {
    v78 = @"MessageIsRead";
    v79 = MEMORY[0x277CBEC38];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v25 = [(MFLibraryStore *)v53 setFlagsFromDictionary:v24 forMessages:v7];

    v26 = [v55 keyEnumerator];
    v27 = [v26 nextObject];
    v28 = v54;
    if (v27)
    {
      v29 = v27;
      do
      {
        v30 = [MailAccount accountWithPath:v29, v53];
        v31 = [v30 mailboxUidOfType:3 createIfNeeded:1];
        v32 = [v30 storeForMailboxUid:v31];

        if (v32)
        {
          v33 = [v55 objectForKey:v29];
          v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v32 mf_lock];
          [v32 appendMessages:v33 unsuccessfulOnes:v34];
          [v32 mf_unlock];

          v28 = v54;
        }

        v35 = [v26 nextObject];

        v29 = v35;
      }

      while (v35);
    }

    if ([v28 count])
    {
      v36 = [MEMORY[0x277CBEB18] array];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v37 = v7;
      v38 = [v37 countByEnumeratingWithState:&v57 objects:v77 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v58;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v58 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v57 + 1) + 8 * i);
            if ([v28 indexOfObject:v42] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v36 addObject:v42];
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v57 objects:v77 count:16];
        }

        while (v39);
      }

      v43 = v53;
      [(MFMailMessageStore *)v53 setFlag:@"MessageIsDeleted" state:0 forMessages:v28];
      v20 = v55;
      v22 = MEMORY[0x277CBEC38];
      v23 = 0x277CBE000;
    }

    else
    {
      v36 = v7;
      v43 = v53;
      v22 = MEMORY[0x277CBEC38];
      v23 = 0x277CBE000uLL;
    }
  }

  else
  {
    v26 = 0;
    v36 = v7;
    v43 = v53;
    v28 = v54;
  }

  v75[0] = @"MessageIsRead";
  v75[1] = @"MessageIsDeleted";
  v76[0] = v22;
  v76[1] = v22;
  v44 = [*(v23 + 2752) dictionaryWithObjects:v76 forKeys:v75 count:{2, v53}];
  v45 = [(MFLibraryStore *)v43 setFlagsFromDictionary:v44 forMessages:v36];

  v46 = CFAbsoluteTimeGetCurrent();
  v47 = getLogger_0();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    v49 = [(MFMailMessageStore *)v43 mailboxUid];
    v50 = [v49 mambaID];
    v51 = [v36 count];
    v52 = [v36 count];
    *buf = 136316162;
    v66 = v50;
    v67 = 2080;
    v68 = " ";
    v69 = 2048;
    v70 = v51;
    v71 = 2048;
    v72 = v46 - Current;
    v73 = 2048;
    v74 = (v46 - Current) / v52;
    _os_log_debug_impl(&dword_2720B1000, v47, OS_LOG_TYPE_DEBUG, "#D %s%s[LogMessageDeletionTimes] Deleting %lu messages took %4.5f seconds (%4.5f s/msg)", buf, 0x34u);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)setFlagsForAllMessagesFromDictionary:(id)a3
{
  library = self->_library;
  v5 = a3;
  v6 = [(MFLibraryStore *)self URLString];
  [(MFMessageLibrary *)library setFlagsFromDictionary:v5 forMessagesInMailboxURLString:v6];
}

- (BOOL)allowsAppend
{
  v2 = [(MFLibraryStore *)self URLString];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(MFLibraryStore *)self allowsAppend])
  {
    library = self->_library;
    v18 = [(MFMailMessageStore *)self mailboxUid];
    LOWORD(v24) = 1;
    v19 = [(MFMessageLibrary *)library addMessages:v12 withMailbox:v18 fetchBodies:1 newMessagesByOldMessage:0 remoteIDs:0 setFlags:0 clearFlags:0 messageFlagsForMessages:v16 copyFiles:v24 addPOPUIDs:0 dataSectionsByMessage:?];

    v20 = [v19 count];
    if (v20)
    {
      v21 = [v19 arrayByApplyingSelector:sel_messageID];
      [v14 addObjectsFromArray:v21];

      [v15 addObjectsFromArray:v19];
      [(MFMailMessageStore *)self updateMessages:v19 updateNumberOfAttachments:0];
    }

    if (v20 == [v12 count])
    {
      v22 = 1;
    }

    else
    {
      [v13 addObjectsFromArray:v12];
      v22 = 0;
    }
  }

  else
  {
    [v13 addObjectsFromArray:v12];
    v22 = 0;
  }

  return v22;
}

- (BOOL)canCompact
{
  v5.receiver = self;
  v5.super_class = MFLibraryStore;
  v3 = [(MFMailMessageStore *)&v5 canCompact];
  if (v3)
  {
    LOBYTE(v3) = [(MFMailMessageStore *)self isOpened];
  }

  return v3;
}

- (void)doCompact
{
  if ([(MFLibraryStore *)self canCompact])
  {
    v3 = [(MFLibraryStore *)self URLString];
    if (v3)
    {
      if (self->super._deletedMessageCount)
      {
        [(MFMessageLibrary *)self->_library compactMailbox:v3];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)compactMessages:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(MFMessageLibrary *)self->_library compactMessages:v4];
  }
}

- (id)criterion
{
  v2 = [(MFMailMessageStore *)self mailboxUid];
  v3 = [v2 criterion];

  return v3;
}

- (id)URLString
{
  v2 = [(MFMailMessageStore *)self mailboxUid];
  v3 = [v2 URLString];

  return v3;
}

+ (BOOL)createEmptyStoreForPath:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"/"])
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v4 mf_makeCompletePath:v3 mode:448];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)storeAtPathIsWritable:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 mf_canWriteToDirectoryAtPath:v4];

  return v6;
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  v2 = [(MFMailMessageStore *)self mailboxUid];
  v3 = [v2 serverUnreadOnlyOnServerCount];

  return v3;
}

- (unint64_t)unreadCount
{
  v2 = [(MFMailMessageStore *)self mailboxUid];
  v3 = [v2 unreadCount];

  return v3;
}

- (unint64_t)unreadCountMatchingCriterion:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessageStore *)self mailboxUid];
  v6 = [v5 unreadCountMatchingCriterion:v4];

  return v6;
}

- (id)newObjectCache
{
  v2 = [objc_alloc(MEMORY[0x277D24F48]) initWithCapacity:32];
  v3 = objc_opt_class();
  [v2 setKeyGenerator:&__block_literal_global_68];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__MFLibraryStore_newObjectCache__block_invoke_2;
  v5[3] = &__block_descriptor_40_e11_q24__0_8_16lu32l8;
  v5[4] = v3;
  [v2 setComparator:v5];
  return v2;
}

uint64_t __32__MFLibraryStore_newObjectCache__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (objc_opt_isKindOfClass() & 1) != 0 && (v8 = *(a1 + 32), (objc_opt_isKindOfClass()))
  {
    v9 = v5;
    v10 = v6;
    v11 = *MEMORY[0x277D24FF0];
    v12 = v9[v11];
    if (v12 == 1 && v10[v11] != 1 || (v13 = *MEMORY[0x277D24FF8], v14 = v9[v13], v14 == 1) && v10[v13] != 1)
    {
      v15 = -1;
    }

    else if ((v12 & 1) != 0 || (v10[v11] & 1) == 0)
    {
      v15 = v10[v13] & (v14 ^ 1u);
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_cachedHeadersForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeadersForMessage:v6 valueIfNotPresent:v7];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedHeaderDataForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeaderDataForMessage:v6 valueIfNotPresent:v7];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedBodyDataContainerForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedBodyDataContainerForMessage:v6 valueIfNotPresent:v7];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (void)purgeMessagesBeyondLimit:(unint64_t)a3 keepingMessage:(id)a4
{
  v17 = a4;
  library = self->_library;
  v7 = [(MFMailMessageStore *)self mailboxUid];
  v8 = [v7 URLString];
  v9 = [(MFMessageLibrary *)library nonDeletedCountForMailbox:v8];

  v10 = v17;
  if (v9 > a3)
  {
    if (v17)
    {
      v11 = 144;
    }

    else
    {
      v11 = 128;
    }

    v12 = [(MFLibraryStore *)self copyOfMessagesInRange:a3 options:v9 - a3, v11];
    v13 = v12;
    if (v17)
    {
      v14 = [v12 indexOfObject:?];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v14 + 1;
        v16 = v13;
        v13 = [v16 subarrayWithRange:{v15, objc_msgSend(v16, "count") - v15}];
      }
    }

    if ([v13 count])
    {
      [(MFLibraryStore *)self purgeMessages:v13];
    }

    v10 = v17;
  }
}

- (BOOL)hasMessageForAccount:(id)a3
{
  v4 = a3;
  library = self->_library;
  v6 = [(MFMailMessageStore *)self mailboxUid];
  v7 = [v6 URLString];
  LODWORD(library) = [(MFMessageLibrary *)library nonDeletedCountForMailbox:v7];

  if (library)
  {
    v10.receiver = self;
    v10.super_class = MFLibraryStore;
    v8 = [(MFMailMessageStore *)&v10 hasMessageForAccount:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_queueMessagesAdded:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(MFLibraryStore *)self pep_getInvocation:&v7];
  v6 = v7;
  [v5 handleMessagesAdded:v4 earliestReceivedDate:self->_earliestReceivedDate];

  [v6 retainArguments];
  [(MFLibraryStore *)self _addInvocationToQueue:v6];
}

- (void)_queueMessageFlagsChanged:(id)a3
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessageFlagsChanged_ target:self object:a3];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWillBeCompacted:(id)a3
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesWillBeCompacted_ target:self object:a3];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWereCompacted:(id)a3
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesCompacted_ target:self object:a3];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (BOOL)hasCompleteDataForMimePart:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFLibraryStore;
  v5 = [(MFLibraryStore *)&v7 hasCompleteDataForMimePart:v4]|| [(MFMessageLibrary *)self->_library hasCompleteDataForMimePart:v4];

  return v5;
}

@end
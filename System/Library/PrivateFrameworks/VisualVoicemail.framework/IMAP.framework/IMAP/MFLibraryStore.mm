@interface MFLibraryStore
+ (BOOL)createEmptyStoreForPath:(id)path;
+ (BOOL)storeAtPathIsWritable:(id)writable;
+ (id)sharedInstance;
+ (id)storeWithCriterion:(id)criterion;
+ (id)storeWithMailbox:(id)mailbox;
- (BOOL)allowsAppend;
- (BOOL)canCompact;
- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (BOOL)hasCompleteDataForMimePart:(id)part;
- (BOOL)hasMessageForAccount:(id)account;
- (BOOL)shouldGrowFetchWindow;
- (MFLibraryStore)initWithCriterion:(id)criterion mailbox:(id)mailbox readOnly:(BOOL)only;
- (id)URLString;
- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_memberMessagesWithCompactionNotification:(id)notification;
- (id)copyMessagesMatchingCriterion:(id)criterion options:(unsigned int)options;
- (id)copyMessagesMatchingText:(id)text options:(unsigned int)options;
- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options inMailbox:(id)mailbox;
- (id)criterion;
- (id)dateOfNewestNonSearchResultMessage;
- (id)dateOfOldestNonIndexedNonSearchResultMessage;
- (id)filterMessagesByMembership:(id)membership;
- (id)mutableCopyOfAllMessages;
- (id)newObjectCache;
- (id)serverSearchResults;
- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete;
- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)multiple;
- (unint64_t)_fetchWindowMinimum;
- (unint64_t)_fetchWindowMultiple;
- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set;
- (unint64_t)fetchWindow;
- (unint64_t)fetchWindowCap;
- (unint64_t)growFetchWindow;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)totalCount;
- (unint64_t)unreadCount;
- (unint64_t)unreadCountMatchingCriterion:(id)criterion;
- (void)_addInvocationToQueue:(id)queue;
- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)_queueMessageFlagsChanged:(id)changed;
- (void)_queueMessagesAdded:(id)added;
- (void)_queueMessagesWereCompacted:(id)compacted;
- (void)_queueMessagesWillBeCompacted:(id)compacted;
- (void)addCountsForMessages:(id)messages shouldUpdateUnreadCount:(BOOL)count;
- (void)compactMessages:(id)messages;
- (void)dealloc;
- (void)deleteBodyDataForMessage:(id)message;
- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash;
- (void)doCompact;
- (void)handleMessageFlagsChanged:(id)changed;
- (void)handleMessagesAdded:(id)added earliestReceivedDate:(id)date;
- (void)handleMessagesCompacted:(id)compacted;
- (void)handleMessagesWillBeCompacted:(id)compacted;
- (void)invalidateFetchWindow;
- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date;
- (void)openSynchronously;
- (void)purgeMessagesBeyondLimit:(unint64_t)limit keepingMessage:(id)message;
- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary;
- (void)setLibrary:(id)library;
- (void)willFetchMessages;
@end

@implementation MFLibraryStore

- (MFLibraryStore)initWithCriterion:(id)criterion mailbox:(id)mailbox readOnly:(BOOL)only
{
  criterionCopy = criterion;
  mailboxCopy = mailbox;
  v15.receiver = self;
  v15.super_class = MFLibraryStore;
  v10 = [(MFLibraryStore *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_criterion, criterion);
    objc_storeStrong(&v11->super._mailboxUid, mailbox);
    account = [mailboxCopy account];
    account = v11->super._account;
    v11->super._account = account;

    *&v11->super._flags |= 0x100u;
  }

  return v11;
}

+ (id)storeWithCriterion:(id)criterion
{
  criterionCopy = criterion;
  v4 = [[MFLibraryStore alloc] initWithCriterion:criterionCopy];

  return v4;
}

+ (id)storeWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = [[MFLibraryStore alloc] initWithMailbox:mailboxCopy];

  return v4;
}

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  if (self->_library != libraryCopy)
  {
    v8 = libraryCopy;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = defaultCenter;
    if (self->_library)
    {
      [defaultCenter removeObserver:self name:0 object:?];
    }

    objc_storeStrong(&self->_library, library);
    if (v8)
    {
      [v7 addObserver:self selector:sel__queueMessagesAdded_ name:@"MailMessageStoreMessagesAdded" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessageFlagsChanged_ name:@"MailMessageStoreMessageFlagsChanged" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWillBeCompacted_ name:@"MailMessageStoreMessagesWillBeCompacted" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWereCompacted_ name:@"MailMessageStoreMessagesRemoved" object:self->_library];
    }

    [(MFLibraryStore *)self invalidateFetchWindow];

    libraryCopy = v8;
  }
}

+ (id)sharedInstance
{
  pthread_once(&sharedInstanceInitializer, initializeSharedInstance);

  return [self sharedInstanceIfExists];
}

- (void)addCountsForMessages:(id)messages shouldUpdateUnreadCount:(BOOL)count
{
  messagesCopy = messages;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  type = [mailboxUid type];

  v7 = [messagesCopy count];
  [(MFLibraryStore *)self mf_lock];
  if (v7)
  {
    v8 = type - 5;
    for (i = v7 - 1; i != -1; --i)
    {
      v10 = [messagesCopy objectAtIndex:i];
      messageFlags = [v10 messageFlags];
      messageSize = [v10 messageSize];
      if ((messageFlags & 2) != 0)
      {
        ++self->super._deletedMessageCount;
        v13 = &OBJC_IVAR___MFMailMessageStore__deletedMessagesSize;
      }

      else
      {
        v13 = &OBJC_IVAR___MFMailMessageStore__unreadMessageCount;
        messageSize = 1;
        if (v8 >= 2 && (messageFlags & 1) != 0)
        {
          goto LABEL_9;
        }
      }

      *(&self->super.super.super.isa + *v13) = (*(&self->super.super.super.isa + *v13) + messageSize);
LABEL_9:
    }
  }

  [(MFLibraryStore *)self mf_unlock];
}

- (void)_addInvocationToQueue:(id)queue
{
  v3 = _addInvocationToQueue__onceToken;
  queueCopy = queue;
  v6 = queueCopy;
  if (v3 == -1)
  {
    v5 = queueCopy;
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
  uRLString = [(MFLibraryStore *)self URLString];
  v4 = [(MFMessageLibrary *)library totalCountForMailbox:uRLString];

  return v4;
}

- (id)mutableCopyOfAllMessages
{
  copyOfAllMessages = [(MFLibraryStore *)self copyOfAllMessages];
  v3 = [copyOfAllMessages mutableCopy];

  return v3;
}

- (id)copyMessagesMatchingText:(id)text options:(unsigned int)options
{
  v20[3] = *MEMORY[0x277D85DE8];
  textCopy = text;
  v7 = [[MFMessageCriterion alloc] initWithType:34 qualifier:0 expression:textCopy];
  v8 = [[MFMessageCriterion alloc] initWithType:9 qualifier:0 expression:textCopy];
  v9 = [[MFMessageCriterion alloc] initWithType:1 qualifier:0 expression:textCopy];

  [(MFMessageCriterion *)v9 setCriterionIdentifier:*MEMORY[0x277D07030]];
  v20[0] = v7;
  v20[1] = v8;
  v20[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v11 = [MFMessageCriterion orCompoundCriterionWithCriteria:v10];

  criterion = [(MFLibraryStore *)self criterion];
  v19[0] = criterion;
  v19[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v14 = [MFMessageCriterion andCompoundCriterionWithCriteria:v13];

  library = [(MFLibraryStore *)self library];
  v16 = [library messagesMatchingCriterion:v14 options:options | 3];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)copyMessagesMatchingCriterion:(id)criterion options:(unsigned int)options
{
  v6 = MEMORY[0x277CBEB18];
  criterionCopy = criterion;
  v8 = [v6 alloc];
  criterion = [(MFLibraryStore *)self criterion];
  v10 = [v8 initWithObjects:{criterion, criterionCopy, 0}];

  if ((options & 0x80) != 0)
  {
    v11 = [MFMessageCriterion messageIsDeletedCriterion:0];
    [v10 addObject:v11];
  }

  v12 = [MFMessageCriterion andCompoundCriterionWithCriteria:v10];
  library = [(MFLibraryStore *)self library];
  v14 = [library messagesMatchingCriterion:v12 options:options | 3];

  [v14 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v14;
}

- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options inMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  dsCopy = ds;
  library = [(MFLibraryStore *)self library];
  uRLString = [mailboxCopy URLString];

  v12 = [library copyMessagesWithRemoteIDs:dsCopy options:options | 3 inRemoteMailbox:uRLString];
  [v12 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v12;
}

- (id)serverSearchResults
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v5 = [library serverSearchResultMessagesForMailbox:uRLString];

  [v5 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];

  return v5;
}

- (id)dateOfOldestNonIndexedNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v5 = [library dateOfOldestNonIndexedNonSearchResultMessageInMailbox:uRLString];

  [(MFLibraryStore *)self mf_unlock];

  return v5;
}

- (id)dateOfNewestNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v5 = [library dateOfNewestNonSearchResultMessageInMailbox:uRLString];

  [(MFLibraryStore *)self mf_unlock];

  return v5;
}

- (void)willFetchMessages
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v4 = [library dateOfOldestNonSearchResultMessageInMailbox:uRLString];
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

- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)multiple
{
  multipleCopy = multiple;
  _fetchWindowMultiple = [(MFLibraryStore *)self _fetchWindowMultiple];
  _fetchWindowMinimum = [(MFLibraryStore *)self _fetchWindowMinimum];
  v7 = [(MFLibraryStore *)self allNonDeletedCountIncludingServerSearch:0 andThreadSearch:0]/ _fetchWindowMultiple;
  v8 = ceilf(v7) * _fetchWindowMultiple;
  if (multipleCopy)
  {
    v9 = _fetchWindowMultiple;
  }

  else
  {
    v9 = 0;
  }

  if (_fetchWindowMinimum <= v9 + v8)
  {
    v10 = v9 + v8;
  }

  else
  {
    v10 = _fetchWindowMinimum;
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
  fetchWindow = [(MFLibraryStore *)self fetchWindow];
  if (fetchWindow >= [(MFLibraryStore *)self fetchWindowCap])
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"FetchWithoutLimits"];

  if (v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 10000;
  }
}

- (id)filterMessagesByMembership:(id)membership
{
  v20 = *MEMORY[0x277D85DE8];
  membershipCopy = membership;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [membershipCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    array = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(membershipCopy);
        }

        mailboxUid = self->super._mailboxUid;
        if (mailboxUid)
        {
          v11 = *(*(&v15 + 1) + 8 * i);
          mailbox = [v11 mailbox];

          if (mailboxUid == mailbox)
          {
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
            }

            [array addObject:v11];
          }
        }
      }

      v6 = [membershipCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    array = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)handleMessagesAdded:(id)added earliestReceivedDate:(id)date
{
  dateCopy = date;
  userInfo = [added userInfo];
  v7 = [userInfo objectForKey:@"messages"];
  v8 = [userInfo objectForKey:@"mailboxes"];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  if (mailboxUid && [v8 indexOfObject:mailboxUid] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v7;
    v11 = 0;
  }

  else
  {
    criterion = [(MFLibraryStore *)self criterion];
    v11 = criterion;
    v12 = 0;
    if (!mailboxUid && criterion)
    {
      v12 = [(MFMessageLibrary *)self->_library filterContiguousMessages:v7 forCriterion:criterion options:3];
    }
  }

  if ([v12 count])
  {
    [(MFLibraryStore *)self addCountsForMessages:v12 shouldUpdateUnreadCount:0];
    [(MFLibraryStore *)self messagesWereAdded:v12 earliestReceivedDate:dateCopy];
  }
}

- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date
{
  dateCopy = date;
  addedCopy = added;
  [addedCopy makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  v8.receiver = self;
  v8.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v8 messagesWereAdded:addedCopy earliestReceivedDate:dateCopy];
}

- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  flagsCopy = flags;
  messageCopy = message;
  type = [(MFMailboxUid *)self->super._mailboxUid type];
  [(MFLibraryStore *)self mf_lock];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = messagesCopy;
  v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v27 = type - 5;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [messageCopy objectForKey:v16];
        intValue = [v17 intValue];

        if (flagsCopy)
        {
          messageFlags = IMAPMessageFlagsByApplyingDictionary(intValue, flagsCopy);
        }

        else
        {
          messageFlags = [v16 messageFlags];
        }

        v20 = messageFlags;
        if (((intValue >> 1) & 1) != ((messageFlags >> 1) & 1))
        {
          messageSize = [v16 messageSize];
          deletedMessageCount = self->super._deletedMessageCount;
          if ((intValue & 2) != 0)
          {
            self->super._deletedMessageCount = deletedMessageCount - 1;
            v23 = 56;
            v24 = (self->super._deletedMessagesSize - messageSize);
          }

          else
          {
            self->super._deletedMessageCount = deletedMessageCount + 1;
            self->super._deletedMessagesSize += messageSize;
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
        if ((intValue & 1) != (v20 & 1))
        {
          v25 = -1;
          if ((v20 & 1) == 0)
          {
            v25 = 1;
          }

          goto LABEL_22;
        }

        if ((v20 & 2) != 0 && !((v20 | intValue) & 1 | intValue & 2))
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

- (void)handleMessageFlagsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKey:@"mailboxes"];
  v5 = [userInfo objectForKey:@"messages"];
  v6 = [(MFLibraryStore *)self filterMessagesByMembership:v5];

  if ([v6 count])
  {
    v7 = [userInfo objectForKey:@"flags"];
    v8 = [userInfo objectForKey:@"oldFlagsByMessage"];
    if (v8)
    {
      [(MFLibraryStore *)self _handleFlagsChangedForMessages:v6 flags:v7 oldFlagsByMessage:v8];
    }

    [(MFMailMessageStore *)self messageFlagsDidChange:v6 flags:v7];

    goto LABEL_5;
  }

  if (self->super._mailboxUid && [v4 containsObject:?])
  {
    v7 = [userInfo objectForKeyedSubscript:@"flags"];
    [(MFMailMessageStore *)self allMessageFlagsDidChange:v7];
LABEL_5:
  }
}

- (id)_memberMessagesWithCompactionNotification:(id)notification
{
  v29 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"messages"];
  v7 = [userInfo objectForKey:@"mailboxes"];
  if ([v6 count] && self->super._mailboxUid && objc_msgSend(v7, "indexOfObject:") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v7;
    v21 = v6;
    v22 = userInfo;
    v23 = notificationCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      array = 0;
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
          mailbox = [v17 mailbox];

          if (mailboxUid == mailbox)
          {
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
            }

            [array addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    else
    {
      array = 0;
    }

    userInfo = v22;
    notificationCopy = v23;
    v7 = v20;
    v6 = v21;
  }

  else
  {
    array = 0;
  }

  v9 = array;

  v10 = *MEMORY[0x277D85DE8];
  return array;
}

- (void)handleMessagesCompacted:(id)compacted
{
  compactedCopy = compacted;
  [(MFLibraryStore *)self mf_lock];
  v5 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:compactedCopy];

  if ([v5 count])
  {
    self->super._deletedMessagesSize = 0;
    self->super._deletedMessageCount = 0;
  }

  [(MFLibraryStore *)self mf_unlock];
  [(MFMailMessageStore *)self messagesWereCompacted:v5];
}

- (void)handleMessagesWillBeCompacted:(id)compacted
{
  v4 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:compacted];
  [(MFMailMessageStore *)self messagesWillBeCompacted:v4];
}

- (void)dealloc
{
  [(MFLibraryStore *)self setLibrary:0];
  v3.receiver = self;
  v3.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v3 dealloc];
}

- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  location = range.location;
  length = range.length;
  v92 = *MEMORY[0x277D85DE8];
  partCopy = part;
  consumerCopy = consumer;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  v15 = getLogger_0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    mambaID = [mailboxUid mambaID];
    [message messageID];
    v19 = v18 = consumerCopy;
    partNumber = [partCopy partNumber];
    *buf = 136315906;
    v83 = mambaID;
    v84 = 2080;
    v85 = " ";
    v86 = 2114;
    v87 = v19;
    v88 = 2114;
    v89 = partNumber;
    _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads requesting data for MIME part %{public}@:%{public}@", buf, 0x2Au);

    consumerCopy = v18;
  }

  parentPart = [partCopy parentPart];

  if (parentPart || length != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:0];
    v25 = v24;
    if (v24 && (v26 = MEMORY[0x277D24FE8], *(v24 + *MEMORY[0x277D24FE8])) && (*(v24 + *MEMORY[0x277D24FF8]) & 1) == 0)
    {
      v75 = consumerCopy;
      v40 = getLogger_0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        mailboxUid2 = [(MFMailMessageStore *)self mailboxUid];
        mambaID2 = [mailboxUid2 mambaID];
        messageID = [message messageID];
        partNumber2 = [partCopy partNumber];
        *buf = 136315906;
        v83 = mambaID2;
        v84 = 2080;
        v85 = " ";
        v86 = 2114;
        v87 = messageID;
        v88 = 2114;
        v89 = partNumber2;
        _os_log_impl(&dword_2720B1000, v40, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads found full cached data for %{public}@:%{public}@", buf, 0x2Au);
      }

      v44 = [*&v25[*v26] length];
      range = [partCopy range];
      v22 = 0;
      if (range == 0x7FFFFFFFFFFFFFFFLL)
      {
        consumerCopy = v75;
      }

      else
      {
        v47 = range;
        v48 = v46;
        v49 = range + v46 > v44;
        consumerCopy = v75;
        if (!v49)
        {
          v22 = *&v25[*v26];
          v50 = [v22 mf_subdataWithRange:{v47, v48}];
          [v75 appendData:v50];

          if (complete)
          {
            *complete = 1;
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
      library = [(MFLibraryStore *)self library];
      v22 = [library dataForMimePart:partCopy isComplete:complete];

      if (v22)
      {
        v28 = v25;
        v29 = getLogger_0();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid3 = [(MFMailMessageStore *)self mailboxUid];
          mambaID3 = [mailboxUid3 mambaID];
          messageID2 = [message messageID];
          [partCopy partNumber];
          v34 = v33 = consumerCopy;
          *buf = 136315906;
          v83 = mambaID3;
          v84 = 2080;
          v85 = " ";
          v86 = 2114;
          v87 = messageID2;
          v88 = 2114;
          v89 = v34;
          v35 = "#I %s%s#CacheLoads found part data in database %{public}@:%{public}@";
LABEL_21:
          _os_log_impl(&dword_2720B1000, v29, OS_LOG_TYPE_DEFAULT, v35, buf, 0x2Au);

          consumerCopy = v33;
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    v36 = partDataFromFullBodyData(self, message, partCopy, complete, 0, download);
    if (v36)
    {
      v22 = v36;
      v28 = v25;
      v29 = getLogger_0();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        mailboxUid3 = [(MFMailMessageStore *)self mailboxUid];
        mambaID4 = [mailboxUid3 mambaID];
        messageID2 = [message messageID];
        [partCopy partNumber];
        v34 = v33 = consumerCopy;
        *buf = 136315906;
        v83 = mambaID4;
        v84 = 2080;
        v85 = " ";
        v86 = 2114;
        v87 = messageID2;
        v88 = 2114;
        v89 = v34;
        v35 = "#I %s%s#CacheLoads extracted part data from full body data in database %{public}@:%{public}@";
        goto LABEL_21;
      }

LABEL_22:

      [consumerCopy appendData:v22];
      v25 = v28;
      goto LABEL_23;
    }

    type = [partCopy type];
    v52 = [type isEqualToString:@"multipart"];

    v23 = 0;
    if (v52)
    {
      downloadCopy4 = download;
    }

    else
    {
      downloadCopy4 = download;
      if (necessaryCopy)
      {
        v54 = getLogger_0();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid4 = [(MFMailMessageStore *)self mailboxUid];
          mambaID5 = [mailboxUid4 mambaID];
          [message messageID];
          v76 = v25;
          v58 = v57 = consumerCopy;
          partNumber3 = [partCopy partNumber];
          *buf = 136315906;
          v83 = mambaID5;
          downloadCopy4 = download;
          v84 = 2080;
          v85 = " ";
          v86 = 2114;
          v87 = v58;
          v88 = 2114;
          v89 = partNumber3;
          _os_log_impl(&dword_2720B1000, v54, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads downloading part data from server %{public}@:%{public}@", buf, 0x2Au);

          consumerCopy = v57;
          v25 = v76;
        }

        consumerCopy = [(MFLibraryStore *)self _fetchDataForMimePart:partCopy range:location isComplete:length consumer:complete, consumerCopy];
        v23 = consumerCopy;
        if (downloadCopy4)
        {
          *downloadCopy4 = consumerCopy;
        }

        v61 = getLogger_0();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid5 = [(MFMailMessageStore *)self mailboxUid];
          mambaID6 = [mailboxUid5 mambaID];
          if (v23)
          {
            v63 = @"SUCCESS";
          }

          else
          {
            v63 = @"FAILED";
          }

          [message messageID];
          v64 = v77 = consumerCopy;
          partNumber4 = [partCopy partNumber];
          *buf = 136316162;
          v83 = mambaID6;
          downloadCopy4 = download;
          v84 = 2080;
          v85 = " ";
          v86 = 2112;
          v87 = v63;
          v88 = 2114;
          v89 = v64;
          v90 = 2114;
          v91 = partNumber4;
          _os_log_impl(&dword_2720B1000, v61, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads %@ downloading part data from server %{public}@:%{public}@", buf, 0x34u);

          consumerCopy = v77;
        }
      }

      if (v23)
      {
        goto LABEL_52;
      }
    }

    if (necessaryCopy)
    {
      v66 = partDataFromFullBodyData(self, message, partCopy, complete, 1, downloadCopy4);
      if (v66)
      {
        v22 = v66;
        v67 = v25;
        v68 = getLogger_0();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid6 = [(MFMailMessageStore *)self mailboxUid];
          mambaID7 = [mailboxUid6 mambaID];
          messageID3 = [message messageID];
          [partCopy partNumber];
          v73 = v72 = consumerCopy;
          *buf = 136315906;
          v83 = mambaID7;
          v84 = 2080;
          v85 = " ";
          v86 = 2114;
          v87 = messageID3;
          v88 = 2114;
          v89 = v73;
          _os_log_impl(&dword_2720B1000, v68, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads extracted part data from full body data via download %{public}@:%{public}@", buf, 0x2Au);

          consumerCopy = v72;
        }

        [consumerCopy appendData:v22];
        goto LABEL_24;
      }
    }

LABEL_52:
    v22 = v25;
    goto LABEL_25;
  }

  v22 = [(MFLibraryStore *)self fullBodyDataForMessage:message andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:necessaryCopy usePartDatas:0 didDownload:download];
  if (v22)
  {
    [consumerCopy appendData:v22];
  }

  v23 = v22 != 0;
LABEL_25:

  v38 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete
{
  completeCopy = complete;
  dataCopy = data;
  partCopy = part;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  if ([message isLibraryMessage])
  {
    library = [(MFLibraryStore *)self library];
    partNumber = [partCopy partNumber];
    v14 = [library dataConsumerForMessage:message part:partNumber incomplete:!completeCopy];

    [v14 appendData:dataCopy];
    [v14 done];
    data = [v14 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (void)deleteBodyDataForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFMessageLibrary *)self->_library deleteDataForMessage:messageCopy];
  }
}

- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash
{
  trashCopy = trash;
  selfCopy = self;
  v81 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  Current = CFAbsoluteTimeGetCurrent();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v7 = messagesCopy;
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
        account = [v12 account];
        mailbox = [v12 mailbox];
        if (trashCopy)
        {
          path = [account path];
          v16 = [account mailboxUidOfType:3 createIfNeeded:0];

          if (mailbox != v16)
          {
            v17 = [dictionary objectForKey:path];

            if (!v17)
            {
              array2 = [MEMORY[0x277CBEB18] array];
              [dictionary setObject:array2 forKey:path];
            }

            v19 = [dictionary objectForKey:path];
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

  v20 = dictionary;
  v21 = [dictionary count];
  v22 = MEMORY[0x277CBEC38];
  v23 = 0x277CBE000uLL;
  if (v21)
  {
    v78 = @"MessageIsRead";
    v79 = MEMORY[0x277CBEC38];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v25 = [(MFLibraryStore *)selfCopy setFlagsFromDictionary:v24 forMessages:v7];

    keyEnumerator = [dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    v28 = array;
    if (nextObject)
    {
      v29 = nextObject;
      do
      {
        selfCopy = [MailAccount accountWithPath:v29, selfCopy];
        v31 = [selfCopy mailboxUidOfType:3 createIfNeeded:1];
        v32 = [selfCopy storeForMailboxUid:v31];

        if (v32)
        {
          v33 = [dictionary objectForKey:v29];
          v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v32 mf_lock];
          [v32 appendMessages:v33 unsuccessfulOnes:v34];
          [v32 mf_unlock];

          v28 = array;
        }

        nextObject2 = [keyEnumerator nextObject];

        v29 = nextObject2;
      }

      while (nextObject2);
    }

    if ([v28 count])
    {
      array3 = [MEMORY[0x277CBEB18] array];
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
              [array3 addObject:v42];
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v57 objects:v77 count:16];
        }

        while (v39);
      }

      v43 = selfCopy;
      [(MFMailMessageStore *)selfCopy setFlag:@"MessageIsDeleted" state:0 forMessages:v28];
      v20 = dictionary;
      v22 = MEMORY[0x277CBEC38];
      v23 = 0x277CBE000;
    }

    else
    {
      array3 = v7;
      v43 = selfCopy;
      v22 = MEMORY[0x277CBEC38];
      v23 = 0x277CBE000uLL;
    }
  }

  else
  {
    keyEnumerator = 0;
    array3 = v7;
    v43 = selfCopy;
    v28 = array;
  }

  v75[0] = @"MessageIsRead";
  v75[1] = @"MessageIsDeleted";
  v76[0] = v22;
  v76[1] = v22;
  v44 = [*(v23 + 2752) dictionaryWithObjects:v76 forKeys:v75 count:{2, selfCopy}];
  v45 = [(MFLibraryStore *)v43 setFlagsFromDictionary:v44 forMessages:array3];

  v46 = CFAbsoluteTimeGetCurrent();
  v47 = getLogger_0();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    mailboxUid = [(MFMailMessageStore *)v43 mailboxUid];
    mambaID = [mailboxUid mambaID];
    v51 = [array3 count];
    v52 = [array3 count];
    *buf = 136316162;
    v66 = mambaID;
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

- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary
{
  library = self->_library;
  dictionaryCopy = dictionary;
  uRLString = [(MFLibraryStore *)self URLString];
  [(MFMessageLibrary *)library setFlagsFromDictionary:dictionaryCopy forMessagesInMailboxURLString:uRLString];
}

- (BOOL)allowsAppend
{
  uRLString = [(MFLibraryStore *)self URLString];
  v3 = uRLString != 0;

  return v3;
}

- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set
{
  messagesCopy = messages;
  onesCopy = ones;
  dsCopy = ds;
  newMessagesCopy = newMessages;
  setCopy = set;
  if ([(MFLibraryStore *)self allowsAppend])
  {
    library = self->_library;
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    LOWORD(v24) = 1;
    v19 = [(MFMessageLibrary *)library addMessages:messagesCopy withMailbox:mailboxUid fetchBodies:1 newMessagesByOldMessage:0 remoteIDs:0 setFlags:0 clearFlags:0 messageFlagsForMessages:setCopy copyFiles:v24 addPOPUIDs:0 dataSectionsByMessage:?];

    v20 = [v19 count];
    if (v20)
    {
      v21 = [v19 arrayByApplyingSelector:sel_messageID];
      [dsCopy addObjectsFromArray:v21];

      [newMessagesCopy addObjectsFromArray:v19];
      [(MFMailMessageStore *)self updateMessages:v19 updateNumberOfAttachments:0];
    }

    if (v20 == [messagesCopy count])
    {
      v22 = 1;
    }

    else
    {
      [onesCopy addObjectsFromArray:messagesCopy];
      v22 = 0;
    }
  }

  else
  {
    [onesCopy addObjectsFromArray:messagesCopy];
    v22 = 0;
  }

  return v22;
}

- (BOOL)canCompact
{
  v5.receiver = self;
  v5.super_class = MFLibraryStore;
  canCompact = [(MFMailMessageStore *)&v5 canCompact];
  if (canCompact)
  {
    LOBYTE(canCompact) = [(MFMailMessageStore *)self isOpened];
  }

  return canCompact;
}

- (void)doCompact
{
  if ([(MFLibraryStore *)self canCompact])
  {
    uRLString = [(MFLibraryStore *)self URLString];
    if (uRLString)
    {
      if (self->super._deletedMessageCount)
      {
        [(MFMessageLibrary *)self->_library compactMailbox:uRLString];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)compactMessages:(id)messages
{
  messagesCopy = messages;
  if ([messagesCopy count])
  {
    [(MFMessageLibrary *)self->_library compactMessages:messagesCopy];
  }
}

- (id)criterion
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  criterion = [mailboxUid criterion];

  return criterion;
}

- (id)URLString
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  uRLString = [mailboxUid URLString];

  return uRLString;
}

+ (BOOL)createEmptyStoreForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy hasPrefix:@"/"])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [defaultManager mf_makeCompletePath:pathCopy mode:448];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)storeAtPathIsWritable:(id)writable
{
  v3 = MEMORY[0x277CCAA00];
  writableCopy = writable;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager mf_canWriteToDirectoryAtPath:writableCopy];

  return v6;
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  serverUnreadOnlyOnServerCount = [mailboxUid serverUnreadOnlyOnServerCount];

  return serverUnreadOnlyOnServerCount;
}

- (unint64_t)unreadCount
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  unreadCount = [mailboxUid unreadCount];

  return unreadCount;
}

- (unint64_t)unreadCountMatchingCriterion:(id)criterion
{
  criterionCopy = criterion;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  v6 = [mailboxUid unreadCountMatchingCriterion:criterionCopy];

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

- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if ([messageCopy isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeadersForMessage:messageCopy valueIfNotPresent:presentCopy];
  }

  else
  {
    v8 = presentCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if ([messageCopy isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:presentCopy];
  }

  else
  {
    v8 = presentCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if ([messageCopy isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:presentCopy];
  }

  else
  {
    v8 = presentCopy;
  }

  v9 = v8;

  return v9;
}

- (void)purgeMessagesBeyondLimit:(unint64_t)limit keepingMessage:(id)message
{
  messageCopy = message;
  library = self->_library;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  uRLString = [mailboxUid URLString];
  v9 = [(MFMessageLibrary *)library nonDeletedCountForMailbox:uRLString];

  v10 = messageCopy;
  if (v9 > limit)
  {
    if (messageCopy)
    {
      v11 = 144;
    }

    else
    {
      v11 = 128;
    }

    v12 = [(MFLibraryStore *)self copyOfMessagesInRange:limit options:v9 - limit, v11];
    v13 = v12;
    if (messageCopy)
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

    v10 = messageCopy;
  }
}

- (BOOL)hasMessageForAccount:(id)account
{
  accountCopy = account;
  library = self->_library;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  uRLString = [mailboxUid URLString];
  LODWORD(library) = [(MFMessageLibrary *)library nonDeletedCountForMailbox:uRLString];

  if (library)
  {
    v10.receiver = self;
    v10.super_class = MFLibraryStore;
    v8 = [(MFMailMessageStore *)&v10 hasMessageForAccount:accountCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_queueMessagesAdded:(id)added
{
  v7 = 0;
  addedCopy = added;
  v5 = [(MFLibraryStore *)self pep_getInvocation:&v7];
  v6 = v7;
  [v5 handleMessagesAdded:addedCopy earliestReceivedDate:self->_earliestReceivedDate];

  [v6 retainArguments];
  [(MFLibraryStore *)self _addInvocationToQueue:v6];
}

- (void)_queueMessageFlagsChanged:(id)changed
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessageFlagsChanged_ target:self object:changed];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWillBeCompacted:(id)compacted
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesWillBeCompacted_ target:self object:compacted];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWereCompacted:(id)compacted
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesCompacted_ target:self object:compacted];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (BOOL)hasCompleteDataForMimePart:(id)part
{
  partCopy = part;
  v7.receiver = self;
  v7.super_class = MFLibraryStore;
  v5 = [(MFLibraryStore *)&v7 hasCompleteDataForMimePart:partCopy]|| [(MFMessageLibrary *)self->_library hasCompleteDataForMimePart:partCopy];

  return v5;
}

@end
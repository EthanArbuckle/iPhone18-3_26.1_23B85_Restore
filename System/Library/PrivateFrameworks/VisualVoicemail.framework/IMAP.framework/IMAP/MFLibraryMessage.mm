@interface MFLibraryMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isMessageContentsLocallyAvailable;
- (MFLibraryMessage)initWithLibraryID:(unsigned int)d;
- (id)_attachmentStorageLocation;
- (id)_privacySafeDescription;
- (id)account;
- (id)copyMessageInfo;
- (id)dataConsumerForMimePart:(id)part;
- (id)dataPathForMimePart:(id)part;
- (id)library;
- (id)mailbox;
- (id)mailboxName;
- (id)messageID;
- (id)messageStore;
- (id)metadataValueOfClass:(Class)class forKey:(id)key;
- (id)originalMailboxURL;
- (id)path;
- (int64_t)compareByUidWithMessage:(id)message;
- (void)_forceLoadOfMessageSummaryFromProtectedStore;
- (void)_initializeMetadata;
- (void)_updateUID;
- (void)commit;
- (void)dealloc;
- (void)loadCachedHeaderValuesFromHeaders:(id)headers;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setHasTemporaryUid:(BOOL)uid;
- (void)setMessageFlags:(unint64_t)flags;
- (void)setMessageFlagsWithoutCommitting:(unint64_t)committing;
- (void)setMetadataValue:(id)value forKey:(id)key;
- (void)setMutableInfoFromMessage:(id)message;
- (void)setPreferredEncoding:(unsigned int)encoding;
- (void)setRemoteID:(const char *)d flags:(unint64_t)flags size:(unsigned int)size mailboxID:(unsigned int)iD originalMailboxID:(unsigned int)mailboxID;
- (void)setRemoteID:(id)d;
- (void)setSummary:(id)summary;
- (void)setUid:(unsigned int)uid;
- (void)setUniqueRemoteId:(unint64_t)id;
@end

@implementation MFLibraryMessage

- (void)dealloc
{
  messageID = self->_messageID;
  if (messageID)
  {
    CFRelease(messageID);
  }

  v4.receiver = self;
  v4.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v4 dealloc];
}

- (MFLibraryMessage)initWithLibraryID:(unsigned int)d
{
  v9.receiver = self;
  v9.super_class = MFLibraryMessage;
  v4 = [(MFLibraryMessage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_libraryID = d;
    v4->_originalMailboxID = -1;
    v4->_mailboxID = -1;
    v6 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"Metadata Lock" andDelegate:0];
    metadataLock = v5->_metadataLock;
    v5->_metadataLock = v6;
  }

  return v5;
}

- (id)library
{
  messageStore = [(MFLibraryMessage *)self messageStore];
  library = [messageStore library];

  return library;
}

- (id)messageID
{
  p_messageID = &self->_messageID;
  messageID = atomic_load(&self->_messageID);
  if (!messageID)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->_libraryID];
    v6 = v5;
    v7 = 0;
    atomic_compare_exchange_strong(p_messageID, &v7, v5);
    if (!v7)
    {
      CFRetain(v5);
    }

    messageID = self->_messageID;
  }

  return messageID;
}

- (id)originalMailboxURL
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library urlForMailboxID:self->_originalMailboxID];

  return v4;
}

- (id)messageStore
{
  v4.receiver = self;
  v4.super_class = MFLibraryMessage;
  messageStore = [(MFMailMessage *)&v4 messageStore];
  if (!messageStore)
  {
    messageStore = +[MFLibraryStore sharedInstance];
  }

  return messageStore;
}

- (id)mailbox
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library mailboxUidForMessage:self];

  return v4;
}

- (void)_updateUID
{
  intValue = [(NSString *)self->_remoteID intValue];
  self->_uid = intValue;
  if (!intValue)
  {
    v4 = [(NSString *)self->_remoteID rangeOfString:@"temp-" options:8];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NSString *)self->_remoteID substringWithRange:v4 + v5, [(NSString *)self->_remoteID length]- (v4 + v5)];
      self->_uid = [v6 intValue];
    }
  }
}

- (void)setRemoteID:(id)d
{
  dCopy = d;
  _MFLockGlobalLock();
  if (self->_remoteID != dCopy)
  {
    objc_storeStrong(&self->_remoteID, d);
    [(MFLibraryMessage *)self _updateUID];
  }

  _MFUnlockGlobalLock();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    libraryID = self->_libraryID;
    v6 = libraryID == [(MFLibraryMessage *)equalCopy libraryID];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFLibraryMessage;
    v6 = [(MFLibraryMessage *)&v8 isEqual:equalCopy];
  }

  return v6;
}

- (void)setUid:(unsigned int)uid
{
  if (self->_uid != uid)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    stringValue = [v5 stringValue];
    [(MFLibraryMessage *)self setRemoteID:stringValue];

    [(MFLibraryMessage *)self commit];
  }
}

- (void)setUniqueRemoteId:(unint64_t)id
{
  _MFLockGlobalLock();
  if (self->_uniqueRemoteId != id)
  {
    self->_uniqueRemoteId = id;
  }

  _MFUnlockGlobalLock();
}

- (BOOL)isMessageContentsLocallyAvailable
{
  selfCopy = self;
  library = [(MFLibraryMessage *)self library];
  LOBYTE(selfCopy) = [library isMessageContentsLocallyAvailable:selfCopy];

  return selfCopy;
}

- (void)setPreferredEncoding:(unsigned int)encoding
{
  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFF7FFFFFFFFLL | ((encoding != -1) << 35);
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  [(MFLibraryMessage *)&v3 setPreferredEncoding:?];
}

- (void)setHasTemporaryUid:(BOOL)uid
{
  v3 = 0x100000000;
  if (!uid)
  {
    v3 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (id)mailboxName
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library mailboxUidForMessage:self];

  account = [v4 account];
  v6 = [account nameForMailboxUid:v4];

  return v6;
}

- (int64_t)compareByUidWithMessage:(id)message
{
  messageCopy = message;
  v5 = HIDWORD(self->super._messageFlags) & 1;
  hasTemporaryUid = [messageCopy hasTemporaryUid];
  v7 = v5 - hasTemporaryUid;
  if (v5 == hasTemporaryUid)
  {
    uid = self->_uid;
    v7 = uid - [messageCopy uid];
  }

  v9 = v7 < 0;
  v10 = v7 != 0;
  if (v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (void)setMessageFlagsWithoutCommitting:(unint64_t)committing
{
  [(MFLibraryMessage *)self mf_lock];
  self->super._messageFlags = committing;

  [(MFLibraryMessage *)self mf_unlock];
}

- (void)setMessageFlags:(unint64_t)flags
{
  if ([(MFMailMessage *)self messageFlags]!= flags)
  {
    library = [(MFLibraryMessage *)self library];
    [library setFlags:flags forMessage:self];
  }
}

- (void)setSummary:(id)summary
{
  v6.receiver = self;
  v6.super_class = MFLibraryMessage;
  summaryCopy = summary;
  [(MFMailMessage *)&v6 setSummary:summaryCopy];
  v5 = [(MFLibraryMessage *)self library:v6.receiver];
  [v5 setSummary:summaryCopy forMessage:self];
}

- (void)commit
{
  library = [(MFLibraryMessage *)self library];
  [library setFlags:-[MFMailMessage messageFlags](self forMessage:{"messageFlags"), self}];
}

- (void)setMutableInfoFromMessage:(id)message
{
  messageFlags = [message messageFlags];

  [(MFLibraryMessage *)self setMessageFlagsWithoutCommitting:messageFlags];
}

- (id)_privacySafeDescription
{
  v8.receiver = self;
  v8.super_class = MFLibraryMessage;
  _privacySafeDescription = [(MFMailMessage *)&v8 _privacySafeDescription];
  libraryID = [(MFLibraryMessage *)self libraryID];
  remoteID = [(MFLibraryMessage *)self remoteID];
  v6 = [_privacySafeDescription stringByAppendingFormat:@" libraryID=%u remoteID=%@", libraryID, remoteID];

  return v6;
}

- (id)path
{
  library = [(MFLibraryMessage *)self library];
  v4 = [library dataPathForMessage:self];

  return v4;
}

- (id)dataPathForMimePart:(id)part
{
  partCopy = part;
  messageStore = [(MFLibraryMessage *)self messageStore];
  v6 = [messageStore dataPathForMessage:self part:partCopy];

  return v6;
}

- (id)account
{
  messageStore = [(MFLibraryMessage *)self messageStore];
  v4 = +[MFLibraryStore sharedInstanceIfExists];

  if (v4 == messageStore)
  {
    library = [(MFLibraryMessage *)self library];
    account = [library accountForMessage:self];
  }

  else
  {
    account = [messageStore account];
  }

  return account;
}

- (void)markAsViewed
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 1) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsRead";
    v10[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotViewed
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 1) != 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsRead";
    v10[0] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsFlagged
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x10) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsFlagged";
    v10[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotFlagged
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x10) != 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsFlagged";
    v10[0] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsReplied
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 4) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageWasRepliedTo";
    v10[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsForwarded
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x100) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageWasForwarded";
    v10[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    selfCopy = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    v6 = [messageStore setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setRemoteID:(const char *)d flags:(unint64_t)flags size:(unsigned int)size mailboxID:(unsigned int)iD originalMailboxID:(unsigned int)mailboxID
{
  if (d)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:d];
    remoteID = self->_remoteID;
    self->_remoteID = v12;

    [(MFLibraryMessage *)self _updateUID];
  }

  self->super._messageFlags = flags;
  self->_size = size;
  self->_mailboxID = iD;
  self->_originalMailboxID = mailboxID;
}

- (id)dataConsumerForMimePart:(id)part
{
  partCopy = part;
  library = [(MFLibraryMessage *)self library];
  v6 = [library dataConsumerForMessage:self part:partCopy];

  return v6;
}

- (id)copyMessageInfo
{
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  copyMessageInfo = [(MFMailMessage *)&v5 copyMessageInfo];
  [copyMessageInfo setUid:{-[MFLibraryMessage libraryID](self, "libraryID")}];
  [copyMessageInfo setMailboxID:self->_mailboxID];
  [copyMessageInfo setUidIsLibraryID:1];
  return copyMessageInfo;
}

- (void)_initializeMetadata
{
  if (!self->_metadata)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    metadata = self->_metadata;
    self->_metadata = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    metadataChangedKeys = self->_metadataChangedKeys;
    self->_metadataChangedKeys = v5;

    MEMORY[0x2821F96F8](v5, metadataChangedKeys);
  }
}

- (void)setMetadataValue:(id)value forKey:(id)key
{
  valueCopy = value;
  metadataLock = self->_metadataLock;
  keyCopy = key;
  [(MFLock *)metadataLock lock];
  metadata = self->_metadata;
  if (!metadata)
  {
    [(MFLibraryMessage *)self _initializeMetadata];
    metadata = self->_metadata;
  }

  [(NSMutableDictionary *)metadata setObject:valueCopy forKeyedSubscript:keyCopy];
  v10 = [(NSMutableSet *)self->_metadataChangedKeys count];
  [(NSMutableSet *)self->_metadataChangedKeys addObject:keyCopy];

  [(MFLock *)self->_metadataLock unlock];
  if (!v10)
  {
    library = [(MFLibraryMessage *)self library];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__MFLibraryMessage_setMetadataValue_forKey___block_invoke;
    v12[3] = &unk_279E34BA0;
    v12[4] = self;
    [library updateMessage:self withMetadata:v12];
  }
}

id __44__MFLibraryMessage_setMetadataValue_forKey___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 304) lock];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(*(a1 + 32) + 296);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 288) objectForKeyedSubscript:v8];
        [v2 setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 296) removeAllObjects];
  [*(*(a1 + 32) + 304) unlock];
  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)metadataValueOfClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  [(MFLock *)self->_metadataLock lock];
  metadata = self->_metadata;
  if (!metadata)
  {
    [(MFLibraryMessage *)self _initializeMetadata];
    metadata = self->_metadata;
  }

  v8 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:keyCopy];
  if (!v8)
  {
    [(MFLock *)self->_metadataLock unlock];
    library = [(MFLibraryMessage *)self library];
    v8 = [library metadataForMessage:self ofClass:class key:keyCopy];

    [(MFLock *)self->_metadataLock lock];
    v10 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:keyCopy];
    v11 = v10;
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8 == 0;
    }

    if (v12)
    {
      v13 = v10;

      v8 = v13;
    }

    else
    {
      [(NSMutableDictionary *)self->_metadata setObject:v8 forKeyedSubscript:keyCopy];
    }
  }

  [(MFLock *)self->_metadataLock unlock];

  return v8;
}

- (id)_attachmentStorageLocation
{
  v3 = MFUserAgent();
  isMobileMail = [v3 isMobileMail];

  if (isMobileMail)
  {
    library = [(MFLibraryMessage *)self library];
    v6 = [library urlForMailboxID:{-[MFLibraryMessage mailboxID](self, "mailboxID")}];

    v7 = [MailAccount mailboxUidFromActiveAccountsForURL:v6];
    fullPath = [v7 fullPath];
    v9 = [fullPath stringByAppendingPathComponent:@"Attachments"];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[MFLibraryMessage libraryID](self, "libraryID")];
    v11 = [v9 stringByAppendingPathComponent:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_forceLoadOfMessageSummaryFromProtectedStore
{
  library = [(MFLibraryMessage *)self library];
  v3 = [library urlForMailboxID:{-[MFLibraryMessage mailboxID](self, "mailboxID")}];
  [library messageWithLibraryID:-[MFLibraryMessage libraryID](self options:"libraryID") inMailbox:{4111, v3}];
}

- (void)loadCachedHeaderValuesFromHeaders:(id)headers
{
  headersCopy = headers;
  [(MFLibraryMessage *)self _forceLoadOfMessageSummaryFromProtectedStore];
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v5 loadCachedHeaderValuesFromHeaders:headersCopy];
}

@end
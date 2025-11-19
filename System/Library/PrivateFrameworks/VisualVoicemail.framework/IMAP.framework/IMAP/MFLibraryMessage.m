@interface MFLibraryMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isMessageContentsLocallyAvailable;
- (MFLibraryMessage)initWithLibraryID:(unsigned int)a3;
- (id)_attachmentStorageLocation;
- (id)_privacySafeDescription;
- (id)account;
- (id)copyMessageInfo;
- (id)dataConsumerForMimePart:(id)a3;
- (id)dataPathForMimePart:(id)a3;
- (id)library;
- (id)mailbox;
- (id)mailboxName;
- (id)messageID;
- (id)messageStore;
- (id)metadataValueOfClass:(Class)a3 forKey:(id)a4;
- (id)originalMailboxURL;
- (id)path;
- (int64_t)compareByUidWithMessage:(id)a3;
- (void)_forceLoadOfMessageSummaryFromProtectedStore;
- (void)_initializeMetadata;
- (void)_updateUID;
- (void)commit;
- (void)dealloc;
- (void)loadCachedHeaderValuesFromHeaders:(id)a3;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setHasTemporaryUid:(BOOL)a3;
- (void)setMessageFlags:(unint64_t)a3;
- (void)setMessageFlagsWithoutCommitting:(unint64_t)a3;
- (void)setMetadataValue:(id)a3 forKey:(id)a4;
- (void)setMutableInfoFromMessage:(id)a3;
- (void)setPreferredEncoding:(unsigned int)a3;
- (void)setRemoteID:(const char *)a3 flags:(unint64_t)a4 size:(unsigned int)a5 mailboxID:(unsigned int)a6 originalMailboxID:(unsigned int)a7;
- (void)setRemoteID:(id)a3;
- (void)setSummary:(id)a3;
- (void)setUid:(unsigned int)a3;
- (void)setUniqueRemoteId:(unint64_t)a3;
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

- (MFLibraryMessage)initWithLibraryID:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = MFLibraryMessage;
  v4 = [(MFLibraryMessage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_libraryID = a3;
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
  v2 = [(MFLibraryMessage *)self messageStore];
  v3 = [v2 library];

  return v3;
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
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 urlForMailboxID:self->_originalMailboxID];

  return v4;
}

- (id)messageStore
{
  v4.receiver = self;
  v4.super_class = MFLibraryMessage;
  v2 = [(MFMailMessage *)&v4 messageStore];
  if (!v2)
  {
    v2 = +[MFLibraryStore sharedInstance];
  }

  return v2;
}

- (id)mailbox
{
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 mailboxUidForMessage:self];

  return v4;
}

- (void)_updateUID
{
  v3 = [(NSString *)self->_remoteID intValue];
  self->_uid = v3;
  if (!v3)
  {
    v4 = [(NSString *)self->_remoteID rangeOfString:@"temp-" options:8];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NSString *)self->_remoteID substringWithRange:v4 + v5, [(NSString *)self->_remoteID length]- (v4 + v5)];
      self->_uid = [v6 intValue];
    }
  }
}

- (void)setRemoteID:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  if (self->_remoteID != v5)
  {
    objc_storeStrong(&self->_remoteID, a3);
    [(MFLibraryMessage *)self _updateUID];
  }

  _MFUnlockGlobalLock();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    libraryID = self->_libraryID;
    v6 = libraryID == [(MFLibraryMessage *)v4 libraryID];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFLibraryMessage;
    v6 = [(MFLibraryMessage *)&v8 isEqual:v4];
  }

  return v6;
}

- (void)setUid:(unsigned int)a3
{
  if (self->_uid != a3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v6 = [v5 stringValue];
    [(MFLibraryMessage *)self setRemoteID:v6];

    [(MFLibraryMessage *)self commit];
  }
}

- (void)setUniqueRemoteId:(unint64_t)a3
{
  _MFLockGlobalLock();
  if (self->_uniqueRemoteId != a3)
  {
    self->_uniqueRemoteId = a3;
  }

  _MFUnlockGlobalLock();
}

- (BOOL)isMessageContentsLocallyAvailable
{
  v2 = self;
  v3 = [(MFLibraryMessage *)self library];
  LOBYTE(v2) = [v3 isMessageContentsLocallyAvailable:v2];

  return v2;
}

- (void)setPreferredEncoding:(unsigned int)a3
{
  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFF7FFFFFFFFLL | ((a3 != -1) << 35);
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  [(MFLibraryMessage *)&v3 setPreferredEncoding:?];
}

- (void)setHasTemporaryUid:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (id)mailboxName
{
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 mailboxUidForMessage:self];

  v5 = [v4 account];
  v6 = [v5 nameForMailboxUid:v4];

  return v6;
}

- (int64_t)compareByUidWithMessage:(id)a3
{
  v4 = a3;
  v5 = HIDWORD(self->super._messageFlags) & 1;
  v6 = [v4 hasTemporaryUid];
  v7 = v5 - v6;
  if (v5 == v6)
  {
    uid = self->_uid;
    v7 = uid - [v4 uid];
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

- (void)setMessageFlagsWithoutCommitting:(unint64_t)a3
{
  [(MFLibraryMessage *)self mf_lock];
  self->super._messageFlags = a3;

  [(MFLibraryMessage *)self mf_unlock];
}

- (void)setMessageFlags:(unint64_t)a3
{
  if ([(MFMailMessage *)self messageFlags]!= a3)
  {
    v5 = [(MFLibraryMessage *)self library];
    [v5 setFlags:a3 forMessage:self];
  }
}

- (void)setSummary:(id)a3
{
  v6.receiver = self;
  v6.super_class = MFLibraryMessage;
  v4 = a3;
  [(MFMailMessage *)&v6 setSummary:v4];
  v5 = [(MFLibraryMessage *)self library:v6.receiver];
  [v5 setSummary:v4 forMessage:self];
}

- (void)commit
{
  v3 = [(MFLibraryMessage *)self library];
  [v3 setFlags:-[MFMailMessage messageFlags](self forMessage:{"messageFlags"), self}];
}

- (void)setMutableInfoFromMessage:(id)a3
{
  v4 = [a3 messageFlags];

  [(MFLibraryMessage *)self setMessageFlagsWithoutCommitting:v4];
}

- (id)_privacySafeDescription
{
  v8.receiver = self;
  v8.super_class = MFLibraryMessage;
  v3 = [(MFMailMessage *)&v8 _privacySafeDescription];
  v4 = [(MFLibraryMessage *)self libraryID];
  v5 = [(MFLibraryMessage *)self remoteID];
  v6 = [v3 stringByAppendingFormat:@" libraryID=%u remoteID=%@", v4, v5];

  return v6;
}

- (id)path
{
  v3 = [(MFLibraryMessage *)self library];
  v4 = [v3 dataPathForMessage:self];

  return v4;
}

- (id)dataPathForMimePart:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryMessage *)self messageStore];
  v6 = [v5 dataPathForMessage:self part:v4];

  return v6;
}

- (id)account
{
  v3 = [(MFLibraryMessage *)self messageStore];
  v4 = +[MFLibraryStore sharedInstanceIfExists];

  if (v4 == v3)
  {
    v6 = [(MFLibraryMessage *)self library];
    v5 = [v6 accountForMessage:self];
  }

  else
  {
    v5 = [v3 account];
  }

  return v5;
}

- (void)markAsViewed
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 1) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsRead";
    v10[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotViewed
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 1) != 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsRead";
    v10[0] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsFlagged
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x10) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsFlagged";
    v10[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotFlagged
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x10) != 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageIsFlagged";
    v10[0] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsReplied
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 4) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageWasRepliedTo";
    v10[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAsForwarded
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x100) == 0)
  {
    v3 = [(MFLibraryMessage *)self messageStore];
    v9 = @"MessageWasForwarded";
    v10[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    v6 = [v3 setFlagsFromDictionary:v4 forMessages:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setRemoteID:(const char *)a3 flags:(unint64_t)a4 size:(unsigned int)a5 mailboxID:(unsigned int)a6 originalMailboxID:(unsigned int)a7
{
  if (a3)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3];
    remoteID = self->_remoteID;
    self->_remoteID = v12;

    [(MFLibraryMessage *)self _updateUID];
  }

  self->super._messageFlags = a4;
  self->_size = a5;
  self->_mailboxID = a6;
  self->_originalMailboxID = a7;
}

- (id)dataConsumerForMimePart:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryMessage *)self library];
  v6 = [v5 dataConsumerForMessage:self part:v4];

  return v6;
}

- (id)copyMessageInfo
{
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  v3 = [(MFMailMessage *)&v5 copyMessageInfo];
  [v3 setUid:{-[MFLibraryMessage libraryID](self, "libraryID")}];
  [v3 setMailboxID:self->_mailboxID];
  [v3 setUidIsLibraryID:1];
  return v3;
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

- (void)setMetadataValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  metadataLock = self->_metadataLock;
  v8 = a4;
  [(MFLock *)metadataLock lock];
  metadata = self->_metadata;
  if (!metadata)
  {
    [(MFLibraryMessage *)self _initializeMetadata];
    metadata = self->_metadata;
  }

  [(NSMutableDictionary *)metadata setObject:v6 forKeyedSubscript:v8];
  v10 = [(NSMutableSet *)self->_metadataChangedKeys count];
  [(NSMutableSet *)self->_metadataChangedKeys addObject:v8];

  [(MFLock *)self->_metadataLock unlock];
  if (!v10)
  {
    v11 = [(MFLibraryMessage *)self library];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__MFLibraryMessage_setMetadataValue_forKey___block_invoke;
    v12[3] = &unk_279E34BA0;
    v12[4] = self;
    [v11 updateMessage:self withMetadata:v12];
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

- (id)metadataValueOfClass:(Class)a3 forKey:(id)a4
{
  v6 = a4;
  [(MFLock *)self->_metadataLock lock];
  metadata = self->_metadata;
  if (!metadata)
  {
    [(MFLibraryMessage *)self _initializeMetadata];
    metadata = self->_metadata;
  }

  v8 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:v6];
  if (!v8)
  {
    [(MFLock *)self->_metadataLock unlock];
    v9 = [(MFLibraryMessage *)self library];
    v8 = [v9 metadataForMessage:self ofClass:a3 key:v6];

    [(MFLock *)self->_metadataLock lock];
    v10 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:v6];
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
      [(NSMutableDictionary *)self->_metadata setObject:v8 forKeyedSubscript:v6];
    }
  }

  [(MFLock *)self->_metadataLock unlock];

  return v8;
}

- (id)_attachmentStorageLocation
{
  v3 = MFUserAgent();
  v4 = [v3 isMobileMail];

  if (v4)
  {
    v5 = [(MFLibraryMessage *)self library];
    v6 = [v5 urlForMailboxID:{-[MFLibraryMessage mailboxID](self, "mailboxID")}];

    v7 = [MailAccount mailboxUidFromActiveAccountsForURL:v6];
    v8 = [v7 fullPath];
    v9 = [v8 stringByAppendingPathComponent:@"Attachments"];
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
  v4 = [(MFLibraryMessage *)self library];
  v3 = [v4 urlForMailboxID:{-[MFLibraryMessage mailboxID](self, "mailboxID")}];
  [v4 messageWithLibraryID:-[MFLibraryMessage libraryID](self options:"libraryID") inMailbox:{4111, v3}];
}

- (void)loadCachedHeaderValuesFromHeaders:(id)a3
{
  v4 = a3;
  [(MFLibraryMessage *)self _forceLoadOfMessageSummaryFromProtectedStore];
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v5 loadCachedHeaderValuesFromHeaders:v4];
}

@end
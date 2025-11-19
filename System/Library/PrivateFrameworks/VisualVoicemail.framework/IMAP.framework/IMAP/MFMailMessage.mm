@interface MFMailMessage
+ (id)externalDataTypeIdentifiers;
+ (id)forwardedMessagePrefixWithSpacer:(BOOL)a3;
+ (unsigned)validatePriority:(int)a3;
- (BOOL)shouldSetSummary;
- (MFMailboxUid)mailbox;
- (NSString)vf_publicDescription;
- (id)URL;
- (id)_privacySafeDescription;
- (id)account;
- (id)bestAlternativePart:(BOOL *)a3;
- (id)copyMessageInfo;
- (id)globalMessageURL;
- (id)listUnsubscribe;
- (id)loadMeetingData;
- (id)loadMeetingExternalID;
- (id)loadMeetingMetadata;
- (id)mailMessageStore;
- (id)messageStore;
- (id)originalMailboxURL;
- (int)priority;
- (unint64_t)messageFlags;
- (unint64_t)modSequenceNumber;
- (unint64_t)numberOfAttachments;
- (void)dealloc;
- (void)loadCachedHeaderValuesFromHeaders:(id)a3;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setModSequenceNumber:(unint64_t)a3;
- (void)setMutableInfoFromMessage:(id)a3;
- (void)setPriorityFromHeaders:(id)a3;
- (void)setSummary:(id)a3;
@end

@implementation MFMailMessage

+ (id)forwardedMessagePrefixWithSpacer:(BOOL)a3
{
  v4 = @"Begin forwarded message:\n\n";
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n%@", @"Begin forwarded message:\n\n"];
    v3 = vars8;
  }

  return v4;
}

- (id)messageStore
{
  v4.receiver = self;
  v4.super_class = MFMailMessage;
  v2 = [(MFMailMessage *)&v4 messageStore];

  return v2;
}

- (id)mailMessageStore
{
  v2 = [(MFMailMessage *)self messageStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
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

- (unint64_t)modSequenceNumber
{
  [(MFMailMessage *)self mf_lock];
  modSequenceNumber = self->_modSequenceNumber;
  [(MFMailMessage *)self mf_unlock];
  return modSequenceNumber;
}

- (void)setModSequenceNumber:(unint64_t)a3
{
  [(MFMailMessage *)self mf_lock];
  self->_modSequenceNumber = a3;

  [(MFMailMessage *)self mf_unlock];
}

- (unint64_t)messageFlags
{
  [(MFMailMessage *)self mf_lock];
  messageFlags = self->_messageFlags;
  [(MFMailMessage *)self mf_unlock];
  return messageFlags;
}

+ (unsigned)validatePriority:(int)a3
{
  if ((a3 - 6) >= 0xFFFFFFFB)
  {
    return a3;
  }

  else
  {
    return 3;
  }
}

- (void)setPriorityFromHeaders:(id)a3
{
  v5 = [a3 firstHeaderForKey:*MEMORY[0x277D07060]];
  if (v5)
  {
    v4 = ([objc_opt_class() validatePriority:{objc_msgSend(v5, "intValue")}] & 7) << 16;
  }

  else
  {
    v4 = 196608;
  }

  [(MFMailMessage *)self setMessageFlags:self->_messageFlags & 0xFFFFFFFFFFF8FFFFLL | v4];
}

- (int)priority
{
  v3 = WORD1(self->_messageFlags);
  v4 = v3 & 7;
  if ((v3 & 7) == 0)
  {
    v5 = [(MFMailMessage *)self messageStore];
    v6 = [v5 headersForMessage:self fetchIfNotAvailable:0];
    [(MFMailMessage *)self loadCachedHeaderValuesFromHeaders:v6];
  }

  v7 = objc_opt_class();

  return [v7 validatePriority:v4];
}

- (void)loadCachedHeaderValuesFromHeaders:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFMailMessage;
  [(MFMailMessage *)&v8 loadCachedHeaderValuesFromHeaders:v4];
  _MFLockGlobalLock();
  v5 = self->_messageFlags & 0x70000;
  v6 = *(&self->super.super.isa + *MEMORY[0x277D24FD8]);
  _MFUnlockGlobalLock();
  if (!v5)
  {
    [(MFMailMessage *)self setPriorityFromHeaders:v4];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = [v4 firstHeaderForKey:*MEMORY[0x277D06FE0]];
    [(MFMailMessage *)self setMessageIDHash:MFStringHashForMessageIDHeader()];

    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
}

- (void)markAsViewed
{
  if (([(MFMailMessage *)self messageFlags]& 1) == 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]| 1;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsNotViewed
{
  if (([(MFMailMessage *)self messageFlags]& 1) != 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]& 0xFFFFFFFFFFFFFFFELL;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsReplied
{
  if (([(MFMailMessage *)self messageFlags]& 4) == 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]| 4;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsForwarded
{
  if (([(MFMailMessage *)self messageFlags]& 0x100) == 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]| 0x100;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsFlagged
{
  if (([(MFMailMessage *)self messageFlags]& 0x10) == 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]| 0x10;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (void)markAsNotFlagged
{
  if (([(MFMailMessage *)self messageFlags]& 0x10) != 0)
  {
    v3 = [(MFMailMessage *)self messageFlags]& 0xFFFFFFFFFFFFFFEFLL;

    [(MFMailMessage *)self setMessageFlags:v3];
  }
}

- (MFMailboxUid)mailbox
{
  v2 = [(MFMailMessage *)self messageStore];
  v3 = [v2 mailboxUid];

  return v3;
}

- (id)loadMeetingExternalID
{
  v3 = [(MFMailMessage *)self messageStore];
  v4 = [v3 loadMeetingExternalIDForMessage:self];

  return v4;
}

- (id)loadMeetingData
{
  v3 = [(MFMailMessage *)self messageStore];
  v4 = [v3 loadMeetingDataForMessage:self];

  return v4;
}

- (id)loadMeetingMetadata
{
  v3 = [(MFMailMessage *)self mailMessageStore];
  v4 = [v3 loadMeetingMetadataForMessage:self];

  return v4;
}

- (id)_privacySafeDescription
{
  _MFLockGlobalLock();
  v3 = *(&self->super.super.isa + *MEMORY[0x277D24FD8]);
  _MFUnlockGlobalLock();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(MFMailMessage *)self conversationID];
  LODWORD(v7) = *(&self->super.super.isa + *MEMORY[0x277D24FD0]);
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v9 = [v4 stringWithFormat:@"<%@ %p> conversationID=%lld messageID=%lld received=%@", v5, self, v6, v3, v8];

  return v9;
}

- (NSString)vf_publicDescription
{
  if (isInternalDevice())
  {
    [(MFMailMessage *)self description];
  }

  else
  {
    [(MFMailMessage *)self _privacySafeDescription];
  }
  v3 = ;

  return v3;
}

- (id)account
{
  v2 = [(MFMailMessage *)self messageStore];
  v3 = [v2 account];

  return v3;
}

- (id)originalMailboxURL
{
  v2 = [(MFMailMessage *)self mailbox];
  v3 = [v2 URLString];

  return v3;
}

- (id)URL
{
  v3 = [(MFMailMessage *)self account];
  v4 = [v3 URLForMessage:self];

  return v4;
}

- (id)globalMessageURL
{
  globalMessageURL = self->_globalMessageURL;
  if (!globalMessageURL)
  {
    v4 = [(MFMailMessage *)self messageIDHeader];
    if ([v4 length])
    {
      v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
      [v5 setScheme:@"message"];
      [v5 setPath:v4];
      v6 = [v5 URL];
      v7 = [v6 copy];
      v8 = self->_globalMessageURL;
      self->_globalMessageURL = v7;
    }

    globalMessageURL = self->_globalMessageURL;
  }

  return globalMessageURL;
}

- (unint64_t)numberOfAttachments
{
  v2 = [(MFMailMessage *)self messageFlags]>> 10;
  if (v2 == 63)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (void)setMutableInfoFromMessage:(id)a3
{
  v4 = [a3 messageFlags];

  [(MFMailMessage *)self setMessageFlags:v4];
}

- (void)setSummary:(id)a3
{
  v6 = a3;
  _MFLockGlobalLock();
  v5 = *MEMORY[0x277D24FE0];
  if (*(&self->super.super.isa + v5) != v6)
  {
    objc_storeStrong((&self->super.super.isa + v5), a3);
  }

  _MFUnlockGlobalLock();
}

- (BOOL)shouldSetSummary
{
  v3 = [(MFMailMessage *)self messageStore];
  if ([v3 shouldSetSummaryForMessage:self])
  {
    v4 = [(MFMailMessage *)self summary];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyMessageInfo
{
  info = self->_info;
  if (!info)
  {
    v4 = objc_alloc_init(MFMessageInfo);
    v5 = self->_info;
    self->_info = v4;

    info = self->_info;
  }

  [(MFMessageInfo *)info setUid:self];
  [(MFMailMessage *)self dateReceivedAsTimeIntervalSince1970];
  [(MFMessageInfo *)self->_info setDateReceivedInterval:v6];
  [(MFMailMessage *)self dateSentAsTimeIntervalSince1970];
  [(MFMessageInfo *)self->_info setDateSentInterval:v7];
  [(MFMessageInfo *)self->_info setUidIsLibraryID:0];
  [(MFMessageInfo *)self->_info setConversationHash:[(MFMailMessage *)self conversationID]];
  [(MFMessageInfo *)self->_info setMessageIDHash:[(MFMailMessage *)self messageIDHash]];
  [(MFMessageInfo *)self->_info setIsVIP:(self->_messageFlags >> 24) & 1];
  [(MFMessageInfo *)self->_info setRead:self->_messageFlags & 1];
  [(MFMessageInfo *)self->_info setFlagged:(self->_messageFlags >> 4) & 1];
  messageFlags = self->_messageFlags;
  if (messageFlags >> 10)
  {
    v9 = messageFlags >> 10 != 63;
  }

  else
  {
    v9 = 0;
  }

  [(MFMessageInfo *)self->_info setKnownToHaveAttachments:v9];
  v10 = self->_info;

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMailMessage;
  [(MFMailMessage *)&v2 dealloc];
}

- (id)bestAlternativePart:(BOOL *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v5 = [(MFMailMessage *)self messageBodyIfAvailableUpdatingFlags:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 topLevelPart];
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    while (1)
    {
      if (!v11)
      {
        v12 = [v9 contentToOffset:1 resultOffset:&v34 downloadIfNecessary:0 asHTML:1 isComplete:a3];

        v13 = v9;
        v10 = v13;
        v8 = v12;
      }

      v14 = [(MFMailMessage *)self bestAlternativeInPart:v7];

      v11 = v14 == 0;
      v9 = v14;
      if (v14)
      {
        v9 = v14;
        if (v14 == v10)
        {
          break;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v21 htmlData];
          if (v22)
          {
            v23 = [v21 preferredEncoding];
            v24 = MFCreateStringWithData();
            v25 = v24;
            if (v23 != -1 && v24 == 0)
            {
              v25 = MFCreateStringWithData();
            }

            if (v25)
            {
              if (v18)
              {
                v27 = [v18 stringByAppendingString:v25];

                v18 = v27;
              }

              else
              {
                v18 = v25;
              }
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)externalDataTypeIdentifiers
{
  v2 = [MEMORY[0x277CBEB18] array];
  [v2 addObject:@"com.apple.mail.email"];
  [v2 addObject:*MEMORY[0x277CC2068]];
  if (objc_opt_respondsToSelector())
  {
    [v2 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CCAE58], "performSelector:", sel_writableTypeIdentifiersForItemProvider)}];
  }

  v3 = [MEMORY[0x277CBEBC0] writableTypeIdentifiersForItemProvider];
  [v2 addObjectsFromArray:v3];

  if (objc_opt_respondsToSelector())
  {
    [v2 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CCA898], "performSelector:", sel_writableTypeIdentifiersForItemProvider)}];
  }

  v4 = [MEMORY[0x277CCACA8] writableTypeIdentifiersForItemProvider];
  [v2 addObjectsFromArray:v4];

  return v2;
}

- (id)listUnsubscribe
{
  v2 = [(MFMailMessage *)self headers];
  v3 = [v2 listUnsubscribeCommands];

  return v3;
}

@end
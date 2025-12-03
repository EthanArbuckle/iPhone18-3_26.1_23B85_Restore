@interface MFMessageLibrary
- (MFMessageLibrary)initWithPath:(id)path;
- (id)accountForMessage:(id)message;
- (id)dataProvider;
- (id)duplicateMessages:(id)messages newRemoteIDs:(id)ds forMailbox:(id)mailbox setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)forMessages createNewCacheFiles:(BOOL)files;
- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox;
- (void)dealloc;
- (void)postFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)postOldFlags:(unint64_t)flags newFlags:(unint64_t)newFlags forMessage:(id)message;
@end

@implementation MFMessageLibrary

- (MFMessageLibrary)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = MFMessageLibrary;
  v6 = [(MFMessageLibrary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMessageLibrary;
  [(MFMessageLibrary *)&v2 dealloc];
}

- (id)duplicateMessages:(id)messages newRemoteIDs:(id)ds forMailbox:(id)mailbox setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)forMessages createNewCacheFiles:(BOOL)files
{
  messagesCopy = messages;
  dsCopy = ds;
  mailboxCopy = mailbox;
  forMessagesCopy = forMessages;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  LOWORD(v22) = files;
  v20 = [(MFMessageLibrary *)self addMessages:messagesCopy withMailbox:mailboxCopy fetchBodies:0 newMessagesByOldMessage:dictionary remoteIDs:dsCopy setFlags:flags clearFlags:clearFlags messageFlagsForMessages:forMessagesCopy copyFiles:v22 addPOPUIDs:0 dataSectionsByMessage:?];

  return dictionary;
}

- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox
{
  if (a6)
  {
    a6->location = bottom;
    a6->length = range - bottom;
  }

  return 0;
}

- (void)postFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  messagesCopy = messages;
  flagsCopy = flags;
  messageCopy = message;
  if ([messagesCopy count])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v10 setObject:messagesCopy forKey:@"messages"];
    if (messageCopy)
    {
      [v10 setObject:messageCopy forKey:@"oldFlagsByMessage"];
    }

    if (flagsCopy)
    {
      [v10 setObject:flagsCopy forKey:@"flags"];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v10];
  }
}

- (void)postOldFlags:(unint64_t)flags newFlags:(unint64_t)newFlags forMessage:(id)message
{
  v34[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (flags == newFlags)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    if (!v9)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = v10;
    if ((flags & 1) != (newFlags & 1))
    {
      if (newFlags)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      [v10 setObject:v12 forKey:@"MessageIsRead"];
    }

    v13 = newFlags ^ flags;
    if ((newFlags ^ flags) < 2)
    {
      goto LABEL_71;
    }

    if (((flags >> 1) & 1) != ((newFlags >> 1) & 1))
    {
      if ((newFlags & 2) != 0)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      [v11 setObject:v14 forKey:@"MessageIsDeleted"];
    }

    if (v13 < 4)
    {
      goto LABEL_71;
    }

    if (((flags >> 2) & 1) != ((newFlags >> 2) & 1))
    {
      if ((newFlags & 4) != 0)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      [v11 setObject:v15 forKey:@"MessageWasRepliedTo"];
    }

    if (v13 < 8)
    {
      goto LABEL_71;
    }

    if (((flags >> 3) & 1) != ((newFlags >> 3) & 1))
    {
      if ((newFlags & 8) != 0)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      [v11 setObject:v16 forKey:@"MessageIsEncrypted"];
    }

    if (v13 < 0x10)
    {
      goto LABEL_71;
    }

    if (((flags >> 23) & 1) != ((newFlags >> 23) & 1))
    {
      if ((newFlags & 0x800000) != 0)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      [v11 setObject:v17 forKey:@"MessageIsSigned"];
    }

    if ((v13 & 0xFFFFFFFFFF7FFFF0) == 0)
    {
      goto LABEL_71;
    }

    if (((flags >> 24) & 1) != ((newFlags >> 24) & 1))
    {
      if ((newFlags & 0x1000000) != 0)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      [v11 setObject:v18 forKey:@"MessageSenderIsVIP"];
    }

    if ((v13 & 0xFFFFFFFFFE7FFFF0) == 0)
    {
      goto LABEL_71;
    }

    if (((flags >> 8) & 1) != ((newFlags >> 8) & 1))
    {
      if ((newFlags & 0x100) != 0)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      [v11 setObject:v19 forKey:@"MessageWasForwarded"];
    }

    if ((v13 & 0xFFFFFFFFFE7FFEF0) == 0)
    {
      goto LABEL_71;
    }

    if (((flags >> 9) & 1) != ((newFlags >> 9) & 1))
    {
      if ((newFlags & 0x200) != 0)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      [v11 setObject:v20 forKey:@"MessageWasRedirected"];
    }

    if ((v13 & 0xFFFFFFFFFE7FFCF0) == 0)
    {
      goto LABEL_71;
    }

    if (((flags >> 4) & 1) != ((newFlags >> 4) & 1))
    {
      if ((newFlags & 0x10) != 0)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      [v11 setObject:v21 forKey:@"MessageIsFlagged"];
    }

    if ((v13 & 0xFFFFFFFFFE7FFCE0) == 0)
    {
      goto LABEL_71;
    }

    if (((flags >> 30) & 1) != ((newFlags >> 30) & 1))
    {
      if ((newFlags & 0x40000000) != 0)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      [v11 setObject:v22 forKey:@"MessageHighlightTextInTOC"];
    }

    if ((v13 & 0xFFFFFFFFBE7FFCE0) == 0)
    {
      goto LABEL_71;
    }

    if ((WORD1(flags) & 7) != (WORD1(newFlags) & 7))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      [v11 setObject:v23 forKey:@"MessagePriorityLevel"];
    }

    v24 = newFlags & 0xFFFFFFFFBE78FCE0;
    if ((flags & 0xFFFFFFFFBE78FCE0) == v24)
    {
      goto LABEL_71;
    }

    v25 = IMAPMessageFlagsFontSizeDelta(flags & 0xFFFFFFFFBE78FCE0);
    v26 = IMAPMessageFlagsFontSizeDelta(v24);
    if (v25 != v26)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithInt:v26];
      [v11 setObject:v27 forKey:@"MessageFontSizeDelta"];
    }

    if ((v13 & 0xFFFFFFFFA278FCE0) != 0)
    {
      v9 = 0;
    }

    else
    {
LABEL_71:
      v9 = v11;
    }

    if (!v9)
    {
      goto LABEL_74;
    }
  }

  if ([v9 count])
  {
LABEL_74:
    v34[0] = messageCopy;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{flags, messageCopy}];
    v33 = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [(MFMessageLibrary *)self postFlagsChangedForMessages:v28 flags:v9 oldFlagsByMessage:v30];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)accountForMessage:(id)message
{
  v3 = [(MFMessageLibrary *)self mailboxUidForMessage:message];
  account = [v3 account];

  return account;
}

- (id)dataProvider
{
  attachmentDataProvider = self->_attachmentDataProvider;
  if (!attachmentDataProvider)
  {
    v4 = [[MFAttachmentLibraryDataProvider alloc] initWithLibrary:self];
    v5 = self->_attachmentDataProvider;
    self->_attachmentDataProvider = v4;

    attachmentDataProvider = self->_attachmentDataProvider;
  }

  return attachmentDataProvider;
}

@end
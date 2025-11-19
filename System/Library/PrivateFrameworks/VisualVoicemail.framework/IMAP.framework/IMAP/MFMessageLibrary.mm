@interface MFMessageLibrary
- (MFMessageLibrary)initWithPath:(id)a3;
- (id)accountForMessage:(id)a3;
- (id)dataProvider;
- (id)duplicateMessages:(id)a3 newRemoteIDs:(id)a4 forMailbox:(id)a5 setFlags:(unint64_t)a6 clearFlags:(unint64_t)a7 messageFlagsForMessages:(id)a8 createNewCacheFiles:(BOOL)a9;
- (id)getDetailsForMessages:(unint64_t)a3 absoluteBottom:(unint64_t)a4 topOfDesiredRange:(unint64_t)a5 range:(_NSRange *)a6 fromMailbox:(id)a7;
- (void)dealloc;
- (void)postFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)postOldFlags:(unint64_t)a3 newFlags:(unint64_t)a4 forMessage:(id)a5;
@end

@implementation MFMessageLibrary

- (MFMessageLibrary)initWithPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFMessageLibrary;
  v6 = [(MFMessageLibrary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMessageLibrary;
  [(MFMessageLibrary *)&v2 dealloc];
}

- (id)duplicateMessages:(id)a3 newRemoteIDs:(id)a4 forMailbox:(id)a5 setFlags:(unint64_t)a6 clearFlags:(unint64_t)a7 messageFlagsForMessages:(id)a8 createNewCacheFiles:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = [MEMORY[0x277CBEB38] dictionary];
  LOWORD(v22) = a9;
  v20 = [(MFMessageLibrary *)self addMessages:v15 withMailbox:v17 fetchBodies:0 newMessagesByOldMessage:v19 remoteIDs:v16 setFlags:a6 clearFlags:a7 messageFlagsForMessages:v18 copyFiles:v22 addPOPUIDs:0 dataSectionsByMessage:?];

  return v19;
}

- (id)getDetailsForMessages:(unint64_t)a3 absoluteBottom:(unint64_t)a4 topOfDesiredRange:(unint64_t)a5 range:(_NSRange *)a6 fromMailbox:(id)a7
{
  if (a6)
  {
    a6->location = a4;
    a6->length = a5 - a4;
  }

  return 0;
}

- (void)postFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if ([v12 count])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v10 setObject:v12 forKey:@"messages"];
    if (v9)
    {
      [v10 setObject:v9 forKey:@"oldFlagsByMessage"];
    }

    if (v8)
    {
      [v10 setObject:v8 forKey:@"flags"];
    }

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v10];
  }
}

- (void)postOldFlags:(unint64_t)a3 newFlags:(unint64_t)a4 forMessage:(id)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (a3 == a4)
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
    if ((a3 & 1) != (a4 & 1))
    {
      if (a4)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      [v10 setObject:v12 forKey:@"MessageIsRead"];
    }

    v13 = a4 ^ a3;
    if ((a4 ^ a3) < 2)
    {
      goto LABEL_71;
    }

    if (((a3 >> 1) & 1) != ((a4 >> 1) & 1))
    {
      if ((a4 & 2) != 0)
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

    if (((a3 >> 2) & 1) != ((a4 >> 2) & 1))
    {
      if ((a4 & 4) != 0)
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

    if (((a3 >> 3) & 1) != ((a4 >> 3) & 1))
    {
      if ((a4 & 8) != 0)
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

    if (((a3 >> 23) & 1) != ((a4 >> 23) & 1))
    {
      if ((a4 & 0x800000) != 0)
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

    if (((a3 >> 24) & 1) != ((a4 >> 24) & 1))
    {
      if ((a4 & 0x1000000) != 0)
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

    if (((a3 >> 8) & 1) != ((a4 >> 8) & 1))
    {
      if ((a4 & 0x100) != 0)
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

    if (((a3 >> 9) & 1) != ((a4 >> 9) & 1))
    {
      if ((a4 & 0x200) != 0)
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

    if (((a3 >> 4) & 1) != ((a4 >> 4) & 1))
    {
      if ((a4 & 0x10) != 0)
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

    if (((a3 >> 30) & 1) != ((a4 >> 30) & 1))
    {
      if ((a4 & 0x40000000) != 0)
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

    if ((WORD1(a3) & 7) != (WORD1(a4) & 7))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      [v11 setObject:v23 forKey:@"MessagePriorityLevel"];
    }

    v24 = a4 & 0xFFFFFFFFBE78FCE0;
    if ((a3 & 0xFFFFFFFFBE78FCE0) == v24)
    {
      goto LABEL_71;
    }

    v25 = IMAPMessageFlagsFontSizeDelta(a3 & 0xFFFFFFFFBE78FCE0);
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
    v34[0] = v8;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{a3, v8}];
    v33 = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [(MFMessageLibrary *)self postFlagsChangedForMessages:v28 flags:v9 oldFlagsByMessage:v30];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)accountForMessage:(id)a3
{
  v3 = [(MFMessageLibrary *)self mailboxUidForMessage:a3];
  v4 = [v3 account];

  return v4;
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
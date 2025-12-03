@interface IMAPServiceLibrary
- (BOOL)isMessageContentsLocallyAvailable:(id)available;
- (BOOL)verifyCachedMessage:(id)message hasToken:(id)token flags:(unsigned int)flags remoteIDStr:(id)str;
- (IMAPServiceAccount)account;
- (IMAPServiceLibrary)initWithServiceAccount:(id)account;
- (id)_getDetailsForMailbox:(id)mailbox useRemoteIDRange:(_NSRange *)range;
- (id)_mailboxUidForStoreRecord:(void *)record;
- (id)_messageWithAccountStoreRecord:(id)record record:(void *)a4 localStore:(BOOL)store;
- (id)addMessages:(id)messages withMailbox:(id)mailbox fetchBodies:(BOOL)bodies newMessagesByOldMessage:(id)message remoteIDs:(id)ds setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)self0 copyFiles:(BOOL)self1 addPOPUIDs:(BOOL)self2 dataSectionsByMessage:(id)self3;
- (id)getDetailsForAllMessagesFromMailbox:(id)mailbox;
- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox;
- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)range fromMailbox:(id)mailbox;
- (id)mailboxUidForMessage:(id)message;
- (id)messageWithAccountStoreRecord:(void *)record;
- (id)messageWithRemoteID:(id)d inRemoteMailbox:(id)mailbox;
- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages;
- (unsigned)deletedCountForMailbox:(id)mailbox;
- (unsigned)maximumRemoteIDForMailbox:(id)mailbox;
- (unsigned)minimumRemoteIDForMailbox:(id)mailbox;
- (unsigned)nonDeletedCountForMailbox:(id)mailbox;
- (unsigned)totalCountForMailbox:(id)mailbox;
- (unsigned)unreadCountForMailbox:(id)mailbox;
- (void)_resetCountsForCompaction;
- (void)_setFlags:(unint64_t)flags forMessage:(id)message postAndCommit:(BOOL)commit;
- (void)compactMailbox:(id)mailbox;
- (void)compactMessages:(id)messages permanently:(BOOL)permanently;
- (void)copyAudioDataToMainStore:(void *)store dstRecord:(void *)record;
- (void)copyStoreRecordForMessage:(id)message;
- (void)createMainStoreRecord:(void *)record;
- (void)dealloc;
- (void)flushMessageCache;
- (void)mergeRecord:(void *)record;
- (void)removeAllMessagesFromMailbox:(id)mailbox andNotify:(BOOL)notify;
- (void)setFlagsForMessages:(id)messages mask:(unint64_t)mask;
- (void)updateMainStoreRecord:(void *)record dstRecord:(void *)dstRecord token:(__CFString *)token;
- (void)updateSelectedMessages:(id)messages withMailbox:(id)mailbox;
@end

@implementation IMAPServiceLibrary

- (IMAPServiceLibrary)initWithServiceAccount:(id)account
{
  accountCopy = account;
  v15.receiver = self;
  v15.super_class = IMAPServiceLibrary;
  v5 = [(IMAPServiceLibrary *)&v15 initWithPath:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_account, accountCopy);
    v7 = +[NSMapTable strongToWeakObjectsMapTable];
    knownMessages = v6->_knownMessages;
    v6->_knownMessages = v7;

    v6->isLongLifeMessagesCache = 0;
    v9 = objc_alloc_init(MFLibraryStore);
    sharedGenericStore = v6->_sharedGenericStore;
    v6->_sharedGenericStore = v9;

    [(MFLibraryStore *)v6->_sharedGenericStore setLibrary:v6];
    v11 = sub_10001E9B0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      account = [(IMAPServiceLibrary *)v6 account];
      v13 = *&account[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315906;
      v17 = v13;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sCreated %@ for service account %@", buf, 0x2Au);
    }
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak(&self->_account, 0);
  v3.receiver = self;
  v3.super_class = IMAPServiceLibrary;
  [(IMAPServiceLibrary *)&v3 dealloc];
}

- (id)_mailboxUidForStoreRecord:(void *)record
{
  Flags = VMStoreRecordGetFlags(record);
  account = [(IMAPServiceLibrary *)self account];
  v6 = account;
  v7 = off_1000EDEB0;
  if ((Flags & 8) == 0)
  {
    v7 = &off_1000EDEB8;
  }

  v8 = [account mailboxUidForRelativePath:*v7 create:1];

  return v8;
}

- (void)flushMessageCache
{
  v3 = sub_10001E9B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    account = [(IMAPServiceLibrary *)self account];
    v5 = *&account[OBJC_IVAR___MFAccount_mambaID];
    knownMessages = [(IMAPServiceLibrary *)self knownMessages];
    v8 = 136315650;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 1024;
    v13 = [knownMessages count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sFlushed knownMessages cache. It had %d elements.", &v8, 0x1Cu);
  }

  v7 = +[NSMapTable strongToWeakObjectsMapTable];
  [(IMAPServiceLibrary *)self setKnownMessages:v7];
}

- (BOOL)verifyCachedMessage:(id)message hasToken:(id)token flags:(unsigned int)flags remoteIDStr:(id)str
{
  messageCopy = message;
  tokenCopy = token;
  strCopy = str;
  if (!self->isLongLifeMessagesCache)
  {
    goto LABEL_6;
  }

  messageFlags = [messageCopy messageFlags];
  if ((messageFlags & 1 | (4 * ((messageFlags >> 1) & 1)) | (messageFlags >> 27) & 0x20) != flags)
  {
    v19 = sub_10001E9B0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      account = [(IMAPServiceLibrary *)self account];
      v21 = *&account[OBJC_IVAR___MFAccount_mambaID];
      v29 = 136315906;
      v30 = v21;
      v31 = 2080;
      v32 = " ";
      v33 = 1024;
      messageFlags2 = [messageCopy messageFlags];
      v35 = 1024;
      flagsCopy = flags;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, flags %u vs %u", &v29, 0x22u);
    }

    goto LABEL_15;
  }

  remoteID = [messageCopy remoteID];
  v15 = [remoteID isEqualToString:strCopy];

  if ((v15 & 1) == 0)
  {
    v19 = sub_10001E9B0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      account2 = [(IMAPServiceLibrary *)self account];
      v23 = *&account2[OBJC_IVAR___MFAccount_mambaID];
      v29 = 136315394;
      v30 = v23;
      v31 = 2080;
      v32 = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, different remoteID", &v29, 0x16u);
    }

    goto LABEL_15;
  }

  if (((((flags & 0x20) == 0) ^ [messageCopy hasTemporaryUid]) & 1) == 0)
  {
    v19 = sub_10001E9B0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      account3 = [(IMAPServiceLibrary *)self account];
      v25 = *&account3[OBJC_IVAR___MFAccount_mambaID];
      v29 = 136315394;
      v30 = v25;
      v31 = 2080;
      v32 = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, different temporaryID", &v29, 0x16u);
    }

    goto LABEL_15;
  }

  messageIDHeader = [messageCopy messageIDHeader];
  v17 = [messageIDHeader isEqualToString:tokenCopy];

  if ((v17 & 1) == 0)
  {
    v19 = sub_10001E9B0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      account4 = [(IMAPServiceLibrary *)self account];
      v27 = *&account4[OBJC_IVAR___MFAccount_mambaID];
      v29 = 136315394;
      v30 = v27;
      v31 = 2080;
      v32 = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, different token", &v29, 0x16u);
    }

LABEL_15:

    v18 = 0;
    goto LABEL_16;
  }

LABEL_6:
  v18 = 1;
LABEL_16:

  return v18;
}

- (id)_messageWithAccountStoreRecord:(id)record record:(void *)a4 localStore:(BOOL)store
{
  storeCopy = store;
  recordCopy = record;
  v9 = recordCopy;
  if (a4)
  {
    v10 = sub_100092784(recordCopy, a4);
    v11 = sub_100092B0C(v9, a4);
    v12 = sub_10009278C(v9, a4);
    v13 = [NSString alloc];
    if ((v11 & 0x20) != 0)
    {
      v14 = @"temp-%u";
    }

    else
    {
      v14 = @"%u";
    }

    v35 = [v13 initWithFormat:v14, v12];
    v34 = sub_100092A8C(v9, a4);
    knownMessages = [(IMAPServiceLibrary *)self knownMessages];
    v16 = [NSNumber numberWithUnsignedInt:v10];
    v17 = [knownMessages objectForKey:v16];

    if (v17 && [(IMAPServiceLibrary *)self verifyCachedMessage:v17 hasToken:v34 flags:v11 remoteIDStr:v35])
    {
      v18 = sub_10001E9B0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        account = [(IMAPServiceLibrary *)self account];
        v20 = *&account[OBJC_IVAR___MFAccount_mambaID];
        account2 = [(IMAPServiceLibrary *)self account];
        serviceLabelID = [account2 serviceLabelID];
        *buf = 136315906;
        v37 = v20;
        v38 = 2080;
        v39 = " ";
        v40 = 2112;
        v41 = serviceLabelID;
        v42 = 1024;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s%@, message %u taken from Known", buf, 0x26u);
      }

      v23 = v17;
    }

    else
    {
      v23 = [[IMAPServiceLibraryMessage alloc] initWithLibraryID:v10];

      [(IMAPServiceLibraryMessage *)v23 setRemoteID:v35];
      [(IMAPServiceLibraryMessage *)v23 setMessageFlagsWithoutCommitting:v11 & 1 | (2 * ((v11 >> 2) & 1))];
      [(IMAPServiceLibraryMessage *)v23 setHasTemporaryUid:(v11 >> 5) & 1];
      if (storeCopy)
      {
        sharedGenericStore = [(IMAPServiceLibrary *)self sharedGenericStore];
        account3 = sharedGenericStore;
      }

      else
      {
        account3 = [(IMAPServiceLibrary *)self account];
        a4 = [(IMAPServiceLibrary *)self _mailboxUidForStoreRecord:a4];
        sharedGenericStore = [account3 storeForMailboxUid:a4];
      }

      [(IMAPServiceLibraryMessage *)v23 setMessageStore:sharedGenericStore];
      if (!storeCopy)
      {
      }

      [(IMAPServiceLibraryMessage *)v23 setMessageIDHeader:v34];
      knownMessages2 = [(IMAPServiceLibrary *)self knownMessages];
      v27 = [NSNumber numberWithUnsignedInt:v10];
      [knownMessages2 setObject:v23 forKey:v27];

      v18 = sub_10001E9B0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        account4 = [(IMAPServiceLibrary *)self account];
        v29 = *&account4[OBJC_IVAR___MFAccount_mambaID];
        account5 = [(IMAPServiceLibrary *)self account];
        serviceLabelID2 = [account5 serviceLabelID];
        knownMessages3 = [(IMAPServiceLibrary *)self knownMessages];
        *buf = 136316162;
        v37 = v29;
        v38 = 2080;
        v39 = " ";
        v40 = 2112;
        v41 = serviceLabelID2;
        v42 = 1024;
        v43 = v10;
        v44 = 1024;
        v45 = [knownMessages3 count];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s%@, message %u added to Known. Known map size: %d", buf, 0x2Cu);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)messageWithAccountStoreRecord:(void *)record
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];
  v7 = [(IMAPServiceLibrary *)self _messageWithAccountStoreRecord:accountStore record:record localStore:0];

  return v7;
}

- (void)copyStoreRecordForMessage:(id)message
{
  messageCopy = message;
  v4 = messageCopy;
  if (messageCopy)
  {
    [messageCopy libraryID];
    v5 = VMStoreCopyRecordWithIdentifier();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)unreadCountForMailbox:(id)mailbox
{
  if (sub_10001FAD0(mailbox) != 1)
  {
    return 0;
  }

  account = [(IMAPServiceLibrary *)self account];
  serviceLabelID = [account serviceLabelID];
  v6 = VMStoreCountOfRecordsWithFlags(0, 13, serviceLabelID);

  return v6;
}

- (unsigned)deletedCountForMailbox:(id)mailbox
{
  v4 = sub_10001FAD0(mailbox);
  if (v4 == 2)
  {
    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(12, 16, serviceLabelID);
  }

  else
  {
    if (v4 != 1)
    {
      return 0;
    }

    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(4, 24, serviceLabelID);
  }

  v8 = v7;

  return v8;
}

- (unsigned)nonDeletedCountForMailbox:(id)mailbox
{
  v4 = sub_10001FAD0(mailbox);
  if (v4 == 2)
  {
    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(8, 4, serviceLabelID);
  }

  else
  {
    if (v4 != 1)
    {
      return 0;
    }

    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(0, 12, serviceLabelID);
  }

  v8 = v7;

  return v8;
}

- (unsigned)totalCountForMailbox:(id)mailbox
{
  v4 = sub_10001FAD0(mailbox);
  if (v4 == 2)
  {
    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(8, 16, serviceLabelID);
  }

  else
  {
    if (v4 != 1)
    {
      return 0;
    }

    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(0, 24, serviceLabelID);
  }

  v8 = v7;

  return v8;
}

- (id)messageWithRemoteID:(id)d inRemoteMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v20 = 0;
  v7 = sub_10001FF88(d, &v20);
  v8 = sub_10001FAD0(mailboxCopy);
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];
  v11 = accountStore;
  if (v8 == 1)
  {
    v12 = 24;
  }

  else
  {
    v12 = 16;
  }

  if (v20)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  if (v20)
  {
    v14 = 0;
  }

  else
  {
    v14 = 32;
  }

  v15 = sub_1000931F0(accountStore, v7, v13 | (8 * (v8 != 1)), v14 | v12);

  if (v15)
  {
    account2 = [(IMAPServiceLibrary *)self account];
    accountStore2 = [account2 accountStore];
    v18 = [(IMAPServiceLibrary *)self _messageWithAccountStoreRecord:accountStore2 record:v15 localStore:1];

    CFRelease(v15);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unsigned)maximumRemoteIDForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];
  v7 = sub_10001FAD0(mailboxCopy) == 2;
  v8 = sub_100093200(accountStore, v7, 0);

  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = [CFArrayGetValueAtIndex(v8 Count - 1)];
    }

    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unsigned)minimumRemoteIDForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];
  v7 = sub_10001FAD0(mailboxCopy) == 2;
  v8 = sub_100093200(accountStore, v7, 0);

  if (v8)
  {
    if (CFArrayGetCount(v8) < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = [CFArrayGetValueAtIndex(v8 0)];
    }

    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_getDetailsForMailbox:(id)mailbox useRemoteIDRange:(_NSRange *)range
{
  mailboxCopy = mailbox;
  v47 = sub_10001FAD0(mailboxCopy);
  selfCopy = self;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v7 = sub_10001E9B0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)selfCopy account];
    v9 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    if (range)
    {
      v10 = NSStringFromRange(*range);
    }

    else
    {
      v10 = @"nil";
    }

    v11 = @"Trash";
    *buf = 136315906;
    v49 = v9;
    v50 = 2080;
    v51 = " ";
    if (v47 == 1)
    {
      v11 = @"Inbox";
    }

    v52 = 2112;
    v53 = v10;
    v54 = 2112;
    v55 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s--> Get details <range=%@ mailbox=%@> begin", buf, 0x2Au);
    if (range)
    {
    }
  }

  if (v47 == 1)
  {
    if (!range || (location = range->location, range->location == 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = 0;
      v14 = 104;
LABEL_18:
      theArray = sub_1000931D0(accountStore, v13, v14);
      goto LABEL_29;
    }

    v16 = range->length + location;
    if (v16 >= &_mh_execute_header)
    {
      v17 = sub_10001E9B0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        account3 = [(IMAPServiceLibrary *)selfCopy account];
        v19 = *&account3[OBJC_IVAR___MFAccount_mambaID];
        v20 = NSStringFromRange(*range);
        *buf = 136315906;
        v49 = v19;
        v50 = 2080;
        v51 = " ";
        v52 = 2112;
        v53 = v20;
        v54 = 2048;
        v55 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived range %@ with maximum range %ld greater than would not fit in 32-bit container.  Truncating to UINT32_MAX.", buf, 0x2Au);
      }

      location = range->location;
      v16 = 0xFFFFFFFFLL;
    }

    v21 = sub_10001E900(location);
    v22 = sub_10001E900(v16);
    theArray = sub_1000931BC(accountStore, 0, 104, v21, v22);
  }

  else
  {
    if (v47 != 2)
    {
      goto LABEL_31;
    }

    if (!range || (v15 = range->location, range->location == 0x7FFFFFFFFFFFFFFFLL))
    {
      v14 = 96;
      v13 = 8;
      goto LABEL_18;
    }

    v23 = range->length + v15;
    if (HIDWORD(v23))
    {
      v24 = sub_10001E9B0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        account4 = [(IMAPServiceLibrary *)selfCopy account];
        v26 = *&account4[OBJC_IVAR___MFAccount_mambaID];
        v27 = NSStringFromRange(*range);
        *buf = 136315906;
        v49 = v26;
        v50 = 2080;
        v51 = " ";
        v52 = 2112;
        v53 = v27;
        v54 = 2048;
        v55 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived range %@ with maximum range %ld greater than would not fit in 32-bit container.  Truncating to UINT32_MAX.", buf, 0x2Au);
      }

      v15 = range->location;
      v23 = 0xFFFFFFFFLL;
    }

    v28 = sub_10001E900(v15);
    v29 = sub_10001E900(v23);
    theArray = sub_1000931BC(accountStore, 8, 96, v28, v29);
  }

LABEL_29:
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v41 = 0;
    goto LABEL_32;
  }

LABEL_31:
  theArray = 0;
  Count = 0;
  v41 = 1;
LABEL_32:
  v45 = [[NSMutableArray alloc] initWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v33 = objc_alloc_init(MFMessageDetails);
      *&v33[OBJC_IVAR___MFMessageDetails_library] = selfCopy;
      v34 = sub_100092B0C(accountStore, ValueAtIndex);
      *&v33[OBJC_IVAR___MFMessageDetails_messageFlags] = v34 & 1 | (2 * ((v34 >> 2) & 1));
      *&v33[OBJC_IVAR___MFMessageDetails_uid] = sub_10009278C(accountStore, ValueAtIndex);
      *&v33[OBJC_IVAR___MFMessageDetails_libraryID] = sub_100092784(accountStore, ValueAtIndex);
      *&v33[OBJC_IVAR___MFMessageDetails_mailboxID] = v47;
      *&v33[OBJC_IVAR___MFMessageDetails_dateReceived] = sub_100092820(accountStore, ValueAtIndex);
      [v45 addObject:v33];
    }
  }

  v35 = sub_10001E9B0();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    account5 = [(IMAPServiceLibrary *)selfCopy account];
    v37 = *&account5[OBJC_IVAR___MFAccount_mambaID];
    if (range)
    {
      v38 = NSStringFromRange(*range);
    }

    else
    {
      v38 = @"nil";
    }

    v39 = @"Trash";
    *buf = 136316418;
    v49 = v37;
    v50 = 2080;
    v51 = " ";
    if (v47 == 1)
    {
      v39 = @"Inbox";
    }

    v52 = 2112;
    v53 = v38;
    v54 = 2112;
    v55 = v39;
    v56 = 2112;
    v57 = accountStore;
    v58 = 2112;
    v59 = v45;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sGet details <range=%@ mailbox=%@ store=%@> for messages %@", buf, 0x3Eu);
    if (range)
    {
    }
  }

  if ((v41 & 1) == 0)
  {
    CFRelease(theArray);
  }

  return v45;
}

- (id)getDetailsForAllMessagesFromMailbox:(id)mailbox
{
  v3 = [(IMAPServiceLibrary *)self _getDetailsForMailbox:mailbox useRemoteIDRange:0];

  return v3;
}

- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)range fromMailbox:(id)mailbox
{
  rangeCopy = range;
  v4 = [(IMAPServiceLibrary *)self _getDetailsForMailbox:mailbox useRemoteIDRange:&rangeCopy];

  return v4;
}

- (void)_resetCountsForCompaction
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100020A58;
  v2[3] = &unk_1000EDE10;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)compactMailbox:(id)mailbox
{
  v4 = sub_10001FAD0(mailbox);
  if (v4 == 2)
  {
    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCopyOfAllRecordsWithFlags(12, 16, serviceLabelID);
  }

  else
  {
    if (v4 != 1)
    {
      return;
    }

    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCopyOfAllRecordsWithFlags(4, 24, serviceLabelID);
  }

  v8 = v7;

  if (v8)
  {
    account2 = [(IMAPServiceLibrary *)self account];
    service = [account2 service];
    [service _removeRecordsNotPendingDelete:v8];

    VMStoreSave();
    [(IMAPServiceLibrary *)self _resetCountsForCompaction];

    CFRelease(v8);
  }
}

- (void)compactMessages:(id)messages permanently:(BOOL)permanently
{
  messagesCopy = messages;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v28 = [messagesCopy count];
  v7 = sub_10001E9B0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v9 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    account3 = [(IMAPServiceLibrary *)self account];
    *buf = 136315906;
    v31 = v9;
    v32 = 2080;
    v33 = " ";
    v34 = 2112;
    *v35 = messagesCopy;
    *&v35[8] = 2112;
    *&v35[10] = account3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sCompact messages %@ for account %@", buf, 0x2Au);
  }

  if (v28)
  {
    v12 = 0;
    v13 = 0;
    *&v11 = 136315906;
    v27 = v11;
    while (1)
    {
      v14 = [messagesCopy objectAtIndex:{v13, v27}];
      libraryID = [v14 libraryID];
      v16 = libraryID;
      v17 = sub_1000931E8(accountStore, libraryID);
      if (v17)
      {
        break;
      }

LABEL_13:

      if (v28 == ++v13)
      {
        if (v12)
        {
          [accountStore save];
          [(IMAPServiceLibrary *)self _resetCountsForCompaction];
        }

        goto LABEL_16;
      }
    }

    account4 = [(IMAPServiceLibrary *)self account];
    service = [account4 service];
    [service _removePendingDeleteForRecord:v17];

    v20 = sub_100092B0C(accountStore, v17);
    v21 = v20;
    if ((v20 & 6) == 2)
    {
      account5 = [(IMAPServiceLibrary *)self account];
      serviceLabelID = [account5 serviceLabelID];
      VMStoreRecordSetFlagsFromServer(serviceLabelID, v17, v21 | 0x40u, 1);
    }

    else
    {
      if ((~v20 & 0x42) == 0)
      {
LABEL_12:
        CFRelease(v17);
        goto LABEL_13;
      }

      account5 = sub_10001E9B0();
      if (os_log_type_enabled(account5, OS_LOG_TYPE_DEFAULT))
      {
        account6 = [(IMAPServiceLibrary *)self account];
        v25 = *&account6[OBJC_IVAR___MFAccount_mambaID];
        account7 = [(IMAPServiceLibrary *)self account];
        *buf = v27;
        v31 = v25;
        v32 = 2080;
        v33 = " ";
        v34 = 1024;
        *v35 = v16;
        *&v35[4] = 2112;
        *&v35[6] = account7;
        _os_log_impl(&_mh_execute_header, account5, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoveRecord has been Disabled for the record with identifier %u, account %@", buf, 0x26u);
      }
    }

    v12 = 1;
    goto LABEL_12;
  }

LABEL_16:
}

- (void)removeAllMessagesFromMailbox:(id)mailbox andNotify:(BOOL)notify
{
  v5 = sub_10001FAD0(mailbox);
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  if (v5 == 2)
  {
    v8 = 0;
    v7 = 8;
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_7;
    }

    v7 = 0;
    v8 = 8;
  }

  v9 = sub_1000931D0(accountStore, v7, v8);
  if (v9)
  {
    account2 = [(IMAPServiceLibrary *)self account];
    service = [account2 service];
    [service _removeRecordsNotPendingDelete:v9];

    [accountStore save];
    [(IMAPServiceLibrary *)self _resetCountsForCompaction];
    CFRelease(v9);
  }

LABEL_7:
}

- (void)copyAudioDataToMainStore:(void *)store dstRecord:(void *)record
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v32 = accountStore;
  v9 = sub_100092DDC(accountStore, store);
  v10 = VMStoreRecordCopyDataPath();
  v11 = VMStoreRecordCopyDescription(record);
  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:v9];

  v14 = sub_10001E9B0();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      account2 = [(IMAPServiceLibrary *)self account];
      v17 = *&account2[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v35 = v17;
      v36 = 2080;
      v37 = " ";
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sCopying audio data from account store to record %@", buf, 0x20u);
    }

    v18 = +[NSFileManager defaultManager];
    v33 = 0;
    v19 = [v18 copyItemAtPath:v9 toPath:v10 error:&v33];
    v20 = v33;

    if (v19)
    {
      sub_100092850(v32, store);
      VMStoreRecordSetDuration(record);
      account3 = [(IMAPServiceLibrary *)self account];
      serviceLabelID = [account3 serviceLabelID];
      VMStoreRecordSetFlags(serviceLabelID, record, 2);
    }

    else
    {
      account3 = sub_10001E9B0();
      if (os_log_type_enabled(account3, OS_LOG_TYPE_DEFAULT))
      {
        account4 = [(IMAPServiceLibrary *)self account];
        v31 = *&account4[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315906;
        v35 = v31;
        v36 = 2080;
        v37 = " ";
        v38 = 2112;
        v39 = v11;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&_mh_execute_header, account3, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to copy audio data from account store to record %@ with error %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    if (v15)
    {
      account5 = [(IMAPServiceLibrary *)self account];
      v24 = *&account5[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v35 = v24;
      v36 = 2080;
      v37 = " ";
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file does not exist in the account store, record %@", buf, 0x20u);
    }

    Flags = VMStoreRecordGetFlags(record);
    if ((Flags & 2) == 0)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v26 = sub_10001E9B0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      account6 = [(IMAPServiceLibrary *)self account];
      v28 = *&account6[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v35 = v28;
      v36 = 2080;
      v37 = " ";
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is set, but audio file does not exist, record %@", buf, 0x20u);
    }

    account3 = [(IMAPServiceLibrary *)self account];
    serviceLabelID2 = [account3 serviceLabelID];
    VMStoreRecordSetFlags(serviceLabelID2, record, Flags & 0xFFFFFFFD);

    v20 = 0;
  }

LABEL_16:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

- (void)updateMainStoreRecord:(void *)record dstRecord:(void *)dstRecord token:(__CFString *)token
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v11 = VMStoreRecordCopyDescription(dstRecord);
  v12 = sub_10001E9B0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v14 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    v31 = 136315906;
    v32 = v14;
    v33 = 2080;
    v34 = " ";
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    tokenCopy = token;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sRecord %@ with the same token '%@' found in the main database", &v31, 0x2Au);
  }

  v15 = sub_100092DDC(accountStore, record);
  v16 = VMStoreRecordCopyDataPath();
  v17 = +[NSFileManager defaultManager];
  v18 = [v17 fileExistsAtPath:v16];

  v19 = sub_10001E9B0();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      account3 = [(IMAPServiceLibrary *)self account];
      v22 = *&account3[OBJC_IVAR___MFAccount_mambaID];
      v31 = 136315650;
      v32 = v22;
      v33 = 2080;
      v34 = " ";
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file exists in the main store, record %@", &v31, 0x20u);
    }

    Flags = VMStoreRecordGetFlags(dstRecord);
    if ((Flags & 2) == 0)
    {
      v24 = sub_10001E9B0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        account4 = [(IMAPServiceLibrary *)self account];
        v26 = *&account4[OBJC_IVAR___MFAccount_mambaID];
        v31 = 136315650;
        v32 = v26;
        v33 = 2080;
        v34 = " ";
        v35 = 2112;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is not set, but audio file exists, record %@", &v31, 0x20u);
      }

      account5 = [(IMAPServiceLibrary *)self account];
      serviceLabelID = [account5 serviceLabelID];
      VMStoreRecordSetFlags(serviceLabelID, dstRecord, Flags | 2u);
    }
  }

  else
  {
    if (v20)
    {
      account6 = [(IMAPServiceLibrary *)self account];
      v30 = *&account6[OBJC_IVAR___MFAccount_mambaID];
      v31 = 136315650;
      v32 = v30;
      v33 = 2080;
      v34 = " ";
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file does not exist in the main store, record %@", &v31, 0x20u);
    }

    [(IMAPServiceLibrary *)self copyAudioDataToMainStore:record dstRecord:dstRecord];
  }

  VMStoreSave();
  if (v11)
  {
    CFRelease(v11);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

- (void)createMainStoreRecord:(void *)record
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  account2 = [(IMAPServiceLibrary *)self account];
  serviceLabelID = [account2 serviceLabelID];
  v9 = sub_100093040(accountStore, record, serviceLabelID);

  VMStoreSave();
  v10 = VMStoreRecordCopyDescription(v9);
  v11 = sub_10001E9B0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    account3 = [(IMAPServiceLibrary *)self account];
    v13 = *&account3[OBJC_IVAR___MFAccount_mambaID];
    v18 = 136315650;
    v19 = v13;
    v20 = 2080;
    v21 = " ";
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating new global record %@", &v18, 0x20u);
  }

  [(IMAPServiceLibrary *)self copyAudioDataToMainStore:record dstRecord:v9];
  v14 = VMStoreRecordCopyDescription(v9);
  v15 = sub_10001E9B0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    account4 = [(IMAPServiceLibrary *)self account];
    v17 = *&account4[OBJC_IVAR___MFAccount_mambaID];
    v18 = 136315650;
    v19 = v17;
    v20 = 2080;
    v21 = " ";
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s===> Created new global record %@", &v18, 0x20u);
  }

  VMStoreSave();
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

- (void)mergeRecord:(void *)record
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v7 = sub_100092A8C(accountStore, record);
  DeletedRecordWithToken = VMStoreCopyFirstDeletedRecordWithToken(v7, 0);
  v9 = VMStoreRecordCopyDescription(record);
  v10 = sub_10001E9B0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v12 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    v17 = 136315906;
    v18 = v12;
    v19 = 2080;
    v20 = " ";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sMerge record %@ with token %@ to the main store", &v17, 0x2Au);
  }

  if (DeletedRecordWithToken)
  {
    v13 = sub_10001E9B0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      account3 = [(IMAPServiceLibrary *)self account];
      v15 = *&account3[OBJC_IVAR___MFAccount_mambaID];
      v17 = 136315650;
      v18 = v15;
      v19 = 2080;
      v20 = " ";
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sRecord with the same token '%@' is found in the deleted table, skipping merge", &v17, 0x20u);
    }

    CFRelease(DeletedRecordWithToken);
  }

  else
  {
    RecordWithToken = VMStoreCopyFirstRecordWithToken(v7, 0);
    if (RecordWithToken)
    {
      [(IMAPServiceLibrary *)self updateMainStoreRecord:record dstRecord:RecordWithToken token:v7];
      CFRelease(RecordWithToken);
    }

    else
    {
      [(IMAPServiceLibrary *)self createMainStoreRecord:record];
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

- (id)mailboxUidForMessage:(id)message
{
  messageCopy = message;
  [messageCopy libraryID];
  v5 = VMStoreCopyRecordWithIdentifier();
  if (v5)
  {
    v6 = [(IMAPServiceLibrary *)self _mailboxUidForStoreRecord:v5];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v42 = sub_10001FAD0(mailboxCopy);
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v12 = sub_10001E9B0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v14 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    v15 = @"Trash";
    *buf = 136316162;
    if (v42 == 1)
    {
      v15 = @"Inbox";
    }

    v44 = v14;
    v45 = 2080;
    v46 = " ";
    v47 = 2048;
    bottomCopy2 = bottom;
    v49 = 2048;
    rangeCopy2 = range;
    v51 = 2112;
    v52 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s==> Get details <lowUID=%lu, highUID=%lu, mailbox=%@> begin", buf, 0x34u);
  }

  if (v42 == 1)
  {
    v16 = 104;
  }

  else
  {
    v16 = 96;
  }

  v17 = sub_10001E900(bottom);
  v18 = sub_10001E900(range);
  v19 = sub_1000931BC(accountStore, 8 * (v42 == 2), v16, v17, v18);
  v20 = [v19 count];
  if (v20 > messages)
  {
    v21 = [v19 subarrayWithRange:{objc_msgSend(v19, "count") - messages, messages}];
    v22 = [v21 copy];

    v20 = [v22 count];
    v19 = v22;
  }

  if (!a6)
  {
LABEL_14:
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_25:
    v26 = 0;
    goto LABEL_26;
  }

  if (v19 && [v19 count])
  {
    v23 = sub_10009278C(accountStore, [v19 objectAtIndex:0]);
    v24 = sub_10009278C(accountStore, [v19 lastObject]);
    a6->location = v23;
    a6->length = v24 - v23;
    goto LABEL_14;
  }

  a6->location = 0;
  a6->length = 0;
  if (!v20)
  {
    goto LABEL_25;
  }

LABEL_15:
  v25 = 0;
  v26 = 0;
  do
  {
    v27 = [v19 objectAtIndex:v25];
    v28 = VMStoreRecordCopyDescription(v27);
    v29 = sub_10001E9B0();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      account3 = [(IMAPServiceLibrary *)self account];
      v31 = *&account3[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v44 = v31;
      v45 = 2080;
      v46 = " ";
      v47 = 2112;
      bottomCopy2 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sAdd message details for record %@", buf, 0x20u);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    v32 = objc_alloc_init(MFMessageDetails);
    *&v32[OBJC_IVAR___MFMessageDetails_library] = self;
    v33 = sub_100092B0C(accountStore, v27);
    *&v32[OBJC_IVAR___MFMessageDetails_messageFlags] = v33 & 1 | (2 * ((v33 >> 2) & 1));
    *&v32[OBJC_IVAR___MFMessageDetails_uid] = sub_10009278C(accountStore, v27);
    *&v32[OBJC_IVAR___MFMessageDetails_libraryID] = sub_100092784(accountStore, v27);
    *&v32[OBJC_IVAR___MFMessageDetails_mailboxID] = v42;
    *&v32[OBJC_IVAR___MFMessageDetails_dateReceived] = sub_100092820(accountStore, v27);
    if (!v26)
    {
      v26 = [[NSMutableArray alloc] initWithCapacity:v20];
    }

    [v26 addObject:v32];

    ++v25;
  }

  while (v20 != v25);
LABEL_26:
  v34 = sub_10001E9B0();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    account4 = [(IMAPServiceLibrary *)self account];
    v36 = *&account4[OBJC_IVAR___MFAccount_mambaID];
    v37 = @"Trash";
    *buf = 136316674;
    if (v42 == 1)
    {
      v37 = @"Inbox";
    }

    v44 = v36;
    v45 = 2080;
    v46 = " ";
    v47 = 2048;
    bottomCopy2 = bottom;
    v49 = 2048;
    rangeCopy2 = range;
    v51 = 2112;
    v52 = v37;
    v53 = 2112;
    v54 = accountStore;
    v55 = 2112;
    v56 = v26;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%sGet details <lowUID=%lu, highUID=%lu, mailbox=%@, store=%@> for messages %@", buf, 0x48u);
  }

  return v26;
}

- (id)addMessages:(id)messages withMailbox:(id)mailbox fetchBodies:(BOOL)bodies newMessagesByOldMessage:(id)message remoteIDs:(id)ds setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)self0 copyFiles:(BOOL)self1 addPOPUIDs:(BOOL)self2 dataSectionsByMessage:(id)self3
{
  messagesCopy = messages;
  mailboxCopy = mailbox;
  messageCopy = message;
  dsCopy = ds;
  forMessagesCopy = forMessages;
  byMessageCopy = byMessage;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  name = [mailboxCopy name];
  v108 = [name caseInsensitiveCompare:@"INBOX"];
  selfCopy = self;

  v19 = sub_10001E9B0();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v21 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    name2 = [mailboxCopy name];
    v23 = name2;
    *buf = 136316162;
    if (v108)
    {
      v24 = 3;
    }

    else
    {
      v24 = 1;
    }

    v126 = v21;
    v127 = 2080;
    v128 = " ";
    v129 = 2112;
    *v130 = messagesCopy;
    *&v130[8] = 2112;
    *&v130[10] = name2;
    *&v130[18] = 1024;
    *&v130[20] = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sAdd messages %@ to %@ mailbox, destination type is %d", buf, 0x30u);
  }

  v25 = sub_10001E9B0();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    account3 = [(IMAPServiceLibrary *)self account];
    v27 = *&account3[OBJC_IVAR___MFAccount_mambaID];
    account4 = [mailboxCopy account];
    store = [mailboxCopy store];
    account5 = [(IMAPServiceLibrary *)self account];
    accountStore2 = [account5 accountStore];
    *buf = 136316162;
    v126 = v27;
    v127 = 2080;
    v128 = " ";
    v129 = 2112;
    *v130 = account4;
    *&v130[8] = 2112;
    *&v130[10] = store;
    *&v130[18] = 2112;
    *&v130[20] = accountStore2;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sAdd messages to account %@ store %@, account store %@", buf, 0x34u);
  }

  v32 = 0;
  v120 = 0;
  v110 = 0;
  if (v108)
  {
    v33 = 8;
  }

  else
  {
    v33 = 0;
  }

  v105 = v33;
  v104 = ~clearFlags;
  while (v32 < [messagesCopy count])
  {
    v121 = [messagesCopy objectAtIndexedSubscript:v32];
    messageIDHeader = [v121 messageIDHeader];
    if (v32 >= [dsCopy count])
    {
      [v121 remoteID];
    }

    else
    {
      [dsCopy objectAtIndexedSubscript:v32];
    }
    v34 = ;
    v35 = v34;
    if (v34)
    {
      v36 = sub_10001FF88(v34, 0);
    }

    else
    {
      v36 = 0;
    }

    v37 = sub_100093224(accountStore, messageIDHeader);
    v38 = v37;
    if (v37)
    {
      v39 = VMStoreRecordCopyDescription(v37);
      v40 = sub_10001E9B0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        account6 = [(IMAPServiceLibrary *)selfCopy account];
        v42 = *&account6[OBJC_IVAR___MFAccount_mambaID];
        account7 = [(IMAPServiceLibrary *)selfCopy account];
        serviceLabelID = [account7 serviceLabelID];
        *buf = 136316418;
        v126 = v42;
        v127 = 2080;
        v128 = " ";
        v129 = 2112;
        *v130 = v39;
        *&v130[8] = 2112;
        *&v130[10] = messageIDHeader;
        *&v130[18] = 1024;
        *&v130[20] = v36;
        *&v130[24] = 2112;
        *&v130[26] = serviceLabelID;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdating record %@ with token '%@', remote UID %u, label %@", buf, 0x3Au);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if ((VMStoreRecordGetFlags(v38) & 0x40) != 0)
      {
        v45 = sub_10001E9B0();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          account8 = [(IMAPServiceLibrary *)selfCopy account];
          v47 = *&account8[OBJC_IVAR___MFAccount_mambaID];
          *buf = 136315650;
          v126 = v47;
          v127 = 2080;
          v128 = " ";
          v129 = 2112;
          *v130 = messageIDHeader;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%sResetting Detached flag from record with token '%@'", buf, 0x20u);
        }

        sub_100092B48(accountStore, v38, 64);
      }

      v48 = sub_100092B0C(accountStore, v38) & 0xFFFFFFE3;
      if (v108)
      {
        v48 |= 8u;
      }

      v49 = sub_10001E9F4((flags & 1 | (4 * ((flags >> 1) & 1)) | (flags >> 27) & 0x20 | v48) & ~(clearFlags & 1 | (4 * ((clearFlags >> 1) & 1)) | (clearFlags >> 27) & 0x20));
      sub_100092B54(accountStore, v38, v49);
      sub_1000927BC(accountStore, v38, v36);
      account9 = [(IMAPServiceLibrary *)selfCopy account];
      serviceMDN = [account9 serviceMDN];
      sub_1000929A8(accountStore, v38, serviceMDN);

LABEL_71:
      account10 = [(IMAPServiceLibrary *)selfCopy account];
      accountStore3 = [account10 accountStore];
      [accountStore3 save];

      [(IMAPServiceLibrary *)selfCopy mergeRecord:v38];
      v92 = [(IMAPServiceLibrary *)selfCopy messageWithAccountStoreRecord:v38];
      v93 = v120;
      if (!v120)
      {
        v93 = objc_opt_new();
      }

      v120 = v93;
      [v93 addObject:v92];
      if (messageCopy)
      {
        [messageCopy setObject:v92 forKey:v121];
      }

      CFRelease(v38);

      goto LABEL_76;
    }

    if (v32 >= [forMessagesCopy count])
    {
      messageFlags = [v121 messageFlags];
    }

    else
    {
      v52 = [forMessagesCopy objectAtIndexedSubscript:v32];
      unsignedIntValue = [v52 unsignedIntValue];

      messageFlags = unsignedIntValue;
    }

    v116 = v105;
    if (((messageFlags | flags) & v104) != 0)
    {
      v116 = (2 * ((messageFlags | flags) & v104)) & 4 | (messageFlags | flags) & v104 & 1 | (((messageFlags | flags) & v104) >> 27) & 0x20 | v105;
    }

    account11 = [(IMAPServiceLibrary *)selfCopy account];
    serviceICC = [account11 serviceICC];

    headers = [v121 headers];
    firstSenderAddress = [headers firstSenderAddress];
    pstnAddress = [firstSenderAddress pstnAddress];

    v57 = pstnAddress;
    if (pstnAddress)
    {
      v58 = sub_100025188(pstnAddress, serviceICC);
      if (![v58 length])
      {
        v59 = pstnAddress;

        v58 = v59;
        v57 = pstnAddress;
      }
    }

    else
    {
      v58 = 0;
    }

    v113 = v58;
    v60 = CFPhoneNumberCreate();
    v61 = v60;
    if (v57 && sub_100023774(v60))
    {
      v62 = sub_10001E9B0();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        account12 = [(IMAPServiceLibrary *)selfCopy account];
        v64 = *&account12[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315650;
        v126 = v64;
        v127 = 2080;
        v128 = " ";
        v129 = 2112;
        *v130 = v113;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s%sPrivacy manager reports sender address %@ is blocked; marking record as blocked", buf, 0x20u);
      }

      v116 |= 0x80u;
    }

    if (v61)
    {
      CFRelease(v61);
    }

    v65 = sub_10001E9B0();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      account13 = [(IMAPServiceLibrary *)selfCopy account];
      v67 = *&account13[OBJC_IVAR___MFAccount_mambaID];
      account14 = [(IMAPServiceLibrary *)selfCopy account];
      serviceMDN2 = [account14 serviceMDN];
      *buf = 136315650;
      v126 = v67;
      v127 = 2080;
      v128 = " ";
      v129 = 2112;
      *v130 = serviceMDN2;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I %s%sUsing account's service phone number: %@", buf, 0x20u);
    }

    account15 = [(IMAPServiceLibrary *)selfCopy account];
    serviceMDN3 = [account15 serviceMDN];

    copyAddressListForReplyTo = [headers copyAddressListForReplyTo];
    v109 = copyAddressListForReplyTo;
    if (!copyAddressListForReplyTo)
    {
      v75 = 0;
      pstnAddress2 = 0;
      goto LABEL_63;
    }

    firstObject = [copyAddressListForReplyTo firstObject];
    pstnAddress2 = [firstObject pstnAddress];

    if (pstnAddress2)
    {
      v74 = sub_100025188(pstnAddress2, serviceICC);
      if ([v74 length])
      {
        v75 = v74;
        goto LABEL_56;
      }
    }

    v75 = 0;
LABEL_56:
    v76 = CFPhoneNumberCreate();
    v77 = v76;
    if (v75 && sub_100023774(v76))
    {
      v78 = sub_10001E9B0();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        account16 = [(IMAPServiceLibrary *)selfCopy account];
        v80 = *&account16[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315650;
        v126 = v80;
        v127 = 2080;
        v128 = " ";
        v129 = 2112;
        *v130 = v75;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I %s%sPrivacy manager reports reply to address %@ is blocked; marking record as blocked", buf, 0x20u);
      }

      v116 |= 0x80u;
    }

    if (v77)
    {
      CFRelease(v77);
    }

LABEL_63:
    v81 = [headers firstHeaderForKey:@"x-applevm-deletion-date"];
    if ([v81 length])
    {
      v82 = [NSDate mf_copyDateInCommonFormatsWithString:v81];
    }

    else
    {
      v82 = 0;
    }

    dateSent = [v121 dateSent];
    v84 = sub_10001E9B0();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      account17 = [(IMAPServiceLibrary *)selfCopy account];
      v86 = *&account17[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136317442;
      v126 = v86;
      v127 = 2080;
      v128 = " ";
      v129 = 1024;
      *v130 = v36;
      *&v130[4] = 2112;
      *&v130[6] = dateSent;
      *&v130[14] = 2112;
      *&v130[16] = messageIDHeader;
      *&v130[24] = 2112;
      *&v130[26] = v113;
      v131 = 2112;
      v132 = v75;
      v133 = 2112;
      v134 = v82;
      v135 = 1024;
      v136 = v116;
      v137 = 2112;
      v138 = serviceMDN3;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I %s%s===> Creating new record with remoteUID: %d, sentDate: %@, messageID: %@, from: %@, callback: %@, expirationDate: %@, flags: %d, to: %@", buf, 0x5Eu);
    }

    [dateSent timeIntervalSince1970];
    v88 = v87;
    [v82 timeIntervalSince1970];
    LODWORD(v101) = v116;
    v38 = sub_100093004(accountStore, v36, v88, messageIDHeader, v113, v75, 0);
    v89 = v110;
    if (!v110)
    {
      v89 = objc_opt_new();
    }

    v110 = v89;
    [v89 addObject:{v38, v101, serviceMDN3}];

    if (v38)
    {
      goto LABEL_71;
    }

LABEL_76:

    ++v32;
  }

  if (v120)
  {
    if (mailboxCopy)
    {
      v94 = [[NSArray alloc] initWithObjects:{mailboxCopy, 0}];
    }

    else
    {
      v94 = 0;
    }

    v95 = [[NSDictionary alloc] initWithObjectsAndKeys:{v120, @"messages", v94, @"mailboxes", 0}];
    v96 = sub_10001E9B0();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      account18 = [(IMAPServiceLibrary *)selfCopy account];
      v98 = *&account18[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v126 = v98;
      v127 = 2080;
      v128 = " ";
      v129 = 2112;
      *v130 = v95;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting MailMessageStoreMessagesAdded notification %@", buf, 0x20u);
    }

    v99 = +[NSNotificationCenter defaultCenter];
    [v99 postNotificationName:MailMessageStoreMessagesAdded object:selfCopy userInfo:v95];
  }

  return v120;
}

- (void)updateSelectedMessages:(id)messages withMailbox:(id)mailbox
{
  messagesCopy = messages;
  mailboxCopy = mailbox;
  selfCopy = self;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  name = [mailboxCopy name];
  v7 = [name caseInsensitiveCompare:@"INBOX"];
  v8 = sub_10001E9B0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)selfCopy account];
    v10 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    if (v7)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    *buf = 136316162;
    v49 = v10;
    v50 = 2080;
    v51 = " ";
    v52 = 2112;
    v53 = messagesCopy;
    v54 = 2112;
    v55 = name;
    v56 = 1024;
    v57 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdate selected messages %@ for mailbox %@, destination type is %d", buf, 0x30u);
  }

  context = objc_autoreleasePoolPush();
  if (v7)
  {
    v12 = sub_1000931D0(accountStore, 8, 68);
    v13 = sub_1000931DC(accountStore, 64, 4);
  }

  else
  {
    v12 = sub_1000931D0(accountStore, 0, 76);
    v13 = sub_1000931DC(accountStore, 64, 12);
  }

  v14 = v13;
  v39 = v12;
  v15 = [v12 count];
  v16 = sub_10001E9B0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    account3 = [(IMAPServiceLibrary *)selfCopy account];
    v18 = *&account3[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315906;
    v49 = v18;
    v50 = 2080;
    v51 = " ";
    v52 = 2048;
    v53 = v15;
    v54 = 2048;
    v55 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%supdateSelectedMessages: found %lu records, %lu detached records", buf, 0x2Au);
  }

  if (v15)
  {
    v19 = [NSMutableSet setWithArray:messagesCopy];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v12;
    v20 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v20)
    {
      v21 = 0;
      v22 = *v44;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v43 + 1) + 8 * i);
          v25 = [NSNumber numberWithUnsignedInt:sub_10009278C(accountStore, v24)];
          if (([v19 containsObject:v25] & 1) == 0)
          {
            v26 = VMStoreRecordCopyDescription(v24);
            if (v26)
            {
              v27 = sub_10001E9B0();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                account4 = [(IMAPServiceLibrary *)selfCopy account];
                v29 = *&account4[OBJC_IVAR___MFAccount_mambaID];
                *buf = 136315650;
                v49 = v29;
                v50 = 2080;
                v51 = " ";
                v52 = 2112;
                v53 = v26;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding Detached flag to record %@", buf, 0x20u);
              }

              CFRelease(v26);
            }

            sub_100092B3C(accountStore, v24, 64);
            v21 = 1;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v20);

      if (v21)
      {
        [accountStore save];
        v30 = sub_10001E9B0();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          account5 = [(IMAPServiceLibrary *)selfCopy account];
          v32 = *&account5[OBJC_IVAR___MFAccount_mambaID];
          *buf = 136315394;
          v49 = v32;
          v50 = 2080;
          v51 = " ";
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%supdateSelectedMessages: store changed", buf, 0x16u);
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
    }

    v30 = sub_10001E9B0();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      account6 = [(IMAPServiceLibrary *)selfCopy account];
      v34 = *&account6[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315394;
      v49 = v34;
      v50 = 2080;
      v51 = " ";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%supdateSelectedMessages: no changes required", buf, 0x16u);
    }

    goto LABEL_31;
  }

LABEL_32:

  objc_autoreleasePoolPop(context);
}

- (BOOL)isMessageContentsLocallyAvailable:(id)available
{
  availableCopy = available;
  [availableCopy libraryID];
  v4 = VMStoreCopyRecordWithIdentifier();
  v5 = v4;
  if (v4)
  {
    if ((VMStoreRecordGetFlags(v4) & 2) != 0 && (v6 = VMStoreRecordCopyDataPath()) != 0)
    {
      v7 = +[NSFileManager defaultManager];
      v8 = [v7 fileExistsAtPath:v6];

      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setFlagsForMessages:(id)messages mask:(unint64_t)mask
{
  messagesCopy = messages;
  v19 = objc_alloc_init(NSMutableDictionary);
  allKeys = [messagesCopy allKeys];
  v6 = [allKeys count];
  v7 = sub_10001E9B0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    account = [(IMAPServiceLibrary *)self account];
    v9 = *&account[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136316162;
    v21 = v9;
    v22 = 2080;
    v23 = " ";
    v24 = 2112;
    v25 = messagesCopy;
    v26 = 2048;
    maskCopy = mask;
    v28 = 2112;
    v29 = allKeys;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sSet flags %@ with mask %llu for messages %@", buf, 0x34u);
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v11 = [allKeys objectAtIndex:i];
      messageFlags = [v11 messageFlags];
      v13 = [messagesCopy objectForKey:v11];
      unsignedIntValue = [v13 unsignedIntValue];

      if (mask == 0x1BFDDF7FFFFLL)
      {
        v15 = unsignedIntValue;
      }

      else
      {
        v15 = unsignedIntValue & mask | messageFlags & ~mask;
      }

      v16 = [[NSNumber alloc] initWithUnsignedLongLong:messageFlags];
      [v19 setObject:v16 forKey:v11];
      [(IMAPServiceLibrary *)self _setFlags:v15 forMessage:v11 postAndCommit:0];
    }
  }

  VMStoreSave();
  [(IMAPServiceLibrary *)self postFlagsChangedForMessages:allKeys flags:0 oldFlagsByMessage:v19];
}

- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  dictionaryCopy = dictionary;
  messagesCopy = messages;
  v8 = sub_10001E9B0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    account = [(IMAPServiceLibrary *)self account];
    v10 = *&account[OBJC_IVAR___MFAccount_mambaID];
    v12 = 136315906;
    v13 = v10;
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = dictionaryCopy;
    v18 = 2112;
    v19 = messagesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s==== Set flags from dictionary %@ for messages %@", &v12, 0x2Au);
  }

  return messagesCopy;
}

- (void)_setFlags:(unint64_t)flags forMessage:(id)message postAndCommit:(BOOL)commit
{
  commitCopy = commit;
  messageCopy = message;
  v23 = messageCopy;
  if (commitCopy)
  {
    messageFlags = [messageCopy messageFlags];
  }

  else
  {
    messageFlags = 0;
  }

  [v23 setMessageFlagsWithoutCommitting:flags];
  messageIDHeader = [v23 messageIDHeader];
  messageStore = [v23 messageStore];
  mailboxUid = [messageStore mailboxUid];
  if ([mailboxUid type] == 7)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  RecordWithTokenInMailbox = VMStoreCopyFirstRecordWithTokenInMailbox(messageIDHeader, v13);
  if (RecordWithTokenInMailbox)
  {
    remoteID = [v23 remoteID];
    v16 = remoteID;
    if (remoteID)
    {
      v17 = sub_10001FF88(remoteID, 0);
      if (v17 == VMStoreRecordGetRemoteUID(RecordWithTokenInMailbox))
      {
        v18 = [v23 hasTemporaryUid] ? 32 : 0;
        Flags = VMStoreRecordGetFlags(RecordWithTokenInMailbox);
        v19 = (VMStoreRecordGetFlags(RecordWithTokenInMailbox) & 0x40) != 0 ? flags & 1 | (4 * ((flags >> 1) & 1)) & 0xFFFFFFE1 | (flags >> 27) & 0x20 | v18 & 0xFFFFFFE1 : flags & 1 | (4 * ((flags >> 1) & 1)) | (flags >> 27) & 0x20 | v18;
        account = [(IMAPServiceLibrary *)self account];
        serviceLabelID = [account serviceLabelID];
        VMStoreRecordSetFlagsFromServer(serviceLabelID, RecordWithTokenInMailbox, v19 | Flags & 0xFFFFFFDA, 1);

        if (commitCopy)
        {
          VMStoreSave();
        }
      }
    }

    CFRelease(RecordWithTokenInMailbox);
  }

  if (commitCopy)
  {
    [(IMAPServiceLibrary *)self postOldFlags:messageFlags newFlags:flags forMessage:v23];
  }
}

- (IMAPServiceAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end
@interface IMAPServiceLibrary
- (BOOL)isMessageContentsLocallyAvailable:(id)a3;
- (BOOL)verifyCachedMessage:(id)a3 hasToken:(id)a4 flags:(unsigned int)a5 remoteIDStr:(id)a6;
- (IMAPServiceAccount)account;
- (IMAPServiceLibrary)initWithServiceAccount:(id)a3;
- (id)_getDetailsForMailbox:(id)a3 useRemoteIDRange:(_NSRange *)a4;
- (id)_mailboxUidForStoreRecord:(void *)a3;
- (id)_messageWithAccountStoreRecord:(id)a3 record:(void *)a4 localStore:(BOOL)a5;
- (id)addMessages:(id)a3 withMailbox:(id)a4 fetchBodies:(BOOL)a5 newMessagesByOldMessage:(id)a6 remoteIDs:(id)a7 setFlags:(unint64_t)a8 clearFlags:(unint64_t)a9 messageFlagsForMessages:(id)a10 copyFiles:(BOOL)a11 addPOPUIDs:(BOOL)a12 dataSectionsByMessage:(id)a13;
- (id)getDetailsForAllMessagesFromMailbox:(id)a3;
- (id)getDetailsForMessages:(unint64_t)a3 absoluteBottom:(unint64_t)a4 topOfDesiredRange:(unint64_t)a5 range:(_NSRange *)a6 fromMailbox:(id)a7;
- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)a3 fromMailbox:(id)a4;
- (id)mailboxUidForMessage:(id)a3;
- (id)messageWithAccountStoreRecord:(void *)a3;
- (id)messageWithRemoteID:(id)a3 inRemoteMailbox:(id)a4;
- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (unsigned)deletedCountForMailbox:(id)a3;
- (unsigned)maximumRemoteIDForMailbox:(id)a3;
- (unsigned)minimumRemoteIDForMailbox:(id)a3;
- (unsigned)nonDeletedCountForMailbox:(id)a3;
- (unsigned)totalCountForMailbox:(id)a3;
- (unsigned)unreadCountForMailbox:(id)a3;
- (void)_resetCountsForCompaction;
- (void)_setFlags:(unint64_t)a3 forMessage:(id)a4 postAndCommit:(BOOL)a5;
- (void)compactMailbox:(id)a3;
- (void)compactMessages:(id)a3 permanently:(BOOL)a4;
- (void)copyAudioDataToMainStore:(void *)a3 dstRecord:(void *)a4;
- (void)copyStoreRecordForMessage:(id)a3;
- (void)createMainStoreRecord:(void *)a3;
- (void)dealloc;
- (void)flushMessageCache;
- (void)mergeRecord:(void *)a3;
- (void)removeAllMessagesFromMailbox:(id)a3 andNotify:(BOOL)a4;
- (void)setFlagsForMessages:(id)a3 mask:(unint64_t)a4;
- (void)updateMainStoreRecord:(void *)a3 dstRecord:(void *)a4 token:(__CFString *)a5;
- (void)updateSelectedMessages:(id)a3 withMailbox:(id)a4;
@end

@implementation IMAPServiceLibrary

- (IMAPServiceLibrary)initWithServiceAccount:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IMAPServiceLibrary;
  v5 = [(IMAPServiceLibrary *)&v15 initWithPath:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_account, v4);
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
      v12 = [(IMAPServiceLibrary *)v6 account];
      v13 = *&v12[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315906;
      v17 = v13;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v4;
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

- (id)_mailboxUidForStoreRecord:(void *)a3
{
  Flags = VMStoreRecordGetFlags(a3);
  v5 = [(IMAPServiceLibrary *)self account];
  v6 = v5;
  v7 = off_1000EDEB0;
  if ((Flags & 8) == 0)
  {
    v7 = &off_1000EDEB8;
  }

  v8 = [v5 mailboxUidForRelativePath:*v7 create:1];

  return v8;
}

- (void)flushMessageCache
{
  v3 = sub_10001E9B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IMAPServiceLibrary *)self account];
    v5 = *&v4[OBJC_IVAR___MFAccount_mambaID];
    v6 = [(IMAPServiceLibrary *)self knownMessages];
    v8 = 136315650;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 1024;
    v13 = [v6 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sFlushed knownMessages cache. It had %d elements.", &v8, 0x1Cu);
  }

  v7 = +[NSMapTable strongToWeakObjectsMapTable];
  [(IMAPServiceLibrary *)self setKnownMessages:v7];
}

- (BOOL)verifyCachedMessage:(id)a3 hasToken:(id)a4 flags:(unsigned int)a5 remoteIDStr:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!self->isLongLifeMessagesCache)
  {
    goto LABEL_6;
  }

  v13 = [v10 messageFlags];
  if ((v13 & 1 | (4 * ((v13 >> 1) & 1)) | (v13 >> 27) & 0x20) != a5)
  {
    v19 = sub_10001E9B0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(IMAPServiceLibrary *)self account];
      v21 = *&v20[OBJC_IVAR___MFAccount_mambaID];
      v29 = 136315906;
      v30 = v21;
      v31 = 2080;
      v32 = " ";
      v33 = 1024;
      v34 = [v10 messageFlags];
      v35 = 1024;
      v36 = a5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, flags %u vs %u", &v29, 0x22u);
    }

    goto LABEL_15;
  }

  v14 = [v10 remoteID];
  v15 = [v14 isEqualToString:v12];

  if ((v15 & 1) == 0)
  {
    v19 = sub_10001E9B0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(IMAPServiceLibrary *)self account];
      v23 = *&v22[OBJC_IVAR___MFAccount_mambaID];
      v29 = 136315394;
      v30 = v23;
      v31 = 2080;
      v32 = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, different remoteID", &v29, 0x16u);
    }

    goto LABEL_15;
  }

  if (((((a5 & 0x20) == 0) ^ [v10 hasTemporaryUid]) & 1) == 0)
  {
    v19 = sub_10001E9B0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(IMAPServiceLibrary *)self account];
      v25 = *&v24[OBJC_IVAR___MFAccount_mambaID];
      v29 = 136315394;
      v30 = v25;
      v31 = 2080;
      v32 = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, different temporaryID", &v29, 0x16u);
    }

    goto LABEL_15;
  }

  v16 = [v10 messageIDHeader];
  v17 = [v16 isEqualToString:v11];

  if ((v17 & 1) == 0)
  {
    v19 = sub_10001E9B0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(IMAPServiceLibrary *)self account];
      v27 = *&v26[OBJC_IVAR___MFAccount_mambaID];
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

- (id)_messageWithAccountStoreRecord:(id)a3 record:(void *)a4 localStore:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = sub_100092784(v8, a4);
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
    v15 = [(IMAPServiceLibrary *)self knownMessages];
    v16 = [NSNumber numberWithUnsignedInt:v10];
    v17 = [v15 objectForKey:v16];

    if (v17 && [(IMAPServiceLibrary *)self verifyCachedMessage:v17 hasToken:v34 flags:v11 remoteIDStr:v35])
    {
      v18 = sub_10001E9B0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(IMAPServiceLibrary *)self account];
        v20 = *&v19[OBJC_IVAR___MFAccount_mambaID];
        v21 = [(IMAPServiceLibrary *)self account];
        v22 = [v21 serviceLabelID];
        *buf = 136315906;
        v37 = v20;
        v38 = 2080;
        v39 = " ";
        v40 = 2112;
        v41 = v22;
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
      if (v5)
      {
        v24 = [(IMAPServiceLibrary *)self sharedGenericStore];
        v25 = v24;
      }

      else
      {
        v25 = [(IMAPServiceLibrary *)self account];
        a4 = [(IMAPServiceLibrary *)self _mailboxUidForStoreRecord:a4];
        v24 = [v25 storeForMailboxUid:a4];
      }

      [(IMAPServiceLibraryMessage *)v23 setMessageStore:v24];
      if (!v5)
      {
      }

      [(IMAPServiceLibraryMessage *)v23 setMessageIDHeader:v34];
      v26 = [(IMAPServiceLibrary *)self knownMessages];
      v27 = [NSNumber numberWithUnsignedInt:v10];
      [v26 setObject:v23 forKey:v27];

      v18 = sub_10001E9B0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(IMAPServiceLibrary *)self account];
        v29 = *&v28[OBJC_IVAR___MFAccount_mambaID];
        v30 = [(IMAPServiceLibrary *)self account];
        v31 = [v30 serviceLabelID];
        v32 = [(IMAPServiceLibrary *)self knownMessages];
        *buf = 136316162;
        v37 = v29;
        v38 = 2080;
        v39 = " ";
        v40 = 2112;
        v41 = v31;
        v42 = 1024;
        v43 = v10;
        v44 = 1024;
        v45 = [v32 count];
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

- (id)messageWithAccountStoreRecord:(void *)a3
{
  v5 = [(IMAPServiceLibrary *)self account];
  v6 = [v5 accountStore];
  v7 = [(IMAPServiceLibrary *)self _messageWithAccountStoreRecord:v6 record:a3 localStore:0];

  return v7;
}

- (void)copyStoreRecordForMessage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 libraryID];
    v5 = VMStoreCopyRecordWithIdentifier();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)unreadCountForMailbox:(id)a3
{
  if (sub_10001FAD0(a3) != 1)
  {
    return 0;
  }

  v4 = [(IMAPServiceLibrary *)self account];
  v5 = [v4 serviceLabelID];
  v6 = VMStoreCountOfRecordsWithFlags(0, 13, v5);

  return v6;
}

- (unsigned)deletedCountForMailbox:(id)a3
{
  v4 = sub_10001FAD0(a3);
  if (v4 == 2)
  {
    v5 = [(IMAPServiceLibrary *)self account];
    v6 = [v5 serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(12, 16, v6);
  }

  else
  {
    if (v4 != 1)
    {
      return 0;
    }

    v5 = [(IMAPServiceLibrary *)self account];
    v6 = [v5 serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(4, 24, v6);
  }

  v8 = v7;

  return v8;
}

- (unsigned)nonDeletedCountForMailbox:(id)a3
{
  v4 = sub_10001FAD0(a3);
  if (v4 == 2)
  {
    v5 = [(IMAPServiceLibrary *)self account];
    v6 = [v5 serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(8, 4, v6);
  }

  else
  {
    if (v4 != 1)
    {
      return 0;
    }

    v5 = [(IMAPServiceLibrary *)self account];
    v6 = [v5 serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(0, 12, v6);
  }

  v8 = v7;

  return v8;
}

- (unsigned)totalCountForMailbox:(id)a3
{
  v4 = sub_10001FAD0(a3);
  if (v4 == 2)
  {
    v5 = [(IMAPServiceLibrary *)self account];
    v6 = [v5 serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(8, 16, v6);
  }

  else
  {
    if (v4 != 1)
    {
      return 0;
    }

    v5 = [(IMAPServiceLibrary *)self account];
    v6 = [v5 serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(0, 24, v6);
  }

  v8 = v7;

  return v8;
}

- (id)messageWithRemoteID:(id)a3 inRemoteMailbox:(id)a4
{
  v6 = a4;
  v20 = 0;
  v7 = sub_10001FF88(a3, &v20);
  v8 = sub_10001FAD0(v6);
  v9 = [(IMAPServiceLibrary *)self account];
  v10 = [v9 accountStore];
  v11 = v10;
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

  v15 = sub_1000931F0(v10, v7, v13 | (8 * (v8 != 1)), v14 | v12);

  if (v15)
  {
    v16 = [(IMAPServiceLibrary *)self account];
    v17 = [v16 accountStore];
    v18 = [(IMAPServiceLibrary *)self _messageWithAccountStoreRecord:v17 record:v15 localStore:1];

    CFRelease(v15);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unsigned)maximumRemoteIDForMailbox:(id)a3
{
  v4 = a3;
  v5 = [(IMAPServiceLibrary *)self account];
  v6 = [v5 accountStore];
  v7 = sub_10001FAD0(v4) == 2;
  v8 = sub_100093200(v6, v7, 0);

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

- (unsigned)minimumRemoteIDForMailbox:(id)a3
{
  v4 = a3;
  v5 = [(IMAPServiceLibrary *)self account];
  v6 = [v5 accountStore];
  v7 = sub_10001FAD0(v4) == 2;
  v8 = sub_100093200(v6, v7, 0);

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

- (id)_getDetailsForMailbox:(id)a3 useRemoteIDRange:(_NSRange *)a4
{
  v42 = a3;
  v47 = sub_10001FAD0(v42);
  v44 = self;
  v5 = [(IMAPServiceLibrary *)self account];
  v6 = [v5 accountStore];

  v7 = sub_10001E9B0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(IMAPServiceLibrary *)v44 account];
    v9 = *&v8[OBJC_IVAR___MFAccount_mambaID];
    if (a4)
    {
      v10 = NSStringFromRange(*a4);
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
    if (a4)
    {
    }
  }

  if (v47 == 1)
  {
    if (!a4 || (location = a4->location, a4->location == 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = 0;
      v14 = 104;
LABEL_18:
      theArray = sub_1000931D0(v6, v13, v14);
      goto LABEL_29;
    }

    v16 = a4->length + location;
    if (v16 >= &_mh_execute_header)
    {
      v17 = sub_10001E9B0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(IMAPServiceLibrary *)v44 account];
        v19 = *&v18[OBJC_IVAR___MFAccount_mambaID];
        v20 = NSStringFromRange(*a4);
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

      location = a4->location;
      v16 = 0xFFFFFFFFLL;
    }

    v21 = sub_10001E900(location);
    v22 = sub_10001E900(v16);
    theArray = sub_1000931BC(v6, 0, 104, v21, v22);
  }

  else
  {
    if (v47 != 2)
    {
      goto LABEL_31;
    }

    if (!a4 || (v15 = a4->location, a4->location == 0x7FFFFFFFFFFFFFFFLL))
    {
      v14 = 96;
      v13 = 8;
      goto LABEL_18;
    }

    v23 = a4->length + v15;
    if (HIDWORD(v23))
    {
      v24 = sub_10001E9B0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(IMAPServiceLibrary *)v44 account];
        v26 = *&v25[OBJC_IVAR___MFAccount_mambaID];
        v27 = NSStringFromRange(*a4);
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

      v15 = a4->location;
      v23 = 0xFFFFFFFFLL;
    }

    v28 = sub_10001E900(v15);
    v29 = sub_10001E900(v23);
    theArray = sub_1000931BC(v6, 8, 96, v28, v29);
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
      *&v33[OBJC_IVAR___MFMessageDetails_library] = v44;
      v34 = sub_100092B0C(v6, ValueAtIndex);
      *&v33[OBJC_IVAR___MFMessageDetails_messageFlags] = v34 & 1 | (2 * ((v34 >> 2) & 1));
      *&v33[OBJC_IVAR___MFMessageDetails_uid] = sub_10009278C(v6, ValueAtIndex);
      *&v33[OBJC_IVAR___MFMessageDetails_libraryID] = sub_100092784(v6, ValueAtIndex);
      *&v33[OBJC_IVAR___MFMessageDetails_mailboxID] = v47;
      *&v33[OBJC_IVAR___MFMessageDetails_dateReceived] = sub_100092820(v6, ValueAtIndex);
      [v45 addObject:v33];
    }
  }

  v35 = sub_10001E9B0();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [(IMAPServiceLibrary *)v44 account];
    v37 = *&v36[OBJC_IVAR___MFAccount_mambaID];
    if (a4)
    {
      v38 = NSStringFromRange(*a4);
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
    v57 = v6;
    v58 = 2112;
    v59 = v45;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sGet details <range=%@ mailbox=%@ store=%@> for messages %@", buf, 0x3Eu);
    if (a4)
    {
    }
  }

  if ((v41 & 1) == 0)
  {
    CFRelease(theArray);
  }

  return v45;
}

- (id)getDetailsForAllMessagesFromMailbox:(id)a3
{
  v3 = [(IMAPServiceLibrary *)self _getDetailsForMailbox:a3 useRemoteIDRange:0];

  return v3;
}

- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)a3 fromMailbox:(id)a4
{
  v6 = a3;
  v4 = [(IMAPServiceLibrary *)self _getDetailsForMailbox:a4 useRemoteIDRange:&v6];

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

- (void)compactMailbox:(id)a3
{
  v4 = sub_10001FAD0(a3);
  if (v4 == 2)
  {
    v5 = [(IMAPServiceLibrary *)self account];
    v6 = [v5 serviceLabelID];
    v7 = VMStoreCopyOfAllRecordsWithFlags(12, 16, v6);
  }

  else
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = [(IMAPServiceLibrary *)self account];
    v6 = [v5 serviceLabelID];
    v7 = VMStoreCopyOfAllRecordsWithFlags(4, 24, v6);
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(IMAPServiceLibrary *)self account];
    v10 = [v9 service];
    [v10 _removeRecordsNotPendingDelete:v8];

    VMStoreSave();
    [(IMAPServiceLibrary *)self _resetCountsForCompaction];

    CFRelease(v8);
  }
}

- (void)compactMessages:(id)a3 permanently:(BOOL)a4
{
  v29 = a3;
  v5 = [(IMAPServiceLibrary *)self account];
  v6 = [v5 accountStore];

  v28 = [v29 count];
  v7 = sub_10001E9B0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(IMAPServiceLibrary *)self account];
    v9 = *&v8[OBJC_IVAR___MFAccount_mambaID];
    v10 = [(IMAPServiceLibrary *)self account];
    *buf = 136315906;
    v31 = v9;
    v32 = 2080;
    v33 = " ";
    v34 = 2112;
    *v35 = v29;
    *&v35[8] = 2112;
    *&v35[10] = v10;
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
      v14 = [v29 objectAtIndex:{v13, v27}];
      v15 = [v14 libraryID];
      v16 = v15;
      v17 = sub_1000931E8(v6, v15);
      if (v17)
      {
        break;
      }

LABEL_13:

      if (v28 == ++v13)
      {
        if (v12)
        {
          [v6 save];
          [(IMAPServiceLibrary *)self _resetCountsForCompaction];
        }

        goto LABEL_16;
      }
    }

    v18 = [(IMAPServiceLibrary *)self account];
    v19 = [v18 service];
    [v19 _removePendingDeleteForRecord:v17];

    v20 = sub_100092B0C(v6, v17);
    v21 = v20;
    if ((v20 & 6) == 2)
    {
      v22 = [(IMAPServiceLibrary *)self account];
      v23 = [v22 serviceLabelID];
      VMStoreRecordSetFlagsFromServer(v23, v17, v21 | 0x40u, 1);
    }

    else
    {
      if ((~v20 & 0x42) == 0)
      {
LABEL_12:
        CFRelease(v17);
        goto LABEL_13;
      }

      v22 = sub_10001E9B0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(IMAPServiceLibrary *)self account];
        v25 = *&v24[OBJC_IVAR___MFAccount_mambaID];
        v26 = [(IMAPServiceLibrary *)self account];
        *buf = v27;
        v31 = v25;
        v32 = 2080;
        v33 = " ";
        v34 = 1024;
        *v35 = v16;
        *&v35[4] = 2112;
        *&v35[6] = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoveRecord has been Disabled for the record with identifier %u, account %@", buf, 0x26u);
      }
    }

    v12 = 1;
    goto LABEL_12;
  }

LABEL_16:
}

- (void)removeAllMessagesFromMailbox:(id)a3 andNotify:(BOOL)a4
{
  v5 = sub_10001FAD0(a3);
  v6 = [(IMAPServiceLibrary *)self account];
  v12 = [v6 accountStore];

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

  v9 = sub_1000931D0(v12, v7, v8);
  if (v9)
  {
    v10 = [(IMAPServiceLibrary *)self account];
    v11 = [v10 service];
    [v11 _removeRecordsNotPendingDelete:v9];

    [v12 save];
    [(IMAPServiceLibrary *)self _resetCountsForCompaction];
    CFRelease(v9);
  }

LABEL_7:
}

- (void)copyAudioDataToMainStore:(void *)a3 dstRecord:(void *)a4
{
  v7 = [(IMAPServiceLibrary *)self account];
  v8 = [v7 accountStore];

  v32 = v8;
  v9 = sub_100092DDC(v8, a3);
  v10 = VMStoreRecordCopyDataPath();
  v11 = VMStoreRecordCopyDescription(a4);
  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:v9];

  v14 = sub_10001E9B0();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = [(IMAPServiceLibrary *)self account];
      v17 = *&v16[OBJC_IVAR___MFAccount_mambaID];
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
      sub_100092850(v32, a3);
      VMStoreRecordSetDuration(a4);
      v21 = [(IMAPServiceLibrary *)self account];
      v22 = [v21 serviceLabelID];
      VMStoreRecordSetFlags(v22, a4, 2);
    }

    else
    {
      v21 = sub_10001E9B0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(IMAPServiceLibrary *)self account];
        v31 = *&v30[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315906;
        v35 = v31;
        v36 = 2080;
        v37 = " ";
        v38 = 2112;
        v39 = v11;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to copy audio data from account store to record %@ with error %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    if (v15)
    {
      v23 = [(IMAPServiceLibrary *)self account];
      v24 = *&v23[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v35 = v24;
      v36 = 2080;
      v37 = " ";
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file does not exist in the account store, record %@", buf, 0x20u);
    }

    Flags = VMStoreRecordGetFlags(a4);
    if ((Flags & 2) == 0)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v26 = sub_10001E9B0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(IMAPServiceLibrary *)self account];
      v28 = *&v27[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v35 = v28;
      v36 = 2080;
      v37 = " ";
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is set, but audio file does not exist, record %@", buf, 0x20u);
    }

    v21 = [(IMAPServiceLibrary *)self account];
    v29 = [v21 serviceLabelID];
    VMStoreRecordSetFlags(v29, a4, Flags & 0xFFFFFFFD);

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

- (void)updateMainStoreRecord:(void *)a3 dstRecord:(void *)a4 token:(__CFString *)a5
{
  v9 = [(IMAPServiceLibrary *)self account];
  v10 = [v9 accountStore];

  v11 = VMStoreRecordCopyDescription(a4);
  v12 = sub_10001E9B0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(IMAPServiceLibrary *)self account];
    v14 = *&v13[OBJC_IVAR___MFAccount_mambaID];
    v31 = 136315906;
    v32 = v14;
    v33 = 2080;
    v34 = " ";
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sRecord %@ with the same token '%@' found in the main database", &v31, 0x2Au);
  }

  v15 = sub_100092DDC(v10, a3);
  v16 = VMStoreRecordCopyDataPath();
  v17 = +[NSFileManager defaultManager];
  v18 = [v17 fileExistsAtPath:v16];

  v19 = sub_10001E9B0();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v21 = [(IMAPServiceLibrary *)self account];
      v22 = *&v21[OBJC_IVAR___MFAccount_mambaID];
      v31 = 136315650;
      v32 = v22;
      v33 = 2080;
      v34 = " ";
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file exists in the main store, record %@", &v31, 0x20u);
    }

    Flags = VMStoreRecordGetFlags(a4);
    if ((Flags & 2) == 0)
    {
      v24 = sub_10001E9B0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(IMAPServiceLibrary *)self account];
        v26 = *&v25[OBJC_IVAR___MFAccount_mambaID];
        v31 = 136315650;
        v32 = v26;
        v33 = 2080;
        v34 = " ";
        v35 = 2112;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is not set, but audio file exists, record %@", &v31, 0x20u);
      }

      v27 = [(IMAPServiceLibrary *)self account];
      v28 = [v27 serviceLabelID];
      VMStoreRecordSetFlags(v28, a4, Flags | 2u);
    }
  }

  else
  {
    if (v20)
    {
      v29 = [(IMAPServiceLibrary *)self account];
      v30 = *&v29[OBJC_IVAR___MFAccount_mambaID];
      v31 = 136315650;
      v32 = v30;
      v33 = 2080;
      v34 = " ";
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file does not exist in the main store, record %@", &v31, 0x20u);
    }

    [(IMAPServiceLibrary *)self copyAudioDataToMainStore:a3 dstRecord:a4];
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

- (void)createMainStoreRecord:(void *)a3
{
  v5 = [(IMAPServiceLibrary *)self account];
  v6 = [v5 accountStore];

  v7 = [(IMAPServiceLibrary *)self account];
  v8 = [v7 serviceLabelID];
  v9 = sub_100093040(v6, a3, v8);

  VMStoreSave();
  v10 = VMStoreRecordCopyDescription(v9);
  v11 = sub_10001E9B0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(IMAPServiceLibrary *)self account];
    v13 = *&v12[OBJC_IVAR___MFAccount_mambaID];
    v18 = 136315650;
    v19 = v13;
    v20 = 2080;
    v21 = " ";
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating new global record %@", &v18, 0x20u);
  }

  [(IMAPServiceLibrary *)self copyAudioDataToMainStore:a3 dstRecord:v9];
  v14 = VMStoreRecordCopyDescription(v9);
  v15 = sub_10001E9B0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(IMAPServiceLibrary *)self account];
    v17 = *&v16[OBJC_IVAR___MFAccount_mambaID];
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

- (void)mergeRecord:(void *)a3
{
  v5 = [(IMAPServiceLibrary *)self account];
  v6 = [v5 accountStore];

  v7 = sub_100092A8C(v6, a3);
  DeletedRecordWithToken = VMStoreCopyFirstDeletedRecordWithToken(v7, 0);
  v9 = VMStoreRecordCopyDescription(a3);
  v10 = sub_10001E9B0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(IMAPServiceLibrary *)self account];
    v12 = *&v11[OBJC_IVAR___MFAccount_mambaID];
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
      v14 = [(IMAPServiceLibrary *)self account];
      v15 = *&v14[OBJC_IVAR___MFAccount_mambaID];
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
      [(IMAPServiceLibrary *)self updateMainStoreRecord:a3 dstRecord:RecordWithToken token:v7];
      CFRelease(RecordWithToken);
    }

    else
    {
      [(IMAPServiceLibrary *)self createMainStoreRecord:a3];
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

- (id)mailboxUidForMessage:(id)a3
{
  v4 = a3;
  [v4 libraryID];
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

- (id)getDetailsForMessages:(unint64_t)a3 absoluteBottom:(unint64_t)a4 topOfDesiredRange:(unint64_t)a5 range:(_NSRange *)a6 fromMailbox:(id)a7
{
  v39 = a7;
  v42 = sub_10001FAD0(v39);
  v10 = [(IMAPServiceLibrary *)self account];
  v11 = [v10 accountStore];

  v12 = sub_10001E9B0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(IMAPServiceLibrary *)self account];
    v14 = *&v13[OBJC_IVAR___MFAccount_mambaID];
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
    v48 = a4;
    v49 = 2048;
    v50 = a5;
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

  v17 = sub_10001E900(a4);
  v18 = sub_10001E900(a5);
  v19 = sub_1000931BC(v11, 8 * (v42 == 2), v16, v17, v18);
  v20 = [v19 count];
  if (v20 > a3)
  {
    v21 = [v19 subarrayWithRange:{objc_msgSend(v19, "count") - a3, a3}];
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
    v23 = sub_10009278C(v11, [v19 objectAtIndex:0]);
    v24 = sub_10009278C(v11, [v19 lastObject]);
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
      v30 = [(IMAPServiceLibrary *)self account];
      v31 = *&v30[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v44 = v31;
      v45 = 2080;
      v46 = " ";
      v47 = 2112;
      v48 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sAdd message details for record %@", buf, 0x20u);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    v32 = objc_alloc_init(MFMessageDetails);
    *&v32[OBJC_IVAR___MFMessageDetails_library] = self;
    v33 = sub_100092B0C(v11, v27);
    *&v32[OBJC_IVAR___MFMessageDetails_messageFlags] = v33 & 1 | (2 * ((v33 >> 2) & 1));
    *&v32[OBJC_IVAR___MFMessageDetails_uid] = sub_10009278C(v11, v27);
    *&v32[OBJC_IVAR___MFMessageDetails_libraryID] = sub_100092784(v11, v27);
    *&v32[OBJC_IVAR___MFMessageDetails_mailboxID] = v42;
    *&v32[OBJC_IVAR___MFMessageDetails_dateReceived] = sub_100092820(v11, v27);
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
    v35 = [(IMAPServiceLibrary *)self account];
    v36 = *&v35[OBJC_IVAR___MFAccount_mambaID];
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
    v48 = a4;
    v49 = 2048;
    v50 = a5;
    v51 = 2112;
    v52 = v37;
    v53 = 2112;
    v54 = v11;
    v55 = 2112;
    v56 = v26;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%sGet details <lowUID=%lu, highUID=%lu, mailbox=%@, store=%@> for messages %@", buf, 0x48u);
  }

  return v26;
}

- (id)addMessages:(id)a3 withMailbox:(id)a4 fetchBodies:(BOOL)a5 newMessagesByOldMessage:(id)a6 remoteIDs:(id)a7 setFlags:(unint64_t)a8 clearFlags:(unint64_t)a9 messageFlagsForMessages:(id)a10 copyFiles:(BOOL)a11 addPOPUIDs:(BOOL)a12 dataSectionsByMessage:(id)a13
{
  v119 = a3;
  v103 = a4;
  v114 = a6;
  v117 = a7;
  v107 = a10;
  v102 = a13;
  v17 = [(IMAPServiceLibrary *)self account];
  v123 = [v17 accountStore];

  v18 = [v103 name];
  v108 = [v18 caseInsensitiveCompare:@"INBOX"];
  v124 = self;

  v19 = sub_10001E9B0();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(IMAPServiceLibrary *)self account];
    v21 = *&v20[OBJC_IVAR___MFAccount_mambaID];
    v22 = [v103 name];
    v23 = v22;
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
    *v130 = v119;
    *&v130[8] = 2112;
    *&v130[10] = v22;
    *&v130[18] = 1024;
    *&v130[20] = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sAdd messages %@ to %@ mailbox, destination type is %d", buf, 0x30u);
  }

  v25 = sub_10001E9B0();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(IMAPServiceLibrary *)self account];
    v27 = *&v26[OBJC_IVAR___MFAccount_mambaID];
    v28 = [v103 account];
    v29 = [v103 store];
    v30 = [(IMAPServiceLibrary *)self account];
    v31 = [v30 accountStore];
    *buf = 136316162;
    v126 = v27;
    v127 = 2080;
    v128 = " ";
    v129 = 2112;
    *v130 = v28;
    *&v130[8] = 2112;
    *&v130[10] = v29;
    *&v130[18] = 2112;
    *&v130[20] = v31;
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
  v104 = ~a9;
  while (v32 < [v119 count])
  {
    v121 = [v119 objectAtIndexedSubscript:v32];
    v122 = [v121 messageIDHeader];
    if (v32 >= [v117 count])
    {
      [v121 remoteID];
    }

    else
    {
      [v117 objectAtIndexedSubscript:v32];
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

    v37 = sub_100093224(v123, v122);
    v38 = v37;
    if (v37)
    {
      v39 = VMStoreRecordCopyDescription(v37);
      v40 = sub_10001E9B0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [(IMAPServiceLibrary *)v124 account];
        v42 = *&v41[OBJC_IVAR___MFAccount_mambaID];
        v43 = [(IMAPServiceLibrary *)v124 account];
        v44 = [v43 serviceLabelID];
        *buf = 136316418;
        v126 = v42;
        v127 = 2080;
        v128 = " ";
        v129 = 2112;
        *v130 = v39;
        *&v130[8] = 2112;
        *&v130[10] = v122;
        *&v130[18] = 1024;
        *&v130[20] = v36;
        *&v130[24] = 2112;
        *&v130[26] = v44;
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
          v46 = [(IMAPServiceLibrary *)v124 account];
          v47 = *&v46[OBJC_IVAR___MFAccount_mambaID];
          *buf = 136315650;
          v126 = v47;
          v127 = 2080;
          v128 = " ";
          v129 = 2112;
          *v130 = v122;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%sResetting Detached flag from record with token '%@'", buf, 0x20u);
        }

        sub_100092B48(v123, v38, 64);
      }

      v48 = sub_100092B0C(v123, v38) & 0xFFFFFFE3;
      if (v108)
      {
        v48 |= 8u;
      }

      v49 = sub_10001E9F4((a8 & 1 | (4 * ((a8 >> 1) & 1)) | (a8 >> 27) & 0x20 | v48) & ~(a9 & 1 | (4 * ((a9 >> 1) & 1)) | (a9 >> 27) & 0x20));
      sub_100092B54(v123, v38, v49);
      sub_1000927BC(v123, v38, v36);
      v50 = [(IMAPServiceLibrary *)v124 account];
      v51 = [v50 serviceMDN];
      sub_1000929A8(v123, v38, v51);

LABEL_71:
      v90 = [(IMAPServiceLibrary *)v124 account];
      v91 = [v90 accountStore];
      [v91 save];

      [(IMAPServiceLibrary *)v124 mergeRecord:v38];
      v92 = [(IMAPServiceLibrary *)v124 messageWithAccountStoreRecord:v38];
      v93 = v120;
      if (!v120)
      {
        v93 = objc_opt_new();
      }

      v120 = v93;
      [v93 addObject:v92];
      if (v114)
      {
        [v114 setObject:v92 forKey:v121];
      }

      CFRelease(v38);

      goto LABEL_76;
    }

    if (v32 >= [v107 count])
    {
      v54 = [v121 messageFlags];
    }

    else
    {
      v52 = [v107 objectAtIndexedSubscript:v32];
      v53 = [v52 unsignedIntValue];

      v54 = v53;
    }

    v116 = v105;
    if (((v54 | a8) & v104) != 0)
    {
      v116 = (2 * ((v54 | a8) & v104)) & 4 | (v54 | a8) & v104 & 1 | (((v54 | a8) & v104) >> 27) & 0x20 | v105;
    }

    v55 = [(IMAPServiceLibrary *)v124 account];
    v118 = [v55 serviceICC];

    v115 = [v121 headers];
    v56 = [v115 firstSenderAddress];
    v111 = [v56 pstnAddress];

    v57 = v111;
    if (v111)
    {
      v58 = sub_100025188(v111, v118);
      if (![v58 length])
      {
        v59 = v111;

        v58 = v59;
        v57 = v111;
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
        v63 = [(IMAPServiceLibrary *)v124 account];
        v64 = *&v63[OBJC_IVAR___MFAccount_mambaID];
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
      v66 = [(IMAPServiceLibrary *)v124 account];
      v67 = *&v66[OBJC_IVAR___MFAccount_mambaID];
      v68 = [(IMAPServiceLibrary *)v124 account];
      v69 = [v68 serviceMDN];
      *buf = 136315650;
      v126 = v67;
      v127 = 2080;
      v128 = " ";
      v129 = 2112;
      *v130 = v69;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I %s%sUsing account's service phone number: %@", buf, 0x20u);
    }

    v70 = [(IMAPServiceLibrary *)v124 account];
    v112 = [v70 serviceMDN];

    v71 = [v115 copyAddressListForReplyTo];
    v109 = v71;
    if (!v71)
    {
      v75 = 0;
      v73 = 0;
      goto LABEL_63;
    }

    v72 = [v71 firstObject];
    v73 = [v72 pstnAddress];

    if (v73)
    {
      v74 = sub_100025188(v73, v118);
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
        v79 = [(IMAPServiceLibrary *)v124 account];
        v80 = *&v79[OBJC_IVAR___MFAccount_mambaID];
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
    v81 = [v115 firstHeaderForKey:@"x-applevm-deletion-date"];
    if ([v81 length])
    {
      v82 = [NSDate mf_copyDateInCommonFormatsWithString:v81];
    }

    else
    {
      v82 = 0;
    }

    v83 = [v121 dateSent];
    v84 = sub_10001E9B0();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = [(IMAPServiceLibrary *)v124 account];
      v86 = *&v85[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136317442;
      v126 = v86;
      v127 = 2080;
      v128 = " ";
      v129 = 1024;
      *v130 = v36;
      *&v130[4] = 2112;
      *&v130[6] = v83;
      *&v130[14] = 2112;
      *&v130[16] = v122;
      *&v130[24] = 2112;
      *&v130[26] = v113;
      v131 = 2112;
      v132 = v75;
      v133 = 2112;
      v134 = v82;
      v135 = 1024;
      v136 = v116;
      v137 = 2112;
      v138 = v112;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I %s%s===> Creating new record with remoteUID: %d, sentDate: %@, messageID: %@, from: %@, callback: %@, expirationDate: %@, flags: %d, to: %@", buf, 0x5Eu);
    }

    [v83 timeIntervalSince1970];
    v88 = v87;
    [v82 timeIntervalSince1970];
    LODWORD(v101) = v116;
    v38 = sub_100093004(v123, v36, v88, v122, v113, v75, 0);
    v89 = v110;
    if (!v110)
    {
      v89 = objc_opt_new();
    }

    v110 = v89;
    [v89 addObject:{v38, v101, v112}];

    if (v38)
    {
      goto LABEL_71;
    }

LABEL_76:

    ++v32;
  }

  if (v120)
  {
    if (v103)
    {
      v94 = [[NSArray alloc] initWithObjects:{v103, 0}];
    }

    else
    {
      v94 = 0;
    }

    v95 = [[NSDictionary alloc] initWithObjectsAndKeys:{v120, @"messages", v94, @"mailboxes", 0}];
    v96 = sub_10001E9B0();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      v97 = [(IMAPServiceLibrary *)v124 account];
      v98 = *&v97[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v126 = v98;
      v127 = 2080;
      v128 = " ";
      v129 = 2112;
      *v130 = v95;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting MailMessageStoreMessagesAdded notification %@", buf, 0x20u);
    }

    v99 = +[NSNotificationCenter defaultCenter];
    [v99 postNotificationName:MailMessageStoreMessagesAdded object:v124 userInfo:v95];
  }

  return v120;
}

- (void)updateSelectedMessages:(id)a3 withMailbox:(id)a4
{
  v38 = a3;
  v37 = a4;
  v40 = self;
  v6 = [(IMAPServiceLibrary *)self account];
  v42 = [v6 accountStore];

  v36 = [v37 name];
  v7 = [v36 caseInsensitiveCompare:@"INBOX"];
  v8 = sub_10001E9B0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IMAPServiceLibrary *)v40 account];
    v10 = *&v9[OBJC_IVAR___MFAccount_mambaID];
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
    v53 = v38;
    v54 = 2112;
    v55 = v36;
    v56 = 1024;
    v57 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdate selected messages %@ for mailbox %@, destination type is %d", buf, 0x30u);
  }

  context = objc_autoreleasePoolPush();
  if (v7)
  {
    v12 = sub_1000931D0(v42, 8, 68);
    v13 = sub_1000931DC(v42, 64, 4);
  }

  else
  {
    v12 = sub_1000931D0(v42, 0, 76);
    v13 = sub_1000931DC(v42, 64, 12);
  }

  v14 = v13;
  v39 = v12;
  v15 = [v12 count];
  v16 = sub_10001E9B0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(IMAPServiceLibrary *)v40 account];
    v18 = *&v17[OBJC_IVAR___MFAccount_mambaID];
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
    v19 = [NSMutableSet setWithArray:v38];
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
          v25 = [NSNumber numberWithUnsignedInt:sub_10009278C(v42, v24)];
          if (([v19 containsObject:v25] & 1) == 0)
          {
            v26 = VMStoreRecordCopyDescription(v24);
            if (v26)
            {
              v27 = sub_10001E9B0();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = [(IMAPServiceLibrary *)v40 account];
                v29 = *&v28[OBJC_IVAR___MFAccount_mambaID];
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

            sub_100092B3C(v42, v24, 64);
            v21 = 1;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v20);

      if (v21)
      {
        [v42 save];
        v30 = sub_10001E9B0();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(IMAPServiceLibrary *)v40 account];
          v32 = *&v31[OBJC_IVAR___MFAccount_mambaID];
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
      v33 = [(IMAPServiceLibrary *)v40 account];
      v34 = *&v33[OBJC_IVAR___MFAccount_mambaID];
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

- (BOOL)isMessageContentsLocallyAvailable:(id)a3
{
  v3 = a3;
  [v3 libraryID];
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

- (void)setFlagsForMessages:(id)a3 mask:(unint64_t)a4
{
  v17 = a3;
  v19 = objc_alloc_init(NSMutableDictionary);
  v18 = [v17 allKeys];
  v6 = [v18 count];
  v7 = sub_10001E9B0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(IMAPServiceLibrary *)self account];
    v9 = *&v8[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136316162;
    v21 = v9;
    v22 = 2080;
    v23 = " ";
    v24 = 2112;
    v25 = v17;
    v26 = 2048;
    v27 = a4;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sSet flags %@ with mask %llu for messages %@", buf, 0x34u);
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v11 = [v18 objectAtIndex:i];
      v12 = [v11 messageFlags];
      v13 = [v17 objectForKey:v11];
      v14 = [v13 unsignedIntValue];

      if (a4 == 0x1BFDDF7FFFFLL)
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & a4 | v12 & ~a4;
      }

      v16 = [[NSNumber alloc] initWithUnsignedLongLong:v12];
      [v19 setObject:v16 forKey:v11];
      [(IMAPServiceLibrary *)self _setFlags:v15 forMessage:v11 postAndCommit:0];
    }
  }

  VMStoreSave();
  [(IMAPServiceLibrary *)self postFlagsChangedForMessages:v18 flags:0 oldFlagsByMessage:v19];
}

- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10001E9B0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IMAPServiceLibrary *)self account];
    v10 = *&v9[OBJC_IVAR___MFAccount_mambaID];
    v12 = 136315906;
    v13 = v10;
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s==== Set flags from dictionary %@ for messages %@", &v12, 0x2Au);
  }

  return v7;
}

- (void)_setFlags:(unint64_t)a3 forMessage:(id)a4 postAndCommit:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v23 = v8;
  if (v5)
  {
    v9 = [v8 messageFlags];
  }

  else
  {
    v9 = 0;
  }

  [v23 setMessageFlagsWithoutCommitting:a3];
  v10 = [v23 messageIDHeader];
  v11 = [v23 messageStore];
  v12 = [v11 mailboxUid];
  if ([v12 type] == 7)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  RecordWithTokenInMailbox = VMStoreCopyFirstRecordWithTokenInMailbox(v10, v13);
  if (RecordWithTokenInMailbox)
  {
    v15 = [v23 remoteID];
    v16 = v15;
    if (v15)
    {
      v17 = sub_10001FF88(v15, 0);
      if (v17 == VMStoreRecordGetRemoteUID(RecordWithTokenInMailbox))
      {
        v18 = [v23 hasTemporaryUid] ? 32 : 0;
        Flags = VMStoreRecordGetFlags(RecordWithTokenInMailbox);
        v19 = (VMStoreRecordGetFlags(RecordWithTokenInMailbox) & 0x40) != 0 ? a3 & 1 | (4 * ((a3 >> 1) & 1)) & 0xFFFFFFE1 | (a3 >> 27) & 0x20 | v18 & 0xFFFFFFE1 : a3 & 1 | (4 * ((a3 >> 1) & 1)) | (a3 >> 27) & 0x20 | v18;
        v20 = [(IMAPServiceLibrary *)self account];
        v21 = [v20 serviceLabelID];
        VMStoreRecordSetFlagsFromServer(v21, RecordWithTokenInMailbox, v19 | Flags & 0xFFFFFFDA, 1);

        if (v5)
        {
          VMStoreSave();
        }
      }
    }

    CFRelease(RecordWithTokenInMailbox);
  }

  if (v5)
  {
    [(IMAPServiceLibrary *)self postOldFlags:v9 newFlags:a3 forMessage:v23];
  }
}

- (IMAPServiceAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end
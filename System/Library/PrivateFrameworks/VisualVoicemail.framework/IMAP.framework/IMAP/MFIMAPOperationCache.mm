@interface MFIMAPOperationCache
- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command;
- (BOOL)hasOperationsForMailbox:(id)mailbox;
- (MFIMAPOperationCache)initWithIMAPAccount:(id)account;
- (unsigned)firstUidForCopyingMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox;
- (unsigned)uidForAppendingMessageData:(id)data withFlags:(id)flags andInternalDate:(id)date toMailbox:(id)mailbox;
- (void)_performAppendOperation:(id)operation withContext:(id *)context;
- (void)_performCopyOperation:(id)operation withContext:(id *)context;
- (void)_performCreateOperation:(id)operation withContext:(id *)context;
- (void)_performDeleteOperation:(id)operation withContext:(id *)context;
- (void)_performStoreOperation:(id)operation withContext:(id *)context;
- (void)_queueDeferredOperation:(id)operation;
- (void)createMailbox:(id)mailbox;
- (void)dealloc;
- (void)deleteMailbox:(id)mailbox;
- (void)performDeferredOperationsWithConnection:(id)connection;
- (void)saveChanges;
- (void)setFlags:(id)flags andClearFlags:(id)clearFlags forMessages:(id)messages;
@end

@implementation MFIMAPOperationCache

- (MFIMAPOperationCache)initWithIMAPAccount:(id)account
{
  accountCopy = account;
  v24.receiver = self;
  v24.super_class = MFIMAPOperationCache;
  v6 = [(MFIMAPOperationCache *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v8 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:10];
    ops = v7->_ops;
    v7->_ops = v8;

    v10 = v7;
    offlineCacheDirectoryPath = [(IMAP_Account *)v7->_account offlineCacheDirectoryPath];
    v12 = [offlineCacheDirectoryPath stringByAppendingPathComponent:@"operations"];

    [(MFIMAPOperationCache *)v10 mf_lock];
    if (v12)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithContentsOfFile:v12 options:1 error:0];
      if (v13)
      {
        v14 = v13;
        v25 = 0;
        v15 = [v13 length];
        if (v15 >= 4)
        {
          v16 = v15;
          do
          {
            bytes = [v14 bytes];
            if (*(bytes + v25) != 0x7FFF || *(bytes + v25 + 2) != 255)
            {
              break;
            }

            v25 += 3;
            v19 = [MFIMAPOperation deserializedCopyFromData:v14 cursor:&v25];
            v20 = v19;
            if (v19)
            {
              lastTemporaryUid = [v19 lastTemporaryUid];
              [(NSMutableArray *)v7->_ops addObject:v20];
              if (lastTemporaryUid)
              {
                v10->_lastUid = lastTemporaryUid;
              }
            }

            else
            {
              v25 = v16;
            }
          }

          while (v25 + 3 < v16);
        }

        v10->_lastSave = [(NSMutableArray *)v7->_ops count];
        v10->_opsPending = [(NSMutableArray *)v7->_ops count]!= 0;
      }
    }

    [(MFIMAPOperationCache *)v10 mf_unlock];

    v22 = v10;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPOperationCache;
  [(MFIMAPOperationCache *)&v2 dealloc];
}

- (void)_queueDeferredOperation:(id)operation
{
  v38 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (operationCopy)
  {
    v5 = operationCopy;
    [(MFIMAPOperationCache *)self mf_lock];
    if (_shouldFlattenCacheOperations != 1 || [(MFIMAPOperation *)v5 operationType]!= 3)
    {
      goto LABEL_33;
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    flagsToSet = [(MFIMAPOperation *)v5 flagsToSet];
    v8 = IMAPMessageFlagsFromArray(flagsToSet);

    if ((v8 & 2) != 0)
    {
      if ([(MFIMAPOperation *)v5 usesRealUids])
      {
        uids = [(MFIMAPOperation *)v5 uids];
        [v6 addObjectsFromArray:uids];
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        uids = [(MFIMAPOperation *)v5 uids];
        v10 = [uids countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v34;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v34 != v12)
              {
                objc_enumerationMutation(uids);
              }

              v14 = +[MFLibraryIMAPStore copyRemoteIDForTemporaryUid:](MFLibraryIMAPStore, "copyRemoteIDForTemporaryUid:", [*(*(&v33 + 1) + 8 * i) intValue]);
              [v6 addObject:v14];
            }

            v11 = [uids countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v11);
        }
      }
    }

    if ([v6 count])
    {
      mailboxName = [(MFIMAPOperation *)v5 mailboxName];
      v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v17 = [(NSMutableArray *)self->_ops count];
      if (v17 - 1 >= 0)
      {
        v18 = v17;
        while (1)
        {
          v19 = [(NSMutableArray *)self->_ops objectAtIndex:--v18];
          mailboxName2 = [v19 mailboxName];
          if (![mailboxName2 isEqualToString:mailboxName])
          {
            goto LABEL_26;
          }

          operationType = [v19 operationType];

          if (operationType == 4)
          {
            break;
          }

LABEL_27:

          if (v18 <= 0)
          {
            goto LABEL_28;
          }
        }

        v22 = [v19 uid];
        if ([(MFIMAPOperation *)v5 usesRealUids])
        {
          v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u", v22];
        }

        else
        {
          v23 = [MFLibraryIMAPStore copyRemoteIDForTemporaryUid:v22];
        }

        mailboxName2 = v23;
        if (v23 && [v6 containsObject:v23])
        {
          [(NSMutableArray *)self->_ops removeObjectAtIndex:v18];
          self->_opsPending = [(NSMutableArray *)self->_ops count]!= 0;
          [v16 addObject:mailboxName2];
        }

LABEL_26:

        goto LABEL_27;
      }

LABEL_28:
      [v6 minusSet:v16];
      if ([v6 count])
      {
        usesRealUids = [(MFIMAPOperation *)v5 usesRealUids];
        v24 = [MFIMAPOperation alloc];
        flagsToSet2 = [(MFIMAPOperation *)v5 flagsToSet];
        flagsToClear = [(MFIMAPOperation *)v5 flagsToClear];
        allObjects = [v6 allObjects];
        mailboxName3 = [(MFIMAPOperation *)v5 mailboxName];
        v29 = [(MFIMAPOperation *)v24 initWithFlagsToSet:flagsToSet2 flagsToClear:flagsToClear forUids:allObjects inMailbox:mailboxName3];

        [(MFIMAPOperation *)v29 setUsesRealUids:usesRealUids];
        v5 = v29;
      }

      else
      {

        v5 = 0;
      }
    }

    if (v5)
    {
LABEL_33:
      [(NSMutableArray *)self->_ops addObject:v5];
      self->_opsPending = 1;
    }

    [(MFIMAPOperationCache *)self mf_unlock];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"IMAPAccountOfflineOperationQueued" object:self->_account userInfo:0];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)createMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = [objc_allocWithZone(MFIMAPOperation) initWithMailboxToCreate:mailboxCopy];

  [(MFIMAPOperationCache *)self _queueDeferredOperation:v5];
}

- (void)deleteMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = [objc_allocWithZone(MFIMAPOperation) initWithMailboxToDelete:mailboxCopy];

  [(MFIMAPOperationCache *)self _queueDeferredOperation:v5];
}

- (void)setFlags:(id)flags andClearFlags:(id)clearFlags forMessages:(id)messages
{
  v27 = *MEMORY[0x277D85DE8];
  flagsCopy = flags;
  clearFlagsCopy = clearFlags;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = messages;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    mailboxName = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([v14 hasTemporaryUid])
        {
          if (v9)
          {
            array = v9;
          }

          else
          {
            array = [MEMORY[0x277CBEB18] array];
            v9 = array;
          }
        }

        else if (v10)
        {
          array = v10;
        }

        else
        {
          array = [MEMORY[0x277CBEB18] array];
          v10 = array;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", objc_msgSend(v14, "uid")];
        [array addObject:v16];

        if (!mailboxName)
        {
          mailboxName = [v14 mailboxName];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    mailboxName = 0;
  }

  _setFlags(self, mailboxName, flagsCopy, clearFlagsCopy, v10, v9);

  v17 = *MEMORY[0x277D85DE8];
}

- (unsigned)firstUidForCopyingMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox
{
  v64 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  toMailboxCopy = toMailbox;
  lastKnownCapabilities = [(IMAP_Account *)self->_account lastKnownCapabilities];
  LOBYTE(mailbox) = [lastKnownCapabilities containsObject:@"UIDPLUS"];

  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  offlineCacheDirectoryPath = [(IMAP_Account *)self->_account offlineCacheDirectoryPath];
  v11 = 0;
  if (mailbox)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    v11 = CFArrayCreateMutable(0, 0, 0);
  }

  v53 = Mutable;
  v51 = v11;
  [(MFIMAPOperationCache *)self mf_lock];
  lastUid = self->_lastUid;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = messagesCopy;
  v52 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  v14 = 0;
  v15 = 0;
  if (v52)
  {
    firstTemporaryUid = 0;
    v50 = *v60;
    v48 = array;
    v49 = *MEMORY[0x277D06FE0];
    do
    {
      v16 = 0;
      v17 = v14;
      v18 = v15;
      do
      {
        if (*v60 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v59 + 1) + 8 * v16);
        messageStore = [v19 messageStore];
        hasTemporaryUid = [v19 hasTemporaryUid];
        v57 = messageStore;
        if ([(IMAP_Account *)selfCopy->_account requiresDataForOfflineTransfersFromStore:messageStore])
        {
          v58 = 0;
          v22 = [messageStore fullBodyDataForMessage:v19 andHeaderDataIfReadilyAvailable:&v58 isComplete:0 downloadIfNecessary:0 didDownload:0];
          v23 = v58;
          if (v22)
          {
            v24 = v23 == 0;
          }

          else
          {
            v24 = 0;
          }

          if (v24)
          {
            v23 = [messageStore headerDataForMessage:v19 downloadIfNecessary:0];
          }

          v25 = lastUid + 1;
          if (v22)
          {
            v26 = v23 == 0;
          }

          else
          {
            v26 = 1;
          }

          v56 = v23;
          if (!v26)
          {
            v27 = [v23 mutableCopyWithZone:0];
            [v27 appendData:v22];
            [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v25];
            v29 = v28 = hasTemporaryUid;
            v30 = [offlineCacheDirectoryPath stringByAppendingPathComponent:v29];
            [v27 writeToFile:v30 options:805306369 error:0];

            hasTemporaryUid = v28;
            array = v48;
          }
        }

        else
        {
          v56 = 0;
          v22 = 0;
          LODWORD(v25) = lastUid + 1;
        }

        if ([array count] && (v18 != mailboxCopy || ((v17 ^ hasTemporaryUid) & 1) != 0))
        {
          v33 = v17 & 1;
          v32 = v51;
          v34 = _makeCopyOperation(selfCopy, array, v18, toMailboxCopy, v33, v53, v51);
          v35 = v34;
          v14 = hasTemporaryUid;
          if (v34 && !firstTemporaryUid)
          {
            firstTemporaryUid = [v34 firstTemporaryUid];
          }

          v31 = v25;

          array = v48;
        }

        else
        {
          v14 = hasTemporaryUid;
          v31 = v25;
          v32 = v51;
        }

        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", objc_msgSend(v19, "uid")];
        [array addObject:v36];

        if (v53)
        {
          headers = [v19 headers];
          CFArrayAppendValue(v53, [headers firstHeaderForKey:v49]);
        }

        if (v32)
        {
          CFArrayAppendValue(v32, [v19 dateReceived]);
        }

        v15 = mailboxCopy;

        ++v16;
        v17 = v14;
        v18 = v15;
        lastUid = v31;
      }

      while (v52 != v16);
      v52 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v52);
  }

  else
  {
    firstTemporaryUid = 0;
  }

  if ([array count])
  {
    v38 = v53;
    v39 = v51;
    v40 = _makeCopyOperation(selfCopy, array, v15, toMailboxCopy, v14, v53, v51);
    v41 = v40;
    if (v40 && !firstTemporaryUid)
    {
      firstTemporaryUid = [v40 firstTemporaryUid];
    }
  }

  else
  {
    v39 = v51;
    v38 = v53;
  }

  [(MFIMAPOperationCache *)selfCopy mf_unlock];
  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v42 = *MEMORY[0x277D85DE8];
  return firstTemporaryUid;
}

- (unsigned)uidForAppendingMessageData:(id)data withFlags:(id)flags andInternalDate:(id)date toMailbox:(id)mailbox
{
  dataCopy = data;
  flagsCopy = flags;
  dateCopy = date;
  mailboxCopy = mailbox;
  [(MFIMAPOperationCache *)self mf_lock];
  v14 = MEMORY[0x277CCACA8];
  v15 = self->_lastUid + 1;
  self->_lastUid = v15;
  v16 = [v14 stringWithFormat:@"%u", v15];
  v17 = _writeDataToPath(self, dataCopy, v16, 1073741825);

  if (v17)
  {
    v18 = [objc_allocWithZone(MFIMAPOperation) initWithAppendedUid:self->_lastUid approximateSize:(objc_msgSend(dataCopy flags:"length") + 1023) >> 10 internalDate:flagsCopy mailbox:{dateCopy, mailboxCopy}];
    if (v18)
    {
      [(MFIMAPOperationCache *)self _queueDeferredOperation:v18];
      lastUid = self->_lastUid;
    }

    else
    {
      lastUid = 0;
    }
  }

  else
  {
    lastUid = 0;
  }

  [(MFIMAPOperationCache *)self mf_unlock];

  return lastUid;
}

- (void)saveChanges
{
  [(MFIMAPOperationCache *)self mf_lock];
  self->_lastSave = 0;
  _saveChanges(self);

  [(MFIMAPOperationCache *)self mf_unlock];
}

- (BOOL)hasOperationsForMailbox:(id)mailbox
{
  v18 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  [(MFIMAPOperationCache *)self mf_lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_ops;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        mailboxName = [*(*(&v13 + 1) + 8 * i) mailboxName];
        v10 = [mailboxName isEqualToString:mailboxCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(MFIMAPOperationCache *)self mf_unlock];
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command
{
  responseCopy = response;
  if ([responseCopy responseType] == 2 && objc_msgSend(responseCopy, "responseCode") == 10)
  {
    responseInfo = [responseCopy responseInfo];
    self->_lastUidValidity = [responseInfo unsignedIntValue];
  }

  v9 = command->var0 == 24;

  return v9;
}

- (void)_performCreateOperation:(id)operation withContext:(id *)context
{
  operationCopy = operation;
  var1 = context->var1;
  mailboxName = [operationCopy mailboxName];
  LOBYTE(var1) = [var1 createMailbox:mailboxName];

  if ((var1 & 1) == 0)
  {
    v8 = vm_imap_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPOperationCache _performCreateOperation:operationCopy withContext:&context->var0];
    }
  }
}

- (void)_performDeleteOperation:(id)operation withContext:(id *)context
{
  operationCopy = operation;
  var1 = context->var1;
  mailboxName = [operationCopy mailboxName];
  LOBYTE(var1) = [var1 deleteMailbox:mailboxName];

  if ((var1 & 1) == 0)
  {
    v8 = vm_imap_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPOperationCache _performCreateOperation:operationCopy withContext:&context->var0];
    }
  }
}

- (void)_performStoreOperation:(id)operation withContext:(id *)context
{
  operationCopy = operation;
  mailboxName = [operationCopy mailboxName];
  flagsToSet = [operationCopy flagsToSet];
  flagsToClear = [operationCopy flagsToClear];
  uids = [operationCopy uids];
  if (uids && ([operationCopy usesRealUids] & 1) == 0)
  {
    v10 = _convertTemporaryUids(uids, context->var2);

    uids = v10;
  }

  if ([uids count] && mailboxName && (objc_msgSend(flagsToSet, "count") || objc_msgSend(flagsToClear, "count")) && _selectMailboxIfNeeded(self, context, mailboxName))
  {
    if ([flagsToSet count])
    {
      [context->var1 storeFlags:flagsToSet state:1 forUids:uids];
    }

    if ([flagsToClear count])
    {
      [context->var1 storeFlags:flagsToClear state:0 forUids:uids];
    }
  }
}

- (void)_performAppendOperation:(id)operation withContext:(id *)context
{
  v39 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v7 = [operationCopy uid];
  v8 = [(IMAP_Account *)self->_account _dataForTemporaryUid:v7];
  v9 = v8;
  if (v7 && v8)
  {
    mailboxName = [operationCopy mailboxName];
    internalDate = [operationCopy internalDate];
    var1 = context->var1;
    flags = [operationCopy flags];
    internalDate2 = [operationCopy internalDate];
    v37 = 0;
    LOBYTE(var1) = [var1 appendData:v9 toMailboxNamed:mailboxName flags:flags dateReceived:internalDate2 newMessageInfo:&v37];
    v14 = v37;

    if (var1)
    {
      v34 = v14;
      v15 = [v14 objectForKey:@"Source UIDS"];
      unsignedIntValue = [v15 unsignedIntValue];

      v17 = v9;
      [v17 mf_rangeOfRFC822HeaderData];
      *buf = 0uLL;
      if (v18 && (v19 = *MEMORY[0x277D06FE0], ECGetNextHeaderFromDataInRange()))
      {
        [v17 bytes];
        v20 = _MFCreateStringFromHeaderBytes();
      }

      else
      {
        v20 = 0;
      }

      if (unsignedIntValue || (unsignedIntValue = _searchForNewUid(self, context, v20, mailboxName)) != 0)
      {
        key = mailboxName;
        v22 = _getStoreForMailboxName(self, &context->var3, mailboxName);
        if (v22)
        {
          var4 = context->var4;
          v33 = unsignedIntValue;
          if (var4)
          {
            Value = CFDictionaryGetValue(var4, mailboxName);
          }

          else
          {
            Value = 0;
          }

          mailboxUid = [v22 mailboxUid];
          v25 = [mailboxUid userInfoObjectForKey:@"UIDVALIDITY"];
          intValue = [v25 intValue];

          unsignedIntValue = v33;
          if (!Value || !intValue || Value == intValue)
          {
            [v22 setUid:v33 forMessageWithTemporaryUid:v7];
          }
        }

        CFDictionarySetValue(context->var2, v7, unsignedIntValue);

        mailboxName = key;
      }

      offlineCacheDirectoryPath = [(IMAP_Account *)self->_account offlineCacheDirectoryPath];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v7];
      v29 = [offlineCacheDirectoryPath stringByAppendingPathComponent:v28];

      v30 = MFRemoveItemAtPath();
      v21 = internalDate;
      v14 = v34;
    }

    else
    {
      v20 = vm_imap_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = mailboxName;
        _os_log_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEFAULT, "**** Failed to append to %@", buf, 0xCu);
      }

      v21 = internalDate;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_performCopyOperation:(id)operation withContext:(id *)context
{
  v113 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  mailboxName = [operationCopy mailboxName];
  destinationMailbox = [operationCopy destinationMailbox];
  if (mailboxName && _selectMailboxIfNeeded(self, context, mailboxName))
  {
    sourceUids = [operationCopy sourceUids];
    if (([operationCopy usesRealUids] & 1) == 0)
    {
      v10 = _convertTemporaryUids(sourceUids, context->var2);

      sourceUids = v10;
    }

    if (!sourceUids)
    {
      goto LABEL_50;
    }

    var1 = context->var1;
    v111 = 0;
    v12 = [var1 copyUids:sourceUids toMailboxNamed:destinationMailbox newMessageInfo:&v111];
    v13 = v111;
    v14 = v13;
    if ((v12 & 1) == 0)
    {
      v34 = vm_imap_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [MFIMAPOperationCache _performCopyOperation:destinationMailbox withContext:v34];
      }

      goto LABEL_49;
    }

    v15 = [v13 objectForKey:@"Source UIDS"];
    v16 = [v14 objectForKey:@"Destination UIDS"];
    v69 = v14;
    key = destinationMailbox;
    v67 = sourceUids;
    v68 = mailboxName;
    v65 = v16;
    v66 = v15;
    if (v15)
    {
      v17 = v16;
      if (v16)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        *buffer = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        *v80 = 0u;
        v18 = [(__CFString *)v15 length];
        v101 = v15;
        v104 = 0;
        v105 = v18;
        CharactersPtr = CFStringGetCharactersPtr(v15);
        CStringPtr = 0;
        v102 = CharactersPtr;
        if (!CharactersPtr)
        {
          CStringPtr = CFStringGetCStringPtr(v15, 0x600u);
        }

        selfCopy = self;
        v103 = CStringPtr;
        v106 = 0;
        v108 = 0;
        v107 = 0;
        v109 = v18;
        v110 = 0;
        v22 = [(__CFString *)v17 length];
        *&v88 = v17;
        *(&v89 + 1) = 0;
        *&v90 = v22;
        v23 = CFStringGetCharactersPtr(v17);
        v24 = 0;
        *(&v88 + 1) = v23;
        if (!v23)
        {
          v24 = CFStringGetCStringPtr(v17, 0x600u);
        }

        *&v89 = v24;
        *(&v90 + 1) = 0;
        v91 = 0uLL;
        v92 = v22;
        destinationUids = [operationCopy destinationUids];
        v25 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:destinationUids forKeys:sourceUids];
        v26 = IMAPNextUidFromSet(buffer);
        if (v26)
        {
          v27 = v26;
          do
          {
            v28 = IMAPNextUidFromSet(v80);
            if (!v28)
            {
              break;
            }

            v29 = v28;
            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v27];
            v31 = [v25 objectForKey:v30];

            intValue = [v31 intValue];
            v33 = _getStoreForMailboxName(selfCopy, &context->var3, key);
            [v33 setUid:v29 forMessageWithTemporaryUid:intValue];

            CFDictionarySetValue(context->var2, intValue, v29);
            v27 = IMAPNextUidFromSet(buffer);
          }

          while (v27);
        }

        self = selfCopy;
        goto LABEL_41;
      }
    }

    destinationUids2 = [operationCopy destinationUids];
    v36 = [sourceUids count];
    v73 = destinationUids2;
    v37 = [destinationUids2 count];
    if (v36 >= v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = v36;
    }

    v71 = v38;
    if (!v38)
    {
LABEL_40:

LABEL_41:
      offlineCacheDirectoryPath = [(IMAP_Account *)self->_account offlineCacheDirectoryPath];
      destinationUids3 = [operationCopy destinationUids];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v54 = [destinationUids3 countByEnumeratingWithState:&v74 objects:v112 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v75;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v75 != v56)
            {
              objc_enumerationMutation(destinationUids3);
            }

            intValue2 = [*(*(&v74 + 1) + 8 * i) intValue];
            v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", intValue2];
            v60 = [offlineCacheDirectoryPath stringByAppendingPathComponent:v59];

            v61 = MFRemoveItemAtPath();
          }

          v55 = [destinationUids3 countByEnumeratingWithState:&v74 objects:v112 count:16];
        }

        while (v55);
      }

      sourceUids = v67;
      mailboxName = v68;
      v14 = v69;
      destinationMailbox = key;
      v34 = v66;
LABEL_49:

LABEL_50:
      goto LABEL_51;
    }

    v39 = 0;
    selfCopy2 = self;
    contextCopy = context;
    while (1)
    {
      v40 = [v73 objectAtIndex:v39];
      intValue3 = [v40 intValue];

      if (intValue3)
      {
        v78 = 0;
        v79 = 0;
        v42 = [operationCopy getMessageId:&v79 andInternalDate:&v78 forDestinationUid:intValue3];
        v43 = v79;
        v44 = v78;
        if ((v42 & 1) == 0)
        {

          goto LABEL_38;
        }

        v45 = _searchForNewUid(self, context, v43, destinationMailbox);

        if (v45)
        {
          v44 = _getStoreForMailboxName(self, &context->var3, destinationMailbox);
          if (v44)
          {
            v46 = [v69 objectForKey:@"UIDVALIDITY"];
            Value = [v46 unsignedIntValue];

            mailboxUid = [v44 mailboxUid];
            v49 = [mailboxUid userInfoObjectForKey:@"UIDVALIDITY"];
            intValue4 = [v49 intValue];

            destinationMailbox = key;
            if (Value)
            {
LABEL_32:
              if (!Value || !intValue4 || Value == intValue4)
              {
                goto LABEL_35;
              }
            }

            else
            {
              var4 = contextCopy->var4;
              if (var4)
              {
                Value = CFDictionaryGetValue(var4, key);
                goto LABEL_32;
              }

LABEL_35:
              [v44 setUid:v45 forMessageWithTemporaryUid:intValue3];
            }

            context = contextCopy;
            CFDictionarySetValue(contextCopy->var2, intValue3, v45);
            self = selfCopy2;
          }

LABEL_38:
        }
      }

      if (v71 == ++v39)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_51:

  v62 = *MEMORY[0x277D85DE8];
}

- (void)performDeferredOperationsWithConnection:(id)connection
{
  v42 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v29 = +[MFActivityMonitor currentMonitor];
  v5 = connectionCopy;
  v30 = v5;
  cf = CFDictionaryCreateMutable(0, 0, 0, 0);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  [v5 setDelegate:self];
  taskName = [v29 taskName];

  [v29 setTaskName:@"Performing pended operations"];
  [(MFIMAPOperationCache *)self mf_lock];
  self->_opsPending = 0;
  v6 = [(NSMutableArray *)self->_ops count];
  v7 = vm_imap_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v39 = v6;
    v40 = 2112;
    v41 = v5;
    _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "replaying %lu operations with connection %@", buf, 0x16u);
  }

  HIDWORD(v34) = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_ops;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        approximateSize = [*(*(&v25 + 1) + 8 * i) approximateSize];
        HIDWORD(v34) += approximateSize;
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v9);
  }

  if (HIDWORD(v34))
  {
    LODWORD(v35) = [v29 acquireExclusiveAccessKey];
  }

  LODWORD(v34) = 0;
  v14 = 0;
  if (v6)
  {
    *&v13 = 138412290;
    v24 = v13;
    while (1)
    {
      v15 = [(NSMutableArray *)self->_ops objectAtIndex:v14, v24, v25];
      v16 = objc_autoreleasePoolPush();
      v17 = vm_imap_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v24;
        v39 = v15;
        _os_log_impl(&dword_2720B1000, v17, OS_LOG_TYPE_DEFAULT, "replaying %@", buf, 0xCu);
      }

      operationType = [v15 operationType];
      if (operationType <= 2)
      {
        if (operationType == 1)
        {
          [(MFIMAPOperationCache *)self _performCreateOperation:v15 withContext:&v29];
        }

        else if (operationType == 2)
        {
          [(MFIMAPOperationCache *)self _performDeleteOperation:v15 withContext:&v29];
        }
      }

      else
      {
        switch(operationType)
        {
          case 3:
            [(MFIMAPOperationCache *)self _performStoreOperation:v15 withContext:&v29];
            break;
          case 4:
            [(MFIMAPOperationCache *)self _performAppendOperation:v15 withContext:&v29];
            break;
          case 5:
            [(MFIMAPOperationCache *)self _performCopyOperation:v15 withContext:&v29];
            break;
        }
      }

      approximateSize2 = [v15 approximateSize];
      LODWORD(v34) = v34 + approximateSize2;
      objc_autoreleasePoolPop(v16);
      if (([v30 isValid] & 1) == 0)
      {
        break;
      }

      if (v6 == ++v14)
      {
        v14 = v6;
        goto LABEL_36;
      }
    }

    failureCount = [v15 failureCount];
    if (failureCount < 2)
    {
      [v15 setFailureCount:failureCount + 1];
    }

    else
    {
      v21 = vm_imap_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v24;
        v39 = v15;
        _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "removing failed operation from offline cache: %@", buf, 0xCu);
      }

      ++v14;
    }
  }

LABEL_36:
  selectedMailbox = [v30 selectedMailbox];

  if (selectedMailbox)
  {
    [v30 unselect];
  }

  [v30 setDelegate:0];
  if (v14)
  {
    [(NSMutableArray *)self->_ops removeObjectsInRange:0, v14];
  }

  self->_opsPending = [(NSMutableArray *)self->_ops count]!= 0;
  self->_lastSave = 0;
  _saveChanges(self);
  [(MFIMAPOperationCache *)self mf_unlock];
  if (v35)
  {
    [v29 relinquishExclusiveAccessKey:?];
  }

  [v29 setTaskName:taskName];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_performCreateOperation:(void *)a1 withContext:(id *)a2 .cold.1(void *a1, id *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a1 mailboxName];
  v4 = [*a2 error];
  v5 = [v4 vf_publicDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2720B1000, v6, v7, "*** Error while creating %@: %{public}@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_performCopyOperation:(uint64_t)a1 withContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "*** Error while copying messages to %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
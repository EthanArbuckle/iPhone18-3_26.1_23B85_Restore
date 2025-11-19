@interface MFIMAPOperationCache
- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5;
- (BOOL)hasOperationsForMailbox:(id)a3;
- (MFIMAPOperationCache)initWithIMAPAccount:(id)a3;
- (unsigned)firstUidForCopyingMessages:(id)a3 fromMailbox:(id)a4 toMailbox:(id)a5;
- (unsigned)uidForAppendingMessageData:(id)a3 withFlags:(id)a4 andInternalDate:(id)a5 toMailbox:(id)a6;
- (void)_performAppendOperation:(id)a3 withContext:(id *)a4;
- (void)_performCopyOperation:(id)a3 withContext:(id *)a4;
- (void)_performCreateOperation:(id)a3 withContext:(id *)a4;
- (void)_performDeleteOperation:(id)a3 withContext:(id *)a4;
- (void)_performStoreOperation:(id)a3 withContext:(id *)a4;
- (void)_queueDeferredOperation:(id)a3;
- (void)createMailbox:(id)a3;
- (void)dealloc;
- (void)deleteMailbox:(id)a3;
- (void)performDeferredOperationsWithConnection:(id)a3;
- (void)saveChanges;
- (void)setFlags:(id)a3 andClearFlags:(id)a4 forMessages:(id)a5;
@end

@implementation MFIMAPOperationCache

- (MFIMAPOperationCache)initWithIMAPAccount:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = MFIMAPOperationCache;
  v6 = [(MFIMAPOperationCache *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:10];
    ops = v7->_ops;
    v7->_ops = v8;

    v10 = v7;
    v11 = [(IMAP_Account *)v7->_account offlineCacheDirectoryPath];
    v12 = [v11 stringByAppendingPathComponent:@"operations"];

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
            v17 = [v14 bytes];
            if (*(v17 + v25) != 0x7FFF || *(v17 + v25 + 2) != 255)
            {
              break;
            }

            v25 += 3;
            v19 = [MFIMAPOperation deserializedCopyFromData:v14 cursor:&v25];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 lastTemporaryUid];
              [(NSMutableArray *)v7->_ops addObject:v20];
              if (v21)
              {
                v10->_lastUid = v21;
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

- (void)_queueDeferredOperation:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    [(MFIMAPOperationCache *)self mf_lock];
    if (_shouldFlattenCacheOperations != 1 || [(MFIMAPOperation *)v5 operationType]!= 3)
    {
      goto LABEL_33;
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = [(MFIMAPOperation *)v5 flagsToSet];
    v8 = IMAPMessageFlagsFromArray(v7);

    if ((v8 & 2) != 0)
    {
      if ([(MFIMAPOperation *)v5 usesRealUids])
      {
        v9 = [(MFIMAPOperation *)v5 uids];
        [v6 addObjectsFromArray:v9];
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v9 = [(MFIMAPOperation *)v5 uids];
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = +[MFLibraryIMAPStore copyRemoteIDForTemporaryUid:](MFLibraryIMAPStore, "copyRemoteIDForTemporaryUid:", [*(*(&v33 + 1) + 8 * i) intValue]);
              [v6 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v11);
        }
      }
    }

    if ([v6 count])
    {
      v15 = [(MFIMAPOperation *)v5 mailboxName];
      v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v17 = [(NSMutableArray *)self->_ops count];
      if (v17 - 1 >= 0)
      {
        v18 = v17;
        while (1)
        {
          v19 = [(NSMutableArray *)self->_ops objectAtIndex:--v18];
          v20 = [v19 mailboxName];
          if (![v20 isEqualToString:v15])
          {
            goto LABEL_26;
          }

          v21 = [v19 operationType];

          if (v21 == 4)
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

        v20 = v23;
        if (v23 && [v6 containsObject:v23])
        {
          [(NSMutableArray *)self->_ops removeObjectAtIndex:v18];
          self->_opsPending = [(NSMutableArray *)self->_ops count]!= 0;
          [v16 addObject:v20];
        }

LABEL_26:

        goto LABEL_27;
      }

LABEL_28:
      [v6 minusSet:v16];
      if ([v6 count])
      {
        v32 = [(MFIMAPOperation *)v5 usesRealUids];
        v24 = [MFIMAPOperation alloc];
        v25 = [(MFIMAPOperation *)v5 flagsToSet];
        v26 = [(MFIMAPOperation *)v5 flagsToClear];
        v27 = [v6 allObjects];
        v28 = [(MFIMAPOperation *)v5 mailboxName];
        v29 = [(MFIMAPOperation *)v24 initWithFlagsToSet:v25 flagsToClear:v26 forUids:v27 inMailbox:v28];

        [(MFIMAPOperation *)v29 setUsesRealUids:v32];
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
    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 postNotificationName:@"IMAPAccountOfflineOperationQueued" object:self->_account userInfo:0];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)createMailbox:(id)a3
{
  v4 = a3;
  v5 = [objc_allocWithZone(MFIMAPOperation) initWithMailboxToCreate:v4];

  [(MFIMAPOperationCache *)self _queueDeferredOperation:v5];
}

- (void)deleteMailbox:(id)a3
{
  v4 = a3;
  v5 = [objc_allocWithZone(MFIMAPOperation) initWithMailboxToDelete:v4];

  [(MFIMAPOperationCache *)self _queueDeferredOperation:v5];
}

- (void)setFlags:(id)a3 andClearFlags:(id)a4 forMessages:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v19 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a5;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
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
            v15 = v9;
          }

          else
          {
            v15 = [MEMORY[0x277CBEB18] array];
            v9 = v15;
          }
        }

        else if (v10)
        {
          v15 = v10;
        }

        else
        {
          v15 = [MEMORY[0x277CBEB18] array];
          v10 = v15;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", objc_msgSend(v14, "uid")];
        [v15 addObject:v16];

        if (!v11)
        {
          v11 = [v14 mailboxName];
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
    v11 = 0;
  }

  _setFlags(self, v11, v20, v19, v10, v9);

  v17 = *MEMORY[0x277D85DE8];
}

- (unsigned)firstUidForCopyingMessages:(id)a3 fromMailbox:(id)a4 toMailbox:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v55 = a4;
  v45 = a5;
  v9 = [(IMAP_Account *)self->_account lastKnownCapabilities];
  LOBYTE(a4) = [v9 containsObject:@"UIDPLUS"];

  v10 = [MEMORY[0x277CBEB18] array];
  v54 = self;
  v44 = [(IMAP_Account *)self->_account offlineCacheDirectoryPath];
  v11 = 0;
  if (a4)
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
  obj = v8;
  v52 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  v14 = 0;
  v15 = 0;
  if (v52)
  {
    v46 = 0;
    v50 = *v60;
    v48 = v10;
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
        v20 = [v19 messageStore];
        v21 = [v19 hasTemporaryUid];
        v57 = v20;
        if ([(IMAP_Account *)v54->_account requiresDataForOfflineTransfersFromStore:v20])
        {
          v58 = 0;
          v22 = [v20 fullBodyDataForMessage:v19 andHeaderDataIfReadilyAvailable:&v58 isComplete:0 downloadIfNecessary:0 didDownload:0];
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
            v23 = [v20 headerDataForMessage:v19 downloadIfNecessary:0];
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
            v29 = v28 = v21;
            v30 = [v44 stringByAppendingPathComponent:v29];
            [v27 writeToFile:v30 options:805306369 error:0];

            v21 = v28;
            v10 = v48;
          }
        }

        else
        {
          v56 = 0;
          v22 = 0;
          LODWORD(v25) = lastUid + 1;
        }

        if ([v10 count] && (v18 != v55 || ((v17 ^ v21) & 1) != 0))
        {
          v33 = v17 & 1;
          v32 = v51;
          v34 = _makeCopyOperation(v54, v10, v18, v45, v33, v53, v51);
          v35 = v34;
          v14 = v21;
          if (v34 && !v46)
          {
            v46 = [v34 firstTemporaryUid];
          }

          v31 = v25;

          v10 = v48;
        }

        else
        {
          v14 = v21;
          v31 = v25;
          v32 = v51;
        }

        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", objc_msgSend(v19, "uid")];
        [v10 addObject:v36];

        if (v53)
        {
          v37 = [v19 headers];
          CFArrayAppendValue(v53, [v37 firstHeaderForKey:v49]);
        }

        if (v32)
        {
          CFArrayAppendValue(v32, [v19 dateReceived]);
        }

        v15 = v55;

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
    v46 = 0;
  }

  if ([v10 count])
  {
    v38 = v53;
    v39 = v51;
    v40 = _makeCopyOperation(v54, v10, v15, v45, v14, v53, v51);
    v41 = v40;
    if (v40 && !v46)
    {
      v46 = [v40 firstTemporaryUid];
    }
  }

  else
  {
    v39 = v51;
    v38 = v53;
  }

  [(MFIMAPOperationCache *)v54 mf_unlock];
  if (v38)
  {
    CFRelease(v38);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v46;
}

- (unsigned)uidForAppendingMessageData:(id)a3 withFlags:(id)a4 andInternalDate:(id)a5 toMailbox:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(MFIMAPOperationCache *)self mf_lock];
  v14 = MEMORY[0x277CCACA8];
  v15 = self->_lastUid + 1;
  self->_lastUid = v15;
  v16 = [v14 stringWithFormat:@"%u", v15];
  v17 = _writeDataToPath(self, v10, v16, 1073741825);

  if (v17)
  {
    v18 = [objc_allocWithZone(MFIMAPOperation) initWithAppendedUid:self->_lastUid approximateSize:(objc_msgSend(v10 flags:"length") + 1023) >> 10 internalDate:v11 mailbox:{v12, v13}];
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

- (BOOL)hasOperationsForMailbox:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        v9 = [*(*(&v13 + 1) + 8 * i) mailboxName];
        v10 = [v9 isEqualToString:v4];

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

- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5
{
  v7 = a4;
  if ([v7 responseType] == 2 && objc_msgSend(v7, "responseCode") == 10)
  {
    v8 = [v7 responseInfo];
    self->_lastUidValidity = [v8 unsignedIntValue];
  }

  v9 = a5->var0 == 24;

  return v9;
}

- (void)_performCreateOperation:(id)a3 withContext:(id *)a4
{
  v5 = a3;
  var1 = a4->var1;
  v7 = [v5 mailboxName];
  LOBYTE(var1) = [var1 createMailbox:v7];

  if ((var1 & 1) == 0)
  {
    v8 = vm_imap_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPOperationCache _performCreateOperation:v5 withContext:&a4->var0];
    }
  }
}

- (void)_performDeleteOperation:(id)a3 withContext:(id *)a4
{
  v5 = a3;
  var1 = a4->var1;
  v7 = [v5 mailboxName];
  LOBYTE(var1) = [var1 deleteMailbox:v7];

  if ((var1 & 1) == 0)
  {
    v8 = vm_imap_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPOperationCache _performCreateOperation:v5 withContext:&a4->var0];
    }
  }
}

- (void)_performStoreOperation:(id)a3 withContext:(id *)a4
{
  v11 = a3;
  v6 = [v11 mailboxName];
  v7 = [v11 flagsToSet];
  v8 = [v11 flagsToClear];
  v9 = [v11 uids];
  if (v9 && ([v11 usesRealUids] & 1) == 0)
  {
    v10 = _convertTemporaryUids(v9, a4->var2);

    v9 = v10;
  }

  if ([v9 count] && v6 && (objc_msgSend(v7, "count") || objc_msgSend(v8, "count")) && _selectMailboxIfNeeded(self, a4, v6))
  {
    if ([v7 count])
    {
      [a4->var1 storeFlags:v7 state:1 forUids:v9];
    }

    if ([v8 count])
    {
      [a4->var1 storeFlags:v8 state:0 forUids:v9];
    }
  }
}

- (void)_performAppendOperation:(id)a3 withContext:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 uid];
  v8 = [(IMAP_Account *)self->_account _dataForTemporaryUid:v7];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v6 mailboxName];
    v36 = [v6 internalDate];
    var1 = a4->var1;
    v12 = [v6 flags];
    v13 = [v6 internalDate];
    v37 = 0;
    LOBYTE(var1) = [var1 appendData:v9 toMailboxNamed:v10 flags:v12 dateReceived:v13 newMessageInfo:&v37];
    v14 = v37;

    if (var1)
    {
      v34 = v14;
      v15 = [v14 objectForKey:@"Source UIDS"];
      v16 = [v15 unsignedIntValue];

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

      if (v16 || (v16 = _searchForNewUid(self, a4, v20, v10)) != 0)
      {
        key = v10;
        v22 = _getStoreForMailboxName(self, &a4->var3, v10);
        if (v22)
        {
          var4 = a4->var4;
          v33 = v16;
          if (var4)
          {
            Value = CFDictionaryGetValue(var4, v10);
          }

          else
          {
            Value = 0;
          }

          v24 = [v22 mailboxUid];
          v25 = [v24 userInfoObjectForKey:@"UIDVALIDITY"];
          v26 = [v25 intValue];

          v16 = v33;
          if (!Value || !v26 || Value == v26)
          {
            [v22 setUid:v33 forMessageWithTemporaryUid:v7];
          }
        }

        CFDictionarySetValue(a4->var2, v7, v16);

        v10 = key;
      }

      v27 = [(IMAP_Account *)self->_account offlineCacheDirectoryPath];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v7];
      v29 = [v27 stringByAppendingPathComponent:v28];

      v30 = MFRemoveItemAtPath();
      v21 = v36;
      v14 = v34;
    }

    else
    {
      v20 = vm_imap_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEFAULT, "**** Failed to append to %@", buf, 0xCu);
      }

      v21 = v36;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_performCopyOperation:(id)a3 withContext:(id *)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 mailboxName];
  v8 = [v6 destinationMailbox];
  if (v7 && _selectMailboxIfNeeded(self, a4, v7))
  {
    v9 = [v6 sourceUids];
    if (([v6 usesRealUids] & 1) == 0)
    {
      v10 = _convertTemporaryUids(v9, a4->var2);

      v9 = v10;
    }

    if (!v9)
    {
      goto LABEL_50;
    }

    var1 = a4->var1;
    v111 = 0;
    v12 = [var1 copyUids:v9 toMailboxNamed:v8 newMessageInfo:&v111];
    v13 = v111;
    v14 = v13;
    if ((v12 & 1) == 0)
    {
      v34 = vm_imap_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [MFIMAPOperationCache _performCopyOperation:v8 withContext:v34];
      }

      goto LABEL_49;
    }

    v15 = [v13 objectForKey:@"Source UIDS"];
    v16 = [v14 objectForKey:@"Destination UIDS"];
    v69 = v14;
    key = v8;
    v67 = v9;
    v68 = v7;
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

        v21 = self;
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
        v72 = [v6 destinationUids];
        v25 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v72 forKeys:v9];
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

            v32 = [v31 intValue];
            v33 = _getStoreForMailboxName(v21, &a4->var3, key);
            [v33 setUid:v29 forMessageWithTemporaryUid:v32];

            CFDictionarySetValue(a4->var2, v32, v29);
            v27 = IMAPNextUidFromSet(buffer);
          }

          while (v27);
        }

        self = v21;
        goto LABEL_41;
      }
    }

    v35 = [v6 destinationUids];
    v36 = [v9 count];
    v73 = v35;
    v37 = [v35 count];
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
      v52 = [(IMAP_Account *)self->_account offlineCacheDirectoryPath];
      v53 = [v6 destinationUids];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v54 = [v53 countByEnumeratingWithState:&v74 objects:v112 count:16];
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
              objc_enumerationMutation(v53);
            }

            v58 = [*(*(&v74 + 1) + 8 * i) intValue];
            v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v58];
            v60 = [v52 stringByAppendingPathComponent:v59];

            v61 = MFRemoveItemAtPath();
          }

          v55 = [v53 countByEnumeratingWithState:&v74 objects:v112 count:16];
        }

        while (v55);
      }

      v9 = v67;
      v7 = v68;
      v14 = v69;
      v8 = key;
      v34 = v66;
LABEL_49:

LABEL_50:
      goto LABEL_51;
    }

    v39 = 0;
    v63 = self;
    v64 = a4;
    while (1)
    {
      v40 = [v73 objectAtIndex:v39];
      v41 = [v40 intValue];

      if (v41)
      {
        v78 = 0;
        v79 = 0;
        v42 = [v6 getMessageId:&v79 andInternalDate:&v78 forDestinationUid:v41];
        v43 = v79;
        v44 = v78;
        if ((v42 & 1) == 0)
        {

          goto LABEL_38;
        }

        v45 = _searchForNewUid(self, a4, v43, v8);

        if (v45)
        {
          v44 = _getStoreForMailboxName(self, &a4->var3, v8);
          if (v44)
          {
            v46 = [v69 objectForKey:@"UIDVALIDITY"];
            Value = [v46 unsignedIntValue];

            v48 = [v44 mailboxUid];
            v49 = [v48 userInfoObjectForKey:@"UIDVALIDITY"];
            v50 = [v49 intValue];

            v8 = key;
            if (Value)
            {
LABEL_32:
              if (!Value || !v50 || Value == v50)
              {
                goto LABEL_35;
              }
            }

            else
            {
              var4 = v64->var4;
              if (var4)
              {
                Value = CFDictionaryGetValue(var4, key);
                goto LABEL_32;
              }

LABEL_35:
              [v44 setUid:v45 forMessageWithTemporaryUid:v41];
            }

            a4 = v64;
            CFDictionarySetValue(v64->var2, v41, v45);
            self = v63;
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

- (void)performDeferredOperationsWithConnection:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = +[MFActivityMonitor currentMonitor];
  v5 = v4;
  v30 = v5;
  cf = CFDictionaryCreateMutable(0, 0, 0, 0);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  [v5 setDelegate:self];
  v36 = [v29 taskName];

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

        v12 = [*(*(&v25 + 1) + 8 * i) approximateSize];
        HIDWORD(v34) += v12;
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

      v18 = [v15 operationType];
      if (v18 <= 2)
      {
        if (v18 == 1)
        {
          [(MFIMAPOperationCache *)self _performCreateOperation:v15 withContext:&v29];
        }

        else if (v18 == 2)
        {
          [(MFIMAPOperationCache *)self _performDeleteOperation:v15 withContext:&v29];
        }
      }

      else
      {
        switch(v18)
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

      v19 = [v15 approximateSize];
      LODWORD(v34) = v34 + v19;
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

    v20 = [v15 failureCount];
    if (v20 < 2)
    {
      [v15 setFailureCount:v20 + 1];
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
  v22 = [v30 selectedMailbox];

  if (v22)
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

  [v29 setTaskName:v36];
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
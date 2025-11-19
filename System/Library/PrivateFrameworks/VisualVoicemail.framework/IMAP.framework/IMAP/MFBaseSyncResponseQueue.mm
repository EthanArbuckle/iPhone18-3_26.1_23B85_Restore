@interface MFBaseSyncResponseQueue
- (BOOL)handleItems:(id)a3;
- (MFBaseSyncResponseQueue)init;
- (id)sequenceIdentifierForItem:(id)a3;
- (void)dealloc;
@end

@implementation MFBaseSyncResponseQueue

- (MFBaseSyncResponseQueue)init
{
  v10.receiver = self;
  v10.super_class = MFBaseSyncResponseQueue;
  v2 = [(MFBufferedQueue *)&v10 init];
  v3 = v2;
  if (v2)
  {
    store = v2->_store;
    v2->_store = 0;

    connection = v3->_connection;
    v3->_connection = 0;

    url = v3->_url;
    v3->_url = 0;

    v3->_currentUID = 0;
    missingUIDs = v3->_missingUIDs;
    v3->_missingUIDs = 0;

    libraryDetails = v3->_libraryDetails;
    v3->_libraryDetails = 0;

    v3->_shouldCompact = 0;
    v3->_shouldFetch = 0;
    v3->_isSearching = 0;
  }

  return v3;
}

- (BOOL)handleItems:(id)a3
{
  v4 = a3;
  currentUID = self->_currentUID;
  v42 = v4;
  v6 = [v4 lastObject];
  v7 = [(MFBaseSyncResponseQueue *)self uidForItem:v6];
  v8 = currentUID + 1;

  if (v8 >= v7)
  {
    v8 = v7;
  }

  self->_currentUID = v7;
  libraryDetails = self->_libraryDetails;
  if (libraryDetails)
  {
    v10 = libraryDetails;
  }

  else
  {
    v11 = [(MFLibraryStore *)self->_store library];
    v10 = [v11 getDetailsForMessagesWithRemoteIDInRange:v8 fromMailbox:{v7 - v8, self->_url}];
  }

  v12 = [v4 count];
  v44 = [(NSArray *)v10 count];
  if (v12)
  {
    v13 = [v4 objectAtIndex:0];
  }

  else
  {
    v13 = 0;
  }

  v41 = v10;
  if (v44)
  {
    v14 = [(NSArray *)v10 objectAtIndex:0];
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 != 0;
  v16 = v14 != 0;
  if (v13 | v14)
  {
    v45 = 0;
    v46 = 0;
    v39 = 0;
    v40 = v48;
    while (1)
    {
      v17 = [(MFBaseSyncResponseQueue *)self uidForItem:v13, v39, v40];
      v18 = [v14 uid];
      v19 = v18;
      if (v15 && v16 && v17 == v18)
      {
        break;
      }

      if (v15)
      {
        if (!v16 || v17 < v18)
        {
          if (self->_shouldFetch && ([(MFBaseSyncResponseQueue *)self flagsForItem:v13]& 2) == 0)
          {
            missingUIDs = self->_missingUIDs;
            if (!missingUIDs)
            {
              v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v29 = self->_missingUIDs;
              self->_missingUIDs = v28;

              missingUIDs = self->_missingUIDs;
            }

            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
            [(NSMutableArray *)missingUIDs addObject:v30];
          }

          if (++v45 >= v12)
          {
            v26 = 0;
          }

          else
          {
            v26 = [v4 objectAtIndex:?];
          }

          v35 = v13;
          goto LABEL_52;
        }

LABEL_34:
        if (self->_shouldCompact)
        {
          v31 = [(MFLibraryStore *)self->_store library];
          v32 = [v31 messageWithLibraryID:*(v14 + 16) options:0 inMailbox:0];

          if (v32)
          {
            v33 = v39;
            if (!v39)
            {
              v33 = [MEMORY[0x277CBEB18] array];
            }

            [v33 addObject:{v32, v33}];
          }
        }

        if (++v46 < v44)
        {
          v34 = [(NSArray *)v10 objectAtIndex:?];
          v35 = v14;
          v26 = v13;
          goto LABEL_45;
        }

        v35 = v14;
        v26 = v13;
LABEL_49:
        v14 = 0;
        goto LABEL_52;
      }

      if (v16)
      {
        goto LABEL_34;
      }

      v26 = 0;
      v14 = 0;
LABEL_53:
      v15 = v26 != 0;
      v16 = v14 != 0;
      v13 = v26;
      if (!(v26 | v14))
      {
        if (v39)
        {
          v37 = [(MFLibraryStore *)self->_store library];
          [v37 compactMessages:v39];
        }

        goto LABEL_56;
      }
    }

    if ([(MFBaseSyncResponseQueue *)self shouldSyncFlags])
    {
      store = self->_store;
      v21 = *(v14 + 24);
      v22 = [(MFBaseSyncResponseQueue *)self flagsForItem:v13];
      connection = self->_connection;
      isSearching = self->_isSearching;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v48[0] = __39__MFBaseSyncResponseQueue_handleItems___block_invoke;
      v48[1] = &unk_279E33700;
      v48[2] = self;
      v49 = v14;
      _syncFlags(store, v19, v21, v22, connection, isSearching, v47);

      v10 = v41;
      v4 = v42;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [(MFBaseSyncResponseQueue *)self sequenceIdentifierForItem:v13];
      if ([v24 length])
      {
        v25 = [(MFLibraryStore *)self->_store library];
        [v25 setSequenceIdentifier:v24 forMessageWithLibraryID:*(v14 + 16)];
      }
    }

    if (++v45 >= v12)
    {
      v26 = 0;
    }

    else
    {
      v26 = [v4 objectAtIndex:?];
    }

    v36 = v46 + 1;

    v46 = v36;
    if (v36 >= v44)
    {
      v35 = v14;
      goto LABEL_49;
    }

    v34 = [(NSArray *)v10 objectAtIndex:v36];
    v35 = v14;
LABEL_45:
    v14 = v34;
LABEL_52:

    goto LABEL_53;
  }

LABEL_56:

  return 1;
}

id __39__MFBaseSyncResponseQueue_handleItems___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) library];
  v3 = [v2 messageWithLibraryID:*(*(a1 + 40) + 16) options:399 inMailbox:0];

  return v3;
}

- (id)sequenceIdentifierForItem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFBaseSyncResponseQueue sequenceIdentifierForItem:]", "IMAP_LibraryIMAPStore.mm", 533, "[item isKindOfClass:[NSArray class]]");
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if ([v8 type] == 11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v9 = [v8 modSequenceNumber];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v9];
  }

  else
  {
LABEL_10:

LABEL_12:
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFBaseSyncResponseQueue;
  [(MFBufferedQueue *)&v2 dealloc];
}

@end
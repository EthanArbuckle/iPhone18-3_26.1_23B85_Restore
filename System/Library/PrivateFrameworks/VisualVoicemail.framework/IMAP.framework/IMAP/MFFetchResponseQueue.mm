@interface MFFetchResponseQueue
- (BOOL)addItem:(id)a3;
- (BOOL)handleItems:(id)a3;
- (MFFetchResponseQueue)init;
- (id)insertMessages:(id)a3;
@end

@implementation MFFetchResponseQueue

- (MFFetchResponseQueue)init
{
  v7.receiver = self;
  v7.super_class = MFFetchResponseQueue;
  v2 = [(MFBufferedQueue *)&v7 init];
  v3 = v2;
  if (v2)
  {
    store = v2->_store;
    v2->_store = 0;

    connection = v3->_connection;
    v3->_connection = 0;

    v3->_numNewUIDs = 0;
    v3->_newMessageCount = 0;
    v3->_highestModSequence = 0;
    v3->_flags = 0;
    v3->_isSearching = 0;
  }

  return v3;
}

- (id)insertMessages:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryStore *)self->_store library];
  v6 = [(MFMailMessageStore *)self->_store mailboxUid];
  LOWORD(v9) = 0;
  v7 = [v5 addMessages:v4 withMailbox:v6 fetchBodies:0 newMessagesByOldMessage:0 remoteIDs:0 setFlags:self->_flags clearFlags:0 messageFlagsForMessages:0 copyFiles:v9 addPOPUIDs:0 dataSectionsByMessage:?];

  return v7;
}

- (BOOL)handleItems:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFFetchResponseQueue *)self insertMessages:v4];
  v6 = +[MFActivityMonitor currentMonitor];
  if ([v6 gotNewMessagesState])
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-259200.0];
    [v7 timeIntervalSince1970];
    v9 = v8;

    v10 = [v6 gotNewMessagesState];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v5;
    v22 = v5;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v15 messageFlags];
          if ((v16 & 1) == 0)
          {
            [v15 dateReceivedAsTimeIntervalSince1970];
            if (v17 > v9)
            {
              if ([v15 conversationFlags])
              {
                v10 = 3;
                goto LABEL_19;
              }

              if (v10 <= 2)
              {
                v18 = 2;
              }

              else
              {
                v18 = v10;
              }

              if ((v16 & 0x1000000) != 0)
              {
                v10 = v18;
              }
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v5 = v22;
    [v6 setGotNewMessagesState:v10];
  }

  v19 = [v5 count];
  LOBYTE(v19) = [v4 count] == v19;

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)addItem:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v41 = a3;
  if ([v41 responseType] != 17)
  {
    LOBYTE(v23) = 1;
    goto LABEL_54;
  }

  context = objc_autoreleasePoolPush();
  v40 = [v41 fetchResults];
  v38 = self;
  v45 = [(MFIMAPConnection *)self->_connection _isFetchResponseValid:v41];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v40;
  v4 = [(MFIMAPMessageWithCache *)obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (!v4)
  {
    v44 = 0;
    v46 = 0;
    v47 = 0;
    LOBYTE(v23) = 1;
    v20 = obj;
    goto LABEL_52;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v42 = 0;
  v43 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v9 = *v53;
  v10 = 0xFFFFFFFFLL;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v53 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v52 + 1) + 8 * i);
      v13 = [v12 type];
      if (v13 <= 7)
      {
        if (v13 == 2)
        {
          v18 = [v12 internalDate];
          v17 = v46;
          v46 = v18;
          goto LABEL_24;
        }

        if (v13 == 3)
        {
          v7 = [v12 messageSize];
        }

        else if (v13 == 4 && v45 != 0)
        {
          v15 = [v12 fetchData];
          v16 = [v15 mutableCopy];

          [v16 mf_convertNetworkLineEndingsToUnix];
          [v16 mf_makeImmutable];
          v17 = v44;
          v44 = v16;
LABEL_24:

          continue;
        }
      }

      else if (v13 > 9)
      {
        if (v13 == 10)
        {
          v42 = [v12 messageFlags];
          v10 = [v12 encoding];
          v19 = [v12 customFlagsArray];
          BYTE4(v43) = 1;
          v17 = v47;
          v47 = v19;
          goto LABEL_24;
        }

        if (v13 == 11)
        {
          v8 = [v12 modSequenceNumber];
        }
      }

      else if (v13 == 8)
      {
        v5 = [v12 uid];
        LODWORD(v43) = 1;
      }

      else
      {
        v6 = [v12 uniqueRemoteId];
      }
    }

    v4 = [(MFIMAPMessageWithCache *)obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  }

  while (v4);

  if ((v43 & 0x100000000) == 0)
  {
    goto LABEL_46;
  }

  if ((([v44 length] != 0) & v43 & v45) == 1 && -[MFFetchResponseQueue shouldAddUID:](v38, "shouldAddUID:", v5))
  {
    v20 = [objc_alloc(MEMORY[0x277D24F40]) initWithHeaderData:v44 encoding:v10];
    v21 = [[MFIMAPMessageWithCache alloc] initWithFlags:v42 customFlags:v47 size:v7 uid:v5];
    [v46 timeIntervalSince1970];
    [(MFIMAPMessageWithCache *)v21 setDateReceivedTimeIntervalSince1970:?];
    if (v10 != -1)
    {
      [(MFIMAPMessage *)v21 setPreferredEncoding:v10];
    }

    [(MFIMAPMessage *)v21 setUniqueRemoteId:v6];
    [(MFMailMessage *)v21 loadCachedHeaderValuesFromHeaders:v20];
    [(MFIMAPMessageWithCache *)v21 setHeaders:v20];
    [(MFIMAPMessageWithCache *)v21 setMessageStore:v38->_store];
    if (v38->_highestModSequence <= v8)
    {
      highestModSequence = v8;
    }

    else
    {
      highestModSequence = v38->_highestModSequence;
    }

    [(MFMailMessage *)v21 setModSequenceNumber:highestModSequence];
    v51.receiver = v38;
    v51.super_class = MFFetchResponseQueue;
    v24 = v23 = [(MFBufferedQueue *)&v51 addItem:v21];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(MFMailMessageStore *)v38->_store mailboxUid];
      v26 = [v25 mambaID];
      v27 = [(MFIMAPMessageWithCache *)v21 subject];
      *buf = 136315650;
      v57 = v26;
      v58 = 2080;
      v59 = " ";
      v60 = 2112;
      v61 = v27;
      _os_log_impl(&dword_2720B1000, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s#Power [New Message] subject=%@;", buf, 0x20u);
    }

    newMessageCount = v38->_newMessageCount;
    v38->_newMessageCount = newMessageCount + 1;
    numNewUIDs = v38->_numNewUIDs;
    if (newMessageCount + 1 <= numNewUIDs)
    {
      v30 = +[MFActivityMonitor currentMonitor];
      [v30 setCurrentCount:v38->_newMessageCount];
      if ((v42 & 1) == 0)
      {
        [v30 setGotNewMessagesState:1];
      }

LABEL_50:
    }

    else if (newMessageCount == numNewUIDs)
    {
      v30 = +[MFActivityMonitor currentMonitor];
      [v30 reset];
      goto LABEL_50;
    }

LABEL_51:

    goto LABEL_52;
  }

  if (v43 & v45)
  {
    v31 = [(MFFetchResponseQueue *)v38 messageToSyncFlagsForUID:v5];
    v20 = v31;
    if (v31)
    {
      store = v38->_store;
      v23 = [(MFMailMessage *)v31 messageFlags];
      connection = v38->_connection;
      isSearching = v38->_isSearching;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __32__MFFetchResponseQueue_addItem___block_invoke;
      v49[3] = &unk_279E336D8;
      v35 = v20;
      v50 = v35;
      _syncFlags(store, v5, v23, v42, connection, isSearching, v49);
      LOBYTE(v23) = 1;
      v21 = v50;
      v20 = v35;
      goto LABEL_51;
    }

    LOBYTE(v23) = 1;
LABEL_52:
  }

  else
  {
LABEL_46:
    LOBYTE(v23) = 1;
  }

  objc_autoreleasePoolPop(context);
LABEL_54:

  v36 = *MEMORY[0x277D85DE8];
  return v23;
}

@end
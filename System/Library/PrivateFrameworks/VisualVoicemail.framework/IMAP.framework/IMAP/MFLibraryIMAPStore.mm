@interface MFLibraryIMAPStore
+ (void)setHandlerForTemporaryUidToRemoteIDMapping:(id)a3;
- (BOOL)_changedFlagsForMessage:(id)a3 fetchResponse:(id)a4 newFlags:(unint64_t *)a5;
- (BOOL)_doUidCopy:(id *)a3 toStore:(id)a4 newMessages:(id)a5;
- (BOOL)_fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6;
- (BOOL)_shouldContinueToPreservedUID:(unint64_t)a3;
- (BOOL)canCompact;
- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5;
- (BOOL)hasValidCacheFileForMessage:(id)a3;
- (BOOL)performOperationRequiringConnection:(BOOL)a3 withOptions:(unsigned int)a4 operation:(id)a5;
- (id)_dataForMessage:(id)a3 readHeadersOnly:(BOOL)a4;
- (id)_downloadForMessageBodyData:(id)a3;
- (id)_fetchFullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 didDownload:(BOOL *)a6;
- (id)_idleConditionsObservable;
- (id)_newSearchResponseQueueForConnection:(id)a3 limit:(unsigned int)a4;
- (id)_observeChangesInIdleConditions;
- (id)_performBodyDataDownload:(id)a3 usingConnection:(id)a4 isPartial:(BOOL *)a5;
- (id)_searchArgumentsForSynchronize;
- (id)_searchFlagsForUIDs:(id)a3 usingConnection:(id)a4;
- (id)_uidsForMessages:(id)a3;
- (id)_updateLibraryForTransferedMessages:(id)a3 toDestinationMailbox:(id)a4 newMessageInfo:(id)a5 flagsToSet:(id)a6;
- (id)addMessages:(id)a3 newMessagesByOldMessage:(id)a4;
- (id)deletedMessages;
- (id)mailboxName;
- (id)messageForRemoteID:(id)a3;
- (id)messageForRemoteID:(id)a3 inMailbox:(id)a4;
- (id)messageIdRollCall:(id)a3;
- (id)moveMessages:(id)a3 toMailbox:(id)a4 markAsRead:(BOOL)a5;
- (id)newDictionaryForLocalFlags:(unint64_t)a3 serverFlags:(unint64_t)a4 existingDictionary:(id)a5;
- (id)offlineCache;
- (id)offlineCacheIfOffline;
- (id)relativePath;
- (id)remoteIDsFromUniqueRemoteIDs:(id)a3;
- (id)sequenceIdentifierForUIDs:(id)a3;
- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (id)uniqueRemoteIDsForMessages:(id)a3;
- (id)willSetFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (int64_t)fetchMessagesWithMessageIDs:(id)a3 andSetFlags:(unint64_t)a4;
- (int64_t)fetchMessagesWithRemoteIDs:(id)a3 andSetFlags:(unint64_t)a4;
- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5;
- (unint64_t)_doAppend:(id *)a3;
- (unint64_t)_fetchMessagesWithArguments:(id)a3 idRange:(id)a4 onConnection:(id)a5 synchronize:(BOOL)a6 limit:(unint64_t)a7 topUIDToCompact:(unint64_t)a8 topKnownUID:(unint64_t)a9 success:(BOOL *)a10 examinedRange:(_NSRange *)a11 fetchableUIDsFound:(unint64_t *)a12 preserveUID:(unint64_t *)a13 numFetchedUIDs:(unint64_t *)a14;
- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7 customIMAPFlagsToSet:(id)a8;
- (unint64_t)fetchMessagesWithUIDs:(id)a3 connection:(id)a4 newCount:(unint64_t)a5 flagsToSet:(unint64_t)a6 queueClass:(Class)a7;
- (unint64_t)growFetchWindow;
- (unint64_t)serverMessageCount;
- (unint64_t)syncMessagesWithUIDs:(id)a3 connection:(id)a4 libraryDetails:(id)a5 flagSearchResults:(id)a6;
- (void)_fetchMessagesMatchingCriterion:(id)a3 limit:(unsigned int)a4 withOptions:(unsigned int)a5 handler:(id)a6;
- (void)_fetchServerUnreadCountWithConnection:(id)a3;
- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)_performActionsOnConnection:(id)a3 uidsToFetch:(id *)a4 uidsToSync:(id *)a5 messagesToCompact:(id *)a6 libraryDetails:(id)a7 flagSearchResults:(id)a8 shouldForce:(BOOL)a9 newUIDsToFetch:(unsigned int *)a10;
- (void)_setFlagsForMessages:(id)a3;
- (void)_setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (void)_synchronouslySetFlags:(id)a3 clearFlags:(id)a4 forMessages:(id)a5 originalChanges:(id)a6;
- (void)_updateSelectedUID:(unint64_t *)a3;
- (void)_updateServerUnreadCount:(unint64_t)a3;
- (void)addFlagChanges:(id)a3 forMessages:(id)a4;
- (void)close;
- (void)connection:(id)a3 didBeginBodyLoad:(id)a4 section:(id)a5;
- (void)connection:(id)a3 didFinishLoadingBodyData:(id)a4 section:(id)a5;
- (void)connection:(id)a3 didLoadMoreBodyData:(id)a4 section:(id)a5;
- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id *)a5;
- (void)dealloc;
- (void)doCompact;
- (void)focusedMessageDidChange:(id)a3;
- (void)removeAllLocalMessages;
- (void)reselectMailbox;
- (void)setAdditionalFetchHeaders:(id)a3;
- (void)setAdditionalSynchronizationSearchArguments:(id)a3;
- (void)setDownloadDelegate:(id)a3;
- (void)setFlagsCancelled:(id)a3 forMessages:(id)a4;
- (void)setFlagsForAllMessagesFromDictionary:(id)a3;
- (void)setSequenceIdentifier:(id)a3 forUIDs:(id)a4;
- (void)setServerMessageCount:(unint64_t)a3;
- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)a3;
- (void)updateServerUnreadCountClosingConnection:(BOOL)a3;
- (void)willRemoveDelegation:(id)a3;
@end

@implementation MFLibraryIMAPStore

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(VFCancelationToken *)self->_cancelationToken cancel];
  cachedConnection = self->_cachedConnection;
  if (cachedConnection)
  {
    v5 = [MFMonitoredInvocation invocationWithSelector:sel_checkInConnection_ target:self->super.super._account object:cachedConnection taskName:0 priority:13 canBeCancelled:0];
    v6 = +[MFInvocationQueue sharedInvocationQueue];
    [v6 addInvocation:v5];
  }

  v7.receiver = self;
  v7.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v7 dealloc];
}

- (unint64_t)fetchMessagesWithUIDs:(id)a3 connection:(id)a4 newCount:(unint64_t)a5 flagsToSet:(unint64_t)a6 queueClass:(Class)a7
{
  v12 = a3;
  v13 = a4;
  v14 = objc_alloc_init(a7);
  objc_storeStrong(v14 + 3, self);
  objc_storeStrong(v14 + 4, a4);
  *(v14 + 5) = a5;
  *(v14 + 7) = self->_highestModSequence;
  *(v14 + 8) = a6;
  [v13 sendSkeletonResponsesForUIDs:v12 includeTo:1 toQueue:v14];
  [v14 flush];
  v15 = *(v14 + 6);

  return v15;
}

- (unint64_t)syncMessagesWithUIDs:(id)a3 connection:(id)a4 libraryDetails:(id)a5 flagSearchResults:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MFSyncResponseQueue);
  v15 = [(MFLibraryStore *)self URLString];
  url = v14->super._url;
  v14->super._url = v15;

  objc_storeStrong(&v14->super._store, self);
  objc_storeStrong(&v14->super._connection, a4);
  objc_storeStrong(&v14->super._libraryDetails, a5);
  v14->super._shouldCompact = 0;
  v14->super._shouldFetch = 0;
  *(&v14->super._isSearching + 1) = 1;
  [v11 sendUidAndFlagResponsesForUIDs:v10 sequenceIdentifierProvider:self flagSearchResults:v13 toQueue:v14];
  [(MFBufferedQueue *)v14 flush];

  return 0;
}

- (void)_performActionsOnConnection:(id)a3 uidsToFetch:(id *)a4 uidsToSync:(id *)a5 messagesToCompact:(id *)a6 libraryDetails:(id)a7 flagSearchResults:(id)a8 shouldForce:(BOOL)a9 newUIDsToFetch:(unsigned int *)a10
{
  v35 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v28 = a7;
  v17 = a8;
  v18 = [*a4 count];
  if (a9)
  {
    if (v18)
    {
      if (*a10)
      {
        v19 = +[MFActivityMonitor currentMonitor];
        [v19 setDisplayName:@"Downloading %@ of %@" maxCount:*a10];

        v20 = *a10;
      }

      else
      {
        v20 = 0;
      }

      [(MFLibraryIMAPStore *)self fetchMessagesWithUIDs:*a4 connection:v16 newCount:v20 flagsToSet:0 queueClass:objc_opt_class()];
    }

    *a4 = 0;
    *a10 = 0;
  }

  if ([*a5 count])
  {
    if (a9)
    {
      v21 = +[MFActivityMonitor currentMonitor];
      [v21 reset];
    }

    [(MFLibraryIMAPStore *)self syncMessagesWithUIDs:*a5 connection:v16 libraryDetails:v28 flagSearchResults:v17];
  }

  *a5 = 0;
  if (*a6 || a9)
  {
    v22 = [*a6 count];
    v23 = v22;
    if (v22)
      v24 = {;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(MFMailMessageStore *)self mailboxUid];
        *buf = 136315650;
        v30 = [v25 mambaID];
        v31 = 2080;
        v32 = " ";
        v33 = 2048;
        v34 = v23;
        _os_log_impl(&dword_2720B1000, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sCompacting %lu messages during IMAP sync", buf, 0x20u);
      }

      v26 = [(MFLibraryStore *)self library];
      [v26 compactMessages:*a6];
    }

    *a6 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_updateSelectedUID:(unint64_t *)a3
{
  _MFLockGlobalLock();
  selectedUID = self->_selectedUID;
  if (selectedUID)
  {
    v6 = [(NSString *)selectedUID intValue];
    if (*a3 == v6)
    {
      goto LABEL_6;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *a3 = v7;
LABEL_6:

  _MFUnlockGlobalLock();
}

- (void)focusedMessageDidChange:(id)a3
{
  v7 = a3;
  v4 = [v7 object];
  v5 = [v4 mailbox];
  _MFLockGlobalLock();
  if (v4 && v5 == self->super.super._mailboxUid)
  {
    selectedUID = [v4 remoteID];
    if (([(NSString *)self->_selectedUID isEqual:selectedUID]& 1) == 0)
    {
      objc_storeStrong(&self->_selectedUID, selectedUID);
    }
  }

  else
  {
    selectedUID = self->_selectedUID;
    self->_selectedUID = 0;
  }

  _MFUnlockGlobalLock();
}

- (id)_searchFlagsForUIDs:(id)a3 usingConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(MFLibraryStore *)self unreadCount];
  if ([v6 count] >= 2 * v9)
  {
    [MFIMAPConnectionFlagSearchRequest requestWithMask:1 searchTerms:&unk_288175590 positiveMatch:0];
  }

  else
  {
    [MFIMAPConnectionFlagSearchRequest requestWithMask:1 searchTerms:&unk_2881755A8 positiveMatch:1];
  }
  v10 = ;
  [v8 addObject:v10];

  v11 = [MFIMAPConnectionFlagSearchRequest requestWithMask:2 searchTerms:&unk_2881755C0 positiveMatch:1];
  [v8 addObject:v11];

  v12 = [MFIMAPConnectionFlagSearchRequest requestWithMask:16 searchTerms:&unk_2881755D8 positiveMatch:1];
  [v8 addObject:v12];

  v13 = [MFIMAPConnectionFlagSearchRequest requestWithMask:4 searchTerms:&unk_2881755F0 positiveMatch:1];
  [v8 addObject:v13];

  if ((*(self + 144) & 0x40) != 0)
  {
    v14 = [MFIMAPConnectionFlagSearchRequest requestWithMask:256 searchTerms:&unk_288175608 positiveMatch:1];
    [v8 addObject:v14];
  }

  if ((*(self + 144) & 0x20) != 0)
  {
    v15 = [MFIMAPConnectionFlagSearchRequest requestWithMask:256 searchTerms:&unk_288175620 positiveMatch:1];
    [v8 addObject:v15];
  }

  if ([v7 supportsCapability:15])
  {
    if (([v8 count] & 0xFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = [v8 count] << 8;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if ((75 * [v8 count]) < 2)
  {
LABEL_12:
    v16 = 2;
    goto LABEL_14;
  }

  v16 = 75 * [v8 count];
LABEL_14:
  if (v16 >= [v6 count])
  {
    v17 = 0;
  }

  else
  {
    v17 = [v7 searchUIDs:v6 withFlagRequests:v8];
  }

  return v17;
}

- (unint64_t)_fetchMessagesWithArguments:(id)a3 idRange:(id)a4 onConnection:(id)a5 synchronize:(BOOL)a6 limit:(unint64_t)a7 topUIDToCompact:(unint64_t)a8 topKnownUID:(unint64_t)a9 success:(BOOL *)a10 examinedRange:(_NSRange *)a11 fetchableUIDsFound:(unint64_t *)a12 preserveUID:(unint64_t *)a13 numFetchedUIDs:(unint64_t *)a14
{
  v111 = a6;
  v165 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v134 = 0;
  v116 = a5;
  v112 = v17;
  v113 = v18;
  v119 = [v116 searchIDSet:v18 forTerms:v17 success:&v134];
  v19 = objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(MFMailMessageStore *)self mailboxUid];
    v21 = [v20 mambaID];
    v22 = [(_anonymous_namespace_::staticLogger_t *)v119 count];
    v23 = @"NO";
    *buf = 136316162;
    if (v134)
    {
      v23 = @"YES";
    }

    v138 = v21;
    v139 = 2080;
    v140 = " ";
    v141 = 2112;
    v142 = v113;
    v143 = 2048;
    v144 = v22;
    v145 = 2112;
    v146 = v23;
    _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] Search for UIDs [%@] returned %lu items (success=%@)", buf, 0x34u);
  }

  v24 = [(MFLibraryIMAPStore *)self _updateSelectedUID:?];
  if (!v134)
  {
    goto LABEL_9;
  }

  v25 = [(MFLibraryStore *)self library];
  v26 = [(MFMailMessageStore *)self mailboxUid];
  [v25 updateSelectedMessages:v119 withMailbox:v26];

  v24 = [(_anonymous_namespace_::staticLogger_t *)v119 count];
  v27 = v24;
  if (!v24)
  {
LABEL_9:
    v117 = 0;
    if (a11)
    {
      *a11 = xmmword_27216FFB0;
    }

    goto LABEL_105;
  }

  if (v111)
  {
    v115 = [(MFLibraryIMAPStore *)self _searchFlagsForUIDs:v119 usingConnection:v116];
  }

  else
  {
    v115 = 0;
  }

  if (a12)
  {
    *a12 += v27;
  }

  v28 = [(_anonymous_namespace_::staticLogger_t *)v119 objectAtIndex:0];
  v118 = [v28 unsignedIntegerValue];

  v29 = [(_anonymous_namespace_::staticLogger_t *)v119 lastObject];
  v30 = a8;
  if ([v29 unsignedIntegerValue] > a8)
  {
    v31 = [(_anonymous_namespace_::staticLogger_t *)v119 lastObject];
    v30 = [v31 unsignedIntegerValue];
  }

  v32 = v30 - v118;
  if (a11)
  {
    a11->location = v118;
    a11->length = v32;
  }

  if (v32 + 1 > a7)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = a7;
  }

  if (v33 >= 0x100)
  {
    v33 = 256;
  }

  v114 = v33;
  v34 = [(MFLibraryStore *)self library];
  v35 = [(MFLibraryStore *)self URLString];
  v36 = [v34 getDetailsForMessages:v114 absoluteBottom:v118 topOfDesiredRange:v30 range:v133 fromMailbox:v35];

  v123 = [(_anonymous_namespace_::staticLogger_t *)v119 count];
  v37 = a8;
  v38 = [v36 count];
  v39 = v38 - 1;
  v40 = v132 = 0;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [(MFMailMessageStore *)self mailboxUid];
    v42 = [v41 mambaID];
    v43 = [(MFLibraryStore *)self URLString];
    v44 = [v116 selectedMailbox];
    *buf = 136318466;
    v138 = v42;
    v139 = 2080;
    v140 = " ";
    v141 = 2112;
    v142 = v43;
    v143 = 2112;
    v144 = v44;
    v145 = 2112;
    v146 = v113;
    v147 = 2048;
    v148 = a7;
    v149 = 2048;
    v150 = v37;
    v151 = 2048;
    v152 = a9;
    v153 = 2048;
    v154 = v27;
    v155 = 2048;
    v156 = v118;
    v157 = 2048;
    v158 = v30;
    v159 = 2048;
    v160 = v39;
    v161 = 2048;
    v162 = v133[0];
    v163 = 2048;
    v164 = v133[1];
    _os_log_impl(&dword_2720B1000, v40, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] starting UID sync for %@ (selected mailbox: %@) idRange=%@ limit=%lu topUIDToCompact=%lu topKnownUID=%lu UIDCount=%lu lowUID=%lu highUID=%lu libraryDetailsIndex=%lu libraryDetailsUIDRange=%lu:%lu", buf, 0x8Eu);
  }

  if (v30 < v118)
  {
    v117 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v109 = 0;
    v110 = 0;
    goto LABEL_102;
  }

  v117 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v109 = 0;
  v110 = 0;
  v120 = v123 - 1;
  do
  {
    if (v30 >= v133[0])
    {
      v122 = v47;
      v124 = v46;
    }

    else
    {
      v130 = v47;
      v131 = v46;
      v129 = v45;
      LOBYTE(v108) = 0;
      [(MFLibraryIMAPStore *)self _performActionsOnConnection:v116 uidsToFetch:&v131 uidsToSync:&v130 messagesToCompact:&v129 libraryDetails:v36 flagSearchResults:v115 shouldForce:v108 newUIDsToFetch:&v132];
      v124 = v131;

      v122 = v130;
      v48 = v129;

      v49 = [(MFLibraryStore *)self library];
      v50 = v133[0];
      v51 = [(MFLibraryStore *)self URLString];
      v52 = [v49 getDetailsForMessages:v114 absoluteBottom:v118 topOfDesiredRange:v50 - 1 range:v133 fromMailbox:v51];

      v39 = [v52 count] - 1;
      v45 = v48;
      v36 = v52;
    }

    v53 = [(_anonymous_namespace_::staticLogger_t *)v119 objectAtIndex:v120];
    v54 = [v53 intValue];
    v55 = v54;
    v57 = *a13 != 0x7FFFFFFFFFFFFFFFLL && v30 >= *a13;
    v58 = a7 != 0 || v57;
    if (!a7 && v57)
      v59 = {;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [(MFMailMessageStore *)self mailboxUid];
        v61 = [v60 mambaID];
        v62 = *a13;
        *buf = 136315650;
        v138 = v61;
        v139 = 2080;
        v140 = " ";
        v141 = 2048;
        v142 = v62;
        _os_log_impl(&dword_2720B1000, v59, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] preserving UID %lu!", buf, 0x20u);
      }
    }

    if (v30 == v55 && v58)
    {
      if (v39 < 0)
      {
LABEL_54:
        v65 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        while (1)
        {
          v63 = [v36 objectAtIndex:v39];
          v64 = [v63 uid];

          v65 = v64;
          if (v30 >= v64)
          {
            break;
          }

          if (!v45)
          {
            v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v45 = v54;
          }
          v66 = ;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = [(MFMailMessageStore *)self mailboxUid];
            v68 = [v67 mambaID];
            v69 = [v36 objectAtIndex:v39];
            v70 = [v69 uid];
            *buf = 136315650;
            v138 = v68;
            v139 = 2080;
            v140 = " ";
            v141 = 2048;
            v142 = v70;
            _os_log_impl(&dword_2720B1000, v66, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] Compacting %lu (1)", buf, 0x20u);
          }

          v71 = [v36 objectAtIndex:v39];
          [(_anonymous_namespace_::staticLogger_t *)v45 addObject:v71];

          if (v39-- < 1)
          {
            goto LABEL_54;
          }
        }
      }

      if (v65 != v30)
      {
        if (!v124)
        {
          v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v124 = v54;
        }
        v80 = ;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v81 = [(MFMailMessageStore *)self mailboxUid];
          v82 = [v81 mambaID];
          *buf = 136315650;
          v138 = v82;
          v139 = 2080;
          v140 = " ";
          v141 = 2048;
          v142 = v30;
          _os_log_impl(&dword_2720B1000, v80, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] Fetching %lu", buf, 0x20u);
        }

        [(_anonymous_namespace_::staticLogger_t *)v124 insertObject:v53 atIndex:0];
        if (v55 > a9)
        {
          ++v132;
          ++v110;
        }

        v83 = a7 - 1;
        if (!a7)
        {
          v83 = 0;
        }

        a7 = v83;
        ++v117;
        goto LABEL_91;
      }

      v76 = [v36 objectAtIndex:v39];
      v77 = v76;
      v78 = *(v76 + 3);
      if ((v78 & 0x80) != 0)
      {
        LODWORD(v79) = 1;
      }

      else
      {
        v79 = (v78 >> 20) & 1;
        if ((v78 & 0x100000) == 0 && !v111)
        {
LABEL_90:

          --v39;
LABEL_91:
          --v120;
          goto LABEL_92;
        }
      }

      if (!v122)
      {
        v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v122 = v76;
      }
      v88 = ;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v89 = [(MFMailMessageStore *)self mailboxUid];
        v90 = [v89 mambaID];
        *buf = 136315650;
        v138 = v90;
        v139 = 2080;
        v140 = " ";
        v141 = 2048;
        v142 = v30;
        _os_log_impl(&dword_2720B1000, v88, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] Syncing %lu", buf, 0x20u);
      }

      v91 = v53;
      [v122 vf_insertObject:v91 usingComparator:&__block_literal_global_0 allowDuplicates:0];
      if (v79)
      {
        v92 = [(MFLibraryStore *)self library];
        v93 = [v92 messageWithLibraryID:v77[4] options:0 inMailbox:0];

        if (v93)
        {
          v94 = v109;
          if (!v109)
          {
            v94 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v109 = v94;
          [v94 addObject:v93];
        }
      }

      v95 = a7 - 1;
      if (!a7)
      {
        v95 = 0;
      }

      a7 = v95;

      ++v117;
      goto LABEL_90;
    }

    if (v39 < 0)
    {
      v75 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v73 = [v36 objectAtIndex:v39];
      v74 = [v73 uid];

      v75 = v74;
    }

    if (v75 == v30)
    {
      if (!v45)
      {
        v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v45 = v54;
      }
      v84 = ;
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = [(MFMailMessageStore *)self mailboxUid];
        v86 = [v85 mambaID];
        *buf = 136315650;
        v138 = v86;
        v139 = 2080;
        v140 = " ";
        v141 = 2048;
        v142 = v30;
        _os_log_impl(&dword_2720B1000, v84, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] Compacting %lu (2)", buf, 0x20u);
      }

      v87 = [v36 objectAtIndex:v39];
      [(_anonymous_namespace_::staticLogger_t *)v45 addObject:v87];

      --v39;
    }

LABEL_92:
    v47 = v122;
    v46 = v124;
    v96 = v30 == 0;
    if (v30)
    {
      --v30;
    }

    else
    {
      v30 = 0;
    }

    v97 = v30 < v118 || v96;
  }

  while ((v97 & 1) == 0);
  if (v109)
  {
    v135[0] = @"MessageIsServerSearchResult";
    v135[1] = @"MessageIsThreadSearchResult";
    v136[0] = MEMORY[0x277CBEC28];
    v136[1] = MEMORY[0x277CBEC28];
    v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];
    v99 = [(MFLibraryStore *)self setFlagsLocallyFromDictionary:v98 forMessages:v109];
  }

  else
  {
    v109 = 0;
  }

LABEL_102:
  if (a14)
  {
    *a14 = v110;
  }

  v127 = v47;
  v128 = v46;
  v126 = v45;
  LOBYTE(v108) = 1;
  [(MFLibraryIMAPStore *)self _performActionsOnConnection:v116 uidsToFetch:&v128 uidsToSync:&v127 messagesToCompact:&v126 libraryDetails:v36 flagSearchResults:v115 shouldForce:v108 newUIDsToFetch:&v132];
  v100 = v128;

  v101 = v127;
  v102 = v126;

LABEL_105:
  if (a10)
  {
    *a10 = v134;
  }
  v103 = ;
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    v104 = [(MFMailMessageStore *)self mailboxUid];
    v105 = [v104 mambaID];
    *buf = 136315650;
    v138 = v105;
    v139 = 2080;
    v140 = " ";
    v141 = 2048;
    v142 = v117;
    _os_log_impl(&dword_2720B1000, v103, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] _fetchMessagesWithArguments returns %lu", buf, 0x20u);
  }

  v106 = *MEMORY[0x277D85DE8];
  return v117;
}

- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__MFLibraryIMAPStore_updateDeletedCountWithNotDeletedCount___block_invoke;
  v6[3] = &unk_279E33748;
  v6[4] = self;
  v6[5] = a3;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v6];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [MEMORY[0x277CCAB88] notificationWithName:@"StoreServerCountChanged" object:self userInfo:0];
  [v4 postNotification:v5];

  *(self + 145) &= ~0x10u;
}

void __60__MFLibraryIMAPStore_updateDeletedCountWithNotDeletedCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:*", objc_msgSend(*(*(a1 + 32) + 48), "minID")];
  *(*(a1 + 32) + 176) = [v3 countForSearchOfIDSet:v4 forTerms:&unk_288175638 success:&v6];

  v5 = *(a1 + 40);
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1 + 32) + 128) = *(*(a1 + 32) + 176) + v5;
  }
}

- (BOOL)_shouldContinueToPreservedUID:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  v5 = [(MFLibraryIMAPStore *)self messageForRemoteID:v4];

  if (v5)
  {
    v6 = ([v5 messageFlags] & 0x80) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAdditionalFetchHeaders:(id)a3
{
  v6 = a3;
  _MFLockGlobalLock();
  if (self->_additionalFetchHeaders != v6)
  {
    v4 = [(NSArray *)v6 copy];
    additionalFetchHeaders = self->_additionalFetchHeaders;
    self->_additionalFetchHeaders = v4;
  }

  _MFUnlockGlobalLock();
}

- (void)setAdditionalSynchronizationSearchArguments:(id)a3
{
  v6 = a3;
  _MFLockGlobalLock();
  if (self->_additionalSynchronizationSearchArguments != v6)
  {
    v4 = [(NSArray *)v6 copy];
    additionalSynchronizationSearchArguments = self->_additionalSynchronizationSearchArguments;
    self->_additionalSynchronizationSearchArguments = v4;
  }

  _MFUnlockGlobalLock();
}

- (id)_searchArgumentsForSynchronize
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"NOT", @"DELETED", 0}];
  _MFLockGlobalLock();
  if (self->_additionalSynchronizationSearchArguments)
  {
    [v3 addObjectsFromArray:?];
  }

  _MFUnlockGlobalLock();

  return v3;
}

- (unint64_t)growFetchWindow
{
  self->_highestModSequence = 0;
  self->_lastHighestModSequence = 0;
  v3.receiver = self;
  v3.super_class = MFLibraryIMAPStore;
  return [(MFLibraryStore *)&v3 growFetchWindow];
}

- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v23 = a4;
  v8 = [(MFMailMessageStore *)self mailboxUid];
  v9 = +[MFActivityMonitor currentMonitor];
  [v9 setMailbox:v8];
  v11 = ;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MFMailMessageStore *)self mailboxUid];
    v13 = [v12 mambaID];
    v14 = [(MFMailMessageStore *)self account];
    v15 = [v14 hostname];
    *buf = 136315650;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2112;
    v36 = v15;
    _os_log_impl(&dword_2720B1000, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: Connecting... starting", buf, 0x20u);
  }

  [(MFLibraryStore *)self willFetchMessages];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v36 = -1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if ((a5 & 0x40) != 0)
  {
    v16 = 49;
  }

  else
  {
    v16 = 17;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke;
  v24[3] = &unk_279E33770;
  v24[4] = self;
  v29 = a3;
  v17 = v23;
  v25 = v17;
  v30 = a5;
  v18 = v8;
  v26 = v18;
  v27 = buf;
  v28 = &v31;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:v16 operation:v24];
  v19 = +[MFActivityMonitor currentMonitor];
  [v19 reset];

  v20 = *(*&buf[8] + 24);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v20 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(buf, 8);

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke(uint64_t a1, void *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v80 = a2;
  v77 = [*(a1 + 32) mailboxName];
  v3 = [v80 selectedMailbox];
  v76 = v3;
  if (v77)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || ([v77 isEqualToString:v3] & 1) != 0)
  {
    goto LABEL_20;
  }

  v5 = [v80 isValid];
  v7 = v6 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v72 = [*(a1 + 32) mailboxUid];
    v73 = [v72 mambaID];
    v74 = @"NO";
    *buf = 136316418;
    *&buf[4] = v73;
    v89 = 2080;
    v90 = " ";
    v91 = 2112;
    if (v6)
    {
      v74 = @"YES";
    }

    v92 = v77;
    v93 = 2112;
    v94 = v76;
    v95 = 2048;
    v96 = v80;
    v97 = 2112;
    v98 = v74;
    _os_log_error_impl(&dword_2720B1000, v7, OS_LOG_TYPE_ERROR, "#E %s%s[FetchActivity] store and connection mailboxes differ: store=%@ connection=%@ (%p, valid: %@)", buf, 0x3Eu);
  }

  if (v6)
  {
    v9 = [*(a1 + 32) _selectMailbox:v77 withConnection:v80];
    if (v9)
    {
      v10 = 0;
      goto LABEL_15;
    }
    v11 = ;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) mailboxUid];
      __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_2([v13 mambaID], v87, v11, v13);
    }
  }

  else
    v11 = {;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) mailboxUid];
      __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_1([v12 mambaID], v87, v11, v12);
    }
  }

  v10 = 1;
LABEL_15:
  if (isInternalDevice())
  {
    v14 = vm_imap_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_3(v14);
    }
  }

  if ((v10 & 1) == 0)
  {
LABEL_20:
    v81 = *(a1 + 72);
    [v80 setIsFetching:1];
    v15 = +[MFActivityMonitor currentMonitor];
    [v15 notifyConnectionEstablished];
    v17 = ;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) mailboxUid];
      v19 = [v18 mambaID];
      v20 = [*(a1 + 32) account];
      v21 = [v20 hostname];
      *buf = 136315650;
      *&buf[4] = v19;
      v89 = 2080;
      v90 = " ";
      v91 = 2112;
      v92 = v21;
      _os_log_impl(&dword_2720B1000, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: Connecting... completed", buf, 0x20u);
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = [v22 intValue];
    }

    else
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v85 = v23;
    v24 = *(a1 + 32);
    v75 = v24[16];
    v79 = *(a1 + 80);
    if ((v79 & 4) != 0)
    {
      v25 = [v24 account];
      v26 = [v25 library];
      v27 = [*(a1 + 48) URLString];
      v28 = [v26 minimumRemoteIDForMailbox:v27];

      if (v28)
      {
        v29 = [v80 getMailboxIDForUID:v28];
        if (v29)
        {
          v30 = v81;
          v75 = v29 - 1;
          if (v75 < v81)
          {
            v30 = v29 - 1;
          }

          v81 = v30;
        }

        else
        {
          v75 = *(*(a1 + 32) + 128);
        }

        v34 = (v28 - 1);
      }

      else
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v78 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = [v24 library];
      v32 = [*(a1 + 32) URLString];
      v33 = [v31 maximumRemoteIDForMailbox:v32];

      v34 = v33;
      v78 = v33;
    }

    v35 = [*(*(a1 + 32) + 48) minID];
    v36 = v81 - 1;
    if (v81 <= 1)
    {
      v36 = 1;
    }

    v37 = v75 - 1;
    if (v75 <= 1)
    {
      v37 = 1;
    }

    if (v75 <= v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = v36;
    }

    if (v75 <= v36)
    {
      v39 = v35;
    }

    else
    {
      v39 = v75 - v36;
    }

    v84 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v83 = xmmword_27216FFB0;
    v82 = 0;
    if ([v80 supportsCapability:17])
    {
      v40 = *(a1 + 32);
      v41 = v40[25];
      if (!v41)
      {
        goto LABEL_53;
      }

      if (v41 != v40[24])
      {
        goto LABEL_50;
      }

      v42 = [v40 mailboxName];
      v86 = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      [v80 fetchStatusForMailboxes:v43 args:&unk_288175650];

      v40 = *(a1 + 32);
      v41 = v40[25];
      if (v41)
      {
LABEL_50:
        v44 = v40[24];
        v40[24] = v41;
        if ((v79 & 4) == 0 && v41 == v44)
        {
          [v80 setIsFetching:0];
LABEL_103:
          if ((v79 & 0x20) != 0)
          {
            [*(a1 + 32) _fetchServerUnreadCountWithConnection:v80];
          }

          goto LABEL_105;
        }
      }

      else
      {
LABEL_53:
        v40[24] = 0;
      }
    }

    v45 = 0;
    v46 = v81;
    do
    {
      if (*(*(*(a1 + 56) + 8) + 24) >= v81 && (v85 == 0x7FFFFFFFFFFFFFFFLL || ![*(a1 + 32) _shouldContinueToPreservedUID:?] || v83 <= v85) || !v38 || v45 || (v84 & 1) == 0)
      {
        break;
      }

      *buf = 0;
      if (v39 + v38 >= *(*(a1 + 32) + 128))
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:*", v39];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:%lu", v39, v39 + v38];
      }
      v47 = ;
      v48 = [*(a1 + 32) _searchArgumentsForSynchronize];
      v49 = [*(a1 + 32) _fetchMessagesWithArguments:v48 idRange:v47 onConnection:v80 synchronize:(v79 & 8) == 0 limit:v81 - *(*(*(a1 + 56) + 8) + 24) topUIDToCompact:v34 topKnownUID:v78 success:&v84 examinedRange:&v83 fetchableUIDsFound:&v82 preserveUID:&v85 numFetchedUIDs:buf];
      v50 = v49;
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(*(*(a1 + 56) + 8) + 24) += v49;
      }

      *(*(*(a1 + 64) + 8) + 24) += *buf;
      v51 = [*(*(a1 + 32) + 48) minID];
      v46 *= 2;
      v45 = v51 == v39;
      if (v51 != v39)
      {
        v52 = v83;
        v53 = [*(*(a1 + 32) + 48) minID];
        v54 = v52 - 1;
        if (!v52)
        {
          v54 = 0;
        }

        if (v52 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v34 = v54;
        }

        v55 = v39 - 1;
        v56 = v46 - 1;
        if (!v46)
        {
          v56 = 1;
        }

        v57 = v39 - 2;
        if (v55 <= 1)
        {
          v57 = 1;
        }

        v58 = v55 > v56;
        v59 = v55 - v56;
        if (v58)
        {
          v38 = v56;
        }

        else
        {
          v38 = v57;
        }

        if (v58)
        {
          v39 = v59;
        }

        else
        {
          v39 = v53;
        }
      }

      [*(a1 + 32) _updateSelectedUID:&v85];
    }

    while (v50 != 0x7FFFFFFFFFFFFFFFLL);
    v60 = [v80 setIsFetching:0];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v61 = (v79 >> 1) & 1;
    }

    else
    {
      v61 = 1;
    }

    if (v45)
    {
      v62 = *(a1 + 32);
      if (v75 == *(v62 + 128) && (*(v62 + 145) & 0x10) == 0)
      {
        *(v62 + 145) |= 0x10u;
        v60 = [*(a1 + 32) updateDeletedCountWithNotDeletedCount:v82];
      }
    }

    if (v84 == 1)
    {
      if (v61)
      {
        if (*(*(*(a1 + 56) + 8) + 24) | v79 & 4)
        {
          if (v83 && v83 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v63 = v85 - 1;
            if (v83 - 1 < v85 - 1)
            {
              v63 = v83 - 1;
            }

            if (v85 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v64 = v83 - 1;
            }

            else
            {
              v64 = v63;
            }
            v65 = ;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = [*(a1 + 32) mailboxUid];
              v67 = [v66 mambaID];
              *buf = 136315650;
              *&buf[4] = v67;
              v89 = 2080;
              v90 = " ";
              v91 = 2048;
              v92 = v64;
              _os_log_impl(&dword_2720B1000, v65, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] Compacting messages with UIDs <= %lu", buf, 0x20u);
            }

            compactMessagesToUID(*(a1 + 32), v64);
          }
        }

        else
          v69 = {;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = [*(a1 + 32) mailboxUid];
            v71 = [v70 mambaID];
            *buf = 136315394;
            *&buf[4] = v71;
            v89 = 2080;
            v90 = " ";
            _os_log_impl(&dword_2720B1000, v69, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] Compacting all messages", buf, 0x16u);
          }

          compactMessagesToUID(*(a1 + 32), 0x7FFFFFFFFFFFFFFFLL);
        }
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = -1;
    }

    goto LABEL_103;
  }

LABEL_105:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)updateServerUnreadCountClosingConnection:(BOOL)a3
{
  if (a3)
  {
    v3 = 33;
  }

  else
  {
    v3 = 1;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__MFLibraryIMAPStore_updateServerUnreadCountClosingConnection___block_invoke;
  v4[3] = &unk_279E33798;
  v4[4] = self;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:v3 operation:v4];
}

- (void)_fetchServerUnreadCountWithConnection:(id)a3
{
  v4 = a3;
  v23 = 0;
  v5 = [(MFLibraryStore *)self library];
  v6 = [v5 canProvideMinimumRemoteID];

  if (v6 && (-[MFLibraryStore library](self, "library"), v7 = objc_claimAutoreleasedReturnValue(), -[MFLibraryStore URLString](self, "URLString"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 minimumRemoteIDForMailbox:v8], v8, v7, v9 >= 2))
  {
    v10 = [v4 messageSetForRange:((v9 - 1) << 32) | 1];
    v11 = [(MFLibraryStore *)self mailbox];
    if ([v11 shouldUseNonDeletedForUnreadCount])
    {
      v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"UNDELETED", 0}];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"UNSEEN", @"UNDELETED", 0}];
    }

    v13 = v12;

    v14 = [v4 countForSearchOfUidSet:v10 forTerms:v13 success:&v23];
    if (v23 == 1)
    {
      [(MFLibraryIMAPStore *)self _updateServerUnreadCount:v14];
    }
  }

  else
  {
    [(MFLibraryIMAPStore *)self _updateServerUnreadCount:0];
  }

  v15 = [(MFLibraryStore *)self mailbox];
  v16 = [v15 shouldUseNonDeletedForUnreadCount];

  if ((v16 & 1) == 0)
  {
    v17 = [v4 countForSearchOfUidSet:@"1:*" forTerms:&unk_288175668 success:&v23];
    if (v23 == 1)
    {
      v18 = v17;
      v19 = [(MFLibraryStore *)self URLString];
      if (v19)
      {
        v20 = [(MFLibraryStore *)self library];
        [v20 setLastSyncAndMostRecentStatusCount:v18 forMailbox:v19];
      }
    }
  }

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  v22 = [(MFMailMessageStore *)self mailboxUid];
  [v21 postNotificationName:@"MailboxUserInfoDidChange" object:v22];
}

- (void)_updateServerUnreadCount:(unint64_t)a3
{
  v6 = [(MFLibraryStore *)self library];
  v5 = [(MFLibraryStore *)self URLString];
  [v6 setServerUnreadOnlyOnServerCount:a3 forMailbox:v5];
}

- (id)_newSearchResponseQueueForConnection:(id)a3 limit:(unsigned int)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MFSearchResponseQueue);
  v7->limit = a4;
  v8 = [(MFLibraryStore *)self URLString];
  url = v7->super._url;
  v7->super._url = v8;

  objc_storeStrong(&v7->super._store, self);
  connection = v7->super._connection;
  v7->super._connection = v6;

  v7->super._shouldCompact = 0;
  v7->super._shouldFetch = 1;
  v7->super._isSearching = 1;
  return v7;
}

- (void)_fetchMessagesMatchingCriterion:(id)a3 limit:(unsigned int)a4 withOptions:(unsigned int)a5 handler:(id)a6
{
  v33[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v33[0] = v10;
  v33[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v14 = [MFMessageCriterion andCompoundCriterionWithCriteria:v13];

  v15 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __80__MFLibraryIMAPStore__fetchMessagesMatchingCriterion_limit_withOptions_handler___block_invoke;
  v23 = &unk_279E337C0;
  v16 = v15;
  v24 = v16;
  v17 = v11;
  v26 = v17;
  v27 = &v29;
  v25 = self;
  v28 = a4;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:a5 | 1 operation:&v20];
  if ((v30[3] & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"LibraryIMAPStoreErrorDomain" code:2 userInfo:{0, v20, v21, v22, v23, v24}];
    (*(v17 + 2))(v17, 0x7FFFFFFFFFFFFFFFLL, 0, v18);
  }

  _Block_object_dispose(&v29, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __80__MFLibraryIMAPStore__fetchMessagesMatchingCriterion_limit_withOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v4 = 0;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = fetchArgumentsForCriterion(*(*(&v16 + 1) + 8 * i), 1);
        if (!v8)
        {
          v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"LibraryIMAPStoreErrorDomain" code:1 userInfo:0];
          (*(*(a1 + 48) + 16))();
          *(*(*(a1 + 56) + 8) + 24) = 1;

          goto LABEL_13;
        }

        v9 = [*(a1 + 40) _newSearchResponseQueueForConnection:v3 limit:(*(a1 + 64) - v4)];
        [v3 sendUidResponsesForSearchArguments:v8 toQueue:v9];
        [v9 flush];
        v10 = v9[7];
        if (v10)
        {
          v4 += [*(a1 + 40) fetchMessagesWithUIDs:v10 connection:v3 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:128 queueClass:objc_opt_class()];
        }

        v11 = [v9 indexSet];
        [v15 addIndexes:v11];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) _fetchServerUnreadCountWithConnection:v3];
  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)messageIdRollCall:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__MFLibraryIMAPStore_messageIdRollCall___block_invoke;
  v8[3] = &unk_279E337E8;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:17 operation:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __40__MFLibraryIMAPStore_messageIdRollCall___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 _uidsForMessageIDs:*(a1 + 32) excludeDeleted:1];
  if (![v3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
    goto LABEL_5;
  }

  v4 = [v3 count];
  if (v4 == [*(a1 + 32) count])
  {
    v5 = [*(a1 + 32) copy];
LABEL_5:
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    goto LABEL_7;
  }

  v7 = [v13 fetchMessageIdsForUids:v3];
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = [v7 allValues];
  v10 = [v8 initWithArray:v9];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

uint64_t __59__MFLibraryIMAPStore_fetchMessagesMatchingCriterion_limit___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

void __76__MFLibraryIMAPStore_storeSearchResultMatchingCriterion_limit_offset_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  if (v12)
  {
    for (i = [v12 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v12, "indexGreaterThanIndex:", i))
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v10 = [v9 stringValue];
      v11 = [*(a1 + 32) mailboxUid];
      [v8 addRemoteID:v10 mailbox:v11];
    }
  }

  if (*(a1 + 48))
  {
    **(a1 + 48) = [v6 copy];
  }
}

- (int64_t)fetchMessagesWithMessageIDs:(id)a3 andSetFlags:(unint64_t)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  if ([v6 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__MFLibraryIMAPStore_fetchMessagesWithMessageIDs_andSetFlags___block_invoke;
    v9[3] = &unk_279E33860;
    v10 = v6;
    v11 = self;
    v12 = &v14;
    v13 = a4;
    [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v9];
  }

  v7 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __62__MFLibraryIMAPStore_fetchMessagesWithMessageIDs_andSetFlags___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 _uidsForMessageIDs:a1[4] excludeDeleted:0];
  v4 = a1[5];
  v5 = [v3 allObjects];
  *(*(a1[6] + 8) + 24) = [v4 fetchMessagesWithUIDs:v5 connection:v6 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:a1[7] queueClass:objc_opt_class()];
}

- (int64_t)fetchMessagesWithRemoteIDs:(id)a3 andSetFlags:(unint64_t)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  if ([v6 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__MFLibraryIMAPStore_fetchMessagesWithRemoteIDs_andSetFlags___block_invoke;
    v9[3] = &unk_279E33888;
    v11 = &v13;
    v9[4] = self;
    v10 = v6;
    v12 = a4;
    [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:17 operation:v9];
  }

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __61__MFLibraryIMAPStore_fetchMessagesWithRemoteIDs_andSetFlags___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) allObjects];
  *(*(*(a1 + 48) + 8) + 24) = [v3 fetchMessagesWithUIDs:v4 connection:v5 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:*(a1 + 56) queueClass:objc_opt_class()];
}

- (void)removeAllLocalMessages
{
  v4 = [(MFLibraryStore *)self copyOfAllMessagesWithOptions:+[MFLibraryStore defaultLoadOptions]];
  if (v4)
  {
    v3 = [(MFLibraryStore *)self library];
    [v3 compactMessages:v4];
  }

  [(MFMailMessageStore *)self _flushAllMessageData];
  [(MFMailMessageStore *)self structureDidChange];
}

- (id)mailboxName
{
  _MFLockGlobalLock();
  v3 = self->_mailboxName;
  _MFUnlockGlobalLock();

  return v3;
}

- (BOOL)canCompact
{
  v5.receiver = self;
  v5.super_class = MFLibraryIMAPStore;
  v3 = [(MFLibraryStore *)&v5 canCompact];
  if (v3)
  {
    if (self->super.super._state == 3)
    {
      if (([(MailAccount *)self->super.super._account isOffline]& 1) != 0)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = [(MailAccount *)self->super.super._account isOffline]^ 1;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)doCompact
{
  v9.receiver = self;
  v9.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v9 doCompact];
  v3 = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
  if (v3)
  {
    v4 = [(MFLibraryIMAPStore *)self deletedMessages];
    v5 = [v4 count];
    if (v5)
    {
      v6 = v5 - 1;
      do
      {
        v7 = [v4 objectAtIndex:v6];
        if ([v7 hasTemporaryUid])
        {
          [v3 expungeTemporaryUid:{objc_msgSend(v7, "uid")}];
        }

        --v6;
      }

      while (v6 != -1);
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__MFLibraryIMAPStore_doCompact__block_invoke;
    v8[3] = &unk_279E33798;
    v8[4] = self;
    [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v8];
  }
}

void __31__MFLibraryIMAPStore_doCompact__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if (([v11 expunge] & 1) == 0)
  {
    v3 = +[MFActivityMonitor currentMonitor];
    v4 = [v3 error];

    if (v4)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [*(*(a1 + 32) + 40) displayName];
      v7 = [*(*(a1 + 32) + 48) hostname];
      v8 = [v5 stringWithFormat:@"Mail was unable to remove the deleted messages in the mailbox “%@” on server “%@”.", v6, v7];
      v9 = [v4 useGenericDescription:v8];

      v10 = +[MFActivityMonitor currentMonitor];
      [v10 setError:v9];
    }
  }
}

void __66__MFLibraryIMAPStore_deleteMessagesOlderThanNumberOfDays_compact___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) account];
  v5 = [v4 _shouldLogDeleteActivity];

  if (v5)
    v7 = {;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) mailboxUid];
      v9 = [v8 mambaID];
      v10 = [*(a1 + 32) account];
      v11 = [v10 vf_publicDescription];
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v19 = 136316418;
      v20 = v9;
      v21 = 2080;
      v22 = " ";
      v23 = 2114;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v27 = 1024;
      v28 = v13;
      v29 = 2112;
      v30 = v3;
      _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sIMAP Account %{public}@ deleting messages from store: %@ older than %d days using connection: %@", &v19, 0x3Au);
    }
  }

  v14 = *(a1 + 32);
  v15 = [v14 mailboxName];
  LODWORD(v14) = [v14 _selectMailbox:v15 withConnection:v3];

  if (v14)
  {
    [v3 deleteMessagesOlderThanNumberOfDays:*(a1 + 48)];
  }

  if (*(a1 + 52) == 1)
  {
    [v3 close];
  }

  v16 = [*(a1 + 32) library];
  v17 = [v16 messagesForMailbox:*(a1 + 40) olderThanNumberOfDays:*(a1 + 48)];

  [*(a1 + 32) compactMessages:v17];
  v18 = *MEMORY[0x277D85DE8];
}

+ (void)setHandlerForTemporaryUidToRemoteIDMapping:(id)a3
{
  v3 = __remoteIDHandlerPred;
  v4 = a3;
  if (v3 != -1)
  {
    +[MFLibraryIMAPStore setHandlerForTemporaryUidToRemoteIDMapping:];
  }

  v5 = MEMORY[0x2743C3100](v4);

  v6 = __remoteIDHandler;
  __remoteIDHandler = v5;
}

uint64_t __50__MFLibraryIMAPStore_copyRemoteIDForTemporaryUid___block_invoke()
{
  __remoteIDHandler = [&__block_literal_global_238 copy];

  return MEMORY[0x2821F96F8]();
}

id __50__MFLibraryIMAPStore_copyRemoteIDForTemporaryUid___block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"temp-%lu", a2];

  return v2;
}

- (BOOL)_doUidCopy:(id *)a3 toStore:(id)a4 newMessages:(id)a5
{
  v8 = a4;
  v9 = a5;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy_;
  v54 = __Block_byref_object_dispose_;
  v55 = a3->var2;
  v10 = [v8 mailboxName];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = a3->var1;
  v11 = [(MFLibraryIMAPStore *)self _uidsForMessages:v39[5]];
  if (v45[5])
  {
    goto LABEL_3;
  }

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy_;
  v36[4] = __Block_byref_object_dispose_;
  v37 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __53__MFLibraryIMAPStore__doUidCopy_toStore_newMessages___block_invoke;
  v26[3] = &unk_279E338F8;
  v31 = &v56;
  v27 = v10;
  v32 = v36;
  v33 = &v44;
  v28 = v9;
  v29 = self;
  v34 = &v38;
  v35 = &v50;
  v30 = v8;
  [(MFLibraryIMAPStore *)self performBatchOperationWithUIDs:v11 requiringConnection:0 withOptions:17 operation:v26];

  _Block_object_dispose(v36, 8);
  if (v45[5])
  {
LABEL_3:
    v12 = [v39[5] count];
    v13 = v45[5];
    v14 = v39[5];
    v15 = [(MFLibraryIMAPStore *)self mailboxName];
    v16 = [v13 firstUidForCopyingMessages:v14 fromMailbox:v15 toMailbox:v10];

    for (i = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:v12]; v12; --v12)
    {
      v18 = [objc_opt_class() copyRemoteIDForTemporaryUid:v16];
      [i addObject:v18];

      v16 = (v16 + 1);
    }

    v19 = [(MFLibraryStore *)self library];
    v20 = v39[5];
    v21 = [v8 mailboxUid];
    LOBYTE(v25) = 1;
    v22 = [v19 duplicateMessages:v20 newRemoteIDs:i forMailbox:v21 setFlags:0x100000000 clearFlags:0 messageFlagsForMessages:v51[5] createNewCacheFiles:v25];

    *(v57 + 24) = 1;
    if (v9 && v22)
    {
      [v9 addEntriesFromDictionary:v22];
    }

    [v45[5] saveChanges];
  }

  v23 = *(v57 + 24);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v23;
}

void __53__MFLibraryIMAPStore__doUidCopy_toStore_newMessages___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(*(a1 + 72) + 8);
    v15 = *(v13 + 40);
    v14 = (v13 + 40);
    obj = v15;
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
    v14 = 0;
  }

  v17 = [v9 copyUids:v10 toMailboxNamed:v11 newMessageInfo:p_obj];
  if (v12)
  {
    objc_storeStrong(v14, obj);
  }

  *(*(*(a1 + 64) + 8) + 24) = v17;
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v18 = *(*(*(a1 + 88) + 8) + 40);
    v19 = *(a1 + 48);
    v20 = [*(a1 + 56) mailbox];
    v21 = [v19 _updateLibraryForTransferedMessages:v18 toDestinationMailbox:v20 newMessageInfo:*(*(*(a1 + 72) + 8) + 40) flagsToSet:*(*(*(a1 + 96) + 8) + 40)];

    v22 = *(a1 + 40);
    if (v22 && v21)
    {
      [v22 addEntriesFromDictionary:v21];
    }

    goto LABEL_17;
  }

  v23 = +[MFActivityMonitor currentMonitor];
  [v23 setError:0];

  if (!v9 || ([v9 isValid] & 1) == 0)
  {
    v24 = [*(a1 + 48) offlineCache];
    v25 = *(*(a1 + 80) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    if (a5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = [*(*(*(a1 + 88) + 8) + 40) subarrayWithRange:{a4, a5}];
      v28 = *(*(a1 + 88) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      v30 = *(*(*(a1 + 96) + 8) + 40);
      if (v30)
      {
        v31 = [v30 subarrayWithRange:{a4, a5}];
        v32 = *(*(a1 + 96) + 8);
        v21 = *(v32 + 40);
        *(v32 + 40) = v31;
LABEL_17:
      }
    }
  }
}

- (unint64_t)_doAppend:(id *)a3
{
  v5 = a3->var1;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = [v5 count];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v6 = [a3->var0 account];
  account = self->super.super._account;

  if (v6 == account)
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBEB38]);
    v11 = [v10 initWithCapacity:v42[3]];
    if ([a3->var0 _doUidCopy:a3 toStore:self newMessages:v11])
    {
      v12 = 1;
      a3->var4 = 1;
      v46[3] = 0;
      if (v42[3])
      {
        v13 = 0;
        v12 = 1;
        do
        {
          v14 = [v5 objectAtIndex:v13];
          v15 = [v11 objectForKey:v14];
          if (([v14 messageFlags] & 1) == 0)
          {
            ++a3->var9;
          }

          if (v15)
          {
            v16 = v36[5];
            if (!v16)
            {
              v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v18 = v36[5];
              v36[5] = v17;

              v16 = v36[5];
            }

            [v16 addObject:v15];
            _addIDForAppendedMessage([v15 uid], objc_msgSend(v15, "hasTemporaryUid"), a3->var7);
          }

          v13 = v46[3] + 1;
          v46[3] = v13;
        }

        while (v13 < v42[3]);
      }
    }

    else
    {
      [a3->var6 addObjectsFromArray:v5];
      v12 = 0;
    }

    v50[3] = v12;
  }

  else
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    v8 = +[MFActivityMonitor currentMonitor];
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy_;
    v31[4] = __Block_byref_object_dispose_;
    v32 = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __32__MFLibraryIMAPStore__doAppend___block_invoke;
    v21[3] = &unk_279E33920;
    v21[4] = self;
    v24 = v31;
    v25 = &v49;
    v26 = &v45;
    v27 = &v41;
    v22 = v5;
    v9 = v8;
    v23 = v9;
    v28 = &v35;
    v29 = v33;
    v30 = a3;
    [(MFLibraryIMAPStore *)self performOperationRequiringConnection:0 withOptions:1 operation:v21];

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);
  }

  if (v36[5])
  {
    [a3->var8 addObjectsFromArray:?];
  }

  v19 = v50[3];
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  return v19;
}

void __32__MFLibraryIMAPStore__doAppend___block_invoke(uint64_t a1, void *a2)
{
  v96[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (!(v3 | v4))
  {
    v5 = [*(a1 + 32) offlineCache];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 56) + 8) + 40);
  }

  v8 = !v4 || [*(a1 + 32) canPerformOfflineAppend];
  *(*(*(a1 + 64) + 8) + 24) = v8;
  *(*(*(a1 + 72) + 8) + 24) = 0;
  v9 = *(*(*(a1 + 72) + 8) + 24);
  v10 = *(*(*(a1 + 80) + 8) + 24);
  if (v9 < v10 && *(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v86 = *MEMORY[0x277CBEEE8];
    v80 = *MEMORY[0x277D06FE0];
    v90 = v3;
    while (1)
    {
      v93 = [*(a1 + 40) objectAtIndex:?];
      if (*(*(a1 + 32) + 24) == 4)
      {
        [*(a1 + 48) cancel];
      }

      if ([*(a1 + 48) shouldCancel])
      {
        *(*(*(a1 + 64) + 8) + 24) = 2;
      }

      v11 = *(a1 + 64);
      if (*(*(v11 + 8) + 24) != 1)
      {
        goto LABEL_73;
      }

      context = objc_autoreleasePoolPush();
      v12 = [v93 messageDataHolder];
      v89 = [v93 dateReceived];
      v13 = *(*(a1 + 104) + 16);
      if (v13)
      {
        v14 = [v13 objectAtIndex:*(*(*(a1 + 72) + 8) + 24)];
        v15 = v14;
        if (v14 == v86)
        {
        }

        else
        {
          v16 = [v14 unsignedIntValue];

          if (v16)
          {
            v17 = v16;
            goto LABEL_21;
          }
        }
      }

      v17 = [v93 messageFlags];
LABEL_21:
      v18 = MFCreateArrayForMessageFlags(v17 & 0xFFFFFFFFFFFFFFDFLL, 0);
      v19 = *(*(a1 + 104) + 24);
      if (v19)
      {
        v20 = [v19 objectAtIndex:*(*(*(a1 + 72) + 8) + 24)];
        v21 = v20;
        if (v20 == v86 || ![v20 count])
        {
          v88 = v18;
        }

        else if (v18)
        {
          v88 = [v18 mutableCopy];
          [v88 addObjectsFromArray:v21];
        }

        else
        {
          v88 = v21;
        }

        if (v17)
        {
          goto LABEL_29;
        }

LABEL_28:
        ++*(*(a1 + 104) + 72);
        goto LABEL_29;
      }

      v88 = v18;
      if ((v17 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_29:
      LOBYTE(v22) = 0;
      if (v90 && v12)
      {
        v23 = [*(a1 + 32) mailboxName];
        v92 = 0;
        LODWORD(v22) = [v90 appendData:v12 toMailboxNamed:v23 flags:v88 dateReceived:v89 newMessageInfo:&v92];
        v24 = v92;
        *(*(a1 + 104) + 32) = v22;

        if (v22)
        {
          v25 = [v24 objectForKey:@"Source UIDS"];
          v85 = [v25 unsignedIntValue];

          v26 = [v24 objectForKey:@"UIDVALIDITY"];
          v27 = [v26 unsignedIntValue];

          v28 = [*(*(a1 + 32) + 40) userInfoObjectForKey:@"UIDVALIDITY"];
          v29 = [v28 intValue];

          if (v85)
          {
            goto LABEL_35;
          }

          v43 = [v93 headers];
          v44 = [v43 firstHeaderForKey:v80];

          if (v44)
          {
            v45 = *(a1 + 32);
            v46 = *(*(a1 + 104) + 76);
            v96[0] = v44;
            v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:1];
            v47 = _uidSearchForMessageIds(v45, v46, v84);
            v48 = [v47 lastObject];
            v85 = [v48 unsignedIntValue];

            if (v85)
            {
LABEL_35:
              if (!v27 || !v29 || v27 == v29)
              {
                if (!v29)
                {
                  [*(a1 + 32) setMailboxUidValidity:v27];
                }

                v83 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:&v93 count:1];
                v30 = objc_alloc(MEMORY[0x277CBEA60]);
                v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v85];
                v82 = [v30 initWithObjects:{v31, 0}];

                v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v33 = objc_alloc_init(_MFWholeMessageSection);
                [(_MFWholeMessageSection *)v33 setDataHolder:v12];
                v34 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v33, 0}];
                v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v93, 0}];
                v35 = [*(a1 + 32) library];
                v36 = [*(a1 + 32) mailboxUid];
                LOWORD(v79) = 0;
                v37 = [v35 addMessages:v83 withMailbox:v36 fetchBodies:0 newMessagesByOldMessage:v32 remoteIDs:v82 setFlags:v17 & 0x1BFDDF7FFFFLL clearFlags:v17 & 0x1BADDF7FFFFLL ^ 0x1BFDDF7FFFFLL messageFlagsForMessages:0 copyFiles:v79 addPOPUIDs:v81 dataSectionsByMessage:?];

                v38 = [v32 objectForKey:v93];
                v91 = v38;
                if (v38)
                {
                  v39 = *(*(*(a1 + 88) + 8) + 40);
                  if (v39)
                  {
                    [v39 addObject:v38];
                  }

                  else
                  {
                    v49 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithObjects:&v91 count:1];
                    v50 = *(*(a1 + 88) + 8);
                    v51 = *(v50 + 40);
                    *(v50 + 40) = v49;
                  }

                  if ([*(*(a1 + 32) + 48) cachePolicy] != 2)
                  {
                    v52 = [*(a1 + 32) library];
                    v53 = [v12 data];
                    [v52 setData:v53 forMessage:v91 isPartial:0];
                  }
                }
              }

              _addIDForAppendedMessage(v85, 0, *(*(a1 + 104) + 56));
            }
          }
        }

        else if (([v90 isValid] & 1) == 0)
        {

          if (!*(*(*(a1 + 56) + 8) + 40))
          {
            v40 = [*(a1 + 32) offlineCache];
            v41 = *(*(a1 + 56) + 8);
            v42 = *(v41 + 40);
            *(v41 + 40) = v40;
          }

          v90 = 0;
          if ([*(a1 + 32) canPerformOfflineAppend])
          {
            [*(a1 + 48) setError:0];
          }

          else
          {
            *(*(*(a1 + 64) + 8) + 24) = 0;
          }
        }
      }

      v54 = *(*(*(a1 + 56) + 8) + 40);
      if (v54 && v12 && *(*(*(a1 + 64) + 8) + 24) == 1)
      {
        v55 = [v12 data];
        v56 = [*(a1 + 32) mailboxName];
        v57 = [v54 uidForAppendingMessageData:v55 withFlags:v88 andInternalDate:v89 toMailbox:v56];

        if (v57)
        {
          v95 = v93;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
          v58 = *(a1 + 32);
          v59 = [objc_opt_class() copyRemoteIDForTemporaryUid:v57];
          v94 = v59;
          v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];

          v61 = [*(a1 + 32) library];
          v62 = [*(a1 + 32) mailboxUid];
          LOBYTE(v78) = 0;
          v63 = [v61 duplicateMessages:v22 newRemoteIDs:v60 forMailbox:v62 setFlags:v17 & 0x1BEDDF7FFFFLL | 0x100000000 clearFlags:v17 & 0x1BADDF7FFFFLL ^ 0x1BEDDF7FFFFLL messageFlagsForMessages:0 createNewCacheFiles:v78];

          v64 = [v63 objectForKey:v93];
          v91 = v64;
          if (v64)
          {
            v65 = *(*(a1 + 104) + 40);
            if (!v65)
            {
              v66 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:*(*(*(a1 + 80) + 8) + 24) - *(*(*(a1 + 72) + 8) + 24)];
              v67 = *(a1 + 104);
              v68 = *(v67 + 40);
              *(v67 + 40) = v66;

              v65 = *(*(a1 + 104) + 40);
              v64 = v91;
            }

            [v65 addObject:v64];
            _addIDForAppendedMessage(v57, 1, *(*(a1 + 104) + 56));
            v69 = [*(a1 + 32) library];
            v70 = [v12 data];
            [v69 setData:v70 forMessage:v91 isPartial:0];

            v71 = *(*(*(a1 + 88) + 8) + 40);
            if (v71)
            {
              [v71 addObject:v91];
            }

            else
            {
              v72 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithObjects:&v91 count:1];
              v73 = *(*(a1 + 88) + 8);
              v74 = *(v73 + 40);
              *(v73 + 40) = v72;
            }
          }

          *(*(*(a1 + 96) + 8) + 24) = 1;

          LOBYTE(v22) = 1;
        }

        else
        {
          LOBYTE(v22) = 0;
        }
      }

      objc_autoreleasePoolPop(context);
      v11 = *(a1 + 64);
      if ((v22 & 1) == 0)
      {
        *(*(v11 + 8) + 24) = 0;
        v11 = *(a1 + 64);
      }

LABEL_73:
      if (*(*(v11 + 8) + 24) != 1)
      {
        [*(*(a1 + 104) + 48) addObject:v93];
      }

      v9 = ++*(*(*(a1 + 72) + 8) + 24);
      v10 = *(*(*(a1 + 80) + 8) + 24);
      if (v9 >= v10 || *(*(*(a1 + 64) + 8) + 24) != 1)
      {
        goto LABEL_80;
      }
    }
  }

  v90 = v3;
LABEL_80:
  while (v9 < v10)
  {
    v75 = *(*(a1 + 104) + 48);
    v76 = [*(a1 + 40) objectAtIndex:?];
    [v75 addObject:v76];

    v9 = ++*(*(*(a1 + 72) + 8) + 24);
    v10 = *(*(*(a1 + 80) + 8) + 24);
  }

  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    [*(*(*(a1 + 56) + 8) + 40) saveChanges];
  }

  v77 = *MEMORY[0x277D85DE8];
}

- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7 customIMAPFlagsToSet:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v45 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v14 count];
  if ([(MFLibraryIMAPStore *)self allowsAppend])
  {
    if (v19)
    {
      v49 = 0;
      *location = 0u;
      v47 = 0u;
      v48 = 0;
      v43 = v15;
      v41 = v15;
      v42 = v16;
      v50 = v41;
      v51 = v16;
      v20 = 0;
      v21 = 0;
      v52 = v45;
      v53 = 0;
      do
      {
        v22 = [v14 objectAtIndex:v20];
        v23 = [v22 messageStore];
        if (location[0] == v23)
        {
          v27 = 1;
        }

        else
        {
          if (v21 >= v20)
          {
            v27 = 1;
          }

          else
          {
            v24 = [v14 subarrayWithRange:{v21, v20 - v21}];
            v25 = location[1];
            location[1] = v24;

            if (v17)
            {
              v26 = [v17 subarrayWithRange:{v21, v20 - v21}];
            }

            else
            {
              v26 = 0;
            }

            v28 = v47;
            *&v47 = v26;

            if (v18)
            {
              v29 = [v18 subarrayWithRange:{v21, v20 - v21}];
            }

            else
            {
              v29 = 0;
            }

            v30 = *(&v47 + 1);
            *(&v47 + 1) = v29;

            v27 = [(MFLibraryIMAPStore *)self _doAppend:location];
            v21 = v20;
          }

          objc_storeStrong(location, v23);
        }

        ++v20;
      }

      while (v20 < v19 && v27 == 1);
      v31 = v19 - v21;
      if (v19 <= v21)
      {
        v16 = v42;
        v15 = v43;
      }

      else
      {
        v16 = v42;
        v15 = v43;
        if (v27 == 1)
        {
          if (v21)
          {
            v32 = [v14 subarrayWithRange:{v21, v19 - v21}];
            v33 = location[1];
            location[1] = v32;

            v34 = v21;
            v19 -= v21;
          }

          else
          {
            objc_storeStrong(&location[1], a3);
            if (v17)
            {
              v35 = v17;
LABEL_29:
              v36 = v47;
              *&v47 = v35;

              if (!v18 || v21)
              {
                v37 = [v18 subarrayWithRange:{v21, v31}];
              }

              else
              {
                v37 = v18;
              }

              v38 = *(&v47 + 1);
              *(&v47 + 1) = v37;

              v27 = [(MFLibraryIMAPStore *)self _doAppend:location];
              v39 = location[0];
              location[0] = 0;

              goto LABEL_34;
            }

            v34 = 0;
          }

          v35 = [v17 subarrayWithRange:{v34, v19}];
          goto LABEL_29;
        }

        [v41 replaceObjectsInRange:objc_msgSend(v41 withObjectsFromArray:"count") range:{0, v14, v21, v19 - v21}];
      }

LABEL_34:

      goto LABEL_35;
    }

    v27 = 1;
  }

  else
  {
    [v15 replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(v15, "count"), v14}];
    v27 = 0;
  }

LABEL_35:

  return v27;
}

- (id)_updateLibraryForTransferedMessages:(id)a3 toDestinationMailbox:(id)a4 newMessageInfo:(id)a5 flagsToSet:(id)a6
{
  v97 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v9 = a4;
  v58 = a5;
  v55 = a6;
  v56 = v9;
  v54 = [v9 store];
  v53 = [(MFLibraryStore *)v54 URLString];
  v10 = [v58 objectForKeyedSubscript:@"UIDVALIDITY"];
  v11 = [v10 unsignedIntValue];

  v12 = [v9 userInfoObjectForKey:@"UIDVALIDITY"];
  v13 = [v12 intValue];

  theString = [v58 objectForKey:@"Source UIDS"];
  v57 = [v58 objectForKey:@"Destination UIDS"];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v11 && v13)
  {
    if (v11 != v13 || !theString || !v57)
    {
LABEL_13:
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v18 = v60;
      v19 = [v18 countByEnumeratingWithState:&v65 objects:v95 count:16];
      if (v19)
      {
        v20 = *v66;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v66 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = [*(*(&v65 + 1) + 8 * i) messageIDHeader];
            if (v22)
            {
              [(NSArray *)v17 addObject:v22];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v65 objects:v95 count:16];
        }

        while (v19);
      }

      v23 = [(MFLibraryStore *)self library];
      v24 = [v23 maximumRemoteIDForMailbox:v53];

      v25 = _uidSearchForMessageIds(v54, v24 + 1, v17);
      v26 = [v25 count];
      if (v26 >= [v18 count])
      {
        v27 = v18;
      }

      else
      {
        v27 = v25;
      }

      v28 = [v27 count];
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          v30 = [v25 objectAtIndex:j];
          v31 = [v30 unsignedIntValue];

          if (v31)
          {
            v32 = [v18 objectAtIndex:j];
            [v14 addObject:v32];

            v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v31];
            [v61 addObject:v33];
          }
        }
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (!theString || !v57)
    {
      goto LABEL_13;
    }

    if (!v13)
    {
      [(MFLibraryIMAPStore *)v54 setMailboxUidValidity:v11];
    }
  }

  v15 = [(__CFString *)theString length];
  v85 = theString;
  v88 = 0;
  v89 = v15;
  if (CFStringGetCharactersPtr(theString))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v87 = CStringPtr;
  v90 = 0;
  v92 = 0;
  v91 = 0;
  v93 = v15;
  v94 = 0;
  v40 = [(__CFString *)v57 length];
  v74 = v57;
  v77 = 0;
  v78 = v40;
  if (CFStringGetCharactersPtr(v57))
  {
    v41 = 0;
  }

  else
  {
    v41 = CFStringGetCStringPtr(v57, 0x600u);
  }

  v76 = v41;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = v40;
  v83 = 0;
  while (1)
  {
    v42 = IMAPNextUidFromSet(buffer);
    if (!v42)
    {
      break;
    }

    v43 = IMAPNextUidFromSet(v73);
    if (!v43)
    {
      break;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v44 = v60;
    v45 = [v44 countByEnumeratingWithState:&v69 objects:v96 count:16];
    if (v45)
    {
      v46 = *v70;
LABEL_49:
      v47 = 0;
      while (1)
      {
        if (*v70 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v69 + 1) + 8 * v47);
        if (v42 == [v48 uid])
        {
          break;
        }

        if (v45 == ++v47)
        {
          v45 = [v44 countByEnumeratingWithState:&v69 objects:v96 count:16];
          if (v45)
          {
            goto LABEL_49;
          }

          goto LABEL_55;
        }
      }

      v49 = v48;

      if (!v49)
      {
        continue;
      }

      [v14 addObject:v49];
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v43];
      [v61 addObject:v50];
    }

    else
    {
LABEL_55:
      v49 = v44;
    }
  }

LABEL_31:
  v34 = [v55 count];
  if (v34 == [v14 count])
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __105__MFLibraryIMAPStore__updateLibraryForTransferedMessages_toDestinationMailbox_newMessageInfo_flagsToSet___block_invoke;
    v62[3] = &unk_279E33948;
    v63 = v60;
    v64 = v55;
    v35 = [v14 vf_map:v62];
  }

  else
  {
    v35 = 0;
  }

  if ([v14 count])
  {
    v36 = [(MFLibraryStore *)self library];
    LOBYTE(v51) = 1;
    v37 = [v36 duplicateMessages:v14 newRemoteIDs:v61 forMailbox:v56 setFlags:0 clearFlags:0 messageFlagsForMessages:v35 createNewCacheFiles:v51];
  }

  else
  {
    v37 = MEMORY[0x277CBEC10];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

id __105__MFLibraryIMAPStore__updateLibraryForTransferedMessages_toDestinationMailbox_newMessageInfo_flagsToSet___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "indexOfObject:", a2)}];

  return v2;
}

- (id)moveMessages:(id)a3 toMailbox:(id)a4 markAsRead:(BOOL)a5
{
  v5 = a5;
  v41[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 account];
  v11 = [(MFMailMessageStore *)self account];

  if (v10 == v11)
  {
    v40 = @"MessageIsRead";
    v41[0] = @"YES";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v13 = [(MFLibraryIMAPStore *)self _uidsForMessages:v8];
    if (v5 && [v8 count])
    {
      v14 = [(MFLibraryIMAPStore *)self setFlagsFromDictionary:v27 forMessages:v8];
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __56__MFLibraryIMAPStore_moveMessages_toMailbox_markAsRead___block_invoke;
    v28[3] = &unk_279E33970;
    v29 = v8;
    v30 = v9;
    v18 = v17;
    v35 = &v36;
    v31 = v18;
    v32 = self;
    v19 = v16;
    v33 = v19;
    v20 = v15;
    v34 = v20;
    v21 = [(MFLibraryIMAPStore *)self performBatchOperationWithUIDs:v13 requiringConnection:1 withOptions:17 operation:v28];
    if (v37[3] & v21)
    {
      v22 = -[MFMessageTransferResult initWithResultCode:failedMessages:transferedMessage:]([MFMessageTransferResult alloc], "initWithResultCode:failedMessages:transferedMessage:", [v20 count] != 0, v18, v20);
    }

    else
    {
      v23 = [MFMessageTransferResult alloc];
      v22 = [(MFMessageTransferResult *)v23 initWithResultCode:2 failedMessages:MEMORY[0x277CBEBF8] transferedMessage:MEMORY[0x277CBEBF8]];
    }

    v12 = v22;
    if ([v19 count])
    {
      v24 = [(MFLibraryStore *)self library];
      [v24 compactMessages:v19];
    }

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v12 = [[MFMessageTransferResult alloc] initWithResultCode:0 failedMessages:v8 transferedMessage:0];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v12;
}

void __56__MFLibraryIMAPStore_moveMessages_toMailbox_markAsRead___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v25 = a3;
  v9 = *(a1 + 32);
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
  }

  else
  {
    v10 = [v9 subarrayWithRange:{a4, a5}];
  }

  v23 = v10;
  v11 = [*(a1 + 40) store];
  v12 = [v11 mailboxName];

  v30 = 0;
  v13 = [v24 moveUIDSet:v25 toMailboxNamed:v12 newMessageInfo:&v30];
  v14 = v30;
  if (v13)
  {
    if (v13 == 1)
    {
      [*(a1 + 48) addObjectsFromArray:v23];
    }

    else if (v13 == 2)
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
    }
  }

  else
  {
    v15 = [*(a1 + 56) _updateLibraryForTransferedMessages:v23 toDestinationMailbox:*(a1 + 40) newMessageInfo:v14 flagsToSet:0];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v23;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v17)
    {
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = [v15 objectForKeyedSubscript:v20];
          if (v21)
          {
            [*(a1 + 64) addObject:v20];
            [*(a1 + 72) addObject:v21];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v17);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)newDictionaryForLocalFlags:(unint64_t)a3 serverFlags:(unint64_t)a4 existingDictionary:(id)a5
{
  v8 = a5;
  v20 = 0;
  _updateSingleFlagsChangeEntry(&v20, a3, a4, 1, @"MessageIsRead", v8);
  v9 = v20;
  v19 = v9;
  _updateSingleFlagsChangeEntry(&v19, a3, a4, 2, @"MessageIsDeleted", v8);
  v10 = v19;

  v18 = v10;
  _updateSingleFlagsChangeEntry(&v18, a3, a4, 16, @"MessageIsFlagged", v8);
  v11 = v18;

  v17 = v11;
  _updateSingleFlagsChangeEntry(&v17, a3, a4, 4, @"MessageWasRepliedTo", v8);
  v12 = v17;

  if ((*(self + 144) & 1) != 0 || (*(self + 144) & 0x20) != 0 || (*(self + 144) & 0x40) != 0)
  {
    v16 = v12;
    _updateSingleFlagsChangeEntry(&v16, a3, a4, 256, @"MessageWasForwarded", v8);
    v13 = v16;

    if (*(self + 144))
    {
      v15 = v13;
      _updateSingleFlagsChangeEntry(&v15, a3, a4, 512, @"MessageWasRedirected", v8);
      v12 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  return v12;
}

- (void)_synchronouslySetFlags:(id)a3 clearFlags:(id)a4 forMessages:(id)a5 originalChanges:(id)a6
{
  v10 = a3;
  v29 = a4;
  v11 = a5;
  v32 = a6;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy_;
  v55 = __Block_byref_object_dispose_;
  v56 = [(MFLibraryIMAPStore *)self offlineCacheIfOffline];
  v30 = v10;
  v12 = IMAPMessageFlagsFromArray(v10);
  v13 = [v11 count];
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v28 = (v12 >> 1) & 1;
    v31 = v10 == 0;
    v27 = v34;
    v16 = 500;
    do
    {
      if (v13 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v13;
      }

      v18 = objc_autoreleasePoolPush();
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = v31;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = v29 == 0;
      if ([v11 count] > 0x1F4)
      {
        v19 = [v11 subarrayWithRange:{v15, v17 + v14}];
      }

      else
      {
        v19 = v11;
      }

      v20 = v19;
      v21 = v52[5];
      if (!v21)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v34[0] = __84__MFLibraryIMAPStore__synchronouslySetFlags_clearFlags_forMessages_originalChanges___block_invoke;
        v34[1] = &unk_279E33998;
        v34[2] = self;
        v35 = v19;
        v36 = v30;
        v39 = &v47;
        v37 = v29;
        v40 = &v43;
        v42 = v28;
        v41 = &v51;
        v38 = v32;
        if ([(MFLibraryIMAPStore *)self performOperationRequiringConnection:0 withOptions:17 operation:v33])
        {
          goto LABEL_12;
        }
      }

      v22 = [(MFMailMessageStore *)self account];
      [v22 removeFlagChanges:v32 forMessages:v20];

      if (!v21)
      {
LABEL_12:
      }

      v23 = [(MFLibraryIMAPStore *)self mailboxName];
      if (v23)
      {
        v24 = v52[5];

        if (v24)
        {
          if (*(v48 + 24))
          {
            v25 = 0;
          }

          else
          {
            v25 = v30;
          }

          if (*(v44 + 24))
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

          [v52[5] setFlags:v25 andClearFlags:v26 forMessages:v20];
          [v52[5] saveChanges];
        }
      }

      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v47, 8);

      objc_autoreleasePoolPop(v18);
      v15 += 500;
      v16 += 500;
      v14 -= 500;
    }

    while (v15 < v13);
  }

  _Block_object_dispose(&v51, 8);
}

void __84__MFLibraryIMAPStore__synchronouslySetFlags_clearFlags_forMessages_originalChanges___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) _uidsForMessages:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4 && [v10 storeFlags:v4 state:1 forUids:v3])
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v5 = *(a1 + 56);
  if (v5 && [v10 storeFlags:v5 state:0 forUids:v3])
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1 && *(a1 + 96) == 1 && [*(*(a1 + 32) + 48) shouldExpungeMessagesOnDelete] && objc_msgSend(v10, "supportsCapability:", 3))
  {
    [v10 expungeUids:v3];
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v6 = *(*(a1 + 80) + 8);
    if (*(v6 + 24))
    {
      goto LABEL_16;
    }
  }

  if ([v10 isValid])
  {
    v6 = *(*(a1 + 80) + 8);
LABEL_16:
    *(v6 + 24) = 1;
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v7 = [*(a1 + 32) account];
    [v7 setConnectionTag:objc_msgSend(v10 forFlagChanges:"tag") forMessages:{*(a1 + 64), *(a1 + 40)}];
    goto LABEL_18;
  }

  v8 = [*(a1 + 32) offlineCache];
  v9 = *(*(a1 + 88) + 8);
  v7 = *(v9 + 40);
  *(v9 + 40) = v8;
LABEL_18:
}

- (void)_setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v11 = 0;
    v12 = 0;
    v8 = _flagsToSetAndClearFromDictionary(self, v6, &v12, &v11);
    v9 = v12;
    v10 = v11;
    if (v8)
    {
      [(MFLibraryIMAPStore *)self _synchronouslySetFlags:v9 clearFlags:v10 forMessages:v7 originalChanges:v6];
    }
  }
}

- (void)addFlagChanges:(id)a3 forMessages:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [(MFMailMessageStore *)self account];
          v15 = [(MFLibraryIMAPStore *)self relativePath];
          [v14 addFlagChanges:v6 forMailboxPath:v15 UID:{objc_msgSend(v13, "uid")}];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36 = a4;
  v38 = [MEMORY[0x277CBEB18] array];
  v7 = [(MFLibraryIMAPStore *)self relativePath];
  v8 = [(MFMailMessageStore *)self account];
  v9 = [v8 flagChangesLock];
  [v9 lock];

  [(MFLibraryIMAPStore *)self addFlagChanges:v6 forMessages:v36];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = v36;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
  v37 = self;
  v12 = 0;
  v13 = 0;
  if (v11)
  {
    v14 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v17 = v12;
          if (v12)
          {
            goto LABEL_10;
          }

          v18 = [MEMORY[0x277CBEB18] arrayWithObjects:{v16, 0}];
          v12 = v18;
        }

        else
        {
          v17 = v13;
          if (v13)
          {
LABEL_10:
            [v17 addObject:v16];
            continue;
          }

          v18 = [MEMORY[0x277CBEB18] arrayWithObjects:{v16, 0}];
          v13 = v18;
        }

        v19 = v18;
      }

      v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v11);
  }

  v20 = v12;
  v21 = v13;
  v43.receiver = v37;
  v43.super_class = MFLibraryIMAPStore;
  v35 = v20;
  v22 = [(MFLibraryStore *)&v43 setFlagsFromDictionary:v6 forMessages:v20];
  [v38 addObjectsFromArray:v22];

  v23 = [(MFMailMessageStore *)v37 account];
  v24 = [v23 flagChangesLock];
  [v24 unlock];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v26)
  {
    v27 = *v40;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v39 + 1) + 8 * j);
        v30 = [v29 messageFlags];
        v31 = IMAPMessageFlagsByApplyingDictionary(v30, v6);
        if (v31 != v30)
        {
          [v29 setMessageFlags:v31];
          [v38 addObject:v29];
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v26);
  }

  [(MFLibraryIMAPStore *)v37 _setFlagsFromDictionary:v6 forMessages:v10];
  v32 = v38;

  v33 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)willSetFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMailMessageStore *)self account];
  v9 = [v8 flagChangesLock];
  [v9 lock];

  [(MFLibraryIMAPStore *)self addFlagChanges:v6 forMessages:v7];
  v14.receiver = self;
  v14.super_class = MFLibraryIMAPStore;
  v10 = [(MFLibraryStore *)&v14 setFlagsFromDictionary:v6 forMessages:v7];
  v11 = [(MFMailMessageStore *)self account];
  v12 = [v11 flagChangesLock];
  [v12 unlock];

  return v10;
}

- (void)setFlagsCancelled:(id)a3 forMessages:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MFMailMessageStore *)self account];
  [v7 removeFlagChanges:v8 forMessages:v6];
}

- (void)setFlagsForAllMessagesFromDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v8 setFlagsForAllMessagesFromDictionary:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__MFLibraryIMAPStore_setFlagsForAllMessagesFromDictionary___block_invoke;
  v6[3] = &unk_279E339C0;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v6];
}

void __59__MFLibraryIMAPStore_setFlagsForAllMessagesFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 mailboxName];
  LODWORD(v4) = [v4 _selectMailbox:v5 withConnection:v3];

  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = 0;
    v12 = 0;
    v8 = _flagsToSetAndClearFromDictionary(v6, v7, &v12, &v11);
    v9 = v12;
    v10 = v11;
    if (v8)
    {
      if ([v9 count])
      {
        [v3 storeFlags:v9 state:1 forRange:0xFFFFFFFF00000001];
      }

      if ([v10 count])
      {
        [v3 storeFlags:v10 state:0 forRange:0xFFFFFFFF00000001];
      }
    }
  }
}

- (id)_dataForMessage:(id)a3 readHeadersOnly:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 uid];
  if ([v6 hasTemporaryUid])
  {
    v8 = [(MailAccount *)self->super.super._account _dataForTemporaryUid:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_11:
      v9 = 0;
      goto LABEL_13;
    }

    v8 = [v6 messageData];
  }

  v9 = v8;
  if (v4 && v8)
  {
    v11 = [v8 mf_rangeOfRFC822HeaderData];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      v12 = {;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(MFMailMessageStore *)self mailboxUid];
        v17 = 136315394;
        v18 = [v13 mambaID];
        v19 = 2080;
        v20 = " ";
        _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s[MFLibraryIMAPStore _dataForMessage:] bad message data", &v17, 0x16u);
      }

      goto LABEL_11;
    }

    v14 = [v9 mf_subdataWithRange:{v11, v10}];

    v9 = v14;
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a6;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v13 = [v11 type];
  if (([@"multipart" isEqualToString:v13] & 1) == 0)
  {
    [v11 range];
    v15 = v14;
    v16 = [v11 mimeBody];
    v17 = [v16 message];

    v18 = [v11 partNumber];
    if (v15 && v17 && (objc_opt_respondsToSelector() & 1) != 0 && ([&stru_288159858 isEqualToString:v18] & 1) == 0)
    {
      v26 = [(MailAccount *)self->super.super._account fetchLimits];
      [v11 range];
      v25 = v19;
      v20 = [v26 fetchMinBytes];
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (location || length != v25)
        {
          if (length != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (location >= v25)
            {
              location = v25;
            }

            if (length <= [v26 fetchMinBytes])
            {
              length = [v26 fetchMinBytes];
            }

            v22 = [v26 minBytesLeft];
            if (v25 - location >= length)
            {
              v21 = length;
            }

            else
            {
              v21 = v25 - location;
            }

            if (v25 - location - v21 < v22)
            {
              v21 = v25 - location;
            }
          }
        }

        else
        {
          location = 0;
        }
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __70__MFLibraryIMAPStore__fetchDataForMimePart_range_isComplete_consumer___block_invoke;
      v27[3] = &unk_279E339E8;
      v34 = location;
      v35 = v21;
      v28 = v17;
      v29 = self;
      v30 = v18;
      v36 = v15;
      v31 = v12;
      v33 = &v38;
      v32 = v11;
      v37 = a5;
      [(MFLibraryIMAPStore *)self performOperationRequiringConnection:0 withOptions:5 operation:v27];
    }
  }

  v23 = *(v39 + 24);

  _Block_object_dispose(&v38, 8);
  return v23;
}

void __70__MFLibraryIMAPStore__fetchDataForMimePart_range_isComplete_consumer___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) uid];
  v4 = *(a1 + 88);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 40) + 160);
    v7 = *(a1 + 56);
    if (*(a1 + 96))
    {
      [v6 downloadForUid:v3 section:v5 expectedLength:4096 consumer:v7];
    }

    else
    {
      [v6 downloadForUid:v3 section:v5 length:0 consumer:v7];
    }
    v8 = ;
  }

  else
  {
    v8 = [*(*(a1 + 40) + 160) downloadForUid:v3 section:*(a1 + 48) range:*(a1 + 80) consumer:{v4, *(a1 + 56)}];
  }

  v9 = v8;
  *(*(*(a1 + 72) + 8) + 24) = _waitForDataFromDownload(*(a1 + 40), v8, v3, v14);
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 64) range];
    v11 = v10;
    v12 = [(MFIMAPDownload *)v9 bytesFetched];
    v13 = *(a1 + 104);
    if (v13)
    {
      *v13 |= *(a1 + 80) + v12 == v11;
    }
  }
}

- (id)_fetchFullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 didDownload:(BOOL *)a6
{
  v9 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __115__MFLibraryIMAPStore__fetchFullBodyDataForMessage_andHeaderDataIfReadilyAvailable_downloadIfNecessary_didDownload___block_invoke;
  v25 = &unk_279E33A10;
  v10 = v9;
  v26 = v10;
  v27 = self;
  v28 = &v30;
  v29 = &v36;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:5 operation:&v22];
  v11 = v37;
  v12 = v37[5];
  if (v12 && (v13 = [v12 mf_rangeOfRFC822HeaderData], v15 = v14, v16 = objc_msgSend(v37[5], "length"), v11 = v37, v13 + v15 <= v16))
  {
    v18 = [v37[5] length];
    v17 = [v37[5] mf_subdataWithRange:{v13 + v15, v18 - (v13 + v15)}];
    if (v17)
    {
      v19 = [objc_alloc(MEMORY[0x277D24F30]) initWithData:v17 partial:0 incomplete:0];
      v20 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v10 valueIfNotPresent:v19];
      if (a6)
      {
        *a6 = 1;
      }
    }

    v11 = v37;
    if (a4)
    {
      *a4 = [v37[5] mf_subdataWithRange:{v13, v15}];
      v11 = v37;
    }
  }

  else
  {
    v17 = 0;
  }

  if (!v11[5])
  {
    _compactMessageIfNoData(self, v31[5], v10);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v17;
}

void __115__MFLibraryIMAPStore__fetchFullBodyDataForMessage_andHeaderDataIfReadilyAvailable_downloadIfNecessary_didDownload___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [*(a1 + 32) uid];
  v4 = objc_alloc_init(MEMORY[0x277D24EE8]);
  v5 = [MEMORY[0x277D24F20] filterWithConsumer:v4];
  v6 = [*(*(a1 + 40) + 160) downloadForUid:v3 section:&stru_288159858 length:objc_msgSend(*(a1 + 32) consumer:{"messageSize"), v5}];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _waitForDataFromDownload(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40), v3, v22);
  v10 = [*(*(*(a1 + 48) + 8) + 40) bytesFetched];
  v11 = [*(a1 + 32) messageSize];
  if (v10 >= v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    goto LABEL_5;
  }

  v16 = [*(*(a1 + 40) + 160) downloadForUid:v3 section:&stru_288159858 range:v10 consumer:{v11, v5}];
  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = _waitForDataFromDownload(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40), v3, v22);
  v20 = [*(*(*(a1 + 48) + 8) + 40) bytesFetched];
  if (v19)
  {
    v21 = v20;
    if (![*(*(*(a1 + 48) + 8) + 40) bytesFetched] || v21 + v10 >= v11)
    {
LABEL_5:
      v13 = [v4 data];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

- (id)_downloadForMessageBodyData:(id)a3
{
  v4 = [(MFIMAPDownloadCache *)self->_downloadCache downloadForMessage:a3];
  [v4 setAllowsPartialDownloads:{-[MailAccount allowsPartialDownloads](self->super.super._account, "allowsPartialDownloads")}];
  [v4 setFetchBodyData:1];

  return v4;
}

- (id)_performBodyDataDownload:(id)a3 usingConnection:(id)a4 isPartial:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MFIMAPDownload *)v8 partial];
  if (!_waitForDataFromDownload(self, v8, [(MFIMAPDownload *)v8 uid], v9))
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = [(MFIMAPDownload *)v8 data];
  v10 = [(MFIMAPDownload *)v8 partial];
  if (a5)
  {
LABEL_5:
    *a5 = v10;
  }

LABEL_6:

  return v11;
}

void __107__MFLibraryIMAPStore__fetchBodyDataForMessage_andHeaderDataIfReadilyAvailable_downloadIfNecessary_partial___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [*(a1 + 32) _downloadForMessageBodyData:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) _performBodyDataDownload:*(*(*(a1 + 48) + 8) + 40) usingConnection:v19 isPartial:*(a1 + 64)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    if ([*(a1 + 32) shouldRetryEmptyBodyDownloadForMessage:*(a1 + 40)])
    {
      if ([*(*(*(a1 + 48) + 8) + 40) isComplete])
      {
        v9 = +[MFActivityMonitor currentMonitor];
        v10 = [v9 error];

        if (!v10)
        {
          [v19 close];
          v11 = *(a1 + 32);
          v12 = [v11 mailboxName];
          [v11 _selectMailbox:v12 withConnection:v19];

          v13 = [*(a1 + 32) _downloadForMessageBodyData:*(a1 + 40)];
          v14 = *(*(a1 + 48) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          v16 = [*(a1 + 32) _performBodyDataDownload:*(*(*(a1 + 48) + 8) + 40) usingConnection:v19 isPartial:*(a1 + 64)];
          v17 = *(*(a1 + 56) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;
        }
      }
    }
  }
}

void __69__MFLibraryIMAPStore__fetchHeaderDataForMessage_downloadIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(*(a1 + 32) + 160) downloadForMessage:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (v6 && _waitForDataFromDownload(*(a1 + 32), v6, *(a1 + 64), v10))
  {
    v7 = [*(*(*(a1 + 48) + 8) + 40) data];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (BOOL)performOperationRequiringConnection:(BOOL)a3 withOptions:(unsigned int)a4 operation:(id)a5
{
  v6 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v26 = a5;
  v8 = self->super.super._account;
  flags = self->super.super._flags;
  [(NSLock *)self->_cachedConnectionLock lock];
  cachedConnection = self->_cachedConnection;
  if ((a4 & 4) != 0)
  {
    if (![(MFIMAPConnection *)cachedConnection mf_tryLock])
    {
      v11 = 0;
      goto LABEL_6;
    }

    cachedConnection = self->_cachedConnection;
  }

  v11 = cachedConnection;
LABEL_6:
  [(NSLock *)self->_cachedConnectionLock unlock];
  if ((a4 & 0x10) != 0 && v11)
  {
    [(MFIMAPConnection *)v11 noop];
  }

  else if (!v11)
  {
    goto LABEL_17;
  }

  if ([(MFIMAPConnection *)v11 isValid])
  {
    v12 = 1;
    goto LABEL_20;
  }

  if ((a4 & 4) != 0)
  {
    [(MFIMAPConnection *)v11 mf_unlock];
  }

  [(NSLock *)self->_cachedConnectionLock lock];
  v13 = self->_cachedConnection;
  if (v11 == v13)
  {
    self->_cachedConnection = 0;
  }

  [(NSLock *)self->_cachedConnectionLock unlock];

LABEL_17:
  v11 = [(MailAccount *)v8 connectionForStore:self delegate:self options:(2 * (*&flags & 1)) | a4];
  [(NSLock *)self->_cachedConnectionLock lock];
  if (!self->_cachedConnection)
  {
    objc_storeStrong(&self->_cachedConnection, v11);
  }

  [(NSLock *)self->_cachedConnectionLock unlock];
  v12 = 0;
LABEL_20:
  v14 = [(MFIMAPConnection *)v11 setAdditionalHeadersForFetch:self->_additionalFetchHeaders];
  if (!self->_mailboxName)
  {
    v15 = [(MailAccount *)v8 _nameForMailboxUid:self->super.super._mailboxUid];
    _MFLockGlobalLock();
    if (!self->_mailboxName)
    {
      objc_storeStrong(&self->_mailboxName, v15);
    }

    _MFUnlockGlobalLock();

    if (v11)
    {
      goto LABEL_27;
    }

LABEL_26:
    if (v6)
    {
      goto LABEL_46;
    }

    goto LABEL_27;
  }

  if (!v11)
  {
    goto LABEL_26;
  }

LABEL_27:
  v16 = v12 ^ 1;
  if (!v11)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    if (self->_mailboxName)
    {
      v17 = [(MFIMAPConnection *)v11 selectedMailbox];

      if (!v17)
      {
        v14 = [(MFLibraryIMAPStore *)self _selectMailbox:self->_mailboxName withConnection:v11];
      }
    }
  }
  v18 = ;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(MFMailMessageStore *)self mailboxUid];
    v20 = [v19 mambaID];
    mailboxName = self->_mailboxName;
    v22 = @"NO";
    *buf = 136316418;
    v28 = v20;
    if (v12)
    {
      v22 = @"YES";
    }

    v29 = 2080;
    v30 = " ";
    v31 = 2112;
    v32 = mailboxName;
    v33 = 2048;
    v34 = v11;
    v35 = 2112;
    v36 = v22;
    v37 = 1024;
    v38 = (2 * (*&flags & 1)) | a4;
    _os_log_impl(&dword_2720B1000, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] performOperationRequiringConnection: mailbox=%@ connection=%p cached=%@ options=%d", buf, 0x3Au);
  }

  v26[2](v26, v11);
  if (v11)
  {
    if ((a4 & 4) != 0)
    {
      [(MFIMAPConnection *)v11 mf_unlock];
    }

    v23 = (a4 & 0x20) != 0 && [(MFMailboxUid *)self->super.super._mailboxUid type]!= 7;
    if (v11 != self->_cachedConnection || v23)
    {
      [(MailAccount *)v8 checkInConnection:v11 destroy:?];
    }
  }

LABEL_46:

  v24 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

void __94__MFLibraryIMAPStore_performBatchOperationWithUIDs_requiringConnection_withOptions_operation___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 count];
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 500;
      do
      {
        if (v4 >= v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = v4;
        }

        if (v4 > 0x1F4)
        {
          v10 = [*(a1 + 32) subarrayWithRange:{v6, v9 + v5}];
        }

        else
        {
          v10 = *(a1 + 32);
        }

        v7 = v10;
        (*(*(a1 + 40) + 16))();
        v6 += 500;
        v8 += 500;
        v5 -= 500;
      }

      while (v6 < v4);
    }
  }
}

- (id)remoteIDsFromUniqueRemoteIDs:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__MFLibraryIMAPStore_remoteIDsFromUniqueRemoteIDs___block_invoke;
  v8[3] = &unk_279E337E8;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:17 operation:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __51__MFLibraryIMAPStore_remoteIDsFromUniqueRemoteIDs___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v3 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(*(*(&v17 + 1) + 8 * i), "unsignedLongLongValue")];
        if ([v3 count])
        {
          [v3 insertObject:@"OR" atIndex:0];
          [v3 insertObject:@"X-GM-MSGID" atIndex:1];
          [v3 insertObject:v8 atIndex:2];
        }

        else
        {
          [v3 addObject:@"X-GM-MSGID"];
          [v3 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v16 = 0;
  v9 = MEMORY[0x277CBEB98];
  v10 = [v15 searchIDSet:0 forTerms:v3 success:&v16];
  v11 = [v9 setWithArray:v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reselectMailbox
{
  if (self->_cachedConnection)
  {
    v4 = self->super.super._account;
    v3 = [(MailAccount *)v4 _nameForMailboxUid:self->super.super._mailboxUid];
    _MFLockGlobalLock();
    objc_storeStrong(&self->_mailboxName, v3);
    _MFUnlockGlobalLock();
    [(MFLibraryIMAPStore *)self _selectMailbox:self->_mailboxName withConnection:self->_cachedConnection];
  }
}

- (void)willRemoveDelegation:(id)a3
{
  v7 = a3;
  [(NSLock *)self->_cachedConnectionLock lock];
  cachedConnection = self->_cachedConnection;
  if (cachedConnection)
  {
    v5 = cachedConnection == v7;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5)
  {
    self->_cachedConnection = 0;
  }

  [(NSLock *)self->_cachedConnectionLock unlock];
  if (v6)
  {
    [(MFIMAPConnection *)v7 finishIdle];
  }
}

- (BOOL)_changedFlagsForMessage:(id)a3 fetchResponse:(id)a4 newFlags:(unint64_t *)a5
{
  v8 = a3;
  v9 = [a4 fetchResultWithType:10];
  v10 = [v9 messageFlags];

  v11 = [v8 messageFlags];
  v12 = 887;
  if ((*(self + 144) & 1) == 0)
  {
    v12 = 119;
  }

  v13 = v10 & 0x1BFDDF703DFLL;
  v14 = v11 & v12 & 0x357;
  if ((v10 & 0x1BFDDF703DFLL) != v14)
  {
    *a5 = v11 & ~v12 & 0xFFFFFFFFFFFF0388 | v13;
  }

  v15 = v13 != v14;

  return v15;
}

- (void)connection:(id)a3 didReceiveResponse:(id)a4 forCommand:(id *)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v39 = a4;
  if (a5 && [v39 responseType] == 2 && (a5->var0 | 4) == 0xD)
  {
    v37 = a5->var2;
    if (v37)
    {
      *(self + 144) &= ~1u;
      *(self + 144) &= ~0x20u;
      *(self + 144) &= ~0x40u;
      *(self + 144) &= ~2u;
      *(self + 144) &= ~4u;
      *(self + 144) &= ~8u;
      *(self + 144) &= ~0x10u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v8 = v37;
      v9 = [v8 countByEnumeratingWithState:&v40 objects:v57 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v41;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v41 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v40 + 1) + 8 * i);
            if ([v13 responseType] == 2)
            {
              v14 = [v13 responseInfo];
              v15 = [v13 responseCode];
              if (v15 > 8)
              {
                if (v15 == 9)
                {
                  self->_serverUidNext = [v14 unsignedIntValue];
                }

                else if (v15 == 10)
                {
                  v10 = [v14 unsignedIntValue];
                }
              }

              else if (v15 == 5)
              {
                if (v14)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v16 = v14;
                    v17 = [v16 indexOfObject:@"\\*"];
                    v18 = *(self + 144) & 0xFE;
                    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      ++v18;
                    }

                    *(self + 144) = v18;
                    *(self + 144) = *(self + 144) & 0xDF | (32 * ([v16 indexOfObject:@"Forwarded"] != 0x7FFFFFFFFFFFFFFFLL));
                    *(self + 144) = *(self + 144) & 0xBF | (([v16 indexOfObject:@"$Forwarded"] != 0x7FFFFFFFFFFFFFFFLL) << 6);
                    *(self + 144) = *(self + 144) & 0xFD | (2 * ([v16 indexOfObject:@"Junk"] != 0x7FFFFFFFFFFFFFFFLL));
                    *(self + 144) = *(self + 144) & 0xFB | (4 * ([v16 indexOfObject:@"$Junk"] != 0x7FFFFFFFFFFFFFFFLL));
                    *(self + 144) = *(self + 144) & 0xF7 | (8 * ([v16 indexOfObject:@"NotJunk"] != 0x7FFFFFFFFFFFFFFFLL));
                    *(self + 144) = *(self + 144) & 0xEF | (16 * ([v16 indexOfObject:@"$NotJunk"] != 0x7FFFFFFFFFFFFFFFLL));
                  }
                }
              }

              else if (v15 == 6)
              {
                *&self->super.super._flags |= 1u;
              }
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v40 objects:v57 count:16];
        }

        while (v9);

        if (!v10)
        {
          goto LABEL_37;
        }

        v19 = [(MFMailboxUid *)self->super.super._mailboxUid userInfoObjectForKey:@"UIDVALIDITY"];
        v20 = [v19 intValue];

        if (v20 == v10)
        {
          goto LABEL_37;
        }

        [(MFLibraryIMAPStore *)self setMailboxUidValidity:v10];
        if (!v20)
        {
          goto LABEL_37;
        }

        v21 = [(MFMailMessageStore *)self _flushAllMessageData];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [(MFMailMessageStore *)self mailboxUid];
          v23 = [v22 mambaID];
          mailboxName = self->_mailboxName;
          *buf = 136316162;
          v48 = v23;
          v49 = 2080;
          v50 = " ";
          v51 = 2112;
          v52 = mailboxName;
          v53 = 2048;
          v54 = v20;
          v55 = 2048;
          v56 = v10;
          _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sForcing reload of %@ because of UIDVALIDITY change (old:%lu new:%lu)", buf, 0x34u);
        }

        v25 = [(MFLibraryStore *)self URLString];
        v26 = [(MFLibraryStore *)self library];
        v27 = [v26 getDetailsForMessagesWithRemoteIDInRange:0 fromMailbox:{0x7FFFFFFFFFFFFFFFLL, v25}];

        if ([v27 count])
        {
          v28 = [(MFLibraryStore *)self library];
          [v28 compactMessages:v27];
        }
      }

      else
      {
        v25 = v8;
      }
    }

LABEL_37:
  }

  if ([v39 isAlertResponse])
  {
    account = self->super.super._account;
    v30 = [v39 userString];
    [(MailAccount *)account handleAlertResponse:v30];
  }

  if ([v39 isResponseWithCode:31])
  {
    v31 = self->super.super._account;
    v32 = [v39 userString];
    [(MailAccount *)v31 handleOverQuotaResponse:v32];
  }

  if (!a5 || a5->var0 == 28)
  {
    if ([(MFLibraryIMAPStore *)self shouldUseIDLE])
    {
      if ([v39 responseType] == 9)
      {
        -[MFLibraryIMAPStore setServerMessageCount:](self, "setServerMessageCount:", [v39 number]);
        if (self->super.super._mailboxUid)
        {
          mailboxUid = self->super.super._mailboxUid;
          v45 = @"MailAccountContentsDidChangeUids";
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&mailboxUid count:1];
          v46 = v33;
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

          v35 = [MEMORY[0x277CCAB98] defaultCenter];
          [v35 postNotificationName:@"MailAccountContentsDidChange" object:self->super.super._account userInfo:v34];
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_uidsForMessages:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", objc_msgSend(*(*(&v12 + 1) + 8 * i), "uid")];
        [v4 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_idleConditionsObservable
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = +[MFPowerController sharedInstance];
  v21 = [v3 lowPowerModeObservable];
  v22 = [v3 pluggedInObservable];
  v4 = +[MFNetworkController sharedInstance];
  v20 = [v4 wifiObservable];

  v5 = +[MFLockStateMonitor sharedInstance];
  v6 = [v5 lockStateObservable];

  v7 = +[MFAppStateMonitor sharedInstance];
  v8 = [v7 appStateObservable];
  v28[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v10 = [v8 startWith:v9];
  v11 = [v10 map:&__block_literal_global_296];

  objc_initWeak(&location, self);
  v27[0] = v21;
  v27[1] = v11;
  v27[2] = v6;
  v27[3] = v20;
  v27[4] = v22;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];
  v13 = [VFObservable combineLatest:v12];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke_2;
  v24[3] = &unk_279E33AD0;
  objc_copyWeak(&v25, &location);
  v14 = [v13 map:v24];

  v15 = [v14 distinctUntilChanged];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke_3;
  v23[3] = &unk_279E33AF8;
  v23[4] = self;
  v16 = [v15 doOnError:v23];
  v17 = [v16 observeOnQueue:"com.apple.voicemail.imap (IDLE)" qos:17];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "isForeground")}];

  return v3;
}

id __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v5 BOOLValue];

  v7 = [v3 objectAtIndexedSubscript:1];
  v8 = [v7 BOOLValue];

  v9 = [v3 objectAtIndexedSubscript:2];
  v10 = [v9 BOOLValue];

  v11 = [v3 objectAtIndexedSubscript:3];
  v12 = [v11 BOOLValue];

  v13 = [v3 objectAtIndexedSubscript:4];
  v14 = [v13 BOOLValue];

  v15 = [WeakRetained account];
  [v15 uniqueIdForPersistentConnection];

  if (PCSettingsGetStyle() == 2)
  {
    v16 = v8 & (v6 ^ 1);
  }

  else
  {
    v19 = [v15 canReceiveNewMailNotifications];
    v20 = PCSettingsGetPollInterval() == -1;
    v16 = v8 & (v6 ^ 1);
    if ((v16 & 1) == 0 && (v20 & ~v19 & 1) == 0)
    {
      if (v12 & v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = (v10 | v6) ^ 1;
      }
    }
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:v16 & 1];

  return v17;
}

void __47__MFLibraryIMAPStore__idleConditionsObservable__block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = v3 = a2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) mailboxUid];
    v7 = [v6 mambaID];
    v8 = [(_anonymous_namespace_::staticLogger_t *)v3 vf_publicDescription];
    v9 = 136315650;
    v10 = v7;
    v11 = 2080;
    v12 = " ";
    v13 = 2114;
    v14 = v8;
    _os_log_error_impl(&dword_2720B1000, v4, OS_LOG_TYPE_ERROR, "#E %s%s#imap-idle error occurred while observing conditions for IDLE: %{public}@", &v9, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_observeChangesInIdleConditions
{
  objc_initWeak(&location, self);
  v3 = [(MFLibraryIMAPStore *)self _idleConditionsObservable];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__MFLibraryIMAPStore__observeChangesInIdleConditions__block_invoke;
  v10 = &unk_279E33B20;
  objc_copyWeak(&v11, &location);
  v4 = [VFObserver observerWithResultBlock:&v7];
  v5 = [v3 subscribe:{v4, v7, v8, v9, v10}];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __53__MFLibraryIMAPStore__observeChangesInIdleConditions__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleIdleTransition:{objc_msgSend(v4, "BOOLValue")}];
}

- (BOOL)connection:(id)a3 shouldHandleUntaggedResponse:(id)a4 forCommand:(id *)a5
{
  v7 = a4;
  v8 = (a5->var0 & 0xFFFFFFFB) == 9;
  v9 = [v7 responseType];
  if (v9 <= 12)
  {
    if (v9 == 9)
    {
      -[MFLibraryIMAPStore setServerMessageCount:](self, "setServerMessageCount:", [v7 number]);
      goto LABEL_28;
    }

    if (v9 == 10)
    {
      if ([v7 number] && a5->var0 == 1)
      {
        v8 = 0;
        *(self + 145) |= 8u;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (v9 == 13)
    {
      v10 = [(MFMailMessageStore *)self account];
      v11 = [v7 mailboxName];
      v12 = [v10 _mailboxUidForName:v11];
      v13 = [v7 statusEntries];
      v14 = [v13 objectForKey:@"UIDNEXT"];
      if (v14)
      {
        v15 = [v12 URLString];

        if (v15)
        {
          v16 = [v12 userInfoObjectForKey:@"UIDNEXT"];
          v17 = [v16 intValue];

          v18 = [v14 unsignedIntValue];
          if (v17 != v18)
          {
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v18];
            [v12 setUserInfoObject:v19 forKey:@"UIDNEXT"];
          }
        }
      }

      v20 = [(MFLibraryIMAPStore *)self mailboxName];
      v21 = [v11 isEqualToString:v20];

      if (v21)
      {
        v22 = [v13 objectForKey:@"HIGHESTMODSEQ"];

        if (v22)
        {
          -[MFLibraryIMAPStore setHighestModSequence:](self, "setHighestModSequence:", [v22 unsignedLongLongValue]);
        }
      }

      else
      {
        v22 = v14;
      }
    }

    else
    {
      if (v9 != 17)
      {
        v8 = v9 != 24;
        goto LABEL_28;
      }

      v10 = [v7 fetchResultWithType:8];
      if (v10)
      {
        if (a5->var0 == 21)
        {
          fetchPipeline = self->_fetchPipeline;
          if (fetchPipeline)
          {
            if ([(MFIMAPCommandPipeline *)fetchPipeline isSending])
            {
              -[MFIMAPDownloadCache handleFetchResponse:forUid:](self->_downloadCache, "handleFetchResponse:forUid:", v7, [v10 uid]);
            }
          }
        }
      }
    }
  }

  v8 = 1;
LABEL_28:
  if ([v7 isAlertResponse])
  {
    account = self->super.super._account;
    v25 = [v7 userString];
    [(MailAccount *)account handleAlertResponse:v25];

    v8 = 0;
  }

  return v8;
}

- (BOOL)hasValidCacheFileForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 uid];
  v6 = [v4 hasTemporaryUid];
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    v8 = [(MailAccount *)self->super.super._account offlineCacheDirectoryPath];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v5];
    v10 = [v8 stringByAppendingPathComponent:v9];
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v11 fileExistsAtPath:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)addMessages:(id)a3 newMessagesByOldMessage:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v6 = a4;
  v7 = [(MFLibraryStore *)self library];
  v8 = [(MFMailMessageStore *)self mailboxUid];
  v9 = [v7 addMessages:v17 withMailbox:v8 fetchBodies:0 newMessagesByOldMessage:v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (([v14 messageFlags] & 2) != 0)
        {
          self->super.super._deletedMessagesSize += [v14 messageSize];
          ++self->super.super._deletedMessageCount;
        }

        if (([v14 messageFlags] & 1) == 0)
        {
          ++self->super.super._unreadMessageCount;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(MFMailMessageStore *)self messagesWereAdded:v10];
  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)deletedMessages
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(MFLibraryStore *)self URLString];
  v4 = [MFMessageCriterion criterionForMailboxURL:v3];

  v5 = [MFMessageCriterion messageIsDeletedCriterion:1];
  v12[0] = v4;
  v12[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];

  v8 = [(MFLibraryStore *)self library];
  v9 = [v8 messagesMatchingCriterion:v7 options:0];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v28.receiver = self;
  v28.super_class = MFLibraryIMAPStore;
  v23 = a5;
  [(MFLibraryStore *)&v28 _handleFlagsChangedForMessages:v8 flags:v9 oldFlagsByMessage:?];
  [(MFLibraryIMAPStore *)self mf_lock];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v8;
  v10 = 0;
  v11 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v23 objectForKey:v14];
        v16 = [v15 intValue];

        if (v9)
        {
          v17 = IMAPMessageFlagsByApplyingDictionary(v16, v9);
        }

        else
        {
          v17 = [v14 messageFlags];
        }

        if ((v16 & 2) != 0)
        {
          if ((v17 & 2) != 0)
          {
            continue;
          }

          v18 = -1;
        }

        else
        {
          if ((v17 & 2) == 0)
          {
            continue;
          }

          v18 = 1;
        }

        self->_serverDeletedCount += v18;
        v10 = 1;
      }

      v11 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  [(MFLibraryIMAPStore *)self mf_unlock];
  if (v10)
  {
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = [MEMORY[0x277CCAB88] notificationWithName:@"StoreServerCountChanged" object:self userInfo:0];
    [v19 postNotification:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_setFlagsForMessages:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 keyEnumerator];
    v7 = 0;
    v8 = 1;
    v9 = 1;
    while (1)
    {
      v10 = [v6 nextObject];

      if (!v10)
      {
        break;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      v9 &= isKindOfClass;
      v8 &= isKindOfClass ^ 1;
      v7 = v10;
      if ((v12 & 1) == 0)
        v13 = {;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(MFMailMessageStore *)self mailboxUid];
          *buf = 136315394;
          v23 = [v14 mambaID];
          v24 = 2080;
          v25 = " ";
          _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s[MFLibraryIMAPStore _setFlagsForMessages:] flagsByMessage contains mixed message types", buf, 0x16u);
        }

        v15 = [v5 keyEnumerator];
        v16 = 0;
        v17 = 0;
        while (1)
        {

          v18 = [v15 nextObject];

          if (!v18)
          {
            break;
          }

          v10 = v18;
          v6 = [v5 objectForKey:v18];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v16)
            {
              v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
            }

            [v16 setObject:v6 forKey:v10];
          }

          else
          {
            if (!v17)
            {
              v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
            }

            [v17 setObject:v6 forKey:v10];
          }
        }

        if (!v16 && v17)
        {
          v20.receiver = self;
          v20.super_class = MFLibraryIMAPStore;
          [(MFMailMessageStore *)&v20 _setFlagsForMessages:v17];
        }

        goto LABEL_27;
      }
    }

    if ((v9 & 1) == 0)
    {
      v21.receiver = self;
      v21.super_class = MFLibraryIMAPStore;
      [(MFMailMessageStore *)&v21 _setFlagsForMessages:v5];
    }

    v15 = v6;
LABEL_27:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)offlineCache
{
  v2 = [(MFMailMessageStore *)self account];
  v3 = [v2 offlineCache];

  return v3;
}

- (id)offlineCacheIfOffline
{
  v2 = [(MFMailMessageStore *)self account];
  v3 = [v2 offlineCacheIfOffline];

  return v3;
}

- (void)close
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = +[MFInvocationQueue sharedInvocationQueue];
    v4 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:a2 target:self];
    [(MFIMAPConnection *)v5 addInvocation:v4];
  }

  else
  {
    [(NSLock *)self->_cachedConnectionLock lock];
    v5 = self->_cachedConnection;
    [(NSLock *)self->_cachedConnectionLock unlock];
    if (v5)
    {
      [(MFIMAPConnection *)v5 finishIdle];
    }
  }
}

- (id)messageForRemoteID:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessageStore *)self mailboxUid];
  v6 = [(MFLibraryIMAPStore *)self messageForRemoteID:v4 inMailbox:v5];

  return v6;
}

- (id)messageForRemoteID:(id)a3 inMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFLibraryStore *)self library];
  v9 = [v7 URLString];
  v10 = [v8 messageWithRemoteID:v6 inRemoteMailbox:v9];

  [v10 setMessageStore:self];

  return v10;
}

- (id)uniqueRemoteIDsForMessages:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "uid")}];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __49__MFLibraryIMAPStore_uniqueRemoteIDsForMessages___block_invoke;
  v19 = &unk_279E33B48;
  v21 = &v22;
  v11 = v5;
  v20 = v11;
  v12 = MEMORY[0x2743C3100](&v16);
  [(MFLibraryIMAPStore *)self performOperationRequiringConnection:1 withOptions:1 operation:v12, v16, v17, v18, v19];
  v13 = v23[5];

  _Block_object_dispose(&v22, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __49__MFLibraryIMAPStore_uniqueRemoteIDsForMessages___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 fetchUniqueRemoteIDsForUids:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setServerMessageCount:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [v5 objectForKey:@"DeletedSearchLimit"];

  if (v12)
  {
    v6 = [v12 unsignedIntValue];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v7 = 300;
  }

  if (v7 <= a3)
  {
    self->super._serverMessageCount = a3;
    self->_serverDeletedCount = 0;
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = [MEMORY[0x277CCAB88] notificationWithName:@"StoreServerCountChanged" object:self userInfo:0];
    [v10 postNotification:v11];
    goto LABEL_11;
  }

  if ((*(self + 145) & 0x10) == 0)
  {
    *(self + 145) |= 0x10u;
    self->super._serverMessageCount = a3;
    self->_serverDeletedCount = 0;
    v8 = +[MFActivityMonitor currentMonitor];
    v9 = [v8 isRemoteSearch];

    if ((v9 & 1) == 0)
    {
      v10 = +[MFInvocationQueue sharedInvocationQueue];
      v11 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_updateDeletedCount target:self];
      [v10 addInvocation:v11];
LABEL_11:
    }
  }
}

- (unint64_t)serverMessageCount
{
  serverDeletedCount = self->_serverDeletedCount;
  serverMessageCount = self->super._serverMessageCount;
  v4 = serverMessageCount >= serverDeletedCount;
  v5 = serverMessageCount - serverDeletedCount;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)relativePath
{
  relativePath = self->_relativePath;
  if (!relativePath)
  {
    v4 = [(MFMailMessageStore *)self mailboxUid];
    v5 = [v4 accountRelativePath];

    _MFLockGlobalLock();
    if (!self->_relativePath)
    {
      objc_storeStrong(&self->_relativePath, v5);
    }

    _MFUnlockGlobalLock();

    relativePath = self->_relativePath;
  }

  return relativePath;
}

- (id)sequenceIdentifierForUIDs:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryStore *)self library];
  v6 = [(MFLibraryStore *)self URLString];
  v7 = [v5 sequenceIdentifierForMessagesWithRemoteIDs:v4 inMailbox:v6];

  return v7;
}

- (void)setSequenceIdentifier:(id)a3 forUIDs:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MFLibraryStore *)self library];
  v8 = [(MFLibraryStore *)self URLString];
  [v7 setSequenceIdentifier:v9 forMessagesWithRemoteIDs:v6 inMailbox:v8];
}

- (void)setDownloadDelegate:(id)a3
{
  v6 = a3;
  [(MFLibraryIMAPStore *)self mf_lock];
  if (self->_downloadDelegate != v6)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    downloadDelegate = self->_downloadDelegate;
    self->_downloadDelegate = v4;
  }

  [(MFLibraryIMAPStore *)self mf_unlock];
}

- (void)connection:(id)a3 didBeginBodyLoad:(id)a4 section:(id)a5
{
  v10 = a4;
  v7 = a5;
  downloadDelegate = self->_downloadDelegate;
  if (downloadDelegate)
  {
    currentFetchUid = self->_currentFetchUid;
    if (currentFetchUid != -1)
    {
      [downloadDelegate libraryIMAPStore:self bodyDownloadBeganForUid:currentFetchUid data:v10 section:v7];
    }
  }
}

- (void)connection:(id)a3 didLoadMoreBodyData:(id)a4 section:(id)a5
{
  v10 = a4;
  v7 = a5;
  downloadDelegate = self->_downloadDelegate;
  if (downloadDelegate)
  {
    currentFetchUid = self->_currentFetchUid;
    if (currentFetchUid != -1)
    {
      [downloadDelegate libraryIMAPStore:self bodyDownloadReceivedMoreDataForUid:currentFetchUid data:v10 section:v7];
    }
  }
}

- (void)connection:(id)a3 didFinishLoadingBodyData:(id)a4 section:(id)a5
{
  v10 = a4;
  v7 = a5;
  downloadDelegate = self->_downloadDelegate;
  if (downloadDelegate)
  {
    currentFetchUid = self->_currentFetchUid;
    if (currentFetchUid != -1)
    {
      [downloadDelegate libraryIMAPStore:self bodyDownloadCompletedForUid:currentFetchUid data:v10 section:v7];
    }
  }
}

void __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_0(a1, a2, 4.8151e-34);
  *(v5 + 14) = " ";
  _os_log_error_impl(&dword_2720B1000, v6, OS_LOG_TYPE_ERROR, "#E %s%s[FetchActivity] canceling fetch because connection is invalid", v7, 0x16u);
}

void __61__MFLibraryIMAPStore_fetchNumMessages_preservingUID_options___block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_0(a1, a2, 4.8151e-34);
  *(v5 + 14) = " ";
  _os_log_error_impl(&dword_2720B1000, v6, OS_LOG_TYPE_ERROR, "#E %s%s[FetchActivity] canceling fetch because mailbox could not be selected", v7, 0x16u);
}

@end
void ___ZL24bookmarksCollectionQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.WebBookmarks.bookmarksCollectionQueue", v2);
  v1 = bookmarksCollectionQueue(void)::bookmarksCollectionQueue;
  bookmarksCollectionQueue(void)::bookmarksCollectionQueue = v0;
}

void __WBSafariDirectoryPath_block_invoke()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Safari"];
  v1 = WBSafariDirectoryPath_safariDirectoryPath;
  WBSafariDirectoryPath_safariDirectoryPath = v0;

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 _web_createDirectoryAtPathWithIntermediateDirectories:WBSafariDirectoryPath_safariDirectoryPath attributes:0];
}

id bookmarksCollectionQueue(void)
{
  if (bookmarksCollectionQueue(void)::onceToken != -1)
  {
    bookmarksCollectionQueue();
  }

  v1 = bookmarksCollectionQueue(void)::bookmarksCollectionQueue;

  return v1;
}

void sub_272C2228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WebContentAnalysisLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!WebContentAnalysisLibraryCore_frameworkLibrary)
  {
    WebContentAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = WebContentAnalysisLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getWFUserSettingsClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!WebContentAnalysisLibraryCore())
  {
    __getWFUserSettingsClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("WFUserSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWFUserSettingsClass_block_invoke_cold_1();
  }

  getWFUserSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

WebBookmarks::BookmarkSQLStatement *WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(WebBookmarks::BookmarkSQLStatement *this, sqlite3 *db, const char *zSql)
{
  *this = &unk_288258A08;
  *(this + 17) = 0;
  v4 = sqlite3_prepare_v2(db, zSql, -1, this + 1, 0);
  *(this + 16) = v4 == 0;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v4, v5);
    }
  }

  *(this + 5) = v4;
  return this;
}

id WBSafariDirectoryPath()
{
  if (WBSafariDirectoryPath_onceToken != -1)
  {
    WBSafariDirectoryPath_cold_1();
  }

  v1 = WBSafariDirectoryPath_safariDirectoryPath;

  return v1;
}

uint64_t WebBookmarks::BookmarkSQLStatement::executeSQL(WebBookmarks::BookmarkSQLStatement *this, sqlite3 *zSql, const char *a3)
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v5, this, zSql);
  if (v7)
  {
    sqlite3_step(pStmt);
    if (v8)
    {
      v3 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = 1;
      v3 = sqlite3_finalize(pStmt);
    }
  }

  else
  {
    v3 = 1;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v5);
  return v3;
}

void sub_272C22EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(WebBookmarks::BookmarkSQLStatement *this)
{
  *this = &unk_288258A08;
  if ((*(this + 17) & 1) == 0)
  {
    *(this + 17) = 1;
    sqlite3_finalize(*(this + 1));
  }
}

{
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(this);

  JUMPOUT(0x2743D62C0);
}

uint64_t WebBookmarks::BookmarkSQLStatement::selectInt(WebBookmarks::BookmarkSQLStatement *this, sqlite3 *zSql, const char *a3)
{
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v5, this, zSql);
  if (v7 == 1 && sqlite3_step(v6) == 100)
  {
    v3 = sqlite3_column_int(v6, 0);
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v5);
  return v3;
}

void sub_272C23234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

id BookmarkSQLiteColumns()
{
  if (BookmarkSQLiteColumns_onceToken != -1)
  {
    BookmarkSQLiteColumns_cold_1();
  }

  v1 = BookmarkSQLiteColumns_columns;

  return v1;
}

id BookmarkSQLiteColumnNames()
{
  if (BookmarkSQLiteColumnNames_onceToken != -1)
  {
    BookmarkSQLiteColumnNames_cold_1();
  }

  v1 = BookmarkSQLiteColumnNames_columns;

  return v1;
}

void __BookmarkSQLiteColumns_block_invoke()
{
  v2 = BookmarkSQLiteColumnNames();
  v0 = [v2 componentsJoinedByString:{@", "}];
  v1 = BookmarkSQLiteColumns_columns;
  BookmarkSQLiteColumns_columns = v0;
}

void __BookmarkSQLiteColumnNames_block_invoke()
{
  v3[25] = *MEMORY[0x277D85DE8];
  v3[0] = @"bookmarks.type";
  v3[1] = @"bookmarks.title";
  v3[2] = @"bookmarks.url";
  v3[3] = @"bookmarks.id";
  v3[4] = @"bookmarks.editable";
  v3[5] = @"bookmarks.deletable";
  v3[6] = @"bookmarks.hidden";
  v3[7] = @"bookmarks.parent";
  v3[8] = @"bookmarks.order_index";
  v3[9] = @"bookmarks.external_uuid";
  v3[10] = @"bookmarks.special_id";
  v3[11] = @"bookmarks.server_id";
  v3[12] = @"bookmarks.sync_key";
  v3[13] = @"bookmarks.sync_data";
  v3[14] = @"bookmarks.extra_attributes";
  v3[15] = @"bookmarks.local_attributes";
  v3[16] = @"bookmarks.fetched_icon";
  v3[17] = @"bookmarks.icon";
  v3[18] = @"bookmarks.locally_added";
  v3[19] = @"bookmarks.archive_status";
  v3[20] = @"bookmarks.syncable";
  v3[21] = @"bookmarks.web_filter_status";
  v3[22] = @"bookmarks.modified_attributes";
  v3[23] = @"bookmarks.last_selected_child";
  v3[24] = @"bookmarks.subtype";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:25];
  v1 = BookmarkSQLiteColumnNames_columns;
  BookmarkSQLiteColumnNames_columns = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void performBlockExclusively(void *a1)
{
  v1 = a1;
  if (performBlockExclusively(void({block_pointer})(void))::onceToken != -1)
  {
    performBlockExclusively();
  }

  dispatch_semaphore_wait(performBlockExclusively(void({block_pointer})(void))::mutex, 0xFFFFFFFFFFFFFFFFLL);
  v1[2]();
  dispatch_semaphore_signal(performBlockExclusively(void({block_pointer})(void))::mutex);
}

uint64_t ___ZL23performBlockExclusivelyU13block_pointerFvvE_block_invoke()
{
  performBlockExclusively(void({block_pointer})(void))::mutex = dispatch_semaphore_create(1);

  return MEMORY[0x2821F96F8]();
}

id collectionTypeToDeviceIdentifierDictionary(void)
{
  {
    collectionTypeToDeviceIdentifierDictionary(void)::dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v0 = collectionTypeToDeviceIdentifierDictionary(void)::dictionary;

  return v0;
}

uint64_t WebBookmarks::BookmarkSQLStatement::selectInt(WebBookmarks::BookmarkSQLStatement *this, sqlite3 *a2, NSString *a3)
{
  v4 = a2;
  v5 = [(sqlite3 *)v4 UTF8String];
  v7 = WebBookmarks::BookmarkSQLStatement::selectInt(this, v5, v6);

  return v7;
}

unsigned __int8 *WBUTF8StringFromSQLStatement(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_column_text(a1, a2);
    if (v4)
    {
      v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
    }
  }

  return v4;
}

id newStringFromNullableColumn(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{sqlite3_column_text(a1, a2)}];
  }

  return v4;
}

uint64_t WebBookmarks::BookmarkSQLStatement::finalize(WebBookmarks::BookmarkSQLStatement *this)
{
  if (*(this + 17))
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 17) = 1;
  return sqlite3_finalize(*(this + 1));
}

uint64_t WBS_LOG_CHANNEL_PREFIXBookmarks()
{
  if (WBS_LOG_CHANNEL_PREFIXBookmarks_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBookmarks_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBookmarks_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabGroup()
{
  if (WBS_LOG_CHANNEL_PREFIXTabGroup_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabGroup_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabGroup_log;
}

id WBDataFromNullableColumn(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = sqlite3_column_blob(a1, a2);
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v5 length:{sqlite3_column_bytes(a1, a2)}];
  }

  return v4;
}

void SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(id *this)
{
  SafariShared::SuddenTerminationDisabler::enableSuddenTermination(this);
}

NSString *whereClauseWithAppendingINConditions(NSString *a1, NSString *a2, NSString *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [(NSString *)v6 length];
  v9 = [(NSString *)v7 length];
  if (v8 && v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ AND %@) OR %@", v5, v7, v6];
LABEL_11:
    v13 = v10;

    v5 = v13;
    goto LABEL_12;
  }

  if (v8 && !v9)
  {
    v11 = @"(%@) OR %@";
    v12 = v6;
LABEL_10:
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v5, v12];
    goto LABEL_11;
  }

  if (!v8 && v9)
  {
    v11 = @"(%@ AND %@)";
    v12 = v7;
    goto LABEL_10;
  }

LABEL_12:

  return v5;
}

uint64_t WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(uint64_t this, sqlite3_stmt *a2)
{
  *this = &unk_288258A08;
  *(this + 8) = a2;
  *(this + 16) = 1;
  *(this + 20) = 0;
  return this;
}

id commaSeparatedIDStringForBookmarkIDs(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] string];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v2 length])
        {
          v8 = [v7 stringValue];
          [v2 appendFormat:@", %@", v8];
        }

        else
        {
          v8 = [v7 stringValue];
          [v2 appendString:v8];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

id WBObjectFromColumn(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2);
  v5 = 0;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(a1, a2)}];
    }

    else if (v4 == 2)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(a1, a2)}];
    }
  }

  else
  {
    switch(v4)
    {
      case 3:
        v5 = WBUTF8StringFromSQLStatement(a1, a2);
        break;
      case 4:
        v5 = WBDataFromNullableColumn(a1, a2);
        break;
      case 5:
        v5 = [MEMORY[0x277CBEB68] null];
        break;
    }
  }

  return v5;
}

WebBookmarks::BookmarkSQLWriteTransaction *WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(WebBookmarks::BookmarkSQLWriteTransaction *this, sqlite3 *a2, const char *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0;
  *this = &unk_288258A68;
  *(this + 1) = a2;
  *(this + 18) = 0;
  v4 = WebBookmarks::BookmarkSQLStatement::executeSQL(a2, "BEGIN IMMEDIATE", a3);
  if ((v4 - 5) <= 1)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_DEFAULT, "WebBookmarks could not start an immediate transaction; sleeping.", buf, 2u);
    }

    notify_post("com.apple.MobileSafari.StopSyncing");
    usleep(0xC350u);
    v4 = WebBookmarks::BookmarkSQLStatement::executeSQL(*(this + 1), "BEGIN IMMEDIATE", v6);
    if ((v4 - 5) <= 1)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "WebBookmarks could not start an immediate transaction; sleeping longer.", buf, 2u);
      }

      usleep(0x6DDD0u);
      v4 = WebBookmarks::BookmarkSQLStatement::executeSQL(*(this + 1), "BEGIN IMMEDIATE", v8);
    }
  }

  *(this + 17) = v4 == 0;
  if (v4)
  {
    if (v4 == 1)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_errmsg(*(this + 1));
        WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(v10, buf);
      }
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(v4, v11);
      }
    }

    if ([MEMORY[0x277D49A08] hasInternalContent])
    {
      v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [MEMORY[0x277CCACC8] callStackSymbols];
        WebBookmarks::BookmarkSQLReadTransaction::BookmarkSQLReadTransaction(v13, &v16);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_272C263B0(_Unwind_Exception *a1)
{
  v3 = v2;

  WebBookmarks::BookmarkSQLTransaction::~BookmarkSQLTransaction(v1, v5, v6);
  _Unwind_Resume(a1);
}

void sub_272C2662C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

BOOL WebBookmarks::BookmarkSQLTransaction::commit(WebBookmarks::BookmarkSQLTransaction *this, uint64_t a2, const char *a3)
{
  if (*(this + 17) != 1)
  {
    return 0;
  }

  if (*(this + 16))
  {
    return 0;
  }

  v5 = WebBookmarks::BookmarkSQLStatement::executeSQL(*(this + 1), "COMMIT", a3);
  *(this + 16) = 1;
  return v5 == 0;
}

void WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(WebBookmarks::BookmarkSQLStatement **this, uint64_t a2, const char *a3)
{
  WebBookmarks::BookmarkSQLTransaction::~BookmarkSQLTransaction(this, a2, a3);

  JUMPOUT(0x2743D62C0);
}

void WebBookmarks::BookmarkSQLTransaction::~BookmarkSQLTransaction(WebBookmarks::BookmarkSQLStatement **this, uint64_t a2, const char *a3)
{
  *this = &unk_288258A28;
  if (*(this + 17) == 1 && (this[2] & 1) == 0)
  {
    WebBookmarks::BookmarkSQLStatement::executeSQL(this[1], "ROLLBACK", a3);
    *(this + 16) = 1;
  }
}

{
  WebBookmarks::BookmarkSQLTransaction::~BookmarkSQLTransaction(this, a2, a3);

  JUMPOUT(0x2743D62C0);
}

void WBSetupTabGroupSyncAgentProtocolInterface(void *a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB98];
  v2 = a1;
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v1 setWithArray:v3];

  [v2 setClasses:v4 forSelector:sel_userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  [v2 setClasses:v4 forSelector:sel_beginSharingTabGroupWithUUID_completionHandler_ argumentIndex:1 ofReply:1];
  [v2 setClasses:v4 forSelector:sel_acceptShareForURL_invitationTokenData_completionHandler_ argumentIndex:1 ofReply:1];
  v5 = WBTabGroupSyncAgentSyncObserverInterface();
  [v2 setInterface:v5 forSelector:sel_addSyncObserver_ argumentIndex:0 ofReply:0];
  [v2 setInterface:v5 forSelector:sel_removeSyncObserver_ argumentIndex:0 ofReply:0];

  v6 = *MEMORY[0x277D85DE8];
}

id WBTabGroupSyncAgentSyncObserverInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2882738D0];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_participants_didJoinSharedTabGroupWithUUID_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:sel_participants_didLeaveSharedTabGroupWithUUID_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_272C26B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272C26DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

id syncLockQueue(void)
{
  if (syncLockQueue(void)::onceToken != -1)
  {
    syncLockQueue();
  }

  v1 = syncLockQueue(void)::syncLockQueue;

  return v1;
}

uint64_t ___ZL13syncLockQueuev_block_invoke()
{
  syncLockQueue(void)::syncLockQueue = dispatch_queue_create("come.apple.WebBookmarks.syncLockQueue", MEMORY[0x277D85CD8]);

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ZL19syncFlagsDictionaryv_block_invoke()
{
  syncFlagsDictionary(void)::syncFlagsDictionary = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

uint64_t WBS_LOG_CHANNEL_PREFIXBookmarkSync()
{
  if (WBS_LOG_CHANNEL_PREFIXBookmarkSync_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBookmarkSync_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBookmarkSync_log;
}

void sub_272C28158(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_272C28BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WebBookmarks::BookmarkSQLStatement::executeSQL(WebBookmarks::BookmarkSQLStatement *this, sqlite3 *a2, NSString *a3)
{
  v4 = a2;
  v5 = [(sqlite3 *)v4 UTF8String];
  v7 = WebBookmarks::BookmarkSQLStatement::executeSQL(this, v5, v6);

  return v7;
}

uint64_t bindAttributesToSQLStatement(sqlite3_stmt *a1, int a2, void *a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    sqlite3_bind_null(a1, a2);
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v6 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:v14];
  v8 = v14[0];
  if (v7)
  {
    v9 = [v7 length];
    v10 = v7;
    sqlite3_bind_blob(a1, a2, [v7 bytes], v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v8 wb_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      bindAttributesToSQLStatement_cold_1();
    }
  }

  objc_autoreleasePoolPop(v6);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

void bindNullableDataToSQLStatement(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    sqlite3_bind_blob(a1, a2, [v5 bytes], objc_msgSend(v5, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(a1, a2);
  }
}

Class __getTIWordTokenizerClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!TextInputLibraryCore_frameworkLibrary)
  {
    TextInputLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("TIWordTokenizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTIWordTokenizerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __cjkIdeographCharacterSet_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = cjkIdeographCharacterSet_cjkIdeographCharacterSet;
  cjkIdeographCharacterSet_cjkIdeographCharacterSet = v0;

  [cjkIdeographCharacterSet_cjkIdeographCharacterSet addCharactersInRange:{19968, 20992}];
  [cjkIdeographCharacterSet_cjkIdeographCharacterSet addCharactersInRange:{13312, 6592}];
  [cjkIdeographCharacterSet_cjkIdeographCharacterSet addCharactersInRange:{11904, 128}];
  [cjkIdeographCharacterSet_cjkIdeographCharacterSet addCharactersInRange:{12032, 224}];
  [cjkIdeographCharacterSet_cjkIdeographCharacterSet addCharactersInRange:{12736, 48}];
  [cjkIdeographCharacterSet_cjkIdeographCharacterSet addCharactersInRange:{63744, 512}];
  [cjkIdeographCharacterSet_cjkIdeographCharacterSet addCharactersInRange:{0x20000, 42720}];
  [cjkIdeographCharacterSet_cjkIdeographCharacterSet addCharactersInRange:{173824, 4160}];
  [cjkIdeographCharacterSet_cjkIdeographCharacterSet addCharactersInRange:{177984, 224}];
  v2 = cjkIdeographCharacterSet_cjkIdeographCharacterSet;

  return [v2 addCharactersInRange:{194560, 544}];
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2114;
  *(a2 + 10) = result;
  return result;
}

void OUTLINED_FUNCTION_6_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_6_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_272C2B2A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_272C2E5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_272C2F818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272C2FA8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id makeSettingDictionary(NSString *a1, objc_object *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = *MEMORY[0x277D4A158];
  v11[0] = *MEMORY[0x277D4A150];
  v11[1] = v6;
  v7 = &stru_288259858;
  if (v4)
  {
    v7 = v4;
  }

  v12[0] = v3;
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_272C30800(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t CKBABookmarkTypeForBookmark(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isReadingListItem])
  {
    v2 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v3 = 1;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "CKBABookmarkTypeForBookmark";
      v3 = 1;
      _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_INFO, "<- %s -> CKBABookmarkTypeReadingListItem", &v9, 0xCu);
    }
  }

  else
  {
    v4 = [v1 subtype];
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4 == 1)
    {
      if (v6)
      {
        v9 = 136315138;
        v10 = "CKBABookmarkTypeForBookmark";
        _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s -> CKBABookmarkTypeTabGroupScopedBookmark", &v9, 0xCu);
      }

      v3 = 2;
    }

    else
    {
      if (v6)
      {
        v9 = 136315138;
        v10 = "CKBABookmarkTypeForBookmark";
        _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s -> CKBABookmarkTypeRegular", &v9, 0xCu);
      }

      v3 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

id copyBookmarkAttributes(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = 1;
  if (([v5 attributesMarkedAsModified:1] & 1) == 0)
  {
    v7 = [v5 attributesMarkedAsModified:2];
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  if ((a3 & 1) == 0 && !v7)
  {
    v9 = 0;
    v10 = 0;
    if (![v5 isFolder])
    {
      goto LABEL_77;
    }

LABEL_16:
    if ((a3 & 1) != 0 || [v5 attributesMarkedAsModified:32])
    {
      v15 = [v5 isSelectedFavoritesFolder];

      if (v15)
      {
        v16 = a3;
      }

      else
      {
        v16 = 0;
      }

      if ((v16 & 1) != 0 || !a3)
      {
        if (v15)
        {
          [v8 setObject:v15 forKeyedSubscript:@"IsSelectedFavoritesFolder"];
        }

        else
        {
          v19 = [MEMORY[0x277CBEB68] null];
          [v8 setObject:v19 forKeyedSubscript:@"IsSelectedFavoritesFolder"];
        }
      }
    }

    else
    {
      v15 = v9;
    }

    v20 = [v6 configuration];
    if ([v20 collectionType] == 1)
    {
      if (a3)
      {
      }

      else
      {
        v21 = [v5 attributesMarkedAsModified:512];

        if ((v21 & 1) == 0)
        {
LABEL_44:
          if (![v5 attributesMarkedAsModified:4096])
          {
            v10 = v15;
            goto LABEL_54;
          }

LABEL_45:
          v10 = [v5 symbolImageName];

          if (v10)
          {
            v23 = a3;
          }

          else
          {
            v23 = 0;
          }

          if ((v23 & 1) != 0 || !a3)
          {
            if (v10)
            {
              [v8 setObject:v10 forKeyedSubscript:@"SymbolImageName"];
            }

            else
            {
              v24 = [MEMORY[0x277CBEB68] null];
              [v8 setObject:v24 forKeyedSubscript:@"SymbolImageName"];

              v10 = 0;
            }
          }

LABEL_54:
          v25 = [v6 configuration];
          if ([(WBTabGroup *)v25 collectionType]== 1)
          {
            if (a3)
            {
            }

            else
            {
              v26 = [v5 attributesMarkedAsModified:0x2000];

              if ((v26 & 1) == 0)
              {
                if ([v5 isReadingListItem])
                {
                  goto LABEL_137;
                }

                goto LABEL_67;
              }
            }

            v25 = [[WBTabGroup alloc] initWithBookmark:v5];
            v27 = [MEMORY[0x277CCAA00] defaultManager];
            v28 = [(WBTabGroup *)v25 uuid];
            v29 = [v27 safari_startPageBackgroundImageFileURLForIdentifier:v28];

            if ([v29 checkResourceIsReachableAndReturnError:0])
            {
              [v8 setObject:v29 forKeyedSubscript:@"BackgroundImage"];
            }

            else
            {
              v30 = [MEMORY[0x277CBEB68] null];
              [v8 setObject:v30 forKeyedSubscript:@"BackgroundImage"];
            }
          }

          if ([v5 isReadingListItem])
          {
            v31 = v10;
            goto LABEL_136;
          }

          if (a3)
          {
LABEL_68:
            v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "showIconOnly")}];

            if (v31)
            {
              v32 = a3;
            }

            else
            {
              v32 = 0;
            }

            if ((v32 & 1) != 0 || !a3)
            {
              if (v31)
              {
                [v8 setObject:v31 forKeyedSubscript:@"ShowIconOnly"];
              }

              else
              {
                v48 = [MEMORY[0x277CBEB68] null];
                [v8 setObject:v48 forKeyedSubscript:@"ShowIconOnly"];
              }
            }

LABEL_136:
            v10 = v31;
            if (a3)
            {
LABEL_138:
              v10 = [v5 dateAdded];

              if (v10)
              {
                v49 = a3;
              }

              else
              {
                v49 = 0;
              }

              if ((v49 & 1) != 0 || !a3)
              {
                if (v10)
                {
                  [v8 setObject:v10 forKeyedSubscript:@"DateAdded"];
                }

                else
                {
                  v50 = [MEMORY[0x277CBEB68] null];
                  [v8 setObject:v50 forKeyedSubscript:@"DateAdded"];
                }
              }

              goto LABEL_152;
            }

LABEL_137:
            v31 = v10;
            if (![v5 attributesMarkedAsModified:16])
            {
              goto LABEL_152;
            }

            goto LABEL_138;
          }

LABEL_67:
          if (![v5 attributesMarkedAsModified:0x200000])
          {
            goto LABEL_137;
          }

          goto LABEL_68;
        }
      }

      v20 = [v6 serverIDForBookmarkID:{objc_msgSend(v5, "lastSelectedChildID")}];
      if (v20)
      {
        [v8 setObject:v20 forKeyedSubscript:@"LastSelectedTab"];
      }

      else
      {
        v22 = [MEMORY[0x277CBEB68] null];
        [v8 setObject:v22 forKeyedSubscript:@"LastSelectedTab"];
      }
    }

    if (a3)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v11 = [v5 title];
  v9 = v11;
  if (v11)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3 ^ 1;
  if ((v12 & 1) != 0 || v13)
  {
    if (v11)
    {
      [v8 setObject:v11 forKeyedSubscript:@"Title"];
    }

    else
    {
      v14 = [MEMORY[0x277CBEB68] null];
      [v8 setObject:v14 forKeyedSubscript:@"Title"];
    }
  }

  if ([v5 isFolder])
  {
    goto LABEL_16;
  }

  v10 = [v5 address];

  if (v10)
  {
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = a3;
  }

  else
  {
    v18 = 0;
  }

  if ((v18 | v13) == 1)
  {
    if (v17)
    {
      [v8 setObject:v17 forKeyedSubscript:@"URL"];
    }

    else
    {
      v33 = [MEMORY[0x277CBEB68] null];
      [v8 setObject:v33 forKeyedSubscript:@"URL"];
    }
  }

LABEL_77:
  if ([v5 isReadingListItem])
  {
    v34 = v10;
  }

  else
  {
    if ((a3 & 1) == 0 && ![v5 attributesMarkedAsModified:0x200000])
    {
LABEL_90:
      if (![v5 attributesMarkedAsModified:16])
      {
        if (([v5 isReadingListItem] & 1) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_104;
      }

      goto LABEL_91;
    }

    v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "showIconOnly")}];

    if (v34)
    {
      v35 = a3;
    }

    else
    {
      v35 = 0;
    }

    if ((v35 & 1) != 0 || !a3)
    {
      if (v34)
      {
        [v8 setObject:v34 forKeyedSubscript:@"ShowIconOnly"];
      }

      else
      {
        v36 = [MEMORY[0x277CBEB68] null];
        [v8 setObject:v36 forKeyedSubscript:@"ShowIconOnly"];
      }
    }
  }

  v10 = v34;
  if ((a3 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_91:
  v37 = v10;
  v10 = [v5 dateAdded];

  if (v10)
  {
    v38 = a3;
  }

  else
  {
    v38 = 0;
  }

  if ((v38 & 1) != 0 || !a3)
  {
    if (v10)
    {
      [v8 setObject:v10 forKeyedSubscript:@"DateAdded"];
    }

    else
    {
      v39 = [MEMORY[0x277CBEB68] null];
      [v8 setObject:v39 forKeyedSubscript:@"DateAdded"];
    }
  }

  if ([v5 isReadingListItem])
  {
    if (a3)
    {
      v40 = 0;
      goto LABEL_106;
    }

LABEL_104:
    if (![v5 attributesMarkedAsModified:8])
    {
      goto LABEL_114;
    }

    v40 = 1;
LABEL_106:
    v41 = v10;
    v10 = [v5 dateLastViewed];

    if (v10)
    {
      v42 = a3;
    }

    else
    {
      v42 = 0;
    }

    if ((v42 & 1) != 0 || v40)
    {
      if (!v10)
      {
        v51 = [MEMORY[0x277CBEB68] null];
        [v8 setObject:v51 forKeyedSubscript:@"DateLastViewed"];

        v10 = 0;
        if (a3)
        {
          goto LABEL_116;
        }

        goto LABEL_114;
      }

      [v8 setObject:v10 forKeyedSubscript:@"DateLastViewed"];
    }

    if (a3)
    {
      goto LABEL_116;
    }

LABEL_114:
    if (![v5 attributesMarkedAsModified:256])
    {
      goto LABEL_124;
    }

    v40 = 1;
LABEL_116:
    v43 = v10;
    v10 = [v5 previewText];

    if (v10)
    {
      v44 = a3;
    }

    else
    {
      v44 = 0;
    }

    if ((v44 & 1) != 0 || v40)
    {
      if (!v10)
      {
        v52 = [MEMORY[0x277CBEB68] null];
        [v8 setObject:v52 forKeyedSubscript:@"PreviewText"];

        v10 = 0;
        if ((a3 & 1) == 0)
        {
LABEL_124:
          if (![v5 attributesMarkedAsModified:128])
          {
            goto LABEL_152;
          }
        }

LABEL_125:
        v45 = v10;
        v10 = [v5 readingListIconURL];

        if (v10)
        {
          v46 = [MEMORY[0x277CBEBC0] URLWithString:v10];
        }

        else
        {
          v46 = 0;
        }

        if (v46)
        {
          v47 = a3;
        }

        else
        {
          v47 = 0;
        }

        if ((v47 & 1) != 0 || !a3)
        {
          if (v46)
          {
            [v8 setObject:v46 forKeyedSubscript:@"ImageURL"];
          }

          else
          {
            v53 = [MEMORY[0x277CBEB68] null];
            [v8 setObject:v53 forKeyedSubscript:@"ImageURL"];
          }
        }

        goto LABEL_152;
      }

      [v8 setObject:v10 forKeyedSubscript:@"PreviewText"];
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_125;
  }

LABEL_152:

  return v8;
}

uint64_t __CKBAItemSetModifiedAttributes_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isInserted];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _saveBookmark:v4 withSpecialID:0 updateGenerationIfNeeded:0];
  }

  return result;
}

id bookmarkURLWithString(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEBC0] URLWithString:a1];
    v1 = vars8;
  }

  return a1;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_272C396D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WBBookmarkSyncModifiedAttributesForKey(void *a1)
{
  v1 = WBBookmarkSyncModifiedAttributesForKey_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    WBBookmarkSyncModifiedAttributesForKey_cold_1();
  }

  v3 = [WBBookmarkSyncModifiedAttributesForKey_keysToModifiedAttributeMasks objectForKeyedSubscript:v2];

  v4 = [v3 integerValue];
  return v4;
}

void __WBBookmarkSyncModifiedAttributesForKey_block_invoke()
{
  v0 = WBBookmarkSyncModifiedAttributesForKey_keysToModifiedAttributeMasks;
  WBBookmarkSyncModifiedAttributesForKey_keysToModifiedAttributeMasks = &unk_2882696A0;
}

uint64_t WBBookmarkSyncModifiedAttributesForKeys(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v4 |= WBBookmarkSyncModifiedAttributesForKey(*(*(&v9 + 1) + 8 * i));
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

id WBKeysForBookmarkSyncModifiedAttributes(int a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __WBKeysForBookmarkSyncModifiedAttributes_block_invoke;
  v6[3] = &unk_279E75600;
  v7 = v2;
  v3 = v2;
  _keysForModifiedAttributeMaskUsingBlock(a1, v6);
  v4 = [v3 copy];

  return v4;
}

void _keysForModifiedAttributeMaskUsingBlock(int a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v3[2](v3, @"ParentAndPosition");
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v3[2](v3, @"Title");
  if ((a1 & 0x40) == 0)
  {
LABEL_4:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v3[2](v3, @"IsSelectedFavoritesFolder");
  if ((a1 & 0x80) == 0)
  {
LABEL_5:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v3[2](v3, @"IsTabGroup");
  if ((a1 & 0x1000) == 0)
  {
LABEL_6:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v3[2](v3, @"DateAdded");
  if ((a1 & 0x2000) == 0)
  {
LABEL_7:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v3[2](v3, @"DateLastViewed");
  if ((a1 & 0x4000) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v3[2](v3, @"HasUserDefinedPreviewText");
  if ((a1 & 0x8000) == 0)
  {
LABEL_9:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v3[2](v3, @"ImageURL");
  if ((a1 & 0x10000) == 0)
  {
LABEL_10:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v3[2](v3, @"PreviewText");
  if ((a1 & 0x20000) == 0)
  {
LABEL_11:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v3[2](v3, @"URL");
  if ((a1 & 0x40000) == 0)
  {
LABEL_12:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v3[2](v3, @"LastSelectedTab");
  if ((a1 & 0x80000) == 0)
  {
LABEL_13:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v3[2](v3, @"SymbolImageName");
  if ((a1 & 0x400000) == 0)
  {
LABEL_14:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v3[2](v3, @"CustomFavoritesFolderServerID");
  if ((a1 & 0x100000) == 0)
  {
LABEL_15:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v3[2](v3, @"BackgroundImage");
  if ((a1 & 0x200000) == 0)
  {
LABEL_16:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  v3[2](v3, @"IsPinned");
  if ((a1 & 0x800000) != 0)
  {
LABEL_17:
    v3[2](v3, @"ShowIconOnly");
  }

LABEL_18:
}

id WBDescriptionForBookmarkSyncModifiedAttributes(int a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __WBDescriptionForBookmarkSyncModifiedAttributes_block_invoke;
  v6[3] = &unk_279E75600;
  v7 = v2;
  v3 = v2;
  _keysForModifiedAttributeMaskUsingBlock(a1, v6);
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

void sub_272C3B320(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 name];
      [(WBBookmarkSyncData *)v4 positionFromContentsOfData:v3];
    }

    objc_end_catch();
    JUMPOUT(0x272C3B2C4);
  }

  _Unwind_Resume(exception_object);
}

void sub_272C41388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va1);
  _Unwind_Resume(a1);
}

void sub_272C41CB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C41E00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C42660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C42CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);

  _Unwind_Resume(a1);
}

void sub_272C42ED4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_272C4348C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_272C43CA0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_272C44E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C45FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C4611C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C4624C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C4632C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C466AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C468A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C46A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C46F3C(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C474A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C47644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C4775C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C47844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C47940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C47FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  _Block_object_dispose((v39 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_272C48FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C490D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C491F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C49320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C4952C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C4AE10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C4B30C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

WebBookmarks::BookmarkSQLReadTransaction *WebBookmarks::BookmarkSQLReadTransaction::BookmarkSQLReadTransaction(WebBookmarks::BookmarkSQLReadTransaction *this, sqlite3 *a2, const char *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0;
  *this = &unk_288258A48;
  *(this + 1) = a2;
  WebBookmarks::BookmarkSQLStatement::executeSQL(a2, "BEGIN DEFERRED", a3);
  v5 = WebBookmarks::BookmarkSQLStatement::executeSQL(*(this + 1), "SELECT NULL FROM bookmarks", v4);
  if ((v5 - 5) <= 1)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "WebBookmarks could not start a deferred transaction; sleeping and trying again later", buf, 2u);
    }

    notify_post("com.apple.MobileSafari.StopSyncing");
    usleep(0xC350u);
    v5 = WebBookmarks::BookmarkSQLStatement::executeSQL(*(this + 1), "SELECT NULL FROM bookmarks", v7);
    if ((v5 - 5) <= 1)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_DEFAULT, "WebBookmarks still could not start a deferred transaction; sleeping longer", buf, 2u);
      }

      usleep(0x6DDD0u);
      v5 = WebBookmarks::BookmarkSQLStatement::executeSQL(*(this + 1), "SELECT NULL FROM bookmarks", v9);
    }
  }

  *(this + 17) = v5 == 0;
  if (v5)
  {
    if (v5 == 1)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_errmsg(*(this + 1));
        WebBookmarks::BookmarkSQLReadTransaction::BookmarkSQLReadTransaction(v11, buf);
      }
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        WebBookmarks::BookmarkSQLReadTransaction::BookmarkSQLReadTransaction(v5, v12);
      }
    }

    if ([MEMORY[0x277D49A08] hasInternalContent])
    {
      v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACC8] callStackSymbols];
        WebBookmarks::BookmarkSQLReadTransaction::BookmarkSQLReadTransaction(v14, &v17);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_272C4BBA0(_Unwind_Exception *a1)
{
  v3 = v2;

  WebBookmarks::BookmarkSQLTransaction::~BookmarkSQLTransaction(v1, v5, v6);
  _Unwind_Resume(a1);
}

void WebBookmarks::BookmarkSQLReadTransaction::~BookmarkSQLReadTransaction(WebBookmarks::BookmarkSQLStatement **this, uint64_t a2, const char *a3)
{
  *this = &unk_288258A48;
  if (*(this + 17) == 1 && (this[2] & 1) == 0)
  {
    WebBookmarks::BookmarkSQLStatement::executeSQL(this[1], "COMMIT", a3);
    *(this + 16) = 1;
  }

  WebBookmarks::BookmarkSQLTransaction::~BookmarkSQLTransaction(this, a2, a3);
}

{
  WebBookmarks::BookmarkSQLReadTransaction::~BookmarkSQLReadTransaction(this, a2, a3);

  JUMPOUT(0x2743D62C0);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *WBStringFromBookmarkSyncState(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"State <%zd>", a1];
  }

  else
  {
    v2 = off_279E75C50[a1];
  }

  return v2;
}

void sub_272C533DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_272C5666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C56920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C56B04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C56EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void sub_272C572BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_272C57B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement((v38 - 256));

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&a35);
  _Unwind_Resume(a1);
}

void sub_272C587E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C590E4(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v2, 0x10A1C4022337C91);

  _Unwind_Resume(a1);
}

void sub_272C591FC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_272C59A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  WebBookmarks::BookmarkSQLReadTransaction::~BookmarkSQLReadTransaction(va);
  _Unwind_Resume(a1);
}

void sub_272C5A21C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C5A330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C5A550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C5A6F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C5A7F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C5B6D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C5B7CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C5BBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(&a30);

  _Unwind_Resume(a1);
}

void sub_272C5C26C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_272C5C9E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(va);

  _Unwind_Resume(a1);
}

void sub_272C5CDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va1);

  _Unwind_Resume(a1);
}

void sub_272C5DB7C(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_272C5E658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52)
{
  _Block_object_dispose(&a47, 8);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void sub_272C5EED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va1);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C5F9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);

  _Unwind_Resume(a1);
}

void sub_272C5FFC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C60F70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C61018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6112C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C61258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C61724(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_272C61870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C61988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C61A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C61C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C61FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C627AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C629D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C62B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C635C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C63798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C639FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C63B04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C640F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C64A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, ...)
{
  va_start(va, a6);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C64CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6528C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(va1);
  _Unwind_Resume(a1);
}

void sub_272C654DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C65750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v9 = v8;

  WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(va);
  _Unwind_Resume(a1);
}

void sub_272C66AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va1);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement((v9 - 128));
  _Unwind_Resume(a1);
}

void sub_272C670EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C67184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C67444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272C67680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C68300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6908C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C69320(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_272C6AB3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6ADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6B014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6B568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va1);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va2);

  _Unwind_Resume(a1);
}

void sub_272C6B7E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6B950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_272C6C028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6C2E8(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va1);

  _Unwind_Resume(a1);
}

void sub_272C6C4A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6C610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6CA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&a34);

  _Unwind_Resume(a1);
}

uint64_t compareBookmarksByOrder(void *a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = a2;
  v6 = [v4 orderIndex];
  if (v6 <= [v5 orderIndex])
  {
    v8 = [v4 orderIndex];
    if (v8 >= [v5 orderIndex])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_272C6CE18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6CF18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6D26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6D464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6D9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6DAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6DB80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6DE20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6DEC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void BookmarksFileChanged(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "Received com.apple.bookmarks.BookmarksFileChanged", buf, 2u);
  }

  v7 = a2;
  if (v7)
  {
    v8 = bookmarksCollectionQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZL20BookmarksFileChangedP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke;
    block[3] = &unk_279E757C8;
    v10 = v7;
    dispatch_sync(v8, block);
  }
}

void sub_272C6E544(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_272C6E630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6E724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(va);
  _Unwind_Resume(a1);
}

void sub_272C6EE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6F798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va1);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C6FD04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C6FFB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C700E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C70B14(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_272C71B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLWriteTransaction::~BookmarkSQLWriteTransaction(va);
  _Unwind_Resume(a1);
}

void sub_272C72A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&a62);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&a65);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&a68);
  (*(*a18 + 8))(a18);
  (*(*a23 + 8))(a23);

  (*(*a30 + 8))(a30);
  (*(*a38 + 8))(a38);

  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);

  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);

  _Unwind_Resume(a1);
}

void sub_272C72EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C7320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C73CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C7448C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C74614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C747A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v4;

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C74944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C74AC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C7518C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Block_object_dispose((v2 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_272C75344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C75608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272C762E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);
  _Unwind_Resume(a1);
}

void sub_272C76714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C76F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_272C777E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_272C77908(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t ___ZL33prefixEndingWithFirstWordOfStringP8NSString_block_invoke()
{
  v0 = objc_alloc_init(WebBookmarkTitleWordTokenizer);
  v1 = prefixEndingWithFirstWordOfString(NSString *)::tokenizer;
  prefixEndingWithFirstWordOfString(NSString *)::tokenizer = v0;

  prefixEndingWithFirstWordOfString(NSString *)::tokenizerAccessQueue = dispatch_queue_create("com.apple.WebBookmarks.titleWordTokenizerAccess", 0);

  return MEMORY[0x2821F96F8]();
}

__n128 __Block_byref_object_copy__1855(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZL33prefixEndingWithFirstWordOfStringP8NSString_block_invoke_1858(uint64_t a1)
{
  [prefixEndingWithFirstWordOfString(NSString *)::tokenizer setString:*(a1 + 32)];
  result = [prefixEndingWithFirstWordOfString(NSString *)::tokenizer advanceToNextToken];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 48) = result;
  *(v3 + 56) = v4;
  return result;
}

void ___ZL6isIPadv_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    isIPad(void)::result = CFEqual(v0, @"iPad") != 0;

    CFRelease(v1);
  }
}

void ___ZL20BookmarksFileChangedP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([*(v2 + 16) isReadonly] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 16), "skipsExternalNotifications") & 1) == 0)
  {
    [*(a1 + 32) _updateSyncNotificationType];
    [*(a1 + 32) _clearCachedFavoritesFolderIdentifier];
    v3 = *(a1 + 32);
    v4 = [v3 _inMemoryChangeSet];
    v5 = [v3 _applyInMemoryChanges:v4 postChangeNotification:0];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZL20BookmarksFileChangedP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke_2;
  block[3] = &unk_279E757C8;
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void ___ZL20BookmarksFileChangedP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WebBookmarksDidReloadNotification" object:*(a1 + 32) userInfo:0];
}

void _SetErrorFromSQLiteResult(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if ((a1 - 1) > 0x19)
    {
      v3 = 5;
    }

    else
    {
      v3 = qword_272CCD338[(a1 - 1)];
    }

    v4 = MEMORY[0x277CCA9B8];
    v8 = @"SQLiteResult";
    v5 = [MEMORY[0x277CCABB0] numberWithInt:a1];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *a2 = [v4 errorWithDomain:@"com.apple.WebBookmarks.ErrorDomain" code:v3 userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_272C786C4(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  WebBookmarks::BookmarkSQLReadTransaction::~BookmarkSQLReadTransaction(va);
  _Unwind_Resume(a1);
}

void sub_272C79014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C792D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&a9);

  _Unwind_Resume(a1);
}

void sub_272C79400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C79588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C796B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C79848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C79970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(va);

  _Unwind_Resume(a1);
}

void sub_272C79DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_272C7A484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  v14 = v13;

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void webFilterConfigurationChanged(uint64_t a1, void *a2)
{
  [a2 reloadSettings];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"WBWebFilterSettingsDidChange", 0, 0, 1u);
}

uint64_t __WebContentAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WebContentAnalysisLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __TextInputLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TextInputLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272C7ED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&a32);

  _Unwind_Resume(a1);
}

uint64_t bookmarkMatchesFilter(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (bookmarkMatchesFilter(WebBookmark *,NSArray<NSString *> *)::onceToken != -1)
  {
    bookmarkMatchesFilter();
  }

  if ([v4 count])
  {
    v5 = [v3 title];
    v6 = [v5 componentsSeparatedByCharactersInSet:{bookmarkMatchesFilter(WebBookmark *, NSArray<NSString *> *)::tokenizationCharacterSet}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v15 = v3;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = ___ZL21bookmarkMatchesFilterP11WebBookmarkP7NSArrayIP8NSStringE_block_invoke_2;
          v16[3] = &unk_279E766A0;
          v16[4] = v11;
          if ([v6 indexOfObjectPassingTest:{v16, v15}] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = 0;
            goto LABEL_14;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v12 = 1;
LABEL_14:
      v3 = v15;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_272C8035C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(&a55);

  _Unwind_Resume(a1);
}

void ___ZL21bookmarkMatchesFilterP11WebBookmarkP7NSArrayIP8NSStringE_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v0 formUnionWithCharacterSet:v2];

  v3 = bookmarkMatchesFilter(WebBookmark *,NSArray<NSString *> *)::tokenizationCharacterSet;
  bookmarkMatchesFilter(WebBookmark *,NSArray<NSString *> *)::tokenizationCharacterSet = v0;
}

void sub_272C809F8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_272C80EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);

  _Unwind_Resume(a1);
}

void sub_272C81CFC(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8270C(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v4, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8299C(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v5, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C82F10(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8317C(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v4, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C83C64(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C83EA4(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C84100(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_272C84430(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v4, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C847B0(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C84E44(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C85368(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C85828(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v2, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C85ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_272C85F04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_272C86274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_272C86E58(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v4, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C87808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_272C8BA40(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_272C8BEA8(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8C0E4(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v2, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8C474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_272C8C770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_272C8C968(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8CD08(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_272C8E460(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8E914(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v2, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8ECEC(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v3, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8F000(_Unwind_Exception *a1)
{
  MEMORY[0x2743D62C0](v4, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void sub_272C8F4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_272C8FE74(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = result;
  return result;
}

id BookmarkSQLiteColumnsWithoutIcon()
{
  if (BookmarkSQLiteColumnsWithoutIcon_onceToken != -1)
  {
    BookmarkSQLiteColumnsWithoutIcon_cold_1();
  }

  v1 = BookmarkSQLiteColumnsWithoutIcon_columnsStringWithoutIcon;

  return v1;
}

void __BookmarkSQLiteColumnsWithoutIcon_block_invoke()
{
  v0 = BookmarkSQLiteColumnNames();
  v3 = [v0 mutableCopy];

  [v3 removeObject:@"bookmarks.icon"];
  v1 = [v3 componentsJoinedByString:{@", "}];
  v2 = BookmarkSQLiteColumnsWithoutIcon_columnsStringWithoutIcon;
  BookmarkSQLiteColumnsWithoutIcon_columnsStringWithoutIcon = v1;
}

id BookmarkInFolderWithoutIconColumnsSelectQuery()
{
  if (BookmarkInFolderWithoutIconColumnsSelectQuery_onceToken != -1)
  {
    BookmarkInFolderWithoutIconColumnsSelectQuery_cold_1();
  }

  v1 = BookmarkInFolderWithoutIconColumnsSelectQuery_query;

  return v1;
}

uint64_t __BookmarkInFolderWithoutIconColumnsSelectQuery_block_invoke()
{
  BookmarkInFolderWithoutIconColumnsSelectQuery_query = BookmarkInFolderWithoutIconColumnsSelectQueryWithOptions(0);

  return MEMORY[0x2821F96F8]();
}

id BookmarkInFolderWithoutIconColumnsSelectQueryWithOptions(char a1)
{
  v2 = BookmarkSQLiteColumnsWithoutIcon();
  v3 = &stru_288259858;
  v4 = @"AND hidden = 0 ";
  if (a1)
  {
    v4 = &stru_288259858;
  }

  if ((a1 & 6) == 2)
  {
    v3 = @"AND type = 0 ";
  }

  if ((a1 & 6) == 4)
  {
    v3 = @"AND type = 1 ";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM bookmarks WHERE parent = ? %@%@ORDER BY order_index ASC", v2, v4, v3];

  return v5;
}

id WBSafariPreferencesDomain()
{
  if (WBSafariPreferencesDomain_onceToken != -1)
  {
    WBSafariPreferencesDomain_cold_1();
  }

  v1 = WBSafariPreferencesDomain_domain;

  return v1;
}

void __WBSafariPreferencesDomain_block_invoke()
{
  v0 = WBCurrentProcessContainerPath();

  if (v0)
  {
    v1 = WBSafariPreferencesDomain_domain;
    WBSafariPreferencesDomain_domain = @"com.apple.mobilesafari";
  }

  else
  {
    v2 = WBSafariContainerPath();
    v5 = v2;
    if (v2)
    {
      v3 = [v2 stringByAppendingPathComponent:@"Library/Preferences/com.apple.mobilesafari"];
    }

    else
    {
      v3 = @"com.apple.mobilesafari";
    }

    v4 = WBSafariPreferencesDomain_domain;
    WBSafariPreferencesDomain_domain = v3;

    v1 = v5;
  }
}

id WBCurrentProcessContainerPath()
{
  if (WBCurrentProcessContainerPath_onceToken != -1)
  {
    WBCurrentProcessContainerPath_cold_1();
  }

  v1 = WBCurrentProcessContainerPath_containerPath;

  return v1;
}

id WBSafariContainerPath()
{
  if (WBSafariContainerPath_onceToken != -1)
  {
    WBSafariContainerPath_cold_1();
  }

  v1 = WBSafariContainerPath_containerPath;

  return v1;
}

void __WBCurrentProcessContainerPath_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  getpid();
  if (!sandbox_container_path_for_pid())
  {
    v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    v1 = WBCurrentProcessContainerPath_containerPath;
    WBCurrentProcessContainerPath_containerPath = v0;
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __WBSafariContainerPath_block_invoke()
{
  v0 = WBCurrentProcessContainerPath();
  v1 = WBSafariContainerPath_containerPath;
  WBSafariContainerPath_containerPath = v0;

  if (!WBSafariContainerPath_containerPath)
  {
    v5 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.mobilesafari" placeholder:0];
    v2 = [v5 dataContainerURL];
    v3 = [v2 path];
    v4 = WBSafariContainerPath_containerPath;
    WBSafariContainerPath_containerPath = v3;
  }
}

__CFString *WBNSStringFromCollectionType(uint64_t a1)
{
  v1 = @"Tabs";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Bookmarks";
  }
}

__CFString *WBNSStringFromCollectionStoreOwner(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Default";
  }

  else
  {
    return off_279E770C8[a1 - 1];
  }
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudBookmarks()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudBookmarks_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudBookmarks_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudBookmarks_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCycler()
{
  if (WBS_LOG_CHANNEL_PREFIXCycler_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCycler_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCycler_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXDataMigration()
{
  if (WBS_LOG_CHANNEL_PREFIXDataMigration_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXDataMigration_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXDataMigration_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXReadingList()
{
  if (WBS_LOG_CHANNEL_PREFIXReadingList_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXReadingList_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXReadingList_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXReadingListIcons()
{
  if (WBS_LOG_CHANNEL_PREFIXReadingListIcons_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXReadingListIcons_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXReadingListIcons_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabs()
{
  if (WBS_LOG_CHANNEL_PREFIXTabs_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabs_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabs_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebBookmarkServer()
{
  if (WBS_LOG_CHANNEL_PREFIXWebBookmarkServer_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebBookmarkServer_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebBookmarkServer_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebsiteData()
{
  if (WBS_LOG_CHANNEL_PREFIXWebsiteData_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebsiteData_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebsiteData_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudSettings()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudSettings_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudSettings_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudSettings_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXProfiles()
{
  if (WBS_LOG_CHANNEL_PREFIXProfiles_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXProfiles_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXProfiles_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXImport()
{
  if (WBS_LOG_CHANNEL_PREFIXImport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXImport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXImport_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExport()
{
  if (WBS_LOG_CHANNEL_PREFIXExport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExport_log;
}

void sub_272C983F8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_272C989F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void __processAccessLevel_block_invoke()
{
  processAccessLevel_accessLevel = 0;
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 isEphemeralMultiUser];

  if (v1)
  {
    processAccessLevel_accessLevel = 1;
  }
}

void sub_272C9B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272C9CB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_272C9CD34(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 name];
      [(WBBookmarkDatabaseSyncData *)v4 databaseSyncDataWithContentsOfData:v3];
    }

    objc_end_catch();
    JUMPOUT(0x272C9CCECLL);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_272CA0498(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_272CA07A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272CA0E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272CA2BD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

uint64_t _tabGroupManagerProfilesChanged(uint64_t a1, void *a2)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);

  return [a2 _reloadProfilesAndTabGroupsAndNotify:1 withCompletionHandler:0];
}

void sub_272CB1AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272CB4970(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

id messageReceivedAcknowledgementReply(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  xpc_dictionary_set_BOOL(reply, webBookmarksMessageReceivedAcknowledgementKey, 1);

  return reply;
}

void sub_272CB9204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272CB98FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272CB9C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_272CBD6D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "Prepare statement failed (%i)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void WebBookmarks::BookmarkSQLReadTransaction::BookmarkSQLReadTransaction(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "WebBookmarks could not start a deferred transaction; bailing. Result code was: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void WebBookmarks::BookmarkSQLReadTransaction::BookmarkSQLReadTransaction(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_0(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "%{public}@", v5);
}

void WebBookmarks::BookmarkSQLWriteTransaction::BookmarkSQLWriteTransaction(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "WebBookmarks could not start an immediate transaction; bailing. Result code was: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void bindAttributesToSQLStatement_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_272C20000, v3, v4, "Error reading bookmark attributes: %{public}@", v5);
}

void __getWFUserSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFUserSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBWebFilterSettings.m" lineNumber:13 description:{@"Unable to find class %s", "WFUserSettings"}];

  __break(1u);
}

void __getWFUserSettingsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebContentAnalysisLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBWebFilterSettings.m" lineNumber:12 description:{@"%s", *a1}];

  __break(1u);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
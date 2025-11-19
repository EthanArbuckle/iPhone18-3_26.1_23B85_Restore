@interface WebBookmarkReadonlyCollection
- (id)_collection;
- (id)bookmarkWithID:(int)a3;
- (id)bookmarksMatchingString:(id)a3;
- (id)databaseHealthInformation;
- (id)initReadonlySafariBookmarkCollection;
- (id)leafChildCountForFoldersInFolderWithID:(int)a3;
- (id)readingListBookmarksMatchingString:(id)a3 maxResults:(unsigned int)a4 onlyArchivedBookmarks:(BOOL)a5;
- (id)readingListWithUnreadOnly:(BOOL)a3 filteredUsingString:(id)a4;
- (unint64_t)leafChildCountForBookmarksInFolderWithID:(int)a3;
- (void)enumerateBookmarks:(BOOL)a3 andReadingListItems:(BOOL)a4 matchingString:(id)a5 usingBlock:(id)a6;
@end

@implementation WebBookmarkReadonlyCollection

- (id)initReadonlySafariBookmarkCollection
{
  v11.receiver = self;
  v11.super_class = WebBookmarkReadonlyCollection;
  v2 = [(WebBookmarkReadonlyCollection *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.WebBookmarks.WebBookmarkReadonlyCollection.%@.%p.%@", objc_opt_class(), v2, @"InternalQueue"];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_get_global_queue(0, 0);
    v7 = dispatch_queue_create_with_target_V2(v4, v5, v6);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;

    v9 = v2;
  }

  return v2;
}

- (id)_collection
{
  collection = self->_collection;
  if (!collection)
  {
    v4 = [WebBookmarkCollection alloc];
    v5 = +[WBCollectionConfiguration readonlySafariBookmarkCollectionConfiguration];
    v6 = [(WebBookmarkCollection *)v4 initWithConfiguration:v5 checkIntegrity:0];
    v7 = self->_collection;
    self->_collection = v6;

    collection = self->_collection;
  }

  v8 = collection;

  return v8;
}

- (void)enumerateBookmarks:(BOOL)a3 andReadingListItems:(BOOL)a4 matchingString:(id)a5 usingBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__WebBookmarkReadonlyCollection_enumerateBookmarks_andReadingListItems_matchingString_usingBlock___block_invoke;
  v15[3] = &unk_279E76E90;
  v18 = a3;
  v19 = a4;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_sync(internalQueue, v15);
}

void __98__WebBookmarkReadonlyCollection_enumerateBookmarks_andReadingListItems_matchingString_usingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  [v2 enumerateBookmarks:*(a1 + 56) andReadingListItems:*(a1 + 57) matchingString:*(a1 + 40) usingBlock:*(a1 + 48)];
}

- (id)readingListBookmarksMatchingString:(id)a3 maxResults:(unsigned int)a4 onlyArchivedBookmarks:(BOOL)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__WebBookmarkReadonlyCollection_readingListBookmarksMatchingString_maxResults_onlyArchivedBookmarks___block_invoke;
  v13[3] = &unk_279E76EB8;
  v14 = v8;
  v15 = &v18;
  v13[4] = self;
  v16 = a4;
  v17 = a5;
  v10 = v8;
  dispatch_sync(internalQueue, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __101__WebBookmarkReadonlyCollection_readingListBookmarksMatchingString_maxResults_onlyArchivedBookmarks___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 readingListBookmarksMatchingString:*(a1 + 40) maxResults:*(a1 + 56) onlyArchivedBookmarks:*(a1 + 60)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)bookmarksMatchingString:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WebBookmarkReadonlyCollection_bookmarksMatchingString___block_invoke;
  block[3] = &unk_279E76EE0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__WebBookmarkReadonlyCollection_bookmarksMatchingString___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 bookmarksMatchingString:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)readingListWithUnreadOnly:(BOOL)a3 filteredUsingString:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__WebBookmarkReadonlyCollection_readingListWithUnreadOnly_filteredUsingString___block_invoke;
  v11[3] = &unk_279E76F08;
  v12 = v6;
  v13 = &v15;
  v14 = a3;
  v11[4] = self;
  v8 = v6;
  dispatch_sync(internalQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __79__WebBookmarkReadonlyCollection_readingListWithUnreadOnly_filteredUsingString___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 readingListWithUnreadOnly:*(a1 + 56) filteredUsingString:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)bookmarkWithID:(int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WebBookmarkReadonlyCollection_bookmarkWithID___block_invoke;
  block[3] = &unk_279E75BC0;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(internalQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __48__WebBookmarkReadonlyCollection_bookmarkWithID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 bookmarkWithID:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)databaseHealthInformation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__WebBookmarkReadonlyCollection_databaseHealthInformation__block_invoke;
  v5[3] = &unk_279E75260;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__WebBookmarkReadonlyCollection_databaseHealthInformation__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 databaseHealthInformation];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)leafChildCountForBookmarksInFolderWithID:(int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__WebBookmarkReadonlyCollection_leafChildCountForBookmarksInFolderWithID___block_invoke;
  block[3] = &unk_279E75BC0;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(internalQueue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __74__WebBookmarkReadonlyCollection_leafChildCountForBookmarksInFolderWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 leafChildCountForBookmarksInFolderWithID:*(a1 + 48)];
}

- (id)leafChildCountForFoldersInFolderWithID:(int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__WebBookmarkReadonlyCollection_leafChildCountForFoldersInFolderWithID___block_invoke;
  block[3] = &unk_279E75BC0;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(internalQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __72__WebBookmarkReadonlyCollection_leafChildCountForFoldersInFolderWithID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 leafChildCountForFoldersInFolderWithID:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end
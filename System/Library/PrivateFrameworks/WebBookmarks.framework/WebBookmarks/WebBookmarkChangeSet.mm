@interface WebBookmarkChangeSet
- (BOOL)folderHasReplaceChange:(int)change;
- (BOOL)isBookmarkDeleted:(int)deleted;
- (BOOL)shouldSync;
- (NSArray)changes;
- (WebBookmarkChangeSet)initWithCoder:(id)coder;
- (WebBookmarkChangeSet)initWithFileURL:(id)l readPersistedChanges:(BOOL)changes;
- (id)addedBookmarksInBookmarkFolder:(int)folder;
- (id)bookmarksAfterReplayingChangesToBookmarks:(id)bookmarks inFolderWithID:(int)d;
- (id)deletedBookmarkIDsInBookmarkFolder:(int)folder;
- (id)modifiedBookmarksInBookmarkFolder:(int)folder;
- (int)nextBookmarkIDForAddingBookmarkInMemory;
- (int64_t)replayChangesOnBookmark:(id)bookmark;
- (unint64_t)numberOfAddedBookmarksInBookmarkFolder:(int)folder;
- (unint64_t)numberOfReorderedBookmarksInBookmarkFolder:(int)folder;
- (void)_addChange:(id)change;
- (void)_coalesceChangesForChangeIfNeeded:(id)needed;
- (void)_readPersistedChanges;
- (void)_removeAllChanges;
- (void)_removeChange:(id)change;
- (void)addChange:(id)change;
- (void)addChanges:(id)changes;
- (void)applyModificationsToBookmarks:(id)bookmarks;
- (void)encodeWithCoder:(id)coder;
- (void)persistChangesWithCompletion:(id)completion;
- (void)removeAllChanges;
- (void)removeChange:(id)change;
- (void)updateAddChangesWithInMemoryBookmarkID:(int)d toDatabaseGeneratedID:(int)iD;
@end

@implementation WebBookmarkChangeSet

- (void)_readPersistedChanges
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  wb_privacyPreservingDescription = [a2 wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v5, v6, "Error converting plist data to dictionary: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (NSArray)changes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__WebBookmarkChangeSet_changes__block_invoke;
  v5[3] = &unk_279E75260;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__WebBookmarkChangeSet_changes__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) array];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (WebBookmarkChangeSet)initWithFileURL:(id)l readPersistedChanges:(BOOL)changes
{
  lCopy = l;
  v37.receiver = self;
  v37.super_class = WebBookmarkChangeSet;
  v8 = [(WebBookmarkChangeSet *)&v37 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileURL, l);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.WebBookmarks.WebBookmarkChangeSet.%p", v9];
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);
    queue = v9->_queue;
    v9->_queue = v12;

    v9->_lastBookmarkIDForAddingInMemoryBookmark = -99;
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    changes = v9->_changes;
    v9->_changes = orderedSet;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    bookmarkIDToChanges = v9->_bookmarkIDToChanges;
    v9->_bookmarkIDToChanges = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    associatedIDToChanges = v9->_associatedIDToChanges;
    v9->_associatedIDToChanges = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    folderIDToChildrenChanges = v9->_folderIDToChildrenChanges;
    v9->_folderIDToChildrenChanges = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    folderIDToDeletedChildrenChanges = v9->_folderIDToDeletedChildrenChanges;
    v9->_folderIDToDeletedChildrenChanges = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    folderIDToAddedChildrenChanges = v9->_folderIDToAddedChildrenChanges;
    v9->_folderIDToAddedChildrenChanges = dictionary5;

    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    folderIDToModifiedChildrenChanges = v9->_folderIDToModifiedChildrenChanges;
    v9->_folderIDToModifiedChildrenChanges = dictionary6;

    dictionary7 = [MEMORY[0x277CBEB38] dictionary];
    folderIDToReorderedChildrenChanges = v9->_folderIDToReorderedChildrenChanges;
    v9->_folderIDToReorderedChildrenChanges = dictionary7;

    v30 = v9->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__WebBookmarkChangeSet_initWithFileURL_readPersistedChanges___block_invoke;
    block[3] = &unk_279E75AB0;
    changesCopy = changes;
    v31 = v9;
    v35 = v31;
    dispatch_barrier_sync(v30, block);
    v32 = v31;
  }

  return v9;
}

uint64_t __61__WebBookmarkChangeSet_initWithFileURL_readPersistedChanges___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _readPersistedChanges];
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__WebBookmarkChangeSet_encodeWithCoder___block_invoke;
  v7[3] = &unk_279E753F0;
  v8 = coderCopy;
  selfCopy = self;
  v6 = coderCopy;
  dispatch_barrier_sync(queue, v7);
}

uint64_t __40__WebBookmarkChangeSet_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) array];
  [v2 encodeObject:v3 forKey:@"Changes"];

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 88);

  return [v4 encodeObject:v5 forKey:@"FileURL"];
}

- (WebBookmarkChangeSet)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"Changes"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileURL"];

  v10 = [(WebBookmarkChangeSet *)self initWithFileURL:v9 readPersistedChanges:0];
  v11 = v10;
  if (v10)
  {
    [(WebBookmarkChangeSet *)v10 addChanges:v8];
    v12 = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)shouldSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__WebBookmarkChangeSet_shouldSync__block_invoke;
  v5[3] = &unk_279E75260;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__WebBookmarkChangeSet_shouldSync__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) safari_containsObjectPassingTest:&__block_literal_global_8];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)nextBookmarkIDForAddingBookmarkInMemory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__WebBookmarkChangeSet_nextBookmarkIDForAddingBookmarkInMemory__block_invoke;
  v5[3] = &unk_279E754E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_sync(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)addChanges:(id)changes
{
  changesCopy = changes;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WebBookmarkChangeSet_addChanges___block_invoke;
  v7[3] = &unk_279E753F0;
  v8 = changesCopy;
  selfCopy = self;
  v6 = changesCopy;
  dispatch_barrier_async(queue, v7);
}

void __35__WebBookmarkChangeSet_addChanges___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _addChange:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__WebBookmarkChangeSet_addChange___block_invoke;
  v7[3] = &unk_279E753F0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_barrier_async(queue, v7);
}

- (void)_addChange:(id)change
{
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  [(WebBookmarkChangeSet *)self _coalesceChangesForChangeIfNeeded:changeCopy];
  [(NSMutableOrderedSet *)self->_changes addObject:changeCopy];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __35__WebBookmarkChangeSet__addChange___block_invoke;
  v25[3] = &unk_279E75AF8;
  v5 = changeCopy;
  v26 = v5;
  v6 = MEMORY[0x2743D6830](v25);
  bookmarkID = [v5 bookmarkID];
  v8 = bookmarkID;
  if (bookmarkID < self->_lastBookmarkIDForAddingInMemoryBookmark)
  {
    self->_lastBookmarkIDForAddingInMemoryBookmark = bookmarkID;
  }

  if (bookmarkID && bookmarkID != 0x7FFFFFFF)
  {
    (v6)[2](v6, self->_bookmarkIDToChanges, bookmarkID);
  }

  bookmark = [v5 bookmark];
  lastSelectedChildID = [bookmark lastSelectedChildID];

  if (lastSelectedChildID && lastSelectedChildID != 0x7FFFFFFF)
  {
    (v6)[2](v6, self->_bookmarkIDToChanges, lastSelectedChildID);
  }

  specialFolderID = [v5 specialFolderID];
  if (!specialFolderID)
  {
    specialFolderID = [v5 parentID];
  }

  (v6)[2](v6, self->_folderIDToChildrenChanges, specialFolderID);
  associatedBookmarkID = [v5 associatedBookmarkID];
  changeType = [v5 changeType];
  if (changeType > 3)
  {
    if (changeType == 4)
    {
      (v6)[2](v6, self->_folderIDToDeletedChildrenChanges, specialFolderID);
      (v6)[2](v6, self->_folderIDToAddedChildrenChanges, associatedBookmarkID);
      (v6)[2](v6, self->_folderIDToChildrenChanges, associatedBookmarkID);
    }

    else
    {
      if (changeType != 5)
      {
        if (changeType == 6)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          bookmarks = [v5 bookmarks];
          v16 = [bookmarks countByEnumeratingWithState:&v21 objects:v27 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v22;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(bookmarks);
                }

                (v6)[2](v6, self->_bookmarkIDToChanges, [*(*(&v21 + 1) + 8 * i) identifier]);
              }

              v17 = [bookmarks countByEnumeratingWithState:&v21 objects:v27 count:16];
            }

            while (v17);
          }
        }

        goto LABEL_33;
      }

      (v6)[2](v6, self->_folderIDToReorderedChildrenChanges, specialFolderID);
    }

    (v6)[2](v6, self->_associatedIDToChanges, associatedBookmarkID);
    goto LABEL_33;
  }

  if (changeType < 2)
  {
    folderIDToDeletedChildrenChanges = self->_folderIDToDeletedChildrenChanges;
    goto LABEL_30;
  }

  if (changeType == 2)
  {
    folderIDToDeletedChildrenChanges = self->_folderIDToAddedChildrenChanges;
    goto LABEL_30;
  }

  if (changeType == 3)
  {
    folderIDToDeletedChildrenChanges = self->_folderIDToModifiedChildrenChanges;
LABEL_30:
    (v6)[2](v6, folderIDToDeletedChildrenChanges, specialFolderID);
  }

LABEL_33:

  v20 = *MEMORY[0x277D85DE8];
}

void __35__WebBookmarkChangeSet__addChange___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  v6 = [v7 objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB40] orderedSet];
    [v7 setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:*(a1 + 32)];
}

- (void)_coalesceChangesForChangeIfNeeded:(id)needed
{
  v18 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if ([neededCopy changeType] == 3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSMutableOrderedSet *)self->_changes copy];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 changeType] == 3)
          {
            bookmarkID = [v10 bookmarkID];
            if (bookmarkID == [neededCopy bookmarkID])
            {
              [(WebBookmarkChangeSet *)self _removeChange:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__WebBookmarkChangeSet_removeChange___block_invoke;
  v7[3] = &unk_279E753F0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_barrier_async(queue, v7);
}

- (void)_removeChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  [(NSMutableOrderedSet *)self->_changes removeObject:changeCopy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __38__WebBookmarkChangeSet__removeChange___block_invoke;
  v24[3] = &unk_279E75AF8;
  v5 = changeCopy;
  v25 = v5;
  v6 = MEMORY[0x2743D6830](v24);
  parentID = [v5 parentID];
  associatedBookmarkID = [v5 associatedBookmarkID];
  (v6)[2](v6, self->_bookmarkIDToChanges, [v5 bookmarkID]);
  bookmarkIDToChanges = self->_bookmarkIDToChanges;
  bookmark = [v5 bookmark];
  (v6)[2](v6, bookmarkIDToChanges, [bookmark lastSelectedChildID]);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  bookmarks = [v5 bookmarks];
  v11 = [bookmarks countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(bookmarks);
        }

        (v6)[2](v6, self->_bookmarkIDToChanges, [*(*(&v20 + 1) + 8 * i) identifier]);
      }

      v12 = [bookmarks countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v12);
  }

  (v6)[2](v6, self->_associatedIDToChanges, associatedBookmarkID);
  folderIDToChildrenChanges = self->_folderIDToChildrenChanges;
  specialFolderID = [v5 specialFolderID];
  if (specialFolderID)
  {
    v17 = specialFolderID;
  }

  else
  {
    v17 = parentID;
  }

  (v6)[2](v6, folderIDToChildrenChanges, v17);
  (v6)[2](v6, self->_folderIDToChildrenChanges, associatedBookmarkID);
  (v6)[2](v6, self->_folderIDToDeletedChildrenChanges, parentID);
  (v6)[2](v6, self->_folderIDToAddedChildrenChanges, parentID);
  (v6)[2](v6, self->_folderIDToAddedChildrenChanges, associatedBookmarkID);
  (v6)[2](v6, self->_folderIDToModifiedChildrenChanges, parentID);
  (v6)[2](v6, self->_folderIDToReorderedChildrenChanges, parentID);

  v18 = *MEMORY[0x277D85DE8];
}

void __38__WebBookmarkChangeSet__removeChange___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  v6 = [v7 objectForKeyedSubscript:v5];
  [v6 removeObject:*(a1 + 32)];
  if (![v6 count])
  {
    [v7 removeObjectForKey:v5];
  }
}

- (void)removeAllChanges
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WebBookmarkChangeSet_removeAllChanges__block_invoke;
  block[3] = &unk_279E751F0;
  block[4] = self;
  dispatch_barrier_async(queue, block);
}

- (void)_removeAllChanges
{
  [(NSMutableOrderedSet *)self->_changes removeAllObjects];
  [(NSMutableDictionary *)self->_bookmarkIDToChanges removeAllObjects];
  [(NSMutableDictionary *)self->_associatedIDToChanges removeAllObjects];
  [(NSMutableDictionary *)self->_folderIDToChildrenChanges removeAllObjects];
  [(NSMutableDictionary *)self->_folderIDToDeletedChildrenChanges removeAllObjects];
  [(NSMutableDictionary *)self->_folderIDToAddedChildrenChanges removeAllObjects];
  [(NSMutableDictionary *)self->_folderIDToModifiedChildrenChanges removeAllObjects];
  [(NSMutableDictionary *)self->_folderIDToReorderedChildrenChanges removeAllObjects];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtURL:self->_fileURL error:0];
}

- (int64_t)replayChangesOnBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WebBookmarkChangeSet_replayChangesOnBookmark___block_invoke;
  block[3] = &unk_279E75B20;
  block[4] = self;
  v10 = bookmarkCopy;
  v11 = &v12;
  v6 = bookmarkCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __48__WebBookmarkChangeSet_replayChangesOnBookmark___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 40), "identifier")}];
  v4 = [v2 objectForKeyedSubscript:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 changeType];
        if (v11 <= 3)
        {
          v12 = 1;
          if (v11 >= 2)
          {
            if (v11 != 3)
            {
              continue;
            }

            [v10 applyModificationsToBookmark:*(a1 + 40)];
            v12 = 2;
          }

          goto LABEL_14;
        }

        if (v11 == 4)
        {
          v12 = 3;
LABEL_14:
          *(*(*(a1 + 48) + 8) + 24) = v12;
          continue;
        }

        v12 = 1;
        if (v11 == 6)
        {
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)bookmarksAfterReplayingChangesToBookmarks:(id)bookmarks inFolderWithID:(int)d
{
  v6 = [bookmarks mutableCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__WebBookmarkChangeSet_bookmarksAfterReplayingChangesToBookmarks_inFolderWithID___block_invoke;
  block[3] = &unk_279E75B70;
  block[4] = self;
  dCopy = d;
  v8 = v6;
  v13 = v8;
  dispatch_sync(queue, block);
  v9 = v13;
  v10 = v8;

  return v8;
}

void __81__WebBookmarkChangeSet_bookmarksAfterReplayingChangesToBookmarks_inFolderWithID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 48);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 bookmark];
        v12 = [v10 changeType];
        if (v12 > 3)
        {
          if (v12 == 4)
          {
LABEL_16:
            [*(a1 + 40) removeObject:v11];
            goto LABEL_22;
          }

          if (v12 == 5)
          {
            [*(a1 + 40) removeObject:v11];
            v17 = *(a1 + 40);
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __81__WebBookmarkChangeSet_bookmarksAfterReplayingChangesToBookmarks_inFolderWithID___block_invoke_2;
            v19[3] = &unk_279E75B48;
            v19[4] = v10;
            v14 = [v17 safari_firstObjectPassingTest:v19];
            [*(a1 + 40) safari_insertObject:v11 afterObject:v14];
            goto LABEL_20;
          }

          if (v12 == 6 && [v10 parentID] == *(a1 + 48))
          {
            [*(a1 + 40) removeAllObjects];
            v13 = *(a1 + 40);
            v14 = [v10 bookmarks];
            [v13 addObjectsFromArray:v14];
LABEL_20:
          }
        }

        else
        {
          switch(v12)
          {
            case 0:
              goto LABEL_16;
            case 2:
              v15 = [v11 isFolder];
              v16 = *(a1 + 40);
              if (v15)
              {
                [v16 insertObject:v11 atIndex:0];
              }

              else
              {
                [v16 addObject:v11];
              }

              break;
            case 3:
              [v10 applyModificationsToBookmark:v11];
              break;
          }
        }

LABEL_22:
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBookmarkDeleted:(int)deleted
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WebBookmarkChangeSet_isBookmarkDeleted___block_invoke;
  block[3] = &unk_279E75B98;
  deletedCopy = deleted;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __42__WebBookmarkChangeSet_isBookmarkDeleted___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) changeType];
        if (v10 > 5 || ((1 << v10) & 0x2C) == 0)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

- (id)deletedBookmarkIDsInBookmarkFolder:(int)folder
{
  v5 = [MEMORY[0x277CBEB58] set];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WebBookmarkChangeSet_deletedBookmarkIDsInBookmarkFolder___block_invoke;
  block[3] = &unk_279E75B70;
  block[4] = self;
  folderCopy = folder;
  v7 = v5;
  v12 = v7;
  dispatch_sync(queue, block);
  v8 = v12;
  v9 = v7;

  return v7;
}

void __59__WebBookmarkChangeSet_deletedBookmarkIDsInBookmarkFolder___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(a1 + 40);
        v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(*(&v13 + 1) + 8 * v9), "bookmarkID", v13)}];
        [v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)addedBookmarksInBookmarkFolder:(int)folder
{
  array = [MEMORY[0x277CBEB18] array];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WebBookmarkChangeSet_addedBookmarksInBookmarkFolder___block_invoke;
  block[3] = &unk_279E75B70;
  block[4] = self;
  folderCopy = folder;
  v7 = array;
  v12 = v7;
  dispatch_sync(queue, block);
  v8 = v12;
  v9 = v7;

  return v7;
}

void __55__WebBookmarkChangeSet_addedBookmarksInBookmarkFolder___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 64);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) bookmark];
        if (v10)
        {
          [*(a1 + 40) addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)modifiedBookmarksInBookmarkFolder:(int)folder
{
  array = [MEMORY[0x277CBEB18] array];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WebBookmarkChangeSet_modifiedBookmarksInBookmarkFolder___block_invoke;
  block[3] = &unk_279E75B70;
  block[4] = self;
  folderCopy = folder;
  v7 = array;
  v12 = v7;
  dispatch_sync(queue, block);
  v8 = v12;
  v9 = v7;

  return v7;
}

void __58__WebBookmarkChangeSet_modifiedBookmarksInBookmarkFolder___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = *(*(a1 + 32) + 72);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v5 = [v3 objectForKeyedSubscript:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) bookmark];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "identifier")}];
        if (v11 && ([v2 containsObject:v12] & 1) == 0)
        {
          [*(a1 + 40) addObject:v11];
          [v2 addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (unint64_t)numberOfAddedBookmarksInBookmarkFolder:(int)folder
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WebBookmarkChangeSet_numberOfAddedBookmarksInBookmarkFolder___block_invoke;
  block[3] = &unk_279E75BC0;
  block[4] = self;
  block[5] = &v8;
  folderCopy = folder;
  dispatch_sync(queue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __63__WebBookmarkChangeSet_numberOfAddedBookmarksInBookmarkFolder___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:v4];
  *(*(*(a1 + 40) + 8) + 24) = [v3 count];
}

- (unint64_t)numberOfReorderedBookmarksInBookmarkFolder:(int)folder
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WebBookmarkChangeSet_numberOfReorderedBookmarksInBookmarkFolder___block_invoke;
  block[3] = &unk_279E75BC0;
  block[4] = self;
  block[5] = &v8;
  folderCopy = folder;
  dispatch_sync(queue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __67__WebBookmarkChangeSet_numberOfReorderedBookmarksInBookmarkFolder___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:v4];
  *(*(*(a1 + 40) + 8) + 24) = [v3 count];
}

- (BOOL)folderHasReplaceChange:(int)change
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WebBookmarkChangeSet_folderHasReplaceChange___block_invoke;
  block[3] = &unk_279E75BC0;
  block[4] = self;
  block[5] = &v8;
  changeCopy = change;
  dispatch_sync(queue, block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __47__WebBookmarkChangeSet_folderHasReplaceChange___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:v4];
  *(*(*(a1 + 40) + 8) + 24) = [v3 safari_containsObjectPassingTest:&__block_literal_global_22];
}

- (void)updateAddChangesWithInMemoryBookmarkID:(int)d toDatabaseGeneratedID:(int)iD
{
  v17 = *MEMORY[0x277D85DE8];
  if (d != iD)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      dCopy = d;
      v15 = 2048;
      iDCopy = iD;
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Updating changes from in memory identifier %ld to database identifier %ld", buf, 0x16u);
    }

    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__WebBookmarkChangeSet_updateAddChangesWithInMemoryBookmarkID_toDatabaseGeneratedID___block_invoke;
    v10[3] = &unk_279E75C10;
    dCopy2 = d;
    iDCopy2 = iD;
    v10[4] = self;
    dispatch_barrier_sync(queue, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __85__WebBookmarkChangeSet_updateAddChangesWithInMemoryBookmarkID_toDatabaseGeneratedID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 44)];
  v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v2];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 bookmark];
        if ([v10 identifier] == *(a1 + 40))
        {
          [v9 setBookmarkID:*(a1 + 44)];
          [v10 _setID:*(a1 + 44)];
          [v10 _setInserted:1];
        }

        else if ([v10 lastSelectedChildID] == *(a1 + 40))
        {
          [v10 setLastSelectedChildID:*(a1 + 44)];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  if (v4)
  {
    [*(*(a1 + 32) + 32) setObject:v4 forKeyedSubscript:v3];
    [*(*(a1 + 32) + 32) removeObjectForKey:v2];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__WebBookmarkChangeSet_updateAddChangesWithInMemoryBookmarkID_toDatabaseGeneratedID___block_invoke_2;
  v15[3] = &unk_279E75BE8;
  v18 = *(a1 + 40);
  v16 = v2;
  v17 = v3;
  v11 = v3;
  v12 = v2;
  v13 = MEMORY[0x2743D6830](v15);
  v13[2](v13, *(*(a1 + 32) + 40));
  v13[2](v13, *(*(a1 + 32) + 56));
  v13[2](v13, *(*(a1 + 32) + 64));
  v13[2](v13, *(*(a1 + 32) + 72));
  v13[2](v13, *(*(a1 + 32) + 80));

  v14 = *MEMORY[0x277D85DE8];
}

void __85__WebBookmarkChangeSet_updateAddChangesWithInMemoryBookmarkID_toDatabaseGeneratedID___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) updateChangeAfterUpdatingInMemoryID:*(a1 + 48) withDatabaseID:*(a1 + 52)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:*(a1 + 40)];
    [v3 removeObjectForKey:*(a1 + 32)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)applyModificationsToBookmarks:(id)bookmarks
{
  bookmarksCopy = bookmarks;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WebBookmarkChangeSet_applyModificationsToBookmarks___block_invoke;
  v7[3] = &unk_279E753F0;
  v8 = bookmarksCopy;
  selfCopy = self;
  v6 = bookmarksCopy;
  dispatch_barrier_sync(queue, v7);
}

void __54__WebBookmarkChangeSet_applyModificationsToBookmarks___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v7 = *(*(a1 + 40) + 32);
        v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "identifier")}];
        v9 = [v7 objectForKeyedSubscript:v8];

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v17 + 1) + 8 * j);
              if ([v14 changeType] == 3)
              {
                [v14 applyModificationsToBookmark:v6];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)persistChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__WebBookmarkChangeSet_persistChangesWithCompletion___block_invoke;
  v11[3] = &unk_279E75478;
  v12 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x2743D6830](v11);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__WebBookmarkChangeSet_persistChangesWithCompletion___block_invoke_2;
  block[3] = &unk_279E75530;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_barrier_async(queue, block);
}

uint64_t __53__WebBookmarkChangeSet_persistChangesWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __53__WebBookmarkChangeSet_persistChangesWithCompletion___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [*(*(a1 + 32) + 24) array];
    v3 = [v2 safari_mapObjectsUsingBlock:&__block_literal_global_26];

    v18 = @"Changes";
    v19[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v17 = 0;
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:&v17];
    v6 = v17;
    v7 = v6;
    if (v5)
    {
      v8 = *(*(a1 + 32) + 88);
      v16 = v6;
      v9 = [v5 writeToURL:v8 options:0 error:&v16];
      v10 = v16;

      if ((v9 & 1) == 0)
      {
        v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __53__WebBookmarkChangeSet_persistChangesWithCompletion___block_invoke_2_cold_1(v11, v10);
        }
      }

      v7 = v10;
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __53__WebBookmarkChangeSet_persistChangesWithCompletion___block_invoke_2_cold_2(v14, v7);
      }
    }

    (*(*(a1 + 40) + 16))();

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *(*(a1 + 40) + 16);
    v13 = *MEMORY[0x277D85DE8];

    v12();
  }
}

void __53__WebBookmarkChangeSet_persistChangesWithCompletion___block_invoke_2_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v5, v6, "Failed to persist in-memory bookmarks changes plist: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

void __53__WebBookmarkChangeSet_persistChangesWithCompletion___block_invoke_2_cold_2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v5, v6, "Error converting in-memory changes into plist data: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end
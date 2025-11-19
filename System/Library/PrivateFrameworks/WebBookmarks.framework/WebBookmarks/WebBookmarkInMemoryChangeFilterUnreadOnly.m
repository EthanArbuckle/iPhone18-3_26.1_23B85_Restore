@interface WebBookmarkInMemoryChangeFilterUnreadOnly
- (id)_bookmarksIDsFromBookmarks:(id)a3 fromChangeSet:(id)a4 withFilter:(id)a5;
@end

@implementation WebBookmarkInMemoryChangeFilterUnreadOnly

BOOL __108__WebBookmarkInMemoryChangeFilterUnreadOnly_bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet_inFolder___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dateLastViewed];
  v3 = v2 == 0;

  return v3;
}

BOOL __111__WebBookmarkInMemoryChangeFilterUnreadOnly_bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet_inFolder___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dateLastViewed];
  v3 = v2 != 0;

  return v3;
}

- (id)_bookmarksIDsFromBookmarks:(id)a3 fromChangeSet:(id)a4 withFilter:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [v6 changes];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 bookmark];
        if (v15 && ([v6 replayChangesOnBookmark:v15] & 0xFFFFFFFFFFFFFFFDLL) != 1 && objc_msgSend(v14, "attributesMarkedAsModify:", 8) && v7[2](v7, v15))
        {
          v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "identifier")}];
          [v8 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = [v8 allObjects];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
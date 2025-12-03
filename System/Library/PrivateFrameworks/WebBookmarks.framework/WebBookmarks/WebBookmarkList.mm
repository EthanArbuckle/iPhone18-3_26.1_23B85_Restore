@interface WebBookmarkList
- (WebBookmarkList)initWithQuery:(id)query skipOffset:(unsigned int)offset collection:(id)collection queue:(id)queue;
- (id)_arrayForDifferenceCalculation;
- (id)_sortedBookmarksByDateAdded;
- (id)bookmarkArray;
- (id)bookmarkArraySkippingDecodeSyncData;
- (id)bookmarksSortedByDateWithLimit:(unsigned int)limit;
- (id)differenceFromList:(id)list withOptions:(unint64_t)options;
- (void)_loadBookmarksForDifferenceFromList:(id)list;
- (void)loadBookmarksArraySortedByDateAsynchronously:(id)asynchronously;
@end

@implementation WebBookmarkList

- (id)bookmarkArray
{
  bookmarkCount = self->_bookmarkCount;
  if (!bookmarkCount)
  {
    bookmarkArray = [(WebBookmarkList *)self->_shadowBookmarkList bookmarkArray];
    bookmarkArray2 = bookmarkArray;
    v10 = MEMORY[0x277CBEBF8];
    if (bookmarkArray)
    {
      v10 = bookmarkArray;
    }

    v8 = v10;
    goto LABEL_7;
  }

  v4 = [(WebBookmarkList *)self bookmarkAtIndex:bookmarkCount - 1];
  shadowBookmarkList = self->_shadowBookmarkList;
  bookmarks = self->_bookmarks;
  if (shadowBookmarkList)
  {
    bookmarkArray2 = [(WebBookmarkList *)shadowBookmarkList bookmarkArray];
    v8 = [(NSMutableArray *)bookmarks arrayByAddingObjectsFromArray:bookmarkArray2];
LABEL_7:
    v11 = v8;

    goto LABEL_9;
  }

  v11 = [(NSMutableArray *)bookmarks copy];
LABEL_9:

  return v11;
}

uint64_t __66__WebBookmarkList__bookmarkAtIndex_paginate_skipDecodingSyncData___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) bookmarksInCollection:*(*(a1 + 32) + 32) fromIndex:*(a1 + 48) toIndex:*(a1 + 52) skipDecodingSyncData:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)bookmarkArraySkippingDecodeSyncData
{
  bookmarkCount = self->_bookmarkCount;
  if (!bookmarkCount)
  {
    bookmarkArraySkippingDecodeSyncData = [(WebBookmarkList *)self->_shadowBookmarkList bookmarkArraySkippingDecodeSyncData];
    bookmarkArraySkippingDecodeSyncData2 = bookmarkArraySkippingDecodeSyncData;
    v10 = MEMORY[0x277CBEBF8];
    if (bookmarkArraySkippingDecodeSyncData)
    {
      v10 = bookmarkArraySkippingDecodeSyncData;
    }

    v8 = v10;
    goto LABEL_7;
  }

  v4 = [(WebBookmarkList *)self bookmarkAtIndex:bookmarkCount - 1 skipDecodingSyncData:1];
  shadowBookmarkList = self->_shadowBookmarkList;
  bookmarks = self->_bookmarks;
  if (shadowBookmarkList)
  {
    bookmarkArraySkippingDecodeSyncData2 = [(WebBookmarkList *)shadowBookmarkList bookmarkArraySkippingDecodeSyncData];
    v8 = [(NSMutableArray *)bookmarks arrayByAddingObjectsFromArray:bookmarkArraySkippingDecodeSyncData2];
LABEL_7:
    v11 = v8;

    goto LABEL_9;
  }

  v11 = [(NSMutableArray *)bookmarks copy];
LABEL_9:

  return v11;
}

- (id)bookmarksSortedByDateWithLimit:(unsigned int)limit
{
  bookmarkCount = self->_bookmarkCount;
  if (bookmarkCount)
  {
    v6 = bookmarkCount - 1;
    if (v6 >= limit - 1)
    {
      v7 = limit - 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = [(WebBookmarkList *)self _bookmarkAtIndex:v7 paginate:0 skipDecodingSyncData:0];
    _sortedBookmarksByDateAdded = [(WebBookmarkList *)self _sortedBookmarksByDateAdded];
  }

  else
  {
    _sortedBookmarksByDateAdded = MEMORY[0x277CBEBF8];
  }

  return _sortedBookmarksByDateAdded;
}

- (void)loadBookmarksArraySortedByDateAsynchronously:(id)asynchronously
{
  asynchronouslyCopy = asynchronously;
  v5 = asynchronouslyCopy;
  if (self->_bookmarkCount)
  {
    v6 = [(NSMutableArray *)self->_bookmarks count];
    if (v6 + 63 >= self->_bookmarkCount - 1)
    {
      v7 = self->_bookmarkCount - 1;
    }

    else
    {
      v7 = v6 + 63;
    }

    v8 = [(WebBookmarkList *)self _bookmarkAtIndex:v7 paginate:0 skipDecodingSyncData:0];
    if ([(NSMutableArray *)self->_bookmarks count]>= self->_bookmarkCount)
    {
      _sortedBookmarksByDateAdded = [(WebBookmarkList *)self _sortedBookmarksByDateAdded];
      (v5)[2](v5, _sortedBookmarksByDateAdded);
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __64__WebBookmarkList_loadBookmarksArraySortedByDateAsynchronously___block_invoke;
      v10[3] = &unk_279E75530;
      v10[4] = self;
      v11 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }
  }

  else
  {
    (*(asynchronouslyCopy + 2))(asynchronouslyCopy, MEMORY[0x277CBEBF8]);
  }
}

- (id)_sortedBookmarksByDateAdded
{
  v2 = [(NSMutableArray *)self->_bookmarks copy];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_11];

  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_5];

  return v4;
}

uint64_t __46__WebBookmarkList__sortedBookmarksByDateAdded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 dateAdded];
  if (v3)
  {
    v4 = [v2 isBuiltinBookmark] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __46__WebBookmarkList__sortedBookmarksByDateAdded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateAdded];
  v6 = [v4 dateAdded];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_arrayForDifferenceCalculation
{
  v22 = *MEMORY[0x277D85DE8];
  _primaryBookmarkCount = [(WebBookmarkList *)self _primaryBookmarkCount];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:_primaryBookmarkCount];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_bookmarks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uUID = [*(*(&v17 + 1) + 8 * i) UUID];
        [v4 addObject:uUID];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v4 count] < _primaryBookmarkCount)
  {
    v11 = 0;
    do
    {
      v12 = v11 + 1;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
      [v4 addObject:v13];

      v14 = [v4 count];
      v11 = v12;
    }

    while (v14 < _primaryBookmarkCount);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_loadBookmarksForDifferenceFromList:(id)list
{
  listCopy = list;
  if (listCopy)
  {
    _primaryBookmarkCount = [(WebBookmarkList *)self _primaryBookmarkCount];
    v5 = _primaryBookmarkCount - [listCopy _primaryBookmarkCount];
    v6 = [listCopy[1] count];
    v7 = (v5 + v6) & ~((v5 + v6) >> 63);
    if (v7 >= _primaryBookmarkCount)
    {
      v7 = _primaryBookmarkCount;
    }

    if (v7)
    {
      v8 = [(WebBookmarkList *)self _bookmarkAtIndex:(v7 - 1) paginate:0 skipDecodingSyncData:0];
    }
  }
}

- (id)differenceFromList:(id)list withOptions:(unint64_t)options
{
  listCopy = list;
  if (options)
  {
    [(WebBookmarkList *)self _loadBookmarksForDifferenceFromList:listCopy];
  }

  _arrayForDifferenceCalculation = [(WebBookmarkList *)self _arrayForDifferenceCalculation];
  if (listCopy)
  {
    _arrayForDifferenceCalculation2 = [listCopy _arrayForDifferenceCalculation];
  }

  else
  {
    _arrayForDifferenceCalculation2 = MEMORY[0x277CBEBF8];
  }

  v9 = [_arrayForDifferenceCalculation differenceFromArray:_arrayForDifferenceCalculation2 withOptions:(2 * options) & 4];

  return v9;
}

- (WebBookmarkList)initWithQuery:(id)query skipOffset:(unsigned int)offset collection:(id)collection queue:(id)queue
{
  queryCopy = query;
  collectionCopy = collection;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = WebBookmarkList;
  v14 = [(WebBookmarkList *)&v20 init];
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  bookmarks = v14->_bookmarks;
  v14->_bookmarks = v15;

  objc_storeStrong(&v14->_query, query);
  v14->_skipOffset = offset;
  objc_storeStrong(&v14->_collection, collection);
  objc_storeStrong(&v14->_queue, queue);
  v17 = [(WebBookmarkListQuery *)v14->_query countInCollection:v14->_collection];
  if (v17 == -1)
  {
LABEL_4:
    v18 = 0;
  }

  else
  {
    v14->_bookmarkCount = v17;
    v18 = v14;
  }

  return v18;
}

@end
@interface WebBookmarkListQuery
- (WebBookmarkListQuery)initWithBookmarksWhere:(id)where folderID:(int)d orderBy:(id)by usingFilter:(id)filter;
- (id)_filterBookmarks:(id)bookmarks;
- (id)_normalizeUserTypedString:(id)string;
- (id)_sqliteInConditionForInMemoryModifiedBookmarksInFolder:(int)folder collection:(id)collection;
- (id)_sqliteNotInConditionForInMemoryModifiedAndDeleted:(BOOL)deleted bookmarksInFolder:(int)folder collection:(id)collection;
- (id)bookmarksInCollection:(id)collection fromIndex:(unsigned int)index toIndex:(unsigned int)toIndex skipDecodingSyncData:(BOOL)data;
- (id)debugDescription;
- (int)_childCountInDatabaseForFolderFetchInCollection:(id)collection skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(BOOL)memory countShouldUseNumChildrenIfPossible:(BOOL)possible;
- (int)countInCollection:(id)collection;
- (int64_t)_listQueryType;
- (void)_preparePrefixesFromNormalizedString:(id)string;
@end

@implementation WebBookmarkListQuery

- (int64_t)_listQueryType
{
  if (self->_customQuery)
  {
    return 2;
  }

  else
  {
    return self->_titleWordPrefixes != 0;
  }
}

- (WebBookmarkListQuery)initWithBookmarksWhere:(id)where folderID:(int)d orderBy:(id)by usingFilter:(id)filter
{
  whereCopy = where;
  byCopy = by;
  filterCopy = filter;
  v34.receiver = self;
  v34.super_class = WebBookmarkListQuery;
  v14 = [(WebBookmarkListQuery *)&v34 init];
  v15 = v14;
  if (v14)
  {
    v14->_customQuery = 1;
    objc_storeStrong(&v14->_query, where);
    v16 = [byCopy copy];
    orderBy = v15->_orderBy;
    v15->_orderBy = v16;

    v18 = [(WebBookmarkListQuery *)v15 _normalizeUserTypedString:filterCopy];
    if (v18)
    {
      [(WebBookmarkListQuery *)v15 _preparePrefixesFromNormalizedString:v18];
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%%%@%%", v18];
      urlFilter = v15->_urlFilter;
      v15->_urlFilter = v19;
    }

    if (v15->_titleWordPrefixes)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v33 = whereCopy;
      v22 = v15->_titleWordPrefixes;
      v23 = [@"id IN (SELECT bookmark_id FROM bookmark_title_words WHERE word GLOB ?)" mutableCopy];
      for (i = 1; i < [(NSArray *)v22 count]; ++i)
      {
        [v23 appendString:@" AND id IN (SELECT bookmark_id FROM bookmark_title_words WHERE word GLOB ?)"];
      }

      v25 = v23;
      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"((%@) OR url LIKE ?)", v25];

      v27 = [v21 initWithFormat:@"%@ AND %@", v26, v15->_query];
      query = v15->_query;
      v15->_query = v27;

      whereCopy = v33;
    }

    if (d != 0x7FFFFFFF)
    {
      v15->_folderID = d;
      v15->_customQuery = 0;
    }

    if (byCopy)
    {
      byCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ ORDER BY %@", v15->_query, byCopy];
      queryWithOrderBy = v15->_queryWithOrderBy;
      v15->_queryWithOrderBy = byCopy;
    }

    v15->_countShouldUseNumChildrenIfPossible = 0;
    v31 = v15;
  }

  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"NO";
  if (self->_customQuery)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@:%p customQuery = %@; query = %@; orderBy = %@; titleWordPrefixes = %@>", v5, self, v7, self->_query, self->_orderBy, self->_titleWordPrefixes];;

  return v8;
}

- (int)_childCountInDatabaseForFolderFetchInCollection:(id)collection skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(BOOL)memory countShouldUseNumChildrenIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  memoryCopy = memory;
  v47 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  string = [MEMORY[0x277CCAB68] string];
  v7 = &stru_288259858;
  _listQueryType = [(WebBookmarkListQuery *)self _listQueryType];
  v9 = _listQueryType == 1 && memoryCopy;
  if (self->_inMemoryFilter || v9)
  {
    v10 = [(WebBookmarkListQuery *)self _sqliteNotInConditionForInMemoryModifiedAndDeleted:v9 bookmarksInFolder:self->_folderID collection:collectionCopy];
    v7 = [(WebBookmarkListQuery *)self _sqliteInConditionForInMemoryModifiedBookmarksInFolder:self->_folderID collection:collectionCopy];
  }

  else
  {
    v10 = &stru_288259858;
  }

  p_folderID = &self->_folderID;
  v31 = v10;
  if (!self->_folderID || self->_includeHidden || self->_titleWordPrefixes || [(__CFString *)v10 length]|| !possibleCopy || self->_includeDescendantsAsChildren)
  {
    v12 = whereClauseWithAppendingINConditions(self->_query, &v7->isa, &v10->isa);
    [string appendFormat:@"SELECT COUNT(*) FROM bookmarks WHERE %@", v12];

    v30 = 0;
  }

  else
  {
    [string appendFormat:@"SELECT num_children FROM bookmarks WHERE id = %d", *p_folderID];
    v30 = 1;
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v43, [collectionCopy _sqliteStatementWithQuery:string]);
  titleWordPrefixes = self->_titleWordPrefixes;
  if (titleWordPrefixes)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = titleWordPrefixes;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v15)
    {
      v16 = *v40;
      v17 = 1;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v14);
          }

          sqlite3_bind_text(v44, v17++, [*(*(&v39 + 1) + 8 * i) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        }

        v15 = [(NSArray *)v14 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v15);
    }

    else
    {
      v17 = 1;
    }

    sqlite3_bind_text(v44, v17, [(NSString *)self->_urlFilter UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v19 = sqlite3_step(v44);
  v20 = 0;
  if (v19 && v19 != 101)
  {
    if (v19 != 100)
    {
      v20 = -1;
      goto LABEL_45;
    }

    v20 = sqlite3_column_int(v44, 0);
  }

  if (memoryCopy && !_listQueryType)
  {
    _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
    [_inMemoryChangeSet deletedBookmarkIDsInBookmarkFolder:*p_folderID];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v22 = v36 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v23)
    {
      v24 = *v36;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v20 -= [_inMemoryChangeSet bookmarkIsAddedInMemory:{objc_msgSend(*(*(&v35 + 1) + 8 * j), "intValue")}] ^ 1;
        }

        v23 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v23);
    }
  }

  if (v20 < 0)
  {
    v26 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarkListQuery _childCountInDatabaseForFolderFetchInCollection:v20 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:v26 countShouldUseNumChildrenIfPossible:?];
    }

    if (v30)
    {
      v27 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarkListQuery _childCountInDatabaseForFolderFetchInCollection:v27 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:? countShouldUseNumChildrenIfPossible:?];
      }

      v20 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:collectionCopy skipCountingInDatabaseBookmarksThatAreDeletedInMemory:memoryCopy countShouldUseNumChildrenIfPossible:0];
    }
  }

LABEL_45:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v43);

  v28 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)_filterBookmarks:(id)bookmarks
{
  v20 = *MEMORY[0x277D85DE8];
  bookmarksCopy = bookmarks;
  v5 = bookmarksCopy;
  if (self->_titleWordPrefixes)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (self->_inMemoryFilter)
    {
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (bookmarkMatchesFilter(v12, self->_titleWordPrefixesForInMemoryFiltering) && ((v7 & 1) == 0 || [(WebBookmarkInMemoryChangeFilter *)self->_inMemoryFilter shouldIncludeBookmarkAddedInMemory:v12, v15]))
          {
            [array addObject:{v12, v15}];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = bookmarksCopy;
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (int)countInCollection:(id)collection
{
  v31 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  _listQueryType = [(WebBookmarkListQuery *)self _listQueryType];
  _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
  v7 = [_inMemoryChangeSet bookmarkIsAddedInMemory:self->_folderID];
  if ((_listQueryType < 2) | v7 & 1)
  {
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:collectionCopy skipCountingInDatabaseBookmarksThatAreDeletedInMemory:_listQueryType == 1];
      if (v8 < 0)
      {
        v17 = -1;
        goto LABEL_30;
      }
    }

    v17 = [(WebBookmarkListQuery *)self _inMemoryAddedChildrenCountForBookmarkFolder:self->_folderID collection:collectionCopy skipCountingBookmarksThatAreDeletedInMemory:_listQueryType == 1]+ v8;
    if (_listQueryType != 1)
    {
      v18 = [_inMemoryChangeSet deletedBookmarkIDsInBookmarkFolder:self->_folderID];
      v17 -= [v18 count];
    }
  }

  else
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v28, [collectionCopy _selectBookmarksWhere:self->_query returnType:1]);
    titleWordPrefixes = self->_titleWordPrefixes;
    if (titleWordPrefixes)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = titleWordPrefixes;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v11)
      {
        v12 = *v25;
        v13 = 1;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v15 = v29;
            v16 = *(*(&v24 + 1) + 8 * i);
            sqlite3_bind_text(v15, v13++, [v16 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          }

          v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v11);
      }

      else
      {
        v13 = 1;
      }

      sqlite3_bind_text(v29, v13, [(NSString *)self->_urlFilter UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (self->_customQuery)
    {
      v19 = 0;
    }

    else
    {
      v19 = [_inMemoryChangeSet numberOfAddedBookmarksInBookmarkFolder:self->_folderID];
    }

    while (1)
    {
      v20 = sqlite3_step(v29);
      if (v20 != 100)
      {
        break;
      }

      v19 += [_inMemoryChangeSet isBookmarkDeleted:{sqlite3_column_int(v29, 0)}] ^ 1;
    }

    if (v20)
    {
      v21 = v20 == 101;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v17 = v19;
    }

    else
    {
      v17 = -1;
    }

    WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v28);
  }

LABEL_30:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)_sqliteNotInConditionForInMemoryModifiedAndDeleted:(BOOL)deleted bookmarksInFolder:(int)folder collection:(id)collection
{
  deletedCopy = deleted;
  collectionCopy = collection;
  string = [MEMORY[0x277CCAB68] string];
  _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
  v10 = _inMemoryChangeSet;
  if (deletedCopy)
  {
    v11 = [_inMemoryChangeSet deletedBookmarkIDsInBookmarkFolder:self->_folderID];
    allObjects = [v11 allObjects];
    v13 = commaSeparatedIDStringForBookmarkIDs(allObjects);

    if ([v13 length])
    {
      [string appendString:v13];
    }
  }

  if (self->_inMemoryFilter && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = [(WebBookmarkInMemoryChangeFilter *)self->_inMemoryFilter bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet:v10 inFolder:self->_folderID];
    v15 = commaSeparatedIDStringForBookmarkIDs(v14);
    if ([string length] && objc_msgSend(v15, "length"))
    {
      [string appendFormat:@", %@", v15];
    }

    else
    {
      [string appendString:v15];
    }
  }

  if ([string length])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"id NOT IN (%@)", string];
  }

  else
  {
    v16 = &stru_288259858;
  }

  return v16;
}

- (id)_sqliteInConditionForInMemoryModifiedBookmarksInFolder:(int)folder collection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (self->_inMemoryFilter)
  {
    _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
    inMemoryFilter = self->_inMemoryFilter;
    if (objc_opt_respondsToSelector())
    {
      v9 = [(WebBookmarkInMemoryChangeFilter *)self->_inMemoryFilter bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet:_inMemoryChangeSet inFolder:self->_folderID];
      v10 = commaSeparatedIDStringForBookmarkIDs(v9);
      if ([v10 length])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"id IN (%@)", v10];
      }

      else
      {
        v11 = &stru_288259858;
      }
    }

    else
    {
      v11 = &stru_288259858;
    }
  }

  else
  {
    v11 = &stru_288259858;
  }

  return v11;
}

- (id)bookmarksInCollection:(id)collection fromIndex:(unsigned int)index toIndex:(unsigned int)toIndex skipDecodingSyncData:(BOOL)data
{
  dataCopy = data;
  v107 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  _inMemoryChangeSet = [collectionCopy _inMemoryChangeSet];
  v9 = [_inMemoryChangeSet numberOfReorderedBookmarksInBookmarkFolder:self->_folderID];
  indexCopy = index;
  v10 = [_inMemoryChangeSet folderHasReplaceChange:self->_folderID];
  _listQueryType = [(WebBookmarkListQuery *)self _listQueryType];
  v73 = (v9 != 0) | v10;
  if (_listQueryType > 1)
  {
    v13 = &stru_288259858;
    v12 = &stru_288259858;
  }

  else
  {
    v12 = [(WebBookmarkListQuery *)self _sqliteNotInConditionForInMemoryModifiedAndDeleted:((v9 != 0) | v10 & 1) == 0 bookmarksInFolder:self->_folderID collection:collectionCopy];
    v13 = [(WebBookmarkListQuery *)self _sqliteInConditionForInMemoryModifiedBookmarksInFolder:self->_folderID collection:collectionCopy];
  }

  v74 = v12;
  v75 = v13;
  v14 = whereClauseWithAppendingINConditions(self->_query, &v13->isa, &v12->isa);
  orderBy = self->_orderBy;
  if (orderBy)
  {
    orderBy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ORDER BY %@", v14, orderBy];

    v14 = orderBy;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LIMIT ? OFFSET ?", v14];

  v76 = v17;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v102, [collectionCopy _selectBookmarksWhere:v17]);
  titleWordPrefixes = self->_titleWordPrefixes;
  if (titleWordPrefixes)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v19 = titleWordPrefixes;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v98 objects:v106 count:16];
    if (v20)
    {
      v21 = *v99;
      v22 = 1;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v99 != v21)
          {
            objc_enumerationMutation(v19);
          }

          sqlite3_bind_text(v103, v22++, [*(*(&v98 + 1) + 8 * i) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        }

        v20 = [(NSArray *)v19 countByEnumeratingWithState:&v98 objects:v106 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = 1;
    }

    sqlite3_bind_text(v103, v22, [(NSString *)self->_urlFilter UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v24 = v22 + 1;
  }

  else
  {
    v24 = 1;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v26 = indexCopy;
  v78 = toIndex - indexCopy + 1;
  if (_listQueryType > 1)
  {
    v77 = 0;
    v34 = toIndex - indexCopy + 1;
  }

  else
  {
    v77 = [_inMemoryChangeSet bookmarkIsAddedInMemory:self->_folderID];
    [_inMemoryChangeSet addedBookmarksInBookmarkFolder:self->_folderID];
    v71 = v72 = v24;
    [_inMemoryChangeSet applyModificationsToBookmarks:v71];
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    v94 = 0u;
    v27 = v71;
    v28 = [v27 countByEnumeratingWithState:&v94 objects:v105 count:16];
    if (v28)
    {
      v29 = *v95;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v95 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v94 + 1) + 8 * j);
          if (([_inMemoryChangeSet replayChangesOnBookmark:v31] & 0xFFFFFFFFFFFFFFFDLL) != 1 && (_listQueryType != 1 || bookmarkMatchesFilter(v31, self->_titleWordPrefixesForInMemoryFiltering)) && (!self->_inMemoryFilter || (objc_opt_respondsToSelector() & 1) == 0 || -[WebBookmarkInMemoryChangeFilter shouldIncludeBookmarkAddedInMemory:](self->_inMemoryFilter, "shouldIncludeBookmarkAddedInMemory:", v31)))
          {
            if ([v31 isFolder])
            {
              v32 = array;
            }

            else
            {
              v32 = array2;
            }

            [v32 addObject:v31];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v94 objects:v105 count:16];
      }

      while (v28);
    }

    v24 = v72;
    v33 = [array count];
    if (v73)
    {
      v34 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:collectionCopy skipCountingInDatabaseBookmarksThatAreDeletedInMemory:0];
      v26 = 0;
    }

    else if (v33 <= indexCopy)
    {
      v26 = indexCopy - v33;
      v34 = toIndex - indexCopy + 1;
    }

    else
    {
      v26 = 0;
      v34 = toIndex - v33 + 1;
    }
  }

  array3 = [MEMORY[0x277CBEB18] array];
  if (v77)
  {
    goto LABEL_48;
  }

  sqlite3_bind_int(v103, v24, v34);
  sqlite3_bind_int(v103, v24 + 1, v26);
  while (1)
  {
    v35 = sqlite3_step(v103);
    if (v35 != 100)
    {
      break;
    }

    v36 = [WebBookmark alloc];
    v37 = v103;
    currentDeviceIdentifier = [collectionCopy currentDeviceIdentifier];
    configuration = [collectionCopy configuration];
    v40 = -[WebBookmark initWithSQLiteStatement:deviceIdentifier:collectionType:skipDecodingSyncData:](v36, "initWithSQLiteStatement:deviceIdentifier:collectionType:skipDecodingSyncData:", v37, currentDeviceIdentifier, [configuration collectionType], dataCopy);

    [array3 addObject:v40];
  }

  if (v35 == 101)
  {
LABEL_48:
    array4 = [MEMORY[0x277CBEB18] array];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v42 = array3;
    v43 = [v42 countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (v43)
    {
      v44 = *v91;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v91 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v90 + 1) + 8 * k);
          if (([_inMemoryChangeSet replayChangesOnBookmark:v46] & 0xFFFFFFFFFFFFFFFDLL) != 1)
          {
            [array4 addObject:v46];
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v90 objects:v104 count:16];
      }

      while (v43);
    }

    v47 = v78;
    [_inMemoryChangeSet applyModificationsToBookmarks:array4];
    if (_listQueryType >= 2)
    {
      array5 = array4;
    }

    else
    {
      if (v73)
      {
        v48 = [_inMemoryChangeSet bookmarksAfterReplayingChangesToBookmarks:v42 inFolderWithID:self->_folderID];
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __85__WebBookmarkListQuery_bookmarksInCollection_fromIndex_toIndex_skipDecodingSyncData___block_invoke;
        v86[3] = &unk_279E76678;
        v87 = _inMemoryChangeSet;
        selfCopy = self;
        v89 = _listQueryType;
        v49 = [v48 safari_filterObjectsUsingBlock:v86];
        if (v78 + indexCopy >= [v49 count])
        {
          v50 = v49;
        }

        else
        {
          v50 = [v49 subarrayWithRange:?];
        }

        array5 = v50;
      }

      else
      {
        array5 = [MEMORY[0x277CBEB18] array];
        v81 = [array count];
        if (v81 > indexCopy && v78)
        {
          v52 = indexCopy;
          do
          {
            v53 = [array objectAtIndexedSubscript:v52];
            [array5 addObject:v53];

            v54 = v47 - 1;
            if (++v52 >= v81)
            {
              break;
            }

            --v47;
          }

          while (v47);
        }

        else
        {
          v54 = v78;
        }

        v55 = [array4 count];
        if (v55 && v54)
        {
          v56 = 0;
          do
          {
            v57 = [array4 objectAtIndexedSubscript:v56];
            [array5 addObject:v57];

            v58 = v56 + 1;
            if (v56 + 1 >= v55)
            {
              break;
            }
          }

          while (v54 - 1 != v56++);
          v54 -= v58;
        }

        v60 = 0;
        if (![array4 count] && v81 <= indexCopy)
        {
          if (v77)
          {
            v61 = 0;
          }

          else
          {
            v61 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:collectionCopy skipCountingInDatabaseBookmarksThatAreDeletedInMemory:1];
          }

          v64 = v81 + (v61 & ~(v61 >> 31));
          v65 = indexCopy >= v64;
          v66 = indexCopy - v64;
          if (v65)
          {
            v60 = v66;
          }

          else
          {
            v60 = 0;
          }
        }

        v67 = [array2 count];
        if (v60 < v67 && v54)
        {
          v68 = v54 - 1;
          do
          {
            v69 = [array2 objectAtIndexedSubscript:v60];
            [array5 addObject:v69];

            ++v60;
            v65 = v68-- != 0;
            v70 = v65;
          }

          while (v60 < v67 && (v70 & 1) != 0);
        }
      }
    }
  }

  else
  {
    array5 = MEMORY[0x277CBEBF8];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v102);
  v62 = *MEMORY[0x277D85DE8];

  return array5;
}

uint64_t __85__WebBookmarkListQuery_bookmarksInCollection_fromIndex_toIndex_skipDecodingSyncData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) bookmarkIsAddedInMemory:{objc_msgSend(v3, "identifier")}];
  if (*(*(a1 + 40) + 64) && (v4 & objc_opt_respondsToSelector()) == 1 && ([*(*(a1 + 40) + 64) shouldIncludeBookmarkAddedInMemory:v3] & 1) == 0)
  {
    v5 = 0;
  }

  else if (*(a1 + 48) == 1)
  {
    v5 = bookmarkMatchesFilter(v3, *(*(a1 + 40) + 40));
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_normalizeUserTypedString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    v5 = [stringCopy mutableCopy];
    CFStringTrimWhitespace(v5);
    if ([(__CFString *)v5 length])
    {
      v6 = CFLocaleCopyCurrent();
      CFStringNormalize(v5, kCFStringNormalizationFormD);
      CFStringFold(v5, 0x181uLL, v6);
      CFRelease(v6);
      v7 = 0;
    }

    else
    {
      v7 = v5;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_preparePrefixesFromNormalizedString:(id)string
{
  stringCopy = string;
  if ([WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::once != -1)
  {
    [WebBookmarkListQuery _preparePrefixesFromNormalizedString:];
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v7 = [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizerAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WebBookmarkListQuery__preparePrefixesFromNormalizedString___block_invoke_2;
  block[3] = &unk_279E752A8;
  v16 = stringCopy;
  v8 = array2;
  v17 = v8;
  v9 = array;
  v18 = v9;
  v10 = stringCopy;
  dispatch_sync(v7, block);
  titleWordPrefixes = self->_titleWordPrefixes;
  self->_titleWordPrefixes = v9;
  v12 = v9;

  titleWordPrefixesForInMemoryFiltering = self->_titleWordPrefixesForInMemoryFiltering;
  self->_titleWordPrefixesForInMemoryFiltering = v8;
  v14 = v8;
}

uint64_t __61__WebBookmarkListQuery__preparePrefixesFromNormalizedString___block_invoke()
{
  v0 = objc_alloc_init(WebBookmarkTitleWordTokenizer);
  v1 = [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer;
  [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer = v0;

  [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizerAccessQueue = dispatch_queue_create("com.apple.WebBookmarks.titleWordTokenizerAccess", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__WebBookmarkListQuery__preparePrefixesFromNormalizedString___block_invoke_2(uint64_t a1)
{
  [-[WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer setString:*(a1 + 32)];
  result = [-[WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer advanceToNextToken];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    do
    {
      v5 = [*(a1 + 32) substringWithRange:{v4, v3}];
      [*(a1 + 40) addObject:v5];
      v6 = *(a1 + 48);
      v7 = [v5 stringByAppendingString:@"*"];
      [v6 addObject:v7];

      result = [-[WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizer advanceToNextToken];
      v4 = result;
    }

    while (result != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

- (void)_childCountInDatabaseForFolderFetchInCollection:(int *)a1 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(int)a2 countShouldUseNumChildrenIfPossible:(os_log_t)log .cold.1(int *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "num_children for bookmark %i has an invalid value %i", v5, 0xEu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_childCountInDatabaseForFolderFetchInCollection:(int *)a1 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(NSObject *)a2 countShouldUseNumChildrenIfPossible:.cold.2(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "Retrying to fetch count without using num_children %i", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end
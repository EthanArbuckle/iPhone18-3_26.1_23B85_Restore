@interface WebBookmarkListQuery
- (WebBookmarkListQuery)initWithBookmarksWhere:(id)a3 folderID:(int)a4 orderBy:(id)a5 usingFilter:(id)a6;
- (id)_filterBookmarks:(id)a3;
- (id)_normalizeUserTypedString:(id)a3;
- (id)_sqliteInConditionForInMemoryModifiedBookmarksInFolder:(int)a3 collection:(id)a4;
- (id)_sqliteNotInConditionForInMemoryModifiedAndDeleted:(BOOL)a3 bookmarksInFolder:(int)a4 collection:(id)a5;
- (id)bookmarksInCollection:(id)a3 fromIndex:(unsigned int)a4 toIndex:(unsigned int)a5 skipDecodingSyncData:(BOOL)a6;
- (id)debugDescription;
- (int)_childCountInDatabaseForFolderFetchInCollection:(id)a3 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(BOOL)a4 countShouldUseNumChildrenIfPossible:(BOOL)a5;
- (int)countInCollection:(id)a3;
- (int64_t)_listQueryType;
- (void)_preparePrefixesFromNormalizedString:(id)a3;
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

- (WebBookmarkListQuery)initWithBookmarksWhere:(id)a3 folderID:(int)a4 orderBy:(id)a5 usingFilter:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v34.receiver = self;
  v34.super_class = WebBookmarkListQuery;
  v14 = [(WebBookmarkListQuery *)&v34 init];
  v15 = v14;
  if (v14)
  {
    v14->_customQuery = 1;
    objc_storeStrong(&v14->_query, a3);
    v16 = [v12 copy];
    orderBy = v15->_orderBy;
    v15->_orderBy = v16;

    v18 = [(WebBookmarkListQuery *)v15 _normalizeUserTypedString:v13];
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
      v33 = v11;
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

      v11 = v33;
    }

    if (a4 != 0x7FFFFFFF)
    {
      v15->_folderID = a4;
      v15->_customQuery = 0;
    }

    if (v12)
    {
      v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ ORDER BY %@", v15->_query, v12];
      queryWithOrderBy = v15->_queryWithOrderBy;
      v15->_queryWithOrderBy = v29;
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

- (int)_childCountInDatabaseForFolderFetchInCollection:(id)a3 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:(BOOL)a4 countShouldUseNumChildrenIfPossible:(BOOL)a5
{
  v5 = a5;
  v32 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v33 = [MEMORY[0x277CCAB68] string];
  v7 = &stru_288259858;
  v8 = [(WebBookmarkListQuery *)self _listQueryType];
  v9 = v8 == 1 && v32;
  if (self->_inMemoryFilter || v9)
  {
    v10 = [(WebBookmarkListQuery *)self _sqliteNotInConditionForInMemoryModifiedAndDeleted:v9 bookmarksInFolder:self->_folderID collection:v34];
    v7 = [(WebBookmarkListQuery *)self _sqliteInConditionForInMemoryModifiedBookmarksInFolder:self->_folderID collection:v34];
  }

  else
  {
    v10 = &stru_288259858;
  }

  p_folderID = &self->_folderID;
  v31 = v10;
  if (!self->_folderID || self->_includeHidden || self->_titleWordPrefixes || [(__CFString *)v10 length]|| !v5 || self->_includeDescendantsAsChildren)
  {
    v12 = whereClauseWithAppendingINConditions(self->_query, &v7->isa, &v10->isa);
    [v33 appendFormat:@"SELECT COUNT(*) FROM bookmarks WHERE %@", v12];

    v30 = 0;
  }

  else
  {
    [v33 appendFormat:@"SELECT num_children FROM bookmarks WHERE id = %d", *p_folderID];
    v30 = 1;
  }

  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v43, [v34 _sqliteStatementWithQuery:v33]);
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

  if (v32 && !v8)
  {
    v21 = [v34 _inMemoryChangeSet];
    [v21 deletedBookmarkIDsInBookmarkFolder:*p_folderID];
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

          v20 -= [v21 bookmarkIsAddedInMemory:{objc_msgSend(*(*(&v35 + 1) + 8 * j), "intValue")}] ^ 1;
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

      v20 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:v34 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:v32 countShouldUseNumChildrenIfPossible:0];
    }
  }

LABEL_45:
  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v43);

  v28 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)_filterBookmarks:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_titleWordPrefixes)
  {
    v6 = [MEMORY[0x277CBEB18] array];
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
            [v6 addObject:{v12, v15}];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = v4;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (int)countInCollection:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WebBookmarkListQuery *)self _listQueryType];
  v6 = [v4 _inMemoryChangeSet];
  v7 = [v6 bookmarkIsAddedInMemory:self->_folderID];
  if ((v5 < 2) | v7 & 1)
  {
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:v4 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:v5 == 1];
      if (v8 < 0)
      {
        v17 = -1;
        goto LABEL_30;
      }
    }

    v17 = [(WebBookmarkListQuery *)self _inMemoryAddedChildrenCountForBookmarkFolder:self->_folderID collection:v4 skipCountingBookmarksThatAreDeletedInMemory:v5 == 1]+ v8;
    if (v5 != 1)
    {
      v18 = [v6 deletedBookmarkIDsInBookmarkFolder:self->_folderID];
      v17 -= [v18 count];
    }
  }

  else
  {
    WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v28, [v4 _selectBookmarksWhere:self->_query returnType:1]);
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
      v19 = [v6 numberOfAddedBookmarksInBookmarkFolder:self->_folderID];
    }

    while (1)
    {
      v20 = sqlite3_step(v29);
      if (v20 != 100)
      {
        break;
      }

      v19 += [v6 isBookmarkDeleted:{sqlite3_column_int(v29, 0)}] ^ 1;
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

- (id)_sqliteNotInConditionForInMemoryModifiedAndDeleted:(BOOL)a3 bookmarksInFolder:(int)a4 collection:(id)a5
{
  v5 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CCAB68] string];
  v9 = [v7 _inMemoryChangeSet];
  v10 = v9;
  if (v5)
  {
    v11 = [v9 deletedBookmarkIDsInBookmarkFolder:self->_folderID];
    v12 = [v11 allObjects];
    v13 = commaSeparatedIDStringForBookmarkIDs(v12);

    if ([v13 length])
    {
      [v8 appendString:v13];
    }
  }

  if (self->_inMemoryFilter && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = [(WebBookmarkInMemoryChangeFilter *)self->_inMemoryFilter bookmarkIDsModifiedInMemoryNotPassingFilterFromChangeSet:v10 inFolder:self->_folderID];
    v15 = commaSeparatedIDStringForBookmarkIDs(v14);
    if ([v8 length] && objc_msgSend(v15, "length"))
    {
      [v8 appendFormat:@", %@", v15];
    }

    else
    {
      [v8 appendString:v15];
    }
  }

  if ([v8 length])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"id NOT IN (%@)", v8];
  }

  else
  {
    v16 = &stru_288259858;
  }

  return v16;
}

- (id)_sqliteInConditionForInMemoryModifiedBookmarksInFolder:(int)a3 collection:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_inMemoryFilter)
  {
    v7 = [v5 _inMemoryChangeSet];
    inMemoryFilter = self->_inMemoryFilter;
    if (objc_opt_respondsToSelector())
    {
      v9 = [(WebBookmarkInMemoryChangeFilter *)self->_inMemoryFilter bookmarkIDsModifiedInMemoryPassingFilterFromChangeSet:v7 inFolder:self->_folderID];
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

- (id)bookmarksInCollection:(id)a3 fromIndex:(unsigned int)a4 toIndex:(unsigned int)a5 skipDecodingSyncData:(BOOL)a6
{
  v80 = a6;
  v107 = *MEMORY[0x277D85DE8];
  v84 = a3;
  v8 = [v84 _inMemoryChangeSet];
  v9 = [v8 numberOfReorderedBookmarksInBookmarkFolder:self->_folderID];
  v79 = a4;
  v10 = [v8 folderHasReplaceChange:self->_folderID];
  v11 = [(WebBookmarkListQuery *)self _listQueryType];
  v73 = (v9 != 0) | v10;
  if (v11 > 1)
  {
    v13 = &stru_288259858;
    v12 = &stru_288259858;
  }

  else
  {
    v12 = [(WebBookmarkListQuery *)self _sqliteNotInConditionForInMemoryModifiedAndDeleted:((v9 != 0) | v10 & 1) == 0 bookmarksInFolder:self->_folderID collection:v84];
    v13 = [(WebBookmarkListQuery *)self _sqliteInConditionForInMemoryModifiedBookmarksInFolder:self->_folderID collection:v84];
  }

  v74 = v12;
  v75 = v13;
  v14 = whereClauseWithAppendingINConditions(self->_query, &v13->isa, &v12->isa);
  orderBy = self->_orderBy;
  if (orderBy)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ORDER BY %@", v14, orderBy];

    v14 = v16;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LIMIT ? OFFSET ?", v14];

  v76 = v17;
  WebBookmarks::BookmarkSQLStatement::BookmarkSQLStatement(v102, [v84 _selectBookmarksWhere:v17]);
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

  v85 = [MEMORY[0x277CBEB18] array];
  v25 = [MEMORY[0x277CBEB18] array];
  v26 = v79;
  v78 = a5 - v79 + 1;
  if (v11 > 1)
  {
    v77 = 0;
    v34 = a5 - v79 + 1;
  }

  else
  {
    v77 = [v8 bookmarkIsAddedInMemory:self->_folderID];
    [v8 addedBookmarksInBookmarkFolder:self->_folderID];
    v71 = v72 = v24;
    [v8 applyModificationsToBookmarks:v71];
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
          if (([v8 replayChangesOnBookmark:v31] & 0xFFFFFFFFFFFFFFFDLL) != 1 && (v11 != 1 || bookmarkMatchesFilter(v31, self->_titleWordPrefixesForInMemoryFiltering)) && (!self->_inMemoryFilter || (objc_opt_respondsToSelector() & 1) == 0 || -[WebBookmarkInMemoryChangeFilter shouldIncludeBookmarkAddedInMemory:](self->_inMemoryFilter, "shouldIncludeBookmarkAddedInMemory:", v31)))
          {
            if ([v31 isFolder])
            {
              v32 = v85;
            }

            else
            {
              v32 = v25;
            }

            [v32 addObject:v31];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v94 objects:v105 count:16];
      }

      while (v28);
    }

    v24 = v72;
    v33 = [v85 count];
    if (v73)
    {
      v34 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:v84 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:0];
      v26 = 0;
    }

    else if (v33 <= v79)
    {
      v26 = v79 - v33;
      v34 = a5 - v79 + 1;
    }

    else
    {
      v26 = 0;
      v34 = a5 - v33 + 1;
    }
  }

  v83 = [MEMORY[0x277CBEB18] array];
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
    v38 = [v84 currentDeviceIdentifier];
    v39 = [v84 configuration];
    v40 = -[WebBookmark initWithSQLiteStatement:deviceIdentifier:collectionType:skipDecodingSyncData:](v36, "initWithSQLiteStatement:deviceIdentifier:collectionType:skipDecodingSyncData:", v37, v38, [v39 collectionType], v80);

    [v83 addObject:v40];
  }

  if (v35 == 101)
  {
LABEL_48:
    v41 = [MEMORY[0x277CBEB18] array];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v42 = v83;
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
          if (([v8 replayChangesOnBookmark:v46] & 0xFFFFFFFFFFFFFFFDLL) != 1)
          {
            [v41 addObject:v46];
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v90 objects:v104 count:16];
      }

      while (v43);
    }

    v47 = v78;
    [v8 applyModificationsToBookmarks:v41];
    if (v11 >= 2)
    {
      v51 = v41;
    }

    else
    {
      if (v73)
      {
        v48 = [v8 bookmarksAfterReplayingChangesToBookmarks:v42 inFolderWithID:self->_folderID];
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __85__WebBookmarkListQuery_bookmarksInCollection_fromIndex_toIndex_skipDecodingSyncData___block_invoke;
        v86[3] = &unk_279E76678;
        v87 = v8;
        v88 = self;
        v89 = v11;
        v49 = [v48 safari_filterObjectsUsingBlock:v86];
        if (v78 + v79 >= [v49 count])
        {
          v50 = v49;
        }

        else
        {
          v50 = [v49 subarrayWithRange:?];
        }

        v51 = v50;
      }

      else
      {
        v51 = [MEMORY[0x277CBEB18] array];
        v81 = [v85 count];
        if (v81 > v79 && v78)
        {
          v52 = v79;
          do
          {
            v53 = [v85 objectAtIndexedSubscript:v52];
            [v51 addObject:v53];

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

        v55 = [v41 count];
        if (v55 && v54)
        {
          v56 = 0;
          do
          {
            v57 = [v41 objectAtIndexedSubscript:v56];
            [v51 addObject:v57];

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
        if (![v41 count] && v81 <= v79)
        {
          if (v77)
          {
            v61 = 0;
          }

          else
          {
            v61 = [(WebBookmarkListQuery *)self _childCountInDatabaseForFolderFetchInCollection:v84 skipCountingInDatabaseBookmarksThatAreDeletedInMemory:1];
          }

          v64 = v81 + (v61 & ~(v61 >> 31));
          v65 = v79 >= v64;
          v66 = v79 - v64;
          if (v65)
          {
            v60 = v66;
          }

          else
          {
            v60 = 0;
          }
        }

        v67 = [v25 count];
        if (v60 < v67 && v54)
        {
          v68 = v54 - 1;
          do
          {
            v69 = [v25 objectAtIndexedSubscript:v60];
            [v51 addObject:v69];

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
    v51 = MEMORY[0x277CBEBF8];
  }

  WebBookmarks::BookmarkSQLStatement::~BookmarkSQLStatement(v102);
  v62 = *MEMORY[0x277D85DE8];

  return v51;
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

- (id)_normalizeUserTypedString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
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

- (void)_preparePrefixesFromNormalizedString:(id)a3
{
  v4 = a3;
  if ([WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::once != -1)
  {
    [WebBookmarkListQuery _preparePrefixesFromNormalizedString:];
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [WebBookmarkListQuery _preparePrefixesFromNormalizedString:]::tokenizerAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WebBookmarkListQuery__preparePrefixesFromNormalizedString___block_invoke_2;
  block[3] = &unk_279E752A8;
  v16 = v4;
  v8 = v6;
  v17 = v8;
  v9 = v5;
  v18 = v9;
  v10 = v4;
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
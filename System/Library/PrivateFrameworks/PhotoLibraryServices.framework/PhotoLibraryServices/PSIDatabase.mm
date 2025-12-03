@interface PSIDatabase
+ (BOOL)_integrityCheckDatabase:(sqlite3 *)database;
+ (id)searchDatabaseLog;
+ (sqlite3)_openDatabaseAtPath:(id)path options:(int64_t)options;
+ (void)_dropDatabase:(sqlite3 *)database withCompletion:(id)completion;
+ (void)dropDatabaseAtPath:(id)path withCompletion:(id)completion;
- (BOOL)_inqVerifyTablesExistInDatabase;
- (BOOL)_prepareSearchIndexAtPath:(id)path options:(int64_t)options;
- (BOOL)assetExistsWithUUID:(id)d;
- (PSIDatabase)initWithPathManager:(id)manager options:(int64_t)options;
- (__CFArray)_inqNewAssetIdsForGroupId:(unint64_t)id dateFilter:(id)filter;
- (__CFArray)_inqNewAssetIdsWithDateFilter:(id)filter;
- (__CFArray)_inqNewCollectionIdsForGroupId:(unint64_t)id dateFilter:(id)filter;
- (__CFArray)assetIdsWithDateFilter:(id)filter;
- (__CFArray)mostRecentSortedAssetIdsWithLimit:(unint64_t)limit;
- (__CFDictionary)_inqPrepareStatementsForOptions:(int64_t)options tokenizerName:(id)name;
- (__CFSet)_inqAssetIdsForGroupIds:(__CFSet *)ids;
- (__CFSet)_inqNewGroupIdsForAssetId:(unint64_t)id;
- (__CFSet)_inqNewGroupIdsForAssetIds:(__CFSet *)ids;
- (__CFSet)_inqNewGroupIdsForCollectionId:(unint64_t)id;
- (__CFSet)_inqNewGroupIdsForCollectionIds:(__CFSet *)ids;
- (__CFSet)_inqNewGroupIdsMatchingFTSString:(id)string categories:(id)categories textIsSearchable:(BOOL)searchable;
- (__CFSet)_inqNewGroupIdsWithCategories:(id)categories;
- (__CFSet)groupIdsForNormalizedText:(id)text wildcardSearch:(BOOL)search leadingAnchored:(BOOL)anchored searchIndexCategories:(id)categories;
- (__CFSet)groupIdsMatchingFTSString:(id)string categories:(id)categories textIsSearchable:(BOOL)searchable;
- (double)_inqScoreForGroupID:(unint64_t)d;
- (id)_inqAssetIdsByGroupIdForAssetIds:(id)ids;
- (id)_inqAssetUUIDsForAssetIds:(__CFArray *)ids range:(_NSRange)range creationDateSorted:(BOOL)sorted;
- (id)_inqAssetUUIDsForAssetIds:(__CFSet *)ids;
- (id)_inqAssetUUIDsForGroupID:(unint64_t)d;
- (id)_inqCollectionIdsByGroupIdForCollectionIds:(id)ids;
- (id)_inqCollectionUUIDsForCollectionIds:(__CFArray *)ids range:(_NSRange)range;
- (id)_inqCollectionUUIDsForGroupID:(unint64_t)d;
- (id)_inqContentStringForGroupId:(unint64_t)id;
- (id)_inqDequeueGroupObjectWithId:(unint64_t)id isCachedGroup:(BOOL *)group;
- (id)_inqFilenameGroupsWithMatchingGroupIds:(__CFSet *)ids dateFilter:(id)filter searchResultTypes:(unint64_t)types matchingPredicateBlock:(id)block;
- (id)_inqGenerateGroupsInfoDictionaryFromContentString:(const char *)string normalizedString:(const char *)normalizedString identifier:(const char *)identifier category:(signed __int16)category score:(double)score groupId:(unint64_t)id owningGroupId:(unint64_t)groupId includeUUIDs:(BOOL)self0;
- (id)_inqGroupArraysFromGroupIdSets:(id)sets dateFilter:(id)filter searchResultTypes:(unint64_t)types progressBlock:(id)block;
- (id)_inqGroupForLookupIdentifier:(id)identifier searchResultTypes:(unint64_t)types;
- (id)_inqGroupWithMatchingGroupId:(unint64_t)id dateFilter:(id)filter searchResultTypes:(unint64_t)types;
- (id)_inqGroupWithStatement:(sqlite3_stmt *)statement dateFilter:(id)filter includeObjects:(BOOL)objects isFilenameStatement:(BOOL)filenameStatement excludingGroupId:(unint64_t)id searchResultTypes:(unint64_t)types;
- (id)_inqGroupsWithMatchingGroupIds:(__CFSet *)ids dateFilter:(id)filter includeObjects:(BOOL)objects searchResultTypes:(unint64_t)types matchingPredicateBlock:(id)block;
- (id)_inqNewSynonymTextsByOwningGroupIdWithGroupIds:(__CFSet *)ids;
- (id)_inqNonFilenameGroupsWithMatchingGroupIds:(__CFSet *)ids dateFilter:(id)filter includeObjects:(BOOL)objects searchResultTypes:(unint64_t)types matchingPredicateBlock:(id)block;
- (id)_inqNumberOfAssetsByGroupIdMatchingGroupsWithIds:(id)ids;
- (id)_inqNumberOfCollectionsByGroupIdMatchingGroupsWithIds:(id)ids;
- (id)_inqSelectInitialSuggestions;
- (id)allGroupIds;
- (id)assetUUIDsForAssetIds:(__CFSet *)ids;
- (id)assetUUIDsForAssetIdsArray:(__CFArray *)array;
- (id)assetUUIDsForGroupIDs:(__CFSet *)ds;
- (id)dumpGroupsInfoForAssetUUID:(id)d indexCategories:(id)categories includeUUIDs:(BOOL)ds;
- (id)dumpGroupsInfoWithIndexCategories:(id)categories includeUUIDs:(BOOL)ds;
- (id)dumpLookupStringsWithIndexCategories:(id)categories;
- (id)fetchInitialSuggestions;
- (id)groupArraysFromGroupIdSets:(id)sets dateFilter:(id)filter searchResultTypes:(unint64_t)types progressBlock:(id)block;
- (id)groupForLookupIdentifier:(id)identifier searchResultTypes:(unint64_t)types;
- (id)groupForText:(id)text identifier:(id)identifier category:(unint64_t)category resultTypes:(unint64_t)types;
- (id)groupIdsInPrefixTable;
- (id)groupsForAssetIds:(__CFArray *)ids indexCategories:(id)categories includeObjects:(BOOL)objects;
- (id)groupsForGroupIds:(__CFSet *)ids includeObjectIds:(BOOL)objectIds searchResultTypes:(unint64_t)types;
- (id)groupsForSearchIndexCategories:(id)categories searchResultTypes:(unint64_t)types dateFilter:(id)filter;
- (id)initForTestingWithOptions:(int64_t)options;
- (id)statementFromString:(id)string;
- (id)uuidsForLookupIdentifier:(id)identifier resultTypes:(unint64_t)types;
- (int64_t)insertAsset:(id)asset;
- (int64_t)insertCollection:(id)collection;
- (int64_t)insertGroup:(id)group;
- (sqlite3_stmt)_inqPrepareStatement:(const char *)statement;
- (unint64_t)_inqAssetIdForUUID:(id)d uuid_0:(unint64_t *)uuid_0 uuid_1:(unint64_t *)uuid_1;
- (unint64_t)_inqAssetIdWithAsset:(id)asset;
- (unint64_t)_inqCollectionIdForUUID:(id)d uuid_0:(unint64_t *)uuid_0 uuid_1:(unint64_t *)uuid_1;
- (unint64_t)_inqCollectionIdWithCollection:(id)collection;
- (unint64_t)_inqGroupIdForCategory:(signed __int16)category contentString:(id)string;
- (unint64_t)_inqGroupIdForCategory:(signed __int16)category contentString:(id)string identifier:(id)identifier outOwningGroupId:(unint64_t *)id outScore:(double *)score;
- (unint64_t)_inqGroupIdForCategory:(signed __int16)category identifier:(id)identifier outOwningGroupId:(unint64_t *)id outScore:(double *)score;
- (unint64_t)_inqGroupIdForCategory:(signed __int16)category normalizedString:(id)string identifier:(id)identifier outOwningGroupId:(unint64_t *)id outScore:(double *)score;
- (unint64_t)_inqGroupIdForCategory:(signed __int16)category owningGroupId:(unint64_t)id contentString:(id)string normalizedString:(id)normalizedString identifier:(id)identifier rankingScore:(double)score insertIfNeeded:(BOOL)needed tokenOutput:(const tokenOutput_t *)self0 shouldUpdateOwningGroupId:(BOOL)self1 shouldUpdateRankingScore:(BOOL)self2;
- (unint64_t)_inqNumberOfAssetsMatchingGroupWithId:(unint64_t)id;
- (unint64_t)_inqNumberOfCollectionsMatchingGroupWithId:(unint64_t)id;
- (unint64_t)_inqUpdateGroupForText:(id)text identifier:(id)identifier category:(signed __int16)category owningGroupId:(unint64_t)id;
- (unint64_t)countOfAssets;
- (void)_finalizeEverything;
- (void)_ingRebuildPrefixTableIfNeeded;
- (void)_inqDeleteGroupsWithGraphCollectionsForPersonUUID:(id)d;
- (void)_inqExecutePreparedStatement:(sqlite3_stmt *)statement allowError:(int)error withStatementBlock:(id)block;
- (void)_inqExecutePreparedStatement:(sqlite3_stmt *)statement withStatementBlock:(id)block;
- (void)_inqGetTokensFromString:(id)string category:(signed __int16)category tokenOutput:(tokenOutput_t *)output;
- (void)_inqGroupIdsForAssetOrCollectionIds:(__CFArray *)ids resultType:(unint64_t)type completion:(id)completion;
- (void)_inqInsertInitialSuggestion:(id)suggestion;
- (void)_inqPerformBatch:(id)batch;
- (void)_inqPrepareAndExecuteStatement:(const char *)statement;
- (void)_inqRemoveUUID:(id)d categories:(id)categories objectType:(unint64_t)type isInBatch:(BOOL)batch;
- (void)_inqRemoveUUID:(id)d objectType:(unint64_t)type isInBatch:(BOOL)batch;
- (void)_inqRemoveUnusedGroups;
- (void)_inqUpdateGATableWithGroupId:(unint64_t)id assetId:(unint64_t)assetId;
- (void)_inqUpdateGCTableWithGroupId:(unint64_t)id collectionId:(unint64_t)collectionId;
- (void)_inqUpdateInitialSuggestionWithTemplateKey:(id)key firstGroupId:(unint64_t)id secondGroupId:(unint64_t)groupId dateLastUsed:(id)used;
- (void)_prepareTokenOutput:(tokenOutput_t *)output forIndexing:(BOOL)indexing;
- (void)_removeUUID:(id)d categories:(id)categories objectType:(unint64_t)type completion:(id)completion;
- (void)_removeUUIDs:(id)ds objectType:(unint64_t)type deferRemovingUnusedGroups:(BOOL)groups completion:(id)completion;
- (void)_runWithMatchingIDs:(id)ds block:(id)block;
- (void)_sortedSearchIndexRowIdsFromUUIDs:(id)ds searchResultType:(unint64_t)type completion:(id)completion;
- (void)addAsset:(id)asset withCompletion:(id)completion;
- (void)addAssets:(id)assets deferRemovingUnusedGroups:(BOOL)groups withCompletion:(id)completion;
- (void)addCollection:(id)collection withCompletion:(id)completion;
- (void)addCollections:(id)collections deferRemovingUnusedGroups:(BOOL)groups withCompletion:(id)completion;
- (void)dealloc;
- (void)deleteAllInitialSuggestions;
- (void)dropDatabaseWithCompletion:(id)completion;
- (void)executeStatement:(id)statement withResultEnumerationBlock:(id)block;
- (void)executeStatementFromString:(id)string;
- (void)executeStatementFromString:(id)string withResultEnumerationBlock:(id)block;
- (void)exqExecuteStatementFromString:(id)string withResultEnumerationBlock:(id)block;
- (void)groupsForAssetIds:(__CFArray *)ids completion:(id)completion;
- (void)groupsForCollectionIds:(__CFArray *)ids completion:(id)completion;
- (void)linkAssetWithId:(int64_t)id toGroupWithId:(int64_t)withId;
- (void)linkCollectionWithId:(int64_t)id toGroupWithId:(int64_t)withId;
- (void)removeAssetWithUUID:(id)d completion:(id)completion;
- (void)removeCollectionWithUUID:(id)d completion:(id)completion;
- (void)removeUnusedGroups;
- (void)resetGroupsCache;
- (void)saveInitialSuggestions:(id)suggestions;
- (void)updateInitialSuggestionsWithIdentifiers:(id)identifiers dateLastUsed:(id)used;
- (void)updateRankingScoreForGroups:(id)groups withCompletion:(id)completion;
@end

@implementation PSIDatabase

- (id)groupsForAssetIds:(__CFArray *)ids indexCategories:(id)categories includeObjects:(BOOL)objects
{
  categoriesCopy = categories;
  if ([categoriesCopy count])
  {
    if (ids)
    {
      Count = CFArrayGetCount(ids);
      if (Count)
      {
        v10 = Count;
        *buf = 0;
        v26 = buf;
        v27 = 0x3032000000;
        v28 = __Block_byref_object_copy__107328;
        v29 = __Block_byref_object_dispose__107329;
        v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __64__PSIDatabase_groupsForAssetIds_indexCategories_includeObjects___block_invoke;
        v18 = &unk_1E7576630;
        selfCopy = self;
        idsCopy = ids;
        v23 = v10;
        objectsCopy = objects;
        v20 = categoriesCopy;
        v21 = buf;
        [(PSIDatabase *)self _inqSync:&v15];
        v11 = [*(v26 + 5) copy];

        _Block_object_dispose(buf, 8);
        goto LABEL_11;
      }
    }

    v12 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "Unexpected empty assetIds passed to groupsForAssetIds:indexCategories";
LABEL_9:
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    }
  }

  else
  {
    v12 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "Unexpected empty index categories passed to groupsForAssetIds:indexCategories";
      goto LABEL_9;
    }
  }

  v11 = MEMORY[0x1E695E0F0];
LABEL_11:

  return v11;
}

void __64__PSIDatabase_groupsForAssetIds_indexCategories_includeObjects___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) bindElements:*(a1 + 56) range:{0, *(a1 + 64)}];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 24), @"selectGroupIdsInGAWithAssetIds");
  v5 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PSIDatabase_groupsForAssetIds_indexCategories_includeObjects___block_invoke_2;
  v15[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v15[4] = Mutable;
  [v5 _inqExecutePreparedStatement:Value withStatementBlock:v15];
  [*(*(a1 + 32) + 32) unbind];
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count)
    {
      [*(*(a1 + 32) + 32) bindElements:Mutable range:{0, Count}];
      v7 = CFArrayCreateMutable(v2, [*(a1 + 40) count], 0);
      v8 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __64__PSIDatabase_groupsForAssetIds_indexCategories_includeObjects___block_invoke_3;
      v14[3] = &__block_descriptor_40_e12_v24__0Q8_B16l;
      v14[4] = v7;
      [v8 enumerateIndexesUsingBlock:v14];
      [*(*(a1 + 32) + 40) bindElements:v7 range:{0, objc_msgSend(*(a1 + 40), "count")}];
      v9 = CFDictionaryGetValue(*(*(a1 + 32) + 24), @"fetchGroupsForGroupIdsAndCategories");
      v10 = *(a1 + 32);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__PSIDatabase_groupsForAssetIds_indexCategories_includeObjects___block_invoke_4;
      v12[3] = &unk_1E7576608;
      v13 = *(a1 + 72);
      v11 = *(a1 + 48);
      v12[4] = v10;
      v12[5] = v11;
      [v10 _inqExecutePreparedStatement:v9 withStatementBlock:v12];
      [*(*(a1 + 32) + 40) unbind];
      CFRelease(v7);
      [*(*(a1 + 32) + 32) unbind];
    }

    CFRelease(Mutable);
  }
}

void __64__PSIDatabase_groupsForAssetIds_indexCategories_includeObjects___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFArrayAppendValue(v4, v3);
}

void __64__PSIDatabase_groupsForAssetIds_indexCategories_includeObjects___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _inqGroupWithStatement:a2 dateFilter:0 includeObjects:*(a1 + 48) searchResultTypes:1];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

- (id)groupForText:(id)text identifier:(id)identifier category:(unint64_t)category resultTypes:(unint64_t)types
{
  textCopy = text;
  identifierCopy = identifier;
  if ([textCopy length])
  {
    if (!category)
    {
      v12 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = [identifierCopy length];
  v12 = 0;
  if (category && v13)
  {
LABEL_6:
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__107328;
    v26 = __Block_byref_object_dispose__107329;
    v27 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__PSIDatabase_groupForText_identifier_category_resultTypes___block_invoke;
    v15[3] = &unk_1E7576DD0;
    v16 = identifierCopy;
    v17 = textCopy;
    selfCopy = self;
    v19 = &v22;
    categoryCopy = category;
    typesCopy = types;
    [(PSIDatabase *)self _inqSync:v15];
    v12 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

LABEL_7:

  return v12;
}

void __60__PSIDatabase_groupForText_identifier_category_resultTypes___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = [*(a1 + 40) length];
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);
    if (v2)
    {
      v5 = [v3 _inqGroupIdForCategory:v4 contentString:*(a1 + 40) identifier:*(a1 + 32) outOwningGroupId:0 outScore:0];
    }

    else
    {
      v5 = [v3 _inqGroupIdForCategory:v4 identifier:*(a1 + 32) outOwningGroupId:0 outScore:0];
    }
  }

  else
  {
    v5 = [*(a1 + 48) _inqGroupIdForCategory:*(a1 + 64) contentString:*(a1 + 40)];
  }

  v6 = v5;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  CFSetAddValue(Mutable, v6);
  v8 = [*(a1 + 48) _inqGroupsWithMatchingGroupIds:Mutable dateFilter:0 includeObjects:1 searchResultTypes:*(a1 + 72) matchingPredicateBlock:0];
  v9 = [v8 firstObject];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  CFRelease(Mutable);
}

- (id)groupsForGroupIds:(__CFSet *)ids includeObjectIds:(BOOL)objectIds searchResultTypes:(unint64_t)types
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__107328;
  v13 = __Block_byref_object_dispose__107329;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PSIDatabase_groupsForGroupIds_includeObjectIds_searchResultTypes___block_invoke;
  v7[3] = &unk_1E75765E0;
  v7[4] = self;
  v7[5] = &v9;
  objectIdsCopy = objectIds;
  v7[6] = ids;
  v7[7] = types;
  [(PSIDatabase *)self _inqSync:v7];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __68__PSIDatabase_groupsForGroupIds_includeObjectIds_searchResultTypes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqGroupsWithMatchingGroupIds:*(a1 + 48) dateFilter:0 includeObjects:*(a1 + 64) searchResultTypes:*(a1 + 56) matchingPredicateBlock:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (__CFSet)groupIdsForNormalizedText:(id)text wildcardSearch:(BOOL)search leadingAnchored:(BOOL)anchored searchIndexCategories:(id)categories
{
  anchoredCopy = anchored;
  searchCopy = search;
  categoriesCopy = categories;
  v11 = [PSITokenizer fts5StringFromString:text useWildcard:searchCopy leadingAnchored:anchoredCopy orderInsensitive:0];
  v12 = [(PSIDatabase *)self groupIdsMatchingFTSString:v11 categories:categoriesCopy textIsSearchable:1];

  return v12;
}

- (__CFSet)groupIdsMatchingFTSString:(id)string categories:(id)categories textIsSearchable:(BOOL)searchable
{
  stringCopy = string;
  categoriesCopy = categories;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PSIDatabase_groupIdsMatchingFTSString_categories_textIsSearchable___block_invoke;
  v14[3] = &unk_1E75765B8;
  v17 = &v19;
  v14[4] = self;
  v10 = stringCopy;
  v15 = v10;
  v11 = categoriesCopy;
  v16 = v11;
  searchableCopy = searchable;
  [(PSIDatabase *)self _inqSync:v14];
  v12 = CFAutorelease(v20[3]);

  _Block_object_dispose(&v19, 8);
  return v12;
}

uint64_t __69__PSIDatabase_groupIdsMatchingFTSString_categories_textIsSearchable___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _inqNewGroupIdsMatchingFTSString:*(a1 + 40) categories:*(a1 + 48) textIsSearchable:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (id)groupsForSearchIndexCategories:(id)categories searchResultTypes:(unint64_t)types dateFilter:(id)filter
{
  categoriesCopy = categories;
  filterCopy = filter;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__107328;
  v23 = __Block_byref_object_dispose__107329;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__PSIDatabase_groupsForSearchIndexCategories_searchResultTypes_dateFilter___block_invoke;
  v14[3] = &unk_1E7576B70;
  v14[4] = self;
  v10 = categoriesCopy;
  v15 = v10;
  v17 = &v19;
  v11 = filterCopy;
  v16 = v11;
  typesCopy = types;
  [(PSIDatabase *)self _inqSync:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __75__PSIDatabase_groupsForSearchIndexCategories_searchResultTypes_dateFilter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqNewGroupIdsWithCategories:*(a1 + 40)];
  v3 = [*(a1 + 32) _inqGroupsWithMatchingGroupIds:v2 dateFilter:*(a1 + 48) includeObjects:1 searchResultTypes:*(a1 + 64) matchingPredicateBlock:0];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  CFRelease(v2);
}

- (__CFArray)mostRecentSortedAssetIdsWithLimit:(unint64_t)limit
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v6 = Mutable;
  if (limit)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__PSIDatabase_mostRecentSortedAssetIdsWithLimit___block_invoke;
    v8[3] = &unk_1E7576590;
    v8[6] = limit;
    v8[7] = Mutable;
    v8[4] = self;
    v8[5] = &v9;
    [(PSIDatabase *)self _inqSync:v8];
    v6 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

void __49__PSIDatabase_mostRecentSortedAssetIdsWithLimit___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 24), @"selectAssetIdsDateSortedDescWithLimit");
  if (sqlite3_bind_int64(Value, 1, *(a1 + 48)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v7 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PSIDatabase_mostRecentSortedAssetIdsWithLimit___block_invoke_619;
  v5[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v5[4] = *(a1 + 56);
  [v3 _inqExecutePreparedStatement:Value withStatementBlock:v5];
  v4 = *(a1 + 56);
  v9.length = CFArrayGetCount(v4);
  v9.location = 0;
  CFArraySortValues(v4, v9, PSIRowIDCompare_107345, 0);
  *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateCopy(0, *(a1 + 56));
  CFRelease(*(a1 + 56));
}

void __49__PSIDatabase_mostRecentSortedAssetIdsWithLimit___block_invoke_619(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFArrayAppendValue(v4, v3);
}

- (id)_inqCollectionUUIDsForGroupID:(unint64_t)d
{
  v4 = [(PSIDatabase *)self _inqNewCollectionIdsForGroupId:d dateFilter:0];
  v5 = [(PSIDatabase *)self _inqCollectionUUIDsForCollectionIds:v4 range:0, CFArrayGetCount(v4)];
  CFRelease(v4);

  return v5;
}

- (id)_inqAssetUUIDsForGroupID:(unint64_t)d
{
  v4 = [(PSIDatabase *)self _inqNewAssetIdsForGroupId:d dateFilter:0];
  v5 = [(PSIDatabase *)self _inqAssetUUIDsForAssetIds:v4 range:0 creationDateSorted:CFArrayGetCount(v4), 0];
  CFRelease(v4);

  return v5;
}

- (__CFArray)assetIdsWithDateFilter:(id)filter
{
  filterCopy = filter;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__PSIDatabase_assetIdsWithDateFilter___block_invoke;
  v9[3] = &unk_1E7578820;
  v11 = &v12;
  v9[4] = self;
  v5 = filterCopy;
  v10 = v5;
  [(PSIDatabase *)self _inqSync:v9];
  v6 = v13[3];
  if (v6)
  {
    v7 = CFAutorelease(v6);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __38__PSIDatabase_assetIdsWithDateFilter___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _inqNewAssetIdsWithDateFilter:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unint64_t)countOfAssets
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PSIDatabase_countOfAssets__block_invoke;
  v4[3] = &unk_1E7578910;
  v4[4] = self;
  v4[5] = &v5;
  [(PSIDatabase *)self _inqSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __28__PSIDatabase_countOfAssets__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _inqPrepareStatement:"SELECT COUNT(rowid) FROM assets"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__PSIDatabase_countOfAssets__block_invoke_2;
  v4[3] = &unk_1E7576250;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v3 _inqExecutePreparedStatement:v2 withStatementBlock:v4];
  if (sqlite3_finalize(v2))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = @"Failed to finalize statement";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }
  }
}

uint64_t __28__PSIDatabase_countOfAssets__block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_runWithMatchingIDs:(id)ds block:(id)block
{
  v6 = *MEMORY[0x1E695E480];
  blockCopy = block;
  dsCopy = ds;
  Mutable = CFSetCreateMutable(v6, 0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__PSIDatabase__runWithMatchingIDs_block___block_invoke;
  v11[3] = &unk_1E7576338;
  v12 = Mutable;
  v10 = Mutable;
  [dsCopy enumerateIndexesUsingBlock:v11];

  [(PSIIntArray *)self->_matchingIds bindElements:v10];
  blockCopy[2](blockCopy);

  [(PSIIntArray *)self->_matchingIds unbind];
}

- (void)_inqPerformBatch:(id)batch
{
  batchCopy = batch;
  [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"BEGIN TRANSACTION"];
  batchCopy[2](batchCopy);

  [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"END TRANSACTION"];
}

- (void)_inqPrepareAndExecuteStatement:(const char *)statement
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(PSIDatabase *)self _inqPrepareStatement:?];
    ;
  }

  if (i != 101)
  {
    v7 = sqlite3_errmsg(self->_inqDatabase);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      statementCopy2 = statement;
      v11 = 2080;
      v12 = v7;
      v13 = 1024;
      v14 = i;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to execute %s: %s (%d).", &v9, 0x1Cu);
    }

    if ((~i & 0xB) == 0)
    {
      v8 = PLSearchBackendPSIDatabaseGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315650;
        statementCopy2 = statement;
        v11 = 2080;
        v12 = v7;
        v13 = 1026;
        v14 = i;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Database corruption detected during statement execution: %s: %s (%{public}d).", &v9, 0x1Cu);
      }
    }
  }

  if (v5 && sqlite3_finalize(v5) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    statementCopy2 = @"Failed to finalize statement";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v9, 0xCu);
  }
}

- (void)_inqExecutePreparedStatement:(sqlite3_stmt *)statement withStatementBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PSIDatabase__inqExecutePreparedStatement_withStatementBlock___block_invoke;
  v8[3] = &unk_1E7576568;
  v9 = blockCopy;
  v7 = blockCopy;
  [(PSIDatabase *)self _inqExecutePreparedStatement:statement allowError:0 withStatementBlock:v8];
}

- (void)_inqExecutePreparedStatement:(sqlite3_stmt *)statement allowError:(int)error withStatementBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!statement && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = 138412290;
    statementCopy2 = @"Statement is nil";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
  }

  v9 = 100;
  while (v9 == 100)
  {
    v10 = sqlite3_step(statement);
    v9 = v10;
    if (blockCopy && v10 == 100 && (blockCopy[2](blockCopy, statement) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v9 != 101 && (!error || (v9 & error) != error))
  {
    v11 = sqlite3_errmsg(self->_inqDatabase);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 134218498;
      statementCopy2 = statement;
      v15 = 2080;
      v16 = v11;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to execute %p: %s (%d).", &v13, 0x1Cu);
    }

    if ((~v9 & 0xB) == 0)
    {
      v12 = PLSearchBackendPSIDatabaseGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 134218498;
        statementCopy2 = statement;
        v15 = 2080;
        v16 = v11;
        v17 = 1026;
        v18 = v9;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Database corruption detected during statement execution: %p: %s (%{public}d).", &v13, 0x1Cu);
      }
    }
  }

LABEL_19:
  sqlite3_reset(statement);
}

- (sqlite3_stmt)_inqPrepareStatement:(const char *)statement
{
  v17 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(self->_inqDatabase, statement, -1, &ppStmt, 0);
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_errmsg(self->_inqDatabase);
    if (!ppStmt)
    {
      v8 = v7;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        statementCopy = statement;
        v13 = 2080;
        v14 = v8;
        v15 = 1024;
        v16 = v6;
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prepare %s: %s (%d).", buf, 0x1Cu);
      }
    }
  }

  return ppStmt;
}

- (void)_inqUpdateInitialSuggestionWithTemplateKey:(id)key firstGroupId:(unint64_t)id secondGroupId:(unint64_t)groupId dateLastUsed:(id)used
{
  v22 = *MEMORY[0x1E69E9840];
  inqPreparedStatements = self->_inqPreparedStatements;
  usedCopy = used;
  keyCopy = key;
  Value = CFDictionaryGetValue(inqPreparedStatements, @"updateTimestampForInitialSuggestionStatement");
  [usedCopy timeIntervalSinceReferenceDate];
  v15 = v14;

  v16 = &stru_1F0F06D80;
  if (keyCopy)
  {
    v16 = keyCopy;
  }

  v17 = v16;

  v18 = [(__CFString *)v17 cStringUsingEncoding:4];
  if (sqlite3_bind_double(Value, 1, v15) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = 138412290;
    v21 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v20, 0xCu);
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = strlen(v18);
LABEL_9:
  if (sqlite3_bind_text(Value, 2, v18, v19, 0xFFFFFFFFFFFFFFFFLL) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = 138412290;
    v21 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v20, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 3, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = 138412290;
    v21 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v20, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 4, groupId) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = 138412290;
    v21 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v20, 0xCu);
  }

  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:0];
}

- (id)_inqSelectInitialSuggestions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__107328;
  v11 = __Block_byref_object_dispose__107329;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectInitialSuggestionsStatement");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PSIDatabase__inqSelectInitialSuggestions__block_invoke;
  v6[3] = &unk_1E7576540;
  v6[4] = self;
  v6[5] = &v7;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v6];
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __43__PSIDatabase__inqSelectInitialSuggestions__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_column_double(a2, 0);
  v26 = sqlite3_column_int64(a2, 1);
  v27 = sqlite3_column_int64(a2, 2);
  v4 = sqlite3_column_text(a2, 3);
  v5 = sqlite3_column_int(a2, 4);
  v6 = sqlite3_column_int(a2, 5);
  v7 = sqlite3_column_int(a2, 6);
  v8 = sqlite3_column_int(a2, 7);
  v9 = sqlite3_column_int(a2, 8);
  v10 = sqlite3_column_int(a2, 9);
  v11 = sqlite3_column_text(a2, 10);
  if (v4 && *v4)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v4 encoding:4];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v11 encoding:4];
  }

  else
  {
    v13 = 0;
  }

  v14 = [[PLSearchSuggestionTemplate alloc] initWithSuggestionTemplateKey:v12 firstIndexCategory:v5 secondIndexCategory:v6 templateType:v7 templateContentType:v8 templateDateType:v9 styleType:v10 identifier:v13];
  v15 = v14;
  if (v14)
  {
    if (!v26)
    {
      v19 = 0;
      v20 = v27;
      v16 = a1;
      if (v27)
      {
LABEL_12:
        v21 = *(v16 + 32);
        v22 = [(PLSearchSuggestionTemplate *)v15 dateFilter];
        v23 = [v21 _inqGroupWithMatchingGroupId:v20 dateFilter:v22 searchResultTypes:1];

        if (!v23)
        {
          v23 = PLSearchBackendPSIDatabaseGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v30 = v20;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to find group with id %llu for initial suggestion", buf, 0xCu);
          }

          goto LABEL_20;
        }

LABEL_19:
        v25 = [[PSIInitialSuggestion alloc] initWithSuggestionTemplate:v15 firstGroup:v19 secondGroup:v23 dateLastUsed:v3];
        [*(*(*(v16 + 40) + 8) + 40) addObject:v25];

LABEL_20:
        goto LABEL_24;
      }

LABEL_18:
      v23 = 0;
      goto LABEL_19;
    }

    v16 = a1;
    v17 = *(a1 + 32);
    v18 = [(PLSearchSuggestionTemplate *)v14 dateFilter];
    v19 = [v17 _inqGroupWithMatchingGroupId:v26 dateFilter:v18 searchResultTypes:1];

    v20 = v27;
    if (v19)
    {
      if (v27)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

    v19 = PLSearchBackendPSIDatabaseGetLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 134217984;
    v30 = v26;
    v24 = "Failed to find group with id %llu for initial suggestion";
LABEL_23:
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
    goto LABEL_24;
  }

  v19 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = v12;
    v24 = "Failed to create template for template key %@";
    goto LABEL_23;
  }

LABEL_24:
}

- (void)_inqInsertInitialSuggestion:(id)suggestion
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  [suggestionCopy dateLastUsed];
  v6 = v5;
  firstGroup = [suggestionCopy firstGroup];
  secondGroup = [suggestionCopy secondGroup];
  suggestionTemplate = [suggestionCopy suggestionTemplate];

  if ([suggestionTemplate templateStyleType])
  {
    suggestionTemplateKey = &stru_1F0F06D80;
    if (firstGroup)
    {
      goto LABEL_3;
    }

LABEL_6:
    groupId = 0;
    if (secondGroup)
    {
      goto LABEL_4;
    }

LABEL_7:
    groupId2 = 0;
    goto LABEL_8;
  }

  suggestionTemplateKey = [suggestionTemplate suggestionTemplateKey];
  if (!firstGroup)
  {
    goto LABEL_6;
  }

LABEL_3:
  groupId = [firstGroup groupId];
  if (!secondGroup)
  {
    goto LABEL_7;
  }

LABEL_4:
  groupId2 = [secondGroup groupId];
LABEL_8:
  v13 = [(__CFString *)suggestionTemplateKey cStringUsingEncoding:4];
  identifier = [suggestionTemplate identifier];
  v15 = [identifier cStringUsingEncoding:4];

  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"insertInitialSuggestionStatement");
  if (sqlite3_bind_double(Value, 1, v6) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 2, groupId) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 3, groupId2) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_17:
  v17 = strlen(v13);
LABEL_20:
  if (sqlite3_bind_text(Value, 4, v13, v17, 0xFFFFFFFFFFFFFFFFLL) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
  }

  if (sqlite3_bind_int(Value, 5, [suggestionTemplate firstIndexCategory]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
  }

  if (sqlite3_bind_int(Value, 6, [suggestionTemplate secondIndexCategory]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
  }

  if (sqlite3_bind_int(Value, 7, [suggestionTemplate templateType]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
  }

  if (sqlite3_bind_int(Value, 8, [suggestionTemplate templateContentType]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
  }

  if (sqlite3_bind_int(Value, 9, [suggestionTemplate templateDateType]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
  }

  if (sqlite3_bind_int(Value, 10, [suggestionTemplate templateStyleType]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
    if (v15)
    {
      goto LABEL_41;
    }

LABEL_43:
    v18 = 0;
    goto LABEL_44;
  }

  if (!v15)
  {
    goto LABEL_43;
  }

LABEL_41:
  v18 = strlen(v15);
LABEL_44:
  if (sqlite3_bind_text(Value, 11, v15, v18, 0xFFFFFFFFFFFFFFFFLL) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v19, 0xCu);
  }

  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:0];
}

- (id)_inqCollectionIdsByGroupIdForCollectionIds:(id)ids
{
  v4 = MEMORY[0x1E695DF90];
  idsCopy = ids;
  dictionary = [v4 dictionary];
  [(PSIIntArray *)self->_matchingIds bindElements:idsCopy];

  inqCollectionIdsByGroupIdForCollectionIdsStatement = self->_inqCollectionIdsByGroupIdForCollectionIdsStatement;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PSIDatabase__inqCollectionIdsByGroupIdForCollectionIds___block_invoke;
  v10[3] = &unk_1E75762C0;
  v8 = dictionary;
  v11 = v8;
  [(PSIDatabase *)self executeStatement:inqCollectionIdsByGroupIdForCollectionIdsStatement withResultEnumerationBlock:v10];
  [(PSIIntArray *)self->_matchingIds unbind];

  return v8;
}

void __58__PSIDatabase__inqCollectionIdsByGroupIdForCollectionIds___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 int64AtColumn:0];
  v4 = [v7 int64AtColumn:1];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
  Mutable = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    [*(a1 + 32) setObject:Mutable forKeyedSubscript:v5];
  }

  [Mutable addObject:v4];
}

- (__CFSet)_inqNewGroupIdsForCollectionIds:(__CFSet *)ids
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  [(PSIIntArray *)self->_matchingIds bindElements:ids];
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGroupIdsInGCWithCollectionIds");
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PSIDatabase__inqNewGroupIdsForCollectionIds___block_invoke;
  v8[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v8[4] = Mutable;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v8];
  [(PSIIntArray *)self->_matchingIds unbind];
  return Mutable;
}

void __47__PSIDatabase__inqNewGroupIdsForCollectionIds___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

- (__CFSet)_inqNewGroupIdsForCollectionId:(unint64_t)id
{
  v11 = *MEMORY[0x1E69E9840];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGCInv");
  if (sqlite3_bind_int64(Value, 1, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PSIDatabase__inqNewGroupIdsForCollectionId___block_invoke;
  v8[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v8[4] = Mutable;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v8];
  return Mutable;
}

void __46__PSIDatabase__inqNewGroupIdsForCollectionId___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

- (id)_inqAssetIdsByGroupIdForAssetIds:(id)ids
{
  v4 = MEMORY[0x1E695DF90];
  idsCopy = ids;
  dictionary = [v4 dictionary];
  [(PSIIntArray *)self->_matchingIds bindElements:idsCopy];

  inqAssetIdsByGroupIdForAssetIdsStatement = self->_inqAssetIdsByGroupIdForAssetIdsStatement;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PSIDatabase__inqAssetIdsByGroupIdForAssetIds___block_invoke;
  v10[3] = &unk_1E75762C0;
  v8 = dictionary;
  v11 = v8;
  [(PSIDatabase *)self executeStatement:inqAssetIdsByGroupIdForAssetIdsStatement withResultEnumerationBlock:v10];
  [(PSIIntArray *)self->_matchingIds unbind];

  return v8;
}

void __48__PSIDatabase__inqAssetIdsByGroupIdForAssetIds___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 int64AtColumn:0];
  v4 = [v7 int64AtColumn:1];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
  Mutable = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    [*(a1 + 32) setObject:Mutable forKeyedSubscript:v5];
  }

  [Mutable addObject:v4];
}

- (__CFSet)_inqNewGroupIdsForAssetIds:(__CFSet *)ids
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  [(PSIIntArray *)self->_matchingIds bindElements:ids];
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGroupIdsInGAWithAssetIds");
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PSIDatabase__inqNewGroupIdsForAssetIds___block_invoke;
  v8[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v8[4] = Mutable;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v8];
  [(PSIIntArray *)self->_matchingIds unbind];
  return Mutable;
}

void __42__PSIDatabase__inqNewGroupIdsForAssetIds___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

- (__CFSet)_inqNewGroupIdsForAssetId:(unint64_t)id
{
  v11 = *MEMORY[0x1E69E9840];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGAInv");
  if (sqlite3_bind_int64(Value, 1, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PSIDatabase__inqNewGroupIdsForAssetId___block_invoke;
  v8[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v8[4] = Mutable;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v8];
  return Mutable;
}

void __41__PSIDatabase__inqNewGroupIdsForAssetId___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

- (__CFArray)_inqNewCollectionIdsForGroupId:(unint64_t)id dateFilter:(id)filter
{
  v42 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (filterCopy)
  {
    singleDate = [filterCopy singleDate];

    if (singleDate)
    {
      Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectWithSingleDateGC");
      singleDate2 = [filterCopy singleDate];
      v11 = sqlite3_bind_int64(Value, 1, [singleDate2 int64RepresentationMask]);

      if (v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      singleDate3 = [filterCopy singleDate];
      v13 = sqlite3_bind_int64(Value, 2, [singleDate3 int64Representation]);

      if (v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      singleDate4 = [filterCopy singleDate];
      v15 = sqlite3_bind_int64(Value, 3, [singleDate4 int64RepresentationMask]);

      if (v15 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      singleDate5 = [filterCopy singleDate];
      v17 = sqlite3_bind_int64(Value, 4, [singleDate5 int64Representation]);

      if (v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      if (sqlite3_bind_int64(Value, 5, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = @"Failed to bind parameter";
        v18 = MEMORY[0x1E69E9C10];
LABEL_57:
        _os_log_error_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }
    }

    else
    {
      startDate = [filterCopy startDate];

      if (startDate)
      {
        endDate = [filterCopy endDate];

        inqPreparedStatements = self->_inqPreparedStatements;
        if (endDate)
        {
          Value = CFDictionaryGetValue(inqPreparedStatements, @"selectWithStartEndDatesGC");
          startDate2 = [filterCopy startDate];
          v24 = sqlite3_bind_int64(Value, 1, [startDate2 int64RepresentationMask]);

          if (v24 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          startDate3 = [filterCopy startDate];
          v26 = sqlite3_bind_int64(Value, 2, [startDate3 int64Representation]);

          if (v26 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          endDate2 = [filterCopy endDate];
          v28 = sqlite3_bind_int64(Value, 3, [endDate2 int64RepresentationMask]);

          if (v28 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          endDate3 = [filterCopy endDate];
          v30 = sqlite3_bind_int64(Value, 4, [endDate3 int64Representation]);

          if (v30 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          if (sqlite3_bind_int64(Value, 5, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = @"Failed to bind parameter";
            v18 = MEMORY[0x1E69E9C10];
            goto LABEL_57;
          }
        }

        else
        {
          Value = CFDictionaryGetValue(inqPreparedStatements, @"selectWithStartDateGC");
          startDate4 = [filterCopy startDate];
          v36 = sqlite3_bind_int64(Value, 1, [startDate4 int64RepresentationMask]);

          if (v36 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          startDate5 = [filterCopy startDate];
          v38 = sqlite3_bind_int64(Value, 2, [startDate5 int64Representation]);

          if (v38 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          if (sqlite3_bind_int64(Value, 3, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = @"Failed to bind parameter";
            v18 = MEMORY[0x1E69E9C10];
            goto LABEL_57;
          }
        }
      }

      else
      {
        Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectWithEndDateGC");
        endDate4 = [filterCopy endDate];
        v32 = sqlite3_bind_int64(Value, 1, [endDate4 int64RepresentationMask]);

        if (v32 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v41 = @"Failed to bind parameter";
          _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
        }

        endDate5 = [filterCopy endDate];
        v34 = sqlite3_bind_int64(Value, 2, [endDate5 int64Representation]);

        if (v34 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v41 = @"Failed to bind parameter";
          _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
        }

        if (sqlite3_bind_int64(Value, 3, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v41 = @"Failed to bind parameter";
          v18 = MEMORY[0x1E69E9C10];
          goto LABEL_57;
        }
      }
    }
  }

  else
  {
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGC");
    if (sqlite3_bind_int64(Value, 1, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = @"Failed to bind parameter";
      v18 = MEMORY[0x1E69E9C10];
      goto LABEL_57;
    }
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __57__PSIDatabase__inqNewCollectionIdsForGroupId_dateFilter___block_invoke;
  v39[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v39[4] = Mutable;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v39];

  return Mutable;
}

void __57__PSIDatabase__inqNewCollectionIdsForGroupId_dateFilter___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFArrayAppendValue(v4, v3);
}

- (__CFArray)_inqNewAssetIdsForGroupId:(unint64_t)id dateFilter:(id)filter
{
  v38 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (filterCopy)
  {
    singleDate = [filterCopy singleDate];

    if (singleDate)
    {
      Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectWithSingleDateGA");
      singleDate2 = [filterCopy singleDate];
      v11 = sqlite3_bind_int64(Value, 1, [singleDate2 int64RepresentationMask]);

      if (v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      singleDate3 = [filterCopy singleDate];
      v13 = sqlite3_bind_int64(Value, 2, [singleDate3 int64Representation]);

      if (v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      if (sqlite3_bind_int64(Value, 3, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = @"Failed to bind parameter";
        v14 = MEMORY[0x1E69E9C10];
LABEL_51:
        _os_log_error_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }
    }

    else
    {
      startDate = [filterCopy startDate];

      if (startDate)
      {
        endDate = [filterCopy endDate];

        inqPreparedStatements = self->_inqPreparedStatements;
        if (endDate)
        {
          Value = CFDictionaryGetValue(inqPreparedStatements, @"selectWithStartEndDatesGA");
          startDate2 = [filterCopy startDate];
          v20 = sqlite3_bind_int64(Value, 1, [startDate2 int64RepresentationMask]);

          if (v20 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          startDate3 = [filterCopy startDate];
          v22 = sqlite3_bind_int64(Value, 2, [startDate3 int64Representation]);

          if (v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          endDate2 = [filterCopy endDate];
          v24 = sqlite3_bind_int64(Value, 3, [endDate2 int64RepresentationMask]);

          if (v24 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          endDate3 = [filterCopy endDate];
          v26 = sqlite3_bind_int64(Value, 4, [endDate3 int64Representation]);

          if (v26 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          if (sqlite3_bind_int64(Value, 5, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = @"Failed to bind parameter";
            v14 = MEMORY[0x1E69E9C10];
            goto LABEL_51;
          }
        }

        else
        {
          Value = CFDictionaryGetValue(inqPreparedStatements, @"selectWithStartDateGA");
          startDate4 = [filterCopy startDate];
          v32 = sqlite3_bind_int64(Value, 1, [startDate4 int64RepresentationMask]);

          if (v32 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          startDate5 = [filterCopy startDate];
          v34 = sqlite3_bind_int64(Value, 2, [startDate5 int64Representation]);

          if (v34 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          if (sqlite3_bind_int64(Value, 3, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = @"Failed to bind parameter";
            v14 = MEMORY[0x1E69E9C10];
            goto LABEL_51;
          }
        }
      }

      else
      {
        Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectWithEndDateGA");
        endDate4 = [filterCopy endDate];
        v28 = sqlite3_bind_int64(Value, 1, [endDate4 int64RepresentationMask]);

        if (v28 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = @"Failed to bind parameter";
          _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
        }

        endDate5 = [filterCopy endDate];
        v30 = sqlite3_bind_int64(Value, 2, [endDate5 int64Representation]);

        if (v30 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = @"Failed to bind parameter";
          _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
        }

        if (sqlite3_bind_int64(Value, 3, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = @"Failed to bind parameter";
          v14 = MEMORY[0x1E69E9C10];
          goto LABEL_51;
        }
      }
    }
  }

  else
  {
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGA");
    if (sqlite3_bind_int64(Value, 1, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = @"Failed to bind parameter";
      v14 = MEMORY[0x1E69E9C10];
      goto LABEL_51;
    }
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __52__PSIDatabase__inqNewAssetIdsForGroupId_dateFilter___block_invoke;
  v35[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v35[4] = Mutable;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v35];

  return Mutable;
}

void __52__PSIDatabase__inqNewAssetIdsForGroupId_dateFilter___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFArrayAppendValue(v4, v3);
}

- (__CFArray)_inqNewAssetIdsWithDateFilter:(id)filter
{
  v37 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  if (filterCopy)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    singleDate = [filterCopy singleDate];

    if (singleDate)
    {
      Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectWithSingleDateAsset");
      singleDate2 = [filterCopy singleDate];
      v9 = sqlite3_bind_int64(Value, 1, [singleDate2 int64RepresentationMask]);

      if (v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      singleDate3 = [filterCopy singleDate];
      v11 = sqlite3_bind_int64(Value, 2, [singleDate3 int64Representation]);

      if (!v11 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 138412290;
      v36 = @"Failed to bind parameter";
      v25 = MEMORY[0x1E69E9C10];
    }

    else
    {
      startDate = [filterCopy startDate];

      if (startDate)
      {
        endDate = [filterCopy endDate];

        inqPreparedStatements = self->_inqPreparedStatements;
        if (endDate)
        {
          Value = CFDictionaryGetValue(inqPreparedStatements, @"selectWithStartEndDatesAsset");
          startDate2 = [filterCopy startDate];
          v18 = sqlite3_bind_int64(Value, 1, [startDate2 int64RepresentationMask]);

          if (v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          startDate3 = [filterCopy startDate];
          v20 = sqlite3_bind_int64(Value, 2, [startDate3 int64Representation]);

          if (v20 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          endDate2 = [filterCopy endDate];
          v22 = sqlite3_bind_int64(Value, 3, [endDate2 int64RepresentationMask]);

          if (v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          endDate3 = [filterCopy endDate];
          v24 = sqlite3_bind_int64(Value, 4, [endDate3 int64Representation]);

          if (!v24 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_8;
          }

          *buf = 138412290;
          v36 = @"Failed to bind parameter";
          v25 = MEMORY[0x1E69E9C10];
        }

        else
        {
          Value = CFDictionaryGetValue(inqPreparedStatements, @"selectWithStartDateAsset");
          startDate4 = [filterCopy startDate];
          v31 = sqlite3_bind_int64(Value, 1, [startDate4 int64RepresentationMask]);

          if (v31 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
          }

          startDate5 = [filterCopy startDate];
          v33 = sqlite3_bind_int64(Value, 2, [startDate5 int64Representation]);

          if (!v33 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_8;
          }

          *buf = 138412290;
          v36 = @"Failed to bind parameter";
          v25 = MEMORY[0x1E69E9C10];
        }
      }

      else
      {
        Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectWithEndDateAsset");
        endDate4 = [filterCopy endDate];
        v27 = sqlite3_bind_int64(Value, 1, [endDate4 int64RepresentationMask]);

        if (v27 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = @"Failed to bind parameter";
          _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
        }

        endDate5 = [filterCopy endDate];
        v29 = sqlite3_bind_int64(Value, 2, [endDate5 int64Representation]);

        if (!v29 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        *buf = 138412290;
        v36 = @"Failed to bind parameter";
        v25 = MEMORY[0x1E69E9C10];
      }
    }

    _os_log_error_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
LABEL_8:
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __45__PSIDatabase__inqNewAssetIdsWithDateFilter___block_invoke;
    v34[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v34[4] = Mutable;
    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v34];
    goto LABEL_12;
  }

  v12 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "This should not get called with a nil dateFilter", buf, 2u);
  }

  Mutable = 0;
LABEL_12:

  return Mutable;
}

void __45__PSIDatabase__inqNewAssetIdsWithDateFilter___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFArrayAppendValue(v4, v3);
}

- (id)_inqNewSynonymTextsByOwningGroupIdWithGroupIds:(__CFSet *)ids
{
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:CFSetGetCount(ids)];
  [(PSIIntArray *)self->_matchingIds bindElements:ids];
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectSynonymInfoWithOwningGroupIds");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PSIDatabase__inqNewSynonymTextsByOwningGroupIdWithGroupIds___block_invoke;
  v9[3] = &unk_1E75761E0;
  v7 = v5;
  v10 = v7;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v9];
  [(PSIIntArray *)self->_matchingIds unbind];

  return v7;
}

void __62__PSIDatabase__inqNewSynonymTextsByOwningGroupIdWithGroupIds___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int(a2, 0);
  if (PLSearchIndexCategoryIsSynonym(v4))
  {
    v5 = sqlite3_column_int64(a2, 1);
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:sqlite3_column_text(a2 encoding:{2), 4}];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = objc_opt_new();
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
    }

    [v7 addObject:v8];
  }
}

- (id)_inqGroupsWithMatchingGroupIds:(__CFSet *)ids dateFilter:(id)filter includeObjects:(BOOL)objects searchResultTypes:(unint64_t)types matchingPredicateBlock:(id)block
{
  objectsCopy = objects;
  v33 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  blockCopy = block;
  Count = CFSetGetCount(ids);
  if (Count)
  {
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
    v27 = objectsCopy;
    if (+[PLSearchIndexConfiguration shouldIndexFilenames])
    {
      v16 = [(PSIDatabase *)self _inqFilenameGroupsWithMatchingGroupIds:ids dateFilter:filterCopy searchResultTypes:types matchingPredicateBlock:blockCopy];
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    v17 = *MEMORY[0x1E695E480];
    v18 = CFSetGetCount(ids);
    MutableCopy = CFSetCreateMutableCopy(v17, v18, ids);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          CFSetRemoveValue(MutableCopy, [*(*(&v28 + 1) + 8 * i) groupId]);
        }

        v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v22);
    }

    v25 = [(PSIDatabase *)self _inqNonFilenameGroupsWithMatchingGroupIds:MutableCopy dateFilter:filterCopy includeObjects:v27 searchResultTypes:types matchingPredicateBlock:blockCopy];
    CFRelease(MutableCopy);
    [v15 addObjectsFromArray:v25];
    [v15 addObjectsFromArray:v20];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (id)_inqNonFilenameGroupsWithMatchingGroupIds:(__CFSet *)ids dateFilter:(id)filter includeObjects:(BOOL)objects searchResultTypes:(unint64_t)types matchingPredicateBlock:(id)block
{
  filterCopy = filter;
  blockCopy = block;
  Count = CFSetGetCount(ids);
  if (Count)
  {
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
    [(PSIIntArray *)self->_matchingIds bindElements:ids];
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"fetchNonFilenameGroupsForGroupIds");
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __124__PSIDatabase__inqNonFilenameGroupsWithMatchingGroupIds_dateFilter_includeObjects_searchResultTypes_matchingPredicateBlock___block_invoke;
    v24 = &unk_1E7576518;
    selfCopy = self;
    objectsCopy = objects;
    v26 = filterCopy;
    typesCopy = types;
    v28 = blockCopy;
    v17 = v15;
    v27 = v17;
    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:&v21];
    [(PSIIntArray *)self->_matchingIds unbind:v21];
    v18 = v27;
    v19 = v17;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

void __124__PSIDatabase__inqNonFilenameGroupsWithMatchingGroupIds_dateFilter_includeObjects_searchResultTypes_matchingPredicateBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _inqGroupWithStatement:a2 dateFilter:*(a1 + 40) includeObjects:*(a1 + 72) searchResultTypes:*(a1 + 64)];
  v4 = *(a1 + 56);
  v7 = v3;
  if (!v4 || (v5 = (*(v4 + 16))(), v6 = v7, v5))
  {
    [*(a1 + 48) addObject:v7];
    v6 = v7;
  }
}

- (id)_inqFilenameGroupsWithMatchingGroupIds:(__CFSet *)ids dateFilter:(id)filter searchResultTypes:(unint64_t)types matchingPredicateBlock:(id)block
{
  v69 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  blockCopy = block;
  Count = CFSetGetCount(ids);
  if (!Count)
  {
    v26 = MEMORY[0x1E695E0F0];
    goto LABEL_29;
  }

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
  [(PSIIntArray *)self->_matchingIds bindElements:ids];
  if (filterCopy)
  {
    startDate = [filterCopy startDate];
    if (startDate && ([filterCopy endDate], v15 = objc_claimAutoreleasedReturnValue(), v15, startDate, v15))
    {
      Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"fetchFilenameGroupsForGroupIdsWithStartEndDates");
      startDate2 = [filterCopy startDate];
      v18 = sqlite3_bind_int64(Value, 1, [startDate2 int64RepresentationMask]);

      if (v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
      }

      startDate3 = [filterCopy startDate];
      v20 = sqlite3_bind_int64(Value, 2, [startDate3 int64Representation]);

      if (v20 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
      }

      endDate = [filterCopy endDate];
      v22 = sqlite3_bind_int64(Value, 3, [endDate int64RepresentationMask]);

      if (v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
      }

      endDate2 = [filterCopy endDate];
      v24 = sqlite3_bind_int64(Value, 4, [endDate2 int64Representation]);

      if (!v24 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"Failed to bind parameter";
      v25 = MEMORY[0x1E69E9C10];
    }

    else
    {
      startDate4 = [filterCopy startDate];

      if (startDate4)
      {
        Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"fetchFilenameGroupsForGroupIdsWithStartDate");
        startDate5 = [filterCopy startDate];
        v29 = sqlite3_bind_int64(Value, 1, [startDate5 int64RepresentationMask]);

        if (v29 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = @"Failed to bind parameter";
          _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
        }

        startDate6 = [filterCopy startDate];
        v31 = sqlite3_bind_int64(Value, 2, [startDate6 int64Representation]);

        if (!v31 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"Failed to bind parameter";
        v25 = MEMORY[0x1E69E9C10];
      }

      else
      {
        endDate3 = [filterCopy endDate];

        if (endDate3)
        {
          Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"fetchFilenameGroupsForGroupIdsWithEndDate");
          endDate4 = [filterCopy endDate];
          v40 = sqlite3_bind_int64(Value, 1, [endDate4 int64RepresentationMask]);

          if (v40 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
          }

          endDate5 = [filterCopy endDate];
          v42 = sqlite3_bind_int64(Value, 2, [endDate5 int64Representation]);

          if (!v42 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = @"Failed to bind parameter";
          v25 = MEMORY[0x1E69E9C10];
        }

        else
        {
          Value = [filterCopy singleDate];

          if (!Value)
          {
            goto LABEL_26;
          }

          Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"fetchFilenameGroupsForGroupIdsWithSingleDate");
          singleDate = [filterCopy singleDate];
          v44 = sqlite3_bind_int64(Value, 1, [singleDate int64RepresentationMask]);

          if (v44 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = @"Failed to bind parameter";
            _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
          }

          singleDate2 = [filterCopy singleDate];
          v46 = sqlite3_bind_int64(Value, 2, [singleDate2 int64Representation]);

          if (!v46 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = @"Failed to bind parameter";
          v25 = MEMORY[0x1E69E9C10];
        }
      }
    }

    _os_log_error_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  else
  {
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"fetchFilenameGroupsForGroupIds");
  }

LABEL_26:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__PSIDatabase__inqFilenameGroupsWithMatchingGroupIds_dateFilter_searchResultTypes_matchingPredicateBlock___block_invoke;
  aBlock[3] = &unk_1E75764C8;
  v63 = blockCopy;
  v32 = v13;
  v62 = v32;
  v33 = _Block_copy(aBlock);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__107328;
  v67 = __Block_byref_object_dispose__107329;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v47 = MEMORY[0x1E69E9820];
  v48 = 3221225472;
  v49 = __106__PSIDatabase__inqFilenameGroupsWithMatchingGroupIds_dateFilter_searchResultTypes_matchingPredicateBlock___block_invoke_2;
  v50 = &unk_1E75764F0;
  selfCopy = self;
  v52 = filterCopy;
  p_buf = &buf;
  typesCopy = types;
  v34 = v33;
  v53 = v34;
  v55 = &v57;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:&v47];
  v35 = *(*(&buf + 1) + 40);
  if (v35)
  {
    (*(v34 + 2))(v34, v35, v58[3]);
    CFRelease(v58[3]);
  }

  [(PSIIntArray *)self->_matchingIds unbind:v47];
  v36 = v53;
  v26 = v32;

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&buf, 8);

LABEL_29:

  return v26;
}

void __106__PSIDatabase__inqFilenameGroupsWithMatchingGroupIds_dateFilter_searchResultTypes_matchingPredicateBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [v7 setAssetIds:a3];
  v5 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
  [v7 setCollectionIds:v5];
  CFRelease(v5);
  v6 = *(a1 + 40);
  if (!v6 || (*(v6 + 16))(v6, v7))
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __106__PSIDatabase__inqFilenameGroupsWithMatchingGroupIds_dateFilter_searchResultTypes_matchingPredicateBlock___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  obj = [*(a1 + 32) _inqGroupWithFilenameStatement:a2 dateFilter:*(a1 + 40) excludingGroupId:objc_msgSend(*(*(*(a1 + 56) + 8) + 40) searchResultTypes:{"groupId"), *(a1 + 72)}];
  if (obj)
  {
    v4 = *(*(a1 + 56) + 8);
    if (*(v4 + 40))
    {
      (*(*(a1 + 48) + 16))();
      CFRelease(*(*(*(a1 + 64) + 8) + 24));
      v4 = *(*(a1 + 56) + 8);
    }

    objc_storeStrong((v4 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  }

  v5 = sqlite3_column_int64(a2, 5);
  CFArrayAppendValue(*(*(*(a1 + 64) + 8) + 24), v5);
}

- (id)_inqGroupWithMatchingGroupId:(unint64_t)id dateFilter:(id)filter searchResultTypes:(unint64_t)types
{
  v25 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__107328;
  v21 = __Block_byref_object_dispose__107329;
  v22 = 0;
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"fetchGroupForGroupId");
  if (sqlite3_bind_int64(Value, 1, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PSIDatabase__inqGroupWithMatchingGroupId_dateFilter_searchResultTypes___block_invoke;
  v13[3] = &unk_1E75764A0;
  v15 = &v17;
  v13[4] = self;
  v10 = filterCopy;
  v14 = v10;
  typesCopy = types;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __73__PSIDatabase__inqGroupWithMatchingGroupId_dateFilter_searchResultTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _inqGroupWithStatement:a2 dateFilter:*(a1 + 40) includeObjects:1 searchResultTypes:*(a1 + 56)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_inqUpdateGCTableWithGroupId:(unint64_t)id collectionId:(unint64_t)collectionId
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"insertGC");
  if (sqlite3_bind_int64(Value, 1, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    collectionIdCopy = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v9, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 2, collectionId) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    collectionIdCopy = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v9, 0xCu);
  }

  [(PSIDatabase *)self _inqExecutePreparedStatement:Value allowError:19 withStatementBlock:0];
  v8 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134349312;
    collectionIdCopy = collectionId;
    v11 = 2050;
    idCopy = id;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Inserted collectionId %{public}lld in GC table for groupId %{public}lld", &v9, 0x16u);
  }
}

- (void)_inqUpdateGATableWithGroupId:(unint64_t)id assetId:(unint64_t)assetId
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"insertGA");
  if (sqlite3_bind_int64(Value, 1, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    assetIdCopy = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v9, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 2, assetId) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    assetIdCopy = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v9, 0xCu);
  }

  [(PSIDatabase *)self _inqExecutePreparedStatement:Value allowError:19 withStatementBlock:0];
  v8 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134349312;
    assetIdCopy = assetId;
    v11 = 2050;
    idCopy = id;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Inserted assetId %{public}lld in GA table for groupId %{public}lld", &v9, 0x16u);
  }
}

- (unint64_t)_inqGroupIdForCategory:(signed __int16)category owningGroupId:(unint64_t)id contentString:(id)string normalizedString:(id)normalizedString identifier:(id)identifier rankingScore:(double)score insertIfNeeded:(BOOL)needed tokenOutput:(const tokenOutput_t *)self0 shouldUpdateOwningGroupId:(BOOL)self1 shouldUpdateRankingScore:(BOOL)self2
{
  neededCopy = needed;
  categoryCopy = category;
  v47 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  normalizedStringCopy = normalizedString;
  identifierCopy = identifier;
  v42 = 0.0;
  v43 = 0;
  if (rankingScore)
  {
    insert_rowid = [(PSIDatabase *)self _inqGroupIdForCategory:categoryCopy contentString:stringCopy identifier:identifierCopy outOwningGroupId:&v43 outScore:&v42];
    if (!insert_rowid)
    {
      insert_rowid = [(PSIDatabase *)self _inqGroupIdForCategory:categoryCopy identifier:identifierCopy outOwningGroupId:&v43 outScore:&v42];
    }

    v23 = insert_rowid == 0;
    if (insert_rowid && v42 != score)
    {
      v24 = PLSearchBackendPSIDatabaseGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = insert_rowid;
        *&buf[12] = 2048;
        *&buf[14] = score;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "Setting ranking score for group id: %llu to score: %f", buf, 0x16u);
      }

      Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"updateGroupRankingScore");
      if (sqlite3_bind_double(Value, 1, score) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      if (sqlite3_bind_int64(Value, 2, insert_rowid) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:0];
      goto LABEL_64;
    }
  }

  else
  {
    if ((categoryCopy - 1203) > 1u)
    {
      v26 = [(PSIDatabase *)self _inqGroupIdForCategory:categoryCopy contentString:stringCopy identifier:identifierCopy outOwningGroupId:&v43 outScore:&v42];
    }

    else
    {
      v26 = [(PSIDatabase *)self _inqGroupIdForCategory:categoryCopy normalizedString:normalizedStringCopy identifier:identifierCopy outOwningGroupId:&v43 outScore:&v42];
    }

    insert_rowid = v26;
    v23 = v26 == 0;
  }

  if (v23 || v43 == id)
  {
    if (v23 && neededCopy)
    {
      v40 = 0;
      v29 = _newUTF8String(stringCopy, &v40);
      v39 = 0;
      v30 = _newUTF8String(normalizedStringCopy, &v39);
      v38 = 0;
      v31 = _newUTF8String(identifierCopy, &v38);
      var6 = output->var6;
      if (output->var8 >= output->var7)
      {
        var7 = output->var7;
      }

      else
      {
        var7 = output->var8;
      }

      *buf = 0;
      *&buf[8] = 0;
      [PSIGroup getCompressedRanges:buf fromTokenRanges:var6 count:var7];
      v34 = CFDictionaryGetValue(self->_inqPreparedStatements, @"insertGroup");
      if (sqlite3_bind_int(v34, 1, categoryCopy) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 138412290;
        v45 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", v44, 0xCu);
      }

      if (sqlite3_bind_int64(v34, 2, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 138412290;
        v45 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", v44, 0xCu);
      }

      if (sqlite3_bind_text(v34, 3, v29, v40, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 138412290;
        v45 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", v44, 0xCu);
      }

      if (sqlite3_bind_text(v34, 4, v30, v39, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 138412290;
        v45 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", v44, 0xCu);
      }

      if (sqlite3_bind_text(v34, 5, v31, v38, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 138412290;
        v45 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", v44, 0xCu);
      }

      if (sqlite3_bind_double(v34, 6, score) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 138412290;
        v45 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", v44, 0xCu);
      }

      if (sqlite3_bind_int64(v34, 7, *buf) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 138412290;
        v45 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", v44, 0xCu);
      }

      if (sqlite3_bind_int64(v34, 8, *&buf[8]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 138412290;
        v45 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", v44, 0xCu);
      }

      [(PSIDatabase *)self _inqExecutePreparedStatement:v34 withStatementBlock:0];
      insert_rowid = sqlite3_last_insert_rowid(self->_inqDatabase);
      v35 = PLSearchBackendPSIDatabaseGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *v44 = 134217984;
        v45 = insert_rowid;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, "Inserting groupID: %llu", v44, 0xCu);
      }

      if (v29)
      {
        free(v29);
      }

      if (v30)
      {
        free(v30);
      }

      if (v31)
      {
        free(v31);
      }
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __185__PSIDatabase__inqGroupIdForCategory_owningGroupId_contentString_normalizedString_identifier_rankingScore_insertIfNeeded_tokenOutput_shouldUpdateOwningGroupId_shouldUpdateRankingScore___block_invoke;
    aBlock[3] = &unk_1E7576478;
    aBlock[4] = self;
    v27 = _Block_copy(aBlock);
    v28 = v27;
    if (groupId)
    {
      (*(v27 + 2))(v27, insert_rowid, id);
    }

    else if (v43)
    {
      (*(v27 + 2))(v27, insert_rowid, 0);
      v36 = PLSearchBackendPSIDatabaseGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 134349314;
        *&buf[4] = v43;
        *&buf[12] = 2112;
        *&buf[14] = stringCopy;
        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_INFO, "Dropping previous owningGroupId (%{public}llu) for keyword with different owning categories. ContentString: %@", buf, 0x16u);
      }
    }
  }

LABEL_64:

  return insert_rowid;
}

uint64_t __185__PSIDatabase__inqGroupIdForCategory_owningGroupId_contentString_normalizedString_identifier_rankingScore_insertIfNeeded_tokenOutput_shouldUpdateOwningGroupId_shouldUpdateRankingScore___block_invoke(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218240;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Setting owning group id for group id: %llu, owningGroupID: %llu", &v9, 0x16u);
  }

  Value = CFDictionaryGetValue(*(*(a1 + 32) + 24), @"updateGroupOwningGroupId");
  if (sqlite3_bind_int64(Value, 1, a3) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v9, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 2, a2) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v9, 0xCu);
  }

  return [*(a1 + 32) _inqExecutePreparedStatement:Value withStatementBlock:0];
}

- (unint64_t)_inqGroupIdForCategory:(signed __int16)category identifier:(id)identifier outOwningGroupId:(unint64_t *)id outScore:(double *)score
{
  categoryCopy = category;
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGroupWithLookupId");
  if (sqlite3_bind_int(Value, 1, categoryCopy) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  v24 = 0;
  v12 = _newUTF8String(identifierCopy, &v24);
  if (sqlite3_bind_text(Value, 2, v12, v24, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PSIDatabase__inqGroupIdForCategory_identifier_outOwningGroupId_outScore___block_invoke;
  v15[3] = &unk_1E7576450;
  v15[4] = &buf;
  v15[5] = &v20;
  v15[6] = &v16;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v15];
  if (id)
  {
    *id = v21[3];
  }

  if (score)
  {
    *score = v17[3];
  }

  if (v12)
  {
    free(v12);
  }

  v13 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&buf, 8);

  return v13;
}

void __75__PSIDatabase__inqGroupIdForCategory_identifier_outOwningGroupId_outScore___block_invoke(void *a1, sqlite3_stmt *a2)
{
  *(*(a1[4] + 8) + 24) = sqlite3_column_int64(a2, 0);
  *(*(a1[5] + 8) + 24) = sqlite3_column_int64(a2, 1);
  *(*(a1[6] + 8) + 24) = sqlite3_column_double(a2, 2);
}

- (unint64_t)_inqGroupIdForCategory:(signed __int16)category normalizedString:(id)string identifier:(id)identifier outOwningGroupId:(unint64_t *)id outScore:(double *)score
{
  categoryCopy = category;
  v33 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifierCopy = identifier;
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGroupWithNormalizedStr");
  if (sqlite3_bind_int(Value, 1, categoryCopy) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  v29 = 0;
  v15 = _newUTF8String(stringCopy, &v29);
  if (sqlite3_bind_text(Value, 2, v15, v29, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  v28 = 0;
  v16 = _newUTF8String(identifierCopy, &v28);
  if (sqlite3_bind_text(Value, 3, v16, v28, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x2020000000;
  v32 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__PSIDatabase__inqGroupIdForCategory_normalizedString_identifier_outOwningGroupId_outScore___block_invoke;
  v19[3] = &unk_1E7576450;
  v19[4] = &buf;
  v19[5] = &v24;
  v19[6] = &v20;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v19];
  if (id)
  {
    *id = v25[3];
  }

  if (score)
  {
    *score = v21[3];
  }

  if (v15)
  {
    free(v15);
  }

  if (v16)
  {
    free(v16);
  }

  v17 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&buf, 8);

  return v17;
}

void __92__PSIDatabase__inqGroupIdForCategory_normalizedString_identifier_outOwningGroupId_outScore___block_invoke(void *a1, sqlite3_stmt *a2)
{
  *(*(a1[4] + 8) + 24) = sqlite3_column_int64(a2, 0);
  *(*(a1[5] + 8) + 24) = sqlite3_column_int64(a2, 1);
  *(*(a1[6] + 8) + 24) = sqlite3_column_double(a2, 2);
}

- (unint64_t)_inqGroupIdForCategory:(signed __int16)category contentString:(id)string identifier:(id)identifier outOwningGroupId:(unint64_t *)id outScore:(double *)score
{
  categoryCopy = category;
  v33 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifierCopy = identifier;
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGroup");
  if (sqlite3_bind_int(Value, 1, categoryCopy) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  v29 = 0;
  v15 = _newUTF8String(stringCopy, &v29);
  if (sqlite3_bind_text(Value, 2, v15, v29, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  v28 = 0;
  v16 = _newUTF8String(identifierCopy, &v28);
  if (sqlite3_bind_text(Value, 3, v16, v28, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x2020000000;
  v32 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__PSIDatabase__inqGroupIdForCategory_contentString_identifier_outOwningGroupId_outScore___block_invoke;
  v19[3] = &unk_1E7576450;
  v19[4] = &buf;
  v19[5] = &v24;
  v19[6] = &v20;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v19];
  if (id)
  {
    *id = v25[3];
  }

  if (score)
  {
    *score = v21[3];
  }

  if (v15)
  {
    free(v15);
  }

  if (v16)
  {
    free(v16);
  }

  v17 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&buf, 8);

  return v17;
}

void __89__PSIDatabase__inqGroupIdForCategory_contentString_identifier_outOwningGroupId_outScore___block_invoke(void *a1, sqlite3_stmt *a2)
{
  *(*(a1[4] + 8) + 24) = sqlite3_column_int64(a2, 0);
  *(*(a1[5] + 8) + 24) = sqlite3_column_int64(a2, 1);
  *(*(a1[6] + 8) + 24) = sqlite3_column_double(a2, 2);
}

- (unint64_t)_inqGroupIdForCategory:(signed __int16)category contentString:(id)string
{
  categoryCopy = category;
  v16 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"fetchGroupsForTextAndCategory");
  v12 = 0;
  v8 = _newUTF8String(stringCopy, &v12);
  if (sqlite3_bind_text(Value, 1, v8, v12, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 2, categoryCopy) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PSIDatabase__inqGroupIdForCategory_contentString___block_invoke;
  v11[3] = &unk_1E7576250;
  v11[4] = &buf;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v11];
  if (v8)
  {
    free(v8);
  }

  v9 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  return v9;
}

sqlite3_int64 __52__PSIDatabase__inqGroupIdForCategory_contentString___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)_inqCollectionIdWithCollection:(id)collection
{
  v32 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  uuid = [collectionCopy uuid];
  v24 = 0;
  v25 = 0;
  insert_rowid = [(PSIDatabase *)self _inqCollectionIdForUUID:uuid uuid_0:&v25 uuid_1:&v24];
  if (insert_rowid)
  {
    goto LABEL_40;
  }

  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"insertCollection");
  if (sqlite3_bind_int64(Value, 1, v25) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 2, v24) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  startDate = [collectionCopy startDate];
  v9 = sqlite3_bind_int64(Value, 3, [startDate int64Representation]);

  if (v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  endDate = [collectionCopy endDate];
  v11 = sqlite3_bind_int64(Value, 4, [endDate int64Representation]);

  if (v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  title = [collectionCopy title];
  v23 = 0;
  title2 = [collectionCopy title];
  v14 = _newUTF8String(title2, &v23);

  if (sqlite3_bind_text(Value, 5, v14, v23, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  subtitle = [collectionCopy subtitle];
  v16 = subtitle;
  if (!subtitle)
  {
    v17 = 0;
    if (!sqlite3_bind_null(Value, 6))
    {
      goto LABEL_23;
    }

LABEL_21:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v17 = _newUTF8String(subtitle, &v23);
  if (sqlite3_bind_text(Value, 6, v17, v23, 0))
  {
    goto LABEL_21;
  }

LABEL_23:
  if (sqlite3_bind_int(Value, 7, [collectionCopy type]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  if (sqlite3_bind_int(Value, 8, [collectionCopy assetsCountPrivate]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  if (sqlite3_bind_int(Value, 9, [collectionCopy assetsCountShared]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  sortDate = [collectionCopy sortDate];
  [sortDate timeIntervalSinceReferenceDate];
  v20 = v19;

  if (sqlite3_bind_double(Value, 10, v20) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:0];
  insert_rowid = sqlite3_last_insert_rowid(self->_inqDatabase);
  free(v14);
  if (v17)
  {
    free(v17);
  }

  v21 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v27 = uuid;
    v28 = 2112;
    v29 = title;
    v30 = 2050;
    v31 = insert_rowid;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "Inserted collection with UUID %{public}@, title %@, at collectionId: %{public}lld", buf, 0x20u);
  }

LABEL_40:
  return insert_rowid;
}

- (unint64_t)_inqCollectionIdForUUID:(id)d uuid_0:(unint64_t *)uuid_0 uuid_1:(unint64_t *)uuid_1
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14 = 0;
  v15 = 0;
  if (PLStringUUIDComponents(dCopy, &v15, &v14))
  {
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectCollectionForUUID");
    if (sqlite3_bind_int64(Value, 1, v15) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    if (sqlite3_bind_int64(Value, 2, v14) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__PSIDatabase__inqCollectionIdForUUID_uuid_0_uuid_1___block_invoke;
    v13[3] = &unk_1E7576250;
    v13[4] = &v16;
    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v13];
  }

  else
  {
    v10 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = dCopy;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Collection has an invalid UUID: %{public}@", buf, 0xCu);
    }
  }

  if (uuid_0)
  {
    *uuid_0 = v15;
  }

  if (uuid_1)
  {
    *uuid_1 = v14;
  }

  v11 = v17[3];
  _Block_object_dispose(&v16, 8);

  return v11;
}

sqlite3_int64 __53__PSIDatabase__inqCollectionIdForUUID_uuid_0_uuid_1___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)_inqAssetIdWithAsset:(id)asset
{
  v18 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  uuid = [assetCopy uuid];
  v12 = 0;
  v13 = 0;
  insert_rowid = [(PSIDatabase *)self _inqAssetIdForUUID:uuid uuid_0:&v13 uuid_1:&v12];
  if (!insert_rowid)
  {
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"insertAsset");
    if (sqlite3_bind_int64(Value, 1, v13) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    if (sqlite3_bind_int64(Value, 2, v12) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    creationDate = [assetCopy creationDate];
    v9 = sqlite3_bind_int64(Value, 3, [creationDate int64Representation]);

    if (v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:0];
    insert_rowid = sqlite3_last_insert_rowid(self->_inqDatabase);
    v10 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v15 = uuid;
      v16 = 2050;
      v17 = insert_rowid;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Inserted asset with UUID %{public}@ at assetId: %{public}lld", buf, 0x16u);
    }
  }

  return insert_rowid;
}

- (unint64_t)_inqAssetIdForUUID:(id)d uuid_0:(unint64_t *)uuid_0 uuid_1:(unint64_t *)uuid_1
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14 = 0;
  v15 = 0;
  if (PLStringUUIDComponents(dCopy, &v15, &v14))
  {
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectAsset");
    if (sqlite3_bind_int64(Value, 1, v15) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    if (sqlite3_bind_int64(Value, 2, v14) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__PSIDatabase__inqAssetIdForUUID_uuid_0_uuid_1___block_invoke;
    v13[3] = &unk_1E7576250;
    v13[4] = &v16;
    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v13];
  }

  else
  {
    v10 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = dCopy;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Asset has an invalid UUID: %{public}@", buf, 0xCu);
    }
  }

  if (uuid_0)
  {
    *uuid_0 = v15;
  }

  if (uuid_1)
  {
    *uuid_1 = v14;
  }

  v11 = v17[3];
  _Block_object_dispose(&v16, 8);

  return v11;
}

sqlite3_int64 __48__PSIDatabase__inqAssetIdForUUID_uuid_0_uuid_1___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_inqDeleteGroupsWithGraphCollectionsForPersonUUID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSIDatabase.m" lineNumber:2153 description:{@"Invalid parameter not satisfying: %@", @"personUUID"}];
  }

  v23 = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v8 = CFSetCreateMutable(v6, 0, 0);
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGroupsForLookupId");
  v10 = _newUTF8String(dCopy, &v23);
  if (sqlite3_bind_text(Value, 1, v10, v23, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__PSIDatabase__inqDeleteGroupsWithGraphCollectionsForPersonUUID___block_invoke;
  v22[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v22[4] = Mutable;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v22];
  Count = CFSetGetCount(Mutable);
  v12 = PLSearchBackendPSIDatabaseGetLog();
  v13 = v12;
  if (Count < 1)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138543362;
    v25 = dCopy;
    v17 = "Search Indexing: Failed to find groups corresponding to person with UUID: %{public}@. Unable to remove any stale groups for rename.";
    v18 = v13;
    v19 = OS_LOG_TYPE_ERROR;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349314;
    v25 = Count;
    v26 = 2114;
    v27 = dCopy;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Search Indexing: Found %{public}lu groups corresponding to person with UUID: %{public}@", buf, 0x16u);
  }

  [(PSIIntArray *)self->_matchingIds bindElements:Mutable];
  v14 = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGroupIdsInGCWithGroupIdsStatement");
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PSIDatabase__inqDeleteGroupsWithGraphCollectionsForPersonUUID___block_invoke_602;
  v21[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v21[4] = v8;
  [(PSIDatabase *)self _inqExecutePreparedStatement:v14 withStatementBlock:v21];
  [(PSIIntArray *)self->_matchingIds unbind];
  v15 = CFSetGetCount(v8);
  v13 = PLSearchBackendPSIDatabaseGetLog();
  v16 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v15 < 1)
  {
    if (!v16)
    {
      goto LABEL_19;
    }

    *buf = 138543362;
    v25 = dCopy;
    v17 = "Search Indexing: did not find groups in the GC table corresponding to person with UUID: %{public}@";
    v18 = v13;
    v19 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
    _os_log_impl(&dword_19BF1F000, v18, v19, v17, buf, 0xCu);
LABEL_19:

    if (!v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    free(v10);
    goto LABEL_21;
  }

  if (v16)
  {
    *buf = 134349314;
    v25 = v15;
    v26 = 2114;
    v27 = dCopy;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Search Indexing: Found %{public}lu groups for person with UUID: %{public}@ to remove in GC table.", buf, 0x16u);
  }

  [(PSIIntArray *)self->_matchingIds bindElements:v8];
  [(PSIDatabase *)self _inqExecutePreparedStatement:CFDictionaryGetValue(self->_inqPreparedStatements withStatementBlock:@"deleteGroupsWithIds"), 0];
  [(PSIIntArray *)self->_matchingIds unbind];
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_21:
  CFRelease(Mutable);
  CFRelease(v8);
}

void __65__PSIDatabase__inqDeleteGroupsWithGraphCollectionsForPersonUUID___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

void __65__PSIDatabase__inqDeleteGroupsWithGraphCollectionsForPersonUUID___block_invoke_602(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

- (void)_inqRemoveUUID:(id)d categories:(id)categories objectType:(unint64_t)type isInBatch:(BOOL)batch
{
  batchCopy = batch;
  dCopy = d;
  categoriesCopy = categories;
  if (self->_inqDatabase)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PSIDatabase__inqRemoveUUID_categories_objectType_isInBatch___block_invoke;
    aBlock[3] = &unk_1E7576428;
    typeCopy = type;
    aBlock[4] = self;
    v16 = dCopy;
    v19 = a2;
    v17 = categoriesCopy;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    if (batchCopy)
    {
      (*(v13 + 2))(v13);
    }

    else
    {
      [(PSIDatabase *)self _inqPerformBatch:v13];
    }
  }
}

void __62__PSIDatabase__inqRemoveUUID_categories_objectType_isInBatch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v3 = [*(a1 + 32) _inqCollectionIdForUUID:*(a1 + 40)];
      if (!v3)
      {
        return;
      }
    }

    else
    {
      if (v2)
      {
        return;
      }

      v3 = [*(a1 + 32) _inqAssetIdForUUID:*(a1 + 40)];
      if (!v3)
      {
        return;
      }
    }

    v4 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PSIDatabase__inqRemoveUUID_categories_objectType_isInBatch___block_invoke_2;
    v8[3] = &unk_1E7578320;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8[4] = v4;
    v8[5] = v6;
    v8[6] = v3;
    [v4 _runWithMatchingIDs:v5 block:v8];
    return;
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"PSIDatabase.m" lineNumber:2130 description:{@"Group not supported by %s", "-[PSIDatabase _inqRemoveUUID:categories:objectType:isInBatch:]_block_invoke"}];
}

uint64_t __62__PSIDatabase__inqRemoveUUID_categories_objectType_isInBatch___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = @"deleteGCForSelectedGroupsCategories";
  }

  else
  {
    v2 = @"deleteGAForSelectedGroupsCategories";
  }

  Value = CFDictionaryGetValue(*(*(a1 + 32) + 24), v2);
  if (sqlite3_bind_int64(Value, 1, *(a1 + 48)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v5, 0xCu);
  }

  return [*(a1 + 32) _inqExecutePreparedStatement:Value withStatementBlock:0];
}

- (void)_inqRemoveUnusedGroups
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Removing unused groups", &v10, 2u);
  }

  if (self->_inqDatabase)
  {
    searchDatabaseLog = [objc_opt_class() searchDatabaseLog];
    v5 = os_signpost_id_generate(searchDatabaseLog);
    v6 = searchDatabaseLog;
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SearchDatabase - removeUnusedGroups", "", &v10, 2u);
    }

    [(PSIDatabase *)self _inqExecutePreparedStatement:CFDictionaryGetValue(self->_inqPreparedStatements withStatementBlock:@"deleteUnusedGroupsAndLookups_1"), 0];
    [(PSIDatabase *)self _inqExecutePreparedStatement:CFDictionaryGetValue(self->_inqPreparedStatements withStatementBlock:@"deleteUnusedGroupsAndLookups_2"), 0];
    [(PSIDatabase *)self _inqExecutePreparedStatement:CFDictionaryGetValue(self->_inqPreparedStatements withStatementBlock:@"deleteUnusedGroupsAndLookups_3"), 0];
    [(PSIDatabase *)self _inqExecutePreparedStatement:CFDictionaryGetValue(self->_inqPreparedStatements withStatementBlock:@"deleteUnusedGroupsAndLookups_4"), 0];
    v8 = v7;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v5, "SearchDatabase - removeUnusedGroups", "", &v10, 2u);
    }
  }

  else
  {
    v9 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446210;
      v11 = "[PSIDatabase _inqRemoveUnusedGroups]";
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unable to perform PSI operation on NULL db: %{public}s", &v10, 0xCu);
    }
  }
}

- (void)_inqRemoveUUID:(id)d objectType:(unint64_t)type isInBatch:(BOOL)batch
{
  batchCopy = batch;
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self->_inqDatabase)
  {
    v10 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"collection";
      if (!type)
      {
        v11 = @"asset";
      }

      *buf = 138543618;
      v23 = v11;
      v24 = 2114;
      v25 = dCopy;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Removing %{public}@ with UUID: %{public}@", buf, 0x16u);
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __51__PSIDatabase__inqRemoveUUID_objectType_isInBatch___block_invoke;
    v17 = &unk_1E7576400;
    typeCopy = type;
    selfCopy = self;
    v19 = dCopy;
    v21 = a2;
    v12 = _Block_copy(&v14);
    v13 = v12;
    if (batchCopy)
    {
      (*(v12 + 2))(v12);
    }

    else
    {
      [(PSIDatabase *)self _inqPerformBatch:v12, v14, v15, v16, v17, selfCopy];
    }
  }
}

void __51__PSIDatabase__inqRemoveUUID_objectType_isInBatch___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 == 2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PSIDatabase.m" lineNumber:2066 description:{@"Group not supported by %s", "-[PSIDatabase _inqRemoveUUID:objectType:isInBatch:]_block_invoke"}];
  }

  else
  {
    if (v2 == 1)
    {
      v3 = [*(a1 + 32) _inqCollectionIdForUUID:*(a1 + 40)];
    }

    else
    {
      if (v2)
      {
        return;
      }

      v3 = [*(a1 + 32) _inqAssetIdForUUID:*(a1 + 40)];
    }

    v4 = v3;
    if (v3)
    {
      if (*(a1 + 48))
      {
        v5 = @"deleteCollection";
      }

      else
      {
        v5 = @"deleteAsset";
      }

      Value = CFDictionaryGetValue(*(*(a1 + 32) + 24), v5);
      if (sqlite3_bind_int64(Value, 1, v4) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      [*(a1 + 32) _inqExecutePreparedStatement:Value withStatementBlock:0];
      v7 = PLSearchBackendPSIDatabaseGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 48))
        {
          v8 = @"collection";
        }

        else
        {
          v8 = @"asset";
        }

        *buf = 138543618;
        v15 = v8;
        v16 = 2050;
        v17 = v4;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Deleted %{public}@ with id: %{public}lld", buf, 0x16u);
      }

      if (*(a1 + 48))
      {
        v9 = @"deleteGC";
      }

      else
      {
        v9 = @"deleteGA";
      }

      v10 = CFDictionaryGetValue(*(*(a1 + 32) + 24), v9);
      if (sqlite3_bind_int64(v10, 1, v4) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = @"Failed to bind parameter";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      [*(a1 + 32) _inqExecutePreparedStatement:v10 withStatementBlock:0];
      v11 = PLSearchBackendPSIDatabaseGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 48))
        {
          v12 = @"collection from GC";
        }

        else
        {
          v12 = @"asset from GA";
        }

        *buf = 138543618;
        v15 = v12;
        v16 = 2050;
        v17 = v4;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Deleted %{public}@ table: %{public}lld", buf, 0x16u);
      }
    }
  }
}

- (unint64_t)_inqUpdateGroupForText:(id)text identifier:(id)identifier category:(signed __int16)category owningGroupId:(unint64_t)id
{
  categoryCopy = category;
  textCopy = text;
  identifierCopy = identifier;
  if (textCopy)
  {
    v12 = [(PSITokenizer *)self->_tokenizer normalizeString:textCopy];
  }

  else
  {
    v12 = 0;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  if ([v12 length])
  {
    [(PSIDatabase *)self _inqGetTokensFromString:v12 category:categoryCopy tokenOutput:v16];
  }

  LOWORD(v15) = PLSearchIndexCategoryIsSynonym(categoryCopy);
  v13 = [(PSIDatabase *)self _inqGroupIdForCategory:categoryCopy owningGroupId:id contentString:textCopy normalizedString:v12 identifier:identifierCopy rankingScore:1 insertIfNeeded:0.0 tokenOutput:v16 shouldUpdateOwningGroupId:v15 shouldUpdateRankingScore:?];

  return v13;
}

- (void)_inqGetTokensFromString:(id)string category:(signed __int16)category tokenOutput:(tokenOutput_t *)output
{
  if (category == 2100)
  {
    v7 = 12;
  }

  else
  {
    v7 = 0;
  }

  stringCopy = string;
  [(PSIDatabase *)self _prepareTokenOutput:output forIndexing:1];
  [(PSITokenizer *)self->_tokenizer tokenizeString:stringCopy withOptions:v7 tokenOutput:output];
}

- (void)_prepareTokenOutput:(tokenOutput_t *)output forIndexing:(BOOL)indexing
{
  if (indexing)
  {
    tokenizerOutputString = self->_tokenizerOutputString;
    if (tokenizerOutputString)
    {
      v7 = tokenizerOutputString;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    }

    v10 = self->_tokenizerOutputString;
    self->_tokenizerOutputString = v7;

    [(NSMutableString *)self->_tokenizerOutputString deleteCharactersInRange:0, [(NSMutableString *)self->_tokenizerOutputString length]];
    output->var0 = self->_tokenizerOutputString;
    *&output->var1 = 0u;
    *&output->var3 = 0u;
    output->var5 = 0;
    output->var6 = self->_tokenizerOutputRanges;
  }

  else
  {
    tokenizerOutputTokens = self->_tokenizerOutputTokens;
    if (tokenizerOutputTokens)
    {
      v9 = tokenizerOutputTokens;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v11 = self->_tokenizerOutputTokens;
    self->_tokenizerOutputTokens = v9;

    [(NSMutableArray *)self->_tokenizerOutputTokens removeAllObjects];
    tokenizerOutputNormalizedTokens = self->_tokenizerOutputNormalizedTokens;
    if (tokenizerOutputNormalizedTokens)
    {
      v13 = tokenizerOutputNormalizedTokens;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v14 = self->_tokenizerOutputNormalizedTokens;
    self->_tokenizerOutputNormalizedTokens = v13;

    [(NSMutableArray *)self->_tokenizerOutputNormalizedTokens removeAllObjects];
    v15 = *&self->_tokenizerOutputTokens;
    output->var0 = 0;
    *&output->var1 = vextq_s8(v15, v15, 8uLL);
    output->var3 = 0;
    output->var4 = 0;
    output->var5 = 0;
    output->var6 = self->_tokenizerOutputRanges;
  }

  *&output->var7 = xmmword_19C60B070;
}

- (id)_inqDequeueGroupObjectWithId:(unint64_t)id isCachedGroup:(BOOL *)group
{
  v7 = CFDictionaryGetValue(self->_inqGroupObjectsById, id);
  v8 = v7;
  if (v7)
  {
    [(PSIGroup *)v7 resetIntersectedIds];
    v9 = v8;
    if (!group)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = objc_alloc_init(PSIGroup);
  [(PSIGroup *)v9 setGroupId:id];
  CFDictionarySetValue(self->_inqGroupObjectsById, id, v9);
  if (group)
  {
LABEL_3:
    *group = v8 != 0;
  }

LABEL_4:

  return v9;
}

- (BOOL)assetExistsWithUUID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__PSIDatabase_assetExistsWithUUID___block_invoke;
  v7[3] = &unk_1E7578820;
  v9 = &v10;
  v7[4] = self;
  v5 = dCopy;
  v8 = v5;
  [(PSIDatabase *)self _inqSync:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __35__PSIDatabase_assetExistsWithUUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _inqAssetIdForUUID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result != 0;
  return result;
}

- (void)_sortedSearchIndexRowIdsFromUUIDs:(id)ds searchResultType:(unint64_t)type completion:(id)completion
{
  typeCopy = type;
  v9 = ~type;
  dsCopy = ds;
  completionCopy = completion;
  if ((v9 & 3) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSIDatabase.m" lineNumber:1930 description:{@"Invalid parameter not satisfying: %@", @"!wantsAssetsAndCollections"}];
  }

  v12 = typeCopy & 1;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__PSIDatabase__sortedSearchIndexRowIdsFromUUIDs_searchResultType_completion___block_invoke;
  v18[3] = &unk_1E7576B98;
  v22 = v12;
  v18[4] = self;
  v19 = dsCopy;
  v20 = v14;
  v21 = Mutable;
  v15 = v14;
  v16 = dsCopy;
  [(PSIDatabase *)self _inqSync:v18];
  completionCopy[2](completionCopy, Mutable, v15);
}

void __77__PSIDatabase__sortedSearchIndexRowIdsFromUUIDs_searchResultType_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v4 = @"kSelectAssetIds";
  }

  else
  {
    v4 = @"kSelectCollectionIds";
  }

  Value = CFDictionaryGetValue(v3, v4);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PSIDatabase__sortedSearchIndexRowIdsFromUUIDs_searchResultType_completion___block_invoke_2;
  v10[3] = &unk_1E75763D8;
  v13 = v19;
  v14 = v18;
  v15 = v17;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = v7;
  v16 = v8;
  v12 = v9;
  [v6 _inqExecutePreparedStatement:Value withStatementBlock:v10];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
}

void __77__PSIDatabase__sortedSearchIndexRowIdsFromUUIDs_searchResultType_completion___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 56) + 8) + 24) = sqlite3_column_int64(a2, 1);
  *(*(*(a1 + 64) + 8) + 24) = sqlite3_column_int64(a2, 2);
  v4 = PLStringNewFromUUIDComponents(*(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 64) + 8) + 24));
  if (v4)
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v8 = v4;
      v5 = [*(a1 + 32) containsObject:v4];
      v4 = v8;
      if (v5)
      {
        CFArrayAppendValue(*(a1 + 72), *(*(*(a1 + 48) + 8) + 24));
        v6 = *(a1 + 40);
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(*(a1 + 48) + 8) + 24)];
        [v6 setObject:v8 forKeyedSubscript:v7];

        v4 = v8;
      }
    }
  }
}

- (id)_inqGenerateGroupsInfoDictionaryFromContentString:(const char *)string normalizedString:(const char *)normalizedString identifier:(const char *)identifier category:(signed __int16)category score:(double)score groupId:(unint64_t)id owningGroupId:(unint64_t)groupId includeUUIDs:(BOOL)self0
{
  categoryCopy = category;
  v46[12] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:string encoding:4];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:normalizedString encoding:4];
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:identifier encoding:4];
  v44 = PLDebugStringForSearchIndexCategory(categoryCopy);
  if (ds)
  {
    if (groupId)
    {
      idCopy = groupId;
    }

    else
    {
      idCopy = id;
    }

    v21 = [(PSIDatabase *)self _inqAssetUUIDsForGroupID:idCopy];
    v22 = [(PSIDatabase *)self _inqCollectionUUIDsForGroupID:idCopy];
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v45[0] = @"content_string";
  null = v17;
  if (!v17)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null;
  v46[0] = null;
  v45[1] = @"normalized_string";
  null2 = v18;
  if (!v18)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v17;
  v38 = null2;
  v46[1] = null2;
  v45[2] = @"lookup_identifier";
  null3 = v19;
  if (!v19)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v18;
  v37 = null3;
  v46[2] = null3;
  v45[3] = @"category";
  v40 = [MEMORY[0x1E696AD98] numberWithShort:categoryCopy];
  v46[3] = v40;
  v45[4] = @"category_humanReadable";
  null4 = v44;
  if (!v44)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v19;
  v36 = null4;
  v46[4] = null4;
  v45[5] = @"score";
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  v46[5] = v27;
  v45[6] = @"group_id";
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:id];
  v46[6] = v28;
  v45[7] = @"owning_group_id";
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:groupId];
  v46[7] = v29;
  v45[8] = @"assetUUIDs";
  null5 = v21;
  if (!v21)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v46[8] = null5;
  v45[9] = @"collectionUUIDs";
  null6 = v22;
  if (!v22)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v46[9] = null6;
  v45[10] = @"assetCount";
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
  v46[10] = v32;
  v45[11] = @"collectionCount";
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
  v46[11] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:12];

  if (!v22)
  {
  }

  if (!v21)
  {
  }

  if (!v44)
  {
  }

  if (v41)
  {
    if (v42)
    {
      goto LABEL_27;
    }

LABEL_32:

    if (v43)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (!v42)
  {
    goto LABEL_32;
  }

LABEL_27:
  if (v43)
  {
    goto LABEL_28;
  }

LABEL_33:

LABEL_28:

  return v34;
}

- (id)dumpLookupStringsWithIndexCategories:(id)categories
{
  categoriesCopy = categories;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PSIDatabase_dumpLookupStringsWithIndexCategories___block_invoke;
  v11[3] = &unk_1E75761B8;
  v12 = categoriesCopy;
  selfCopy = self;
  v14 = v5;
  v6 = v5;
  v7 = categoriesCopy;
  [(PSIDatabase *)self _inqSync:v11];
  allObjects = [v6 allObjects];
  v9 = [allObjects sortedArrayUsingSelector:sel_localizedStandardCompare_];

  return v9;
}

void __52__PSIDatabase_dumpLookupStringsWithIndexCategories___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"SELECT lookup_identifier from groups WHERE category IN (?");
    if ([a1[4] count] >= 2)
    {
      v3 = 1;
      do
      {
        [v2 appendString:{@", ?"}];
        ++v3;
      }

      while (v3 < [a1[4] count]);
    }

    [v2 appendString:@""]);
  }

  else
  {
    v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"SELECT lookup_identifier from groups"];
  }

  v4 = [a1[5] _inqPrepareStatement:{objc_msgSend(v2, "UTF8String")}];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 1;
  v5 = a1[4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PSIDatabase_dumpLookupStringsWithIndexCategories___block_invoke_2;
  v10[3] = &unk_1E7576278;
  v10[5] = v11;
  v10[6] = v4;
  v10[4] = &v13;
  [v5 enumerateIndexesUsingBlock:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PSIDatabase_dumpLookupStringsWithIndexCategories___block_invoke_541;
  v8[3] = &unk_1E75761E0;
  v6 = a1[5];
  v9 = a1[6];
  [v6 _inqExecutePreparedStatement:v4 withStatementBlock:v8];
  v7 = sqlite3_finalize(v4);
  *(v14 + 6) = v7;
  if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = @"Failed to finalize statement";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
}

void __52__PSIDatabase_dumpLookupStringsWithIndexCategories___block_invoke_2(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = sqlite3_bind_int(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2);
  if (*(*(*(a1 + 32) + 8) + 24) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v3, 0xCu);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __52__PSIDatabase_dumpLookupStringsWithIndexCategories___block_invoke_541(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_text(a2, 0)}];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)dumpGroupsInfoForAssetUUID:(id)d indexCategories:(id)categories includeUUIDs:(BOOL)ds
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  categoriesCopy = categories;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = 0;
  v26 = 0;
  if (PLStringUUIDComponents(dCopy, &v26, &v25))
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke;
    v18 = &unk_1E75763B0;
    selfCopy = self;
    v22 = v26;
    v23 = v25;
    v20 = categoriesCopy;
    dsCopy = ds;
    v11 = v10;
    v21 = v11;
    [(PSIDatabase *)self _inqSync:&v15];
    allObjects = [v11 allObjects];
  }

  else
  {
    v13 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = dCopy;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Invalid asset UUID %{public}@", buf, 0xCu);
    }

    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

void __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke(uint64_t a1)
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v2 = [*(a1 + 32) _inqPrepareStatement:"SELECT rowid FROM assets WHERE uuid_0 = ? AND uuid_1 = ?"];
  sqlite3_bind_int64(v2, 1, *(a1 + 56));
  sqlite3_bind_int64(v2, 2, *(a1 + 64));
  v3 = *(a1 + 32);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_2;
  v45[3] = &unk_1E7576250;
  v45[4] = &v46;
  [v3 _inqExecutePreparedStatement:v2 withStatementBlock:v45];
  sqlite3_finalize(v2);
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v5 = [*(a1 + 32) _inqPrepareStatement:"SELECT groupid FROM ga WHERE assetid = ?"];
  sqlite3_bind_int64(v5, 1, v47[3]);
  v6 = *(a1 + 32);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_3;
  v44[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v44[4] = Mutable;
  [v6 _inqExecutePreparedStatement:v5 withStatementBlock:v44];
  sqlite3_finalize(v5);
  [*(*(a1 + 32) + 32) bindElements:Mutable];
  v7 = [*(a1 + 40) mutableCopy];
  v8 = *(a1 + 40);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_4;
  v42[3] = &unk_1E7576338;
  v9 = v7;
  v43 = v9;
  [v8 enumerateIndexesUsingBlock:v42];
  if ([v9 count])
  {
    v10 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"SELECT content_string, normalized_string, lookup_identifier, category, rowid, owning_groupid, score from groups WHERE rowid IN matchingIds AND category IN (?");
    for (i = 1; i < [v9 count]; ++i)
    {
      [v10 appendString:{@", ?"}];
    }

    [v10 appendString:{@" ORDER BY category ASC, normalized_string ASC"}]);
    v12 = [*(a1 + 32) _inqPrepareStatement:{objc_msgSend(v10, "UTF8String")}];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_5;
    v33[3] = &unk_1E7576278;
    v33[5] = &v34;
    v33[6] = v12;
    v33[4] = &v38;
    [v9 enumerateIndexesUsingBlock:v33];
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v12 = [*(a1 + 32) _inqPrepareStatement:{"SELECT content_string, normalized_string, lookup_identifier, category, rowid, owning_groupid, score FROM groups WHERE rowid IN matchingIds ORDER BY category ASC, normalized_string ASC"}];
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v14 = *(a1 + 32);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_528;
  v29[3] = &unk_1E7576360;
  v29[4] = v14;
  v32 = *(a1 + 72);
  v30 = *(a1 + 48);
  v15 = v13;
  v31 = v15;
  [v14 _inqExecutePreparedStatement:v12 withStatementBlock:v29];
  sqlite3_finalize(v12);
  v16 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_2_529;
  v26[3] = &unk_1E7576388;
  v27 = *(a1 + 40);
  v17 = v16;
  v28 = v17;
  [v15 enumerateIndexesUsingBlock:v26];
  if ([v17 count])
  {
    v18 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"SELECT content_string, normalized_string, lookup_identifier, category, rowid, owning_groupid, score from groups WHERE owning_groupid IN matchingIds AND category IN (?");
    for (j = 1; j < [v17 count]; ++j)
    {
      [v18 appendString:{@", ?"}];
    }

    [v18 appendString:{@" ORDER BY category ASC, normalized_string ASC"}]);
    v20 = [*(a1 + 32) _inqPrepareStatement:{objc_msgSend(v18, "UTF8String")}];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_3_533;
    v25[3] = &unk_1E7576278;
    v25[5] = &v34;
    v25[6] = v20;
    v25[4] = &v38;
    [v17 enumerateIndexesUsingBlock:v25];
    v21 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_534;
    v22[3] = &unk_1E75762E8;
    v22[4] = v21;
    v24 = *(a1 + 72);
    v23 = *(a1 + 48);
    [v21 _inqExecutePreparedStatement:v20 withStatementBlock:v22];
    sqlite3_finalize(v20);

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
  }

  CFRelease(Mutable);
  [*(*(a1 + 32) + 32) unbind];

  _Block_object_dispose(&v46, 8);
}

sqlite3_int64 __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

uint64_t __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = PLSearchIndexCategoryIsSynonym(a2);
  if (result)
  {
    v5 = PLSearchIndexParentCategoryForCategory(a2);
    v6 = *(a1 + 32);

    return [v6 addIndex:v5];
  }

  return result;
}

void __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_5(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = sqlite3_bind_int(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2);
  if (*(*(*(a1 + 32) + 8) + 24) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v3, 0xCu);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_528(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  v5 = sqlite3_column_text(a2, 1);
  v6 = sqlite3_column_text(a2, 2);
  v7 = sqlite3_column_int(a2, 3);
  v8 = sqlite3_column_int64(a2, 4);
  v9 = sqlite3_column_int64(a2, 5);
  v10 = sqlite3_column_double(a2, 6);
  LOBYTE(v11) = *(a1 + 56);
  v12 = [*(a1 + 32) _inqGenerateGroupsInfoDictionaryFromContentString:v4 normalizedString:v5 identifier:v6 category:v7 score:v8 groupId:v9 owningGroupId:v10 includeUUIDs:v11];
  [*(a1 + 40) addObject:v12];
  [*(a1 + 48) addIndex:v7];
}

uint64_t __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_2_529(uint64_t a1, uint64_t a2)
{
  result = PLSearchIndexSynonymCategoryForCategory(a2);
  if (result)
  {
    v4 = result;
    if (![*(a1 + 32) count] || (result = objc_msgSend(*(a1 + 32), "containsIndex:", v4), result))
    {
      v5 = *(a1 + 40);

      return [v5 addIndex:v4];
    }
  }

  return result;
}

void __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_3_533(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = sqlite3_bind_int(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2);
  if (*(*(*(a1 + 32) + 8) + 24) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v3, 0xCu);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __71__PSIDatabase_dumpGroupsInfoForAssetUUID_indexCategories_includeUUIDs___block_invoke_534(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  v5 = sqlite3_column_text(a2, 1);
  v6 = sqlite3_column_text(a2, 2);
  v7 = sqlite3_column_int(a2, 3);
  v8 = sqlite3_column_int64(a2, 4);
  v9 = sqlite3_column_int64(a2, 5);
  v10 = sqlite3_column_double(a2, 6);
  LOBYTE(v11) = *(a1 + 48);
  v12 = [*(a1 + 32) _inqGenerateGroupsInfoDictionaryFromContentString:v4 normalizedString:v5 identifier:v6 category:v7 score:v8 groupId:v9 owningGroupId:v10 includeUUIDs:v11];
  [*(a1 + 40) addObject:v12];
}

- (id)dumpGroupsInfoWithIndexCategories:(id)categories includeUUIDs:(BOOL)ds
{
  categoriesCopy = categories;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__PSIDatabase_dumpGroupsInfoWithIndexCategories_includeUUIDs___block_invoke;
  v13[3] = &unk_1E7576310;
  v14 = categoriesCopy;
  selfCopy = self;
  dsCopy = ds;
  v8 = v7;
  v16 = v8;
  v9 = categoriesCopy;
  [(PSIDatabase *)self _inqSync:v13];
  v10 = v16;
  v11 = v8;

  return v8;
}

void __62__PSIDatabase_dumpGroupsInfoWithIndexCategories_includeUUIDs___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"SELECT content_string, normalized_string, lookup_identifier, category, rowid, owning_groupid, score from groups WHERE category IN (?");
    if ([*(a1 + 32) count] >= 2)
    {
      v3 = 1;
      do
      {
        [v2 appendString:{@", ?"}];
        ++v3;
      }

      while (v3 < [*(a1 + 32) count]);
    }

    [v2 appendString:{@" ORDER BY category ASC, normalized_string ASC"}]);
    v4 = [*(a1 + 40) _inqPrepareStatement:{objc_msgSend(v2, "UTF8String")}];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 1;
    v5 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PSIDatabase_dumpGroupsInfoWithIndexCategories_includeUUIDs___block_invoke_2;
    v10[3] = &unk_1E7576278;
    v10[5] = v11;
    v10[6] = v4;
    v10[4] = &buf;
    [v5 enumerateIndexesUsingBlock:v10];
    _Block_object_dispose(v11, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v4 = [*(a1 + 40) _inqPrepareStatement:{"SELECT content_string, normalized_string, lookup_identifier, category, rowid, owning_groupid, score FROM groups ORDER BY category ASC, normalized_string ASC"}];
  }

  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PSIDatabase_dumpGroupsInfoWithIndexCategories_includeUUIDs___block_invoke_522;
  v7[3] = &unk_1E75762E8;
  v7[4] = v6;
  v9 = *(a1 + 56);
  v8 = *(a1 + 48);
  [v6 _inqExecutePreparedStatement:v4 withStatementBlock:v7];
  if (sqlite3_finalize(v4) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to finalize statement";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }
}

void __62__PSIDatabase_dumpGroupsInfoWithIndexCategories_includeUUIDs___block_invoke_2(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = sqlite3_bind_int(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2);
  if (*(*(*(a1 + 32) + 8) + 24) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v3, 0xCu);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __62__PSIDatabase_dumpGroupsInfoWithIndexCategories_includeUUIDs___block_invoke_522(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  v5 = sqlite3_column_text(a2, 1);
  v6 = sqlite3_column_text(a2, 2);
  v7 = sqlite3_column_int(a2, 3);
  v8 = sqlite3_column_int64(a2, 4);
  v9 = sqlite3_column_int64(a2, 5);
  v10 = sqlite3_column_double(a2, 6);
  LOBYTE(v11) = *(a1 + 48);
  v12 = [*(a1 + 32) _inqGenerateGroupsInfoDictionaryFromContentString:v4 normalizedString:v5 identifier:v6 category:v7 score:v8 groupId:v9 owningGroupId:v10 includeUUIDs:v11];
  [*(a1 + 40) addObject:v12];
}

- (id)_inqNumberOfCollectionsByGroupIdMatchingGroupsWithIds:(id)ids
{
  v4 = MEMORY[0x1E695DF90];
  idsCopy = ids;
  dictionary = [v4 dictionary];
  [(PSIIntArray *)self->_matchingIds bindElements:idsCopy];

  inqNumberOfCollectionsByGroupIdMatchingGroupsWithIdsStatement = self->_inqNumberOfCollectionsByGroupIdMatchingGroupsWithIdsStatement;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PSIDatabase__inqNumberOfCollectionsByGroupIdMatchingGroupsWithIds___block_invoke;
  v10[3] = &unk_1E75762C0;
  v8 = dictionary;
  v11 = v8;
  [(PSIDatabase *)self executeStatement:inqNumberOfCollectionsByGroupIdMatchingGroupsWithIdsStatement withResultEnumerationBlock:v10];
  [(PSIIntArray *)self->_matchingIds unbind];

  return v8;
}

void __69__PSIDatabase__inqNumberOfCollectionsByGroupIdMatchingGroupsWithIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64AtColumn:0];
  v5 = [v3 int64AtColumn:1];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (unint64_t)_inqNumberOfCollectionsMatchingGroupWithId:(unint64_t)id
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(PSIStatement *)self->_inqNumberOfCollectionsMatchingGroupWithIdStatement bindInt64:id atIndex:1];
  inqNumberOfCollectionsMatchingGroupWithIdStatement = self->_inqNumberOfCollectionsMatchingGroupWithIdStatement;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PSIDatabase__inqNumberOfCollectionsMatchingGroupWithId___block_invoke;
  v7[3] = &unk_1E7576028;
  v7[4] = &v8;
  [(PSIDatabase *)self executeStatement:inqNumberOfCollectionsMatchingGroupWithIdStatement withResultEnumerationBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __58__PSIDatabase__inqNumberOfCollectionsMatchingGroupWithId___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 int64AtColumn:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)_inqNumberOfAssetsByGroupIdMatchingGroupsWithIds:(id)ids
{
  v4 = MEMORY[0x1E695DF90];
  idsCopy = ids;
  dictionary = [v4 dictionary];
  [(PSIIntArray *)self->_matchingIds bindElements:idsCopy];

  inqNumberOfAssetsByGroupIdMatchingGroupsWithIdsStatement = self->_inqNumberOfAssetsByGroupIdMatchingGroupsWithIdsStatement;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PSIDatabase__inqNumberOfAssetsByGroupIdMatchingGroupsWithIds___block_invoke;
  v10[3] = &unk_1E75762C0;
  v8 = dictionary;
  v11 = v8;
  [(PSIDatabase *)self executeStatement:inqNumberOfAssetsByGroupIdMatchingGroupsWithIdsStatement withResultEnumerationBlock:v10];
  [(PSIIntArray *)self->_matchingIds unbind];

  return v8;
}

void __64__PSIDatabase__inqNumberOfAssetsByGroupIdMatchingGroupsWithIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64AtColumn:0];
  v5 = [v3 int64AtColumn:1];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (unint64_t)_inqNumberOfAssetsMatchingGroupWithId:(unint64_t)id
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(PSIStatement *)self->_inqNumberOfAssetsMatchingGroupWithIdStatement bindInt64:id atIndex:1];
  inqNumberOfAssetsMatchingGroupWithIdStatement = self->_inqNumberOfAssetsMatchingGroupWithIdStatement;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PSIDatabase__inqNumberOfAssetsMatchingGroupWithId___block_invoke;
  v7[3] = &unk_1E7576028;
  v7[4] = &v8;
  [(PSIDatabase *)self executeStatement:inqNumberOfAssetsMatchingGroupWithIdStatement withResultEnumerationBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __53__PSIDatabase__inqNumberOfAssetsMatchingGroupWithId___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 int64AtColumn:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)uuidsForLookupIdentifier:(id)identifier resultTypes:(unint64_t)types
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__107328;
  v18 = __Block_byref_object_dispose__107329;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PSIDatabase_uuidsForLookupIdentifier_resultTypes___block_invoke;
  v10[3] = &unk_1E7576680;
  v10[4] = self;
  v7 = identifierCopy;
  v12 = &v14;
  typesCopy = types;
  v11 = v7;
  [(PSIDatabase *)self _inqSync:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __52__PSIDatabase_uuidsForLookupIdentifier_resultTypes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqGroupForLookupIdentifier:*(a1 + 40) searchResultTypes:*(a1 + 56)];
  if (v2)
  {
    v6 = v2;
    v3 = [*(a1 + 32) _inqAssetUUIDsForAssetIds:objc_msgSend(v2 range:"assetIds") creationDateSorted:{0, CFArrayGetCount(objc_msgSend(v2, "assetIds")), 0}];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (id)_inqGroupForLookupIdentifier:(id)identifier searchResultTypes:(unint64_t)types
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSIDatabase.m" lineNumber:1565 description:{@"Invalid parameter not satisfying: %@", @"lookupIdentifier.length > 0"}];
  }

  v15 = 0;
  v8 = _newUTF8String(identifierCopy, &v15);
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectLookupGroupIdLimit1");
  if (sqlite3_bind_text(Value, 1, v8, v15, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__PSIDatabase__inqGroupForLookupIdentifier_searchResultTypes___block_invoke;
  v14[3] = &unk_1E7576250;
  v14[4] = &buf;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v14];
  v10 = *(*(&buf + 1) + 24);
  if (v10)
  {
    v11 = [(PSIDatabase *)self _inqGroupWithMatchingGroupId:v10 dateFilter:0 searchResultTypes:types];
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = 0;
  if (v8)
  {
LABEL_8:
    free(v8);
  }

LABEL_9:
  _Block_object_dispose(&buf, 8);

  return v11;
}

sqlite3_int64 __62__PSIDatabase__inqGroupForLookupIdentifier_searchResultTypes___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)_inqGroupArraysFromGroupIdSets:(id)sets dateFilter:(id)filter searchResultTypes:(unint64_t)types progressBlock:(id)block
{
  v42 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  filterCopy = filter;
  blockCopy = block;
  array = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = setsCopy;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v37;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v12);
        }

        Count = CFSetGetCount(*(*(&v36 + 1) + 8 * i));
        if (Count > v15)
        {
          v15 = Count;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [(PSIIntArray *)self->_matchingIds prepareForNumberOfElements:v15];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        v25 = objc_autoreleasePoolPush();
        if (blockCopy)
        {
          v31 = 0;
          blockCopy[2](blockCopy, &v31, 0.5);
          if (v31)
          {
            objc_autoreleasePoolPop(v25);
            goto LABEL_23;
          }
        }

        v26 = [(PSIDatabase *)self _inqGroupsWithMatchingGroupIds:v24 dateFilter:filterCopy includeObjects:1 searchResultTypes:types matchingPredicateBlock:0];
        [array addObject:v26];

        objc_autoreleasePoolPop(v25);
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  [(PSIIntArray *)self->_matchingIds unprepare];
  v27 = [array copy];

  return v27;
}

- (double)_inqScoreForGroupID:(unint64_t)d
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectRankingScoreForGroupId");
  if (sqlite3_bind_int64(Value, 1, d) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__PSIDatabase__inqScoreForGroupID___block_invoke;
  v8[3] = &unk_1E7576250;
  v8[4] = &v9;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)_inqGroupWithStatement:(sqlite3_stmt *)statement dateFilter:(id)filter includeObjects:(BOOL)objects isFilenameStatement:(BOOL)filenameStatement excludingGroupId:(unint64_t)id searchResultTypes:(unint64_t)types
{
  typesCopy = types;
  filenameStatementCopy = filenameStatement;
  objectsCopy = objects;
  filterCopy = filter;
  v15 = sqlite3_column_int64(statement, 0);
  if (v15 == id)
  {
    v16 = 0;
    goto LABEL_18;
  }

  v17 = v15;
  v22 = 0;
  if (filterCopy || !objectsCopy)
  {
    v16 = objc_alloc_init(PSIGroup);
    [(PSIGroup *)v16 setGroupId:v17];
  }

  else
  {
    v16 = [(PSIDatabase *)self _inqDequeueGroupObjectWithId:v15 isCachedGroup:&v22];
    if (v22)
    {
      goto LABEL_18;
    }
  }

  if (filenameStatementCopy)
  {
    [(PSIGroup *)v16 prepareFromFilenameStatement:statement];
  }

  else
  {
    [(PSIGroup *)v16 prepareFromStatement:statement];
  }

  groupIdForObjectLookup = [(PSIGroup *)v16 groupIdForObjectLookup];
  if (PLSearchIndexCategoryIsSynonym([(PSIGroup *)v16 category]))
  {
    [(PSIDatabase *)self _inqScoreForGroupID:groupIdForObjectLookup];
    [(PSIGroup *)v16 setScore:?];
  }

  if (objectsCopy)
  {
    if (typesCopy)
    {
      v19 = [(PSIDatabase *)self _inqNewAssetIdsForGroupId:groupIdForObjectLookup dateFilter:filterCopy];
      [(PSIGroup *)v16 setAssetIds:v19];
      CFRelease(v19);
    }

    if ((typesCopy & 2) != 0)
    {
      v20 = [(PSIDatabase *)self _inqNewCollectionIdsForGroupId:groupIdForObjectLookup dateFilter:filterCopy];
      [(PSIGroup *)v16 setCollectionIds:v20];
      CFRelease(v20);
    }
  }

LABEL_18:

  return v16;
}

- (__CFSet)_inqNewGroupIdsWithCategories:(id)categories
{
  v4 = *MEMORY[0x1E695E480];
  categoriesCopy = categories;
  Mutable = CFSetCreateMutable(v4, 0, 0);
  v7 = [categoriesCopy count];
  v8 = CFArrayCreateMutable(v4, v7, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__PSIDatabase__inqNewGroupIdsWithCategories___block_invoke;
  v12[3] = &__block_descriptor_40_e12_v24__0Q8_B16l;
  v12[4] = v8;
  [categoriesCopy enumerateIndexesUsingBlock:v12];

  [(PSIIntArray *)self->_matchingIds bindElements:v8 range:0, v7];
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGroupsWithCategories");
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PSIDatabase__inqNewGroupIdsWithCategories___block_invoke_2;
  v11[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v11[4] = Mutable;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v11];
  [(PSIIntArray *)self->_matchingIds unbind];
  CFRelease(v8);
  return Mutable;
}

void __45__PSIDatabase__inqNewGroupIdsWithCategories___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

- (__CFSet)_inqNewGroupIdsMatchingFTSString:(id)string categories:(id)categories textIsSearchable:(BOOL)searchable
{
  searchableCopy = searchable;
  v36 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  categoriesCopy = categories;
  v30 = 0;
  v10 = _newUTF8String(stringCopy, &v30);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (categoriesCopy)
  {
    if (searchableCopy)
    {
      v12 = CFSTR("SELECT rowid FROM prefix WHERE normalized_string MATCH ? AND category IN (?");
    }

    else
    {
      v12 = CFSTR("SELECT rowid FROM groups WHERE lookup_identifier = ? AND category IN (?");
    }

    v13 = [MEMORY[0x1E696AD60] stringWithFormat:v12];
    for (i = 1; i < [categoriesCopy count]; ++i)
    {
      [v13 appendString:{@", ?"}];
    }

    [v13 appendString:@""]);
    v15 = v13;
    v16 = -[PSIDatabase _inqPrepareStatement:](self, "_inqPrepareStatement:", [v13 UTF8String]);
    *&v33 = 0;
    *(&v33 + 1) = &v33;
    v34 = 0x2020000000;
    v35 = 2;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__PSIDatabase__inqNewGroupIdsMatchingFTSString_categories_textIsSearchable___block_invoke_2;
    v24[3] = &unk_1E7576278;
    v24[5] = &v33;
    v24[6] = v16;
    v24[4] = &v26;
    [categoriesCopy enumerateIndexesUsingBlock:v24];
    v17 = sqlite3_bind_text(v16, 1, v10, v30, 0);
    *(v27 + 6) = v17;
    if (v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__PSIDatabase__inqNewGroupIdsMatchingFTSString_categories_textIsSearchable___block_invoke_497;
    v23[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v23[4] = Mutable;
    [(PSIDatabase *)self _inqExecutePreparedStatement:v16 withStatementBlock:v23];
    v18 = sqlite3_finalize(v16);
    *(v27 + 6) = v18;
    if (v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = @"Failed to finalize statement";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    if (searchableCopy)
    {
      v19 = @"selectPrefix";
    }

    else
    {
      v19 = @"selectLookupGroupId";
    }

    Value = CFDictionaryGetValue(self->_inqPreparedStatements, v19);
    v21 = sqlite3_bind_text(Value, 1, v10, v30, 0);
    *(v27 + 6) = v21;
    if (v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v33) = 138412290;
      *(&v33 + 4) = @"Failed to bind parameter";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v33, 0xCu);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __76__PSIDatabase__inqNewGroupIdsMatchingFTSString_categories_textIsSearchable___block_invoke;
    v25[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v25[4] = Mutable;
    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v25];
  }

  if (v10)
  {
    free(v10);
  }

  _Block_object_dispose(&v26, 8);

  return Mutable;
}

void __76__PSIDatabase__inqNewGroupIdsMatchingFTSString_categories_textIsSearchable___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

void __76__PSIDatabase__inqNewGroupIdsMatchingFTSString_categories_textIsSearchable___block_invoke_2(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = sqlite3_bind_int(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2);
  if (*(*(*(a1 + 32) + 8) + 24) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v3, 0xCu);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __76__PSIDatabase__inqNewGroupIdsMatchingFTSString_categories_textIsSearchable___block_invoke_497(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

- (id)_inqContentStringForGroupId:(unint64_t)id
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__107328;
  v13 = __Block_byref_object_dispose__107329;
  v14 = 0;
  Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectGroupAlt");
  if (sqlite3_bind_int64(Value, 1, id) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PSIDatabase__inqContentStringForGroupId___block_invoke;
  v8[3] = &unk_1E7576250;
  v8[4] = &v9;
  [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __43__PSIDatabase__inqContentStringForGroupId___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_text(a2, 0);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v3 encoding:4];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (__CFSet)_inqAssetIdsForGroupIds:(__CFSet *)ids
{
  if (CFSetGetCount(ids))
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    [(PSIIntArray *)self->_matchingIds bindElements:ids];
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"kSelectAssetIDsForGroupIDsStatement");
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__PSIDatabase__inqAssetIdsForGroupIds___block_invoke;
    v9[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v9[4] = Mutable;
    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v9];
    [(PSIIntArray *)self->_matchingIds unbind];
    return CFAutorelease(Mutable);
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v7;
}

void __39__PSIDatabase__inqAssetIdsForGroupIds___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int64(a2, 0);
  v4 = *(a1 + 32);

  CFSetAddValue(v4, v3);
}

- (id)assetUUIDsForGroupIDs:(__CFSet *)ds
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__107328;
  v11 = __Block_byref_object_dispose__107329;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__PSIDatabase_assetUUIDsForGroupIDs___block_invoke;
  v6[3] = &unk_1E7576208;
  v6[5] = &v7;
  v6[6] = ds;
  v6[4] = self;
  [(PSIDatabase *)self _inqSync:v6];
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__PSIDatabase_assetUUIDsForGroupIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqAssetUUIDsForAssetIds:{objc_msgSend(*(a1 + 32), "_inqAssetIdsForGroupIds:", *(a1 + 48))}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_inqAssetUUIDsForAssetIds:(__CFSet *)ids
{
  Count = CFSetGetCount(ids);
  if (Count)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
    [(PSIIntArray *)self->_matchingIds bindElements:ids];
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectAssetIdsIn");
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__PSIDatabase__inqAssetUUIDsForAssetIds___block_invoke;
    v10[3] = &unk_1E75761E0;
    v8 = v6;
    v11 = v8;
    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v10];
    [(PSIIntArray *)self->_matchingIds unbind];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

void __41__PSIDatabase__inqAssetUUIDsForAssetIds___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 0);
  v5 = sqlite3_column_int64(a2, 1);
  v6 = PLStringNewFromUUIDComponents(v4, v5);
  [*(a1 + 32) addObject:v6];
}

- (id)assetUUIDsForAssetIdsArray:(__CFArray *)array
{
  v17 = *MEMORY[0x1E69E9840];
  if (array)
  {
    Count = CFArrayGetCount(array);
    if (Count)
    {
      v6 = Count;
      if (self->_options & 1) != 0 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*buf = 138412290, *&buf[4] = @"expect searchable", _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu), (self->_options))
      {
        if (self->_databaseIsValid)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v14 = __Block_byref_object_copy__107328;
          v15 = __Block_byref_object_dispose__107329;
          v16 = 0;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __42__PSIDatabase_assetUUIDsForAssetIdsArray___block_invoke;
          v12[3] = &unk_1E7576590;
          v12[4] = self;
          v12[5] = buf;
          v12[6] = array;
          v12[7] = v6;
          [(PSIDatabase *)self _inqSync:v12];
          v7 = *(*&buf[8] + 40);
          _Block_object_dispose(buf, 8);

          goto LABEL_17;
        }
      }

      v8 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        if (self->_databaseIsValid)
        {
          v9 = @"valid";
        }

        else
        {
          v9 = @"invalid";
        }

        v10 = @"yes";
        if ((self->_options & 1) == 0)
        {
          v10 = @"no";
        }

        *buf = 138543618;
        *&buf[4] = v9;
        *&buf[12] = 2114;
        *&buf[14] = v10;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch asset UUIDs for assetIds. Database is: %{public}@. Options are searchable: %{public}@", buf, 0x16u);
      }
    }
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_17:

  return v7;
}

void __42__PSIDatabase_assetUUIDsForAssetIdsArray___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqAssetUUIDsForAssetIds:*(a1 + 48) range:0 creationDateSorted:{*(a1 + 56), 0}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)assetUUIDsForAssetIds:(__CFSet *)ids
{
  v15 = *MEMORY[0x1E69E9840];
  if (ids)
  {
    if (self->_options & 1) != 0 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*buf = 138412290, *&buf[4] = @"expect searchable", _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu), (self->_options))
    {
      if (self->_databaseIsValid)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v12 = __Block_byref_object_copy__107328;
        v13 = __Block_byref_object_dispose__107329;
        v14 = 0;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __37__PSIDatabase_assetUUIDsForAssetIds___block_invoke;
        v10[3] = &unk_1E7576208;
        v10[4] = self;
        v10[5] = buf;
        v10[6] = ids;
        [(PSIDatabase *)self _inqSync:v10];
        v5 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

        goto LABEL_16;
      }
    }

    v6 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (self->_databaseIsValid)
      {
        v7 = @"valid";
      }

      else
      {
        v7 = @"invalid";
      }

      v8 = @"yes";
      if ((self->_options & 1) == 0)
      {
        v8 = @"no";
      }

      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to fetch asset UUIDs for assetIds. Database is: %{public}@. Options are searchable: %{public}@", buf, 0x16u);
    }
  }

  v5 = MEMORY[0x1E695E0F0];
LABEL_16:

  return v5;
}

void __37__PSIDatabase_assetUUIDsForAssetIds___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqAssetUUIDsForAssetIds:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_inqCollectionUUIDsForCollectionIds:(__CFArray *)ids range:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:range.length];
    [(PSIIntArray *)self->_matchingIds bindElements:ids range:location, length];
    Value = CFDictionaryGetValue(self->_inqPreparedStatements, @"selectCollectionIdsIn");
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PSIDatabase__inqCollectionUUIDsForCollectionIds_range___block_invoke;
    v13[3] = &unk_1E75761E0;
    v14 = v8;
    v10 = v8;
    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v13];
    [(PSIIntArray *)self->_matchingIds unbind];
    v11 = [v10 copy];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

void __57__PSIDatabase__inqCollectionUUIDsForCollectionIds_range___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 0);
  v5 = sqlite3_column_int64(a2, 1);
  v6 = PLStringNewFromUUIDComponents(v4, v5);
  [*(a1 + 32) addObject:v6];
}

- (id)_inqAssetUUIDsForAssetIds:(__CFArray *)ids range:(_NSRange)range creationDateSorted:(BOOL)sorted
{
  if (range.length)
  {
    sortedCopy = sorted;
    length = range.length;
    location = range.location;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:range.length];
    [(PSIIntArray *)self->_matchingIds bindElements:ids range:location, length];
    if (sortedCopy)
    {
      v11 = @"selectAssetIdsInDateSorted";
    }

    else
    {
      v11 = @"selectAssetIdsIn";
    }

    Value = CFDictionaryGetValue(self->_inqPreparedStatements, v11);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__PSIDatabase__inqAssetUUIDsForAssetIds_range_creationDateSorted___block_invoke;
    v16[3] = &unk_1E75761E0;
    v17 = v10;
    v13 = v10;
    [(PSIDatabase *)self _inqExecutePreparedStatement:Value withStatementBlock:v16];
    [(PSIIntArray *)self->_matchingIds unbind];
    v14 = [v13 copy];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

void __66__PSIDatabase__inqAssetUUIDsForAssetIds_range_creationDateSorted___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 0);
  v5 = sqlite3_column_int64(a2, 1);
  v6 = PLStringNewFromUUIDComponents(v4, v5);
  [*(a1 + 32) addObject:v6];
}

- (void)deleteAllInitialSuggestions
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__PSIDatabase_deleteAllInitialSuggestions__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PSIDatabase *)self _inqSync:v2];
}

uint64_t __42__PSIDatabase_deleteAllInitialSuggestions__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PSIDatabase_deleteAllInitialSuggestions__block_invoke_2;
  v3[3] = &unk_1E75781E8;
  v3[4] = v1;
  return [v1 _inqPerformBatch:v3];
}

uint64_t __42__PSIDatabase_deleteAllInitialSuggestions__block_invoke_2(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 24), @"deleteInitialSuggestionsStatement");
  v3 = *(a1 + 32);

  return [v3 _inqExecutePreparedStatement:Value withStatementBlock:0];
}

- (void)updateInitialSuggestionsWithIdentifiers:(id)identifiers dateLastUsed:(id)used
{
  identifiersCopy = identifiers;
  usedCopy = used;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PSIDatabase_updateInitialSuggestionsWithIdentifiers_dateLastUsed___block_invoke;
  v10[3] = &unk_1E75761B8;
  v10[4] = self;
  v11 = identifiersCopy;
  v12 = usedCopy;
  v8 = usedCopy;
  v9 = identifiersCopy;
  [(PSIDatabase *)self _inqSync:v10];
}

void __68__PSIDatabase_updateInitialSuggestionsWithIdentifiers_dateLastUsed___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PSIDatabase_updateInitialSuggestionsWithIdentifiers_dateLastUsed___block_invoke_2;
  v5[3] = &unk_1E75761B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 _inqPerformBatch:v5];
}

void __68__PSIDatabase_updateInitialSuggestionsWithIdentifiers_dateLastUsed___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 suggestionTemplateKey];
        [v8 _inqUpdateInitialSuggestionWithTemplateKey:v9 firstGroupId:objc_msgSend(v7 secondGroupId:"firstGroupId") dateLastUsed:{objc_msgSend(v7, "secondGroupId"), *(a1 + 48)}];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (id)fetchInitialSuggestions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__107328;
  v9 = __Block_byref_object_dispose__107329;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__PSIDatabase_fetchInitialSuggestions__block_invoke;
  v4[3] = &unk_1E7578910;
  v4[4] = self;
  v4[5] = &v5;
  [(PSIDatabase *)self _inqSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __38__PSIDatabase_fetchInitialSuggestions__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__PSIDatabase_fetchInitialSuggestions__block_invoke_2;
  v2[3] = &unk_1E7578910;
  return [*(a1 + 32) _inqPerformBatch:v2];
}

void __38__PSIDatabase_fetchInitialSuggestions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqSelectInitialSuggestions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)saveInitialSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PSIDatabase_saveInitialSuggestions___block_invoke;
  v6[3] = &unk_1E7578848;
  v6[4] = self;
  v7 = suggestionsCopy;
  v5 = suggestionsCopy;
  [(PSIDatabase *)self _inqSync:v6];
}

void __38__PSIDatabase_saveInitialSuggestions___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PSIDatabase_saveInitialSuggestions___block_invoke_2;
  v5[3] = &unk_1E7578848;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 _inqPerformBatch:v5];
}

void __38__PSIDatabase_saveInitialSuggestions___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _inqInsertInitialSuggestion:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)removeUnusedGroups
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33__PSIDatabase_removeUnusedGroups__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PSIDatabase *)self _inqSync:v2];
}

uint64_t __33__PSIDatabase_removeUnusedGroups__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__PSIDatabase_removeUnusedGroups__block_invoke_2;
  v3[3] = &unk_1E75781E8;
  v3[4] = v1;
  return [v1 _inqPerformBatch:v3];
}

- (void)_removeUUID:(id)d categories:(id)categories objectType:(unint64_t)type completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  categoriesCopy = categories;
  completionCopy = completion;
  if (((self->_options & 2) != 0 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*buf = 138412290, v19 = @"expect writable", _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu), (self->_options & 2) != 0)) && self->_databaseIsValid)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PSIDatabase__removeUUID_categories_objectType_completion___block_invoke;
    v13[3] = &unk_1E7576190;
    v13[4] = self;
    v14 = dCopy;
    v15 = categoriesCopy;
    typeCopy = type;
    v16 = completionCopy;
    [(PSIDatabase *)self _inqAsync:v13];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __60__PSIDatabase__removeUUID_categories_objectType_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PSIDatabase__removeUUID_categories_objectType_completion___block_invoke_2;
  v11[3] = &unk_1E7576168;
  v11[4] = v2;
  v12 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v13 = v3;
  v14 = v4;
  [v2 _inqPerformBatch:v11];
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6, v7, v8, v9);
  }
}

uint64_t __60__PSIDatabase__removeUUID_categories_objectType_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _inqRemoveUUID:*(a1 + 40) categories:*(a1 + 48) objectType:*(a1 + 56) isInBatch:1];
  v2 = *(a1 + 32);

  return [v2 _inqRemoveUnusedGroups];
}

- (void)_removeUUIDs:(id)ds objectType:(unint64_t)type deferRemovingUnusedGroups:(BOOL)groups completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  if ((self->_options & 2) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = @"expect writable";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v12 = [dsCopy count];
  if ((self->_options & 2) != 0 && self->_databaseIsValid && v12)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__PSIDatabase__removeUUIDs_objectType_deferRemovingUnusedGroups_completion___block_invoke;
    v13[3] = &unk_1E7576140;
    v13[4] = self;
    v15 = completionCopy;
    v14 = dsCopy;
    typeCopy = type;
    groupsCopy = groups;
    [(PSIDatabase *)self _inqAsync:v13];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __76__PSIDatabase__removeUUIDs_objectType_deferRemovingUnusedGroups_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__PSIDatabase__removeUUIDs_objectType_deferRemovingUnusedGroups_completion___block_invoke_462;
    v11[3] = &unk_1E7576118;
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v12 = v3;
    v13 = v4;
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    [v2 _inqPerformBatch:v11];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v5, v6, v7);
    }
  }

  else
  {
    v9 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v17 = "[PSIDatabase _removeUUIDs:objectType:deferRemovingUnusedGroups:completion:]_block_invoke";
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unable to perform PSI operation on NULL db: %{public}s", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }
}

void __76__PSIDatabase__removeUUIDs_objectType_deferRemovingUnusedGroups_completion___block_invoke_462(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _inqRemoveUUID:*(*(&v7 + 1) + 8 * v6++) objectType:*(a1 + 48) isInBatch:{1, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 40) _inqRemoveUnusedGroups];
  }
}

- (void)removeCollectionWithUUID:(id)d completion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  dCopy2 = d;
  v9 = [v6 arrayWithObjects:&dCopy count:1];

  [(PSIDatabase *)self removeCollectionsWithUUIDs:v9 completion:completionCopy, dCopy, v11];
}

- (void)removeAssetWithUUID:(id)d completion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  dCopy2 = d;
  v9 = [v6 arrayWithObjects:&dCopy count:1];

  [(PSIDatabase *)self removeAssetsWithUUIDs:v9 completion:completionCopy, dCopy, v11];
}

- (void)addCollections:(id)collections deferRemovingUnusedGroups:(BOOL)groups withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  completionCopy = completion;
  v10 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = collectionsCopy;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Adding collections: %@", buf, 0xCu);
  }

  if ((self->_options & 2) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = @"expect writable";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v11 = [(__CFString *)collectionsCopy count];
  if ((self->_options & 2) != 0 && self->_databaseIsValid && v11)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__PSIDatabase_addCollections_deferRemovingUnusedGroups_withCompletion___block_invoke;
    v12[3] = &unk_1E75760C8;
    v12[4] = self;
    v14 = completionCopy;
    v13 = collectionsCopy;
    groupsCopy = groups;
    [(PSIDatabase *)self _inqAsync:v12];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __71__PSIDatabase_addCollections_deferRemovingUnusedGroups_withCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__PSIDatabase_addCollections_deferRemovingUnusedGroups_withCompletion___block_invoke_460;
    v6[3] = &unk_1E7576AC8;
    v6[4] = v2;
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    [v2 _inqPerformBatch:v6];
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  else
  {
    v4 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v10 = "[PSIDatabase addCollections:deferRemovingUnusedGroups:withCompletion:]_block_invoke";
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Unable to perform PSI operation on NULL db: %{public}s", buf, 0xCu);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void __71__PSIDatabase_addCollections_deferRemovingUnusedGroups_withCompletion___block_invoke_460(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v48 = [[PSIGroupCache alloc] initWithDelegate:*(a1 + 32)];
  v47 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v50 = a1;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v2)
  {
    v40 = *v65;
    *&v3 = 138543362;
    v37 = v3;
    do
    {
      v45 = 0;
      v41 = v2;
      do
      {
        if (*v65 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v64 + 1) + 8 * v45);
        context = objc_autoreleasePoolPush();
        v5 = [v4 uuid];
        v6 = [v4 title];
        v42 = v5;
        v43 = v6;
        if ([v5 length] && objc_msgSend(v6, "length"))
        {
          v7 = [v4 tokens];
          if (v7 && v6)
          {
            [*(v50 + 32) _inqRemoveUUID:v5 objectType:1 isInBatch:1];
            v49 = [*(v50 + 32) _inqCollectionIdWithCollection:v4];
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v38 = v7;
            v8 = [v7 reverseObjectEnumerator];
            v9 = [v8 countByEnumeratingWithState:&v60 objects:v75 count:16];
            if (v9)
            {
              LOWORD(v10) = 0;
              v11 = 0;
              v12 = *v61;
              v46 = v8;
              do
              {
                v13 = 0;
                v14 = v10;
                do
                {
                  if (*v61 != v12)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v15 = *(*(&v60 + 1) + 8 * v13);
                  v16 = [v15 text];
                  v17 = [v15 identifier];
                  v10 = [v15 category];
                  v18 = [v15 owningCategory];
                  if (v18 == v14)
                  {
                    v19 = v11;
                  }

                  else
                  {
                    v19 = 0;
                  }

                  if (v18)
                  {
                    v20 = v19;
                  }

                  else
                  {
                    v20 = 0;
                  }

                  v11 = [(PSIGroupCache *)v48 idOfGroupWithText:v16 identifier:v17 category:v10 owningGroupId:v20];
                  [*(v50 + 32) _inqUpdateGCTableWithGroupId:v11 collectionId:v49];
                  v21 = PLSearchIndexSynonymCategoryForCategory(v10);
                  v55[0] = MEMORY[0x1E69E9820];
                  v55[1] = 3221225472;
                  v55[2] = __71__PSIDatabase_addCollections_deferRemovingUnusedGroups_withCompletion___block_invoke_461;
                  v55[3] = &unk_1E75760F0;
                  v59 = v21;
                  v58 = v11;
                  v56 = v47;
                  v57 = &v68;
                  [v4 enumerateSynonymsForOriginalContentString:v16 orOriginalLookupIdentifier:v17 handler:v55];

                  ++v13;
                  v14 = v10;
                }

                while (v9 != v13);
                v8 = v46;
                v9 = [v46 countByEnumeratingWithState:&v60 objects:v75 count:16];
              }

              while (v9);
            }

            v7 = v38;
          }
        }

        else
        {
          v7 = PLSearchBackendPSIDatabaseGetLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v22 = [v4 uuid];
            *buf = v37;
            *v74 = v22;
            _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Missing required search attributes to index Collection UUID: %{public}@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(context);
        ++v45;
      }

      while (v45 != v41);
      v2 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v2);
  }

  v23 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [(PSIGroupCache *)v48 numberOfGroupsQueried];
    v25 = [(PSIGroupCache *)v48 numberOfGroupsChecked];
    *buf = 67240448;
    *v74 = v24;
    *&v74[4] = 1026;
    *&v74[6] = v25;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_INFO, "Search Indexing: Queried %{public}d groups for %{public}d groups checked.", buf, 0xEu);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = v47;
  v27 = [v26 countByEnumeratingWithState:&v51 objects:v72 count:16];
  if (v27)
  {
    v28 = *v52;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v52 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v51 + 1) + 8 * i);
        v31 = *(v50 + 32);
        v32 = [v30 text];
        v33 = [v30 identifier];
        [v31 _inqUpdateGroupForText:v32 identifier:v33 category:objc_msgSend(v30 owningGroupId:{"category"), objc_msgSend(v30, "owningGroupId")}];
      }

      v27 = [v26 countByEnumeratingWithState:&v51 objects:v72 count:16];
    }

    while (v27);
  }

  v34 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v26 count];
    v36 = v69[3];
    *buf = 67240448;
    *v74 = v35;
    *&v74[4] = 1026;
    *&v74[6] = v36;
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_INFO, "Search Indexing: Registered %{public}d synonyms for %{public}d synonyms encountered.", buf, 0xEu);
  }

  if ((*(v50 + 48) & 1) == 0)
  {
    [*(v50 + 32) _inqRemoveUnusedGroups];
  }

  _Block_object_dispose(&v68, 8);
}

void __71__PSIDatabase_addCollections_deferRemovingUnusedGroups_withCompletion___block_invoke_461(uint64_t a1, void *a2, int a3, void *a4)
{
  if (*(a1 + 56) == a3)
  {
    v8 = a4;
    v9 = a2;
    v10 = [[PSISynonym alloc] initWithText:v9 category:a3 owningGroupId:*(a1 + 48) identifier:v8];

    [*(a1 + 32) addObject:v10];
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (void)addCollection:(id)collection withCompletion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  collectionCopy2 = collection;
  v9 = [v6 arrayWithObjects:&collectionCopy count:1];

  [(PSIDatabase *)self addCollections:v9 withCompletion:completionCopy, collectionCopy, v11];
}

- (void)addAssets:(id)assets deferRemovingUnusedGroups:(BOOL)groups withCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  completionCopy = completion;
  v10 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = assetsCopy;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Adding assets: %@", buf, 0xCu);
  }

  if ((self->_options & 2) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = @"expect writable";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v11 = [(__CFString *)assetsCopy count];
  if ((self->_options & 2) == 0)
  {
    goto LABEL_7;
  }

  databaseIsValid = self->_databaseIsValid;
  if (databaseIsValid && v11)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__PSIDatabase_addAssets_deferRemovingUnusedGroups_withCompletion___block_invoke;
    v15[3] = &unk_1E75760C8;
    v15[4] = self;
    v17 = completionCopy;
    v16 = assetsCopy;
    groupsCopy = groups;
    [(PSIDatabase *)self _inqAsync:v15];

    goto LABEL_18;
  }

  if (!databaseIsValid)
  {
LABEL_7:
    v12 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self->_databaseIsValid)
      {
        v13 = @"the database is not writable";
      }

      else
      {
        v13 = @"the database is invalid";
      }

      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Detected invalid state, unable to add assets because %@", buf, 0xCu);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_18:
}

void __66__PSIDatabase_addAssets_deferRemovingUnusedGroups_withCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__PSIDatabase_addAssets_deferRemovingUnusedGroups_withCompletion___block_invoke_451;
    v6[3] = &unk_1E7576AC8;
    v6[4] = v2;
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    [v2 _inqPerformBatch:v6];
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  else
  {
    v4 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v10 = "[PSIDatabase addAssets:deferRemovingUnusedGroups:withCompletion:]_block_invoke";
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Unable to perform PSI operation on NULL db: %{public}s", buf, 0xCu);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void __66__PSIDatabase_addAssets_deferRemovingUnusedGroups_withCompletion___block_invoke_451(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v2 = [[PSIGroupCache alloc] initWithDelegate:*(a1 + 32)];
  v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v49 = a1;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v3)
  {
    v39 = *v65;
    *&v4 = 138412290;
    v37 = v4;
    v48 = v2;
    do
    {
      v43 = 0;
      v40 = v3;
      do
      {
        if (*v65 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v64 + 1) + 8 * v43);
        context = objc_autoreleasePoolPush();
        v6 = [v5 uuid];
        v7 = v6 == 0;

        if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = v37;
          *v74 = @"expect uuid";
          _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        v42 = [v5 uuid];
        v44 = [v5 tokens];
        if (v44)
        {
          if ([v5 isUpdate])
          {
            v8 = PLSearchIndexCategoriesForAssetPropertySet([v5 propertySets]);
            [*(v49 + 32) _inqRemoveUUID:v42 categories:v8 objectType:0 isInBatch:1];
          }

          else
          {
            [*(v49 + 32) _inqRemoveUUID:v42 objectType:0 isInBatch:1];
          }

          v47 = [*(v49 + 32) _inqAssetIdWithAsset:v5];
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v9 = [v44 reverseObjectEnumerator];
          v10 = [v9 countByEnumeratingWithState:&v60 objects:v75 count:16];
          if (v10)
          {
            LOWORD(v11) = 0;
            v12 = 0;
            v13 = *v61;
            v45 = v9;
            do
            {
              v14 = 0;
              v15 = v11;
              do
              {
                if (*v61 != v13)
                {
                  objc_enumerationMutation(v45);
                }

                v16 = *(*(&v60 + 1) + 8 * v14);
                v17 = [v16 text];
                v18 = [v16 identifier];
                v11 = [v16 category];
                v19 = [v16 owningCategory];
                if (v19 == v15)
                {
                  v20 = v12;
                }

                else
                {
                  v20 = 0;
                }

                if (v19)
                {
                  v21 = v20;
                }

                else
                {
                  v21 = 0;
                }

                v12 = [(PSIGroupCache *)v48 idOfGroupWithText:v17 identifier:v18 category:v11 owningGroupId:v21];
                [*(v49 + 32) _inqUpdateGATableWithGroupId:v12 assetId:v47];
                v22 = PLSearchIndexSynonymCategoryForCategory(v11);
                v54[0] = MEMORY[0x1E69E9820];
                v54[1] = 3221225472;
                v54[2] = __66__PSIDatabase_addAssets_deferRemovingUnusedGroups_withCompletion___block_invoke_457;
                v54[3] = &unk_1E75760A0;
                v59 = v22;
                v58 = v12;
                v55 = v46;
                v56 = 0;
                v57 = &v68;
                [v5 enumerateSynonymsForOriginalContentString:v17 orOriginalLookupIdentifier:v18 handler:v54];

                ++v14;
                v15 = v11;
              }

              while (v10 != v14);
              v9 = v45;
              v10 = [v45 countByEnumeratingWithState:&v60 objects:v75 count:16];
            }

            while (v10);
          }

          v2 = v48;
        }

        objc_autoreleasePoolPop(context);
        ++v43;
      }

      while (v43 != v40);
      v3 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v3);
  }

  v23 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [(PSIGroupCache *)v2 numberOfGroupsQueried];
    v25 = [(PSIGroupCache *)v2 numberOfGroupsChecked];
    *buf = 67240448;
    *v74 = v24;
    *&v74[4] = 1026;
    *&v74[6] = v25;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_INFO, "Search Indexing: Queried %{public}d groups for %{public}d group checks.", buf, 0xEu);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v26 = v46;
  v27 = [v26 countByEnumeratingWithState:&v50 objects:v72 count:16];
  if (v27)
  {
    v28 = *v51;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v50 + 1) + 8 * i);
        v31 = *(v49 + 32);
        v32 = [v30 text];
        v33 = [v30 identifier];
        [v31 _inqUpdateGroupForText:v32 identifier:v33 category:objc_msgSend(v30 owningGroupId:{"category"), objc_msgSend(v30, "owningGroupId")}];
      }

      v27 = [v26 countByEnumeratingWithState:&v50 objects:v72 count:16];
    }

    while (v27);
  }

  v34 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v26 count];
    v36 = v69[3];
    *buf = 67240448;
    *v74 = v35;
    *&v74[4] = 1026;
    *&v74[6] = v36;
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_INFO, "Search Indexing: Registered %{public}d synonyms for %{public}d synonyms encountered.", buf, 0xEu);
  }

  if ((*(v49 + 48) & 1) == 0)
  {
    [*(v49 + 32) _inqRemoveUnusedGroups];
  }

  _Block_object_dispose(&v68, 8);
}

void __66__PSIDatabase_addAssets_deferRemovingUnusedGroups_withCompletion___block_invoke_457(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  if (*(a1 + 64) == a3)
  {
    v11 = v7;
    v8 = a4;
    v9 = [[PSISynonym alloc] initWithText:v11 category:a3 owningGroupId:*(a1 + 56) identifier:v8];

    [*(a1 + 32) addObject:v9];
    v10 = *(a1 + 40);
    if (v10)
    {
      [v10 addObject:v11];
    }

    ++*(*(*(a1 + 48) + 8) + 24);

    v7 = v11;
  }
}

- (void)addAsset:(id)asset withCompletion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  assetCopy2 = asset;
  v9 = [v6 arrayWithObjects:&assetCopy count:1];

  [(PSIDatabase *)self addAssets:v9 withCompletion:completionCopy, assetCopy, v11];
}

- (void)updateRankingScoreForGroups:(id)groups withCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  completionCopy = completion;
  if ((self->_options & 2) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = @"expect writable";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = [groupsCopy count];
  if ((self->_options & 2) != 0 && self->_databaseIsValid && (v9 = v8) != 0)
  {
    v10 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v16 = v9;
      v17 = 2112;
      v18 = groupsCopy;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "PSI Ranking Update: Updating group rankings for %ld groups. Groups: %@", buf, 0x16u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PSIDatabase_updateRankingScoreForGroups_withCompletion___block_invoke;
    v11[3] = &unk_1E7576078;
    v11[4] = self;
    v13 = completionCopy;
    v12 = groupsCopy;
    v14 = v9;
    [(PSIDatabase *)self _inqAsync:v11];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __58__PSIDatabase_updateRankingScoreForGroups_withCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PSIDatabase_updateRankingScoreForGroups_withCompletion___block_invoke_443;
    v8[3] = &unk_1E75782F8;
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v9 = v3;
    v10 = v4;
    v11 = *(a1 + 56);
    [v2 _inqPerformBatch:v8];
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  else
  {
    v6 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v13 = "[PSIDatabase updateRankingScoreForGroups:withCompletion:]_block_invoke";
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to perform PSI operation on NULL db: %{public}s", buf, 0xCu);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

void __58__PSIDatabase_updateRankingScoreForGroups_withCompletion___block_invoke_443(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  v18 = 0;
  v4 = *v21;
  obj = v1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v21 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v20 + 1) + 8 * i);
      v7 = *(a1 + 40);
      v8 = [v6 category];
      v9 = [v6 owningGroupId];
      v10 = [v6 contentString];
      v11 = [v6 normalizedString];
      v12 = [v6 lookupIdentifier];
      [v6 score];
      LOWORD(v16) = 256;
      v13 = [v7 _inqGroupIdForCategory:v8 owningGroupId:v9 contentString:v10 normalizedString:v11 identifier:v12 rankingScore:0 insertIfNeeded:0 tokenOutput:v16 shouldUpdateOwningGroupId:? shouldUpdateRankingScore:?];

      if (!v13)
      {
        v14 = PLSearchBackendPSIDatabaseGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v6;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "PSI Ranking Update: Failed to find group for ranking score update: %@", buf, 0xCu);
        }

        ++v18;
      }
    }

    v3 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  }

  while (v3);

  if (v18)
  {
    v1 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      *buf = 134218240;
      v25 = v18;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&dword_19BF1F000, v1, OS_LOG_TYPE_ERROR, "PSI Ranking Update: Failed to update ranking score for %ld of %ld groups.", buf, 0x16u);
    }

LABEL_15:
  }
}

- (void)_ingRebuildPrefixTableIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "Running database prefix table integrity check", &v15, 2u);
  }

  v4 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT INTO prefix(prefix) VALUES('integrity-check')"];
  v5 = sqlite3_step(v4);
  sqlite3_finalize(v4);
  v6 = PLSearchBackendPSIDatabaseGetLog();
  v7 = v6;
  if (v5 == 267)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Database corruption detected in the prefix table.", &v15, 2u);
    }

    v8 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT INTO prefix(prefix) VALUES('rebuild')"];
    v9 = sqlite3_step(v8);
    sqlite3_finalize(v8);
    v7 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"error";
      if (v9 == 101)
      {
        v10 = @"success";
      }

      v15 = 138543618;
      v16 = v10;
      v17 = 1026;
      v18 = v9;
      v11 = "Completed prefix table rebuild: %{public}@. Result code: %{public}d";
      v12 = v7;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 18;
      goto LABEL_12;
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    v11 = "Prefix table integrity check successful";
    v12 = v7;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 2;
LABEL_12:
    _os_log_impl(&dword_19BF1F000, v12, v13, v11, &v15, v14);
  }
}

- (void)dropDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Dropping database", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PSIDatabase_dropDatabaseWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7576050;
  aBlock[4] = self;
  v12 = completionCopy;
  v6 = completionCopy;
  v7 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PSIDatabase_dropDatabaseWithCompletion___block_invoke_2;
  v9[3] = &unk_1E7577C08;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(PSIDatabase *)self _inqAsync:v9];
}

uint64_t __42__PSIDatabase_dropDatabaseWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 16) = 0;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __42__PSIDatabase_dropDatabaseWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    [v2 _finalizeEverything];
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v3 _dropDatabase:v5 withCompletion:v4];
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    return v7();
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_inqDatabase)
  {
    [(PSIDatabase *)self _finalizeEverything];
    v3 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Closing sqlite3 database", buf, 2u);
    }

    v4 = sqlite3_close(self->_inqDatabase);
    self->_inqDatabase = 0;
    if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = @"Couldn't close db";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }
  }

  inqGroupObjectsById = self->_inqGroupObjectsById;
  if (inqGroupObjectsById)
  {
    CFRelease(inqGroupObjectsById);
  }

  v6.receiver = self;
  v6.super_class = PSIDatabase;
  [(PSIDatabase *)&v6 dealloc];
}

- (void)_finalizeEverything
{
  if (self->_inqDatabase)
  {
    inqPreparedStatements = self->_inqPreparedStatements;
    if (inqPreparedStatements)
    {
      CFDictionaryApplyFunction(inqPreparedStatements, finalizeSqliteStatementInDictionary, 0);
      CFRelease(self->_inqPreparedStatements);
      self->_inqPreparedStatements = 0;
    }

    [(PSIStatement *)self->_assetUUIDByAssetIdWithAssetIdsStatement finalizze];
    [(PSIStatement *)self->_collectionResultByCollectionIdWithCollectionIdsStatement finalizze];
    [(PSIStatement *)self->_inqAssetIdsByGroupIdForAssetIdsStatement finalizze];
    [(PSIStatement *)self->_inqCollectionIdsByGroupIdForCollectionIdsStatement finalizze];
    [(PSIStatement *)self->_inqNumberOfAssetsMatchingGroupWithIdStatement finalizze];
    [(PSIStatement *)self->_inqNumberOfAssetsByGroupIdMatchingGroupsWithIdsStatement finalizze];
    [(PSIStatement *)self->_inqNumberOfCollectionsMatchingGroupWithIdStatement finalizze];
    [(PSIStatement *)self->_inqNumberOfCollectionsByGroupIdMatchingGroupsWithIdsStatement finalizze];
    [(PSIStatement *)self->_inqIdsOfAllGroupsStatement finalizze];
    inqIdsOfAllGroupsInPrefixStatement = self->_inqIdsOfAllGroupsInPrefixStatement;

    [(PSIStatement *)inqIdsOfAllGroupsInPrefixStatement finalizze];
  }
}

- (__CFDictionary)_inqPrepareStatementsForOptions:(int64_t)options tokenizerName:(id)name
{
  optionsCopy = options;
  nameCopy = name;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  if ((optionsCopy & 2) != 0)
  {
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE TABLE IF NOT EXISTS groups(category INT2, owning_groupid INT, content_string TEXT, normalized_string TEXT, lookup_identifier TEXT, score REAL, token_ranges_0 INT8, token_ranges_1 INT8, UNIQUE(category, owning_groupid, content_string, lookup_identifier, token_ranges_0, token_ranges_1))"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE TABLE IF NOT EXISTS assets(uuid_0 INT, uuid_1 INT, creationDate INT, UNIQUE(uuid_0, uuid_1))"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE TABLE IF NOT EXISTS ga(groupid INT, assetid INT, PRIMARY KEY(groupid, assetid))"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE TABLE IF NOT EXISTS collections(uuid_0 INT, uuid_1 INT, startDate INT, endDate INT, title TEXT, subtitle TEXT, type INT8, keyAssetUUIDPrivate TEXT, keyAssetUUIDShared TEXT, assetsCountPrivate INT32, assetsCountShared INT32, sortDate DOUBLE, UNIQUE(uuid_0, uuid_1))"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE TABLE IF NOT EXISTS gc(groupid INT, collectionid INT, PRIMARY KEY(groupid, collectionid))"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE TABLE IF NOT EXISTS tmp_used_groupids (groupid INTEGER PRIMARY KEY);"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE TABLE IF NOT EXISTS initial_suggestions (date_last_used REAL, first_group_id INT, second_group_id INT, template_key TEXT, first_category INT, second_category INT, template_type INT, template_content_type INT, template_date_type INT, template_style_type INT, lookup_identifier TEXT, UNIQUE (first_group_id, second_group_id, template_key))"];
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE VIRTUAL TABLE IF NOT EXISTS prefix USING fts5(content='groups', normalized_string, category UNINDEXED, tokenize = '%@')", nameCopy];
    -[PSIDatabase _inqPrepareAndExecuteStatement:](self, "_inqPrepareAndExecuteStatement:", [nameCopy UTF8String]);
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE TRIGGER IF NOT EXISTS trigger_groups_insert AFTER INSERT ON groups BEGIN INSERT INTO prefix(rowid, normalized_string, category) VALUES (new.rowid, new.normalized_string, new.category); END;"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE TRIGGER IF NOT EXISTS trigger_groups_delete AFTER DELETE ON groups BEGIN INSERT INTO prefix(prefix, rowid, normalized_string, category) VALUES('delete', old.rowid, old.normalized_string, old.category); END;"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"DROP INDEX IF EXISTS group_pk"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"DROP TABLE IF EXISTS lookup"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE INDEX IF NOT EXISTS groupid_by_contentstring_category_lookupid_owner ON groups(content_string, category, lookup_identifier, owning_groupid)"];
    1204 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX IF NOT EXISTS groupid_by_normalized_string_category_lookupid_owner ON groups(normalized_string, category, lookup_identifier, owning_groupid) WHERE category = %lu OR category = %lu", 1203, 1204];
    -[PSIDatabase _inqPrepareAndExecuteStatement:](self, "_inqPrepareAndExecuteStatement:", [1204 UTF8String]);
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE INDEX IF NOT EXISTS asset_pk ON assets(uuid_0, uuid_1)"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE INDEX IF NOT EXISTS ga_assetid ON ga(assetid, groupid)"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE INDEX IF NOT EXISTS ga_groupid ON ga(groupid);"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE INDEX IF NOT EXISTS collection_pk ON collections(uuid_0, uuid_1)"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE INDEX IF NOT EXISTS gc_collectionid ON gc(collectionid)"];
    [(PSIDatabase *)self _inqPrepareAndExecuteStatement:"CREATE INDEX IF NOT EXISTS gc_groupid ON gc(groupid);"];
    v10 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT INTO groups VALUES(?, ?, ?, ?, ?, ?, ?, ?)"];
    if (v10)
    {
      CFDictionarySetValue(Mutable, @"insertGroup", v10);
    }

    v11 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM groups WHERE rowid IN matchingIds"];
    if (v11)
    {
      CFDictionarySetValue(Mutable, @"deleteGroupsWithIds", v11);
    }

    v12 = [(PSIDatabase *)self _inqPrepareStatement:"UPDATE groups SET owning_groupid = ? WHERE rowid = ?"];
    if (v12)
    {
      CFDictionarySetValue(Mutable, @"updateGroupOwningGroupId", v12);
    }

    v13 = [(PSIDatabase *)self _inqPrepareStatement:"UPDATE groups SET score = ? WHERE rowid = ?"];
    if (v13)
    {
      CFDictionarySetValue(Mutable, @"updateGroupRankingScore", v13);
    }

    v14 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid, category, content_string FROM groups"];
    if (v14)
    {
      CFDictionarySetValue(Mutable, @"selectAllGroups", v14);
    }

    v15 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid, owning_groupid, score FROM groups WHERE category = ? AND normalized_string = ? AND lookup_identifier = ? LIMIT 1"];
    if (v15)
    {
      CFDictionarySetValue(Mutable, @"selectGroupWithNormalizedStr", v15);
    }

    v16 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM groups WHERE lookup_identifier = ?"];
    if (v16)
    {
      CFDictionarySetValue(Mutable, @"selectGroupsForLookupId", v16);
    }

    v17 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT groupid FROM gc WHERE groupid IN matchingIds"];
    if (v17)
    {
      CFDictionarySetValue(Mutable, @"selectGroupIdsInGCWithGroupIdsStatement", v17);
    }

    v18 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT INTO assets(uuid_0, uuid_1, creationDate) VALUES(?, ?, ?)"];
    if (v18)
    {
      CFDictionarySetValue(Mutable, @"insertAsset", v18);
    }

    v19 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM assets WHERE rowid = ?"];
    if (v19)
    {
      CFDictionarySetValue(Mutable, @"deleteAsset", v19);
    }

    v20 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets WHERE uuid_0 = ? AND uuid_1 = ?"];
    if (v20)
    {
      CFDictionarySetValue(Mutable, @"selectAsset", v20);
    }

    v21 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT INTO ga VALUES(?, ?)"];
    if (v21)
    {
      CFDictionarySetValue(Mutable, @"insertGA", v21);
    }

    v22 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM ga WHERE assetid = ?"];
    if (v22)
    {
      CFDictionarySetValue(Mutable, @"deleteGA", v22);
    }

    v23 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT groupid FROM ga WHERE assetid = ?"];
    if (v23)
    {
      CFDictionarySetValue(Mutable, @"selectGAInv", v23);
    }

    v24 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT INTO collections(uuid_0, uuid_1, startDate, endDate, title, subtitle, type, assetsCountPrivate, assetsCountShared, sortDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
    if (v24)
    {
      CFDictionarySetValue(Mutable, @"insertCollection", v24);
    }

    v25 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM collections WHERE rowid = ?"];
    if (v25)
    {
      CFDictionarySetValue(Mutable, @"deleteCollection", v25);
    }

    v26 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections WHERE uuid_0 = ? AND uuid_1 = ?"];
    if (v26)
    {
      CFDictionarySetValue(Mutable, @"selectCollectionForUUID", v26);
    }

    v27 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT uuid_0, uuid_1, type FROM collections"];
    if (v27)
    {
      CFDictionarySetValue(Mutable, @"listCollections", v27);
    }

    v28 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT INTO gc VALUES(?, ?)"];
    if (v28)
    {
      CFDictionarySetValue(Mutable, @"insertGC", v28);
    }

    v29 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM gc WHERE collectionid = ?"];
    if (v29)
    {
      CFDictionarySetValue(Mutable, @"deleteGC", v29);
    }

    v30 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT groupid FROM gc WHERE collectionid = ?"];
    if (v30)
    {
      CFDictionarySetValue(Mutable, @"selectGCInv", v30);
    }

    v31 = [(PSIDatabase *)self statementFromString:@"SELECT rowid FROM groups"];
    inqIdsOfAllGroupsStatement = self->_inqIdsOfAllGroupsStatement;
    self->_inqIdsOfAllGroupsStatement = v31;

    v33 = [(PSIDatabase *)self statementFromString:@"SELECT rowid FROM prefix where normalized_string != "];
    inqIdsOfAllGroupsInPrefixStatement = self->_inqIdsOfAllGroupsInPrefixStatement;
    self->_inqIdsOfAllGroupsInPrefixStatement = v33;

    v35 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM tmp_used_groupids;"];
    if (v35)
    {
      CFDictionarySetValue(Mutable, @"deleteUnusedGroupsAndLookups_1", v35);
    }

    v36 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT OR IGNORE INTO tmp_used_groupids SELECT groupid FROM ga UNION SELECT groupid FROM gc;"];
    if (v36)
    {
      CFDictionarySetValue(Mutable, @"deleteUnusedGroupsAndLookups_2", v36);
    }

    v37 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT OR IGNORE INTO tmp_used_groupids SELECT ROWID FROM groups WHERE owning_groupid IN (SELECT ROWID FROM tmp_used_groupids);"];
    if (v37)
    {
      CFDictionarySetValue(Mutable, @"deleteUnusedGroupsAndLookups_3", v37);
    }

    v38 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM groups where ROWID NOT IN (SELECT groupid FROM tmp_used_groupids);"];
    if (v38)
    {
      CFDictionarySetValue(Mutable, @"deleteUnusedGroupsAndLookups_4", v38);
    }

    v39 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM ga where ROWID IN (SELECT ga.rowid FROM ga JOIN groups ON ga.groupid = groups.rowid WHERE ga.assetid = ? AND groups.category IN matchingIds);"];
    if (v39)
    {
      CFDictionarySetValue(Mutable, @"deleteGAForSelectedGroupsCategories", v39);
    }

    v40 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM gc where ROWID IN (SELECT gc.rowid FROM gc JOIN groups ON gc.groupid = groups.rowid WHERE gc.collectionid = ? AND groups.category IN matchingIds);"];
    if (v40)
    {
      CFDictionarySetValue(Mutable, @"deleteGCForSelectedGroupsCategories", v40);
    }

    v41 = [(PSIDatabase *)self _inqPrepareStatement:"INSERT OR IGNORE INTO initial_suggestions VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
    if (v41)
    {
      CFDictionarySetValue(Mutable, @"insertInitialSuggestionStatement", v41);
    }

    v42 = [(PSIDatabase *)self _inqPrepareStatement:"UPDATE initial_suggestions SET date_last_used = ? WHERE template_key = ? AND first_group_id = ? AND second_group_id = ?;"];
    if (v42)
    {
      CFDictionarySetValue(Mutable, @"updateTimestampForInitialSuggestionStatement", v42);
    }

    v43 = [(PSIDatabase *)self _inqPrepareStatement:"DELETE FROM initial_suggestions"];
    if (v43)
    {
      CFDictionarySetValue(Mutable, @"deleteInitialSuggestionsStatement", v43);
    }
  }

  if (optionsCopy)
  {
    v44 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM prefix WHERE normalized_string MATCH ?"];
    if (v44)
    {
      CFDictionarySetValue(Mutable, @"selectPrefix", v44);
    }

    v45 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM groups WHERE lookup_identifier = ?"];
    if (v45)
    {
      CFDictionarySetValue(Mutable, @"selectLookupGroupId", v45);
    }

    v46 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM groups WHERE owning_groupid = 0 AND lookup_identifier = ? LIMIT 1"];
    if (v46)
    {
      CFDictionarySetValue(Mutable, @"selectLookupGroupIdLimit1", v46);
    }

    v47 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT content_string FROM groups WHERE rowid = ?"];
    if (v47)
    {
      CFDictionarySetValue(Mutable, @"selectGroupAlt", v47);
    }

    v48 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT uuid_0, uuid_1 FROM assets WHERE rowid IN matchingIds ORDER BY creationDate"];
    if (v48)
    {
      CFDictionarySetValue(Mutable, @"selectAssetIdsInDateSorted", v48);
    }

    v49 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets ORDER BY creationDate DESC LIMIT ?"];
    if (v49)
    {
      CFDictionarySetValue(Mutable, @"selectAssetIdsDateSortedDescWithLimit", v49);
    }

    v50 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT uuid_0, uuid_1, startDate, endDate, title, subtitle, type, keyAssetUUIDPrivate, keyAssetUUIDShared, assetsCountPrivate, assetsCountShared, sortDate FROM collections WHERE rowid IN matchingIds"];
    if (v50)
    {
      CFDictionarySetValue(Mutable, @"selectCollectionIn", v50);
    }

    v51 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT uuid_0, uuid_1 FROM collections WHERE rowid IN matchingIds"];
    if (v51)
    {
      CFDictionarySetValue(Mutable, @"selectCollectionIdsIn", v51);
    }

    v52 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid, category, owning_groupid, content_string, normalized_string, lookup_identifier, score, token_ranges_0, token_ranges_1 FROM groups WHERE rowid = ?"];
    if (v52)
    {
      CFDictionarySetValue(Mutable, @"fetchGroupForGroupId", v52);
    }

    v53 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid, category, owning_groupid, content_string, normalized_string, lookup_identifier, score, token_ranges_0, token_ranges_1 FROM groups WHERE rowid IN matchingIds"];
    if (v53)
    {
      CFDictionarySetValue(Mutable, @"fetchGroupsForGroupIds", v53);
    }

    v54 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid, category, owning_groupid, content_string, normalized_string, lookup_identifier, score FROM groups WHERE rowid IN matchingIds AND category IN matchingValues"];
    if (v54)
    {
      CFDictionarySetValue(Mutable, @"fetchGroupsForGroupIdsAndCategories", v54);
    }

    v55 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM groups WHERE content_string = ? AND category = ? LIMIT 1"];
    if (v55)
    {
      CFDictionarySetValue(Mutable, @"fetchGroupsForTextAndCategory", v55);
    }

    2100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT rowid, category, owning_groupid, content_string, normalized_string, lookup_identifier, score, token_ranges_0, token_ranges_1 FROM groups WHERE rowid IN matchingIds AND category != %lu", 2100];
    v57 = -[PSIDatabase _inqPrepareStatement:](self, "_inqPrepareStatement:", [2100 UTF8String]);
    if (v57)
    {
      CFDictionarySetValue(Mutable, @"fetchNonFilenameGroupsForGroupIds", v57);
    }

    v58 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections"];
    if (v58)
    {
      CFDictionarySetValue(Mutable, @"selectCollection", v58);
    }

    21002 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT groups.rowid, content_string, normalized_string, token_ranges_0, token_ranges_1, assetid FROM groups                                                 JOIN ga ON groups.rowid == ga.groupid                                                 WHERE groups.rowid IN matchingIds AND groups.category == %lu", 2100];
    21003 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT groups.rowid, content_string, normalized_string, token_ranges_0, token_ranges_1, assetid FROM groups                                                               JOIN ga ON groups.rowid == ga.groupid                                                               JOIN assets ON ga.assetid == assets.rowid                                                               WHERE groups.rowid IN matchingIds AND groups.category == %lu", 2100];
    v61 = -[PSIDatabase _inqPrepareStatement:](self, "_inqPrepareStatement:", [21002 UTF8String]);
    if (v61)
    {
      CFDictionarySetValue(Mutable, @"fetchFilenameGroupsForGroupIds", v61);
    }

    v62 = [21003 stringByAppendingString:@" AND creationDate & ? == ?"];
    v63 = -[PSIDatabase _inqPrepareStatement:](self, "_inqPrepareStatement:", [v62 UTF8String]);
    if (v63)
    {
      CFDictionarySetValue(Mutable, @"fetchFilenameGroupsForGroupIdsWithSingleDate", v63);
    }

    v64 = [21003 stringByAppendingString:@" AND creationDate & ? >= ?"];
    v65 = -[PSIDatabase _inqPrepareStatement:](self, "_inqPrepareStatement:", [v64 UTF8String]);
    if (v65)
    {
      CFDictionarySetValue(Mutable, @"fetchFilenameGroupsForGroupIdsWithStartDate", v65);
    }

    v66 = [21003 stringByAppendingString:@" AND creationDate & ? <= ?"];
    v67 = -[PSIDatabase _inqPrepareStatement:](self, "_inqPrepareStatement:", [v66 UTF8String]);
    if (v67)
    {
      CFDictionarySetValue(Mutable, @"fetchFilenameGroupsForGroupIdsWithEndDate", v67);
    }

    v68 = [21003 stringByAppendingString:@" AND creationDate & ? >= ? AND creationDate & ? <= ?"];
    v69 = -[PSIDatabase _inqPrepareStatement:](self, "_inqPrepareStatement:", [v68 UTF8String]);
    if (v69)
    {
      CFDictionarySetValue(Mutable, @"fetchFilenameGroupsForGroupIdsWithStartEndDates", v69);
    }

    v70 = [(PSIDatabase *)self statementFromString:@"SELECT groupid, assetid FROM ga WHERE assetid IN matchingIds"];
    inqAssetIdsByGroupIdForAssetIdsStatement = self->_inqAssetIdsByGroupIdForAssetIdsStatement;
    self->_inqAssetIdsByGroupIdForAssetIdsStatement = v70;

    v72 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT groupid FROM gc WHERE collectionid IN matchingIds"];
    if (v72)
    {
      CFDictionarySetValue(Mutable, @"selectGroupIdsInGCWithCollectionIds", v72);
    }

    v73 = [(PSIDatabase *)self statementFromString:@"SELECT groupid, collectionid FROM gc WHERE collectionid IN matchingIds"];
    inqCollectionIdsByGroupIdForCollectionIdsStatement = self->_inqCollectionIdsByGroupIdForCollectionIdsStatement;
    self->_inqCollectionIdsByGroupIdForCollectionIdsStatement = v73;

    v75 = [(PSIDatabase *)self statementFromString:@"SELECT count(*) from ga WHERE groupid = ?"];
    inqNumberOfAssetsMatchingGroupWithIdStatement = self->_inqNumberOfAssetsMatchingGroupWithIdStatement;
    self->_inqNumberOfAssetsMatchingGroupWithIdStatement = v75;

    v77 = [(PSIDatabase *)self statementFromString:@"SELECT count(*), groupid from ga WHERE groupid IN matchingIds GROUP BY groupid"];
    inqNumberOfAssetsByGroupIdMatchingGroupsWithIdsStatement = self->_inqNumberOfAssetsByGroupIdMatchingGroupsWithIdsStatement;
    self->_inqNumberOfAssetsByGroupIdMatchingGroupsWithIdsStatement = v77;

    v79 = [(PSIDatabase *)self statementFromString:@"SELECT count(*) from gc WHERE groupid = ?"];
    inqNumberOfCollectionsMatchingGroupWithIdStatement = self->_inqNumberOfCollectionsMatchingGroupWithIdStatement;
    self->_inqNumberOfCollectionsMatchingGroupWithIdStatement = v79;

    v81 = [(PSIDatabase *)self statementFromString:@"SELECT count(*), groupid from gc WHERE groupid IN matchingIds GROUP BY groupid"];
    inqNumberOfCollectionsByGroupIdMatchingGroupsWithIdsStatement = self->_inqNumberOfCollectionsByGroupIdMatchingGroupsWithIdsStatement;
    self->_inqNumberOfCollectionsByGroupIdMatchingGroupsWithIdsStatement = v81;

    v83 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT category, owning_groupid, content_string FROM groups WHERE owning_groupid IN matchingIds"];
    if (v83)
    {
      CFDictionarySetValue(Mutable, @"selectSynonymInfoWithOwningGroupIds", v83);
    }

    v84 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid, uuid_0, uuid_1 FROM assets ORDER BY rowid"];
    if (v84)
    {
      CFDictionarySetValue(Mutable, @"kSelectAssetIds", v84);
    }

    v85 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid, uuid_0, uuid_1 FROM collections ORDER BY rowid"];
    if (v85)
    {
      CFDictionarySetValue(Mutable, @"kSelectCollectionIds", v85);
    }

    v86 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT date_last_used, first_group_id, second_group_id, template_key, first_category, second_category, template_type, template_content_type, template_date_type, template_style_type, lookup_identifier FROM initial_suggestions"];
    if (v86)
    {
      CFDictionarySetValue(Mutable, @"selectInitialSuggestionsStatement", v86);
    }
  }

  v87 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid, owning_groupid, score FROM groups WHERE category = ? AND lookup_identifier = ? LIMIT 1"];
  if (v87)
  {
    CFDictionarySetValue(Mutable, @"selectGroupWithLookupId", v87);
  }

  v88 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid, owning_groupid, score FROM groups WHERE category = ? AND content_string = ? AND lookup_identifier = ? LIMIT 1"];
  if (v88)
  {
    CFDictionarySetValue(Mutable, @"selectGroup", v88);
  }

  v89 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT DISTINCT groupid FROM ga WHERE assetid IN matchingIds"];
  if (v89)
  {
    CFDictionarySetValue(Mutable, @"selectGroupIdsInGAWithAssetIds", v89);
  }

  v90 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets WHERE creationDate & ? == ? ORDER BY rowid"];
  if (v90)
  {
    CFDictionarySetValue(Mutable, @"selectWithSingleDateAsset", v90);
  }

  v91 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets WHERE creationDate & ? >= ? ORDER BY rowid"];
  if (v91)
  {
    CFDictionarySetValue(Mutable, @"selectWithStartDateAsset", v91);
  }

  v92 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets WHERE creationDate & ? <= ? ORDER BY rowid"];
  if (v92)
  {
    CFDictionarySetValue(Mutable, @"selectWithEndDateAsset", v92);
  }

  v93 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets WHERE creationDate & ? >= ? AND creationDate & ? <= ? ORDER BY rowid"];
  if (v93)
  {
    CFDictionarySetValue(Mutable, @"selectWithStartEndDatesAsset", v93);
  }

  v94 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT DISTINCT assetid FROM ga WHERE groupid IN matchingIds"];
  if (v94)
  {
    CFDictionarySetValue(Mutable, @"kSelectAssetIDsForGroupIDsStatement", v94);
  }

  v95 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT assetid FROM ga WHERE groupid = ? ORDER BY assetid"];
  if (v95)
  {
    CFDictionarySetValue(Mutable, @"selectGA", v95);
  }

  v96 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets WHERE creationDate & ? == ? AND rowid IN (SELECT assetid FROM ga WHERE groupid = ?) ORDER BY rowid"];
  if (v96)
  {
    CFDictionarySetValue(Mutable, @"selectWithSingleDateGA", v96);
  }

  v97 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets WHERE creationDate & ? >= ? AND rowid IN (SELECT assetid FROM ga WHERE groupid = ?) ORDER BY rowid"];
  if (v97)
  {
    CFDictionarySetValue(Mutable, @"selectWithStartDateGA", v97);
  }

  v98 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets WHERE creationDate & ? <= ? AND rowid IN (SELECT assetid FROM ga WHERE groupid = ?) ORDER BY rowid"];
  if (v98)
  {
    CFDictionarySetValue(Mutable, @"selectWithEndDateGA", v98);
  }

  v99 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM assets WHERE creationDate & ? >= ? AND creationDate & ? <= ? AND rowid IN (SELECT assetid FROM ga WHERE groupid = ?) ORDER BY rowid"];
  if (v99)
  {
    CFDictionarySetValue(Mutable, @"selectWithStartEndDatesGA", v99);
  }

  v100 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections WHERE startDate & ? <= ? AND endDate & ? >= ? ORDER BY rowid"];
  if (v100)
  {
    CFDictionarySetValue(Mutable, @"selectWithSingleDateCollection", v100);
  }

  v101 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections WHERE endDate & ? >= ? ORDER BY rowid"];
  if (v101)
  {
    CFDictionarySetValue(Mutable, @"selectWithStartDateCollection", v101);
  }

  v102 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections WHERE startDate & ? <= ? ORDER BY rowid"];
  if (v102)
  {
    CFDictionarySetValue(Mutable, @"selectWithEndDateCollection", v102);
  }

  v103 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections WHERE endDate & ? >= ? AND startDate & ? <= ? ORDER BY rowid"];
  if (v103)
  {
    CFDictionarySetValue(Mutable, @"selectWithStartEndDatesCollection", v103);
  }

  v104 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT collectionid FROM gc WHERE groupid = ? ORDER BY collectionid"];
  if (v104)
  {
    CFDictionarySetValue(Mutable, @"selectGC", v104);
  }

  v105 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections WHERE startDate & ? <= ? AND endDate & ? >= ? AND rowid IN (SELECT collectionid FROM gc WHERE groupid = ?) ORDER BY rowid"];
  if (v105)
  {
    CFDictionarySetValue(Mutable, @"selectWithSingleDateGC", v105);
  }

  v106 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections WHERE endDate & ? >= ? AND rowid IN (SELECT collectionid FROM gc WHERE groupid = ?) ORDER BY rowid"];
  if (v106)
  {
    CFDictionarySetValue(Mutable, @"selectWithStartDateGC", v106);
  }

  v107 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections WHERE startDate & ? <= ? AND rowid IN (SELECT collectionid FROM gc WHERE groupid = ?) ORDER BY rowid"];
  if (v107)
  {
    CFDictionarySetValue(Mutable, @"selectWithEndDateGC", v107);
  }

  v108 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM collections WHERE endDate & ? >= ? AND startDate & ? <= ? AND rowid IN (SELECT collectionid FROM gc WHERE groupid = ?) ORDER BY rowid"];
  if (v108)
  {
    CFDictionarySetValue(Mutable, @"selectWithStartEndDatesGC", v108);
  }

  v109 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT uuid_0, uuid_1 FROM assets WHERE rowid IN matchingIds"];
  if (v109)
  {
    CFDictionarySetValue(Mutable, @"selectAssetIdsIn", v109);
  }

  v110 = [(PSIDatabase *)self statementFromString:@"SELECT rowid, uuid_0, uuid_1 FROM assets WHERE rowid IN matchingIds"];
  assetUUIDByAssetIdWithAssetIdsStatement = self->_assetUUIDByAssetIdWithAssetIdsStatement;
  self->_assetUUIDByAssetIdWithAssetIdsStatement = v110;

  v112 = [(PSIDatabase *)self statementFromString:@"SELECT rowid, uuid_0, uuid_1, startDate, endDate, title, subtitle, type, keyAssetUUIDPrivate, keyAssetUUIDShared, assetsCountPrivate, assetsCountShared, sortDate FROM collections WHERE rowid IN matchingIds"];
  collectionResultByCollectionIdWithCollectionIdsStatement = self->_collectionResultByCollectionIdWithCollectionIdsStatement;
  self->_collectionResultByCollectionIdWithCollectionIdsStatement = v112;

  v114 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT rowid FROM groups WHERE category IN matchingIds"];
  if (v114)
  {
    CFDictionarySetValue(Mutable, @"selectGroupsWithCategories", v114);
  }

  v115 = [(PSIDatabase *)self _inqPrepareStatement:"SELECT score FROM groups WHERE rowid = ? LIMIT 1"];
  if (v115)
  {
    CFDictionarySetValue(Mutable, @"selectRankingScoreForGroupId", v115);
  }

  return Mutable;
}

- (BOOL)_prepareSearchIndexAtPath:(id)path options:(int64_t)options
{
  v26 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  self->_options = options;
  v7 = +[PLSearchIndexConfiguration locale];
  v8 = [[PSITokenizer alloc] initWithLocale:v7 useCache:options & 1];
  tokenizer = self->_tokenizer;
  self->_tokenizer = v8;

  v10 = [objc_opt_class() _openDatabaseAtPath:self->_path options:options];
  self->_inqDatabase = v10;
  if (!v10)
  {
LABEL_7:
    v12 = self->_tokenizer;
    self->_tokenizer = 0;

    goto LABEL_8;
  }

  if (sqlite3_busy_timeout(v10, 500))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"Failed to set busy timeout";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &buf, 0xCu);
    }

    inqDatabase = self->_inqDatabase;
    if (inqDatabase)
    {
      sqlite3_close(inqDatabase);
      self->_inqDatabase = 0;
    }

    goto LABEL_7;
  }

  if ((options & 3) == 1 && ![(PSIDatabase *)self _inqVerifyTablesExistInDatabase])
  {
    v21 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "Search Index does not contain any tables", &buf, 2u);
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x2020000000;
    v25 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__PSIDatabase__prepareSearchIndexAtPath_options___block_invoke;
    v22[3] = &unk_1E7576208;
    v22[4] = self;
    v22[5] = &buf;
    v22[6] = options;
    [(PSIDatabase *)self _inqPerformBatch:v22];
    self->_inqPreparedStatements = *(*(&buf + 1) + 24);
    if ((options & 2) != 0)
    {
      v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v17 = dispatch_queue_create("PSIDatabase.serial", v16);
      serialQueue = self->_serialQueue;
      self->_serialQueue = v17;
    }

    else
    {
      v15 = dispatch_queue_create("PSIDatabase.serial", 0);
      v16 = self->_serialQueue;
      self->_serialQueue = v15;
    }

    if (options)
    {
      v19 = dispatch_queue_create("PSIDatabase.search", 0);
      searchQueue = self->_searchQueue;
      self->_searchQueue = v19;
    }

    _Block_object_dispose(&buf, 8);
    if (self->_inqDatabase && self->_inqPreparedStatements)
    {
      self->_inqGroupObjectsById = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      v13 = 1;
      goto LABEL_9;
    }
  }

LABEL_8:
  v13 = 0;
LABEL_9:

  return v13;
}

void __49__PSIDatabase__prepareSearchIndexAtPath_options___block_invoke(uint64_t a1)
{
  v2 = +[PSITokenizer ftsTokenizerName];
  if ([*(*(a1 + 32) + 160) registerFTS5TokenizerForDatabase:*(*(a1 + 32) + 8)])
  {
    v3 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Failed to create fts custom tokenizer, falling back to ascii", v10, 2u);
    }

    v2 = @"ascii";
  }

  v4 = [[PSIIntArray alloc] initWithLabel:@"matchingIds" database:*(*(a1 + 32) + 8)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;

  v7 = [[PSIIntArray alloc] initWithLabel:@"matchingValues" database:*(*(a1 + 32) + 8)];
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _inqPrepareStatementsForOptions:*(a1 + 48) tokenizerName:v2];
}

- (PSIDatabase)initWithPathManager:(id)manager options:(int64_t)options
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = PSIDatabase;
  v8 = [(PSIDatabase *)&v17 init];
  if (v8 && (([managerCopy searchIndexDatabaseFilePath], v9 = objc_claimAutoreleasedReturnValue(), path = v8->_path, v8->_path = v9, path, objc_storeStrong(&v8->_pathManager, manager), options <= 1) ? (v11 = 1) : (v11 = options), v12 = -[PSIDatabase _prepareSearchIndexAtPath:options:](v8, "_prepareSearchIndexAtPath:options:", v8->_path, v11), !(v8->_databaseIsValid = v12)))
  {
    v14 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to establish database connection, aborting initialization", v16, 2u);
    }

    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  return v13;
}

- (BOOL)_inqVerifyTablesExistInDatabase
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PSIDatabase__inqVerifyTablesExistInDatabase__block_invoke;
  v4[3] = &unk_1E7576028;
  v4[4] = &v5;
  [(PSIDatabase *)self executeStatementFromString:@"SELECT count(*) from sqlite_master where type = 'table' and name = 'prefix'" withResultEnumerationBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __46__PSIDatabase__inqVerifyTablesExistInDatabase__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 int64AtColumn:0];
  *(*(*(a1 + 32) + 8) + 24) = result == 1;
  return result;
}

+ (id)searchDatabaseLog
{
  if (searchDatabaseLog_onceToken != -1)
  {
    dispatch_once(&searchDatabaseLog_onceToken, &__block_literal_global_108156);
  }

  v3 = searchDatabaseLog_searchDatabaseLog;

  return v3;
}

void __32__PSIDatabase_searchDatabaseLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.search", "SearchDatabase");
  v1 = searchDatabaseLog_searchDatabaseLog;
  searchDatabaseLog_searchDatabaseLog = v0;
}

+ (sqlite3)_openDatabaseAtPath:(id)path options:(int64_t)options
{
  optionsCopy = options;
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ((optionsCopy & 2) != 0)
  {
    v6 = [MEMORY[0x1E69BF2D8] dataProtectionOpenFlagForPath:pathCopy] | 0x8002;
  }

  else if (optionsCopy)
  {
    v6 = 32769;
  }

  else
  {
    v6 = 0x8000;
  }

  ppDb = 0;
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v8 = sqlite3_open_v2(fileSystemRepresentation, &ppDb, v6, 0);
  v9 = ppDb;
  if (!v8)
  {
LABEL_17:
    if (v9)
    {
      v13 = 0;
      if (sqlite3_exec(v9, "PRAGMA journal_mode = WAL", 0, 0, &v13))
      {
        v10 = PLSearchBackendPSIDatabaseGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v16 = v13;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Failed to set sqlite3 WAL mode: %{public}s", buf, 0xCu);
        }

        sqlite3_free(v13);
      }
    }

    goto LABEL_22;
  }

  if (ppDb)
  {
    if (sqlite3_close(ppDb) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = @"Couldn't close db";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    ppDb = 0;
  }

  if ((optionsCopy & 2) != 0)
  {
    if (sqlite3_open_v2(fileSystemRepresentation, &ppDb, v6 | 4, 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = @"Failed to open db";
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v9 = ppDb;
    goto LABEL_17;
  }

LABEL_22:
  v11 = ppDb;

  return v11;
}

+ (BOOL)_integrityCheckDatabase:(sqlite3 *)database
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(database, "pragma quick_check", -1, &ppStmt, 0))
  {
    return 0;
  }

  while (1)
  {
    v5 = sqlite3_step(ppStmt);
    v3 = v5 == 100;
    if (v5 != 100)
    {
      break;
    }

    v4 = sqlite3_column_text(ppStmt, 0);
    if (v4)
    {
      if (*v4 == 111 && v4[1] == 107 && !v4[2])
      {
        break;
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

+ (void)_dropDatabase:(sqlite3 *)database withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!database && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = @"expect db connection";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v6 = PLSearchBackendPSIDatabaseGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Closed Search Index sqlite database.", buf, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  *buf = 129;
  v8 = sqlite3_file_control(database, 0, 101, buf);
  if (v8)
  {
    [v7 appendFormat:@"Failed to truncate database: %s (%d). ", sqlite3_errmsg(database), v8];
  }

  v9 = sqlite3_close(database);
  v10 = v9;
  if (v9)
  {
    [v7 appendFormat:@"Failed to close database: %s (%d).", sqlite3_errstr(v9), v9];
  }

  if (!(v10 | v8))
  {
    v13 = 0;
    if (!completionCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = MEMORY[0x1E696ABC0];
  v14 = *MEMORY[0x1E696A578];
  v15 = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13 = [v11 errorWithDomain:@"com.apple.photos.search" code:-1 userInfo:v12];

  if (completionCopy)
  {
LABEL_12:
    completionCopy[2](completionCopy, v13);
  }

LABEL_13:
}

+ (void)dropDatabaseAtPath:(id)path withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [self _openDatabaseAtPath:path options:2];
  if (v6)
  {
    [self _dropDatabase:v6 withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (id)groupIdsInPrefixTable
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PSIDatabase_UnitTesting__groupIdsInPrefixTable__block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v4 = Mutable;
  v9 = v4;
  [(PSIDatabase *)self _inqSync:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __49__PSIDatabase_UnitTesting__groupIdsInPrefixTable__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[15];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__PSIDatabase_UnitTesting__groupIdsInPrefixTable__block_invoke_2;
  v3[3] = &unk_1E75762C0;
  v4 = *(a1 + 40);
  [v1 executeStatement:v2 withResultEnumerationBlock:v3];
}

void __49__PSIDatabase_UnitTesting__groupIdsInPrefixTable__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObject:{objc_msgSend(v3, "int64AtColumn:", 0)}];
}

- (void)exqExecuteStatementFromString:(id)string withResultEnumerationBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PSIDatabase_UnitTesting__exqExecuteStatementFromString_withResultEnumerationBlock___block_invoke;
  v10[3] = &unk_1E7576F38;
  v10[4] = self;
  v11 = stringCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = stringCopy;
  [(PSIDatabase *)self _inqSync:v10];
}

- (id)allGroupIds
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PSIDatabase_UnitTesting__allGroupIds__block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v4 = Mutable;
  v9 = v4;
  [(PSIDatabase *)self _inqSync:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __39__PSIDatabase_UnitTesting__allGroupIds__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[14];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__PSIDatabase_UnitTesting__allGroupIds__block_invoke_2;
  v3[3] = &unk_1E75762C0;
  v4 = *(a1 + 40);
  [v1 executeStatement:v2 withResultEnumerationBlock:v3];
}

void __39__PSIDatabase_UnitTesting__allGroupIds__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObject:{objc_msgSend(v3, "int64AtColumn:", 0)}];
}

- (void)linkCollectionWithId:(int64_t)id toGroupWithId:(int64_t)withId
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PSIDatabase_UnitTesting__linkCollectionWithId_toGroupWithId___block_invoke;
  v4[3] = &unk_1E7578320;
  v4[4] = self;
  v4[5] = withId;
  v4[6] = id;
  [(PSIDatabase *)self _inqSync:v4];
}

- (void)linkAssetWithId:(int64_t)id toGroupWithId:(int64_t)withId
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PSIDatabase_UnitTesting__linkAssetWithId_toGroupWithId___block_invoke;
  v4[3] = &unk_1E7578320;
  v4[4] = self;
  v4[5] = withId;
  v4[6] = id;
  [(PSIDatabase *)self _inqSync:v4];
}

- (int64_t)insertGroup:(id)group
{
  groupCopy = group;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PSIDatabase_UnitTesting__insertGroup___block_invoke;
  v8[3] = &unk_1E7578820;
  v5 = groupCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [(PSIDatabase *)self _inqSync:v8];
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __40__PSIDatabase_UnitTesting__insertGroup___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v2 = [*(a1 + 32) contentString];
  if (v2)
  {
    v3 = [*(a1 + 32) contentString];
    v4 = _newUTF8String(v3, &v14);
  }

  else
  {
    v4 = 0;
  }

  v13 = 0;
  v5 = [*(a1 + 32) normalizedString];
  if (v5)
  {
    v6 = [*(a1 + 32) normalizedString];
    v7 = _newUTF8String(v6, &v13);
  }

  else
  {
    v7 = 0;
  }

  v12 = 0;
  v8 = [*(a1 + 32) lookupIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = _newUTF8String(v8, &v12);
  }

  else
  {
    v10 = 0;
  }

  Value = CFDictionaryGetValue(*(*(a1 + 40) + 24), @"insertGroup");
  if (sqlite3_bind_int(Value, 1, [*(a1 + 32) category]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  if (sqlite3_bind_int64(Value, 2, [*(a1 + 32) owningGroupId]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  if (sqlite3_bind_text(Value, 3, v4, v14, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  if (sqlite3_bind_text(Value, 4, v7, v13, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  if (sqlite3_bind_text(Value, 5, v10, v12, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = @"Failed to bind parameter";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
  }

  [*(a1 + 40) _inqExecutePreparedStatement:Value withStatementBlock:0];
  *(*(*(a1 + 48) + 8) + 24) = sqlite3_last_insert_rowid(*(*(a1 + 40) + 8));
  if (v4)
  {
    free(v4);
  }

  if (v7)
  {
    free(v7);
  }

  if (v10)
  {
    free(v10);
  }
}

- (int64_t)insertCollection:(id)collection
{
  collectionCopy = collection;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PSIDatabase_UnitTesting__insertCollection___block_invoke;
  v8[3] = &unk_1E7578820;
  v10 = &v11;
  v8[4] = self;
  v5 = collectionCopy;
  v9 = v5;
  [(PSIDatabase *)self _inqSync:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __45__PSIDatabase_UnitTesting__insertCollection___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _inqCollectionIdWithCollection:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)insertAsset:(id)asset
{
  assetCopy = asset;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PSIDatabase_UnitTesting__insertAsset___block_invoke;
  v8[3] = &unk_1E7578820;
  v10 = &v11;
  v8[4] = self;
  v5 = assetCopy;
  v9 = v5;
  [(PSIDatabase *)self _inqSync:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __40__PSIDatabase_UnitTesting__insertAsset___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _inqAssetIdWithAsset:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)initForTestingWithOptions:(int64_t)options
{
  v11.receiver = self;
  v11.super_class = PSIDatabase;
  v4 = [(PSIDatabase *)&v11 init];
  v5 = v4;
  if (v4 && ((path = v4->_path, v4->_path = @":memory:", path, options <= 1) ? (v7 = 1) : (v7 = options), v8 = [(PSIDatabase *)v5 _prepareSearchIndexAtPath:v5->_path options:v7], v5->_databaseIsValid = v8, !v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)executeStatement:(id)statement withResultEnumerationBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  statementCopy = statement;
  blockCopy = block;
  stmt = [(__CFString *)statementCopy stmt];
  if (!stmt && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = @"Statement is nil";
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  do
  {
    while (1)
    {
      v9 = sqlite3_step(stmt);
      if (!blockCopy || v9 != 100)
      {
        break;
      }

      buf[0] = 0;
      blockCopy[2](blockCopy, statementCopy, buf);
      if (buf[0])
      {
        goto LABEL_9;
      }
    }
  }

  while (v9 == 100);
LABEL_9:
  v10 = sqlite3_reset(stmt);
  if (v10)
  {
    v11 = v10;
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to reset statement: %s", sqlite3_errmsg(self->_inqDatabase)];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v12;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", buf, 0xCu);
    }

    if ((~v11 & 0xB) == 0)
    {
      v13 = PLSearchBackendPSIDatabaseGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v15 = statementCopy;
        v16 = 2112;
        v17 = v12;
        v18 = 1026;
        v19 = v11;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Database corruption detected during statement execution: %@: %@ (%{public}d).", buf, 0x1Cu);
      }
    }
  }
}

- (void)executeStatementFromString:(id)string withResultEnumerationBlock:(id)block
{
  blockCopy = block;
  v7 = [(PSIDatabase *)self statementFromString:string];
  [(PSIDatabase *)self executeStatement:v7 withResultEnumerationBlock:blockCopy];

  [v7 finalizze];
}

- (void)executeStatementFromString:(id)string
{
  v4 = [(PSIDatabase *)self statementFromString:string];
  [(PSIDatabase *)self executeStatement:v4];
  [v4 finalizze];
}

- (id)statementFromString:(id)string
{
  stringCopy = string;
  v6 = -[PSIStatement initWithSQLite3Stmt:]([PSIStatement alloc], "initWithSQLite3Stmt:", -[PSIDatabase _inqPrepareStatement:](self, "_inqPrepareStatement:", [string UTF8String]));

  return v6;
}

- (void)_inqGroupIdsForAssetOrCollectionIds:(__CFArray *)ids resultType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  if (!ids)
  {
    v19 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Unexpected NULL PSI identifiers passed to _inqGroupIdsForAssetOrCollectionIds";
LABEL_10:
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    }

LABEL_11:

    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    goto LABEL_12;
  }

  if (!type)
  {
    v19 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Result type was not specified in _inqGroupIdsForAssetOrCollectionIds";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  Count = CFArrayGetCount(ids);
  v10 = objc_alloc_init(MEMORY[0x1E696AB50]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(PSIIntArray *)self->_matchingIds bindElements:ids range:0, Count];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v13 = Mutable;
  v14 = 72;
  if (type == 1)
  {
    v14 = 64;
  }

  v15 = *(&self->super.isa + v14);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __91__PSIDatabase_PSIQueryDelegate___inqGroupIdsForAssetOrCollectionIds_resultType_completion___block_invoke;
  v21[3] = &unk_1E75766F8;
  v23 = v10;
  v24 = Mutable;
  v22 = dictionary;
  v16 = v10;
  v17 = dictionary;
  v18 = v15;
  [(PSIDatabase *)self executeStatement:v18 withResultEnumerationBlock:v21];
  [(PSIIntArray *)self->_matchingIds unbind];
  (*(completionCopy + 2))(completionCopy, v13, v16, v17);

LABEL_12:
}

void __91__PSIDatabase_PSIQueryDelegate___inqGroupIdsForAssetOrCollectionIds_resultType_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 int64AtColumn:0];
  v4 = [v9 int64AtColumn:1];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
  Mutable = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    [*(a1 + 32) setObject:Mutable forKeyedSubscript:v5];
  }

  [Mutable addObject:v4];
  CFSetAddValue(*(a1 + 48), v3);
  v7 = *(a1 + 40);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
  [v7 addObject:v8];
}

- (void)groupsForCollectionIds:(__CFArray *)ids completion:(id)completion
{
  completionCopy = completion;
  if (!ids)
  {
    v8 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unexpected NULL collectionIds passed to groupsForCollectionIds", buf, 2u);
    }

    goto LABEL_10;
  }

  if (!CFArrayGetCount(ids))
  {
LABEL_10:
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
    goto LABEL_11;
  }

  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__107328;
  v20 = __Block_byref_object_dispose__107329;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__107328;
  v14 = __Block_byref_object_dispose__107329;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PSIDatabase_PSIQueryDelegate__groupsForCollectionIds_completion___block_invoke;
  v9[3] = &unk_1E75766D0;
  v9[4] = self;
  v9[5] = buf;
  v9[6] = &v10;
  v9[7] = ids;
  [(PSIDatabase *)self _inqSync:v9];
  if (*(v17 + 5))
  {
    v7 = *(v17 + 5);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  (*(completionCopy + 2))(completionCopy, v7, v11[5]);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(buf, 8);
LABEL_11:
}

uint64_t __67__PSIDatabase_PSIQueryDelegate__groupsForCollectionIds_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__PSIDatabase_PSIQueryDelegate__groupsForCollectionIds_completion___block_invoke_2;
  v3[3] = &unk_1E75766A8;
  v4 = *(a1 + 32);
  v1 = *(a1 + 56);
  v5 = *(a1 + 48);
  return [v4 _inqGroupIdsForAssetOrCollectionIds:v1 resultType:2 completion:v3];
}

void __67__PSIDatabase_PSIQueryDelegate__groupsForCollectionIds_completion___block_invoke_2(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    v25 = a3;
    v26 = v8;
    v10 = [*(a1 + 32) _inqGroupsWithMatchingGroupIds:a2 dateFilter:0 includeObjects:0 searchResultTypes:2 matchingPredicateBlock:0];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = a1;
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v18, "groupId", v24)}];
          v20 = [v9 objectForKeyedSubscript:v19];
          v21 = [v20 count];

          if (v21)
          {
            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v18, "groupId")}];
            v23 = [v9 objectForKeyedSubscript:v22];

            v33.length = CFArrayGetCount(v23);
            v33.location = 0;
            CFArraySortValues(v23, v33, PSIRowIDCompare_107345, 0);
            [v18 setCollectionIds:v23];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    objc_storeStrong((*(*(v24 + 48) + 8) + 40), v25);
    CFRelease(a2);
    v8 = v26;
  }
}

- (void)groupsForAssetIds:(__CFArray *)ids completion:(id)completion
{
  completionCopy = completion;
  if (!ids)
  {
    v7 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Unexpected NULL assetIds passed to groupsForAssetIds", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
  }

  if (!CFArrayGetCount(ids))
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0);
  }

  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__107328;
  v20 = __Block_byref_object_dispose__107329;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__107328;
  v14 = __Block_byref_object_dispose__107329;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PSIDatabase_PSIQueryDelegate__groupsForAssetIds_completion___block_invoke;
  v9[3] = &unk_1E75766D0;
  v9[4] = self;
  v9[5] = buf;
  v9[6] = &v10;
  v9[7] = ids;
  [(PSIDatabase *)self _inqSync:v9];
  if (*(v17 + 5))
  {
    v8 = *(v17 + 5);
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  (*(completionCopy + 2))(completionCopy, v8, v11[5]);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(buf, 8);
}

uint64_t __62__PSIDatabase_PSIQueryDelegate__groupsForAssetIds_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__PSIDatabase_PSIQueryDelegate__groupsForAssetIds_completion___block_invoke_2;
  v3[3] = &unk_1E75766A8;
  v4 = *(a1 + 32);
  v1 = *(a1 + 56);
  v5 = *(a1 + 48);
  return [v4 _inqGroupIdsForAssetOrCollectionIds:v1 resultType:1 completion:v3];
}

void __62__PSIDatabase_PSIQueryDelegate__groupsForAssetIds_completion___block_invoke_2(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    v25 = a3;
    v26 = v8;
    v10 = [*(a1 + 32) _inqGroupsWithMatchingGroupIds:a2 dateFilter:0 includeObjects:0 searchResultTypes:1 matchingPredicateBlock:0];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = a1;
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v18, "groupId", v24)}];
          v20 = [v9 objectForKeyedSubscript:v19];
          v21 = [v20 count];

          if (v21)
          {
            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v18, "groupId")}];
            v23 = [v9 objectForKeyedSubscript:v22];

            v33.length = CFArrayGetCount(v23);
            v33.location = 0;
            CFArraySortValues(v23, v33, PSIRowIDCompare_107345, 0);
            [v18 setAssetIds:v23];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    objc_storeStrong((*(*(v24 + 48) + 8) + 40), v25);
    CFRelease(a2);
    v8 = v26;
  }
}

- (id)groupForLookupIdentifier:(id)identifier searchResultTypes:(unint64_t)types
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSIDatabase.m" lineNumber:3795 description:{@"Invalid parameter not satisfying: %@", @"lookupIdentifier.length > 0"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__107328;
  v20 = __Block_byref_object_dispose__107329;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PSIDatabase_PSIQueryDelegate__groupForLookupIdentifier_searchResultTypes___block_invoke;
  v12[3] = &unk_1E7576680;
  v14 = &v16;
  v12[4] = self;
  v8 = identifierCopy;
  v13 = v8;
  typesCopy = types;
  [(PSIDatabase *)self _inqSync:v12];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __76__PSIDatabase_PSIQueryDelegate__groupForLookupIdentifier_searchResultTypes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqGroupForLookupIdentifier:*(a1 + 40) searchResultTypes:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)groupArraysFromGroupIdSets:(id)sets dateFilter:(id)filter searchResultTypes:(unint64_t)types progressBlock:(id)block
{
  setsCopy = sets;
  filterCopy = filter;
  blockCopy = block;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__107328;
  v28 = __Block_byref_object_dispose__107329;
  v29 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __103__PSIDatabase_PSIQueryDelegate__groupArraysFromGroupIdSets_dateFilter_searchResultTypes_progressBlock___block_invoke;
  v18[3] = &unk_1E7576658;
  v22 = &v24;
  v18[4] = self;
  v13 = setsCopy;
  v19 = v13;
  v14 = filterCopy;
  v20 = v14;
  typesCopy = types;
  v15 = blockCopy;
  v21 = v15;
  [(PSIDatabase *)self _inqSync:v18];
  v16 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v16;
}

void __103__PSIDatabase_PSIQueryDelegate__groupArraysFromGroupIdSets_dateFilter_searchResultTypes_progressBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inqGroupArraysFromGroupIdSets:*(a1 + 40) dateFilter:*(a1 + 48) searchResultTypes:*(a1 + 72) progressBlock:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)resetGroupsCache
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PSIDatabase_PSIQueryDelegate__resetGroupsCache__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PSIDatabase *)self _inqSync:v2];
}

@end
@interface WBSStartPageSectionManager
+ (NSArray)allSections;
+ (WBSStartPageSectionManager)defaultManager;
+ (unint64_t)preferredVisiblePositionForNewSectionWithIdentifier:(id)identifier;
- (NSArray)cloudKitStartPageSectionOrder;
- (NSArray)enabledSectionIdentifiers;
- (NSArray)sectionIdentifiers;
- (NSArray)sections;
- (NSArray)suggestionsDataSourceSections;
- (WBSStartPageSectionManager)init;
- (WBSStartPageSectionManager)initWithStorage:(id)storage;
- (id)_migrateUnknownSectionIdentifiersIntoCurrentSections:(id)sections didChangeSections:(BOOL *)changeSections;
- (id)readAndValidateSections;
- (id)sectionForIdentifier:(id)identifier;
- (uint64_t)ensureSection:(uint64_t)section enabled:(void *)enabled inSectionData:;
- (void)_updateCloudKitStartPageSectionOrderPreferenceKey;
- (void)dealloc;
- (void)invalidateCache;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reorderSectionsToMatchOrderedIdentifiers:(id)identifiers;
- (void)saveSections:(id)sections andUpdateInMemoryCache:(BOOL)cache;
- (void)setSectionIdentifier:(id)identifier enabled:(BOOL)enabled;
- (void)setSectionsIdentifiers:(id)identifiers enabledIndexes:(id)indexes;
@end

@implementation WBSStartPageSectionManager

- (void)dealloc
{
  [(WBSStartPageSectionManagerStorage *)self->_storage removeObserver:self forKeyPath:@"StartPageSections" context:kvoContext];
  v3.receiver = self;
  v3.super_class = WBSStartPageSectionManager;
  [(WBSStartPageSectionManager *)&v3 dealloc];
}

- (NSArray)enabledSectionIdentifiers
{
  sections = [(WBSStartPageSectionManager *)self sections];
  v3 = [sections safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_74];

  return v3;
}

- (NSArray)sections
{
  os_unfair_lock_lock(&self->_lock);
  cachedSections = self->_cachedSections;
  if (cachedSections)
  {
    readAndValidateSections = [(NSArray *)cachedSections copy];
  }

  else
  {
    ++self->_ignoreChanges;
    os_unfair_lock_unlock(&self->_lock);
    readAndValidateSections = [(WBSStartPageSectionManager *)self readAndValidateSections];
    os_unfair_lock_lock(&self->_lock);
    --self->_ignoreChanges;
    objc_storeStrong(&self->_cachedSections, readAndValidateSections);
  }

  os_unfair_lock_unlock(&self->_lock);

  return readAndValidateSections;
}

- (id)readAndValidateSections
{
  selfCopy = self;
  if (self)
  {
    os_unfair_lock_assert_not_owner(self + 8);
    startPageSectionDescriptors = [selfCopy[1] startPageSectionDescriptors];
    v3 = [startPageSectionDescriptors mutableCopy];

    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __53__WBSStartPageSectionManager_readAndValidateSections__block_invoke;
      v19[3] = &unk_1E7FCAC38;
      v20 = v5;
      v21 = v4;
      v6 = v4;
      v7 = v5;
      [v3 enumerateObjectsUsingBlock:v19];
      [v3 removeObjectsAtIndexes:v6];

      v18 = 0;
      v8 = [selfCopy _migrateUnknownSectionIdentifiersIntoCurrentSections:v3 didChangeSections:&v18];
      v9 = v8;
      if (v18)
      {
        v10 = v8;

        if (v18)
        {
          [selfCopy saveSections:v10 andUpdateInMemoryCache:0];
        }
      }

      else
      {
        v10 = v3;
      }

      v16 = v10;
    }

    else
    {
      allSections = [objc_opt_class() allSections];
      v12 = [allSections safari_mapObjectsUsingBlock:&__block_literal_global_94_1];
      v13 = [v12 mutableCopy];

      safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
      v9 = safari_browserDefaults;
      if (selfCopy[1] == safari_browserDefaults)
      {
        if ([safari_browserDefaults BOOLForKey:@"HideFrequentlyVisitedSites"])
        {
          v15 = indexOfSectionWithIdentifier(v13, @"frequentlyVisitedItemIdentifier");
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v13 removeObjectAtIndex:v15];
          }
        }
      }

      [selfCopy saveSections:v13 andUpdateInMemoryCache:0];
      v16 = v13;
    }

    selfCopy = v16;
  }

  return selfCopy;
}

void __53__WBSStartPageSectionManager_readAndValidateSections__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  v7 = [v5 identifier];
  LODWORD(v6) = [v6 containsObject:v7];

  if (v6)
  {
    [*(a1 + 40) addIndex:a3];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v10 identifier];
    [v8 addObject:v9];
  }
}

+ (NSArray)allSections
{
  v4[8] = *MEMORY[0x1E69E9840];
  v4[0] = @"favoritesItemIdentifier";
  v4[1] = @"suggestionsItemIdentifier";
  v4[2] = @"frequentlyVisitedItemIdentifier";
  v4[3] = @"highlightsItemIdentifier";
  v4[4] = @"privacyReportIdentifier";
  v4[5] = @"readingListItemIdentifier";
  v4[6] = @"recentlyClosedTabsInTabGroupItemIdentifier";
  v4[7] = @"cloudTabsItemIdentifier";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];

  return v2;
}

id __55__WBSStartPageSectionManager_enabledSectionIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isEnabled];
  if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
  {
    v4 = [v2 identifier];
    v5 = [v4 isEqualToString:@"frequentlyVisitedItemIdentifier"];

    v6 = [v2 identifier];
    v7 = v5 | [v6 isEqualToString:@"exploreItemIdentifier"];

    v8 = [v2 identifier];
    v9 = v3 & ((v7 | [v8 isEqualToString:@"highlightsItemIdentifier"]) ^ 1);

    if ((v9 & 1) == 0)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  v10 = [v2 identifier];
LABEL_6:

  return v10;
}

- (NSArray)suggestionsDataSourceSections
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(WBSStartPageSectionManager *)self sections];
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        identifier = [v8 identifier];
        v10 = [identifier isEqualToString:@"frequentlyVisitedItemIdentifier"];

        if (v10)
        {
          v11 = v8;

          v5 = v11;
        }

        identifier2 = [v8 identifier];
        v13 = [identifier2 isEqualToString:@"highlightsItemIdentifier"];

        if (v13)
        {
          v14 = v8;

          v4 = v14;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  [array safari_addObjectUnlessNil:v5];
  [array safari_addObjectUnlessNil:v4];

  return array;
}

+ (unint64_t)preferredVisiblePositionForNewSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (preferredVisiblePositionForNewSectionWithIdentifier__onceToken != -1)
  {
    +[WBSStartPageSectionManager preferredVisiblePositionForNewSectionWithIdentifier:];
  }

  v4 = [preferredVisiblePositionForNewSectionWithIdentifier__identifiersToStartPositions objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

void __82__WBSStartPageSectionManager_preferredVisiblePositionForNewSectionWithIdentifier___block_invoke()
{
  v0 = preferredVisiblePositionForNewSectionWithIdentifier__identifiersToStartPositions;
  preferredVisiblePositionForNewSectionWithIdentifier__identifiersToStartPositions = MEMORY[0x1E695E0F8];
}

+ (WBSStartPageSectionManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[WBSStartPageSectionManager defaultManager];
  }

  v3 = defaultManager_defaultManager;

  return v3;
}

void __44__WBSStartPageSectionManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(WBSStartPageSectionManager);
  v1 = defaultManager_defaultManager;
  defaultManager_defaultManager = v0;
}

- (WBSStartPageSectionManager)init
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [(WBSStartPageSectionManager *)self initWithStorage:safari_browserDefaults];

  return v4;
}

- (WBSStartPageSectionManager)initWithStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = WBSStartPageSectionManager;
  v5 = [(WBSStartPageSectionManager *)&v9 init];
  v5->_lock._os_unfair_lock_opaque = 0;
  storage = v5->_storage;
  v5->_storage = storageCopy;
  v7 = storageCopy;

  [(WBSStartPageSectionManagerStorage *)v5->_storage addObserver:v5 forKeyPath:@"StartPageSections" options:0 context:kvoContext];
  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kvoContext == context)
  {

    [(WBSStartPageSectionManager *)self invalidateCache:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = WBSStartPageSectionManager;
    [(WBSStartPageSectionManager *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (NSArray)sectionIdentifiers
{
  sections = [(WBSStartPageSectionManager *)self sections];
  v3 = [sections safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_77_1];

  return v3;
}

- (id)sectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sections = [(WBSStartPageSectionManager *)self sections];
  v6 = indexOfSectionWithIdentifier(sections, identifierCopy);

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [sections objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (NSArray)cloudKitStartPageSectionOrder
{
  [(WBSStartPageSectionManager *)self _updateCloudKitStartPageSectionOrderPreferenceKey];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults arrayForKey:*MEMORY[0x1E69C8B48]];

  return v3;
}

uint64_t __79__WBSStartPageSectionManager__updateCloudKitStartPageSectionOrderPreferenceKey__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) indexOfObject:v5];
  v8 = [*(a1 + 32) indexOfObject:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [*(a1 + 40) indexOfObject:v5];
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*(a1 + 40) indexOfObject:v6];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v11 = [v9 compare:v10];

  return v11;
}

- (void)reorderSectionsToMatchOrderedIdentifiers:(id)identifiers
{
  v26 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
        [dictionary setObject:v13 forKeyedSubscript:v12];

        ++v9;
        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  sections = [(WBSStartPageSectionManager *)self sections];
  v15 = [sections mutableCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__WBSStartPageSectionManager_reorderSectionsToMatchOrderedIdentifiers___block_invoke;
  v19[3] = &unk_1E7FCAB70;
  v16 = dictionary;
  v20 = v16;
  [v15 sortUsingComparator:v19];
  if (([sections isEqualToArray:v15] & 1) == 0)
  {
    v18 = 0;
    v17 = [(WBSStartPageSectionManager *)self _migrateUnknownSectionIdentifiersIntoCurrentSections:v15 didChangeSections:&v18];

    [(WBSStartPageSectionManager *)self saveSections:v17 andUpdateInMemoryCache:1];
    v15 = v17;
  }
}

uint64_t __71__WBSStartPageSectionManager_reorderSectionsToMatchOrderedIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 identifier];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = *(a1 + 32);
  v10 = [v6 identifier];

  v11 = [v9 objectForKeyedSubscript:v10];

  if (v8)
  {
    if (v11)
    {
      v12 = [v8 compare:v11];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)setSectionsIdentifiers:(id)identifiers enabledIndexes:(id)indexes
{
  indexesCopy = indexes;
  v7 = MEMORY[0x1E695DFA8];
  identifiersCopy = identifiers;
  v9 = objc_alloc_init(v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__WBSStartPageSectionManager_setSectionsIdentifiers_enabledIndexes___block_invoke;
  v15[3] = &unk_1E7FCAB98;
  v16 = v9;
  v17 = indexesCopy;
  v10 = indexesCopy;
  v11 = v9;
  v12 = [identifiersCopy safari_mapAndFilterObjectsWithOptions:0 usingBlock:v15];

  v14 = 0;
  v13 = [(WBSStartPageSectionManager *)self _migrateUnknownSectionIdentifiersIntoCurrentSections:v12 didChangeSections:&v14];

  [(WBSStartPageSectionManager *)self saveSections:v13 andUpdateInMemoryCache:1];
}

WBSStartPageSectionDescriptor *__68__WBSStartPageSectionManager_setSectionsIdentifiers_enabledIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:v5])
  {
    v6 = 0;
  }

  else
  {
    [*(a1 + 32) addObject:v5];
    v6 = -[WBSStartPageSectionDescriptor initWithIdentifier:enabled:]([WBSStartPageSectionDescriptor alloc], "initWithIdentifier:enabled:", v5, [*(a1 + 40) containsIndex:a3]);
  }

  return v6;
}

- (id)_migrateUnknownSectionIdentifiersIntoCurrentSections:(id)sections didChangeSections:(BOOL *)changeSections
{
  v80 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  allSections = [objc_opt_class() allSections];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __101__WBSStartPageSectionManager__migrateUnknownSectionIdentifiersIntoCurrentSections_didChangeSections___block_invoke;
  v69[3] = &unk_1E7FCABC0;
  v7 = dictionary;
  v70 = v7;
  [allSections enumerateObjectsUsingBlock:v69];

  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = -1;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __101__WBSStartPageSectionManager__migrateUnknownSectionIdentifiersIntoCurrentSections_didChangeSections___block_invoke_2;
  v57[3] = &unk_1E7FCABE8;
  v59 = &v65;
  v60 = &v61;
  v8 = v7;
  v58 = v8;
  [sectionsCopy enumerateObjectsUsingBlock:v57];
  v39 = [v8 objectForKeyedSubscript:@"suggestionsItemIdentifier"];
  if (v39 && v66[3] != -1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v8 setObject:v9 forKeyedSubscript:@"suggestionsItemIdentifier"];
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSArray *)self->_cachedSections copy];
  os_unfair_lock_unlock(&self->_lock);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __101__WBSStartPageSectionManager__migrateUnknownSectionIdentifiersIntoCurrentSections_didChangeSections___block_invoke_3;
  v55[3] = &unk_1E7FCAC10;
  v11 = v8;
  v56 = v11;
  v37 = v10;
  [v10 enumerateObjectsUsingBlock:v55];
  v42 = v11;
  v12 = [v11 keysSortedByValueUsingSelector:sel_compare_];
  v13 = [sectionsCopy mutableCopy];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v51 objects:v79 count:16];
  if (v14)
  {
    v15 = *v52;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        if ([v17 isEqualToString:@"suggestionsItemIdentifier"])
        {
          v18 = *(v62 + 24);
        }

        else
        {
          v18 = 1;
        }

        v19 = [[WBSStartPageSectionDescriptor alloc] initWithIdentifier:v17 enabled:v18];
        v20 = [v42 objectForKeyedSubscript:v17];
        unsignedIntValue = [v20 unsignedIntValue];

        if ([v13 count] <= unsignedIntValue)
        {
          v22 = WBS_LOG_CHANNEL_PREFIXStartPage();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [v13 count];
            *buf = 138412802;
            v74 = v17;
            v75 = 2048;
            v76 = unsignedIntValue;
            v77 = 2048;
            v78 = v23;
            _os_log_error_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_ERROR, "Attempting to add section identifier: %@ to index %lu which is outside of bounds [0..%lu]", buf, 0x20u);
          }

          [v13 addObject:v19];
        }

        else
        {
          [v13 insertObject:v19 atIndex:unsignedIntValue];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v51 objects:v79 count:16];
    }

    while (v14);
  }

  v24 = [MEMORY[0x1E695DFA8] set];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = v13;
  v26 = [v25 countByEnumeratingWithState:&v47 objects:v72 count:16];
  if (v26)
  {
    v27 = *v48;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v25);
        }

        identifier = [*(*(&v47 + 1) + 8 * j) identifier];
        [v24 addObject:identifier];
      }

      v26 = [v25 countByEnumeratingWithState:&v47 objects:v72 count:16];
    }

    while (v26);
  }

  v30 = [MEMORY[0x1E695DFA8] set];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = sectionsCopy;
  v32 = [v31 countByEnumeratingWithState:&v43 objects:v71 count:16];
  if (v32)
  {
    v33 = *v44;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(v31);
        }

        identifier2 = [*(*(&v43 + 1) + 8 * k) identifier];
        [v30 addObject:identifier2];
      }

      v32 = [v31 countByEnumeratingWithState:&v43 objects:v71 count:16];
    }

    while (v32);
  }

  *changeSections = [v24 isEqualToSet:v30] ^ 1;
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);

  return v25;
}

void __101__WBSStartPageSectionManager__migrateUnknownSectionIdentifiersIntoCurrentSections_didChangeSections___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __101__WBSStartPageSectionManager__migrateUnknownSectionIdentifiersIntoCurrentSections_didChangeSections___block_invoke_2(void *a1, void *a2, unint64_t a3)
{
  v14 = a2;
  v5 = [v14 identifier];
  v6 = [v5 isEqualToString:@"frequentlyVisitedItemIdentifier"];

  v7 = [v14 identifier];
  v8 = [v7 isEqualToString:@"highlightsItemIdentifier"];

  if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
  {
    v9 = (v6 | v8) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && [v14 isEnabled])
  {
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 24);
    if (v11 >= a3)
    {
      v11 = a3;
    }

    *(v10 + 24) = v11;
    *(*(a1[6] + 8) + 24) = 1;
  }

  v12 = a1[4];
  v13 = [v14 identifier];
  [v12 setObject:0 forKeyedSubscript:v13];
}

void __101__WBSStartPageSectionManager__migrateUnknownSectionIdentifiersIntoCurrentSections_didChangeSections___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  v7 = [v5 identifier];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v10 = *(a1 + 32);
    v11 = [v12 identifier];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }
}

- (void)setSectionIdentifier:(id)identifier enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sections = [(WBSStartPageSectionManager *)self sections];
  v8 = [sections mutableCopy];

  if ([(WBSStartPageSectionManager *)self ensureSection:identifierCopy enabled:enabledCopy inSectionData:v8])
  {
    [(WBSStartPageSectionManager *)self saveSections:v8 andUpdateInMemoryCache:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = @"WBSStartPageSectionManagerSectionUserInfoKey";
    v12[0] = identifierCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [defaultCenter postNotificationName:@"WBSStartPageSectionManagerSectionVisibilityChangedNotification" object:self userInfo:v10];
  }
}

- (void)invalidateCache
{
  os_unfair_lock_lock(&self->_lock);
  cachedSections = self->_cachedSections;
  self->_cachedSections = 0;

  ignoreChanges = self->_ignoreChanges;
  os_unfair_lock_unlock(&self->_lock);
  if (!ignoreChanges)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"WBSStartPageSectionManagerSectionsDidChangeNotification" object:self];
  }
}

- (void)saveSections:(id)sections andUpdateInMemoryCache:(BOOL)cache
{
  cacheCopy = cache;
  sectionsCopy = sections;
  [(WBSStartPageSectionManagerStorage *)self->_storage setStartPageSectionDescriptors:?];
  if (cacheCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v6 = [sectionsCopy copy];
    cachedSections = self->_cachedSections;
    self->_cachedSections = v6;

    os_unfair_lock_unlock(&self->_lock);
  }
}

WBSStartPageSectionDescriptor *__53__WBSStartPageSectionManager_readAndValidateSections__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSStartPageSectionDescriptor alloc] initWithIdentifier:v2 enabled:1];

  return v3;
}

- (void)_updateCloudKitStartPageSectionOrderPreferenceKey
{
  if (self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = *MEMORY[0x1E69C8B48];
    v4 = [standardUserDefaults arrayForKey:*MEMORY[0x1E69C8B48]];

    v5 = [v4 mutableCopy];
    sectionIdentifiers = [self sectionIdentifiers];
    v7 = sectionIdentifiers;
    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __79__WBSStartPageSectionManager__updateCloudKitStartPageSectionOrderPreferenceKey__block_invoke;
      v9[3] = &unk_1E7FCAB48;
      v10 = sectionIdentifiers;
      v11 = v4;
      v7 = v7;
      [v5 sortUsingComparator:v9];
    }

    else
    {
      v5 = [sectionIdentifiers mutableCopy];
    }

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setObject:v5 forKey:v3];
  }
}

- (uint64_t)ensureSection:(uint64_t)section enabled:(void *)enabled inSectionData:
{
  v7 = a2;
  enabledCopy = enabled;
  v9 = enabledCopy;
  if (!self)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v10 = indexOfSectionWithIdentifier(enabledCopy, v7);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [[WBSStartPageSectionDescriptor alloc] initWithIdentifier:v7 enabled:section];
    [v9 addObject:v11];
  }

  else
  {
    v12 = v10;
    v11 = [v9 objectAtIndexedSubscript:v10];
    if ([(WBSStartPageSectionDescriptor *)v11 isEnabled]== section)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v13 = [(WBSStartPageSectionDescriptor *)v11 sectionWithEnabled:section];
    [v9 setObject:v13 atIndexedSubscript:v12];
  }

  v14 = 1;
LABEL_8:

LABEL_9:
  return v14;
}

@end
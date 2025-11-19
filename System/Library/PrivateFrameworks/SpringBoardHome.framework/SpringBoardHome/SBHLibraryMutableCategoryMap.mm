@interface SBHLibraryMutableCategoryMap
- (void)addApplicationIdentifier:(id)a3 forCategoryIdentifier:(id)a4;
- (void)removeCategoryIdentifier:(id)a3;
- (void)setLocalizedCategoryName:(id)a3 forCategoryIdentifier:(id)a4;
- (void)setSortedApplicationIdentifiers:(id)a3 forCategoryIdentifier:(id)a4;
- (void)sortApplicationIdentifiersForCategoryIdentifier:(id)a3 descriptors:(id)a4;
- (void)updateRecentlyAddedCategoryFromMap:(id)a3;
@end

@implementation SBHLibraryMutableCategoryMap

- (void)setLocalizedCategoryName:(id)a3 forCategoryIdentifier:(id)a4
{
  v8 = a3;
  v6 = self->super._localizedCategoryNameByCategoryIdentifier;
  v7 = a4;
  if ([v8 length])
  {
    [(NSMutableDictionary *)v6 setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    [(NSMutableDictionary *)v6 removeObjectForKey:v7];
  }
}

- (void)setSortedApplicationIdentifiers:(id)a3 forCategoryIdentifier:(id)a4
{
  v9 = a3;
  v6 = self->super._sortedApplicationIdentifiersByCategoryIdentifier;
  v7 = a4;
  v8 = [v7 predictionCategoryID];
  if ([v9 count] || v8 == 7)
  {
    [(NSMutableDictionary *)v6 setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    [(NSMutableDictionary *)v6 removeObjectForKey:v7];
  }
}

- (void)sortApplicationIdentifiersForCategoryIdentifier:(id)a3 descriptors:(id)a4
{
  sortedApplicationIdentifiersByCategoryIdentifier = self->super._sortedApplicationIdentifiersByCategoryIdentifier;
  v7 = a4;
  v8 = a3;
  v9 = [(NSMutableDictionary *)sortedApplicationIdentifiersByCategoryIdentifier objectForKeyedSubscript:v8];
  v10 = [v9 mutableCopy];

  [v10 sortUsingDescriptors:v7];
  [(SBHLibraryMutableCategoryMap *)self setSortedApplicationIdentifiers:v10 forCategoryIdentifier:v8];
}

- (void)addApplicationIdentifier:(id)a3 forCategoryIdentifier:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self->super._categoryIdentifiers;
  if (([(NSMutableOrderedSet *)self->super._categoryIdentifiers containsObject:v7]& 1) == 0)
  {
    [(NSMutableOrderedSet *)v8 addObject:v7];
  }

  v9 = [(NSMutableDictionary *)self->super._sortedApplicationIdentifiersByCategoryIdentifier objectForKey:v7];
  if (([v9 containsObject:v6] & 1) == 0)
  {
    if (v9)
    {
      v10 = [v9 arrayByAddingObject:v6];

      v9 = v10;
    }

    else
    {
      v11[0] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    [(NSMutableDictionary *)self->super._sortedApplicationIdentifiersByCategoryIdentifier setObject:v9 forKey:v7];
  }
}

- (void)removeCategoryIdentifier:(id)a3
{
  sortedApplicationIdentifiersByCategoryIdentifier = self->super._sortedApplicationIdentifiersByCategoryIdentifier;
  v5 = a3;
  [(NSMutableDictionary *)sortedApplicationIdentifiersByCategoryIdentifier removeObjectForKey:v5];
  [(NSMutableDictionary *)self->super._localizedCategoryNameByCategoryIdentifier removeObjectForKey:v5];
  [(NSMutableOrderedSet *)self->super._categoryIdentifiers removeObject:v5];
}

- (void)updateRecentlyAddedCategoryFromMap:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SBHLibraryMutableCategoryMap_updateRecentlyAddedCategoryFromMap___block_invoke;
  v7[3] = &unk_1E808B7D8;
  v8 = v4;
  v9 = self;
  v5 = v4;
  v6 = _Block_copy(v7);
  v6[2](v6, 4);
}

void __67__SBHLibraryMutableCategoryMap_updateRecentlyAddedCategoryFromMap___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) categoryIdentifierForProactiveCategoryIdentifier:a2];
  v4 = [*(a1 + 40) categoryIdentifierForProactiveCategoryIdentifier:a2];
  if (v6)
  {
    if (!v4)
    {
      v4 = [v6 copy];
      [*(a1 + 40) addCategoryIdentifier:v4];
    }

    v5 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v6];
    [*(a1 + 40) setSortedApplicationIdentifiers:v5 forCategoryIdentifier:v4];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    [*(a1 + 40) removeCategoryIdentifier:v4];
  }

LABEL_8:
}

@end
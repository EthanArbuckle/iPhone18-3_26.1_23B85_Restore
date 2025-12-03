@interface SBHLibraryMutableCategoryMap
- (void)addApplicationIdentifier:(id)identifier forCategoryIdentifier:(id)categoryIdentifier;
- (void)removeCategoryIdentifier:(id)identifier;
- (void)setLocalizedCategoryName:(id)name forCategoryIdentifier:(id)identifier;
- (void)setSortedApplicationIdentifiers:(id)identifiers forCategoryIdentifier:(id)identifier;
- (void)sortApplicationIdentifiersForCategoryIdentifier:(id)identifier descriptors:(id)descriptors;
- (void)updateRecentlyAddedCategoryFromMap:(id)map;
@end

@implementation SBHLibraryMutableCategoryMap

- (void)setLocalizedCategoryName:(id)name forCategoryIdentifier:(id)identifier
{
  nameCopy = name;
  v6 = self->super._localizedCategoryNameByCategoryIdentifier;
  identifierCopy = identifier;
  if ([nameCopy length])
  {
    [(NSMutableDictionary *)v6 setObject:nameCopy forKeyedSubscript:identifierCopy];
  }

  else
  {
    [(NSMutableDictionary *)v6 removeObjectForKey:identifierCopy];
  }
}

- (void)setSortedApplicationIdentifiers:(id)identifiers forCategoryIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  v6 = self->super._sortedApplicationIdentifiersByCategoryIdentifier;
  identifierCopy = identifier;
  predictionCategoryID = [identifierCopy predictionCategoryID];
  if ([identifiersCopy count] || predictionCategoryID == 7)
  {
    [(NSMutableDictionary *)v6 setObject:identifiersCopy forKeyedSubscript:identifierCopy];
  }

  else
  {
    [(NSMutableDictionary *)v6 removeObjectForKey:identifierCopy];
  }
}

- (void)sortApplicationIdentifiersForCategoryIdentifier:(id)identifier descriptors:(id)descriptors
{
  sortedApplicationIdentifiersByCategoryIdentifier = self->super._sortedApplicationIdentifiersByCategoryIdentifier;
  descriptorsCopy = descriptors;
  identifierCopy = identifier;
  v9 = [(NSMutableDictionary *)sortedApplicationIdentifiersByCategoryIdentifier objectForKeyedSubscript:identifierCopy];
  v10 = [v9 mutableCopy];

  [v10 sortUsingDescriptors:descriptorsCopy];
  [(SBHLibraryMutableCategoryMap *)self setSortedApplicationIdentifiers:v10 forCategoryIdentifier:identifierCopy];
}

- (void)addApplicationIdentifier:(id)identifier forCategoryIdentifier:(id)categoryIdentifier
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  categoryIdentifierCopy = categoryIdentifier;
  v8 = self->super._categoryIdentifiers;
  if (([(NSMutableOrderedSet *)self->super._categoryIdentifiers containsObject:categoryIdentifierCopy]& 1) == 0)
  {
    [(NSMutableOrderedSet *)v8 addObject:categoryIdentifierCopy];
  }

  v9 = [(NSMutableDictionary *)self->super._sortedApplicationIdentifiersByCategoryIdentifier objectForKey:categoryIdentifierCopy];
  if (([v9 containsObject:identifierCopy] & 1) == 0)
  {
    if (v9)
    {
      v10 = [v9 arrayByAddingObject:identifierCopy];

      v9 = v10;
    }

    else
    {
      v11[0] = identifierCopy;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    [(NSMutableDictionary *)self->super._sortedApplicationIdentifiersByCategoryIdentifier setObject:v9 forKey:categoryIdentifierCopy];
  }
}

- (void)removeCategoryIdentifier:(id)identifier
{
  sortedApplicationIdentifiersByCategoryIdentifier = self->super._sortedApplicationIdentifiersByCategoryIdentifier;
  identifierCopy = identifier;
  [(NSMutableDictionary *)sortedApplicationIdentifiersByCategoryIdentifier removeObjectForKey:identifierCopy];
  [(NSMutableDictionary *)self->super._localizedCategoryNameByCategoryIdentifier removeObjectForKey:identifierCopy];
  [(NSMutableOrderedSet *)self->super._categoryIdentifiers removeObject:identifierCopy];
}

- (void)updateRecentlyAddedCategoryFromMap:(id)map
{
  mapCopy = map;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SBHLibraryMutableCategoryMap_updateRecentlyAddedCategoryFromMap___block_invoke;
  v7[3] = &unk_1E808B7D8;
  v8 = mapCopy;
  selfCopy = self;
  v5 = mapCopy;
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
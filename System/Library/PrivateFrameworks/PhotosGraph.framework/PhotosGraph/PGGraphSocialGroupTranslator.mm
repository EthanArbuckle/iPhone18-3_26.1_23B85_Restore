@interface PGGraphSocialGroupTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block;
- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (id)graphChangesForInsertedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
@end

@implementation PGGraphSocialGroupTranslator

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v8 = MEMORY[0x277CBEB18];
  identifierCopy = identifier;
  array = [v8 array];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __106__PGGraphSocialGroupTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
  v20 = &unk_278887C38;
  v21 = @"socialGroupVerifiedType";
  v22 = changeCopy;
  selfCopy = self;
  v11 = array;
  v24 = v11;
  v12 = changeCopy;
  [identifierCopy enumerateKeysAndObjectsUsingBlock:&v17];

  if ([v11 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = [v11 count];
      *buf = 134217984;
      v26 = v13;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Update %ld social groups", buf, 0xCu);
    }

    v14 = v11;
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __106__PGGraphSocialGroupTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([v5 containsObject:*(a1 + 32)] & 1) != 0 || objc_msgSend(*(a1 + 40), "membersOrAssetContainmentForSocialGroupChangedWithLocalIdentifier:", v9))
  {
    v6 = *(a1 + 48);
    v7 = [objc_opt_class() uuidFromLocalIdentifier:v9];
    v8 = [[PGGraphSocialGroupChange alloc] initWithSocialGroupUUID:v7 propertyNames:v5];
    [*(a1 + 56) addObject:v8];
  }
}

- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = [identifiersCopy count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Delete %ld social groups", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:identifiersCopy];
  v6 = [[PGGraphSocialGroupsDeletion alloc] initWithSocialGroupUUIDs:v5];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)graphChangesForInsertedLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = [identifiersCopy count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Insert %ld new social groups", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:identifiersCopy];
  v6 = [[PGGraphSocialGroupsInsertion alloc] initWithSocialGroupUUIDs:v5];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end
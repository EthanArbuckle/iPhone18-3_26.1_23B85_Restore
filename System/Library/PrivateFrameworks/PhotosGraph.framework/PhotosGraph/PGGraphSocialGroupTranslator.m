@interface PGGraphSocialGroupTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)a3 change:(id)a4 progressBlock:(id)a5;
- (id)graphChangesForDeletedLocalIdentifiers:(id)a3 progressBlock:(id)a4;
- (id)graphChangesForInsertedLocalIdentifiers:(id)a3 progressBlock:(id)a4;
@end

@implementation PGGraphSocialGroupTranslator

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)a3 change:(id)a4 progressBlock:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MEMORY[0x277CBEB18];
  v9 = a3;
  v10 = [v8 array];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __106__PGGraphSocialGroupTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
  v20 = &unk_278887C38;
  v21 = @"socialGroupVerifiedType";
  v22 = v7;
  v23 = self;
  v11 = v10;
  v24 = v11;
  v12 = v7;
  [v9 enumerateKeysAndObjectsUsingBlock:&v17];

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

- (id)graphChangesForDeletedLocalIdentifiers:(id)a3 progressBlock:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = [v4 count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Delete %ld social groups", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:v4];
  v6 = [[PGGraphSocialGroupsDeletion alloc] initWithSocialGroupUUIDs:v5];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)graphChangesForInsertedLocalIdentifiers:(id)a3 progressBlock:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = [v4 count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Insert %ld new social groups", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:v4];
  v6 = [[PGGraphSocialGroupsInsertion alloc] initWithSocialGroupUUIDs:v5];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end
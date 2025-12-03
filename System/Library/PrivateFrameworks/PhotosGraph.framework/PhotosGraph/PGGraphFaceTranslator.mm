@interface PGGraphFaceTranslator
- (id)_momentChangesForFaceLocalIdentifiers:(id)identifiers;
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block;
- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (id)graphChangesForInsertedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
@end

@implementation PGGraphFaceTranslator

- (id)_momentChangesForFaceLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  photoLibrary = [(PGGraphEntityTranslator *)self photoLibrary];
  v6 = momentChangesForLocalIdentifiers(identifiersCopy, photoLibrary, &__block_literal_global_422);

  return v6;
}

id __63__PGGraphFaceTranslator__momentChangesForFaceLocalIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CD98F8];
  v5 = a3;
  v6 = [a2 allObjects];
  v7 = [v4 fetchMomentsForFacesWithLocalIdentifiers:v6 options:v5];

  return v7;
}

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  changeCopy = change;
  v10 = _Block_copy(block);
  v11 = 0.0;
  if (!v10 || (v12 = CFAbsoluteTimeGetCurrent(), v12 < 0.01))
  {
LABEL_8:
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    array = [MEMORY[0x277CBEB18] array];
    v28 = identifierCopy;
    allKeys = [identifierCopy allKeys];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(allKeys);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          if ([changeCopy personRelationshipChangedForFaceWithLocalIdentifier:v21])
          {
            [v14 addObject:v21];
          }
        }

        v18 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v18);
    }

    if (v10)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v23 = &unk_22F784000;
      if (Current - v11 >= 0.01)
      {
        v33 = 0;
        v10[2](v10, &v33, 0.5);
        if (v33)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v36 = 786;
            v37 = 2080;
            v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
            v24 = MEMORY[0x277D86220];
LABEL_31:
            _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

        v11 = Current;
      }
    }

    else
    {
      v23 = &unk_22F784000;
    }

    if ([v14 count])
    {
      v25 = [(PGGraphFaceTranslator *)self _momentChangesForFaceLocalIdentifiers:v14];
      [array addObjectsFromArray:v25];
    }

    if (!v10 || CFAbsoluteTimeGetCurrent() - v11 < v23[76] || (v33 = 0, v10[2](v10, &v33, 1.0), !v33))
    {
      v13 = array;
      goto LABEL_34;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v36 = 795;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
      v24 = MEMORY[0x277D86220];
      goto LABEL_31;
    }

LABEL_32:
    v13 = MEMORY[0x277CBEBF8];
LABEL_34:

    identifierCopy = v28;
    goto LABEL_35;
  }

  v33 = 0;
  v10[2](v10, &v33, 0.0);
  if (v33 != 1)
  {
    v11 = v12;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v36 = 767;
    v37 = 2080;
    v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_35:

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v11 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = [identifiersCopy count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Delete %ld faces", &v9, 0xCu);
  }

  v6 = [(PGGraphFaceTranslator *)self _momentChangesForFaceLocalIdentifiers:identifiersCopy];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)graphChangesForInsertedLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v11 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = [identifiersCopy count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Insert %ld new faces via moment updates", &v9, 0xCu);
  }

  v6 = [(PGGraphFaceTranslator *)self _momentChangesForFaceLocalIdentifiers:identifiersCopy];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end
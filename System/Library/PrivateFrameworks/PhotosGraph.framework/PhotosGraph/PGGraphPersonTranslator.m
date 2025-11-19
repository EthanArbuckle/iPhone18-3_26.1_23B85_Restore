@interface PGGraphPersonTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)a3 change:(id)a4 progressBlock:(id)a5;
- (id)graphChangesForDeletedLocalIdentifiers:(id)a3 progressBlock:(id)a4;
- (id)personNodePropertyKeysFromPHPersonPropertyKeys:(id)a3;
- (id)personTypeProperties;
- (id)stateUpdateProperties;
- (id)verifiedTypeProperties;
@end

@implementation PGGraphPersonTranslator

- (id)personNodePropertyKeysFromPHPersonPropertyKeys:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 isEqualToString:{@"name", v13}] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"displayName"))
        {
          [v4 addObject:@"name"];
        }

        if ([v10 isEqualToString:@"type"])
        {
          [v4 addObject:@"fav"];
        }

        if ([v10 isEqualToString:@"personUri"])
        {
          [v4 addObject:@"cnid"];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)personTypeProperties
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)verifiedTypeProperties
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"verifiedType";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)stateUpdateProperties
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"name";
  v7[1] = @"displayName";
  v7[2] = @"personUri";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)a3 change:(id)a4 progressBlock:(id)a5
{
  v105[1] = *MEMORY[0x277D85DE8];
  v65 = a3;
  v60 = a4;
  v61 = a5;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v66 = _Block_copy(v61);
  if (!v66 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v92[3] < 0.01) || (v92[3] = v8, LOBYTE(v105[0]) = 0, (*(v66 + 2))(v66, v105, 0.0), v9 = *(v96 + 24) | LOBYTE(v105[0]), *(v96 + 24) = v9, (v9 & 1) == 0))
  {
    v11 = [(PGGraphPersonTranslator *)self verifiedTypeProperties];
    v12 = [(PGGraphPersonTranslator *)self stateUpdateProperties];
    v13 = [(PGGraphPersonTranslator *)self personTypeProperties];
    v63 = self;
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = [MEMORY[0x277CBEB18] array];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
    v79[3] = &unk_278887BC8;
    v57 = v11;
    v80 = v57;
    v62 = v14;
    v81 = v62;
    v59 = v13;
    v82 = v59;
    v83 = self;
    v64 = v16;
    v84 = v64;
    v58 = v12;
    v85 = v58;
    v18 = v17;
    v86 = v18;
    v55 = v66;
    v87 = v55;
    v88 = &v91;
    v89 = &v95;
    v90 = 0x3F847AE147AE147BLL;
    [v65 enumerateKeysAndObjectsUsingBlock:v79];
    if (*(v96 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 623;
        LOWORD(v102) = 2080;
        *(&v102 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v19 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if ([v64 count])
      {
        v20 = MEMORY[0x277CBEB58];
        v21 = [v64 allKeys];
        v22 = [v20 setWithArray:v21];

        v23 = [(PGGraphEntityTranslator *)self photoLibrary];
        v24 = v22;
        v25 = [v23 librarySpecificFetchOptions];
        v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"localIdentifier", v24];

        [v25 setPredicate:v26];
        [v25 setIncludedDetectionTypes:&unk_2844863D8];
        v27 = *MEMORY[0x277CD9C58];
        *buf = *MEMORY[0x277CD9C60];
        *&v102 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:2];
        [v25 setFetchPropertySets:v28];

        v29 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:v25];

        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_396;
        v75[3] = &unk_278887BF0;
        v76 = v18;
        v77 = v15;
        v78 = v64;
        [v29 enumerateObjectsUsingBlock:v75];
      }

      if ([v62 count])
      {
        v30 = [(PGGraphEntityTranslator *)self photoLibrary];
        v56 = v62;
        v31 = [v30 librarySpecificFetchOptions];
        v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier IN %@ AND verifiedType = %d", v56, -2];

        [v31 setPredicate:v32];
        [v31 setIncludedDetectionTypes:&unk_2844863F0];
        v105[0] = *MEMORY[0x277CD9C60];
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:1];
        [v31 setFetchPropertySets:v33];

        v34 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:v31];
        v35 = [MEMORY[0x277CBEB58] set];
        *buf = MEMORY[0x277D85DD0];
        *&v102 = 3221225472;
        *(&v102 + 1) = __tombstonedLocalIdentifiersFrom_block_invoke;
        v103 = &unk_278887C60;
        v36 = v35;
        v104 = v36;
        [v34 enumerateObjectsUsingBlock:buf];

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v37 = v36;
        v38 = [v37 countByEnumeratingWithState:&v71 objects:v100 count:16];
        if (v38)
        {
          v39 = *v72;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v72 != v39)
              {
                objc_enumerationMutation(v37);
              }

              v41 = *(*(&v71 + 1) + 8 * i);
              v42 = [PGGraphPersonsDeletion alloc];
              v43 = [MEMORY[0x277CBEB98] setWithObject:v41];
              v44 = [(PGGraphPersonsDeletion *)v42 initWithPersonLocalIdentifiers:v43];

              [v18 addObject:v44];
            }

            v38 = [v37 countByEnumeratingWithState:&v71 objects:v100 count:16];
          }

          while (v38);
        }

        [v56 minusSet:v37];
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v45 = v56;
        v46 = [v45 countByEnumeratingWithState:&v67 objects:v99 count:16];
        if (v46)
        {
          v47 = *v68;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v68 != v47)
              {
                objc_enumerationMutation(v45);
              }

              [v15 addObject:*(*(&v67 + 1) + 8 * j)];
            }

            v46 = [v45 countByEnumeratingWithState:&v67 objects:v99 count:16];
          }

          while (v46);
        }
      }

      if ([v15 count])
      {
        v49 = [(PGGraphEntityTranslator *)v63 photoLibrary];
        v50 = momentChangesForLocalIdentifiers(v15, v49, &__block_literal_global_60300);

        [v18 addObjectsFromArray:v50];
      }

      if (!v66 || (Current = CFAbsoluteTimeGetCurrent(), Current - v92[3] < 0.01) || (v92[3] = Current, LOBYTE(v105[0]) = 0, (*(v55 + 2))(v55, v105, 1.0), v52 = *(v96 + 24) | LOBYTE(v105[0]), *(v96 + 24) = v52, (v52 & 1) == 0))
      {
        v10 = v18;
        goto LABEL_38;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 693;
        LOWORD(v102) = 2080;
        *(&v102 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v19 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    v10 = MEMORY[0x277CBEBF8];
LABEL_38:

    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 574;
    LOWORD(v102) = 2080;
    *(&v102 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_39:
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);

  v53 = *MEMORY[0x277D85DE8];

  return v10;
}

void __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([v8 intersectsSet:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v7];
  }

  if ([v8 intersectsSet:*(a1 + 48)])
  {
    v9 = [*(a1 + 56) personNodePropertyKeysFromPHPersonPropertyKeys:v8];
    [*(a1 + 64) setObject:v9 forKeyedSubscript:v7];
LABEL_7:

    goto LABEL_8;
  }

  if ([v8 intersectsSet:*(a1 + 72)])
  {
    v9 = [*(a1 + 56) personNodePropertyKeysFromPHPersonPropertyKeys:v8];
    v10 = [[PGGraphPersonChange alloc] initWithPersonLocalIdentifier:v7 propertyNames:v9];
    [*(a1 + 80) addObject:v10];

    goto LABEL_7;
  }

LABEL_8:
  if (*(a1 + 88))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v12 = *(*(a1 + 96) + 8);
    if (Current - *(v12 + 24) >= *(a1 + 112))
    {
      *(v12 + 24) = Current;
      (*(*(a1 + 88) + 16))(0.5);
      *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24);
      if (*(*(*(a1 + 104) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }
}

void __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_396(id *a1, void *a2)
{
  v3 = a2;
  v9 = [v3 localIdentifier];
  v4 = [v3 type];

  if (v4 >= 2)
  {
    if (v4 != -1)
    {
      goto LABEL_6;
    }

    v7 = [PGGraphPersonsDeletion alloc];
    v8 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v5 = [(PGGraphPersonsDeletion *)v7 initWithPersonLocalIdentifiers:v8];

    [a1[4] addObject:v5];
  }

  else
  {
    [a1[5] addObject:v9];
    v5 = [a1[6] objectForKeyedSubscript:v9];
    v6 = [[PGGraphPersonChange alloc] initWithPersonLocalIdentifier:v9 propertyNames:v5];
    [a1[4] addObject:v6];
  }

LABEL_6:
}

id __101__PGGraphPersonTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CD98F8];
  v5 = a3;
  v6 = [a2 allObjects];
  v7 = [v4 fetchMomentsForPersonsWithLocalIdentifiers:v6 options:v5];

  return v7;
}

- (id)graphChangesForDeletedLocalIdentifiers:(id)a3 progressBlock:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = [v4 count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Delete %ld persons", buf, 0xCu);
  }

  v5 = [[PGGraphPersonsDeletion alloc] initWithPersonLocalIdentifiers:v4];
  v9 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end
@interface PGTripKeyAssetQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
- (void)_enumerateTrips:(id)a3;
@end

@implementation PGTripKeyAssetQuestionFactory

- (void)_enumerateTrips:(id)a3
{
  v85[3] = *MEMORY[0x277D85DE8];
  v59 = a3;
  v4 = [(PGSurveyQuestionFactory *)self workingContext];
  v5 = [v4 photoLibrary];

  v6 = [v5 librarySpecificFetchOptions];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(type = %d OR type = %d) AND enrichmentState == %d", 1, 2, 4];
  [v6 setPredicate:v7];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v85[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:1];
  v85[1] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v85[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:3];
  [v6 setSortDescriptors:v11];

  v50 = v6;
  v12 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:v6];
  v52 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v13 = [v5 librarySpecificFetchOptions];
  v84 = *MEMORY[0x277CD9AA8];
  v14 = v84;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
  v58 = v13;
  [v13 setFetchPropertySets:v15];

  v51 = v5;
  v16 = [v5 librarySpecificFetchOptions];
  v83 = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
  v54 = v16;
  [v16 setFetchPropertySets:v17];

  v76 = 0;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v12;
  v56 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v56)
  {
    v55 = *v73;
    v18 = 0x277CD9000uLL;
    while (2)
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v73 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v72 + 1) + 8 * i);
        v21 = [*(v18 + 1960) fetchKeyCuratedAssetInAssetCollection:v20 referenceAsset:0 options:v58];
        v22 = [v21 firstObject];

        if (v22)
        {
          buf[0] = 0;
          v59[2](v59, v20, v22, 1, buf, &v76);
          if (v76)
          {

            goto LABEL_26;
          }

          v23 = MEMORY[0x277CCAC30];
          v24 = [v20 objectID];
          v25 = [v23 predicateWithFormat:@"highlightBeingKeyAssetPrivate.parentDayGroupPhotosHighlight == %@", v24];
          [v54 setInternalPredicate:v25];

          v26 = v18;
          v27 = [*(v18 + 1960) fetchAssetsWithOptions:v54];
          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v29 = v27;
          v30 = [v29 countByEnumeratingWithState:&v68 objects:v81 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v69;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v69 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v68 + 1) + 8 * j);
                if (([v34 isEqual:v22] & 1) == 0)
                {
                  [v28 addObject:v34];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v68 objects:v81 count:16];
            }

            while (v31);
          }

          if ([v28 count])
          {
            [v52 setObject:v28 forKey:v20];
          }

          v18 = v26;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v80 = v20;
          _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected nil key asset for trip %@", buf, 0xCu);
        }
      }

      v56 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (v56)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  if ((v76 & 1) == 0)
  {
    v35 = 0uLL;
    while (1)
    {
      v66 = v35;
      v67 = v35;
      v64 = v35;
      v65 = v35;
      v36 = [v52 keyEnumerator];
      v37 = [v36 countByEnumeratingWithState:&v64 objects:v78 count:16];
      if (!v37)
      {
        break;
      }

      v38 = v37;
      v39 = *v65;
      v57 = 1;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v65 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v64 + 1) + 8 * k);
          v42 = [v52 objectForKey:v41];
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v43 = v42;
          v44 = [v43 countByEnumeratingWithState:&v60 objects:v77 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v61;
            while (2)
            {
              for (m = 0; m != v45; ++m)
              {
                if (*v61 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v60 + 1) + 8 * m);
                buf[0] = 0;
                v59[2](v59, v41, v48, 0, buf, &v76);
                if (v76 == 1)
                {

                  goto LABEL_49;
                }

                if (buf[0])
                {
                  v57 = 0;
                  goto LABEL_44;
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v60 objects:v77 count:16];
              if (v45)
              {
                continue;
              }

              break;
            }
          }

LABEL_44:
        }

        v38 = [v36 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v38);

      v35 = 0uLL;
      if (v57)
      {
        goto LABEL_50;
      }
    }

LABEL_49:
  }

LABEL_50:

  v49 = *MEMORY[0x277D85DE8];
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _Block_copy(v6);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v34[3] >= 0.01)
    {
      v34[3] = Current;
      v32 = 0;
      v7[2](v7, &v32, 0.0);
      v9 = *(v38 + 24) | v32;
      *(v38 + 24) = v9;
      if (v9)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_19:
          v18 = MEMORY[0x277CBEBF8];
          goto LABEL_22;
        }

        *buf = 67109378;
        v42 = 34;
        v43 = 2080;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripKeyAsset/PGTripKeyAssetQuestionFactory.m";
        v10 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_19;
      }
    }

    if (!a3)
    {
      v11 = CFAbsoluteTimeGetCurrent();
      if (v11 - v34[3] < 0.01)
      {
        goto LABEL_19;
      }

      v34[3] = v11;
      v32 = 0;
      v7[2](v7, &v32, 1.0);
      v12 = *(v38 + 24) | v32;
      *(v38 + 24) = v12;
      if ((v12 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 67109378;
      v42 = 38;
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripKeyAsset/PGTripKeyAssetQuestionFactory.m";
      v10 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

  else if (!a3)
  {
    goto LABEL_19;
  }

  v13 = [MEMORY[0x277CBEB58] set];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __74__PGTripKeyAssetQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v24 = &unk_27887F378;
  v25 = self;
  v14 = v13;
  v26 = v14;
  v30 = a3;
  v15 = v7;
  v27 = v15;
  v28 = &v33;
  v31 = 0x3F847AE147AE147BLL;
  v29 = &v37;
  [(PGTripKeyAssetQuestionFactory *)self _enumerateTrips:&v21];
  if (v7 && (v16 = CFAbsoluteTimeGetCurrent(), v16 - v34[3] >= 0.01) && (v34[3] = v16, v32 = 0, v15[2](v15, &v32, 1.0), v17 = *(v38 + 24) | v32, *(v38 + 24) = v17, (v17 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v42 = 68;
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripKeyAsset/PGTripKeyAssetQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v18 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v18 = [v14 allObjects];
  }

LABEL_22:
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __74__PGTripKeyAssetQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, int a4, _BYTE *a5, _BYTE *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = objc_autoreleasePoolPush();
  v14 = MEMORY[0x277CCACA8];
  v15 = [v11 localizedTitle];
  v16 = [v11 localizedSubtitle];
  v17 = [v14 stringWithFormat:@"%@ (%@)", v15, v16];

  v18 = [v11 type] == 1;
  if (a4)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.5;
  }

  v20 = [PGTripKeyAssetQuestion alloc];
  v21 = [v12 uuid];
  v22 = [(PGTripKeyAssetQuestion *)v20 initWithKeyAssetUUID:v21 tripName:v17 isLongTrip:v18 localFactoryScore:v19];

  if ([*(a1 + 32) shouldAddQuestion:v22 toAlreadyGeneratedQuestions:*(a1 + 40)] && (objc_msgSend(*(a1 + 40), "addObject:", v22), *a5 = 1, objc_msgSend(*(a1 + 40), "count") >= *(a1 + 72)))
  {
    *a6 = 1;
  }

  else
  {
    v23 = [*(a1 + 40) count];
    if (*(a1 + 48))
    {
      v24 = v23;
      v25 = *(a1 + 72);
      Current = CFAbsoluteTimeGetCurrent();
      v27 = *(*(a1 + 56) + 8);
      if (Current - *(v27 + 24) >= *(a1 + 80))
      {
        *(v27 + 24) = Current;
        (*(*(a1 + 48) + 16))(v24 / v25);
        *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          *a6 = 1;
        }
      }
    }
  }

  objc_autoreleasePoolPop(v13);
}

@end
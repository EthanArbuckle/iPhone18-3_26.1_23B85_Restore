@interface PGGraphIngestPersonAgeCategoryProcessorHelper
- (PGGraphIngestPersonAgeCategoryProcessorHelper)init;
- (id)ageDescriptionFromAge:(unint64_t)a3;
- (unint64_t)ageCategoryForPersonNode:(id)a3 ageCategoryCountedSet:(id)a4;
- (unint64_t)ageCategoryFromAssetSamplingScenesForPersonNode:(id)a3 photoLibrary:(id)a4 curationSession:(id)a5;
- (unint64_t)ageCategoryFromBirthdayDateComponents:(id)a3 currentDate:(id)a4;
- (unint64_t)ageCategoryFromBirthdayDateForPersonNode:(id)a3;
- (unint64_t)ageCategoryFromPHFaceAgeType:(unsigned __int16)a3;
- (unint64_t)ageCategoryFromScenesByAssetLocalIdentifier:(id)a3 curationModelByAssetLocalIdentifier:(id)a4 personNode:(id)a5;
- (unint64_t)ageCategoryUsingFaceAttributesForPersonNode:(id)a3 photoLibrary:(id)a4;
@end

@implementation PGGraphIngestPersonAgeCategoryProcessorHelper

- (id)ageDescriptionFromAge:(unint64_t)a3
{
  if (a3 > 5)
  {
    return @"AgeCategoryUnspecified";
  }

  else
  {
    return off_278884AA0[a3];
  }
}

- (unint64_t)ageCategoryFromScenesByAssetLocalIdentifier:(id)a3 curationModelByAssetLocalIdentifier:(id)a4 personNode:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __140__PGGraphIngestPersonAgeCategoryProcessorHelper_ageCategoryFromScenesByAssetLocalIdentifier_curationModelByAssetLocalIdentifier_personNode___block_invoke;
  v25[3] = &unk_278884A80;
  v11 = v9;
  v26 = v11;
  v27 = self;
  v28 = &v39;
  v29 = &v35;
  v30 = &v31;
  [v8 enumerateKeysAndObjectsUsingBlock:v25];
  v12 = [v8 count];
  v13 = +[PGLogging sharedLogging];
  v14 = [v13 loggingConnection];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v10 stringDescription];
    v16 = v40[3];
    v17 = v36[3];
    v18 = v32[3];
    *buf = 138478851;
    v44 = v15;
    v45 = 2048;
    v46 = v16;
    v47 = 2048;
    v48 = v17;
    v49 = 2048;
    v50 = v18;
    v51 = 2048;
    v52 = v12;
    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ - (baby: %lu, child: %lu, teen: %lu, total: %lu)", buf, 0x34u);
  }

  v19 = v40[3];
  v20 = v12;
  if (v19 / v12 >= 0.6)
  {
    v22 = 1;
  }

  else
  {
    v21 = v36[3] + v19;
    if (v21 / v20 >= 0.6)
    {
      v22 = 2;
    }

    else if ((v32[3] + v21) / v20 >= 0.6)
    {
      v22 = 3;
    }

    else
    {
      v22 = 0;
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void __140__PGGraphIngestPersonAgeCategoryProcessorHelper_ageCategoryFromScenesByAssetLocalIdentifier_curationModelByAssetLocalIdentifier_personNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [*(*(a1 + 40) + 8) confidenceThresholdBySceneIdentifierWithCurationModel:v7];
  v9 = [*(*(a1 + 40) + 16) confidenceThresholdBySceneIdentifierWithCurationModel:v7];
  v47 = [*(*(a1 + 40) + 24) confidenceThresholdBySceneIdentifierWithCurationModel:v7];
  v44 = [*(*(a1 + 40) + 32) confidenceThresholdBySceneIdentifierWithCurationModel:v7];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v39 = a1;
    v40 = v7;
    v41 = v5;
    v42 = 0;
    v43 = 0;
    v13 = *v50;
    v46 = *v50;
    do
    {
      v14 = 0;
      v45 = v12;
      do
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v49 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "extendedSceneIdentifier")}];
        v18 = [v8 objectForKeyedSubscript:v17];
        if (v18 && ([v15 confidence], v20 = v19, objc_msgSend(v18, "doubleValue"), v20 >= v21))
        {
          BYTE4(v43) = 1;
        }

        else
        {
          v48 = v16;
          v22 = [v9 objectForKeyedSubscript:{v17, v39}];
          if (v22 && ([v15 confidence], v24 = v23, objc_msgSend(v22, "doubleValue"), v24 >= v25))
          {
            LOBYTE(v43) = 1;
          }

          else
          {
            v26 = [v47 objectForKeyedSubscript:v17];
            if (v26 && ([v15 confidence], v28 = v27, objc_msgSend(v26, "doubleValue"), v28 >= v29))
            {
              BYTE4(v42) = 1;
            }

            else
            {
              v30 = v10;
              v31 = v9;
              v32 = v8;
              v33 = [v44 objectForKeyedSubscript:v17];
              if (v33)
              {
                [v15 confidence];
                v35 = v34;
                [v33 doubleValue];
                if (v35 >= v36)
                {
                  LOBYTE(v42) = 1;
                }
              }

              v8 = v32;
              v9 = v31;
              v10 = v30;
              v12 = v45;
            }

            v13 = v46;
          }

          v16 = v48;
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v12);

    v7 = v40;
    v5 = v41;
    if ((v42 & 1) == 0)
    {
      if ((v43 & 0x100000000) != 0)
      {
        v37 = v39[6];
LABEL_31:
        ++*(*(v37 + 8) + 24);
        goto LABEL_32;
      }

      if (v43)
      {
        v37 = v39[7];
        goto LABEL_31;
      }

      if ((v42 & 0x100000000) != 0)
      {
        v37 = v39[8];
        goto LABEL_31;
      }
    }
  }

  else
  {
  }

LABEL_32:

  v38 = *MEMORY[0x277D85DE8];
}

- (unint64_t)ageCategoryFromAssetSamplingScenesForPersonNode:(id)a3 photoLibrary:(id)a4 curationSession:(id)a5
{
  v47[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 localIdentifier];
  if ([v11 length])
  {
    v12 = *MEMORY[0x277CD9AD0];
    v47[0] = *MEMORY[0x277CD9B10];
    v47[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v14 = [PGGraphIngestFaceAttributeConveniences sampledAssetsWithSingleFaceForPersonLocalIdentifier:v11 photoLibrary:v9 numberOfYearsBack:100 sampleSize:200 fetchPropertySets:v13];

    v15 = [v14 count];
    if (v15 < 5)
    {
      v30 = v15;
      v31 = +[PGLogging sharedLogging];
      v20 = [v31 loggingConnection];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v32 = [v8 stringDescription];
        *buf = 138478083;
        v43 = v32;
        v44 = 2048;
        v45 = v30;
        _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ has not enough singleton face assets: %lu", buf, 0x16u);
      }

      v29 = 0;
    }

    else
    {
      v35 = self;
      v37 = v9;
      v16 = objc_alloc(MEMORY[0x277CBEA60]);
      v17 = [v14 fetchedObjects];
      v18 = [v16 initWithArray:v17];

      v36 = v10;
      [v10 prepareAssets:v18];
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v39;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v39 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v38 + 1) + 8 * i);
            v26 = [v25 curationModel];
            v27 = [v25 localIdentifier];
            [v19 setObject:v26 forKeyedSubscript:v27];
          }

          v22 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v22);
      }

      v28 = [MEMORY[0x277CD9990] fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v14];
      v29 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)v35 ageCategoryFromScenesByAssetLocalIdentifier:v28 curationModelByAssetLocalIdentifier:v19 personNode:v8];

      v10 = v36;
      v9 = v37;
    }
  }

  else
  {
    v29 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v29;
}

- (unint64_t)ageCategoryFromBirthdayDateForPersonNode:(id)a3
{
  v4 = [a3 birthdayDateComponents];
  if (v4)
  {
    v5 = [MEMORY[0x277D27690] currentLocalDate];
    v6 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self ageCategoryFromBirthdayDateComponents:v4 currentDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)ageCategoryFromBirthdayDateComponents:(id)a3 currentDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 year];
  v8 = 0;
  if (v5 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277D27690] dateFromComponents:v5 inTimeZone:0];
    [v6 timeIntervalSinceDate:v9];
    if (v10 >= 94672800.0)
    {
      if (v10 >= 410248800.0)
      {
        if (v10 >= 978285600.0)
        {
          if (v10 >= 1925013600.0)
          {
            v8 = 5;
          }

          else
          {
            v8 = 4;
          }
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (unint64_t)ageCategoryFromPHFaceAgeType:(unsigned __int16)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_22F78C7B0[(a3 - 1)];
  }
}

- (unint64_t)ageCategoryForPersonNode:(id)a3 ageCategoryCountedSet:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![&unk_2844860D8 count])
  {
    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v11 = [&unk_2844860D8 objectAtIndexedSubscript:v9];
    v12 = [v7 countForObject:v11];
    if (v12 >= v8 && v12 > 4)
    {
      v8 = v12;
      v10 = v9;
    }

    ++v9;
  }

  while (v9 < [&unk_2844860D8 count]);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    v13 = +[PGLogging sharedLogging];
    v14 = [v13 loggingConnection];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v6 stringDescription];
      *buf = 138477827;
      v44 = v15;
      _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ has no age bracket that hits minimum criteria", buf, 0xCu);
    }

LABEL_22:
    v38 = 0;
    goto LABEL_23;
  }

  v16 = [&unk_2844860D8 objectAtIndexedSubscript:v10];
  v17 = [v16 unsignedIntValue];

  v18 = +[PGLogging sharedLogging];
  v19 = [v18 loggingConnection];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v6 stringDescription];
    v21 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self ageDescriptionFromAge:v17];
    *buf = 138478339;
    v44 = v20;
    v45 = 2112;
    v46 = v21;
    v47 = 2048;
    v48 = v8;
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ most represented age bracket is %@ (%lu faces)", buf, 0x20u);
  }

  v42 = self;

  v22 = MEMORY[0x277CBEB18];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  v14 = [v22 arrayWithObject:v23];

  v24 = v10 + 1;
  if (v24 < [&unk_2844860D8 count])
  {
    v26 = v8;
    *&v25 = 138478339;
    v41 = v25;
    while (1)
    {
      v27 = [&unk_2844860D8 objectAtIndexedSubscript:{v24, v41}];
      v28 = [v7 countForObject:v27];
      if (v28 < 5)
      {
        break;
      }

      v29 = v28;
      if (v28 / v26 < 0.3)
      {
        break;
      }

      v30 = [&unk_2844860D8 objectAtIndexedSubscript:v24];
      v31 = [v30 unsignedIntValue];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
      [v14 addObject:v32];

      v33 = +[PGLogging sharedLogging];
      v34 = [v33 loggingConnection];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [v6 stringDescription];
        v36 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)v42 ageDescriptionFromAge:v31];
        *buf = v41;
        v44 = v35;
        v45 = 2112;
        v46 = v36;
        v47 = 2048;
        v48 = v29;
        _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ possible age bracket %@ (%lu faces)", buf, 0x20u);
      }

      if (++v24 >= [&unk_2844860D8 count])
      {
        goto LABEL_20;
      }
    }
  }

LABEL_20:
  if (![v14 count])
  {
    goto LABEL_22;
  }

  v37 = [v14 lastObject];
  v38 = [v37 unsignedIntValue];

LABEL_23:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

- (unint64_t)ageCategoryUsingFaceAttributesForPersonNode:(id)a3 photoLibrary:(id)a4
{
  v34[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 localIdentifier];
  if ([v8 length])
  {
    v9 = [PGGraphIngestFaceAttributeConveniences sampledAssetsWithSingleFaceForPersonLocalIdentifier:v8 photoLibrary:v7 numberOfYearsBack:5 sampleSize:200 fetchPropertySets:0];
    v10 = 0;
    if ([v9 count] >= 5)
    {
      v11 = [v7 librarySpecificFetchOptions];
      v12 = *MEMORY[0x277CD9BD8];
      v34[0] = *MEMORY[0x277CD9BD0];
      v34[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
      [v11 setFetchPropertySets:v13];

      v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ageType != %lu", 0];
      [v11 setInternalPredicate:v14];

      v15 = [MEMORY[0x277CCA940] set];
      v16 = [MEMORY[0x277CD9868] fetchFacesInAssets:v9 options:v11];
      v10 = 0;
      if ([v16 count] >= 5)
      {
        v27 = v11;
        v28 = v7;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v26 = v16;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v30;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v30 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = -[PGGraphIngestPersonAgeCategoryProcessorHelper ageCategoryFromPHFaceAgeType:](self, "ageCategoryFromPHFaceAgeType:", [*(*(&v29 + 1) + 8 * i) ageType]);
              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
              [v15 addObject:v23];
            }

            v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v19);
        }

        v10 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self ageCategoryForPersonNode:v6 ageCategoryCountedSet:v15];
        v7 = v28;
        v16 = v26;
        v11 = v27;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v10;
}

- (PGGraphIngestPersonAgeCategoryProcessorHelper)init
{
  v12.receiver = self;
  v12.super_class = PGGraphIngestPersonAgeCategoryProcessorHelper;
  v2 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_284486078 thresholdType:1];
    babyScenesHelper = v2->_babyScenesHelper;
    v2->_babyScenesHelper = v3;

    v5 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_284486090 thresholdType:1];
    childScenesHelper = v2->_childScenesHelper;
    v2->_childScenesHelper = v5;

    v7 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_2844860A8 thresholdType:1];
    teenScenesHelper = v2->_teenScenesHelper;
    v2->_teenScenesHelper = v7;

    v9 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_2844860C0 thresholdType:1];
    adultScenesHelper = v2->_adultScenesHelper;
    v2->_adultScenesHelper = v9;
  }

  return v2;
}

@end
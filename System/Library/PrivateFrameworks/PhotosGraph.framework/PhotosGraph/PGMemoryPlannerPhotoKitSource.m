@interface PGMemoryPlannerPhotoKitSource
+ (BOOL)translateLegacyMemoryCategory:(unint64_t)a3 subcategory:(unint64_t)a4 toNewMemoryCategory:(unint64_t *)a5 triggerType:(unint64_t *)a6;
- (PGMemoryPlannerPhotoKitSource)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4;
- (id)memoriesToAvoidForConfiguration:(id)a3 withGraph:(id)a4 progressReporter:(id)a5;
- (id)pastMemoriesForConfiguration:(id)a3 withGraph:(id)a4 progressReporter:(id)a5;
- (id)triggeredMemoriesFromPersistedMemories:(id)a3 withGraph:(id)a4 progressReporter:(id)a5;
@end

@implementation PGMemoryPlannerPhotoKitSource

- (id)triggeredMemoriesFromPersistedMemories:(id)a3 withGraph:(id)a4 progressReporter:(id)a5
{
  v111 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v75 = a5;
  v9 = [v7 count];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v11 = v7;
  v74 = [v11 countByEnumeratingWithState:&v95 objects:v110 count:16];
  if (v74)
  {
    v12 = 1.0 / v9;
    v73 = *v96;
    v13 = 0.0;
    v71 = v11;
    v72 = v8;
    v70 = v10;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v96 != v73)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v95 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      v13 = v12 + v13;
      if ([v75 isCancelledWithProgress:v13])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v102 = 90;
          *&v102[4] = 2080;
          *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPlannerPhotoKitSource.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v16);

        v66 = MEMORY[0x277CBEBF8];
        goto LABEL_41;
      }

      v17 = [MEMORY[0x277CD98D8] fetchMomentsBackingMemory:v15 options:0];
      v84 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v91 objects:v109 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v92;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v92 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = [*(*(&v91 + 1) + 8 * i) uuid];
            [v84 addObject:v22];
          }

          v19 = [obj countByEnumeratingWithState:&v91 objects:v109 count:16];
        }

        while (v19);
      }

      v23 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v84 inGraph:v8];
      v24 = [v23 count];
      if (v24 < [v84 count])
      {
        break;
      }

      if (v24)
      {
        goto LABEL_18;
      }

LABEL_35:

      objc_autoreleasePoolPop(v16);
      if (++v14 == v74)
      {
        v74 = [v11 countByEnumeratingWithState:&v95 objects:v110 count:16];
        if (v74)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      }
    }

    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v102 = "[PGMemoryPlannerPhotoKitSource triggeredMemoriesFromPersistedMemories:withGraph:progressReporter:]";
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%s: Cannot find some moment nodes for moment uuids", buf, 0xCu);
    }

LABEL_18:
    v90 = [v15 category];
    v26 = [v15 subcategory];
    v27 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:v8];
    [v15 photosGraphVersion];
    v28 = PLMemoriesAlgorithmsVersionFromPhotosGraphVersion();
    v81 = v14;
    v82 = v16;
    v80 = v23;
    if (v90 > 0x64 || v28 < 0x301)
    {
      v89 = 0;
      if (([objc_opt_class() translateLegacyMemoryCategory:v90 subcategory:v26 toNewMemoryCategory:&v90 triggerType:&v89] & 1) == 0)
      {
        v39 = self->_loggingConnection;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v59 = MEMORY[0x277CD98D8];
          v60 = v90;
          v61 = v39;
          v62 = [v59 stringForCategory:v60];
          v63 = [MEMORY[0x277CD98D8] stringForSubcategory:v26];
          v64 = [PGGraphBuilder memoryLabelForCategory:v90];
          v65 = [PGMemoryTrigger stringFromTriggerType:v89];
          *buf = 136316162;
          *v102 = "[PGMemoryPlannerPhotoKitSource triggeredMemoriesFromPersistedMemories:withGraph:progressReporter:]";
          *&v102[8] = 2112;
          *&v102[10] = v62;
          v103 = 2112;
          v104 = v63;
          v105 = 2112;
          v106 = v64;
          v107 = 2112;
          v108 = v65;
          _os_log_error_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_ERROR, "%s: Failed to translate memory category %@ sub category %@ into memory category %@ trigger type %@", buf, 0x34u);
        }
      }

      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v89];
      v100 = v40;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];

      v77 = 0;
      v78 = 0;
    }

    else
    {
      v29 = [v15 photosGraphProperties];
      v30 = [v29 objectForKeyedSubscript:@"triggerTypes"];
      v31 = v30;
      v32 = MEMORY[0x277CBEBF8];
      if (v30)
      {
        v32 = v30;
      }

      v33 = v32;

      v34 = [v29 objectForKeyedSubscript:@"memoryCategorySubcategory"];
      v78 = [v34 unsignedIntegerValue];

      v35 = [v29 objectForKeyedSubscript:@"encodedFeatures"];
      v36 = [PGFeature featuresForEncodedFeatures:v35];
      v37 = [PGGraphFeatureNodeCollection featureNodeCollectionWithFeatures:v36 inGraph:v8];

      v38 = [v29 objectForKeyedSubscript:@"generatedWithFallbackRequirements"];
      v77 = [v38 BOOLValue];

      v27 = v37;
    }

    v79 = v27;
    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v42 = v33;
    v43 = [v42 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v86;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v86 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v85 + 1) + 8 * j);
          v48 = objc_alloc(MEMORY[0x277CCA970]);
          v49 = [v15 creationDate];
          v50 = [v15 creationDate];
          v51 = [v48 initWithStartDate:v49 endDate:v50];
          [v41 setObject:v51 forKeyedSubscript:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v85 objects:v99 count:16];
      }

      while (v44);
    }

    v52 = [PGGraphBuilder memoryLabelForCategory:v90];
    v53 = [PGGraphMemoryNode uniqueMemoryIdentifierWithMemoryLabel:v52 featureNodes:v79];

    v54 = [PGTriggeredMemory alloc];
    v55 = v90;
    v56 = [v15 creationDate];
    LOBYTE(v69) = v77;
    v57 = v55;
    v23 = v80;
    v58 = [(PGTriggeredMemory *)v54 initWithMemoryCategory:v57 memoryCategorySubcategory:v78 memoryMomentNodes:v80 memoryFeatureNodes:v79 validityIntervalByTriggerType:v41 creationDate:v56 uniqueMemoryIdentifier:v53 generatedWithFallbackRequirements:v69];

    v10 = v70;
    [v70 addObject:v58];

    v11 = v71;
    v8 = v72;
    v14 = v81;
    v16 = v82;
    goto LABEL_35;
  }

LABEL_37:

  v66 = v10;
LABEL_41:

  v67 = *MEMORY[0x277D85DE8];

  return v66;
}

- (id)memoriesToAvoidForConfiguration:(id)a3 withGraph:(id)a4 progressReporter:(id)a5
{
  v33[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = self->_loggingConnection;
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGMemoryPlannerPhotoKitSourceMemoriesToAvoid", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v27 = mach_absolute_time();
  v13 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v13 setIncludeRejectedMemories:1];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"userCreated == NO && rejected == YES"];
  [v13 setPredicate:v14];

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v33[0] = v15;
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:1];
  v33[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  [v13 setSortDescriptors:v17];

  v18 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v13];
  if ([v18 count])
  {
    v19 = [(PGMemoryPlannerPhotoKitSource *)self triggeredMemoriesFromPersistedMemories:v18 withGraph:v7 progressReporter:v8];
    v20 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v23 = v12;
    v24 = v23;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, v10, "PGMemoryPlannerPhotoKitSourceMemoriesToAvoid", "", buf, 2u);
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "PGMemoryPlannerPhotoKitSourceMemoriesToAvoid";
      v31 = 2048;
      v32 = ((((v20 - v27) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)pastMemoriesForConfiguration:(id)a3 withGraph:(id)a4 progressReporter:(id)a5
{
  v39[2] = *MEMORY[0x277D85DE8];
  v33 = a4;
  v8 = a5;
  v9 = self->_loggingConnection;
  v10 = a3;
  v11 = os_signpost_id_generate(v9);
  v12 = v9;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGMemoryPlannerPhotoKitSourcePastMemories", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v32 = mach_absolute_time();
  v14 = [v10 pastMemoryCollisionUniversalDateInterval];

  v15 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v16 = MEMORY[0x277CCAC30];
  v17 = [v14 startDate];
  v18 = [v14 endDate];
  v19 = [v16 predicateWithFormat:@"creationDate >= %@ AND creationDate <= %@ && category != %d", v17, v18, 401];
  [v15 setPredicate:v19];

  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v39[0] = v20;
  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:1];
  v39[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  [v15 setSortDescriptors:v22];

  v23 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v15];
  if ([v23 count])
  {
    v24 = [(PGMemoryPlannerPhotoKitSource *)self triggeredMemoriesFromPersistedMemories:v23 withGraph:v33 progressReporter:v8];
    v25 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v28 = v13;
    v29 = v28;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v11, "PGMemoryPlannerPhotoKitSourcePastMemories", "", buf, 2u);
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "PGMemoryPlannerPhotoKitSourcePastMemories";
      v37 = 2048;
      v38 = ((((v25 - v32) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v24;
}

- (PGMemoryPlannerPhotoKitSource)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGMemoryPlannerPhotoKitSource;
  v9 = [(PGMemoryPlannerPhotoKitSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
  }

  return v10;
}

+ (BOOL)translateLegacyMemoryCategory:(unint64_t)a3 subcategory:(unint64_t)a4 toNewMemoryCategory:(unint64_t *)a5 triggerType:(unint64_t *)a6
{
  *a5 = 0;
  *a6 = 0;
  result = 1;
  if (a3 <= 215)
  {
    if (a3 <= 211)
    {
      if (a3 <= 200)
      {
        if (a3 && a3 != 32)
        {
          goto LABEL_36;
        }

LABEL_18:
        result = 0;
        goto LABEL_36;
      }

      if (a3 != 201)
      {
        if (a3 == 202)
        {
          result = 1;
          *a5 = 1;
          *a6 = 4;
        }

        goto LABEL_36;
      }

      v7 = 8;
LABEL_35:
      *a5 = v7;
      result = 1;
      goto LABEL_36;
    }

    if (a3 > 213)
    {
      if (a3 == 214)
      {
        result = 1;
        *a5 = 1;
        *a6 = 11;
        goto LABEL_36;
      }

      v8 = 17;
    }

    else
    {
      if (a3 != 212)
      {
        result = 1;
        *a5 = 1;
LABEL_31:
        *a6 = 1;
        goto LABEL_36;
      }

      v8 = 16;
    }

    *a5 = v8;
    result = 1;
    goto LABEL_31;
  }

  if (a3 > 219)
  {
    switch(a3)
    {
      case 0xDCuLL:
        v7 = 3;
        break;
      case 0xDDuLL:
        v7 = 7;
        break;
      case 0x191uLL:
        goto LABEL_18;
      default:
        goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (a3 - 216 < 2)
  {
    v7 = 21;
    goto LABEL_35;
  }

  if (a3 != 218)
  {
    if (a3 != 219)
    {
      goto LABEL_36;
    }

    v7 = 4;
    goto LABEL_35;
  }

  result = 1;
  if (a4 == 203)
  {
LABEL_57:
    v9 = 6;
    goto LABEL_67;
  }

  if (a4 == 204)
  {
LABEL_54:
    v9 = 3;
    goto LABEL_67;
  }

LABEL_36:
  if (a4 <= 300)
  {
    switch(a4)
    {
      case 0xC9uLL:
        v9 = 1;
        goto LABEL_67;
      case 0xCAuLL:
        goto LABEL_54;
      case 0xCBuLL:
        if (a3 != 220)
        {
          goto LABEL_57;
        }

        v9 = 5;
        goto LABEL_67;
      case 0xCCuLL:
        if (a3 != 220)
        {
          goto LABEL_54;
        }

        v9 = 2;
        goto LABEL_67;
      case 0xCDuLL:
      case 0xCEuLL:
        v9 = 19;
        goto LABEL_67;
      case 0xCFuLL:
      case 0xD0uLL:
      case 0xD1uLL:
        return result;
      case 0xD2uLL:
        *a5 = 3;
        *a6 = 2;
        return result;
      case 0xD3uLL:
        v9 = 20;
        goto LABEL_67;
      case 0xD4uLL:
        v9 = 10;
        goto LABEL_67;
      case 0xD5uLL:
        goto LABEL_50;
      case 0xD6uLL:
        v9 = 17;
        goto LABEL_67;
      case 0xD7uLL:
        v9 = 18;
        goto LABEL_67;
      case 0xD8uLL:
        return 0;
      case 0xD9uLL:
        v9 = 11;
        goto LABEL_67;
      case 0xDAuLL:
        v9 = 9;
        goto LABEL_67;
      default:
        if (a4 != 102)
        {
          return result;
        }

LABEL_50:
        v9 = 16;
        break;
    }

    goto LABEL_67;
  }

  if (a4 <= 400)
  {
    if (a4 - 301 < 3)
    {
      return 0;
    }
  }

  else
  {
    if (a4 <= 402)
    {
      if (a4 == 401)
      {
        v9 = 13;
      }

      else
      {
        v9 = 12;
      }

      goto LABEL_67;
    }

    if (a4 == 403)
    {
      v9 = 15;
      goto LABEL_67;
    }

    if (a4 == 404)
    {
      v9 = 14;
LABEL_67:
      *a5 = v9;
    }
  }

  return result;
}

@end
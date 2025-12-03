@interface PGPetWallpaperSuggester
+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext thresholdHelper:(id)helper statistics:(id *)statistics;
+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason;
+ (id)prefilteringInternalPredicateWithContext:(id)context;
- (PGPetWallpaperSuggester)initWithSession:(id)session;
- (id)candidatesForPet:(id)pet;
- (id)fetchPets;
- (id)sortedCandidatesByPetLocalIdentifierFromPets:(id)pets maximumNumberOfSuggestions:(unint64_t)suggestions progressReporter:(id)reporter;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (void)logPosterFilteringStatistics:(id *)statistics;
- (void)setupFilteringContexts;
@end

@implementation PGPetWallpaperSuggester

- (void)logPosterFilteringStatistics:(id *)statistics
{
  v39 = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    var0 = statistics->var0;
    var1 = statistics->var1;
    var2 = statistics->var2;
    var3 = statistics->var3;
    var4 = statistics->var4;
    var5 = statistics->var5;
    var6 = statistics->var6;
    var7 = statistics->var7;
    var8 = statistics->var8;
    var9 = statistics->var9;
    var10 = statistics->var10;
    v18[0] = 67111680;
    v18[1] = var0;
    v19 = 1024;
    v20 = var1;
    v21 = 1024;
    v22 = var2;
    v23 = 1024;
    v24 = var3;
    v25 = 1024;
    v26 = var4;
    v27 = 1024;
    v28 = var5;
    v29 = 1024;
    v30 = var6;
    v31 = 1024;
    v32 = var7;
    v33 = 1024;
    v34 = var8;
    v35 = 1024;
    v36 = var9;
    v37 = 1024;
    v38 = var10;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for clock overlap, %d for low resolution, %d for crop score, %d for not safe for display, %d for positive people scene, %d for low light, %d for sensitive location", v18, 0x44u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)candidatesForPet:(id)pet
{
  v91 = *MEMORY[0x277D85DE8];
  petCopy = pet;
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];
  curationContext = [session curationContext];
  loggingConnection = [session loggingConnection];
  v8 = os_signpost_id_generate(loggingConnection);
  v9 = loggingConnection;
  v10 = v9;
  v50 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PGPetWallpaperFindCandidateForPet", "", buf, 2u);
  }

  spid = v8;

  info = 0;
  mach_timebase_info(&info);
  v49 = mach_absolute_time();
  v53 = photoLibrary;
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844853B8];
  v12 = objc_opt_class();
  primaryFilteringContext = [(PGPetWallpaperSuggester *)self primaryFilteringContext];
  v14 = [v12 prefilteringInternalPredicateWithContext:primaryFilteringContext];
  [librarySpecificFetchOptions setInternalPredicate:v14];

  v52 = librarySpecificFetchOptions;
  v15 = [MEMORY[0x277CD9868] fetchFacesForPerson:petCopy options:librarySpecificFetchOptions];
  v16 = v10;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v15 count];
    *buf = 134217984;
    *&buf[4] = v17;
    _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %lu faces.", buf, 0xCu);
  }

  v55 = petCopy;

  selfCopy = self;
  v51 = +[PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:](PGWallpaperSuggestionUtilities, "assetFetchPropertySetsIncludingGating:", [objc_opt_class() filtersForTopSuggestions]);
  v18 = [MEMORY[0x277CD97A8] fetchAssetsGroupedByFaceUUIDForFaces:v15 fetchPropertySets:?];
  v19 = MEMORY[0x277CD97A8];
  allValues = [v18 allValues];
  [v19 prefetchOnAssets:allValues options:14 curationContext:curationContext];

  v21 = v16;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v18 count];
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %lu assets.", buf, 0xCu);
  }

  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = session;
  forbiddenAssetUUIDs = [session forbiddenAssetUUIDs];
  v89 = 0u;
  memset(v90, 0, 28);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  *buf = 0u;
  v84 = 0u;
  v72 = 0u;
  memset(v73, 0, 28);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v15;
  v23 = [obj countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v63;
    do
    {
      v26 = 0;
      v58 = v24;
      do
      {
        if (*v63 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v62 + 1) + 8 * v26);
        uuid = [v27 uuid];
        v29 = [v18 objectForKeyedSubscript:uuid];

        if (v29)
        {
          uuid2 = [v29 uuid];
          v31 = [forbiddenAssetUUIDs containsObject:uuid2];

          if (v31)
          {
            v32 = v21;
            if (os_log_type_enabled(&v32->super, OS_LOG_TYPE_INFO))
            {
              uuid3 = [v29 uuid];
              *v75 = 138412290;
              *&v75[4] = uuid3;
              _os_log_impl(&dword_22F0FC000, &v32->super, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Avoiding asset %@ because it has been rejected by the user", v75, 0xCu);
            }
          }

          else
          {
            v32 = [[PGPetWallpaperSuggestionCandidate alloc] initWithFace:v27 inAsset:v29];
            v34 = objc_opt_class();
            primaryFilteringContext2 = [(PGPetWallpaperSuggester *)selfCopy primaryFilteringContext];
            LODWORD(v34) = [v34 candidate:v32 passesFilteringWithContext:primaryFilteringContext2 curationContext:curationContext thresholdHelper:selfCopy->_peopleSceneConfidenceThresholdHelper statistics:buf];

            if (v34)
            {
              if (!selfCopy->_secondaryFilteringContext || (v36 = objc_opt_class(), -[PGPetWallpaperSuggester secondaryFilteringContext](selfCopy, "secondaryFilteringContext"), v37 = objc_claimAutoreleasedReturnValue(), LODWORD(v36) = [v36 candidate:v32 passesFilteringWithContext:v37 curationContext:curationContext thresholdHelper:selfCopy->_peopleSceneConfidenceThresholdHelper statistics:&v66], v37, v36))
              {
                [v56 addObject:v32];
              }
            }

            v24 = v58;
          }
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [obj countByEnumeratingWithState:&v62 objects:v82 count:16];
    }

    while (v24);
  }

  v38 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v41 = v21;
  v42 = v41;
  if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *v75 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, spid, "PGPetWallpaperFindCandidateForPet", "", v75, 2u);
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *v75 = 136315394;
    *&v75[4] = "PGPetWallpaperFindCandidateForPet";
    *&v75[12] = 2048;
    *&v75[14] = ((((v38 - v49) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v75, 0x16u);
  }

  v43 = v42;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = [v56 count];
    localIdentifier = [v55 localIdentifier];
    *v75 = 67109378;
    *&v75[4] = v44;
    *&v75[8] = 2112;
    *&v75[10] = localIdentifier;
    _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %d candidates after postfiltering for Pet %@", v75, 0x12u);
  }

  v80 = v89;
  v81[0] = v90[0];
  *(v81 + 12) = *(v90 + 12);
  v76 = v85;
  v77 = v86;
  v78 = v87;
  v79 = v88;
  *v75 = *buf;
  *&v75[16] = v84;
  [(PGPetWallpaperSuggester *)selfCopy logPosterFilteringStatistics:v75];
  if (selfCopy->_secondaryFilteringContext)
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *v75 = 0;
      _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Secondary filtering...", v75, 2u);
    }

    v80 = v72;
    v81[0] = v73[0];
    *(v81 + 12) = *(v73 + 12);
    v76 = v68;
    v77 = v69;
    v78 = v70;
    v79 = v71;
    *v75 = v66;
    *&v75[16] = v67;
    [(PGPetWallpaperSuggester *)selfCopy logPosterFilteringStatistics:v75];
  }

  if (*&buf[4] >= 1)
  {
    [MEMORY[0x277D3C798] logInfo:v43 prefix:@"[PGPetWallpaperSuggester]" avoidForKeyAssetStatistics:&v85 + 12];
  }

  v46 = *MEMORY[0x277D85DE8];

  return v56;
}

- (id)sortedCandidatesByPetLocalIdentifierFromPets:(id)pets maximumNumberOfSuggestions:(unint64_t)suggestions progressReporter:(id)reporter
{
  v65 = *MEMORY[0x277D85DE8];
  petsCopy = pets;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v62 = 231;
      *&v62[4] = 2080;
      *&v62[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = MEMORY[0x277CBEC10];
  }

  else
  {
    v46 = reporterCopy;
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    v11 = os_signpost_id_generate(loggingConnection);
    v12 = loggingConnection;
    v13 = v12;
    v44 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGPetWallpaperSuggesterFindCandidateForAllPets", "", buf, 2u);
    }

    spid = v11;

    info = 0;
    mach_timebase_info(&info);
    v43 = mach_absolute_time();
    v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v47 = petsCopy;
    obj = petsCopy;
    v52 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v52)
    {
      v50 = *v57;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v57 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v56 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v16 = v13;
            uuid = [v15 uuid];
            *buf = 138412290;
            *v62 = uuid;
            _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Finding candidates for Pet %@", buf, 0xCu);
          }

          v53 = v15;
          spid = [(PGPetWallpaperSuggester *)self candidatesForPet:v15, spid];
          v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
          v63[0] = v18;
          v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"headroomEngaged" ascending:1];
          v63[1] = v19;
          [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScore" ascending:0];
          v21 = v20 = v13;
          v63[2] = v21;
          v22 = [MEMORY[0x277D3C828] cropScoreSortDescriptorForOrientation:{-[PGPetWallpaperSuggesterFilteringContext orientation](self->_primaryFilteringContext, "orientation")}];
          v63[3] = v22;
          v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
          v63[4] = v23;
          [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assetUUID" ascending:1];
          v25 = v24 = self;
          v63[5] = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:6];

          self = v24;
          v13 = v20;

          v27 = MEMORY[0x277D3C810];
          primaryFilteringContext = [(PGPetWallpaperSuggester *)v24 primaryFilteringContext];
          [primaryFilteringContext timeIntervalForCandidateDeduping];
          v29 = [v27 sortedDedupedCandidatesFromCandidates:spid sortDescriptors:v26 timeIntervalForCandidateDeduping:suggestions targetNumberOfSuggestions:4 maximumTimeIntervalReductionFactor:?];

          if ([spid count])
          {
            localIdentifier = [v53 localIdentifier];
            [v49 setObject:v29 forKeyedSubscript:localIdentifier];

            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v31 = v13;
              v32 = [spid count];
              *buf = 134217984;
              *v62 = v32;
              _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %lu candidates.", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(context);
        }

        v52 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v52);
    }

    reporterCopy = v46;
    if ([v46 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v62 = 258;
        *&v62[4] = 2080;
        *&v62[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = MEMORY[0x277CBEC10];
      petsCopy = v47;
      v33 = session;
      v34 = v49;
    }

    else
    {
      v35 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v38 = v13;
      v39 = v38;
      if (v44 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v39, OS_SIGNPOST_INTERVAL_END, spid, "PGPetWallpaperSuggesterFindCandidateForAllPets", "", buf, 2u);
      }

      v33 = session;
      v34 = v49;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v62 = "PGPetWallpaperSuggesterFindCandidateForAllPets";
        *&v62[8] = 2048;
        *&v62[10] = ((((v35 - v43) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v9 = v49;
      petsCopy = v47;
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)fetchPets
{
  v25 = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  v4 = os_signpost_id_generate(loggingConnection);
  v5 = loggingConnection;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PGPetWallpaperSuggesterFetchPets", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Fetching inferred user's pets and user-verified pets... (Pets Parity enabled)", buf, 2u);
  }

  workingContext = [session workingContext];
  curationContext = [session curationContext];
  v10 = [PGGraphPetIdentityProcessor fetchInterestingEligiblePetsForWallpaperWithWorkingContext:workingContext curationContext:curationContext];

  v11 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v14 = v6;
  v15 = v14;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_END, v4, "PGPetWallpaperSuggesterFetchPets", "", buf, 2u);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "PGPetWallpaperSuggesterFetchPets";
    v23 = 2048;
    v24 = ((((v11 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v16 = v15;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v10 count];
    *buf = 134217984;
    v22 = v17;
    _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Found %lu pets", buf, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v61 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v8 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:progressCopy];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v9 = [v8 isCancelledWithProgress:0.0];
  *(v56 + 24) = v9;
  if (!v9)
  {
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
    v14 = loggingConnection;
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PGPetWallpaperSuggester", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v41 = mach_absolute_time();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v60 = maximumNumberOfSuggestions;
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Starting to generate %d suggestions.", buf, 8u);
    }

    fetchPets = [(PGPetWallpaperSuggester *)self fetchPets];
    if (v56[3])
    {
      *(v56 + 24) = 1;
LABEL_13:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v60 = 102;
        *&v60[4] = 2080;
        *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_40;
    }

    v18 = [v8 isCancelledWithProgress:0.2];
    *(v56 + 24) = v18;
    if (v18)
    {
      goto LABEL_13;
    }

    v39 = [v8 childProgressReporterFromStart:0.2 toEnd:0.79];
    v40 = [(PGPetWallpaperSuggester *)self sortedCandidatesByPetLocalIdentifierFromPets:fetchPets maximumNumberOfSuggestions:maximumNumberOfSuggestions progressReporter:?];
    if (v56[3])
    {
      *(v56 + 24) = 1;
LABEL_19:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v60 = 107;
        *&v60[4] = 2080;
        *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_39;
    }

    v19 = [v8 isCancelledWithProgress:0.8];
    *(v56 + 24) = v19;
    if (v19)
    {
      goto LABEL_19;
    }

    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    suggestionTypes = [objc_opt_class() suggestionTypes];
    firstIndex = [suggestionTypes firstIndex];

    suggestionSubtypes = [objc_opt_class() suggestionSubtypes];
    firstIndex2 = [suggestionSubtypes firstIndex];

    v22 = self->_assetGater == 0;
    v23 = 5;
    if (!self->_assetGater)
    {
      v23 = 0;
    }

    v24 = 2 * maximumNumberOfSuggestions;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __59__PGPetWallpaperSuggester_suggestionsWithOptions_progress___block_invoke;
    v43[3] = &unk_27887EBF0;
    if (v22)
    {
      v24 = 0;
    }

    v49 = maximumNumberOfSuggestions;
    v50 = v23;
    v51 = v24;
    v25 = v17;
    v44 = v25;
    v48 = &v55;
    v26 = v8;
    v52 = firstIndex;
    v53 = firstIndex2;
    v45 = v26;
    selfCopy = self;
    v27 = v37;
    v47 = v27;
    [v40 enumerateKeysAndObjectsUsingBlock:v43];
    if (v56[3])
    {
      *(v56 + 24) = 1;
    }

    else
    {
      v28 = [v26 isCancelledWithProgress:1.0];
      *(v56 + 24) = v28;
      if ((v28 & 1) == 0)
      {
        v38 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v31 = v25;
        v32 = v31;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_END, v15, "PGPetWallpaperSuggester", "", buf, 2u);
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v60 = "PGPetWallpaperSuggester";
          *&v60[8] = 2048;
          *&v60[10] = ((((v38 - v41) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v10 = v27;
        goto LABEL_38;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v60 = 211;
      *&v60[4] = 2080;
      *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
LABEL_38:

LABEL_39:
LABEL_40:

    goto LABEL_41;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v60 = 91;
    *&v60[4] = 2080;
    *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPetWallpaperSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_41:
  _Block_object_dispose(&v55, 8);

  v33 = *MEMORY[0x277D85DE8];

  return v10;
}

void __59__PGPetWallpaperSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v85 = *MEMORY[0x277D85DE8];
  v75 = a2;
  v7 = a3;
  v71 = [[PGWallpaperSuggestionAccumulator alloc] initWithTargetNumberOfSuggestions:*(a1 + 72) targetMinimumNumberOfGatedSuggestions:*(a1 + 80) maximumNumberOfSuggestionsToTryForGating:*(a1 + 88) loggingConnection:*(a1 + 32)];
  v8 = [MEMORY[0x277CBEAA8] date];
  v74 = [v8 dateByAddingTimeInterval:120.0];
  v9 = [v7 count];
  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = v10;
    v13 = [v11 numberWithDouble:120.0];
    buf = 67109890;
    LODWORD(v83[0]) = v9;
    WORD2(v83[0]) = 2112;
    *(v83 + 6) = v8;
    HIWORD(v83[1]) = 2112;
    v83[2] = v13;
    LOWORD(v84[0]) = 2112;
    *(v84 + 2) = v74;
    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Start processing %d candidates. StartingDate: %@, MaxProcessingTime: %@s, MaxProcessingDate: %@", &buf, 0x26u);
  }

  v68 = v8;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v7;
  v72 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (!v72)
  {
    v67 = 0;
    v69 = 0;
    v15 = 0;
    LODWORD(v16) = 0;
    goto LABEL_51;
  }

  v66 = a4;
  v67 = 0;
  v14 = 0;
  v69 = 0;
  v15 = 0;
  v16 = 0;
  v73 = *v78;
  do
  {
    v17 = 0;
    do
    {
      if (*v78 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v77 + 1) + 8 * v17);
      v19 = *(*(a1 + 64) + 8);
      if (*(v19 + 24))
      {
        v20 = 1;
      }

      else
      {
        v20 = [*(a1 + 40) isCancelledWithProgress:0.85];
        v19 = *(*(a1 + 64) + 8);
      }

      *(v19 + 24) = v20;
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        *v66 = 1;
        v51 = obj;
        v52 = v68;
        goto LABEL_59;
      }

      v21 = [PGPetWallpaperSuggestion alloc];
      v22 = *(a1 + 96);
      v23 = *(a1 + 98);
      v24 = [v18 asset];
      v25 = [(PGPetWallpaperSuggestion *)v21 initWithPetLocalIdentifier:v75 type:v22 subtype:v23 asset:v24];

      v76 = 1;
      if (!*(*(a1 + 48) + 48))
      {
        ++v16;
LABEL_19:
        v35 = 1;
        goto LABEL_27;
      }

      v26 = [v18 asset];
      v27 = [PGSettlingEffectWallpaperSuggesterFilteringContext shouldRunSettlingEffectForAsset:v26 subtype:603];

      [*(*(a1 + 48) + 48) setEnableSettlingEffect:v27];
      v28 = *(*(a1 + 48) + 48);
      v29 = [v18 asset];
      v30 = [v28 gateAsset:v29 hasPetFace:&v76];

      -[PGSingleAssetSuggestion setAvailableFeatures:](v25, "setAvailableFeatures:", [v30 availableFeatures]);
      v31 = [v30 passesAnyGating];
      v14 += [v30 didTimeout];

      ++v16;
      if (v76 != 1 || (v31 & 1) != 0)
      {
        if ((v76 & v31) != 1)
        {
          if (v76)
          {
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        goto LABEL_19;
      }

      v32 = [v18 cropResult];
      v33 = [v32 cropForOrientation:{objc_msgSend(*(*(a1 + 48) + 64), "orientation")}];

      if ([*(*(a1 + 48) + 64) ignoreClockOverlap])
      {
        v34 = 0;
      }

      else
      {
        v34 = [v33 passesClockOverlap] ^ 1;
      }

      [v33 cropZoomRatio];
      v37 = v36;
      [*(*(a1 + 48) + 64) maximumCropZoomRatio];
      v39 = v38;
      [v33 cropScore];
      v41 = v40;
      [*(*(a1 + 48) + 64) minimumCropScore];
      v43 = v42;

      if ((v34 & 1) != 0 || v37 > v39 || v41 < v43)
      {
        if (v76)
        {
          if (v34)
          {
LABEL_36:
            ++HIDWORD(v69);
            v48 = @"clock overlap";
          }

          else if (v37 <= v39)
          {
            ++HIDWORD(v67);
            v48 = @"low cropScore";
          }

          else
          {
            LODWORD(v67) = v67 + 1;
            v48 = @"low resolution";
          }

LABEL_38:
          v49 = *(a1 + 32);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            buf = 138412290;
            v83[0] = v48;
            _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Rejecting non-gated suggestion because of %@.", &buf, 0xCu);
          }

          goto LABEL_28;
        }

LABEL_37:
        LODWORD(v69) = v69 + 1;
        v48 = @"no pet face";
        goto LABEL_38;
      }

      v35 = 0;
LABEL_27:
      [(PGWallpaperSuggestionAccumulator *)v71 addSuggestion:v25 passingGating:v35, v66];
      ++v15;
      if ([(PGWallpaperSuggestionAccumulator *)v71 accumulationIsComplete])
      {
        goto LABEL_50;
      }

LABEL_28:
      v44 = [MEMORY[0x277CBEAA8] date];
      [v74 timeIntervalSinceDate:v44];
      v46 = v45;
      v47 = *(a1 + 32);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        buf = 67109632;
        LODWORD(v83[0]) = v16;
        WORD2(v83[0]) = 1024;
        *(v83 + 6) = v15;
        WORD1(v83[1]) = 2048;
        *(&v83[1] + 4) = v46;
        _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Tried %d candidates. %d passed. %.3fs processing time left.", &buf, 0x18u);
      }

      if (v14 > 1 || v46 < 0.0)
      {
        v53 = *(a1 + 32);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          buf = 67109632;
          LODWORD(v83[0]) = v14;
          WORD2(v83[0]) = 1024;
          *(v83 + 6) = 1;
          WORD1(v83[1]) = 2048;
          *(&v83[1] + 4) = v46;
          _os_log_impl(&dword_22F0FC000, v53, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Reached (%d/%d) timeouts allowed. %.3fs processing time left.", &buf, 0x18u);
        }

LABEL_50:
        goto LABEL_51;
      }

      ++v17;
    }

    while (v72 != v17);
    v50 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
    v72 = v50;
  }

  while (v50);
LABEL_51:

  v51 = [(PGWallpaperSuggestionAccumulator *)v71 suggestions];
  [*(a1 + 56) addObjectsFromArray:v51];
  v54 = *(*(a1 + 48) + 48);
  v55 = *(a1 + 32);
  v56 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);
  if (v54)
  {
    v52 = v68;
    if (v56)
    {
      v57 = v55;
      v58 = [v51 count];
      v59 = [(PGWallpaperSuggestionAccumulator *)v71 numberOfGatedSuggestions];
      buf = 67109634;
      LODWORD(v83[0]) = v58;
      WORD2(v83[0]) = 1024;
      *(v83 + 6) = v59;
      WORD1(v83[1]) = 2112;
      *(&v83[1] + 4) = v75;
      v60 = "[PGPetWallpaperSuggester] Generated %d suggestions (%d gated) for pet %@";
      v61 = v57;
      v62 = 24;
      goto LABEL_56;
    }
  }

  else
  {
    v52 = v68;
    if (v56)
    {
      v57 = v55;
      v63 = [v51 count];
      buf = 67109378;
      LODWORD(v83[0]) = v63;
      WORD2(v83[0]) = 2112;
      *(v83 + 6) = v75;
      v60 = "[PGPetWallpaperSuggester] Generated %d suggestions for pet %@";
      v61 = v57;
      v62 = 18;
LABEL_56:
      _os_log_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_INFO, v60, &buf, v62);
    }
  }

  v64 = *(a1 + 32);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    buf = 67110400;
    LODWORD(v83[0]) = v16;
    WORD2(v83[0]) = 1024;
    *(v83 + 6) = v15;
    WORD1(v83[1]) = 1024;
    HIDWORD(v83[1]) = v69;
    LOWORD(v83[2]) = 1024;
    *(&v83[2] + 2) = HIDWORD(v69);
    HIWORD(v83[2]) = 1024;
    v84[0] = v67;
    LOWORD(v84[1]) = 1024;
    *(&v84[1] + 2) = HIDWORD(v67);
    _os_log_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_INFO, "[PGPetWallpaperSuggester] Tried %d assets, %d passed, rejected %d for no pet face, %d for clock overlap, %d for low resolution, %d for low crop score.", &buf, 0x26u);
  }

LABEL_59:

  v65 = *MEMORY[0x277D85DE8];
}

- (void)setupFilteringContexts
{
  selfCopy = self;
  v3 = objc_opt_class();
  if (!selfCopy)
  {
    NSStringFromClass(v3);
    objc_claimAutoreleasedReturnValue();
LABEL_11:
    v14 = _PFAssertFailHandler();
    [(PGPetWallpaperSuggester *)v14 initWithSession:v15, v16];
    return;
  }

  if (([(PGPetWallpaperSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
  {
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    objc_claimAutoreleasedReturnValue();
    v13 = objc_opt_class();
    NSStringFromClass(v13);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_11;
  }

  IsIPad = PLPhysicalDeviceIsIPad();
  v5 = [PGPetWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGPetWallpaperSuggesterFilteringContext *)v5 initForPetsInOrientation:2];
    primaryFilteringContext = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v6;

    v8 = [[PGPetWallpaperSuggesterFilteringContext alloc] initForPetsInOrientation:1];
  }

  else
  {
    v9 = [(PGPetWallpaperSuggesterFilteringContext *)v5 initForPetsInOrientation:1];
    v10 = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v9;

    v8 = 0;
  }

  secondaryFilteringContext = selfCopy->_secondaryFilteringContext;
  selfCopy->_secondaryFilteringContext = v8;
}

- (PGPetWallpaperSuggester)initWithSession:(id)session
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = PGPetWallpaperSuggester;
  v5 = [(PGAbstractSuggester *)&v13 initWithSession:sessionCopy];
  if (v5)
  {
    if ([objc_opt_class() filtersForTopSuggestions])
    {
      v6 = [PGWallpaperSuggestionAssetGater alloc];
      loggingConnection = [sessionCopy loggingConnection];
      v8 = [(PGWallpaperSuggestionAssetGater *)v6 initWithType:2 loggingConnection:loggingConnection];
      assetGater = v5->_assetGater;
      v5->_assetGater = v8;
    }

    v10 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    peopleSceneConfidenceThresholdHelper = v5->_peopleSceneConfidenceThresholdHelper;
    v5->_peopleSceneConfidenceThresholdHelper = v10;

    [(PGPetWallpaperSuggester *)v5 setupFilteringContexts];
  }

  return v5;
}

+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason
{
  v63[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  contextCopy = context;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_2844853E8];
  v14 = [MEMORY[0x277CD9868] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
  if ([v14 count] == 1)
  {
    firstObject = [v14 firstObject];
    if (([firstObject detectionType] - 5) <= 0xFFFCu)
    {
      v16 = 0;
      if (reason)
      {
        *reason = @"No Pet Found";
      }

      goto LABEL_45;
    }

    reasonCopy = reason;
    v53 = firstObject;
    filtersForTopSuggestions = [objc_opt_class() filtersForTopSuggestions];
    v19 = [PGPetWallpaperSuggesterFilteringContext alloc];
    v48 = filtersForTopSuggestions;
    v50 = contextCopy;
    orientationCopy = orientation;
    if (filtersForTopSuggestions)
    {
      v20 = [(PGPetWallpaperSuggesterFilteringContext *)v19 initForTopPetsInOrientation:orientation];
    }

    else
    {
      v20 = [(PGPetWallpaperSuggesterFilteringContext *)v19 initForPetsInOrientation:orientation];
    }

    v21 = v20;
    v22 = [self prefilteringInternalPredicateWithContext:v20];
    [librarySpecificFetchOptions setInternalPredicate:v22];

    v23 = MEMORY[0x277CD9868];
    localIdentifier = [firstObject localIdentifier];
    v63[0] = localIdentifier;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
    v26 = [v23 fetchFacesWithLocalIdentifiers:v25 options:librarySpecificFetchOptions];
    firstObject2 = [v26 firstObject];

    v52 = v21;
    if (!firstObject2)
    {
      contextCopy = v50;
      v16 = 0;
      if (reasonCopy)
      {
        *reasonCopy = @"Fails Predicate";
      }

      firstObject = v53;
      goto LABEL_44;
    }

    v28 = [[PGPetWallpaperSuggestionCandidate alloc] initWithFace:firstObject2 inAsset:assetCopy];
    v29 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    v61 = 0u;
    memset(v62, 0, sizeof(v62));
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v30 = v28;
    v31 = v28;
    contextCopy = v50;
    v46 = v29;
    v47 = firstObject2;
    if ([self candidate:v31 passesFilteringWithContext:v21 curationContext:v50 thresholdHelper:? statistics:?])
    {
      v16 = 1;
      v32 = reasonCopy;
      if (v48)
      {
        v33 = [PGWallpaperSuggestionAssetGater alloc];
        v34 = [(PGWallpaperSuggestionAssetGater *)v33 initWithType:2 loggingConnection:MEMORY[0x277D86220]];
        [(PGWallpaperSuggestionAssetGater *)v34 setCoversTracks:1];
        [(PGWallpaperSuggestionAssetGater *)v34 setIsUserInitiated:1];
        v54 = 1;
        asset = [(PGPetWallpaperSuggestionCandidate *)v30 asset];
        v36 = [(PGWallpaperSuggestionAssetGater *)v34 gateAsset:asset hasPetFace:&v54];

        v49 = v36;
        if (v54)
        {
          if ([v36 passesAnyGating])
          {
            v37 = @"Pass Segmented";
            v16 = 1;
          }

          else
          {
            cropResult = [(PGPetWallpaperSuggestionCandidate *)v30 cropResult];
            v39 = [cropResult cropForOrientation:orientationCopy];

            if (([v52 ignoreClockOverlap] & 1) != 0 || objc_msgSend(v39, "passesClockOverlap"))
            {
              [v39 cropScore];
              v41 = v40;
              [v52 minimumCropScore];
              v16 = v41 >= v42;
              if (v41 < v42)
              {
                v37 = @"Low Crop Score";
              }

              else
              {
                v37 = @"Pass Unsegmented";
              }
            }

            else
            {
              v16 = 0;
              v37 = @"Clock Overlap";
            }

            v32 = reasonCopy;
          }
        }

        else
        {
          v16 = 0;
          v37 = @"No Pet Face";
        }
      }

      else
      {
        v37 = @"Pass";
      }

      firstObject = v53;
      if (!v32)
      {
        goto LABEL_43;
      }
    }

    else
    {
      firstObject = v53;
      v32 = reasonCopy;
      if (!reasonCopy)
      {
        v16 = 0;
LABEL_43:

        firstObject2 = v47;
LABEL_44:

LABEL_45:
        goto LABEL_46;
      }

      if (v55 <= 0)
      {
        if (SDWORD1(v55) <= 0)
        {
          if (SDWORD2(v55) <= 0)
          {
            if (SHIDWORD(v55) <= 0)
            {
              if (v56 <= 0)
              {
                if (SDWORD1(v56) <= 0)
                {
                  if (SDWORD2(v56) <= 0)
                  {
                    if (SHIDWORD(v56) <= 0)
                    {
                      if (v57 <= 0)
                      {
                        if (SDWORD1(v57) <= 0)
                        {
                          v16 = 0;
                          if (SDWORD2(v57) <= 0)
                          {
                            v37 = @"Unknown Reason";
                          }

                          else
                          {
                            v37 = @"Sensitive Location";
                          }
                        }

                        else
                        {
                          v16 = 0;
                          v37 = @"Low Light";
                        }
                      }

                      else
                      {
                        v16 = 0;
                        v37 = @"People Scene";
                      }
                    }

                    else
                    {
                      v16 = 0;
                      v37 = @"Not Safe for Display";
                    }

                    firstObject = v53;
                    v32 = reasonCopy;
                  }

                  else
                  {
                    v16 = 0;
                    v37 = @"Low Crop Score";
                  }
                }

                else
                {
                  v16 = 0;
                  v37 = @"Low Resolution";
                }
              }

              else
              {
                v16 = 0;
                v37 = @"Clock Overlap";
              }
            }

            else
            {
              v16 = 0;
              v37 = @"Low Wallpaper Score";
            }
          }

          else
          {
            v16 = 0;
            v37 = @"Low Aesthetics";
          }
        }

        else
        {
          v16 = 0;
          v37 = @"Avoid for Key Asset";
        }
      }

      else
      {
        v16 = 0;
        v37 = @"Is Utility";
      }
    }

    *v32 = v37;
    goto LABEL_43;
  }

  if (reason)
  {
    if ([v14 count] <= 1)
    {
      v17 = @"No Face";
    }

    else
    {
      v17 = @"Too Many Faces";
    }

    v16 = 0;
    *reason = v17;
  }

  else
  {
    v16 = 0;
  }

LABEL_46:

  v43 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext thresholdHelper:(id)helper statistics:(id *)statistics
{
  candidateCopy = candidate;
  contextCopy = context;
  curationContextCopy = curationContext;
  helperCopy = helper;
  asset = [candidateCopy asset];
  curationModel = [asset curationModel];
  [contextCopy minimumWallpaperScore];
  v18 = v17;
  if (v17 < 0.0)
  {
    wallpaperScoreModel = [curationModel wallpaperScoreModel];
    face = [candidateCopy face];
    detectionType = [face detectionType];

    v18 = 1.79769313e308;
    if (detectionType > 2u)
    {
      if (detectionType == 3)
      {
        dogNode = [wallpaperScoreModel dogNode];
        goto LABEL_13;
      }

      if (detectionType == 4)
      {
        dogNode = [wallpaperScoreModel catNode];
LABEL_13:
        v23 = dogNode;
        [dogNode operatingPoint];
        v18 = v24;
      }
    }

    else
    {
      if (detectionType < 2u)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v50 = 0;
          _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "This is supposed to be a pet!!!", v50, 2u);
        }

        v18 = 1.79769313e308;
        goto LABEL_14;
      }

      if (detectionType == 2)
      {
        dogNode = [wallpaperScoreModel petNode];
        goto LABEL_13;
      }
    }

LABEL_14:
  }

  [candidateCopy wallpaperScore];
  if (v18 > v25)
  {
    v26 = 0;
    ++statistics->var3;
    goto LABEL_43;
  }

  userFeedbackCalculator = [curationContextCopy userFeedbackCalculator];
  v28 = [curationModel isUtilityForMemoriesWithAsset:asset userFeedbackCalculator:userFeedbackCalculator blockSocialMediaImportedAssets:PGWallpaperSuggestionBlockSocialMediaImportedAssets];

  if (v28)
  {
    v26 = 0;
    ++statistics->var0;
    goto LABEL_43;
  }

  if ([curationModel avoidIfPossibleForKeyAssetWithAsset:asset statistics:&statistics->var11])
  {
    v26 = 0;
    ++statistics->var1;
    goto LABEL_43;
  }

  if (([curationModel isAestheticallyPrettyGoodWithAsset:asset] & 1) == 0)
  {
    v26 = 0;
    ++statistics->var2;
    goto LABEL_43;
  }

  if (([contextCopy bypassCropScoreCheck] & 1) == 0)
  {
    cropResult = [candidateCopy cropResult];
    v30 = [cropResult cropForOrientation:{objc_msgSend(contextCopy, "orientation")}];

    if (([contextCopy ignoreClockOverlap] & 1) == 0 && !objc_msgSend(v30, "passesClockOverlap"))
    {
      v34 = 16;
      goto LABEL_41;
    }

    [candidateCopy setHeadroomEngaged:{objc_msgSend(v30, "headroomEngaged")}];
    if ([v30 layoutVariant] != 2)
    {
      [v30 cropZoomRatio];
      v32 = v31;
      [contextCopy maximumCropZoomRatio];
      if (v32 > v33)
      {
        v34 = 20;
LABEL_41:
        ++*(&statistics->var0 + v34);
        goto LABEL_42;
      }
    }

    [v30 cropScore];
    v36 = v35;
    [contextCopy minimumCropScore];
    if (v36 < v37)
    {
      ++statistics->var6;
LABEL_42:

      v26 = 0;
      goto LABEL_43;
    }
  }

  if ([MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:asset])
  {
    if ([PGWallpaperSuggestionUtilities foundDominantPeopleSceneInAsset:asset withConfidenceThresholdHelper:helperCopy])
    {
      v26 = 0;
      ++statistics->var8;
    }

    else
    {
      [contextCopy maximumLowLightScore];
      v39 = v38;
      if (v38 < 0.0)
      {
        curationModel2 = [asset curationModel];
        aestheticsModel = [curationModel2 aestheticsModel];
        lowLightNode = [aestheticsModel lowLightNode];
        [lowLightNode operatingPoint];
        v39 = v43;
      }

      aestheticProperties = [asset aestheticProperties];
      [aestheticProperties lowLight];
      v46 = v45;

      if (v39 >= v46)
      {
        asset2 = [candidateCopy asset];
        v49 = [PGSensitiveLocationBlocklistConfiguration isAssetAtSensitiveLocationAndDate:asset2];

        if (v49)
        {
          v26 = 0;
          ++statistics->var10;
        }

        else
        {
          v26 = 1;
        }
      }

      else
      {
        v26 = 0;
        ++statistics->var9;
      }
    }
  }

  else
  {
    v26 = 0;
    ++statistics->var7;
  }

LABEL_43:

  return v26;
}

+ (id)prefilteringInternalPredicateWithContext:(id)context
{
  v3 = MEMORY[0x277CBEB18];
  contextCopy = context;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x277CCAC30];
  [contextCopy minimumFaceSize];
  v8 = v7;
  [contextCopy maximumFaceSize];
  v10 = v9;

  v11 = [v6 predicateWithFormat:@"%K >= %f AND %K < %f", @"size", v8, @"size", v10];
  [v5 addObject:v11];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K == %d", @"assetForFace", @"kind", 0];
  [v5 addObject:v12];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K.%K IN %@)", @"assetForFace", @"playbackStyle", &unk_2844853D0];
  [v5 addObject:v13];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K != %d", @"assetForFace", @"kindSubtype", 1];
  [v5 addObject:v14];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K.@count == %d", @"assetForFace", @"detectedFaces", 1];
  [v5 addObject:v15];
  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K == NO AND %K.%K == %d", @"assetForFace", @"hidden", @"assetForFace", @"trashedState", 0];
  [v5 addObject:v16];
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K.%K >= %d", @"assetForFace", @"additionalAttributes", @"sceneAnalysisVersion", 77];
  [v5 addObject:v17];
  v18 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];

  return v18;
}

@end
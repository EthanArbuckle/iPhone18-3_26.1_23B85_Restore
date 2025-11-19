@interface PGSinglePersonWallpaperAssetSuggester
+ (BOOL)candidate:(id)a3 andFace:(id)a4 passesPostfilteringWithContext:(id)a5 curationContext:(id)a6 statistics:(id *)a7;
+ (BOOL)passesFilteringWithAsset:(id)a3 forTopWallpaperSuggestions:(BOOL)a4 curationContext:(id)a5 orientation:(int64_t)a6 reason:(id *)a7;
+ (id)_assetExpressionWithFilteringContext:(id)a3;
+ (id)prefilteringInternalPredicateWithContext:(id)a3;
+ (id)prefilteringSubpredicatesWithContext:(id)a3;
- (PGSinglePersonWallpaperAssetSuggester)initWithPersonLocalIdentifiers:(id)a3 curationContext:(id)a4 loggingConnection:(id)a5;
- (id)assetsFromCandidates:(id)a3;
- (id)unsortedCandidatesFromPersonLocalIdentifiers:(id)a3 progressBlock:(id)a4;
- (void)computeSuggestedAssetsWithNumberOfSuggestions:(unint64_t)a3 progressBlock:(id)a4;
- (void)logPosterFilteringStatistics:(id *)a3;
@end

@implementation PGSinglePersonWallpaperAssetSuggester

- (id)assetsFromCandidates:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v40 + 1) + 8 * i) assetUUID];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v8);
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v13 = [(CLSCurationContext *)self->_curationContext photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  [v14 setFetchPropertySets:self->_assetFetchPropertySets];
  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:v5 options:v14];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v36 + 1) + 8 * j);
        v21 = [v20 uuid];
        [v12 setObject:v20 forKeyedSubscript:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v17);
  }

  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [v12 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * k)];
        if (v28)
        {
          [v22 addObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(context);
  v29 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)logPosterFilteringStatistics:(id *)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = [(PGSinglePersonWallpaperAssetSuggester *)self primaryFilteringContext];
  v6 = [v5 bypassCropScoreCheck];

  loggingConnection = self->_loggingConnection;
  v8 = os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      var0 = a3->var0;
      var1 = a3->var1;
      var2 = a3->var2;
      var3 = a3->var3;
      var4 = a3->var4;
      var8 = a3->var8;
      var9 = a3->var9;
      var10 = a3->var10;
      var11 = a3->var11;
      v34 = 67111168;
      v35 = var0;
      v36 = 1024;
      v37 = var1;
      v38 = 1024;
      v39 = var2;
      v40 = 1024;
      v41 = var3;
      v42 = 1024;
      v43 = var9;
      v44 = 1024;
      v45 = var4;
      v46 = 1024;
      v47 = var8;
      v48 = 1024;
      v49 = var10;
      v50 = 1024;
      v51 = var11;
      v18 = "[PGSinglePersonWallpaperAssetSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for aesthetics+wallpaper, %d for face quality, %d for not safe for display, %d for low light, %d for sensitive location";
      v19 = loggingConnection;
      v20 = 56;
LABEL_6:
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, v18, &v34, v20);
    }
  }

  else if (v8)
  {
    v21 = a3->var0;
    v22 = a3->var1;
    v23 = a3->var2;
    v24 = a3->var3;
    v25 = a3->var4;
    var5 = a3->var5;
    var6 = a3->var6;
    var7 = a3->var7;
    v30 = a3->var8;
    v29 = a3->var9;
    v31 = a3->var10;
    v32 = a3->var11;
    v34 = 67111936;
    v35 = v21;
    v36 = 1024;
    v37 = v22;
    v38 = 1024;
    v39 = v23;
    v40 = 1024;
    v41 = v24;
    v42 = 1024;
    v43 = v29;
    v44 = 1024;
    v45 = v25;
    v46 = 1024;
    v47 = var5;
    v48 = 1024;
    v49 = var6;
    v50 = 1024;
    v51 = var7;
    v52 = 1024;
    v53 = v30;
    v54 = 1024;
    v55 = v31;
    v56 = 1024;
    v57 = v32;
    v18 = "[PGSinglePersonWallpaperAssetSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for aesthetics+wallpaper, %d for face quality, %d for clock overlap, %d for low resolution, %d for crop score, %d for not safe for display, %d for low light, %d for sensitive location";
    v19 = loggingConnection;
    v20 = 74;
    goto LABEL_6;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)unsortedCandidatesFromPersonLocalIdentifiers:(id)a3 progressBlock:(id)a4
{
  v135 = *MEMORY[0x277D85DE8];
  v89 = a3;
  v86 = a4;
  v6 = _Block_copy(v86);
  v7 = 0.0;
  if (v6)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(v102) = 0;
      v6[2](v6, &v102, 0.0);
      if (v102 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 193;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = MEMORY[0x277CBEBF8];
        v10 = v86;
        goto LABEL_96;
      }

      v7 = Current;
    }
  }

  v93 = v6;
  v85 = [(CLSCurationContext *)self->_curationContext photoLibrary];
  v11 = [v85 librarySpecificFetchOptions];
  [v11 setChunkSizeForFetch:200];
  v87 = v11;
  [v11 setCacheSizeForFetch:200];
  v88 = [objc_opt_class() prefilteringInternalPredicateWithContext:self->_primaryFilteringContext];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v13 = v89;
  v14 = [v13 countByEnumeratingWithState:&v112 objects:v134 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v113;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v113 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:*(*(&v112 + 1) + 8 * i)];
        if (v18)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v112 objects:v134 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in %@", @"personForFace.personUUID", v12];
  v20 = MEMORY[0x277CCA920];
  v84 = v19;
  v133[0] = v19;
  v133[1] = v88;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];
  v23 = v87;
  [v87 setInternalPredicate:v22];

  v24 = self->_loggingConnection;
  v25 = os_signpost_id_generate(v24);
  v26 = v24;
  v27 = v26;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PGSinglePersonWallpaperAssetSuggesterFaceFetch", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v28 = mach_absolute_time();
  v92 = [MEMORY[0x277CD9868] fetchFacesWithOptions:v87];
  v29 = mach_absolute_time();
  v30 = info;
  v31 = v27;
  v32 = v31;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_END, v25, "PGSinglePersonWallpaperAssetSuggesterFaceFetch", "", buf, 2u);
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "PGSinglePersonWallpaperAssetSuggesterFaceFetch";
    *&buf[12] = 2048;
    *&buf[14] = ((((v29 - v28) * v30.numer) / v30.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v83 = v32;
  loggingConnection = self->_loggingConnection;
  v34 = v92;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v35 = loggingConnection;
    v36 = [v92 count];
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[PGSinglePersonWallpaperAssetSuggester] Found %d candidates after prefiltering", buf, 8u);
  }

  v6 = v93;
  if (v93)
  {
    v37 = CFAbsoluteTimeGetCurrent();
    if (v37 - v7 >= 0.01)
    {
      LOBYTE(v102) = 0;
      v93[2](v93, &v102, 0.2);
      if (v102)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 222;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = MEMORY[0x277CBEBF8];
        v38 = v85;
        v10 = v86;
        v39 = v84;
        goto LABEL_95;
      }

      v7 = v37;
    }
  }

  v90 = v12;
  v96 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v92, "count")}];
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v126 = 0u;
  memset(buf, 0, sizeof(buf));
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v40 = +[PGCurationManager assetPropertySetsForCuration];
  v91 = [v40 arrayByAddingObject:*MEMORY[0x277CD9AE0]];

  v41 = [v92 count];
  if (![v92 count])
  {
LABEL_69:
    v75 = self->_loggingConnection;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      v76 = v75;
      v77 = [v96 count];
      *v116 = 67109120;
      *&v116[4] = v77;
      _os_log_impl(&dword_22F0FC000, v76, OS_LOG_TYPE_INFO, "[PGSinglePersonWallpaperAssetSuggester] Found %d candidates after postfiltering", v116, 8u);
    }

    v121 = v130;
    v122 = v131;
    v123 = v132;
    v117 = v126;
    v118 = v127;
    v119 = v128;
    v120 = v129;
    *v116 = *buf;
    *&v116[16] = *&buf[16];
    [(PGSinglePersonWallpaperAssetSuggester *)self logPosterFilteringStatistics:v116];
    v78 = [(PGSinglePersonWallpaperAssetSuggester *)self secondaryFilteringContext];

    v23 = v87;
    v12 = v90;
    if (v78)
    {
      v79 = self->_loggingConnection;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        *v116 = 0;
        _os_log_impl(&dword_22F0FC000, v79, OS_LOG_TYPE_INFO, "[PGSinglePersonWallpaperAssetSuggester] Secondary filtering...", v116, 2u);
      }

      v121 = v108;
      v122 = v109;
      v123 = v110;
      v117 = v104;
      v118 = v105;
      v119 = v106;
      v120 = v107;
      *v116 = v102;
      *&v116[16] = v103;
      [(PGSinglePersonWallpaperAssetSuggester *)self logPosterFilteringStatistics:v116];
    }

    if (*&buf[4] >= 1)
    {
      [MEMORY[0x277D3C798] logInfo:self->_loggingConnection prefix:@"[PGSinglePersonWallpaperAssetSuggester]" avoidForKeyAssetStatistics:&v127];
    }

    v38 = v85;
    v10 = v86;
    v39 = v84;
    v80 = v96;
    if (v6 && CFAbsoluteTimeGetCurrent() - v7 >= 0.01 && (v101 = 0, (v6)[2](v6, &v101, 1.0), v101))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v116 = 67109378;
        *&v116[4] = 278;
        *&v116[8] = 2080;
        *&v116[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v116, 0x12u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v9 = v96;
    }

    goto LABEL_94;
  }

  v42 = 0;
  v43 = 0.75 / v41;
  v44 = 0.2;
  while (1)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = MEMORY[0x277CCAA78];
    v47 = [v34 count];
    if (v47 - v42 >= 0xC8)
    {
      v48 = 200;
    }

    else
    {
      v48 = v47 - v42;
    }

    v49 = [v46 indexSetWithIndexesInRange:{v42, v48}];
    v50 = [v34 objectsAtIndexes:v49];

    v51 = [MEMORY[0x277CD97A8] fetchAssetsGroupedByFaceUUIDForFaces:v50 fetchPropertySets:v91];
    v52 = v44 + v43 * 0.3;
    if (v6)
    {
      v53 = CFAbsoluteTimeGetCurrent();
      v12 = v90;
      if (v53 - v7 >= 0.01)
      {
        v101 = 0;
        (v6)[2](v6, &v101, v52);
        if (v101)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v116 = 67109378;
            *&v116[4] = 236;
            *&v116[8] = 2080;
            *&v116[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v116, 0x12u);
          }

          v38 = v85;
          v10 = v86;
          goto LABEL_90;
        }

        v7 = v53;
      }
    }

    v95 = v42;
    v54 = MEMORY[0x277CD97A8];
    v55 = [v51 allValues];
    [v54 prefetchOnAssets:v55 options:14 curationContext:self->_curationContext];

    v56 = v52 + v43 * 0.3;
    if (v6)
    {
      v57 = CFAbsoluteTimeGetCurrent();
      if (v57 - v7 >= 0.01)
      {
        v101 = 0;
        (v6)[2](v6, &v101, v56);
        if (!v101)
        {
          v7 = v57;
          goto LABEL_47;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v116 = 67109378;
          *&v116[4] = 242;
          *&v116[8] = 2080;
          *&v116[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v116, 0x12u);
        }

        v38 = v85;
        v10 = v86;
        v12 = v90;
LABEL_90:
        v39 = v84;
        v80 = v96;

        objc_autoreleasePoolPop(v45);
        v9 = MEMORY[0x277CBEBF8];
        v23 = v87;
        goto LABEL_94;
      }
    }

LABEL_47:
    v94 = v45;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v58 = v50;
    v59 = [v58 countByEnumeratingWithState:&v97 objects:v124 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v98;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v98 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v97 + 1) + 8 * j);
          v64 = [v63 uuid];
          v65 = [v51 objectForKeyedSubscript:v64];

          if (v65)
          {
            forbiddenAssetUUIDs = self->_forbiddenAssetUUIDs;
            v67 = [v65 uuid];
            LODWORD(forbiddenAssetUUIDs) = [(NSSet *)forbiddenAssetUUIDs containsObject:v67];

            if (forbiddenAssetUUIDs)
            {
              v68 = self->_loggingConnection;
              if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
              {
                v69 = v68;
                v70 = [v65 uuid];
                *v116 = 138412290;
                *&v116[4] = v70;
                _os_log_impl(&dword_22F0FC000, v69, OS_LOG_TYPE_INFO, "[PGSinglePersonWallpaperAssetSuggester] Avoiding asset %@ because it has been rejected by the user", v116, 0xCu);
              }
            }

            else
            {
              v71 = [[PGSinglePersonWallpaperAssetCandidate alloc] initWithAsset:v65];
              if ([objc_opt_class() candidate:v71 andFace:v63 passesPostfilteringWithContext:self->_primaryFilteringContext curationContext:self->_curationContext statistics:buf] && (!self->_secondaryFilteringContext || objc_msgSend(objc_opt_class(), "candidate:andFace:passesPostfilteringWithContext:curationContext:statistics:", v71, v63, self->_secondaryFilteringContext, self->_curationContext, &v102)))
              {
                [v96 addObject:v71];
              }
            }
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v97 objects:v124 count:16];
      }

      while (v60);
    }

    v44 = v56 + v43 * 0.4;
    v6 = v93;
    if (!v93)
    {
      v34 = v92;
      v73 = v94;
      v74 = v95;
      goto LABEL_68;
    }

    v72 = CFAbsoluteTimeGetCurrent();
    v34 = v92;
    v73 = v94;
    v74 = v95;
    if (v72 - v7 >= 0.01)
    {
      break;
    }

LABEL_68:

    objc_autoreleasePoolPop(v73);
    v42 = v74 + 200;
    if (v42 >= [v34 count])
    {
      goto LABEL_69;
    }
  }

  v101 = 0;
  (v93)[2](v93, &v101, v44);
  if (!v101)
  {
    v7 = v72;
    goto LABEL_68;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v116 = 67109378;
    *&v116[4] = 264;
    *&v116[8] = 2080;
    *&v116[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v116, 0x12u);
  }

  objc_autoreleasePoolPop(v94);
  v9 = MEMORY[0x277CBEBF8];
  v38 = v85;
  v10 = v86;
  v23 = v87;
  v12 = v90;
  v39 = v84;
  v80 = v96;
LABEL_94:

LABEL_95:
LABEL_96:

  v81 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)computeSuggestedAssetsWithNumberOfSuggestions:(unint64_t)a3 progressBlock:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v58 = a4;
  v5 = _Block_copy(v58);
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  if (v5 && (v6 = CFAbsoluteTimeGetCurrent(), v6 - v69[3] >= 0.01) && (v69[3] = v6, LOBYTE(info.numer) = 0, (*(v5 + 2))(v5, &info, 0.0), v7 = *(v73 + 24) | LOBYTE(info.numer), *(v73 + 24) = v7, (v7 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v78 = 83;
      *&v78[4] = 2080;
      *&v78[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
      v8 = MEMORY[0x277D86220];
LABEL_44:
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v9 = self->_loggingConnection;
    v10 = os_signpost_id_generate(v9);
    v11 = v9;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGSinglePersonWallpaperAssetSuggesterCandidateFiltering", "", buf, 2u);
    }

    v60 = v12;

    info = 0;
    mach_timebase_info(&info);
    v13 = mach_absolute_time();
    personLocalIdentifiers = self->_personLocalIdentifiers;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __101__PGSinglePersonWallpaperAssetSuggester_computeSuggestedAssetsWithNumberOfSuggestions_progressBlock___block_invoke;
    v62[3] = &unk_27888A188;
    v55 = v5;
    v63 = v55;
    v64 = &v68;
    v65 = &v72;
    v66 = 0x3F847AE147AE147BLL;
    v59 = [(PGSinglePersonWallpaperAssetSuggester *)self unsortedCandidatesFromPersonLocalIdentifiers:personLocalIdentifiers progressBlock:v62];
    if (*(v73 + 24) == 1)
    {
      LOBYTE(v15) = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v78 = 90;
        *&v78[4] = 2080;
        *&v78[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v16 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v19 = v60;
      v20 = v19;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v10, "PGSinglePersonWallpaperAssetSuggesterCandidateFiltering", "", buf, 2u);
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v78 = "PGSinglePersonWallpaperAssetSuggesterCandidateFiltering";
        *&v78[8] = 2048;
        *&v78[10] = ((((v16 - v13) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if (v5 && (Current = CFAbsoluteTimeGetCurrent(), Current - v69[3] >= 0.01) && (v69[3] = Current, LOBYTE(v61.numer) = 0, (*(v55 + 2))(v55, &v61, 0.5), v22 = *(v73 + 24) | LOBYTE(v61.numer), *(v73 + 24) = v22, (v22 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v78 = 93;
          *&v78[4] = 2080;
          *&v78[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        LOBYTE(v15) = 1;
      }

      else
      {
        v23 = self->_loggingConnection;
        v24 = os_signpost_id_generate(v23);
        v25 = v23;
        v26 = v25;
        spid = v24;
        v52 = v24 - 1;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PGSinglePersonWallpaperAssetSuggesterCandidateDeduping", "", buf, 2u);
        }

        v53 = v26;

        v61 = 0;
        mach_timebase_info(&v61);
        v50 = mach_absolute_time();
        v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
        v76[0] = v27;
        v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"headroomEngaged" ascending:1];
        v76[1] = v28;
        v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceQualityPenalty" ascending:1];
        v76[2] = v29;
        v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
        v76[3] = v30;
        v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScore" ascending:0];
        v76[4] = v31;
        v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"aestheticScore" ascending:0];
        v76[5] = v32;
        v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
        v76[6] = v33;
        v34 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assetUUID" ascending:1];
        v76[7] = v34;
        v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:8];

        v35 = MEMORY[0x277D3C810];
        v36 = [(PGSinglePersonWallpaperAssetSuggester *)self primaryFilteringContext];
        [v36 timeIntervalForCandidateDeduping];
        v37 = [v35 sortedDedupedCandidatesFromCandidates:v59 sortDescriptors:v54 timeIntervalForCandidateDeduping:a3 targetNumberOfSuggestions:4 maximumTimeIntervalReductionFactor:?];

        v15 = *(v73 + 24);
        if (v15 == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v78 = 108;
            *&v78[4] = 2080;
            *&v78[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          v38 = mach_absolute_time();
          v40 = v61.numer;
          v39 = v61.denom;
          v41 = v53;
          v42 = v41;
          if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, spid, "PGSinglePersonWallpaperAssetSuggesterCandidateDeduping", "", buf, 2u);
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v78 = "PGSinglePersonWallpaperAssetSuggesterCandidateDeduping";
            *&v78[8] = 2048;
            *&v78[10] = ((((v38 - v50) * v40) / v39) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v43 = [(PGSinglePersonWallpaperAssetSuggester *)self assetsFromCandidates:v37];
          v44 = [v43 objectEnumerator];
          suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
          self->_suggestedAssetEnumerator = v44;

          self->_numberOfSuggestedAssets = [v37 count];
        }
      }
    }

    objc_autoreleasePoolPop(context);
    if (v5)
    {
      v46 = v15;
    }

    else
    {
      v46 = 1;
    }

    if ((v46 & 1) == 0)
    {
      v47 = CFAbsoluteTimeGetCurrent();
      if (v47 - v69[3] >= 0.01)
      {
        v69[3] = v47;
        LOBYTE(info.numer) = 0;
        (*(v55 + 2))(v55, &info, 1.0);
        v48 = *(v73 + 24) | LOBYTE(info.numer);
        *(v73 + 24) = v48;
        if ((v48 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v78 = 115;
          *&v78[4] = 2080;
          *&v78[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGSinglePersonWallpaperAssetSuggester.m";
          v8 = MEMORY[0x277D86220];
          goto LABEL_44;
        }
      }
    }
  }

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  v49 = *MEMORY[0x277D85DE8];
}

void __101__PGSinglePersonWallpaperAssetSuggester_computeSuggestedAssetsWithNumberOfSuggestions_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (PGSinglePersonWallpaperAssetSuggester)initWithPersonLocalIdentifiers:(id)a3 curationContext:(id)a4 loggingConnection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PGSinglePersonWallpaperAssetSuggester;
  v12 = [(PGSinglePersonWallpaperAssetSuggester *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personLocalIdentifiers, a3);
    objc_storeStrong(&v13->_curationContext, a4);
    objc_storeStrong(&v13->_loggingConnection, a5);
    v14 = objc_alloc_init(PGSinglePersonWallpaperAssetSuggesterScoringContext);
    scoringContext = v13->_scoringContext;
    v13->_scoringContext = v14;

    v16 = objc_alloc_init(PGSinglePersonWallpaperAssetSuggesterDistancingContext);
    distancingContext = v13->_distancingContext;
    v13->_distancingContext = v16;
  }

  return v13;
}

+ (BOOL)passesFilteringWithAsset:(id)a3 forTopWallpaperSuggestions:(BOOL)a4 curationContext:(id)a5 orientation:(int64_t)a6 reason:(id *)a7
{
  v71 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = [PGSinglePersonWallpaperAssetSuggesterFilteringContext alloc];
  if (a4)
  {
    v15 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v14 initForTopPeopleInOrientation:a6];
  }

  else
  {
    v15 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v14 initForPeopleInOrientation:a6];
  }

  v16 = v15;
  v17 = [v12 photoLibrary];
  v18 = [v17 librarySpecificFetchOptions];
  [v18 setIncludedDetectionTypes:&unk_2844859D0];
  [v18 setIncludeTorsoAndFaceDetectionData:1];
  v19 = [MEMORY[0x277CD9868] fetchFacesInAsset:v12 options:v18];
  if ([v19 count] == 1)
  {
    v55 = [v19 firstObject];
    if ([v55 detectionType] != 1)
    {
      v38 = 0;
      if (a7)
      {
        *a7 = @"No Human Face";
      }

LABEL_60:

      goto LABEL_61;
    }

    v49 = v17;
    v50 = a7;
    v47 = a1;
    v48 = v19;
    v52 = v13;
    v53 = v12;
    v51 = v16;
    [a1 prefilteringSubpredicatesWithContext:v16];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v59 = 0u;
    v20 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v57;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v57 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v56 + 1) + 8 * i);
          [v18 setInternalPredicate:v24];
          v25 = MEMORY[0x277CD9868];
          v26 = [v55 localIdentifier];
          v69 = v26;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
          v28 = [v25 fetchFacesWithLocalIdentifiers:v27 options:v18];
          v29 = [v28 firstObject];

          if (!v29)
          {
            v42 = [v24 pg_wallpaperSuggestionReason];
            v37 = v42;
            if (v50)
            {
              v43 = v42;
              *v50 = v37;
            }

            v12 = v53;
            v30 = obj;
            v16 = v51;
            v19 = v48;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v44 = [v55 uuid];
              *buf = 138412802;
              *&buf[4] = v44;
              *&buf[12] = 2112;
              *&buf[14] = v37;
              *&buf[22] = 2112;
              *&buf[24] = v24;
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Face %@ fails subpredicate '%@': %@", buf, 0x20u);
            }

            v38 = 0;
            v36 = obj;
            v13 = v52;
            goto LABEL_59;
          }
        }

        v21 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v30 = obj;

    v16 = v51;
    v31 = [a1 prefilteringInternalPredicateWithContext:v51];
    [v18 setInternalPredicate:v31];

    v32 = MEMORY[0x277CD9868];
    v33 = [v55 localIdentifier];
    v68 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    v35 = [v32 fetchFacesWithLocalIdentifiers:v34 options:v18];
    v36 = [v35 firstObject];

    v12 = v53;
    v37 = [[PGSinglePersonWallpaperAssetCandidate alloc] initWithAsset:v53];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    memset(buf, 0, sizeof(buf));
    v13 = v52;
    v38 = [v47 candidate:v37 andFace:v36 passesPostfilteringWithContext:v51 curationContext:v52 statistics:buf];
    if (v38)
    {
      v39 = v50;
      if (!v50)
      {
        goto LABEL_58;
      }

      v40 = @"Pass";
    }

    else
    {
      v39 = v50;
      if (!v50)
      {
        goto LABEL_58;
      }

      if (*buf <= 0)
      {
        if (*&buf[4] <= 0)
        {
          if (*&buf[8] <= 0)
          {
            if (*&buf[12] <= 0)
            {
              if (*&buf[16] <= 0)
              {
                if (*&buf[20] <= 0)
                {
                  if (*&buf[24] <= 0)
                  {
                    if (*&buf[28] <= 0)
                    {
                      if (v61 <= 0)
                      {
                        if (v61 <= 0)
                        {
                          if (*(&v61 + 4) <= 0)
                          {
                            if (SHIDWORD(v61) <= 0)
                            {
                              v40 = @"Unknown Reason";
                            }

                            else
                            {
                              v40 = @"Sensitive Location";
                            }
                          }

                          else
                          {
                            v40 = @"Low Light";
                          }
                        }

                        else
                        {
                          v40 = @"Low Aesthetic&Wallpaper";
                        }
                      }

                      else
                      {
                        v40 = @"Not Safe for Display";
                      }
                    }

                    else
                    {
                      v40 = @"Low Crop Score";
                    }

                    v13 = v52;
                    v12 = v53;
                    v39 = v50;
                    v16 = v51;
                    v30 = obj;
                  }

                  else
                  {
                    v40 = @"Low Resolution";
                  }
                }

                else
                {
                  v40 = @"Clock Overlap";
                }
              }

              else
              {
                v40 = @"Low Face Quality";
              }
            }

            else
            {
              v40 = @"Low Wallpaper Score";
            }
          }

          else
          {
            v40 = @"Low Aesthetics";
          }
        }

        else
        {
          v40 = @"Avoid for Key Asset";
        }
      }

      else
      {
        v40 = @"Is Utility";
      }
    }

    *v39 = v40;
LABEL_58:
    v19 = v48;
LABEL_59:

    v17 = v49;
    goto LABEL_60;
  }

  if (a7)
  {
    if ([v19 count] <= 1)
    {
      v41 = @"No Face";
    }

    else
    {
      v41 = @"Too Many Faces";
    }

    v38 = 0;
    *a7 = v41;
  }

  else
  {
    v38 = 0;
  }

LABEL_61:

  v45 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (BOOL)candidate:(id)a3 andFace:(id)a4 passesPostfilteringWithContext:(id)a5 curationContext:(id)a6 statistics:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 asset];
  v16 = [v15 curationModel];
  v17 = [v14 userFeedbackCalculator];

  LODWORD(v14) = [v16 isUtilityForMemoriesWithAsset:v15 userFeedbackCalculator:v17 blockSocialMediaImportedAssets:PGWallpaperSuggestionBlockSocialMediaImportedAssets];
  if (v14)
  {
    v18 = 0;
    ++a7->var0;
    goto LABEL_22;
  }

  if ([v16 avoidIfPossibleForKeyAssetWithAsset:v15 statistics:&a7->var12])
  {
    v18 = 0;
    ++a7->var1;
    goto LABEL_22;
  }

  v19 = [v16 aestheticsModel];
  v20 = [v19 overallAestheticScoreNode];
  [v20 highPrecisionOperatingPoint];
  v22 = v21;

  [v11 aestheticScore];
  if (v23 < v22)
  {
    v18 = 0;
    ++a7->var2;
    goto LABEL_22;
  }

  [v13 absoluteMinimumWallpaperScore];
  v25 = v24;
  if (v24 < 0.0)
  {
    v26 = [v16 wallpaperScoreModel];
    v27 = [v26 minimumWallpaperScoreNode];
    [v27 highRecallOperatingPoint];
    v25 = v28;
  }

  [v11 wallpaperScore];
  if (v25 > v29)
  {
    v18 = 0;
    ++a7->var3;
    goto LABEL_22;
  }

  v30 = [v16 isAestheticallyPrettyGoodWithAsset:v15];
  [v13 minimumWallpaperScore];
  v32 = v31;
  if (v31 < 0.0)
  {
    v33 = [v16 wallpaperScoreModel];
    v34 = [v33 peopleNode];
    [v34 operatingPoint];
    v32 = v35;
  }

  [v11 wallpaperScore];
  if (v32 <= v36)
  {
    v37 = 1;
  }

  else
  {
    v37 = v30;
  }

  if ((v37 & 1) == 0)
  {
    v18 = 0;
    ++a7->var9;
    goto LABEL_22;
  }

  [v13 minimumFaceQuality];
  v39 = v38;
  if (v38 < 0.0)
  {
    v40 = [v15 curationModel];
    v41 = [v40 faceModel];
    v42 = [v41 qualityNode];
    [v42 highRecallOperatingPoint];
    v39 = v43;
  }

  [v12 quality];
  if (v44 < v39)
  {
    v18 = 0;
    ++a7->var4;
    goto LABEL_22;
  }

  v46 = v44;
  [v13 faceQualityPenaltyCutOff];
  v48 = v47;
  if (v47 < 0.0)
  {
    v49 = [v15 curationModel];
    v50 = [v49 faceModel];
    v51 = [v50 qualityNode];
    [v51 highPrecisionOperatingPoint];
    v48 = v52;
  }

  [v11 setFaceQualityPenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v46, v39, v48)}];
  if (([v13 bypassCropScoreCheck] & 1) == 0)
  {
    v62 = objc_alloc(MEMORY[0x277D3C828]);
    v63 = [v11 asset];
    v64 = [v62 initWithAsset:v63 classification:1 headroomFeasible:1];

    v65 = [v64 cropForOrientation:{objc_msgSend(v13, "orientation")}];
    if ([v65 passesClockOverlap])
    {
      [v11 setHeadroomEngaged:{objc_msgSend(v65, "headroomEngaged")}];
      if ([v65 layoutVariant] == 2 || (objc_msgSend(v65, "cropZoomRatio"), v67 = v66, objc_msgSend(v13, "maximumCropZoomRatio"), v67 <= v68))
      {
        [v65 cropScore];
        v71 = v70;
        [v13 minimumCropScore];
        if (v71 >= v72)
        {

          goto LABEL_26;
        }

        v69 = 28;
      }

      else
      {
        v69 = 24;
      }
    }

    else
    {
      v69 = 20;
    }

    ++*(&a7->var0 + v69);

    v18 = 0;
    goto LABEL_22;
  }

LABEL_26:
  if ([MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:v15])
  {
    [v13 maximumLowLightScore];
    v54 = v53;
    if (v53 < 0.0)
    {
      v55 = [v15 curationModel];
      v56 = [v55 aestheticsModel];
      v57 = [v56 lowLightNode];
      [v57 operatingPoint];
      v54 = v58;
    }

    v59 = [v15 aestheticProperties];
    [v59 lowLight];
    v61 = v60;

    if (v54 >= v61)
    {
      if ([PGSensitiveLocationBlocklistConfiguration isAssetAtSensitiveLocationAndDate:v15])
      {
        v18 = 0;
        ++a7->var11;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
      ++a7->var10;
    }
  }

  else
  {
    v18 = 0;
    ++a7->var8;
  }

LABEL_22:

  return v18;
}

+ (id)prefilteringInternalPredicateWithContext:(id)a3
{
  v3 = [a1 prefilteringSubpredicatesWithContext:a3];
  v4 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v3];

  return v4;
}

+ (id)prefilteringSubpredicatesWithContext:(id)a3
{
  v47[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 deviceAspectRatio];
  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = MEMORY[0x277CCAC30];
  [v4 maximumFaceRoll];
  v10 = -v9;
  [v4 maximumFaceRoll];
  v12 = [v8 predicateWithFormat:@"%K >= %f AND %K <= %f", @"roll", *&v10, @"roll", v11];
  [v12 pg_setWallpaperSuggestionReason:@"High Face Roll"];
  v46 = v12;
  [v7 addObject:v12];
  if ([v4 requiresSmile])
  {
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K IN { %d, %d } AND %K != %d AND %K != %d) OR (%K == %d)", @"ageType", 1, 2, @"faceExpressionType", 3, @"faceExpressionType", 2, @"smileType", 2];
    [v13 pg_setWallpaperSuggestionReason:@"Failed Face Expression"];
    [v7 addObject:v13];
  }

  if ([v4 requiresNoBlink])
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"eyesState", 2];
    [v14 pg_setWallpaperSuggestionReason:@"Closed Eyes"];
    [v7 addObject:v14];
  }

  v15 = MEMORY[0x277CCAC30];
  if (v6 <= 1.0)
  {
    v16 = v6;
  }

  else
  {
    v16 = 1.0;
  }

  [v4 minimumFaceSize];
  v18 = v17;
  [v4 maximumFaceSize];
  v45 = [v15 predicateWithFormat:@"%K <= %K * %f AND %K BETWEEN { %f, %f }", @"sourceWidth", @"sourceHeight", *&v16, @"size", v18, v19];
  v20 = MEMORY[0x277CCAC30];
  [v4 minimumFaceSize];
  v22 = v6 * v21;
  [v4 maximumFaceSize];
  v24 = [v20 predicateWithFormat:@"%K >= %K * %f AND %K BETWEEN { %f, %f }", @"sourceWidth", @"sourceHeight", fmax(v6, 1.0), @"size", *&v22, v6 * v23];
  v25 = MEMORY[0x277CCAC30];
  [v4 minimumFaceSize];
  v27 = v26;
  [v4 maximumFaceSize];
  v29 = [v25 predicateWithFormat:@"%K >= %K * %f AND %K < %K AND %K >= (%f * %K) / %K AND %K <= (%f * %K) / %K", @"sourceWidth", @"sourceHeight", *&v6, @"sourceWidth", @"sourceHeight", @"size", v27, @"sourceWidth", @"sourceHeight", @"size", v28, @"sourceWidth", @"sourceHeight"];
  v30 = MEMORY[0x277CCAC30];
  [v4 minimumFaceSize];
  v32 = v6 * v31;
  [v4 maximumFaceSize];
  v34 = [v30 predicateWithFormat:@"%K > %K AND %K <= %K * %f AND %K >= (%f * %K) / %K AND %K <= (%f * %K)  / %K", @"sourceWidth", @"sourceHeight", @"sourceWidth", @"sourceHeight", *&v6, @"size", *&v32, @"sourceHeight", @"sourceWidth", @"size", v6 * v33, @"sourceHeight", @"sourceWidth"];
  v35 = MEMORY[0x277CCA920];
  v47[0] = v45;
  v47[1] = v24;
  v47[2] = v29;
  v47[3] = v34;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
  v37 = [v35 orPredicateWithSubpredicates:v36];

  [v37 pg_setWallpaperSuggestionReason:@"Face Size Out of Range"];
  [v7 addObject:v37];
  v38 = [a1 _assetExpressionWithFilteringContext:v4];
  v39 = MEMORY[0x277CCA918];
  v40 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"%@.@count", v38];
  v41 = [MEMORY[0x277CCA9C0] expressionForConstantValue:&unk_284483288];
  v42 = [v39 predicateWithLeftExpression:v40 rightExpression:v41 modifier:0 type:5 options:0];

  [v42 pg_setWallpaperSuggestionReason:@"Invalid Asset"];
  [v7 addObject:v42];

  v43 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_assetExpressionWithFilteringContext:(id)a3
{
  v25[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v23 = a3;
  v4 = [v3 alloc];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K == %d", @"kind", 0];
  v25[0] = v5;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K != %d", @"kindSubtype", 10];
  v25[1] = v6;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K != %d", @"kindSubtype", 1];
  v25[2] = v7;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT ($asset.%K IN %@)", @"playbackStyle", &unk_2844859B8];
  v25[3] = v8;
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY($asset.%K, $face, $face != NIL).@count == %d", @"detectedFaces", 1];
  v25[4] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K == NO AND $asset.%K == %d", @"hidden", @"trashedState", 0];
  v25[5] = v10;
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K >= %d", @"additionalAttributes.sceneAnalysisVersion", 77];
  v25[6] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:7];
  v13 = [v4 initWithArray:v12];

  LODWORD(v5) = [v23 styleableFilter];
  if (v5)
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K > %d", @"currentSleetCast", 0];
    v24[0] = v14;
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"$asset.%K > 0", @"additionalAttributes.sleetIsReversible"];
    v24[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    [v13 addObjectsFromArray:v16];
  }

  v17 = MEMORY[0x277CCA9C0];
  v18 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"assetForFace"];
  v19 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v13];
  v20 = [v17 expressionForSubquery:v18 usingIteratorVariable:@"asset" predicate:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end
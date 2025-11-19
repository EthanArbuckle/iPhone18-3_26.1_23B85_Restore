@interface PGPeopleWallpaperSuggester
+ (BOOL)passesFilteringWithAsset:(id)a3 curationContext:(id)a4 orientation:(int64_t)a5 reason:(id *)a6;
- (PGPeopleWallpaperSuggester)initWithSession:(id)a3;
- (id)personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress:(id)a3;
- (id)suggestionsWithOptions:(id)a3 progress:(id)a4;
- (void)_buildSuggestersWithNumberOfSuggestions:(unint64_t)a3 progressBlock:(id)a4;
- (void)setupFilteringContexts;
@end

@implementation PGPeopleWallpaperSuggester

- (id)personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress:(id)a3
{
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self session];
  v6 = [v5 curationContext];
  v7 = [v5 loggingConnection];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  primaryFilteringContext = self->_primaryFilteringContext;
  if (primaryFilteringContext)
  {
    v10 = primaryFilteringContext;
  }

  else
  {
    v11 = [PGPeopleWallpaperSuggesterFilteringContext alloc];
    v12 = [objc_opt_class() filtersForTopSuggestions];
    v13 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)self->_primaryFilteringContext orientation];
    v10 = [(PGPeopleWallpaperSuggesterFilteringContext *)v11 initForTopPeople:v12 withDictionary:MEMORY[0x277CBEC10] orientation:v13];
  }

  v14 = v10;
  v15 = [v5 workingContext];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__PGPeopleWallpaperSuggester_personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress___block_invoke;
  v24[3] = &unk_278887068;
  v25 = v6;
  v26 = v7;
  v27 = v14;
  v29 = v4;
  v16 = v8;
  v28 = v16;
  v17 = v4;
  v18 = v14;
  v19 = v7;
  v20 = v6;
  [v15 performSynchronousConcurrentGraphReadUsingBlock:v24];

  v21 = v28;
  v22 = v16;

  return v16;
}

void __96__PGPeopleWallpaperSuggester_personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGPeopleWallpaperSuggesterPersonImportanceAnalyzer alloc];
  v5 = [v3 graph];

  v6 = [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v4 initWithGraph:v5 curationContext:*(a1 + 32) loggingConnection:*(a1 + 40)];
  [*(a1 + 48) normalizedDeviationForVeryImportantPersons];
  [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v6 setNormalizedDeviationForVeryImportantPersons:?];
  [*(a1 + 48) normalizedDeviationForImportantPersons];
  [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v6 setNormalizedDeviationForImportantPersons:?];
  -[PGPeopleWallpaperSuggesterPersonImportanceAnalyzer setFavoritePersonsAreVIPs:](v6, "setFavoritePersonsAreVIPs:", [*(a1 + 48) favoritePersonsAreVIPs]);
  v7 = [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v6 personInformationsWithProgress:*(a1 + 64)];
  v8 = [*(a1 + 48) minimumPersonImportance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__PGPeopleWallpaperSuggester_personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress___block_invoke_2;
  v9[3] = &unk_278887040;
  v11 = v8;
  v10 = *(a1 + 56);
  [v7 enumerateObjectsUsingBlock:v9];
}

void __96__PGPeopleWallpaperSuggester_personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 importance] >= *(a1 + 40) && objc_msgSend(v6, "importance") != 3)
  {
    v3 = [v6 personLocalIdentifier];
    v4 = [v6 dupedPersonLocalIdentifiers];
    v5 = [v4 setByAddingObject:v3];

    [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
  }
}

- (void)_buildSuggestersWithNumberOfSuggestions:(unint64_t)a3 progressBlock:(id)a4
{
  buf[5] = *MEMORY[0x277D85DE8];
  v52 = a4;
  v6 = _Block_copy(v52);
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  if (!v6 || (v7 = CFAbsoluteTimeGetCurrent(), v7 - v79[3] < 0.01) || (v79[3] = v7, LOBYTE(v86) = 0, (*(v6 + 2))(v6, &v86, 0.0), v8 = *(v83 + 24) | v86, *(v83 + 24) = v8, (v8 & 1) == 0))
  {
    v9 = [(PGAbstractSuggester *)self session];
    v54 = [v9 curationContext];
    v50 = a3;
    v53 = v9;
    v10 = [v9 loggingConnection];
    v11 = os_signpost_id_generate(v10);
    v12 = v10;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGPeopleWallpaperSuggesterAnalyzer", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v14 = mach_absolute_time();
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __84__PGPeopleWallpaperSuggester__buildSuggestersWithNumberOfSuggestions_progressBlock___block_invoke;
    v72[3] = &unk_27888A188;
    v15 = v6;
    v73 = v15;
    v74 = &v78;
    v75 = &v82;
    v76 = 0x3F847AE147AE147BLL;
    v55 = [(PGPeopleWallpaperSuggester *)self personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress:v72];
    if (*(v83 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_41:

        goto LABEL_42;
      }

      buf[0] = 0x10804000202;
      LOWORD(buf[1]) = 2080;
      *(&buf[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggester.m";
      v16 = MEMORY[0x277D86220];
LABEL_12:
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_41;
    }

    v17 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v20 = v13;
    v21 = v20;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_END, v11, "PGPeopleWallpaperSuggesterAnalyzer", "", buf, 2u);
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "PGPeopleWallpaperSuggesterAnalyzer";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = ((((v17 - v14) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (v6)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v79[3] >= 0.01)
      {
        v79[3] = Current;
        LOBYTE(v86) = 0;
        (*(v15 + 2))(v15, &v86, 0.5);
        v23 = *(v83 + 24) | v86;
        *(v83 + 24) = v23;
        if (v23)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_41;
          }

          buf[0] = 0x10B04000202;
          LOWORD(buf[1]) = 2080;
          *(&buf[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggester.m";
          v16 = MEMORY[0x277D86220];
          goto LABEL_12;
        }
      }
    }

    v24 = v21;
    v25 = os_signpost_id_generate(v24);
    v26 = v24;
    v27 = v26;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PGPeopleWallpaperSuggesterCandidateComputation", "", buf, 2u);
    }

    v71 = 0;
    mach_timebase_info(&v71);
    spid = v25;
    v47 = mach_absolute_time();
    v48 = v25 - 1;
    buf[0] = 0;
    buf[1] = buf;
    buf[2] = 0x2020000000;
    buf[3] = 0x3FE0000000000000;
    v28 = [v55 count];
    v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v55, "count")}];
    v30 = +[PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:](PGWallpaperSuggestionUtilities, "assetFetchPropertySetsIncludingGating:", [objc_opt_class() filtersForTopSuggestions]);
    v31 = [v53 forbiddenAssetUUIDs];
    v32 = 0.5 / v28;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __84__PGPeopleWallpaperSuggester__buildSuggestersWithNumberOfSuggestions_progressBlock___block_invoke_308;
    v57[3] = &unk_278887018;
    v58 = v54;
    v33 = v27;
    v59 = v33;
    v60 = self;
    v49 = v30;
    v61 = v49;
    v34 = v31;
    v62 = v34;
    v68 = v50;
    v35 = v15;
    v64 = v35;
    v65 = &v78;
    v69 = 0x3F847AE147AE147BLL;
    v70 = v32;
    v66 = buf;
    v67 = &v82;
    v51 = v29;
    v63 = v51;
    [v55 enumerateKeysAndObjectsUsingBlock:v57];
    if (*(v83 + 24) == 1)
    {
      v36 = v33;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_40:

        _Block_object_dispose(buf, 8);
        goto LABEL_41;
      }

      v86 = 67109378;
      LODWORD(v87[0]) = 303;
      WORD2(v87[0]) = 2080;
      *(v87 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggester.m";
      v37 = MEMORY[0x277D86220];
    }

    else
    {
      v38 = mach_absolute_time();
      v36 = v33;
      v40 = v71.numer;
      v39 = v71.denom;
      v41 = v33;
      v42 = v41;
      if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        LOWORD(v86) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, spid, "PGPeopleWallpaperSuggesterCandidateComputation", "", &v86, 2u);
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v86 = 136315394;
        v87[0] = "PGPeopleWallpaperSuggesterCandidateComputation";
        LOWORD(v87[1]) = 2048;
        *(&v87[1] + 2) = ((((v38 - v47) * v40) / v39) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v86, 0x16u);
      }

      objc_storeStrong(&self->_suggesterByPersonLocalIdentifier, v29);
      if (!v6)
      {
        goto LABEL_40;
      }

      v43 = CFAbsoluteTimeGetCurrent();
      if (v43 - v79[3] < 0.01)
      {
        goto LABEL_40;
      }

      v79[3] = v43;
      v56 = 0;
      (*(v35 + 2))(v35, &v56, 1.0);
      v44 = *(v83 + 24) | v56;
      *(v83 + 24) = v44;
      if ((v44 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      v86 = 67109378;
      LODWORD(v87[0]) = 308;
      WORD2(v87[0]) = 2080;
      *(v87 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggester.m";
      v37 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v37, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v86, 0x12u);
    goto LABEL_40;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf[0] = 0xFE04000202;
    LOWORD(buf[1]) = 2080;
    *(&buf[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_42:
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);

  v45 = *MEMORY[0x277D85DE8];
}

void __84__PGPeopleWallpaperSuggester__buildSuggestersWithNumberOfSuggestions_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __84__PGPeopleWallpaperSuggester__buildSuggestersWithNumberOfSuggestions_progressBlock___block_invoke_308(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [[PGSinglePersonWallpaperAssetSuggester alloc] initWithPersonLocalIdentifiers:v8 curationContext:*(a1 + 32) loggingConnection:*(a1 + 40)];

  [(PGSinglePersonWallpaperAssetSuggester *)v9 setPrimaryFilteringContext:*(*(a1 + 48) + 80)];
  [(PGSinglePersonWallpaperAssetSuggester *)v9 setSecondaryFilteringContext:*(*(a1 + 48) + 88)];
  [(PGSinglePersonWallpaperAssetSuggester *)v9 setScoringContext:*(*(a1 + 48) + 56)];
  [(PGSinglePersonWallpaperAssetSuggester *)v9 setDistancingContext:*(*(a1 + 48) + 64)];
  [(PGSinglePersonWallpaperAssetSuggester *)v9 setAssetFetchPropertySets:*(a1 + 56)];
  [(PGSinglePersonWallpaperAssetSuggester *)v9 setForbiddenAssetUUIDs:*(a1 + 64)];
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v7;
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[PGPeopleWallpaperSuggester] Processing person %@", buf, 0xCu);
  }

  v11 = *(a1 + 112);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __84__PGPeopleWallpaperSuggester__buildSuggestersWithNumberOfSuggestions_progressBlock___block_invoke_310;
  v22 = &unk_27888A110;
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v26 = *(a1 + 120);
  v25 = *(a1 + 104);
  [(PGSinglePersonWallpaperAssetSuggester *)v9 computeSuggestedAssetsWithNumberOfSuggestions:v11 progressBlock:&v19];
  v12 = *(*(*(a1 + 104) + 8) + 24);
  if (v12 == 1)
  {
    goto LABEL_4;
  }

  *(*(*(a1 + 96) + 8) + 24) = *(a1 + 128) + *(*(*(a1 + 96) + 8) + 24);
  if (!*(a1 + 80))
  {
    goto LABEL_8;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v14 = *(*(a1 + 88) + 8);
  if (Current - *(v14 + 24) >= *(a1 + 120) && (*(v14 + 24) = Current, buf[0] = 0, (*(*(a1 + 80) + 16))(*(*(*(a1 + 96) + 8) + 24)), *(*(*(a1 + 104) + 8) + 24) |= buf[0], v12 = *(*(*(a1 + 104) + 8) + 24), v12 == 1))
  {
LABEL_4:
    *a4 = v12;
  }

  else
  {
LABEL_8:
    v15 = [(PGSinglePersonWallpaperAssetSuggester *)v9 expectedNumberOfSuggestedAssets:v19];
    if (v15 >= [*(*(a1 + 48) + 80) minimumNumberOfCandidatesForEligiblePerson])
    {
      [*(a1 + 72) setObject:v9 forKeyedSubscript:v7];
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v28) = v15;
        v17 = "[PGPeopleWallpaperSuggester] Found %d candidates";
        goto LABEL_13;
      }
    }

    else
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v28) = v15;
        v17 = "[PGPeopleWallpaperSuggester] Found only %d candidates, dropping";
LABEL_13:
        _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 8u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __84__PGPeopleWallpaperSuggester__buildSuggestersWithNumberOfSuggestions_progressBlock___block_invoke_310(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 64))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(*(*(a1 + 48) + 8) + 24) + *(a1 + 72) * a3);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)suggestionsWithOptions:(id)a3 progress:(id)a4
{
  v106 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v69 = _Block_copy(v7);
  v63 = v7;
  if (!v69 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v94[3] < 0.01) || (v94[3] = v8, LOBYTE(v101) = 0, (*(v69 + 2))(v69, &v101, 0.0), v9 = *(v98 + 24) | v101, *(v98 + 24) = v9, (v9 & 1) == 0))
  {
    v62 = [(PGAbstractSuggester *)self session];
    v11 = [v62 loggingConnection];
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    spid = v12;
    v61 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PGPeopleWallpaperSuggester", "", &buf, 2u);
    }

    oslog = v14;

    info = 0;
    mach_timebase_info(&info);
    v58 = mach_absolute_time();
    v65 = [v6 maximumNumberOfSuggestions];
    v66 = [v6 additionalOptions];
    v67 = [v66 objectForKeyedSubscript:@"filteringContext"];
    [(PGPeopleWallpaperSuggesterFilteringContext *)self->_primaryFilteringContext updateFilteringContextWithDictionary:v67];
    [(PGPeopleWallpaperSuggesterFilteringContext *)self->_secondaryFilteringContext updateFilteringContextWithDictionary:v67];
    v15 = [PGSinglePersonWallpaperAssetSuggesterScoringContext alloc];
    v16 = [v66 objectForKeyedSubscript:@"scoringContext"];
    v17 = [(PGSinglePersonWallpaperAssetSuggesterScoringContext *)v15 initWithDictionary:v16];
    scoringContext = self->_scoringContext;
    self->_scoringContext = v17;

    v19 = [PGSinglePersonWallpaperAssetSuggesterDistancingContext alloc];
    v20 = [v66 objectForKeyedSubscript:@"distancingContext"];
    v21 = [(PGSinglePersonWallpaperAssetSuggesterDistancingContext *)v19 initWithDictionary:v20];
    distancingContext = self->_distancingContext;
    self->_distancingContext = v21;

    v23 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v65;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGPeopleWallpaperSuggester] Starting to generate %d suggestions per person.", &buf, 8u);
    }

    v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!self->_suggesterByPersonLocalIdentifier)
    {
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __62__PGPeopleWallpaperSuggester_suggestionsWithOptions_progress___block_invoke;
      v87[3] = &unk_27888A188;
      v88 = v69;
      v89 = &v93;
      v90 = &v97;
      v91 = 0x3F847AE147AE147BLL;
      [(PGPeopleWallpaperSuggester *)self _buildSuggestersWithNumberOfSuggestions:v65 progressBlock:v87];
      if (*(v98 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 0x8104000202;
          LOWORD(v104) = 2080;
          *(&v104 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
        v24 = v88;
        goto LABEL_52;
      }

      v23 = oslog;
    }

    v25 = v23;
    v26 = os_signpost_id_generate(v25);
    v27 = v25;
    v28 = v27;
    v57 = v26;
    v59 = v26 - 1;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "PGPeopleWallpaperSuggesterSuggestionAccumulation", "", &buf, 2u);
    }

    v86 = 0;
    mach_timebase_info(&v86);
    v56 = mach_absolute_time();
    if (self->_assetGater)
    {
      v29 = 5;
    }

    else
    {
      v29 = 0;
    }

    if (self->_assetGater)
    {
      v30 = 2 * v65;
    }

    else
    {
      v30 = 0;
    }

    v31 = [objc_opt_class() suggestionTypes];
    v32 = [v31 firstIndex];

    v33 = [objc_opt_class() suggestionSubtypes];
    v34 = [v33 firstIndex];

    v35 = [(NSDictionary *)self->_suggesterByPersonLocalIdentifier count];
    if (v35 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v35;
    }

    buf = 0;
    *&v104 = &buf;
    *(&v104 + 1) = 0x2020000000;
    suggesterByPersonLocalIdentifier = self->_suggesterByPersonLocalIdentifier;
    v105 = 0;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __62__PGPeopleWallpaperSuggester_suggestionsWithOptions_progress___block_invoke_279;
    v71[3] = &unk_278886FF0;
    v38 = 0.25 / v36;
    v79 = v65;
    v80 = v29;
    v81 = v30;
    v24 = v28;
    p_buf = &buf;
    v82 = v38;
    v84 = v32;
    v85 = v34;
    v72 = v24;
    v73 = self;
    v39 = v69;
    v75 = v39;
    v77 = &v93;
    v83 = 0x3F847AE147AE147BLL;
    v78 = &v97;
    v40 = v64;
    v74 = v40;
    [(NSDictionary *)suggesterByPersonLocalIdentifier enumerateKeysAndObjectsUsingBlock:v71];
    if (*(v98 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v101 = 67109378;
        LODWORD(v102[0]) = 241;
        WORD2(v102[0]) = 2080;
        *(v102 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggester.m";
        v41 = MEMORY[0x277D86220];
LABEL_33:
        _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v101, 0x12u);
      }
    }

    else
    {
      v42 = mach_absolute_time();
      numer = v86.numer;
      denom = v86.denom;
      v45 = v24;
      v46 = v45;
      if (v59 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        LOWORD(v101) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_END, v57, "PGPeopleWallpaperSuggesterSuggestionAccumulation", "", &v101, 2u);
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v101 = 136315394;
        v102[0] = "PGPeopleWallpaperSuggesterSuggestionAccumulation";
        LOWORD(v102[1]) = 2048;
        *(&v102[1] + 2) = ((((v42 - v56) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v101, 0x16u);
      }

      v47 = mach_absolute_time();
      v49 = info.numer;
      v48 = info.denom;
      v50 = v46;
      v51 = v50;
      if (v61 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        LOWORD(v101) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v51, OS_SIGNPOST_INTERVAL_END, spid, "PGPeopleWallpaperSuggester", "", &v101, 2u);
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v101 = 136315394;
        v102[0] = "PGPeopleWallpaperSuggester";
        LOWORD(v102[1]) = 2048;
        *(&v102[1] + 2) = ((((v47 - v58) * v49) / v48) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v101, 0x16u);
      }

      if (!v69 || (Current = CFAbsoluteTimeGetCurrent(), Current - v94[3] < 0.01) || (v94[3] = Current, v70 = 0, (*(v39 + 2))(v39, &v70, 1.0), v53 = *(v98 + 24) | v70, *(v98 + 24) = v53, (v53 & 1) == 0))
      {
        v10 = v40;
        goto LABEL_51;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v101 = 67109378;
        LODWORD(v102[0]) = 247;
        WORD2(v102[0]) = 2080;
        *(v102 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggester.m";
        v41 = MEMORY[0x277D86220];
        goto LABEL_33;
      }
    }

    v10 = MEMORY[0x277CBEBF8];
LABEL_51:

    _Block_object_dispose(&buf, 8);
LABEL_52:

    goto LABEL_53;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x6904000202;
    LOWORD(v104) = 2080;
    *(&v104 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_53:
  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v97, 8);

  v54 = *MEMORY[0x277D85DE8];

  return v10;
}

void __62__PGPeopleWallpaperSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __62__PGPeopleWallpaperSuggester_suggestionsWithOptions_progress___block_invoke_279(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v68 = a3;
  v7 = [[PGWallpaperSuggestionAccumulator alloc] initWithTargetNumberOfSuggestions:*(a1 + 88) targetMinimumNumberOfGatedSuggestions:*(a1 + 96) maximumNumberOfSuggestionsToTryForGating:*(a1 + 104) loggingConnection:*(a1 + 32)];
  v8 = [MEMORY[0x277CBEAA8] date];
  v69 = [v8 dateByAddingTimeInterval:120.0];
  v9 = *(a1 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 88);
    v11 = *(a1 + 96);
    v12 = MEMORY[0x277CCABB0];
    v13 = v9;
    v14 = [v12 numberWithDouble:120.0];
    *buf = 67110402;
    *v78 = v10;
    *&v78[4] = 1024;
    *&v78[6] = v11;
    *&v78[10] = 2112;
    *&v78[12] = v6;
    *&v78[20] = 2112;
    v79 = v8;
    v80 = 2112;
    v81 = v14;
    v82 = 2112;
    v83 = v69;
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[PGPeopleWallpaperSuggester] Starting to generate %d suggestions (%d gated) for person %@. StartingDate: %@, MaxProcessingTime: %@s, MaxProcessingDate: %@", buf, 0x36u);
  }

  v66 = v8;
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 24);
  v17 = *(a1 + 112);
  *(v15 + 24) = v16 + 1;
  if (![(PGWallpaperSuggestionAccumulator *)v7 accumulationIsComplete])
  {
    v20 = 0;
    v19 = 0;
    v67 = 0;
    v65 = 0;
    v21 = 0;
    v22 = v17 * v16;
    *&v18 = 138412546;
    v63 = v18;
    while (1)
    {
      v23 = [v68 nextSuggestedAsset];
      if (!v23)
      {
        goto LABEL_39;
      }

      v24 = [[PGPeopleWallpaperSuggestion alloc] initWithPersonLocalIdentifier:v6 type:*(a1 + 128) subtype:*(a1 + 130) asset:v23];
      if (!*(*(a1 + 40) + 72))
      {
        break;
      }

      [*(*(a1 + 40) + 72) setEnableSettlingEffect:{+[PGSettlingEffectWallpaperSuggesterFilteringContext shouldRunSettlingEffectForAsset:subtype:](PGSettlingEffectWallpaperSuggesterFilteringContext, "shouldRunSettlingEffectForAsset:subtype:", v23, 602)}];
      v25 = *(*(a1 + 40) + 72);
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __62__PGPeopleWallpaperSuggester_suggestionsWithOptions_progress___block_invoke_285;
      v72[3] = &unk_27888A1B0;
      v73 = *(a1 + 56);
      v75 = *(a1 + 120);
      v76 = v22;
      v74 = *(a1 + 72);
      v26 = [v25 gateAsset:v23 progressBlock:v72];
      -[PGSingleAssetSuggestion setAvailableFeatures:](v24, "setAvailableFeatures:", [v26 availableFeatures]);
      v27 = [v26 passesAnyGating];
      v21 += [v26 didTimeout];

      ++v20;
      v71 = 0;
      v70 = 1.0;
      if (v27)
      {
        goto LABEL_18;
      }

      [MEMORY[0x277D3C810] cropScoreWithAsset:v23 classification:1 passesClockOverlap:&v71 cropZoomRatio:&v70 orientation:{objc_msgSend(*(*(a1 + 40) + 80), "orientation")}];
      v29 = v28;
      v30 = v70;
      [*(*(a1 + 40) + 80) maximumCropZoomRatio];
      v32 = v31;
      v33 = v30 > v31;
      [*(*(a1 + 40) + 80) minimumCropScore];
      v35 = v71;
      if (v71 == 1 && v30 <= v32 && v29 >= v34)
      {
        v36 = *(*(a1 + 40) + 88);
        if (!v36)
        {
          goto LABEL_16;
        }

        [MEMORY[0x277D3C810] cropScoreWithAsset:v23 classification:1 passesClockOverlap:&v71 cropZoomRatio:&v70 orientation:{objc_msgSend(v36, "orientation")}];
        v38 = v37;
        v39 = v70;
        [*(*(a1 + 40) + 88) maximumCropZoomRatio];
        v41 = v40;
        v33 = v39 > v40;
        [*(*(a1 + 40) + 88) minimumCropScore];
        v35 = v71;
        if (v71 == 1 && v39 <= v41 && v38 >= v42)
        {
LABEL_16:
          v43 = 0;
          goto LABEL_19;
        }
      }

      if (v35)
      {
        if (v33)
        {
          LODWORD(v65) = v65 + 1;
          v50 = @"low resolution";
        }

        else
        {
          ++HIDWORD(v65);
          v50 = @"low crop score";
        }
      }

      else
      {
        ++v67;
        v50 = @"clock overlap";
      }

      v51 = *(a1 + 32);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = v63;
        *v78 = @"non-gated";
        *&v78[8] = 2112;
        *&v78[10] = v50;
        _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "[PGPeopleWallpaperSuggester] Rejecting %@ suggestion because of %@.", buf, 0x16u);
      }

LABEL_20:
      v44 = [MEMORY[0x277CBEAA8] date];
      [v69 timeIntervalSinceDate:v44];
      v46 = v45;
      v47 = *(a1 + 32);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *v78 = v20;
        *&v78[4] = 1024;
        *&v78[6] = v19;
        *&v78[10] = 2048;
        *&v78[12] = v46;
        _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, "[PGPeopleWallpaperSuggester] Tried %d candidates. %d passed. %.3fs processing time left.", buf, 0x18u);
      }

      if (v21 > 1 || v46 < 0.0)
      {
        v52 = *(a1 + 32);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 67109632;
          *v78 = v21;
          *&v78[4] = 1024;
          *&v78[6] = 1;
          *&v78[10] = 2048;
          *&v78[12] = v46;
          _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_INFO, "[PGPeopleWallpaperSuggester] Reached (%d/%d) timeouts allowed. %.3fs processing time left.", buf, 0x18u);
        }

LABEL_39:
        goto LABEL_40;
      }

      if (*(a1 + 56))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v49 = *(*(a1 + 72) + 8);
        if (Current - *(v49 + 24) >= *(a1 + 120))
        {
          *(v49 + 24) = Current;
          buf[0] = 0;
          (*(*(a1 + 56) + 16))(v22 + 0.75);
          *(*(*(a1 + 80) + 8) + 24) |= buf[0];
          if (*(*(*(a1 + 80) + 8) + 24) == 1)
          {
            *a4 = 1;
            goto LABEL_48;
          }
        }
      }

      if ([(PGWallpaperSuggestionAccumulator *)v7 accumulationIsComplete])
      {
        goto LABEL_40;
      }
    }

    ++v20;
    v71 = 0;
    v70 = 1.0;
LABEL_18:
    v43 = 1;
LABEL_19:
    [(PGWallpaperSuggestionAccumulator *)v7 addSuggestion:v24 passingGating:v43];
    ++v19;
    goto LABEL_20;
  }

  v65 = 0;
  v67 = 0;
  v19 = 0;
  LODWORD(v20) = 0;
LABEL_40:
  v23 = [(PGWallpaperSuggestionAccumulator *)v7 suggestions];
  [*(a1 + 48) addObjectsFromArray:v23];
  v53 = *(a1 + 32);
  v54 = *(*(a1 + 40) + 72);
  v55 = os_log_type_enabled(v53, OS_LOG_TYPE_INFO);
  if (v54)
  {
    if (v55)
    {
      v56 = v53;
      v57 = [v23 count];
      v58 = [(PGWallpaperSuggestionAccumulator *)v7 numberOfGatedSuggestions];
      *buf = 67109634;
      *v78 = v57;
      *&v78[4] = 1024;
      *&v78[6] = v58;
      *&v78[10] = 2112;
      *&v78[12] = v6;
      _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_INFO, "[PGPeopleWallpaperSuggester] Generated %d suggestions (%d gated) for person %@.", buf, 0x18u);

      v53 = *(a1 + 32);
    }

    v59 = v66;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 67110144;
      *v78 = v20;
      *&v78[4] = 1024;
      *&v78[6] = v19;
      *&v78[10] = 1024;
      *&v78[12] = v67;
      *&v78[16] = 1024;
      *&v78[18] = v65;
      LOWORD(v79) = 1024;
      *(&v79 + 2) = HIDWORD(v65);
      _os_log_impl(&dword_22F0FC000, v53, OS_LOG_TYPE_INFO, "[PGPeopleWallpaperSuggester] Tried %d assets, %d passed, rejected %d for clock overlap, %d for low resolution, %d for low crop score.", buf, 0x20u);
    }
  }

  else
  {
    if (v55)
    {
      v60 = v53;
      v61 = [v23 count];
      *buf = 67109378;
      *v78 = v61;
      *&v78[4] = 2112;
      *&v78[6] = v6;
      _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "[PGPeopleWallpaperSuggester] Generated %d suggestions for person %@.", buf, 0x12u);
    }

LABEL_48:
    v59 = v66;
  }

  v62 = *MEMORY[0x277D85DE8];
}

void __62__PGPeopleWallpaperSuggester_suggestionsWithOptions_progress___block_invoke_285(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) * a3 + 0.75);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)setupFilteringContexts
{
  v2 = self;
  v3 = objc_opt_class();
  if (!v2)
  {
    NSStringFromClass(v3);
    objc_claimAutoreleasedReturnValue();
LABEL_11:
    v14 = _PFAssertFailHandler();
    [(PGPeopleWallpaperSuggester *)v14 initWithSession:v15, v16];
    return;
  }

  if (([(PGPeopleWallpaperSuggester *)v2 isMemberOfClass:v3]& 1) == 0)
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
  v5 = [PGPeopleWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGPeopleWallpaperSuggesterFilteringContext *)v5 initForPeopleInOrientation:2];
    primaryFilteringContext = v2->_primaryFilteringContext;
    v2->_primaryFilteringContext = v6;

    v8 = [[PGPeopleWallpaperSuggesterFilteringContext alloc] initForPeopleInOrientation:1];
  }

  else
  {
    v9 = [(PGPeopleWallpaperSuggesterFilteringContext *)v5 initForPeopleInOrientation:1];
    v10 = v2->_primaryFilteringContext;
    v2->_primaryFilteringContext = v9;

    v8 = 0;
  }

  secondaryFilteringContext = v2->_secondaryFilteringContext;
  v2->_secondaryFilteringContext = v8;
}

- (PGPeopleWallpaperSuggester)initWithSession:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PGPeopleWallpaperSuggester;
  v5 = [(PGAbstractSuggester *)&v11 initWithSession:v4];
  if (v5)
  {
    if ([objc_opt_class() filtersForTopSuggestions])
    {
      v6 = [PGWallpaperSuggestionAssetGater alloc];
      v7 = [v4 loggingConnection];
      v8 = [(PGWallpaperSuggestionAssetGater *)v6 initWithType:1 loggingConnection:v7];
      assetGater = v5->_assetGater;
      v5->_assetGater = v8;

      -[PGWallpaperSuggestionAssetGater setEnableSettlingEffect:](v5->_assetGater, "setEnableSettlingEffect:", [objc_opt_class() enableSettlingEffect]);
    }

    [(PGPeopleWallpaperSuggester *)v5 setupFilteringContexts];
  }

  return v5;
}

+ (BOOL)passesFilteringWithAsset:(id)a3 curationContext:(id)a4 orientation:(int64_t)a5 reason:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [objc_opt_class() filtersForTopSuggestions];
  v12 = [PGSinglePersonWallpaperAssetSuggester passesFilteringWithAsset:v9 forTopWallpaperSuggestions:v11 curationContext:v10 orientation:a5 reason:a6];

  if (v11 && v12)
  {
    v13 = [PGWallpaperSuggestionAssetGater alloc];
    LOBYTE(v12) = 1;
    v14 = [(PGWallpaperSuggestionAssetGater *)v13 initWithType:1 loggingConnection:MEMORY[0x277D86220]];
    [(PGWallpaperSuggestionAssetGater *)v14 setCoversTracks:1];
    [(PGWallpaperSuggestionAssetGater *)v14 setIsUserInitiated:1];
    v15 = [(PGWallpaperSuggestionAssetGater *)v14 gateAsset:v9 progressBlock:&__block_literal_global_58035];
    if ([v15 passesAnyGating])
    {
      v16 = @"Pass Segmented";
      if (!a6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v26 = 0;
      v25 = 1.0;
      [MEMORY[0x277D3C810] cropScoreWithAsset:v9 classification:1 passesClockOverlap:&v26 cropZoomRatio:&v25 orientation:a5];
      v18 = v17;
      v19 = [[PGPeopleWallpaperSuggesterFilteringContext alloc] initForTopPeopleInOrientation:a5];
      v20 = v19;
      if (v26)
      {
        v21 = v25;
        [v19 maximumCropZoomRatio];
        if (v21 <= v22)
        {
          [v20 minimumCropScore];
          LOBYTE(v12) = v18 >= v23;
          if (v18 < v23)
          {
            v16 = @"Low Crop Score";
          }

          else
          {
            v16 = @"Pass Unsegmented";
          }
        }

        else
        {
          LOBYTE(v12) = 0;
          v16 = @"Low Resolution";
        }
      }

      else
      {
        LOBYTE(v12) = 0;
        v16 = @"Clock Overlap";
      }

      if (!a6)
      {
        goto LABEL_15;
      }
    }

    *a6 = v16;
LABEL_15:
  }

  return v12;
}

@end
@interface PGPeopleWallpaperSuggesterPersonImportanceAnalyzer
- (BOOL)_isVeryImportantPersonWithPersonNode:(id)node;
- (PGPeopleWallpaperSuggesterPersonImportanceAnalyzer)initWithGraph:(id)graph curationContext:(id)context loggingConnection:(id)connection;
- (id)personInformationsWithProgress:(id)progress;
- (void)computePersonImportancesWithProgress:(id)progress;
- (void)gatherMomentInformationWithProgress:(id)progress;
- (void)gatherPersonInformationWithProgress:(id)progress;
@end

@implementation PGPeopleWallpaperSuggesterPersonImportanceAnalyzer

- (id)personInformationsWithProgress:(id)progress
{
  v56 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = _Block_copy(progressCopy);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if (!v5 || (v6 = CFAbsoluteTimeGetCurrent(), v6 - v44[3] < 0.01) || (v44[3] = v6, v42 = 0, (*(v5 + 2))(v5, &v42, 0.0), v7 = *(v48 + 24) | v42, *(v48 + 24) = v7, (v7 & 1) == 0))
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __85__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_personInformationsWithProgress___block_invoke;
    v37[3] = &unk_27888A188;
    v9 = v5;
    v38 = v9;
    v39 = &v43;
    v40 = &v47;
    v41 = 0x3F847AE147AE147BLL;
    [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)self gatherPersonInformationWithProgress:v37];
    if (*(v48 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v53 = 227;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v8 = MEMORY[0x277CBEBF8];
      goto LABEL_37;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __85__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_personInformationsWithProgress___block_invoke_252;
    v32[3] = &unk_27888A188;
    v10 = v9;
    v33 = v10;
    v34 = &v43;
    v35 = &v47;
    v36 = 0x3F847AE147AE147BLL;
    [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)self gatherMomentInformationWithProgress:v32];
    if (*(v48 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v53 = 232;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v8 = MEMORY[0x277CBEBF8];
      goto LABEL_36;
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __85__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_personInformationsWithProgress___block_invoke_253;
    v27[3] = &unk_27888A188;
    v11 = v10;
    v28 = v11;
    v29 = &v43;
    v30 = &v47;
    v31 = 0x3F847AE147AE147BLL;
    [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)self computePersonImportancesWithProgress:v27];
    if (*(v48 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v53 = 237;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
        v12 = MEMORY[0x277D86220];
LABEL_18:
        _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] Merge candidate mapping:", buf, 2u);
      }

      personInformationByPersonLocalIdentifier = self->_personInformationByPersonLocalIdentifier;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __85__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_personInformationsWithProgress___block_invoke_254;
      v26[3] = &unk_2788889D8;
      v26[4] = self;
      [(NSMutableDictionary *)personInformationByPersonLocalIdentifier enumerateKeysAndObjectsUsingBlock:v26];
      if (!v5 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v44[3] < 0.01) || (v44[3] = v15, v42 = 0, (*(v11 + 2))(v11, &v42, 0.9), v16 = *(v48 + 24) | v42, *(v48 + 24) = v16, (v16 & 1) == 0))
      {
        allValues = [(NSMutableDictionary *)self->_personInformationByPersonLocalIdentifier allValues];
        v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"importance" ascending:0];
        v51[0] = v18;
        v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personLocalIdentifier" ascending:0];
        v51[1] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
        v21 = [allValues sortedArrayUsingDescriptors:v20];

        if (v5 && (Current = CFAbsoluteTimeGetCurrent(), Current - v44[3] >= 0.01) && (v44[3] = Current, v42 = 0, (*(v11 + 2))(v11, &v42, 1.0), v23 = *(v48 + 24) | v42, *(v48 + 24) = v23, (v23 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v53 = 254;
            v54 = 2080;
            v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v8 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v8 = v21;
        }

        goto LABEL_35;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v53 = 247;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
        v12 = MEMORY[0x277D86220];
        goto LABEL_18;
      }
    }

    v8 = MEMORY[0x277CBEBF8];
LABEL_35:

LABEL_36:
LABEL_37:

    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v53 = 222;
    v54 = 2080;
    v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_38:
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

void __85__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_personInformationsWithProgress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __85__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_personInformationsWithProgress___block_invoke_252(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __85__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_personInformationsWithProgress___block_invoke_253(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.3 + 0.6);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __85__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_personInformationsWithProgress___block_invoke_254(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] \t%@", buf, 0xCu);
  }

  v18 = v5;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v6 dupedPersonLocalIdentifiers];
  v9 = [v8 allObjects];
  v10 = [v9 sortedArrayUsingSelector:sel_compare_];

  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(a1 + 32) + 24);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(*(&v19 + 1) + 8 * i);
          *buf = 138412290;
          v25 = v16;
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] \t\t%@", buf, 0xCu);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)computePersonImportancesWithProgress:(id)progress
{
  v34 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = _Block_copy(progressCopy);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (!v5 || (v6 = CFAbsoluteTimeGetCurrent(), v6 - v23[3] < 0.01) || (v23[3] = v6, v21 = 0, (*(v5 + 2))(v5, &v21, 0.0), v7 = *(v27 + 24) | v21, *(v27 + 24) = v7, (v7 & 1) == 0))
  {
    v8 = MEMORY[0x277D27688];
    allKeys = [(NSMutableDictionary *)self->_momentLocalIdentifiersByPersonLocalIdentifier allKeys];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_computePersonImportancesWithProgress___block_invoke;
    v20[3] = &unk_278888988;
    v20[4] = self;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __91__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_computePersonImportancesWithProgress___block_invoke_2;
    v15[3] = &unk_2788889B0;
    v10 = v5;
    v19 = 0x3F847AE147AE147BLL;
    v17 = &v22;
    v18 = &v26;
    v15[4] = self;
    v16 = v10;
    [v8 calculateStandardDeviationForItems:allKeys valueBlock:v20 result:v15];

    if (*(v27 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      *buf = 67109378;
      v31 = 215;
      v32 = 2080;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v5)
      {
        goto LABEL_15;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v23[3] < 0.01)
      {
        goto LABEL_15;
      }

      v23[3] = Current;
      v21 = 0;
      (*(v10 + 2))(v10, &v21, 1.0);
      v13 = *(v27 + 24) | v21;
      *(v27 + 24) = v13;
      if ((v13 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 67109378;
      v31 = 217;
      v32 = 2080;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
      v11 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v31 = 185;
    v32 = 2080;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_16:
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  v14 = *MEMORY[0x277D85DE8];
}

double __91__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_computePersonImportancesWithProgress___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:a2];
  v3 = [v2 count];

  return v3;
}

void __91__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_computePersonImportancesWithProgress___block_invoke_2(uint64_t a1, double a2, double a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 40) || (Current = CFAbsoluteTimeGetCurrent(), v7 = *(*(a1 + 48) + 8), Current - *(v7 + 24) < *(a1 + 64)) || (*(v7 + 24) = Current, buf[0] = 0, (*(*(a1 + 40) + 16))(0.5), *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24), (*(*(*(a1 + 56) + 8) + 24) & 1) == 0))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v33 = a3;
      v34 = 2048;
      v35 = a2;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] Mean = %f, stdev = %f", buf, 0x16u);
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
    }

    v10 = a3 + *(v8 + 96) * a2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v33 = v10;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] Frequency for very important persons: %f", buf, 0xCu);
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
    }

    v11 = a3 + *(v8 + 104) * a2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v33 = v11;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] Frequency for important persons: %f", buf, 0xCu);
      v8 = *(a1 + 32);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [*(v8 + 80) allKeys];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v29;
      *&v14 = 138412802;
      v27 = v14;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:{*&v18, v27}];
          v20 = [v19 count];

          v21 = *(a1 + 32);
          if ((*(v21 + 40) & 1) != 0 || v10 > v20)
          {
            if (v11 <= v20)
            {
              v22 = 1;
              v23 = @"Important Person";
            }

            else
            {
              v22 = 0;
              v23 = @"Other";
            }
          }

          else
          {
            v22 = 2;
            v23 = @"Very Important Person";
          }

          v24 = *(v21 + 24);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = v27;
            v33 = v18;
            v34 = 2048;
            v35 = v20;
            v36 = 2112;
            v37 = v23;
            _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] Person %@: frequency = %f, importance %@", buf, 0x20u);
            v21 = *(a1 + 32);
          }

          v25 = [*(v21 + 72) objectForKeyedSubscript:*&v18];
          [v25 mergeImportance:v22];
        }

        v15 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v15);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)gatherMomentInformationWithProgress:(id)progress
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(progress);
  v5 = 0.0;
  if (!v4 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v7 = 0;
LABEL_4:
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] Gathering Moment Information", buf, 2u);
    }

    if (self->_latestLibraryDate && (v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:self->_earliestDateForBasePersons endDate:self->_latestLibraryDate]) != 0)
    {
      v10 = v9;
      v11 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v9 inGraph:self->_graph];
    }

    else
    {
      v11 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:self->_graph];
    }

    if (self->_latestLibraryDate && (v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:self->_earliestDateForCandidates endDate:self->_latestLibraryDate]) != 0)
    {
      v13 = v12;
      v14 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v12 inGraph:self->_graph];
    }

    else
    {
      v14 = v11;
    }

    v15 = MEMORY[0x277D22BF8];
    v16 = +[PGGraphMomentNode consolidatedPersonInMoment];
    v17 = [v15 adjacencyWithSources:v11 relation:v16 targetsClass:objc_opt_class()];

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    momentLocalIdentifiersByPersonLocalIdentifier = self->_momentLocalIdentifiersByPersonLocalIdentifier;
    self->_momentLocalIdentifiersByPersonLocalIdentifier = v18;

    transposed = [v17 transposed];
    v21 = [transposed intersectingTargetsWith:v14];
    sources = [transposed sources];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __90__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_gatherMomentInformationWithProgress___block_invoke;
    v26[3] = &unk_278888960;
    v26[4] = self;
    v27 = v21;
    v28 = transposed;
    v23 = transposed;
    v24 = v21;
    [sources enumerateNodesUsingBlock:v26];

    if (v4)
    {
      if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
      {
        v29 = 0;
        v4[2](v4, &v29, 1.0);
        if (v7 | v29)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v31 = 180;
            v32 = 2080;
            v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_20;
  }

  v29 = 0;
  v4[2](v4, &v29, 0.0);
  v7 = v29;
  if (v29 != 1)
  {
    v5 = Current;
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v31 = 138;
    v32 = 2080;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGPeopleWallpaperSuggesterPersonImportanceAnalyzer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
}

void __90__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_gatherMomentInformationWithProgress___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 localIdentifier];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 name];
  v7 = [v5 stringWithFormat:@"[PersonImportanceAnalyzer] Person (%@, %@)", v6, v4];

  if ([v4 length])
  {
    v8 = [v3 localIdentifier];
    v9 = [v8 isEqualToString:*(*(a1 + 32) + 32)];

    if (v9)
    {
      v10 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v7;
        v11 = "%@: Me, ignoring";
LABEL_7:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
      }
    }

    else
    {
      if ((([v3 isMyCoworker] & 1) != 0 || objc_msgSend(v3, "isMyInferredCoworker")) && (objc_msgSend(v3, "isMemberOfMyFamily") & 1) == 0 && (objc_msgSend(v3, "isInferredMemberOfMyFamily") & 1) == 0 && (objc_msgSend(v3, "isFavorite") & 1) == 0)
      {
        v10 = *(*(a1 + 32) + 24);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        *buf = 138412290;
        v22 = v7;
        v11 = "%@: Coworker and not family or favorite, ignoring";
        goto LABEL_7;
      }

      v12 = [v3 identifier];
      v13 = [*(a1 + 40) targetsForSourceIdentifier:v12];
      v14 = [v13 localIdentifiers];

      v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v14];
      [*(*(a1 + 32) + 80) setObject:v15 forKeyedSubscript:v4];

      v16 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        v18 = [v14 count];
        v19 = [*(a1 + 48) targetsForSourceIdentifier:v12];
        *buf = 138412802;
        v22 = v7;
        v23 = 1024;
        v24 = v18;
        v25 = 1024;
        v26 = [v19 count];
        _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "%@: %d very recent moments, %d recent moments", buf, 0x18u);
      }
    }
  }

  else
  {
    v10 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v7;
      v11 = "%@: no localIdentifier, ignoring";
      goto LABEL_7;
    }
  }

LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)gatherPersonInformationWithProgress:(id)progress
{
  progressCopy = progress;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] Gathering Person Information", buf, 2u);
  }

  personUUIDByMergeCandidateUUID = [(CLSCurationContext *)self->_curationContext personUUIDByMergeCandidateUUID];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_gatherPersonInformationWithProgress___block_invoke;
  v19[3] = &unk_278888938;
  v8 = v7;
  v20 = v8;
  [personUUIDByMergeCandidateUUID enumerateKeysAndObjectsUsingBlock:v19];
  if ([(NSString *)self->_mePersonLocalIdentifier length])
  {
    v9 = [v8 objectForKeyedSubscript:self->_mePersonLocalIdentifier];
    v10 = [[PGPeopleWallpaperSuggesterPersonInformation alloc] initWithPersonLocalIdentifier:self->_mePersonLocalIdentifier importance:3 unverifiedMergeCandidateLocalIdentifiers:v9];
    [(NSMutableDictionary *)self->_personInformationByPersonLocalIdentifier setObject:v10 forKeyedSubscript:self->_mePersonLocalIdentifier];
  }

  v11 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:self->_graph];
  userFeedbackCalculator = [(CLSCurationContext *)self->_curationContext userFeedbackCalculator];
  personUUIDsWithNegativeFeedback = [userFeedbackCalculator personUUIDsWithNegativeFeedback];

  self->_hasFavoritedPersons = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_gatherPersonInformationWithProgress___block_invoke_2;
  v16[3] = &unk_278888960;
  v16[4] = self;
  v17 = personUUIDsWithNegativeFeedback;
  v18 = v8;
  v14 = v8;
  v15 = personUUIDsWithNegativeFeedback;
  [v11 enumerateNodesUsingBlock:v16];
}

void __90__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_gatherPersonInformationWithProgress___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CD9938];
  v6 = a3;
  v9 = [v5 localIdentifierWithUUID:a2];
  v7 = [MEMORY[0x277CD9938] localIdentifierWithUUID:v6];

  v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }

  [v8 addObject:v9];
}

void __90__PGPeopleWallpaperSuggesterPersonImportanceAnalyzer_gatherPersonInformationWithProgress___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 localIdentifier];
  if ([v4 length] && (objc_msgSend(v4, "isEqualToString:", *(*(a1 + 32) + 32)) & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 40))
    {
      v6 = 1;
    }

    else
    {
      v6 = [v3 isFavorite];
      v5 = *(a1 + 32);
    }

    *(v5 + 40) = v6;
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:v4];
    LODWORD(v7) = [v7 containsObject:v8];

    v9 = *(a1 + 32);
    if (v7)
    {
      v10 = v9[3];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = [v3 name];
        v23 = 138412546;
        v24 = v12;
        v25 = 2112;
        v26 = v4;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] (%@, %@) is rejected because of negative feedback", &v23, 0x16u);
      }

      v13 = -1;
    }

    else if ([v9 _isVeryImportantPersonWithPersonNode:v3])
    {
      v14 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = v14;
        v16 = [v3 name];
        v23 = 138412546;
        v24 = v16;
        v25 = 2112;
        v26 = v4;
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[PersonImportanceAnalyzer] (%@, %@) is very important person", &v23, 0x16u);
      }

      v13 = 2;
    }

    else if ([v3 isFavorite])
    {
      v17 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v21 = v17;
        v22 = [v3 name];
        v23 = 138412546;
        v24 = v22;
        v25 = 2112;
        v26 = v4;
        _os_log_debug_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_DEBUG, "[PersonImportanceAnalyzer] (%@, %@) is important person", &v23, 0x16u);
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v18 = [*(a1 + 48) objectForKeyedSubscript:v4];
    v19 = [[PGPeopleWallpaperSuggesterPersonInformation alloc] initWithPersonLocalIdentifier:v4 importance:v13 unverifiedMergeCandidateLocalIdentifiers:v18];
    [*(*(a1 + 32) + 72) setObject:v19 forKeyedSubscript:v4];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isVeryImportantPersonWithPersonNode:(id)node
{
  nodeCopy = node;
  if ([nodeCopy isMyPartner] & 1) != 0 || (objc_msgSend(nodeCopy, "isMyInferredPartner") & 1) != 0 || (objc_msgSend(nodeCopy, "isMyChild"))
  {
    isFavorite = 1;
  }

  else if (self->_favoritePersonsAreVIPs)
  {
    isFavorite = [nodeCopy isFavorite];
  }

  else
  {
    isFavorite = 0;
  }

  return isFavorite;
}

- (PGPeopleWallpaperSuggesterPersonImportanceAnalyzer)initWithGraph:(id)graph curationContext:(id)context loggingConnection:(id)connection
{
  graphCopy = graph;
  contextCopy = context;
  connectionCopy = connection;
  v28.receiver = self;
  v28.super_class = PGPeopleWallpaperSuggesterPersonImportanceAnalyzer;
  v12 = [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)&v28 init];
  v13 = v12;
  if (v12)
  {
    *&v12->_normalizedDeviationForVeryImportantPersons = xmmword_22F78C140;
    v12->_favoritePersonsAreVIPs = 1;
    objc_storeStrong(&v12->_graph, graph);
    objc_storeStrong(&v13->_curationContext, context);
    objc_storeStrong(&v13->_loggingConnection, connection);
    meNodeWithFallbackInferredMeNode = [(PGGraph *)v13->_graph meNodeWithFallbackInferredMeNode];
    localIdentifier = [meNodeWithFallbackInferredMeNode localIdentifier];
    mePersonLocalIdentifier = v13->_mePersonLocalIdentifier;
    v13->_mePersonLocalIdentifier = localIdentifier;

    v17 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:v13->_graph];
    universalDateInterval = [v17 universalDateInterval];
    endDate = [universalDateInterval endDate];
    latestLibraryDate = v13->_latestLibraryDate;
    v13->_latestLibraryDate = endDate;

    if (v13->_latestLibraryDate)
    {
      v21 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:-63115200.0 sinceDate:?];
    }

    else
    {
      v21 = 0;
    }

    earliestDateForCandidates = v13->_earliestDateForCandidates;
    v13->_earliestDateForCandidates = v21;

    if (v13->_latestLibraryDate)
    {
      v23 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:-220903200.0 sinceDate:?];
    }

    else
    {
      v23 = 0;
    }

    earliestDateForBasePersons = v13->_earliestDateForBasePersons;
    v13->_earliestDateForBasePersons = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    personInformationByPersonLocalIdentifier = v13->_personInformationByPersonLocalIdentifier;
    v13->_personInformationByPersonLocalIdentifier = v25;
  }

  return v13;
}

@end
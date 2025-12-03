@interface PGHighlightTailor
- (BOOL)enrichAllHighlightsWithOptions:(unint64_t)options progressBlock:(id)block;
- (BOOL)enrichDayHighlights:(id)highlights dayGroupHighlights:(id)groupHighlights withOptions:(unint64_t)options progressBlock:(id)block;
- (BOOL)enrichHighlights:(id)highlights options:(unint64_t)options progressBlock:(id)block;
- (BOOL)shouldEnrichHighlight:(id)highlight withEnrichmentProfile:(id)profile options:(unint64_t)options;
- (PGHighlightTailor)initWithWorkingContext:(id)context;
- (double)highlightVisibilityWeightForItem:(id)item;
- (id)allHighlightModelsNeedingEnrichmentForHighlightSubtype:(int64_t)subtype options:(unint64_t)options;
- (id)allHighlightsNeedingEnrichmentWithOptions:(unint64_t)options;
- (id)assetSortDescriptors;
- (id)bestEnrichmentProfileForHighlight:(id)highlight options:(unint64_t)options;
- (id)computeChangedVisibilityScoresForItems:(id)items;
- (id)enrichmentValuesForHighlight:(id)highlight usingEnrichmentProfile:(id)profile graph:(id)graph options:(unint64_t)options reportChangedValuesOnly:(BOOL)only highlightTailorContext:(id)context progressBlock:(id)block;
- (id)initForTesting;
- (unint64_t)tailorOptionsAllowedForHighlight:(id)highlight originalOptions:(unint64_t)options;
- (void)writeHighlightEnrichmentValues:(id)values toChangeRequest:(id)request highlight:(id)highlight options:(unint64_t)options;
@end

@implementation PGHighlightTailor

- (id)bestEnrichmentProfileForHighlight:(id)highlight options:(unint64_t)options
{
  v21 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_enrichmentProfiles;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 canEnrichHighlight:highlightCopy withOptions:{options, v16}])
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)enrichDayHighlights:(id)highlights dayGroupHighlights:(id)groupHighlights withOptions:(unint64_t)options progressBlock:(id)block
{
  v72 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  groupHighlightsCopy = groupHighlights;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  if (v9)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v61[3] >= 0.01)
    {
      v61[3] = Current;
      LOBYTE(info.numer) = 0;
      v9[2](v9, &info, 0.0);
      v11 = *(v65 + 24) | LOBYTE(info.numer);
      *(v65 + 24) = v11;
      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v69 = 960;
          *&v69[4] = 2080;
          *&v69[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
          v12 = MEMORY[0x277D86220];
LABEL_37:
          _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_38;
        }

        goto LABEL_38;
      }
    }
  }

  v13 = [highlightsCopy count];
  if (v13)
  {
    context = objc_autoreleasePoolPush();
    v14 = self->_loggingConnection;
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "EnrichDayHighlights", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v18 = mach_absolute_time();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __86__PGHighlightTailor_enrichDayHighlights_dayGroupHighlights_withOptions_progressBlock___block_invoke;
    v54[3] = &unk_27888A188;
    v55 = v9;
    v56 = &v60;
    v57 = &v64;
    v58 = 0x3F847AE147AE147BLL;
    v19 = [(PGHighlightTailor *)self enrichHighlights:highlightsCopy options:options progressBlock:v54];
    v20 = *(v65 + 24);
    if (v20 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v69 = 970;
        *&v69[4] = 2080;
        *&v69[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v43 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v23 = v17;
      v24 = v23;
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 134217984;
        *v69 = v13;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, v15, "EnrichDayHighlights", "Day Highlight count (%ld)", buf, 0xCu);
      }

      v25 = v24;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Day Highlight count (%ld)", v13];
        *buf = 136315650;
        *v69 = "EnrichDayHighlights";
        *&v69[8] = 2112;
        *&v69[10] = v26;
        v70 = 2048;
        v71 = ((((v43 - v18) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(context);
    if (v20)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v19 = 1;
  }

  if ([groupHighlightsCopy count])
  {
    v27 = v19;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self->_loggingConnection;
    v30 = os_signpost_id_generate(v29);
    v31 = v29;
    v32 = v31;
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "EnrichDayGroupHighlights", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v33 = mach_absolute_time();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __86__PGHighlightTailor_enrichDayHighlights_dayGroupHighlights_withOptions_progressBlock___block_invoke_251;
    v49[3] = &unk_27888A188;
    v50 = v9;
    v51 = &v60;
    v52 = &v64;
    v53 = 0x3F847AE147AE147BLL;
    LOBYTE(v19) = [(PGHighlightTailor *)self enrichHighlights:groupHighlightsCopy options:options progressBlock:v49];
    v34 = mach_absolute_time();
    v35 = info;
    v36 = v32;
    v37 = v36;
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      v38 = [groupHighlightsCopy count];
      *buf = 134217984;
      *v69 = v38;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v37, OS_SIGNPOST_INTERVAL_END, v30, "EnrichDayGroupHighlights", "Day Group Highlight count (%ld)", buf, 0xCu);
    }

    v39 = v37;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Day Group Highlight count (%ld)", objc_msgSend(groupHighlightsCopy, "count")];
      *buf = 136315650;
      *v69 = "EnrichDayGroupHighlights";
      *&v69[8] = 2112;
      *&v69[10] = v40;
      v70 = 2048;
      v71 = ((((v34 - v33) * v35.numer) / v35.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
  }

  if (*(v65 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v69 = 982;
      *&v69[4] = 2080;
      *&v69[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
      v12 = MEMORY[0x277D86220];
      goto LABEL_37;
    }

LABEL_38:
    LOBYTE(v19) = 0;
  }

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  v41 = *MEMORY[0x277D85DE8];
  return v19;
}

void __86__PGHighlightTailor_enrichDayHighlights_dayGroupHighlights_withOptions_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __86__PGHighlightTailor_enrichDayHighlights_dayGroupHighlights_withOptions_progressBlock___block_invoke_251(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)allHighlightsNeedingEnrichmentWithOptions:(unint64_t)options
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(PGHighlightTailor *)self allHighlightModelsNeedingEnrichmentForHighlightSubtype:1000000301 options:options];
  [v5 addObjectsFromArray:v6];
  v7 = [(PGHighlightTailor *)self allHighlightModelsNeedingEnrichmentForHighlightSubtype:1000000304 options:options];
  [v5 addObjectsFromArray:v7];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v22[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"kind" ascending:1];
  v22[1] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:1];
  v22[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  [v5 sortUsingDescriptors:v11];

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v13 = loggingConnection;
    v16 = 134218496;
    v17 = [v6 count];
    v18 = 2048;
    v19 = [v7 count];
    v20 = 2048;
    v21 = [v5 count];
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "%tu day highlights and %tu day groups to enrich (%tu total)", &v16, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)enrichAllHighlightsWithOptions:(unint64_t)options progressBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = _Block_copy(blockCopy);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (v7 && (Current = CFAbsoluteTimeGetCurrent(), Current - v37[3] >= 0.01) && (v37[3] = Current, LOBYTE(info.numer) = 0, (*(v7 + 2))(v7, &info, 0.0), v9 = *(v41 + 24) | LOBYTE(info.numer), *(v41 + 24) = v9, (v9 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v45 = 918;
      *&v45[4] = 2080;
      *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = 0;
  }

  else
  {
    v11 = [(PGHighlightTailor *)self allHighlightsNeedingEnrichmentWithOptions:options];
    v12 = [v11 count];
    if (v12)
    {
      context = objc_autoreleasePoolPush();
      v13 = self->_loggingConnection;
      v14 = os_signpost_id_generate(v13);
      v15 = v13;
      v16 = v15;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "EnrichHighlights", "", buf, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v17 = mach_absolute_time();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__PGHighlightTailor_enrichAllHighlightsWithOptions_progressBlock___block_invoke;
      v30[3] = &unk_27888A188;
      v31 = v7;
      v32 = &v36;
      v33 = &v40;
      v34 = 0x3F847AE147AE147BLL;
      v10 = [(PGHighlightTailor *)self enrichHighlights:v11 options:options progressBlock:v30];
      v18 = *(v41 + 24);
      if (v18 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v45 = 929;
          *&v45[4] = 2080;
          *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        v28 = v17;
        v27 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v21 = v16;
        v22 = v21;
        if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *buf = 134217984;
          *v45 = v12;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_END, v14, "EnrichHighlights", "Highlight count (%ld)", buf, 0xCu);
        }

        v23 = v22;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Highlight count (%ld)", v12];
          *buf = 136315650;
          *v45 = "EnrichHighlights";
          *&v45[8] = 2112;
          *&v45[10] = v24;
          v46 = 2048;
          v47 = ((((v27 - v28) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
        }
      }

      objc_autoreleasePoolPop(context);
      if (v18)
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

void __66__PGHighlightTailor_enrichAllHighlightsWithOptions_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)enrichHighlights:(id)highlights options:(unint64_t)options progressBlock:(id)block
{
  v56 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  blockCopy = block;
  v9 = [highlightsCopy count];
  if (v9)
  {
    v10 = v9;
    v11 = self->_loggingConnection;
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    v15 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "EnrichHighlights", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v33 = mach_absolute_time();
    *buf = 0;
    v46 = buf;
    v47 = 0x2020000000;
    v48 = 0;
    photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    spid = v12;
    serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
    v18 = self->_loggingConnection;
    workingContext = self->_workingContext;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke;
    v35[3] = &unk_2788841A0;
    v41 = blockCopy;
    v43 = v10;
    v20 = v18;
    v36 = v20;
    selfCopy = self;
    v21 = photoLibrary;
    v38 = v21;
    optionsCopy = options;
    v22 = serviceManager;
    v39 = v22;
    v40 = highlightsCopy;
    v42 = buf;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v35];
    v23 = mach_absolute_time();
    v24 = info;
    v25 = v14;
    v26 = v25;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *v50 = 134217984;
      v51 = v10;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_END, spid, "EnrichHighlights", "Highlight count (%ld)", v50, 0xCu);
    }

    v27 = v26;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Highlight count (%ld)", v10];
      *v50 = 136315650;
      v51 = "EnrichHighlights";
      v52 = 2112;
      v53 = v28;
      v54 = 2048;
      v55 = ((((v23 - v33) * v24.numer) / v24.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", v50, 0x20u);
    }

    v29 = v46[24];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v29 = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v102 = *MEMORY[0x277D85DE8];
  v56 = a2;
  v3 = _Block_copy(*(a1 + 72));
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v66 = v3;
  if (v3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v89[3] >= 0.01)
    {
      v89[3] = Current;
      LOBYTE(v96) = 0;
      (v66)[2](v66, &v96, 0.0);
      v5 = *(v93 + 24) | v96;
      *(v93 + 24) = v5;
      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 785;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_80;
      }
    }
  }

  v6 = *(a1 + 88);
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "[PGHighlightTailor] Starting enrichment on %lu highlights.", buf, 0xCu);
    v7 = *(a1 + 32);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_225;
  aBlock[3] = &unk_278884178;
  v86 = buf;
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v83 = v8;
  v84 = v9;
  v85 = v10;
  v87 = *(a1 + 96);
  v57 = _Block_copy(aBlock);
  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = [v56 graph];
  v60 = [[PGHighlightTailorContext alloc] initWithPhotoLibrary:*(a1 + 48) graph:v58 serviceManager:*(a1 + 56) loggingConnection:*(a1 + 32)];
  v81 = 0u;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  obj = *(a1 + 64);
  v11 = [obj countByEnumeratingWithState:&v78 objects:v100 count:16];
  if (!v11)
  {
    v13 = 0.0;
    goto LABEL_63;
  }

  v68 = 0;
  v12 = 1.0 / v6;
  v62 = *v79;
  v13 = 0.0;
  while (2)
  {
    v61 = v11;
    for (i = 0; i != v61; ++i)
    {
      if (*v79 != v62)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(a1 + 32);
      if (*(*&buf[8] + 24) == 1)
      {
        if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
        {
          LOWORD(v96) = 0;
          _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "Encountered error performing change request. Stopping enrichment.", &v96, 2u);
        }

        goto LABEL_77;
      }

      v16 = *(*(&v78 + 1) + 8 * i);
      v17 = v15;
      v18 = os_signpost_id_generate(v17);
      v19 = v17;
      v20 = v19;
      spid = v18;
      v67 = v18 - 1;
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        LOWORD(v96) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "EnrichOneHighlight", "", &v96, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v63 = mach_absolute_time();
      v21 = objc_autoreleasePoolPush();
      v22 = [v16 assetCollection];
      v23 = [v22 localIdentifier];

      v24 = [*(a1 + 40) bestEnrichmentProfileForHighlight:v16 options:*(a1 + 96)];
      if (v24)
      {
        v25 = *(a1 + 32);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v96 = 138412546;
          *v97 = v23;
          *&v97[8] = 2112;
          *&v97[10] = v24;
          _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[PGHighlightTailor] Enriching highlight %@ with profile %@", &v96, 0x16u);
        }

        if (![*(a1 + 40) shouldEnrichHighlight:v16 withEnrichmentProfile:v24 options:*(a1 + 96)])
        {
          v30 = *(a1 + 32);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = [v24 identifier];
            v96 = 138412546;
            *v97 = v23;
            *&v97[8] = 2112;
            *&v97[10] = v31;
            _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "[PGHighlightTailor] %@ already up to date with profile %@", &v96, 0x16u);
          }

LABEL_31:
          v28 = 0;
          goto LABEL_35;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 96);
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_233;
        v70[3] = &unk_278886858;
        v71 = v66;
        v72 = &v88;
        v75 = v13;
        v76 = v12;
        v74 = 0x3F847AE147AE147BLL;
        v73 = &v92;
        v28 = [v26 enrichmentValuesForHighlight:v16 usingEnrichmentProfile:v24 graph:v58 options:v27 reportChangedValuesOnly:1 highlightTailorContext:v60 progressBlock:v70];
        if (*(v93 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v96 = 67109378;
            *v97 = 853;
            *&v97[4] = 2080;
            *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v96, 0x12u);
          }

LABEL_42:
          v38 = 0;
          goto LABEL_44;
        }

        v32 = *(a1 + 32);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v24 identifier];
          v96 = 138412802;
          *v97 = v23;
          *&v97[8] = 2112;
          *&v97[10] = v33;
          v98 = 2112;
          v99 = v28;
          _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[PGHighlightTailor] Enriched %@ with profile %@, values: %@", &v96, 0x20u);
        }
      }

      else
      {
        if (![v16 enrichmentState])
        {
          goto LABEL_31;
        }

        v28 = objc_alloc_init(PGHighlightEnrichmentValues);
        [(PGHighlightEnrichmentValues *)v28 setClearCurations:1];
        v29 = *(a1 + 32);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v96 = 138412290;
          *v97 = v23;
          _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[PGHighlightTailor] No profile, reset highlight %@ to not enriched", &v96, 0xCu);
        }
      }

LABEL_35:
      ++v68;
      v34 = *(a1 + 32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(a1 + 88);
        v96 = 134218240;
        *v97 = v68;
        *&v97[8] = 2048;
        *&v97[10] = v35;
        _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[PGHighlightTailor] Enrichment progress: %ld / %ld", &v96, 0x16u);
      }

      v13 = v12 + v13;
      if (v66)
      {
        v36 = CFAbsoluteTimeGetCurrent();
        if (v36 - v89[3] >= 0.01)
        {
          v89[3] = v36;
          v69 = 0;
          (v66)[2](v66, &v69, v13);
          v37 = *(v93 + 24) | v69;
          *(v93 + 24) = v37;
          if (v37)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v96 = 67109378;
              *v97 = 873;
              *&v97[4] = 2080;
              *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v96, 0x12u);
            }

            goto LABEL_42;
          }
        }
      }

      v38 = 1;
LABEL_44:

      objc_autoreleasePoolPop(v21);
      if (!v38)
      {

LABEL_77:
        goto LABEL_79;
      }

      v39 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v42 = v20;
      v43 = v42;
      if (v67 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        LOWORD(v96) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "EnrichOneHighlight", "", &v96, 2u);
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v96 = 136315394;
        *v97 = "EnrichOneHighlight";
        *&v97[8] = 2048;
        *&v97[10] = ((((v39 - v63) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v96, 0x16u);
      }

      if (v28)
      {
        if (![(PGHighlightEnrichmentValues *)v28 hasChanges])
        {
          v44 = *(a1 + 32);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = [v16 uuid];
            v96 = 138412290;
            *v97 = v45;
            _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_INFO, "No change in enrichment for highlight %@", &v96, 0xCu);
          }
        }

        if ([(PGHighlightEnrichmentValues *)v28 hasChanges]|| (v46 = ~*(a1 + 96), *(a1 + 96) == 0xFF))
        {
          v47 = [(PGHighlightEnrichmentValues *)v28 enrichmentState];
          v48 = [v16 uuid];
          [(PGHighlightTailorContext *)v60 savePendingEnrichmentState:v47 forHighlightUUID:v48];

          [v65 addObject:v28];
          if ([v65 count] >= 0x14)
          {
            v49 = v65;
            v65 = objc_alloc_init(MEMORY[0x277CBEB18]);

            v57[2](v57, v49);
          }
        }
      }
    }

    v11 = [obj countByEnumeratingWithState:&v78 objects:v100 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_63:

  if (v66 && (v50 = CFAbsoluteTimeGetCurrent(), v50 - v89[3] >= 0.01) && (v89[3] = v50, LOBYTE(info.numer) = 0, (v66)[2](v66, &info, v13), v51 = *(v93 + 24) | LOBYTE(info.numer), *(v93 + 24) = v51, (v51 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v96 = 67109378;
      *v97 = 900;
      *&v97[4] = 2080;
      *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
      v52 = MEMORY[0x277D86220];
      goto LABEL_73;
    }
  }

  else
  {
    v57[2](v57, v65);
    dispatch_group_wait(*(*(a1 + 40) + 24), 0xFFFFFFFFFFFFFFFFLL);
    if (v66 && (v53 = CFAbsoluteTimeGetCurrent(), v53 - v89[3] >= 0.01) && (v89[3] = v53, LOBYTE(info.numer) = 0, (v66)[2](v66, &info, 1.0), v54 = *(v93 + 24) | LOBYTE(info.numer), *(v93 + 24) = v54, (v54 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v96 = 67109378;
        *v97 = 906;
        *&v97[4] = 2080;
        *&v97[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
        v52 = MEMORY[0x277D86220];
LABEL_73:
        _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v96, 0x12u);
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }
  }

LABEL_79:

  _Block_object_dispose(buf, 8);
LABEL_80:
  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v92, 8);

  v55 = *MEMORY[0x277D85DE8];
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_225(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "Encountered error performing change request. Stopping enrichment.", buf, 2u);
    }
  }

  else if ([v3 count])
  {
    dispatch_group_enter(*(*(a1 + 40) + 24));
    v6 = *(a1 + 32);
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CommitBatchOfHighlightEnrichmentChanges", "", buf, 2u);
    }

    *buf = 0;
    mach_timebase_info(buf);
    v10 = mach_absolute_time();
    v11 = *(a1 + 48);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_226;
    v24[3] = &unk_278889B18;
    v12 = v4;
    v13 = *(a1 + 40);
    v25 = v12;
    v26 = v13;
    v27 = *(a1 + 64);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_2;
    v17[3] = &unk_278884150;
    v21 = v10;
    v22 = v7;
    v18 = v9;
    v23 = *buf;
    v16 = *(a1 + 32);
    v14 = v16.i64[0];
    v19 = vextq_s8(v16, v16, 8uLL);
    v20 = *(a1 + 56);
    v15 = v9;
    [v11 performChanges:v24 completionHandler:v17];
  }
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_233(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + a3 * *(a1 + 72));
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_226(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 highlight];
        v9 = [v8 changeRequest];
        if (v9)
        {
          [*(a1 + 40) writeHighlightEnrichmentValues:v7 toChangeRequest:v9 highlight:v8 options:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __60__PGHighlightTailor_enrichHighlights_options_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = mach_absolute_time();
  v6 = *(a1 + 64);
  v8 = *(a1 + 80);
  v7 = *(a1 + 84);
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 72);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CommitBatchOfHighlightEnrichmentChanges", "", &v15, 2u);
  }

  v12 = *(a1 + 32);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "CommitBatchOfHighlightEnrichmentChanges";
    v17 = 2048;
    v18 = ((((v5 - v6) * v8) / v7) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v15, 0x16u);
  }

  dispatch_group_leave(*(*(a1 + 40) + 24));
  if (v4)
  {
    v13 = *(a1 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Error performing enrichment change request: %@", &v15, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEnrichHighlight:(id)highlight withEnrichmentProfile:(id)profile options:(unint64_t)options
{
  optionsCopy = options;
  highlightCopy = highlight;
  profileCopy = profile;
  if ((optionsCopy & 0x40000000) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && [highlightCopy isUpToDate])
  {
    enrichmentState = [highlightCopy enrichmentState];
    v10 = enrichmentState < [profileCopy targetEnrichmentState];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)allHighlightModelsNeedingEnrichmentForHighlightSubtype:(int64_t)subtype options:(unint64_t)options
{
  optionsCopy = options;
  v15[1] = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v9];

  if ((optionsCopy & 0x40000000) == 0)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(enrichmentVersion != highlightVersion) || (enrichmentState != %ld)", 4];
    [librarySpecificFetchOptions setInternalPredicate:v10];
  }

  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:subtype options:librarySpecificFetchOptions];
  if ([v11 count])
  {
    fetchedObjects = [v11 fetchedObjects];
  }

  else
  {
    fetchedObjects = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return fetchedObjects;
}

- (void)writeHighlightEnrichmentValues:(id)values toChangeRequest:(id)request highlight:(id)highlight options:(unint64_t)options
{
  optionsCopy = options;
  v70 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  requestCopy = request;
  highlightCopy = highlight;
  if ([valuesCopy clearCurations])
  {
    [requestCopy setEnrichmentState:0];
    [requestCopy clearCurations];
    goto LABEL_49;
  }

  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  if (optionsCopy == -1)
  {
    enrichmentState = [valuesCopy enrichmentState];
    if (enrichmentState == 0xFFFF)
    {
      if (![highlightCopy enrichmentState])
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v15 = enrichmentState;
    [requestCopy setEnrichmentState:enrichmentState];
    if (v15)
    {
LABEL_6:
      date = [MEMORY[0x277CBEAA8] date];
      [requestCopy setLastEnrichmentDate:date];

      [requestCopy didEnrichHighlight];
    }
  }

LABEL_7:
  [valuesCopy promotionScore];
  if (v17 != -1.0)
  {
    [requestCopy setPromotionScore:?];
  }

  if ([valuesCopy smartDescriptionPrivateUpdated])
  {
    smartDescriptionPrivate = [valuesCopy smartDescriptionPrivate];
    [requestCopy setSmartDescription:smartDescriptionPrivate];
  }

  if ([valuesCopy verboseSmartDescriptionPrivateUpdated])
  {
    verboseSmartDescriptionPrivate = [valuesCopy verboseSmartDescriptionPrivate];
    [requestCopy setVerboseSmartDescription:verboseSmartDescriptionPrivate];
  }

  if ([valuesCopy smartDescriptionSharedUpdated])
  {
    smartDescriptionShared = [valuesCopy smartDescriptionShared];
    [requestCopy setSmartDescriptionShared:smartDescriptionShared];
  }

  if ([valuesCopy verboseSmartDescriptionSharedUpdated])
  {
    verboseSmartDescriptionShared = [valuesCopy verboseSmartDescriptionShared];
    [requestCopy setVerboseSmartDescriptionShared:verboseSmartDescriptionShared];
  }

  if ([valuesCopy smartDescriptionMixedUpdated])
  {
    smartDescriptionMixed = [valuesCopy smartDescriptionMixed];
    [requestCopy setSmartDescriptionMixed:smartDescriptionMixed];
  }

  v60 = highlightCopy;
  if ([valuesCopy verboseSmartDescriptionMixedUpdated])
  {
    verboseSmartDescriptionMixed = [valuesCopy verboseSmartDescriptionMixed];
    [requestCopy setVerboseSmartDescriptionMixed:verboseSmartDescriptionMixed];
  }

  momentTitleByMomentUUID = [valuesCopy momentTitleByMomentUUID];
  v25 = momentTitleByMomentUUID;
  if (momentTitleByMomentUUID)
  {
    allKeys = [momentTitleByMomentUUID allKeys];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __86__PGHighlightTailor_writeHighlightEnrichmentValues_toChangeRequest_highlight_options___block_invoke;
    v67[3] = &unk_278884128;
    v68 = v25;
    [requestCopy enumerateMomentChangeRequestsForUUIDs:allKeys inPhotoLibrary:photoLibrary usingBlock:v67];
  }

  momentProcessedLocationByMomentUUID = [valuesCopy momentProcessedLocationByMomentUUID];
  v28 = momentProcessedLocationByMomentUUID;
  if (momentProcessedLocationByMomentUUID)
  {
    allKeys2 = [momentProcessedLocationByMomentUUID allKeys];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __86__PGHighlightTailor_writeHighlightEnrichmentValues_toChangeRequest_highlight_options___block_invoke_2;
    v65[3] = &unk_278884128;
    v66 = v28;
    [requestCopy enumerateMomentChangeRequestsForUUIDs:allKeys2 inPhotoLibrary:photoLibrary usingBlock:v65];
  }

  keyAssetPrivate = [valuesCopy keyAssetPrivate];
  if (keyAssetPrivate)
  {
    [requestCopy setKeyAssetPrivate:keyAssetPrivate];
  }

  keyAssetShared = [valuesCopy keyAssetShared];
  if (keyAssetShared)
  {
    [requestCopy setKeyAssetShared:keyAssetShared];
  }

  mixedSharingCompositionKeyAssetRelationshipValue = [valuesCopy mixedSharingCompositionKeyAssetRelationshipValue];
  v33 = mixedSharingCompositionKeyAssetRelationshipValue;
  if (mixedSharingCompositionKeyAssetRelationshipValue)
  {
    [requestCopy setMixedSharingCompositionKeyAssetRelationship:{objc_msgSend(mixedSharingCompositionKeyAssetRelationshipValue, "unsignedShortValue")}];
  }

  extendedCuration = [valuesCopy extendedCuration];
  if (extendedCuration)
  {
    [requestCopy setAssets:extendedCuration forCurationType:2];
  }

  v55 = keyAssetShared;
  summaryCuration = [valuesCopy summaryCuration];
  v36 = summaryCuration;
  if (summaryCuration)
  {
    if ([summaryCuration count])
    {
      [requestCopy setAssets:v36 forCurationType:1];
    }

    else
    {
      [requestCopy clearCurationWithType:1];
    }
  }

  v52 = v36;
  v53 = extendedCuration;
  v54 = v33;
  v56 = keyAssetPrivate;
  v57 = v28;
  v58 = v25;
  v59 = photoLibrary;
  mood = [valuesCopy mood];
  if (mood != -1)
  {
    [requestCopy setMood:mood];
  }

  visibilityScoreByAsset = [valuesCopy visibilityScoreByAsset];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  visibilityScoreByAsset2 = [valuesCopy visibilityScoreByAsset];
  keyEnumerator = [visibilityScoreByAsset2 keyEnumerator];

  v41 = [keyEnumerator countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v62;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v62 != v43)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v45 = *(*(&v61 + 1) + 8 * i);
        v46 = [visibilityScoreByAsset objectForKey:v45];
        [v46 doubleValue];
        v48 = v47;
        [v45 highlightVisibilityScore];
        if (v48 != v49)
        {
          v50 = [MEMORY[0x277CD97B0] changeRequestForAsset:v45];
          [v46 doubleValue];
          [v50 setHighlightVisibilityScore:?];
        }
      }

      v42 = [keyEnumerator countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v42);
  }

  highlightCopy = v60;
LABEL_49:

  v51 = *MEMORY[0x277D85DE8];
}

void __86__PGHighlightTailor_writeHighlightEnrichmentValues_toChangeRequest_highlight_options___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 title];
    v8 = [v7 stringValue];

    [v12 setTitle:v8];
    v9 = [v6 subtitle];
    v10 = [v9 stringValue];

    [v12 setSubtitle:v10];
    v11 = [v6 locationNames];
    [v12 setLocalizedLocationNames:v11];
  }
}

void __86__PGHighlightTailor_writeHighlightEnrichmentValues_toChangeRequest_highlight_options___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7 = a2;
  v5 = [v4 objectForKeyedSubscript:a3];
  v6 = [v5 unsignedShortValue];

  [v7 setProcessedLocation:v6];
}

- (id)enrichmentValuesForHighlight:(id)highlight usingEnrichmentProfile:(id)profile graph:(id)graph options:(unint64_t)options reportChangedValuesOnly:(BOOL)only highlightTailorContext:(id)context progressBlock:(id)block
{
  onlyCopy = only;
  v380 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  profileCopy = profile;
  graphCopy = graph;
  contextCopy = context;
  blockCopy = block;
  v368 = 0;
  v369 = &v368;
  v370 = 0x2020000000;
  v371 = 0;
  v364 = 0;
  v365 = &v364;
  v366 = 0x2020000000;
  v367 = 0;
  v307 = _Block_copy(blockCopy);
  if (!v307 || (v13 = CFAbsoluteTimeGetCurrent(), v13 - v365[3] < 0.01) || (v365[3] = v13, info[0] = 0, v307[2](v307, info, 0.0), v14 = *(v369 + 24) | info[0], *(v369 + 24) = v14, (v14 & 1) == 0))
  {
    v305 = [profileCopy highlightInfoWithHighlight:highlightCopy graph:graphCopy highlightTailorContext:contextCopy];
    if (!v305)
    {
      v15 = 0;
LABEL_247:

      goto LABEL_248;
    }

    v292 = [[PGHighlightEnrichmentValues alloc] initWithHighlight:highlightCopy];
    assetCollection = [highlightCopy assetCollection];
    v289 = [(PGHighlightTailor *)self tailorOptionsAllowedForHighlight:assetCollection originalOptions:options];
    isUpToDate = [highlightCopy isUpToDate];
    v288 = [profileCopy enrichmentStateWithHighlightInfo:v305 highlightTailorContext:contextCopy];
    enrichmentState = [highlightCopy enrichmentState];
    v291 = assetCollection;
    if ((options & 0x40000000) == 0 && ((isUpToDate ^ 1) & 1) == 0 && v288 == enrichmentState)
    {
      goto LABEL_11;
    }

    sharingComposition = [assetCollection sharingComposition];
    v285 = onlyCopy;
    if (sharingComposition)
    {
      if (sharingComposition == 1)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = 0;
        v27 = 0;
        v28 = v291;
        goto LABEL_26;
      }

      if (sharingComposition != 2)
      {
        v25 = objc_autoreleasePoolPush();
        v29 = 0;
        v282 = 0;
        v281 = 0;
        v26 = 0;
        goto LABEL_30;
      }

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = objc_autoreleasePoolPush();
    v28 = assetCollection;
    v26 = [(PGHighlightTailor *)self keyAssetFromHighlight:assetCollection sharingFilter:0];
    v27 = 1;
    if (v24)
    {
LABEL_26:
      v29 = [(PGHighlightTailor *)self keyAssetFromHighlight:v28 sharingFilter:1];
      if (v27)
      {
        v30 = +[PGHighlightEnrichmentUtilities keyAssetForMixedSharingCompositionKeyAssetRelationship:keyAssetPrivate:keyAssetShared:](PGHighlightEnrichmentUtilities, "keyAssetForMixedSharingCompositionKeyAssetRelationship:keyAssetPrivate:keyAssetShared:", [v28 mixedSharingCompositionKeyAssetRelationship], v26, v29);
        v282 = 1;
        v281 = 0x100000001;
      }

      else
      {
        v281 = 0x100000000;
        v30 = 0;
        v282 = 0;
      }

LABEL_32:
      if ((v289 & 8) == 0)
      {
        v31 = v26;
        v287 = v29;
        v284 = v30;
LABEL_69:
        v286 = v31;
        uuid = [v31 uuid];
        [v305 setKeyAssetPrivateUUID:uuid];

        uuid2 = [v287 uuid];
        [v305 setKeyAssetSharedUUID:uuid2];
        v43 = 1;
LABEL_70:

        objc_autoreleasePoolPop(v25);
        if (!v43)
        {
LABEL_76:

          goto LABEL_245;
        }

        if (v307)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v365[3] >= 0.01)
          {
            v365[3] = Current;
            info[0] = 0;
            v307[2](v307, info, 0.1);
            v54 = *(v369 + 24) | info[0];
            *(v369 + 24) = v54;
            if (v54)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = 277;
                *&buf[8] = 2080;
                *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_76;
            }
          }
        }

        assetSortDescriptors = [(PGHighlightTailor *)self assetSortDescriptors];
        v55 = objc_autoreleasePoolPush();
        v56 = [(PGHighlightTailor *)self sortedCurationOfType:2 fromHighlight:v291];
        v57 = v56;
        if ((v289 & 0x10) == 0)
        {
          v58 = v56;
LABEL_140:
          [v305 setNumberOfExtendedAssets:{objc_msgSend(v58, "count")}];
          v62 = [v58 valueForKey:@"uuid"];
          [v305 setUuidsOfEligibleAssets:v62];
          v278 = v58;
          v70 = 1;
LABEL_141:

          objc_autoreleasePoolPop(v55);
          if (!v70)
          {
LABEL_244:

            goto LABEL_245;
          }

          if (v307)
          {
            v97 = CFAbsoluteTimeGetCurrent();
            if (v97 - v365[3] >= 0.01)
            {
              v365[3] = v97;
              info[0] = 0;
              v307[2](v307, info, 0.2);
              v98 = *(v369 + 24) | info[0];
              *(v369 + 24) = v98;
              if (v98)
              {
                v99 = MEMORY[0x277D86220];
                v100 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *&buf[4] = 351;
                  *&buf[8] = 2080;
                  *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

LABEL_147:

                goto LABEL_244;
              }
            }
          }

          if (v289)
          {
            [profileCopy promotionScoreWithHighlightInfo:v305];
            v102 = v101;
            [v291 promotionScore];
            if (!v285 || v102 != v103)
            {
              [(PGHighlightEnrichmentValues *)v292 setPromotionScore:v102];
            }

            [v305 setPromotionScore:v102];
          }

          if (v307)
          {
            v104 = CFAbsoluteTimeGetCurrent();
            if (v104 - v365[3] >= 0.01)
            {
              v365[3] = v104;
              info[0] = 0;
              v307[2](v307, info, 0.3);
              v105 = *(v369 + 24) | info[0];
              *(v369 + 24) = v105;
              if (v105)
              {
                v106 = MEMORY[0x277D86220];
                v107 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *&buf[4] = 362;
                  *&buf[8] = 2080;
                  *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                goto LABEL_147;
              }
            }
          }

          if ((v289 & 0x20) == 0)
          {
LABEL_202:
            if (v307)
            {
              v134 = CFAbsoluteTimeGetCurrent();
              if (v134 - v365[3] >= 0.01)
              {
                v365[3] = v134;
                info[0] = 0;
                v307[2](v307, info, 0.4);
                v135 = *(v369 + 24) | info[0];
                *(v369 + 24) = v135;
                if (v135)
                {
                  v136 = MEMORY[0x277D86220];
                  v137 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *&buf[4] = 405;
                    *&buf[8] = 2080;
                    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  goto LABEL_244;
                }
              }
            }

            if ((v289 & 0x10) == 0)
            {
LABEL_238:
              if (v307)
              {
                v159 = CFAbsoluteTimeGetCurrent();
                if (v159 - v365[3] >= 0.01)
                {
                  v365[3] = v159;
                  info[0] = 0;
                  v307[2](v307, info, 0.6);
                  v160 = *(v369 + 24) | info[0];
                  *(v369 + 24) = v160;
                  if (v160)
                  {
                    v161 = MEMORY[0x277D86220];
                    v162 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v161, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *&buf[4] = 441;
                      *&buf[8] = 2080;
                      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    goto LABEL_244;
                  }
                }
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v376 = 1;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_211;
              aBlock[3] = &unk_278884100;
              v327 = v285;
              v326 = buf;
              aBlock[4] = self;
              spidb = highlightCopy;
              v325 = spidb;
              v302 = _Block_copy(aBlock);
              if ((v289 & 2) != 0)
              {
                v165 = self->_loggingConnection;
                v166 = os_signpost_id_generate(v165);
                v167 = v165;
                v168 = v167;
                if (v166 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v167))
                {
                  *info = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v168, OS_SIGNPOST_INTERVAL_BEGIN, v166, "PGHighlightTailorGenerateTitle", "", info, 2u);
                }

                v323 = 0;
                mach_timebase_info(&v323);
                v169 = mach_absolute_time();
                if (v282)
                {
                  v170 = objc_autoreleasePoolPush();
                  v322 = 0;
                  v171 = [profileCopy titleWithHighlightInfo:v305 sharingFilter:0 curatedAssets:v278 keyAsset:v286 createVerboseTitle:0 error:&v322];
                  v172 = v322;
                  title = [v171 title];
                  stringValue = [title stringValue];

                  smartDescriptionPrivate = [v291 smartDescriptionPrivate];
                  if (v302[2](v302, stringValue, smartDescriptionPrivate, v172))
                  {
                    [(PGHighlightEnrichmentValues *)v292 setSmartDescriptionPrivate:stringValue];
                  }

                  objc_autoreleasePoolPop(v170);
                }

                if (HIDWORD(v281))
                {
                  v176 = objc_autoreleasePoolPush();
                  v321 = 0;
                  v177 = [profileCopy titleWithHighlightInfo:v305 sharingFilter:1 curatedAssets:v278 keyAsset:v287 createVerboseTitle:0 error:&v321];
                  v178 = v321;
                  title2 = [v177 title];
                  stringValue2 = [title2 stringValue];

                  smartDescriptionShared = [v291 smartDescriptionShared];
                  if (v302[2](v302, stringValue2, smartDescriptionShared, v178))
                  {
                    [(PGHighlightEnrichmentValues *)v292 setSmartDescriptionShared:stringValue2];
                  }

                  objc_autoreleasePoolPop(v176);
                }

                if (v281)
                {
                  v182 = objc_autoreleasePoolPush();
                  v320 = 0;
                  v183 = [profileCopy titleWithHighlightInfo:v305 sharingFilter:2 curatedAssets:v278 keyAsset:v284 createVerboseTitle:0 error:&v320];
                  v184 = v320;
                  title3 = [v183 title];
                  stringValue3 = [title3 stringValue];

                  smartDescriptionMixed = [v291 smartDescriptionMixed];
                  if (v302[2](v302, stringValue3, smartDescriptionMixed, v184))
                  {
                    [(PGHighlightEnrichmentValues *)v292 setSmartDescriptionMixed:stringValue3];
                  }

                  objc_autoreleasePoolPop(v182);
                }

                v188 = mach_absolute_time();
                numer = v323.numer;
                denom = v323.denom;
                v191 = v168;
                v192 = v191;
                if (v166 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v191))
                {
                  *info = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v192, OS_SIGNPOST_INTERVAL_END, v166, "PGHighlightTailorGenerateTitle", "", info, 2u);
                }

                v193 = v192;
                if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
                {
                  *info = 136315394;
                  *&info[4] = "PGHighlightTailorGenerateTitle";
                  *&info[12] = 2048;
                  *&info[14] = ((((v188 - v169) * numer) / denom) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v193, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", info, 0x16u);
                }
              }

              if (v307)
              {
                v194 = CFAbsoluteTimeGetCurrent();
                if (v194 - v365[3] >= 0.01)
                {
                  v365[3] = v194;
                  LOBYTE(v323.numer) = 0;
                  (v307)[2](v307, &v323, 0.7);
                  v195 = *(v369 + 24) | LOBYTE(v323.numer);
                  *(v369 + 24) = v195;
                  if (v195)
                  {
                    v196 = MEMORY[0x277D86220];
                    v197 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
                    {
                      *info = 67109378;
                      *&info[4] = 498;
                      *&info[8] = 2080;
                      *&info[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", info, 0x12u);
                    }

                    goto LABEL_353;
                  }
                }
              }

              if ((v289 & 4) != 0)
              {
                v198 = self->_loggingConnection;
                v199 = os_signpost_id_generate(v198);
                v200 = v198;
                v201 = v200;
                if (v199 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v200))
                {
                  *info = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v201, OS_SIGNPOST_INTERVAL_BEGIN, v199, "PGHighlightTailorGenerateVerboseTitle", "", info, 2u);
                }

                v323 = 0;
                mach_timebase_info(&v323);
                v202 = mach_absolute_time();
                if (v282)
                {
                  v203 = objc_autoreleasePoolPush();
                  v319 = 0;
                  v204 = [profileCopy titleWithHighlightInfo:v305 sharingFilter:0 curatedAssets:0 keyAsset:0 createVerboseTitle:1 error:&v319];
                  v205 = v319;
                  title4 = [v204 title];
                  stringValue4 = [title4 stringValue];

                  verboseSmartDescriptionPrivate = [v291 verboseSmartDescriptionPrivate];
                  if (v302[2](v302, stringValue4, verboseSmartDescriptionPrivate, v205))
                  {
                    [(PGHighlightEnrichmentValues *)v292 setVerboseSmartDescriptionPrivate:stringValue4];
                  }

                  objc_autoreleasePoolPop(v203);
                }

                if (HIDWORD(v281))
                {
                  v209 = objc_autoreleasePoolPush();
                  v318 = 0;
                  v210 = [profileCopy titleWithHighlightInfo:v305 sharingFilter:1 curatedAssets:0 keyAsset:0 createVerboseTitle:1 error:&v318];
                  v211 = v318;
                  title5 = [v210 title];
                  stringValue5 = [title5 stringValue];

                  verboseSmartDescriptionShared = [v291 verboseSmartDescriptionShared];
                  if (v302[2](v302, stringValue5, verboseSmartDescriptionShared, v211))
                  {
                    [(PGHighlightEnrichmentValues *)v292 setVerboseSmartDescriptionShared:stringValue5];
                  }

                  objc_autoreleasePoolPop(v209);
                }

                if (v281)
                {
                  v215 = objc_autoreleasePoolPush();
                  v317 = 0;
                  v216 = [profileCopy titleWithHighlightInfo:v305 sharingFilter:2 curatedAssets:0 keyAsset:0 createVerboseTitle:1 error:&v317];
                  v217 = v317;
                  title6 = [v216 title];
                  stringValue6 = [title6 stringValue];

                  verboseSmartDescriptionMixed = [v291 verboseSmartDescriptionMixed];
                  if (v302[2](v302, stringValue6, verboseSmartDescriptionMixed, v217))
                  {
                    [(PGHighlightEnrichmentValues *)v292 setVerboseSmartDescriptionMixed:stringValue6];
                  }

                  objc_autoreleasePoolPop(v215);
                }

                v221 = mach_absolute_time();
                v222 = v323.numer;
                v223 = v323.denom;
                v224 = v201;
                v225 = v224;
                if (v199 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v224))
                {
                  *info = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v225, OS_SIGNPOST_INTERVAL_END, v199, "PGHighlightTailorGenerateVerboseTitle", "", info, 2u);
                }

                v226 = v225;
                if (os_log_type_enabled(v226, OS_LOG_TYPE_INFO))
                {
                  *info = 136315394;
                  *&info[4] = "PGHighlightTailorGenerateVerboseTitle";
                  *&info[12] = 2048;
                  *&info[14] = ((((v221 - v202) * v222) / v223) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v226, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", info, 0x16u);
                }
              }

              if (v307)
              {
                v227 = CFAbsoluteTimeGetCurrent();
                if (v227 - v365[3] >= 0.01)
                {
                  v365[3] = v227;
                  LOBYTE(v323.numer) = 0;
                  (v307)[2](v307, &v323, 0.8);
                  v228 = *(v369 + 24) | LOBYTE(v323.numer);
                  *(v369 + 24) = v228;
                  if (v228)
                  {
                    v229 = MEMORY[0x277D86220];
                    v230 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
                    {
                      *info = 67109378;
                      *&info[4] = 533;
                      *&info[8] = 2080;
                      *&info[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", info, 0x12u);
                    }

                    goto LABEL_353;
                  }
                }
              }

              if ((v289 & 0x40) != 0)
              {
                v283 = objc_autoreleasePoolPush();
                feeder = [v305 feeder];
                allItems = [feeder allItems];
                v233 = [(PGHighlightTailor *)self computeChangedVisibilityScoresForItems:allItems];
                v234 = v233;
                if (v285)
                {
                  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                  v315 = 0u;
                  v316 = 0u;
                  v313 = 0u;
                  v314 = 0u;
                  keyEnumerator = [v234 keyEnumerator];
                  v237 = [keyEnumerator countByEnumeratingWithState:&v313 objects:v373 count:16];
                  if (v237)
                  {
                    v238 = *v314;
                    do
                    {
                      for (i = 0; i != v237; ++i)
                      {
                        if (*v314 != v238)
                        {
                          objc_enumerationMutation(keyEnumerator);
                        }

                        v240 = *(*(&v313 + 1) + 8 * i);
                        v241 = [v234 objectForKey:v240];
                        [v240 highlightVisibilityScore];
                        v243 = v242;
                        [v241 doubleValue];
                        if (v244 != v243)
                        {
                          [strongToStrongObjectsMapTable setObject:v241 forKey:v240];
                        }
                      }

                      v237 = [keyEnumerator countByEnumeratingWithState:&v313 objects:v373 count:16];
                    }

                    while (v237);
                  }

                  v245 = strongToStrongObjectsMapTable;
                }

                else
                {
                  v245 = v233;
                }

                if ([v245 count])
                {
                  [(PGHighlightEnrichmentValues *)v292 setVisibilityScoreByAsset:v245];
                }

                objc_autoreleasePoolPop(v283);
              }

              if (v307)
              {
                v246 = CFAbsoluteTimeGetCurrent();
                if (v246 - v365[3] >= 0.01)
                {
                  v365[3] = v246;
                  LOBYTE(v323.numer) = 0;
                  (v307)[2](v307, &v323, 0.9);
                  v247 = *(v369 + 24) | LOBYTE(v323.numer);
                  *(v369 + 24) = v247;
                  if (v247)
                  {
                    v248 = MEMORY[0x277D86220];
                    v249 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v248, OS_LOG_TYPE_INFO))
                    {
                      *info = 67109378;
                      *&info[4] = 558;
                      *&info[8] = 2080;
                      *&info[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", info, 0x12u);
                    }

                    goto LABEL_353;
                  }
                }
              }

              if ((v289 & 0x80) == 0)
              {
LABEL_347:
                if (!v307 || (v263 = CFAbsoluteTimeGetCurrent(), v263 - v365[3] < 0.01) || (v365[3] = v263, LOBYTE(v323.numer) = 0, (v307)[2](v307, &v323, 0.95), v264 = *(v369 + 24) | LOBYTE(v323.numer), *(v369 + 24) = v264, (v264 & 1) == 0))
                {
                  if (options == 0xFF)
                  {
                    v267 = [profileCopy canUseLocationInformationWithHighlightInfo:v305 graph:graphCopy];
                    v268 = *(*&buf[8] + 24);
                    if (v288 >= 2)
                    {
                      v269 = 2;
                    }

                    else
                    {
                      v269 = v288;
                    }

                    if ((v268 & v267) != 0)
                    {
                      v270 = v288;
                    }

                    else
                    {
                      v270 = v269;
                    }

                    if ((v267 & 1) == 0)
                    {
                      v271 = self->_loggingConnection;
                      if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
                      {
                        *info = 67109376;
                        *&info[4] = v288;
                        *&info[8] = 1024;
                        *&info[10] = v270;
                        _os_log_impl(&dword_22F0FC000, v271, OS_LOG_TYPE_DEFAULT, "[PGHighlightTailor] Couldn't satisfy enrichment state %d: not enough location data available. Falling back to enrichment state %d", info, 0xEu);
                      }

                      v268 = *(*&buf[8] + 24);
                    }

                    if (!v268)
                    {
                      v272 = self->_loggingConnection;
                      if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
                      {
                        *info = 67109376;
                        *&info[4] = v288;
                        *&info[8] = 1024;
                        *&info[10] = v270;
                        _os_log_impl(&dword_22F0FC000, v272, OS_LOG_TYPE_DEFAULT, "[PGHighlightTailor] Couldn't satisfy enrichment state %d: error encountered while generating titles. Falling back to enrichment state %d", info, 0xEu);
                      }
                    }

                    if ([spidb enrichmentState] != v270)
                    {
                      [(PGHighlightEnrichmentValues *)v292 setEnrichmentState:v270];
                    }
                  }

                  _Block_object_dispose(buf, 8);
                  assetCollection = v291;
LABEL_11:
                  if (!v307 || (v19 = CFAbsoluteTimeGetCurrent(), v19 - v365[3] < 0.01) || (v365[3] = v19, info[0] = 0, v307[2](v307, info, 1.0), v20 = *(v369 + 24) | info[0], *(v369 + 24) = v20, (v20 & 1) == 0))
                  {
                    v15 = v292;
LABEL_246:

                    goto LABEL_247;
                  }

                  v21 = MEMORY[0x277D86220];
                  v22 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *&buf[4] = 604;
                    *&buf[8] = 2080;
                    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

LABEL_245:
                  v15 = 0;
                  assetCollection = v291;
                  goto LABEL_246;
                }

                v265 = MEMORY[0x277D86220];
                v266 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
                {
                  *info = 67109378;
                  *&info[4] = 579;
                  *&info[8] = 2080;
                  *&info[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", info, 0x12u);
                }

LABEL_353:
                _Block_object_dispose(buf, 8);

                goto LABEL_245;
              }

              v290 = objc_autoreleasePoolPush();
              v250 = [profileCopy momentProcessedLocationByMomentUUIDWithHighlightInfo:v305 graph:graphCopy];
              v251 = v250;
              if (v285)
              {
                if ([v250 count])
                {
                  v252 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v305 momentFetchResult];
                  v311 = 0u;
                  v312 = 0u;
                  v309 = 0u;
                  v253 = v310 = 0u;
                  v254 = [v253 countByEnumeratingWithState:&v309 objects:v372 count:16];
                  if (v254)
                  {
                    v255 = *v310;
                    do
                    {
                      for (j = 0; j != v254; ++j)
                      {
                        if (*v310 != v255)
                        {
                          objc_enumerationMutation(v253);
                        }

                        v257 = *(*(&v309 + 1) + 8 * j);
                        uuid3 = [v257 uuid];
                        v259 = [v251 objectForKeyedSubscript:uuid3];
                        unsignedShortValue = [v259 unsignedShortValue];

                        if ([v257 processedLocation] != unsignedShortValue)
                        {
                          v261 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:unsignedShortValue];
                          [v252 setObject:v261 forKeyedSubscript:uuid3];
                        }
                      }

                      v254 = [v253 countByEnumeratingWithState:&v309 objects:v372 count:16];
                    }

                    while (v254);
                  }

                  v262 = v252;
                }

                else
                {
                  v262 = v251;
                }

                if (![v262 count])
                {
                  goto LABEL_346;
                }
              }

              else
              {
                v262 = v250;
              }

              [(PGHighlightEnrichmentValues *)v292 setMomentProcessedLocationByMomentUUID:v262];
LABEL_346:

              objc_autoreleasePoolPop(v290);
              goto LABEL_347;
            }

            v301 = objc_autoreleasePoolPush();
            v138 = self->_loggingConnection;
            v139 = os_signpost_id_generate(v138);
            v140 = v138;
            v141 = v140;
            if (v139 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v140))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v141, OS_SIGNPOST_INTERVAL_BEGIN, v139, "PGHighlightTailorGenerateSummaryCuration", "", buf, 2u);
            }

            *info = 0;
            mach_timebase_info(info);
            v142 = mach_absolute_time();
            v143 = [(PGHighlightTailor *)self sortedCurationOfType:1 fromHighlight:v291];
            if (v282)
            {
              v333[0] = MEMORY[0x277D85DD0];
              v333[1] = 3221225472;
              v333[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_209;
              v333[3] = &unk_27888A188;
              v334 = v307;
              v335 = &v364;
              v337 = 0x3F847AE147AE147BLL;
              v336 = &v368;
              v144 = [profileCopy summaryCurationWithHighlightInfo:v305 sharingFilter:0 progressBlock:v333];
            }

            else
            {
              v144 = 0;
            }

            if ((v281 & 0x100000000) != 0)
            {
              v328[0] = MEMORY[0x277D85DD0];
              v328[1] = 3221225472;
              v328[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_2;
              v328[3] = &unk_27888A188;
              v329 = v307;
              v330 = &v364;
              v332 = 0x3F847AE147AE147BLL;
              v331 = &v368;
              v145 = [profileCopy summaryCurationWithHighlightInfo:v305 sharingFilter:1 progressBlock:v328];

              v146 = v144 != 0;
              v147 = v281;
              if (!v144)
              {
                v147 = 0;
              }

              if (v147 == 1 && v145)
              {
                v148 = [v144 arrayByAddingObjectsFromArray:v145];
LABEL_226:
                v150 = v148;
                v151 = [v148 sortedArrayUsingDescriptors:assetSortDescriptors];

                if (!v285 || ([v151 isEqualToArray:v143] & 1) == 0)
                {
                  if (v151)
                  {
                    v152 = v151;
                  }

                  else
                  {
                    v152 = MEMORY[0x277CBEBF8];
                  }

                  [(PGHighlightEnrichmentValues *)v292 setSummaryCuration:v152];
                }

                v153 = mach_absolute_time();
                v154 = *info;
                v155 = *&info[4];
                v156 = v141;
                v157 = v156;
                if (v139 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v156))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v157, OS_SIGNPOST_INTERVAL_END, v139, "PGHighlightTailorGenerateSummaryCuration", "", buf, 2u);
                }

                v158 = v157;
                if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *&buf[4] = "PGHighlightTailorGenerateSummaryCuration";
                  *&buf[12] = 2048;
                  *&buf[14] = ((((v153 - v142) * v154) / v155) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v158, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v301);
                goto LABEL_238;
              }
            }

            else
            {
              v145 = 0;
              v146 = v144 != 0;
            }

            if (v146)
            {
              v149 = v144;
            }

            else
            {
              v149 = v145;
            }

            v148 = v149;
            goto LABEL_226;
          }

          context = objc_autoreleasePoolPush();
          v108 = self->_loggingConnection;
          v109 = os_signpost_id_generate(v108);
          v110 = v108;
          v111 = v110;
          v277 = v109 - 1;
          if (v109 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v110))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v111, OS_SIGNPOST_INTERVAL_BEGIN, v109, "PGHighlightTailorGenerateMomentTitles", "", buf, 2u);
          }

          v273 = v109;
          v276 = v111;

          *info = 0;
          mach_timebase_info(info);
          v274 = mach_absolute_time();
          v112 = [profileCopy momentTitleByMomentUUIDWithHighlightInfo:v305];
          v113 = v112;
          if (v285)
          {
            if ([v112 count])
            {
              v300 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v305 momentFetchResult];
              v340 = 0u;
              v341 = 0u;
              v338 = 0u;
              spida = v339 = 0u;
              v114 = [spida countByEnumeratingWithState:&v338 objects:v377 count:16];
              if (!v114)
              {
                goto LABEL_188;
              }

              v115 = *v339;
              while (1)
              {
                for (k = 0; k != v114; ++k)
                {
                  if (*v339 != v115)
                  {
                    objc_enumerationMutation(spida);
                  }

                  v117 = *(*(&v338 + 1) + 8 * k);
                  uuid4 = [v117 uuid];
                  v119 = [v113 objectForKeyedSubscript:uuid4];

                  title7 = [v119 title];
                  stringValue7 = [title7 stringValue];

                  title8 = [v117 title];
                  if ([stringValue7 length] || !objc_msgSend(title8, "length"))
                  {
                    v123 = ![stringValue7 length] || stringValue7 == title8;
                    if (v123 || ([stringValue7 isEqualToString:title8] & 1) != 0)
                    {
                      subtitle = [v119 subtitle];
                      stringValue8 = [subtitle stringValue];

                      localizedSubtitle = [v117 localizedSubtitle];
                      if ([stringValue8 length] || !objc_msgSend(localizedSubtitle, "length")) && (!objc_msgSend(stringValue8, "length") || stringValue8 == localizedSubtitle || (objc_msgSend(stringValue8, "isEqualToString:", localizedSubtitle)))
                      {

                        goto LABEL_186;
                      }
                    }
                  }

                  stringValue8 = [v117 uuid];
                  [v300 setObject:v119 forKeyedSubscript:stringValue8];
LABEL_186:
                }

                v114 = [spida countByEnumeratingWithState:&v338 objects:v377 count:16];
                if (!v114)
                {
LABEL_188:

                  v127 = v300;
                  goto LABEL_194;
                }
              }
            }

            v127 = v113;
LABEL_194:
            if (![v127 count])
            {
              goto LABEL_196;
            }
          }

          else
          {
            v127 = v112;
          }

          [(PGHighlightEnrichmentValues *)v292 setMomentTitleByMomentUUID:v127, v273];
LABEL_196:
          v128 = mach_absolute_time();
          v129 = *info;
          v130 = *&info[4];
          v131 = v276;
          v132 = v131;
          if (v277 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v131))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v132, OS_SIGNPOST_INTERVAL_END, v273, "PGHighlightTailorGenerateMomentTitles", "", buf, 2u);
          }

          v133 = v132;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "PGHighlightTailorGenerateMomentTitles";
            *&buf[12] = 2048;
            *&buf[14] = ((((v128 - v274) * v129) / v130) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v133, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          goto LABEL_202;
        }

        v59 = self->_loggingConnection;
        v60 = os_signpost_id_generate(v59);
        v61 = v59;
        v62 = v61;
        v63 = v60 - 1;
        if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v62, OS_SIGNPOST_INTERVAL_BEGIN, v60, "PGHighlightTailorGenerateExtendedCuration", "", buf, 2u);
        }

        spid = v60;

        *info = 0;
        mach_timebase_info(info);
        v299 = mach_absolute_time();
        if (v282)
        {
          v355[0] = MEMORY[0x277D85DD0];
          v355[1] = 3221225472;
          v355[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_204;
          v355[3] = &unk_27888A188;
          v356 = v307;
          v357 = &v364;
          v359 = 0x3F847AE147AE147BLL;
          v358 = &v368;
          v64 = [profileCopy extendedCurationWithHighlightInfo:v305 sharingFilter:0 progressBlock:v355];
          if (*(v369 + 24) == 1)
          {
            v65 = MEMORY[0x277D86220];
            v66 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 292;
              *&buf[8] = 2080;
              *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_94:
            v278 = 0;
            v70 = 0;
            goto LABEL_141;
          }
        }

        else
        {
          v64 = 0;
        }

        if (HIDWORD(v281))
        {
          v350[0] = MEMORY[0x277D85DD0];
          v350[1] = 3221225472;
          v350[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_205;
          v350[3] = &unk_27888A188;
          v351 = v307;
          v352 = &v364;
          v354 = 0x3F847AE147AE147BLL;
          v353 = &v368;
          v67 = [profileCopy extendedCurationWithHighlightInfo:v305 sharingFilter:1 progressBlock:v350];
          if (*(v369 + 24) == 1)
          {
            v68 = MEMORY[0x277D86220];
            v69 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 300;
              *&buf[8] = 2080;
              *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_94;
          }
        }

        else
        {
          v67 = 0;
        }

        if (v281)
        {
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v64 = v64;
          v71 = [v64 countByEnumeratingWithState:&v346 objects:v379 count:16];
          if (v71)
          {
            v72 = v57;
            v73 = *v347;
            v74 = MEMORY[0x277D3C778];
            v75 = *MEMORY[0x277D3C778];
            while (2)
            {
              for (m = 0; m != v71; ++m)
              {
                if (*v347 != v73)
                {
                  objc_enumerationMutation(v64);
                }

                [*(*(&v346 + 1) + 8 * m) curationScore];
                if (v77 > v75)
                {
                  v279 = 0;
                  goto LABEL_108;
                }
              }

              v71 = [v64 countByEnumeratingWithState:&v346 objects:v379 count:16];
              if (v71)
              {
                continue;
              }

              break;
            }

            v279 = 1;
LABEL_108:
            v57 = v72;
          }

          else
          {
            v74 = MEMORY[0x277D3C778];
            v279 = 1;
          }

          v78 = v57;
          v344 = 0u;
          v345 = 0u;
          v342 = 0u;
          v343 = 0u;
          v67 = v67;
          v79 = [v67 countByEnumeratingWithState:&v342 objects:v378 count:16];
          if (v79)
          {
            v80 = *v343;
            v81 = *v74;
LABEL_112:
            v82 = 0;
            while (1)
            {
              if (*v343 != v80)
              {
                objc_enumerationMutation(v67);
              }

              [*(*(&v342 + 1) + 8 * v82) curationScore];
              if (v83 > v81)
              {
                break;
              }

              if (v79 == ++v82)
              {
                v79 = [v67 countByEnumeratingWithState:&v342 objects:v378 count:16];
                if (v79)
                {
                  goto LABEL_112;
                }

                goto LABEL_118;
              }
            }

            v57 = v78;
            if ((v279 & 1) == 0)
            {
              goto LABEL_190;
            }

            v84 = v64;
            v64 = 0;
          }

          else
          {
LABEL_118:

            v57 = v78;
            if (v279)
            {
LABEL_190:
              v85 = v64 != 0;
              if (v64 && v67)
              {
                v87 = [v64 arrayByAddingObjectsFromArray:v67];
LABEL_128:
                v88 = v87;
                v89 = [v87 sortedArrayUsingDescriptors:assetSortDescriptors];

                if (!v285 || ([v89 isEqualToArray:v57] & 1) == 0)
                {
                  if (v89)
                  {
                    v90 = v89;
                  }

                  else
                  {
                    v90 = MEMORY[0x277CBEBF8];
                  }

                  [(PGHighlightEnrichmentValues *)v292 setExtendedCuration:v90];
                }

                v91 = mach_absolute_time();
                v92 = *info;
                v93 = *&info[4];
                v94 = v62;
                v95 = v94;
                if (v63 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v95, OS_SIGNPOST_INTERVAL_END, spid, "PGHighlightTailorGenerateExtendedCuration", "", buf, 2u);
                }

                v96 = v95;
                if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *&buf[4] = "PGHighlightTailorGenerateExtendedCuration";
                  *&buf[12] = 2048;
                  *&buf[14] = ((((v91 - v299) * v92) / v93) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v96, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                v58 = v89;
                goto LABEL_140;
              }

LABEL_124:
              if (v85)
              {
                v86 = v64;
              }

              else
              {
                v86 = v67;
              }

              v87 = v86;
              goto LABEL_128;
            }

            v84 = v67;
            v67 = 0;
          }
        }

        v85 = v64 != 0;
        goto LABEL_124;
      }

      v32 = self->_loggingConnection;
      v33 = os_signpost_id_generate(v32);
      v34 = v32;
      uuid2 = v34;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, uuid2, OS_SIGNPOST_INTERVAL_BEGIN, v33, "PGHighlightTailorGenerateKeyAsset", "", buf, 2u);
      }

      *info = 0;
      mach_timebase_info(info);
      v36 = mach_absolute_time();
      v37 = highlightCopy;
      if (v282)
      {
        v362[0] = MEMORY[0x277D85DD0];
        v362[1] = 3221225472;
        v362[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke;
        v362[3] = &unk_27888A188;
        v363[0] = v307;
        v363[1] = &v364;
        v363[3] = 0x3F847AE147AE147BLL;
        v363[2] = &v368;
        v286 = [profileCopy keyAssetWithHighlightInfo:v305 sharingFilter:0 graph:graphCopy progressBlock:v362];
        if (*(v369 + 24) == 1)
        {
          v38 = v363;
          v39 = MEMORY[0x277D86220];
          v40 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 236;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v287 = 0;
LABEL_51:

          v284 = 0;
          v43 = 0;
          goto LABEL_70;
        }

        if (!v285 || ([v286 isEqual:v26] & 1) == 0)
        {
          [(PGHighlightEnrichmentValues *)v292 setKeyAssetPrivate:v286];
        }

        v37 = highlightCopy;
      }

      else
      {
        v286 = 0;
      }

      if (HIDWORD(v281))
      {
        v360[0] = MEMORY[0x277D85DD0];
        v360[1] = 3221225472;
        v360[2] = __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_202;
        v360[3] = &unk_27888A188;
        v361[0] = v307;
        v361[1] = &v364;
        v361[3] = 0x3F847AE147AE147BLL;
        v361[2] = &v368;
        v287 = [profileCopy keyAssetWithHighlightInfo:v305 sharingFilter:1 graph:graphCopy progressBlock:v360];
        if (*(v369 + 24) == 1)
        {
          v38 = v361;
          v41 = MEMORY[0x277D86220];
          v42 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 246;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_51;
        }

        if (!v285 || ([v287 isEqual:v29] & 1) == 0)
        {
          [(PGHighlightEnrichmentValues *)v292 setKeyAssetShared:v287];
        }

        v37 = highlightCopy;
      }

      else
      {
        v287 = 0;
      }

      if (v281)
      {
        v44 = +[PGHighlightEnrichmentUtilities mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:keyAssetShared:shouldCompareHighlight:](PGHighlightEnrichmentUtilities, "mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:keyAssetShared:shouldCompareHighlight:", v286, v287, [v37 kind] == 3);
        v284 = [PGHighlightEnrichmentUtilities keyAssetForMixedSharingCompositionKeyAssetRelationship:v44 keyAssetPrivate:v286 keyAssetShared:v287];
      }

      else
      {
        v44 = 0;
        v284 = 0;
      }

      if (!v285 || [v291 mixedSharingCompositionKeyAssetRelationship] != v44)
      {
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
        [(PGHighlightEnrichmentValues *)v292 setMixedSharingCompositionKeyAssetRelationshipValue:v45];
      }

      v46 = mach_absolute_time();
      v47 = *info;
      v48 = *&info[4];
      v49 = uuid2;
      v50 = v49;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v50, OS_SIGNPOST_INTERVAL_END, v33, "PGHighlightTailorGenerateKeyAsset", "", buf, 2u);
      }

      v51 = v50;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "PGHighlightTailorGenerateKeyAsset";
        *&buf[12] = 2048;
        *&buf[14] = ((((v46 - v36) * v47) / v48) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v31 = v286;
      goto LABEL_69;
    }

    v282 = 1;
    v29 = 0;
    v281 = 0;
LABEL_30:
    v30 = 0;
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 170;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightTailor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v15 = 0;
LABEL_248:
  _Block_object_dispose(&v364, 8);
  _Block_object_dispose(&v368, 8);

  v163 = *MEMORY[0x277D85DE8];

  return v15;
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_202(uint64_t a1, _BYTE *a2, double a3)
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

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_204(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.05 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_205(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.05 + 0.15);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_209(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __148__PGHighlightTailor_enrichmentValuesForHighlight_usingEnrichmentProfile_graph_options_reportChangedValuesOnly_highlightTailorContext_progressBlock___block_invoke_211(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 24);
  if (v9)
  {
    v12 = 0;
  }

  *(v11 + 24) = v12;
  if (*(a1 + 56))
  {
    if (v9)
    {
      v13 = *(*(a1 + 32) + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 40);
        v15 = v13;
        v16 = [v14 uuid];
        v20 = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "Failed to generate title for highlight %@: %@", &v20, 0x16u);
      }

      goto LABEL_9;
    }

    if (!(v7 | v8))
    {
LABEL_9:
      v17 = 0;
      goto LABEL_10;
    }

    v17 = 1;
    if (v7 && v8)
    {
      v17 = [v7 isEqualToString:v8] ^ 1;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (unint64_t)tailorOptionsAllowedForHighlight:(id)highlight originalOptions:(unint64_t)options
{
  kind = [highlight kind];
  v6 = -1073741824;
  if (kind == 3)
  {
    v6 = -1073741793;
  }

  if (!kind)
  {
    v6 = -1073741569;
  }

  return v6 & options;
}

- (id)computeChangedVisibilityScoresForItems:(id)items
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        [(PGHighlightTailor *)self highlightVisibilityWeightForItem:v11, v18];
        v13 = v12;
        v14 = MEMORY[0x277CD97A8];
        [v11 clsHighlightVisibilityScore];
        if (([v14 isScore:? closeToValue:?] & 1) == 0)
        {
          v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
          [strongToStrongObjectsMapTable setObject:v15 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return strongToStrongObjectsMapTable;
}

- (double)highlightVisibilityWeightForItem:(id)item
{
  itemCopy = item;
  [itemCopy clsContentScore];
  v5 = v4;
  [itemCopy clsAutoplaySuggestionScore];
  v7 = v6;
  if ([itemCopy isVideo])
  {
    [itemCopy clsDuration];
    if (v8 >= 2.0 && ([itemCopy clsHasPoorResolution] & 1) == 0)
    {
      clsIsLongExposure = [itemCopy clsIsLongExposure];
      clsIsLoopOrBounce = 1;
      goto LABEL_7;
    }
  }

  clsIsLoopOrBounce = [itemCopy clsIsLoopOrBounce];
  clsIsLongExposure = [itemCopy clsIsLongExposure];
  v11 = 0.0;
  if (clsIsLoopOrBounce)
  {
LABEL_7:
    v11 = 20.0;
  }

  v12 = 100.0;
  if (clsIsLongExposure)
  {
    v12 = 0.0;
  }

  if (!((v7 > 0.5) | clsIsLoopOrBounce & 1))
  {
    v12 = 0.0;
  }

  v13 = (v11 + v12 + v5 * 10.0) / 130.0;

  return v13;
}

- (id)assetSortDescriptors
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v7[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = PGHighlightTailor;
  return [(PGHighlightTailor *)&v3 init];
}

- (PGHighlightTailor)initWithWorkingContext:(id)context
{
  v27[6] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = PGHighlightTailor;
  v6 = [(PGHighlightTailor *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, context);
    curationManager = [contextCopy curationManager];
    loggingConnection = [contextCopy loggingConnection];
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = loggingConnection;
    v11 = loggingConnection;

    v12 = [[PGAggregationEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v27[0] = v12;
    v13 = [(PGDayGroupAbstractEnrichmentProfile *)[PGTripEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v27[1] = v13;
    v14 = [(PGDefaultEnrichmentProfile *)[PGCompleteEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v27[2] = v14;
    v15 = [(PGDefaultEnrichmentProfile *)[PGSceneCompleteEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v27[3] = v15;
    v16 = [(PGDefaultEnrichmentProfile *)[PGPartialEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v27[4] = v16;
    v17 = [[PGDefaultEnrichmentProfile alloc] initWithCurationManager:curationManager loggingConnection:v11];
    v27[5] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:6];
    enrichmentProfiles = v7->_enrichmentProfiles;
    v7->_enrichmentProfiles = v18;

    v20 = dispatch_group_create();
    enrichmentCommitGroup = v7->_enrichmentCommitGroup;
    v7->_enrichmentCommitGroup = v20;

    v22 = [[PGMoodGenerationContext alloc] initWithReferenceDate:0];
    moodGenerationContext = v7->_moodGenerationContext;
    v7->_moodGenerationContext = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

@end
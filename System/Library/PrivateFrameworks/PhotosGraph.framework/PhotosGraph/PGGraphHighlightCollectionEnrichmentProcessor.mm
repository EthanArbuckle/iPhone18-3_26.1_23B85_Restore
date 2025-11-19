@interface PGGraphHighlightCollectionEnrichmentProcessor
- (PGGraphHighlightCollectionEnrichmentProcessor)initWithOptions:(id)a3;
- (void)_enrichYearHighlights:(id)a3 monthsHighlights:(id)a4 withManager:(id)a5 curationContext:(id)a6 enrichmentprogressBlock:(id)a7;
- (void)enrichDataModelWithManager:(id)a3 curationContext:(id)a4 graphUpdateInventory:(id)a5 progressReporter:(id)a6;
@end

@implementation PGGraphHighlightCollectionEnrichmentProcessor

- (void)_enrichYearHighlights:(id)a3 monthsHighlights:(id)a4 withManager:(id)a5 curationContext:(id)a6 enrichmentprogressBlock:(id)a7
{
  *(&v194[2] + 4) = *MEMORY[0x277D85DE8];
  v11 = a3;
  v135 = a4;
  v12 = a5;
  v131 = a6;
  v130 = a7;
  v13 = _Block_copy(v130);
  v190 = &v189;
  v191 = 0x2020000000;
  v192 = 0;
  v185 = 0;
  v186 = &v185;
  v187 = 0x2020000000;
  v188 = 0;
  v189 = 0;
  if (!v13 || (v14 = CFAbsoluteTimeGetCurrent(), v14 - v186[3] < 0.01) || (v186[3] = v14, LOBYTE(info.numer) = 0, (*(v13 + 2))(v13, &info, 0.0), v15 = *(v190 + 24) | LOBYTE(info.numer), *(v190 + 24) = v15, (v15 & 1) == 0))
  {
    v134 = [v12 photoLibrary];
    v16 = [v12 enrichmentLoggingConnection];
    v17 = [[PGHighlightItemModelManager alloc] initWithLibrary:v134];
    v133 = [[PGMonthEnrichmentRule alloc] initWithModelReader:v17 loggingConnection:v16];
    v132 = [[PGYearEnrichmentRule alloc] initWithModelReader:v17 loggingConnection:v16];
    v129 = [[PGHighlightItemEnrichment alloc] initWithRule:v133 modelWriter:v17];
    v127 = [[PGHighlightItemEnrichment alloc] initWithRule:v132 modelWriter:v17];
    v18 = v16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v11 count];
      buf = 134217984;
      v194[0] = v19;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Extracting existing clusters from (%ld) backing year", &buf, 0xCu);
    }

    v180[0] = MEMORY[0x277D85DD0];
    v180[1] = 3221225472;
    v180[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke;
    v180[3] = &unk_27888A188;
    v20 = v13;
    v181 = v20;
    v182 = &v185;
    v183 = &v189;
    v184 = 0x3F847AE147AE147BLL;
    v128 = [PGHighlightItemRestorer restoreExistingHighlightItemListsFromBackingHighlightItems:v11 usingModelReader:v17 progressBlock:v180];
    if (*(v190 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_131:

        goto LABEL_132;
      }

      buf = 67109378;
      LODWORD(v194[0]) = 145;
      WORD2(v194[0]) = 2080;
      *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
LABEL_11:
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_131;
    }

    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v186[3] >= 0.01)
      {
        v186[3] = Current;
        LOBYTE(info.numer) = 0;
        (*(v20 + 2))(v20, &info, 0.1);
        v23 = *(v190 + 24) | LOBYTE(info.numer);
        *(v190 + 24) = v23;
        if (v23)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_131;
          }

          buf = 67109378;
          LODWORD(v194[0]) = 147;
          WORD2(v194[0]) = 2080;
          *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v21 = MEMORY[0x277D86220];
          goto LABEL_11;
        }
      }
    }

    v24 = v18;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v135 count];
      buf = 134217984;
      v194[0] = v25;
      _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "Extracting existing clusters from (%ld) backing months", &buf, 0xCu);
    }

    v175[0] = MEMORY[0x277D85DD0];
    v175[1] = 3221225472;
    v175[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_224;
    v175[3] = &unk_27888A188;
    v26 = v20;
    v176 = v26;
    v177 = &v185;
    v178 = &v189;
    v179 = 0x3F847AE147AE147BLL;
    v27 = [PGHighlightItemRestorer restoreExistingHighlightItemListsFromBackingHighlightItems:v135 usingModelReader:v17 progressBlock:v175];
    if (*(v190 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_130:

        goto LABEL_131;
      }

      buf = 67109378;
      LODWORD(v194[0]) = 154;
      WORD2(v194[0]) = 2080;
      *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v28 = MEMORY[0x277D86220];
LABEL_22:
      _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_130;
    }

    if (v13)
    {
      v29 = CFAbsoluteTimeGetCurrent();
      if (v29 - v186[3] >= 0.01)
      {
        v186[3] = v29;
        LOBYTE(info.numer) = 0;
        (*(v26 + 2))(v26, &info, 0.2);
        v30 = *(v190 + 24) | LOBYTE(info.numer);
        *(v190 + 24) = v30;
        if (v30)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_130;
          }

          buf = 67109378;
          LODWORD(v194[0]) = 156;
          WORD2(v194[0]) = 2080;
          *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v28 = MEMORY[0x277D86220];
          goto LABEL_22;
        }
      }
    }

    v122 = v27;
    v31 = v24;
    v32 = os_signpost_id_generate(v31);
    v33 = v31;
    v34 = v33;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "MonthEventsSelection", "", &buf, 2u);
    }

    v121 = v34;

    info = 0;
    mach_timebase_info(&info);
    v119 = mach_absolute_time();
    v169[0] = MEMORY[0x277D85DD0];
    v169[1] = 3221225472;
    v169[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_225;
    v169[3] = &unk_27888A188;
    v35 = v26;
    v170 = v35;
    v171 = &v185;
    v172 = &v189;
    v173 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v129 updateVisibilityStateForHighlightItemLists:v122 withManager:v12 progressBlock:v169];
    if (*(v190 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_129:

        v27 = v122;
        goto LABEL_130;
      }

      buf = 67109378;
      LODWORD(v194[0]) = 164;
      WORD2(v194[0]) = 2080;
      *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v36 = MEMORY[0x277D86220];
LABEL_34:
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_129;
    }

    if (v13)
    {
      v37 = CFAbsoluteTimeGetCurrent();
      if (v37 - v186[3] >= 0.01)
      {
        v186[3] = v37;
        LOBYTE(v163.numer) = 0;
        (*(v35 + 2))(v35, &v163, 0.3);
        v38 = *(v190 + 24) | LOBYTE(v163.numer);
        *(v190 + 24) = v38;
        if (v38)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_129;
          }

          buf = 67109378;
          LODWORD(v194[0]) = 166;
          WORD2(v194[0]) = 2080;
          *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v36 = MEMORY[0x277D86220];
          goto LABEL_34;
        }
      }
    }

    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 3221225472;
    v164[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_226;
    v164[3] = &unk_27888A188;
    v116 = v35;
    v165 = v116;
    v166 = &v185;
    v167 = &v189;
    v168 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v127 updateVisibilityStateForHighlightItemLists:v128 withManager:v12 progressBlock:v164];
    if (*(v190 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_128:

        goto LABEL_129;
      }

      buf = 67109378;
      LODWORD(v194[0]) = 171;
      WORD2(v194[0]) = 2080;
      *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v39 = MEMORY[0x277D86220];
LABEL_43:
      _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_128;
    }

    v40 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v43 = v34;
    v44 = v43;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v44, OS_SIGNPOST_INTERVAL_END, v32, "MonthEventsSelection", "", &buf, 2u);
    }

    v45 = v44;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      v194[0] = "MonthEventsSelection";
      LOWORD(v194[1]) = 2048;
      *(&v194[1] + 2) = ((((v40 - v119) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
    }

    if (v13)
    {
      v46 = CFAbsoluteTimeGetCurrent();
      if (v46 - v186[3] >= 0.01)
      {
        v186[3] = v46;
        LOBYTE(v163.numer) = 0;
        (*(v116 + 2))(v116, &v163, 0.4);
        v47 = *(v190 + 24) | LOBYTE(v163.numer);
        *(v190 + 24) = v47;
        if (v47)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_128;
          }

          buf = 67109378;
          LODWORD(v194[0]) = 175;
          WORD2(v194[0]) = 2080;
          *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v39 = MEMORY[0x277D86220];
          goto LABEL_43;
        }
      }
    }

    v48 = v45;
    v49 = os_signpost_id_generate(v48);
    v50 = v48;
    v51 = v50;
    if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "MonthAndYearContextualKeyAssetsComputation", "", &buf, 2u);
    }

    v120 = v51;

    v163 = 0;
    mach_timebase_info(&v163);
    v52 = mach_absolute_time();
    options = self->_options;
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_228;
    v158[3] = &unk_27888A188;
    v124 = v116;
    v159 = v124;
    v160 = &v185;
    v161 = &v189;
    v162 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v127 contextualKeyAssetForYearHighlightItemLists:v128 withManager:v12 curationContext:v131 options:options progressBlock:v158];
    if (*(v190 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_127:

        goto LABEL_128;
      }

      buf = 67109378;
      LODWORD(v194[0]) = 183;
      WORD2(v194[0]) = 2080;
      *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v54 = MEMORY[0x277D86220];
LABEL_60:
      _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_127;
    }

    v55 = v52;
    v117 = mach_absolute_time();
    v57 = v163.numer;
    v56 = v163.denom;
    v58 = v120;
    v59 = v58;
    if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v59, OS_SIGNPOST_INTERVAL_END, v49, "MonthAndYearContextualKeyAssetsComputation", "", &buf, 2u);
    }

    v60 = v59;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      v194[0] = "MonthAndYearContextualKeyAssetsComputation";
      LOWORD(v194[1]) = 2048;
      *(&v194[1] + 2) = ((((v117 - v55) * v57) / v56) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
    }

    if (v13)
    {
      v61 = CFAbsoluteTimeGetCurrent();
      if (v61 - v186[3] >= 0.01)
      {
        v186[3] = v61;
        LOBYTE(v157.numer) = 0;
        (*(v124 + 2))(v124, &v157, 0.6);
        v62 = *(v190 + 24) | LOBYTE(v157.numer);
        *(v190 + 24) = v62;
        if (v62)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_127;
          }

          buf = 67109378;
          LODWORD(v194[0]) = 187;
          WORD2(v194[0]) = 2080;
          *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v54 = MEMORY[0x277D86220];
          goto LABEL_60;
        }
      }
    }

    v63 = v60;
    v64 = os_signpost_id_generate(v63);
    v65 = v63;
    v66 = v65;
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v66, OS_SIGNPOST_INTERVAL_BEGIN, v64, "MonthsEnrichment", "", &buf, 2u);
    }

    v118 = v66;

    v157 = 0;
    mach_timebase_info(&v157);
    v67 = mach_absolute_time();
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_230;
    v152[3] = &unk_27888A188;
    v125 = v124;
    v153 = v125;
    v154 = &v185;
    v155 = &v189;
    v156 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v129 enrichHighlightItemLists:v122 progressBlock:v152];
    if (*(v190 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_126:

        goto LABEL_127;
      }

      buf = 67109378;
      LODWORD(v194[0]) = 195;
      WORD2(v194[0]) = 2080;
      *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v68 = MEMORY[0x277D86220];
LABEL_77:
      _os_log_impl(&dword_22F0FC000, v68, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_126;
    }

    v114 = mach_absolute_time();
    v70 = v157.numer;
    v69 = v157.denom;
    v71 = v118;
    v72 = v71;
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v72, OS_SIGNPOST_INTERVAL_END, v64, "MonthsEnrichment", "", &buf, 2u);
    }

    v73 = v72;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      v194[0] = "MonthsEnrichment";
      LOWORD(v194[1]) = 2048;
      *(&v194[1] + 2) = ((((v114 - v67) * v70) / v69) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v73, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
    }

    [PGHighlightItemList updateParentHighlightItemLists:v128 withChildHighlightItems:v122];
    if (v13)
    {
      v74 = CFAbsoluteTimeGetCurrent();
      if (v74 - v186[3] >= 0.01)
      {
        v186[3] = v74;
        LOBYTE(v151.numer) = 0;
        (*(v125 + 2))(v125, &v151, 0.7);
        v75 = *(v190 + 24) | LOBYTE(v151.numer);
        *(v190 + 24) = v75;
        if (v75)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_126;
          }

          buf = 67109378;
          LODWORD(v194[0]) = 202;
          WORD2(v194[0]) = 2080;
          *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v68 = MEMORY[0x277D86220];
          goto LABEL_77;
        }
      }
    }

    v76 = v73;
    v77 = os_signpost_id_generate(v76);
    v78 = v76;
    v79 = v78;
    if (v77 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v79, OS_SIGNPOST_INTERVAL_BEGIN, v77, "YearsEnrichment", "", &buf, 2u);
    }

    v115 = v79;

    v151 = 0;
    mach_timebase_info(&v151);
    v80 = mach_absolute_time();
    v146[0] = MEMORY[0x277D85DD0];
    v146[1] = 3221225472;
    v146[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_233;
    v146[3] = &unk_27888A188;
    v126 = v125;
    v147 = v126;
    v148 = &v185;
    v149 = &v189;
    v150 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v127 enrichHighlightItemLists:v128 progressBlock:v146];
    if (*(v190 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v194[0]) = 210;
        WORD2(v194[0]) = 2080;
        *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        v81 = MEMORY[0x277D86220];
LABEL_94:
        _os_log_impl(&dword_22F0FC000, v81, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }
    }

    else
    {
      v112 = mach_absolute_time();
      v83 = v151.numer;
      v82 = v151.denom;
      v84 = v79;
      v85 = v84;
      if (v77 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v85, OS_SIGNPOST_INTERVAL_END, v77, "YearsEnrichment", "", &buf, 2u);
      }

      v86 = v85;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        buf = 136315394;
        v194[0] = "YearsEnrichment";
        LOWORD(v194[1]) = 2048;
        *(&v194[1] + 2) = ((((v112 - v80) * v83) / v82) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v86, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
      }

      if (!v13 || (v87 = CFAbsoluteTimeGetCurrent(), v87 - v186[3] < 0.01) || (v186[3] = v87, LOBYTE(v145.numer) = 0, (*(v126 + 2))(v126, &v145, 0.8), v88 = *(v190 + 24) | LOBYTE(v145.numer), *(v190 + 24) = v88, (v88 & 1) == 0))
      {
        v89 = v86;
        v90 = os_signpost_id_generate(v89);
        v91 = v89;
        v92 = v91;
        if (v90 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v92, OS_SIGNPOST_INTERVAL_BEGIN, v90, "HighlightCollectionEnrichmentCommit", "", &buf, 2u);
        }

        v145 = 0;
        mach_timebase_info(&v145);
        v113 = v90 - 1;
        spid = v90;
        v111 = mach_absolute_time();
        v93 = dispatch_group_create();
        dispatch_group_enter(v93);
        v140[0] = MEMORY[0x277D85DD0];
        v140[1] = 3221225472;
        v140[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_235;
        v140[3] = &unk_278889470;
        v141 = v128;
        v142 = v17;
        v143 = v122;
        v144 = v134;
        v137[0] = MEMORY[0x277D85DD0];
        v137[1] = 3221225472;
        v137[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_2;
        v137[3] = &unk_278889498;
        v94 = v92;
        v138 = v94;
        v95 = v93;
        v139 = v95;
        [v144 performChanges:v140 completionHandler:v137];
        while (1)
        {
          v96 = dispatch_time(0, 100000000);
          if (!dispatch_group_wait(v95, v96))
          {
            break;
          }

          if (v13)
          {
            v97 = CFAbsoluteTimeGetCurrent();
            if (v97 - v186[3] >= 0.01)
            {
              v186[3] = v97;
              LOBYTE(buf) = 0;
              (*(v126 + 2))(v126, &buf, 0.9);
              v98 = *(v190 + 24) | buf;
              *(v190 + 24) = v98;
              if (v98)
              {
                break;
              }
            }
          }
        }

        v99 = mach_absolute_time();
        v100 = v145.numer;
        v101 = v145.denom;
        v102 = v94;
        v103 = v102;
        if (v113 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v103, OS_SIGNPOST_INTERVAL_END, spid, "HighlightCollectionEnrichmentCommit", "", &buf, 2u);
        }

        v104 = v103;
        if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
        {
          buf = 136315394;
          v194[0] = "HighlightCollectionEnrichmentCommit";
          LOWORD(v194[1]) = 2048;
          *(&v194[1] + 2) = ((((v99 - v111) * v100) / v101) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v104, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
        }

        if (v13)
        {
          v105 = CFAbsoluteTimeGetCurrent();
          if (v105 - v186[3] >= 0.01)
          {
            v186[3] = v105;
            v136 = 0;
            (*(v126 + 2))(v126, &v136, 1.0);
            v106 = *(v190 + 24) | v136;
            *(v190 + 24) = v106;
            if (v106)
            {
              v107 = MEMORY[0x277D86220];
              v108 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
              {
                buf = 67109378;
                LODWORD(v194[0]) = 279;
                WORD2(v194[0]) = 2080;
                *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
              }
            }
          }
        }

        goto LABEL_125;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v194[0]) = 214;
        WORD2(v194[0]) = 2080;
        *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        v81 = MEMORY[0x277D86220];
        goto LABEL_94;
      }
    }

LABEL_125:

    goto LABEL_126;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 67109378;
    LODWORD(v194[0]) = 127;
    WORD2(v194[0]) = 2080;
    *(v194 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_132:
  _Block_object_dispose(&v185, 8);
  _Block_object_dispose(&v189, 8);

  v109 = *MEMORY[0x277D85DE8];
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.0);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_224(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_225(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_226(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_228(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_230(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.6);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_233(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_235(id *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v49;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v49 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v48 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        [a1[5] consumeHighlightItemList:v7];
        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v4);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = a1[6];
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v44 + 1) + 8 * j);
        v15 = objc_autoreleasePoolPush();
        [a1[5] consumeHighlightItemList:v14];
        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v11);
  }

  v16 = [a1[5] highlightUUIDsWithVisibilityStateChange];
  v17 = [a1[5] highlightUUIDsWithContextualKeyAssetChange];
  v18 = [v16 setByAddingObjectsFromSet:v17];
  v19 = [a1[7] librarySpecificFetchOptions];
  v37 = v18;
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(kind == %d || kind == %d) && uuid in %@", 0, 3, v18];
  [v19 setPredicate:v20];

  v36 = v19;
  [MEMORY[0x277CD9958] fetchHighlightsWithOptions:v19];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v21 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    v24 = 0x277CD9000uLL;
    do
    {
      v25 = 0;
      v38 = v22;
      do
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v40 + 1) + 8 * v25);
        v27 = [*(v24 + 2400) changeRequestForPhotosHighlight:v26];
        v28 = [v26 uuid];
        if ([v16 containsObject:v28])
        {
          [v27 setVisibilityState:{objc_msgSend(a1[5], "visibilityStateForHighlightItem:sharingFilter:", v26, 0)}];
          [v27 setVisibilityStateShared:{objc_msgSend(a1[5], "visibilityStateForHighlightItem:sharingFilter:", v26, 1)}];
          [v27 setVisibilityStateMixed:{objc_msgSend(a1[5], "visibilityStateForHighlightItem:sharingFilter:", v26, 2)}];
        }

        if ([v17 containsObject:v28])
        {
          v29 = v23;
          v30 = v17;
          v31 = v16;
          v32 = v24;
          v33 = [a1[5] contextualKeyAssetForHighlightItem:v26 sharingFilter:0];
          if (v33)
          {
            [v27 setKeyAssetPrivate:v33];
          }

          v34 = [a1[5] contextualKeyAssetForHighlightItem:v26 sharingFilter:1];
          if (v34)
          {
            [v27 setKeyAssetShared:v34];
            if (v33)
            {
              [v27 setMixedSharingCompositionKeyAssetRelationship:{+[PGHighlightEnrichmentUtilities mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:keyAssetShared:shouldCompareHighlight:](PGHighlightEnrichmentUtilities, "mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:keyAssetShared:shouldCompareHighlight:", v33, v34, 1)}];
            }
          }

          v24 = v32;
          v16 = v31;
          v17 = v30;
          v23 = v29;
          v22 = v38;
        }

        ++v25;
      }

      while (v22 != v25);
      v22 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v22);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "Failed to persist years and months enrichments: %@", &v8, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enrichDataModelWithManager:(id)a3 curationContext:(id)a4 graphUpdateInventory:(id)a5 progressReporter:(id)a6
{
  v77[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v63 = a4;
  v10 = a5;
  v65 = a6;
  v11 = [v9 enrichmentLoggingConnection];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  v62 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PGGraphHighlightCollectionEnrichmentProcessor", "", buf, 2u);
  }

  spid = v12;

  info = 0;
  mach_timebase_info(&info);
  v61 = mach_absolute_time();
  v15 = [v10 updateType];
  v16 = [v10 isResumingFullAnalysis];
  v17 = [(NSDictionary *)self->_options objectForKeyedSubscript:*MEMORY[0x277D3AE20]];
  if ([v17 count])
  {
    v18 = [v9 photoLibrary];
    v19 = [v18 librarySpecificFetchOptions];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN %@", v17];
    [v19 setPredicate:v20];

    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v77[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
    [v19 setSortDescriptors:v22];

    v23 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000302 options:v19];
    v24 = [v23 fetchedObjects];

    v25 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000303 options:v19];
    v26 = [v25 fetchedObjects];
LABEL_11:
    v32 = v26;
LABEL_12:

    goto LABEL_13;
  }

  if (v15 == 4)
  {
    v27 = 1;
  }

  else
  {
    v27 = v16;
  }

  if (v27 == 1)
  {
    v28 = [v9 photoLibrary];
    v19 = [v28 librarySpecificFetchOptions];

    v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v76 = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    [v19 setSortDescriptors:v30];

    v31 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000302 options:v19];
    v24 = [v31 fetchedObjects];

    v25 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000303 options:v19];
    v26 = [v25 fetchedObjects];
    goto LABEL_11;
  }

  if (v15 == 2)
  {
    v39 = [v9 photoLibrary];
    v19 = [v39 librarySpecificFetchOptions];

    v25 = [v10 highlightsToProcessForKind:0 withHighlightUpdateTypes:127 includeHighlightsToIngest:1];
    v57 = [v10 highlightsToProcessForKind:3 withHighlightUpdateTypes:127 includeHighlightsToIngest:1];
    v59 = [MEMORY[0x277CBEB58] set];
    [v59 unionSet:v25];
    [v59 unionSet:v57];
    v40 = [v10 highlightsToProcessForKind:1 withHighlightUpdateTypes:127 includeHighlightsToIngest:1];
    v58 = [v40 mutableCopy];

    if ([v59 count])
    {
      v41 = [MEMORY[0x277CD9958] fetchParentHighlightsForHighlights:v59 options:v19];
      v42 = [v41 fetchedObjects];

      [v58 addObjectsFromArray:v42];
    }

    v24 = [v58 allObjects];
    v43 = [v10 highlightsToProcessForKind:2 withHighlightUpdateTypes:127 includeHighlightsToIngest:1];
    v44 = [v43 mutableCopy];

    if ([v58 count])
    {
      v45 = [MEMORY[0x277CD9958] fetchParentHighlightsForHighlights:v58 options:v19];
      v46 = [v45 fetchedObjects];

      [v44 addObjectsFromArray:v46];
    }

    v32 = [v44 allObjects];

    goto LABEL_12;
  }

  v32 = 0;
  v24 = 0;
LABEL_13:
  v33 = [v24 count];
  v34 = [v32 count] + v33;
  if (v34)
  {
    v35 = v65;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v75 = 0;
    v36 = [v35 isCancelledWithProgress:0.0];
    *(*&buf[8] + 24) = v36;
    if (v36)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v70 = 67109378;
        v71 = 106;
        v72 = 2080;
        v73 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v70, 0x12u);
      }

      _Block_object_dispose(buf, 8);

      goto LABEL_43;
    }

    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __130__PGGraphHighlightCollectionEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
    v66[3] = &unk_278889448;
    v68 = buf;
    v37 = v35;
    v67 = v37;
    [(PGGraphHighlightCollectionEnrichmentProcessor *)self _enrichYearHighlights:v32 monthsHighlights:v24 withManager:v9 curationContext:v63 enrichmentprogressBlock:v66];
    if (*(*&buf[8] + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v70 = 67109378;
        v71 = 112;
        v72 = 2080;
        v73 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        v38 = MEMORY[0x277D86220];
LABEL_35:
        _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v70, 0x12u);
        goto LABEL_36;
      }

      goto LABEL_36;
    }

    v47 = [v37 throughputReportBlock];
    v48 = v47 == 0;

    if (!v48)
    {
      v49 = [v37 throughputReportBlock];
      v49[2](v49, v34, 0);
    }

    if (*(*&buf[8] + 24))
    {
      *(*&buf[8] + 24) = 1;
      goto LABEL_33;
    }

    v50 = [v37 isCancelledWithProgress:1.0];
    *(*&buf[8] + 24) = v50;
    if (v50)
    {
LABEL_33:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v70 = 67109378;
        v71 = 118;
        v72 = 2080;
        v73 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        v38 = MEMORY[0x277D86220];
        goto LABEL_35;
      }

LABEL_36:

      _Block_object_dispose(buf, 8);
      goto LABEL_43;
    }

    _Block_object_dispose(buf, 8);
  }

  v51 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v54 = v14;
  v55 = v54;
  if (v62 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v54))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v55, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphHighlightCollectionEnrichmentProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "PGGraphHighlightCollectionEnrichmentProcessor";
    *&buf[12] = 2048;
    *&buf[14] = ((((v51 - v61) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

LABEL_43:

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __130__PGGraphHighlightCollectionEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (PGGraphHighlightCollectionEnrichmentProcessor)initWithOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphHighlightCollectionEnrichmentProcessor;
  v6 = [(PGGraphHighlightCollectionEnrichmentProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
  }

  return v7;
}

@end
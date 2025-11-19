@interface PGUpNextMusicCurator
+ (id)_appleMusicCurationWithFeaturesByMemory:(id)a3 musicCuratorContext:(id)a4 managerContext:(id)a5 progressReporter:(id)a6 error:(id *)a7;
+ (id)_baseMemoryFetchOptionsWithPhotoLibrary:(id)a3;
+ (id)_flexMusicCurationWithFeaturesByMemory:(id)a3 musicCurationOptions:(id)a4 musicCuratorContext:(id)a5 progressReporter:(id)a6 error:(id *)a7;
- (BOOL)curateMusicForUpNextMemoriesWithLocalIdentifiers:(id)a3 musicCurationOptions:(id)a4 photoLibrary:(id)a5 managerContext:(id)a6 error:(id *)a7;
- (PGUpNextMusicCurator)initWithLoggingConnection:(id)a3;
- (id)_appleMusicCurationForMemories:(id)a3 curatorContext:(id)a4 managerContext:(id)a5 progressReporter:(id)a6 error:(id *)a7;
- (id)_flexMusicCurationForMemories:(id)a3 curatorContext:(id)a4 musicCurationOptions:(id)a5 managerContext:(id)a6 progressReporter:(id)a7 error:(id *)a8;
- (id)_musicCurationFeaturesForMemories:(id)a3 musicExtractionContext:(id)a4 managerContext:(id)a5 progressReporter:(id)a6 error:(id *)a7;
@end

@implementation PGUpNextMusicCurator

- (id)_musicCurationFeaturesForMemories:(id)a3 musicExtractionContext:(id)a4 managerContext:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = self->_loggingConnection;
  v16 = os_signpost_id_generate(v15);
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PGUpNextMusicCurator_MusicCurationFeatureExtraction", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v19 = mach_absolute_time();
  *buf = 0;
  v46 = buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__16965;
  v49 = __Block_byref_object_dispose__16966;
  v50 = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__16965;
  v43 = __Block_byref_object_dispose__16966;
  v44 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __119__PGUpNextMusicCurator__musicCurationFeaturesForMemories_musicExtractionContext_managerContext_progressReporter_error___block_invoke;
  v33[3] = &unk_2788826E0;
  v20 = v11;
  v34 = v20;
  v21 = v14;
  v35 = v21;
  v22 = v12;
  v36 = v22;
  v37 = &v39;
  v38 = buf;
  [v13 performSynchronousConcurrentGraphReadUsingBlock:v33];
  if (!*(v46 + 5))
  {
    if (a7)
    {
      v23 = v40[5];
      if (v23)
      {
        *a7 = v23;
      }
    }
  }

  v24 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v27 = v18;
  v28 = v27;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *v52 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_END, v16, "PGUpNextMusicCurator_MusicCurationFeatureExtraction", "", v52, 2u);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *v52 = 136315394;
    v53 = "PGUpNextMusicCurator_MusicCurationFeatureExtraction";
    v54 = 2048;
    v55 = ((((v24 - v19) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v52, 0x16u);
  }

  v29 = *(v46 + 5);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(buf, 8);

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __119__PGUpNextMusicCurator__musicCurationFeaturesForMemories_musicExtractionContext_managerContext_progressReporter_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  if ([*(a1 + 32) count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v4];
      v6 = [*(a1 + 40) childProgressReporterForStep:v4 outOf:{objc_msgSend(*(a1 + 32), "count")}];
      v7 = *(a1 + 48);
      v8 = *(*(a1 + 56) + 8);
      obj = *(v8 + 40);
      v9 = [PGMusicCurator extractMusicCurationFeaturesForMemory:v5 graph:v3 context:v7 progressReporter:v6 error:&obj];
      objc_storeStrong((v8 + 40), obj);
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      if (!v9)
      {
        break;
      }

      [v11 setObject:v9 forKeyedSubscript:v5];

      if (++v4 >= [*(a1 + 32) count])
      {
        goto LABEL_7;
      }
    }

    *(v10 + 40) = 0;
  }

LABEL_7:
}

- (id)_flexMusicCurationForMemories:(id)a3 curatorContext:(id)a4 musicCurationOptions:(id)a5 managerContext:(id)a6 progressReporter:(id)a7 error:(id *)a8
{
  v60 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = MEMORY[0x277D22C88];
  v18 = a6;
  v19 = a3;
  v20 = [[v17 alloc] initWithProgressReporter:v16];
  v21 = [v20 childProgressReporterToCheckpoint:0.7];
  v51 = [v20 childProgressReporterToCheckpoint:0.95];
  v22 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:v14];
  v50 = v21;
  v23 = [(PGUpNextMusicCurator *)self _musicCurationFeaturesForMemories:v19 musicExtractionContext:v22 managerContext:v18 progressReporter:v21 error:a8];

  if (v23)
  {
    v48 = v16;
    v49 = v15;
    v24 = self->_loggingConnection;
    v25 = os_signpost_id_generate(v24);
    v26 = v24;
    v27 = v26;
    v28 = v25 - 1;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PGUpNextMusicCurator_FlexMusicCuration", "", buf, 2u);
    }

    spid = v25;

    info = 0;
    mach_timebase_info(&info);
    v47 = mach_absolute_time();
    v29 = [objc_opt_class() _flexMusicCurationWithFeaturesByMemory:v23 musicCurationOptions:v49 musicCuratorContext:v14 progressReporter:v51 error:a8];
    if (v29)
    {
      v30 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v29, "count")}];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __128__PGUpNextMusicCurator__flexMusicCurationForMemories_curatorContext_musicCurationOptions_managerContext_progressReporter_error___block_invoke;
      v52[3] = &unk_278880C28;
      v53 = v23;
      v31 = v30;
      v54 = v31;
      [v29 enumerateKeysAndObjectsUsingBlock:v52];
      [v48 isCancelledWithProgress:1.0];
      v32 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v35 = v27;
      v36 = v35;
      if (v28 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator_FlexMusicCuration", "", buf, 2u);
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v57 = "PGUpNextMusicCurator_FlexMusicCuration";
        v58 = 2048;
        v59 = ((((v32 - v47) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v37 = v54;
      v38 = v31;

      v15 = v49;
    }

    else
    {
      v39 = mach_absolute_time();
      v41 = info.numer;
      v40 = info.denom;
      v42 = v27;
      v43 = v42;
      if (v28 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator_FlexMusicCuration", "", buf, 2u);
      }

      v15 = v49;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v57 = "PGUpNextMusicCurator_FlexMusicCuration";
        v58 = 2048;
        v59 = ((((v39 - v47) * v41) / v40) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v38 = 0;
    }

    v16 = v48;
  }

  else
  {
    v38 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v38;
}

void __128__PGUpNextMusicCurator__flexMusicCurationForMemories_curatorContext_musicCurationOptions_managerContext_progressReporter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKeyedSubscript:v7];
  v8 = [[PGMusicCurationAndFeatures alloc] initWithFlexMusicCuration:v6 features:v9];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
}

- (id)_appleMusicCurationForMemories:(id)a3 curatorContext:(id)a4 managerContext:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v59 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x277D22C88];
  v16 = a3;
  v17 = v15;
  v18 = v14;
  v19 = [[v17 alloc] initWithProgressReporter:v14];
  v20 = [v19 childProgressReporterToCheckpoint:0.7];
  v21 = [v19 childProgressReporterToCheckpoint:0.95];
  v50 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:v12];
  v22 = [PGUpNextMusicCurator _musicCurationFeaturesForMemories:"_musicCurationFeaturesForMemories:musicExtractionContext:managerContext:progressReporter:error:" musicExtractionContext:v16 managerContext:? progressReporter:? error:?];

  if (v22)
  {
    v48 = v20;
    v49 = v21;
    v23 = self->_loggingConnection;
    v24 = os_signpost_id_generate(v23);
    v25 = v23;
    v26 = v25;
    spid = v24;
    v27 = v24 - 1;
    if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PGUpNextMusicCurator_AppleMusicCuration", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v46 = mach_absolute_time();
    v28 = [objc_opt_class() _appleMusicCurationWithFeaturesByMemory:v22 musicCuratorContext:v12 managerContext:v13 progressReporter:v49 error:a7];
    if (v28)
    {
      v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v28, "count")}];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __108__PGUpNextMusicCurator__appleMusicCurationForMemories_curatorContext_managerContext_progressReporter_error___block_invoke;
      v51[3] = &unk_278880C00;
      v52 = v22;
      v30 = v29;
      v53 = v30;
      [v28 enumerateKeysAndObjectsUsingBlock:v51];
      v45 = v18;
      [v18 isCancelledWithProgress:1.0];
      v31 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v34 = v26;
      v35 = v34;
      if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator_AppleMusicCuration", "", buf, 2u);
      }

      v20 = v48;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v56 = "PGUpNextMusicCurator_AppleMusicCuration";
        v57 = 2048;
        v58 = ((((v31 - v46) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v36 = v53;
      v37 = v30;

      v18 = v45;
    }

    else
    {
      v38 = mach_absolute_time();
      v40 = info.numer;
      v39 = info.denom;
      v41 = v26;
      v42 = v41;
      if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator_AppleMusicCuration", "", buf, 2u);
      }

      v20 = v48;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v56 = "PGUpNextMusicCurator_AppleMusicCuration";
        v57 = 2048;
        v58 = ((((v38 - v46) * v40) / v39) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v37 = 0;
    }

    v21 = v49;
  }

  else
  {
    v37 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v37;
}

void __108__PGUpNextMusicCurator__appleMusicCurationForMemories_curatorContext_managerContext_progressReporter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKeyedSubscript:v7];
  v8 = [[PGMusicCurationAndFeatures alloc] initWithAppleMusicCuration:v6 features:v9];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)curateMusicForUpNextMemoriesWithLocalIdentifiers:(id)a3 musicCurationOptions:(id)a4 photoLibrary:(id)a5 managerContext:(id)a6 error:(id *)a7
{
  v148 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v124 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_loggingConnection;
  v15 = os_signpost_id_generate(v14);
  v16 = v14;
  v17 = v16;
  v119 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PGUpNextMusicCurator", "", buf, 2u);
  }

  spid = v15;

  info = 0;
  mach_timebase_info(&info);
  v115 = mach_absolute_time();
  v126 = self;
  v123 = v12;
  v121 = [objc_opt_class() _baseMemoryFetchOptionsWithPhotoLibrary:v12];
  v18 = [MEMORY[0x277CD98D8] fetchAssetCollectionsWithLocalIdentifiers:v11 options:?];
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v137 objects:v147 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v138;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v138 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v137 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 addObject:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v137 objects:v147 count:16];
    }

    while (v22);
  }

  if ([v19 count])
  {
    v26 = [MEMORY[0x277D22C80] ignoreProgress];
    v27 = v124;
    v28 = [v13 musicCuratorContextWithCurationOptions:v124 error:a7];
    v112 = v28;
    if (v28)
    {
      v29 = v28;
      v125 = [(PGUpNextMusicCurator *)v126 _appleMusicCurationForMemories:v19 curatorContext:v28 managerContext:v13 progressReporter:v26 error:a7];
      if (v125)
      {
        v108 = v26;
        v30 = [(PGUpNextMusicCurator *)v126 _flexMusicCurationForMemories:v19 curatorContext:v29 musicCurationOptions:v124 managerContext:v13 progressReporter:v26 error:a7];
        loggingConnection = v126->_loggingConnection;
        v122 = v30;
        if (v30)
        {
          v32 = loggingConnection;
          v33 = os_signpost_id_generate(v32);
          v34 = v32;
          v35 = v34;
          v106 = v33 - 1;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "PGUpNextMusicCurator_BuildAndPersistRecipe", "", buf, 2u);
          }

          v103 = v33;
          v107 = v35;

          v136 = 0;
          mach_timebase_info(&v136);
          v105 = mach_absolute_time();
          v114 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
          v113 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          v36 = v19;
          v120 = [v36 countByEnumeratingWithState:&v132 objects:v142 count:16];
          if (v120)
          {
            obj = v36;
            v104 = v11;
            v117 = *v133;
            v109 = 1;
            v116 = v13;
            v118 = v17;
LABEL_22:
            v37 = 0;
            while (1)
            {
              if (*v133 != v117)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v132 + 1) + 8 * v37);
              v39 = [v125 objectForKeyedSubscript:v38];
              v40 = [v39 appleMusicCuration];

              v41 = [v122 objectForKeyedSubscript:v38];
              v42 = [v41 flexMusicCuration];

              v43 = [v125 objectForKeyedSubscript:v38];
              v44 = [v43 features];

              if (v40)
              {
                v45 = v42 == 0;
              }

              else
              {
                v45 = 1;
              }

              if (v45 || v44 == 0)
              {
                v82 = v40;
                v83 = v126->_loggingConnection;
                if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                {
                  v101 = v83;
                  v102 = [v38 uuid];
                  *buf = 138412290;
                  v144 = v102;
                  _os_log_error_impl(&dword_22F0FC000, v101, OS_LOG_TYPE_ERROR, "[MemoriesMusic] one or both music curations or music features missing for memory (%@)", buf, 0xCu);
                }

                v11 = v104;
                if (a7)
                {
                  v84 = MEMORY[0x277CCACA8];
                  v85 = [v38 uuid];
                  v86 = [v84 stringWithFormat:@"One or both music curations missing for asset collection (%@)", v85];
                  *a7 = [PGError errorWithCode:-1 description:v86];
                }

                v17 = v118;
                goto LABEL_83;
              }

              v127 = v40;
              v47 = [objc_opt_class() _photosGraphPropertiesForMemory:v38 musicCurationFeatures:v44 appleMusicCuration:v40 flexMusicCuration:v42 isAppleMusicSubscriber:v126->_isAppleMusicSubscriber error:a7];
              v48 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v47 requiringSecureCoding:1 error:a7];
              if (v48)
              {
                [v114 setObject:v48 forKeyedSubscript:v38];
                [v113 setObject:v47 forKeyedSubscript:v38];
              }

              else
              {
                v49 = v126->_loggingConnection;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  v50 = [v38 uuid];
                  v51 = v50;
                  *&v52 = COERCE_DOUBLE(@"no error");
                  if (a7)
                  {
                    v52 = *a7;
                  }

                  *buf = 138412546;
                  v144 = v50;
                  v145 = 2112;
                  v146 = *&v52;
                  _os_log_error_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Unable to create photosGraphData for memory (%@), error: %@", buf, 0x16u);
                }

                v109 = 0;
              }

              v13 = v116;
              v17 = v118;
              if (!v48)
              {
                break;
              }

              if (v120 == ++v37)
              {
                v53 = [obj countByEnumeratingWithState:&v132 objects:v142 count:16];
                v120 = v53;
                if (v53)
                {
                  goto LABEL_22;
                }

                break;
              }
            }

            v11 = v104;
            if (v109)
            {
              goto LABEL_67;
            }

LABEL_83:
            v87 = mach_absolute_time();
            numer = v136.numer;
            denom = v136.denom;
            v90 = v107;
            v91 = v90;
            if (v106 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v91, OS_SIGNPOST_INTERVAL_END, v103, "PGUpNextMusicCurator_BuildAndPersistRecipe", "", buf, 2u);
            }

            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v144 = "PGUpNextMusicCurator_BuildAndPersistRecipe";
              v145 = 2048;
              v146 = ((((v87 - v105) * numer) / denom) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v91, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v92 = mach_absolute_time();
            v93 = info.numer;
            v94 = info.denom;
            v95 = v17;
            v96 = v95;
            v27 = v124;
            if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v96, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
            }

            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v144 = "PGUpNextMusicCurator";
              v145 = 2048;
              v146 = ((((v92 - v115) * v93) / v94) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v96, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v54 = 0;
          }

          else
          {

LABEL_67:
            v129[0] = MEMORY[0x277D85DD0];
            v129[1] = 3221225472;
            v129[2] = __128__PGUpNextMusicCurator_curateMusicForUpNextMemoriesWithLocalIdentifiers_musicCurationOptions_photoLibrary_managerContext_error___block_invoke;
            v129[3] = &unk_278880B88;
            v130 = v114;
            v131 = v113;
            v54 = [v123 performChangesAndWait:v129 error:a7];
            v72 = mach_absolute_time();
            v73 = v136.numer;
            v74 = v136.denom;
            v75 = v107;
            v76 = v75;
            if (v106 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v76, OS_SIGNPOST_INTERVAL_END, v103, "PGUpNextMusicCurator_BuildAndPersistRecipe", "", buf, 2u);
            }

            if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v144 = "PGUpNextMusicCurator_BuildAndPersistRecipe";
              v145 = 2048;
              v146 = ((((v72 - v105) * v73) / v74) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v76, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v77 = mach_absolute_time();
            v78 = info.numer;
            v79 = info.denom;
            v80 = v17;
            v81 = v80;
            if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v81, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
            }

            if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v144 = "PGUpNextMusicCurator";
              v145 = 2048;
              v146 = ((((v77 - v115) * v78) / v79) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v81, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v27 = v124;
          }
        }

        else
        {
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            if (a7)
            {
              v100 = *a7;
            }

            else
            {
              v100 = @"no error";
            }

            *buf = 138412290;
            v144 = v100;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to curate flex music for memories, error: %@", buf, 0xCu);
          }

          v67 = mach_absolute_time();
          v68 = info.numer;
          v69 = info.denom;
          v70 = v17;
          v71 = v70;
          if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v71, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
          }

          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v144 = "PGUpNextMusicCurator";
            v145 = 2048;
            v146 = ((((v67 - v115) * v68) / v69) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v71, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v54 = 0;
        }

        v55 = v108;
      }

      else
      {
        v55 = v26;
        v61 = v126->_loggingConnection;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          if (a7)
          {
            v99 = *a7;
          }

          else
          {
            v99 = @"no error";
          }

          *buf = 138412290;
          v144 = v99;
          _os_log_error_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to curate music for memories, error: %@", buf, 0xCu);
        }

        v62 = mach_absolute_time();
        v63 = info.numer;
        v64 = info.denom;
        v65 = v17;
        v66 = v65;
        if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v66, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
        }

        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v144 = "PGUpNextMusicCurator";
          v145 = 2048;
          v146 = ((((v62 - v115) * v63) / v64) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v66, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v54 = 0;
      }
    }

    else
    {
      v55 = v26;
      v56 = mach_absolute_time();
      v57 = info.numer;
      v58 = info.denom;
      v59 = v17;
      v60 = v59;
      if (v119 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v60, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
      }

      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v144 = "PGUpNextMusicCurator";
        v145 = 2048;
        v146 = ((((v56 - v115) * v57) / v58) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v54 = 0;
    }
  }

  else
  {
    v54 = 1;
    v27 = v124;
  }

  v97 = *MEMORY[0x277D85DE8];
  return v54;
}

void __128__PGUpNextMusicCurator_curateMusicForUpNextMemoriesWithLocalIdentifiers_musicCurationOptions_photoLibrary_managerContext_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:{v7, v12}];
        v9 = [*(a1 + 40) objectForKeyedSubscript:v7];
        v10 = [MEMORY[0x277CD98E8] changeRequestForMemory:v7];
        [PGMemoryPhotoKitPersister setStoryColorGradeKindFromPhotosGraphProperties:v9 onMemoryChangeRequest:v10];
        [v10 setPhotosGraphData:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (PGUpNextMusicCurator)initWithLoggingConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PGUpNextMusicCurator;
  v6 = [(PGUpNextMusicCurator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingConnection, a3);
    v8 = [MEMORY[0x277D22C80] ignoreProgress];
    v7->_isAppleMusicSubscriber = [PGMusicCatalogMonitor checkMusicCatalogEligibilityWithProgressReporter:v8];
  }

  return v7;
}

+ (id)_baseMemoryFetchOptionsWithPhotoLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setWantsIncrementalChangeDetails:0];
  [v3 setIncludeLocalMemories:1];
  [v3 setIncludePendingMemories:1];

  return v3;
}

+ (id)_flexMusicCurationWithFeaturesByMemory:(id)a3 musicCurationOptions:(id)a4 musicCuratorContext:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 count])
  {
    v15 = [v11 allKeys];
    v16 = [v15 firstObject];
    v17 = [v16 photoLibrary];

    v18 = [MEMORY[0x277CBEAA8] date];
    v19 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:v17];
    v20 = [v12 recentlyUsedBundledSongIDs];
    [v19 addSongIDs:v20 date:v18];

    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__16965;
    v43 = __Block_byref_object_dispose__16966;
    v44 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__16965;
    v37 = __Block_byref_object_dispose__16966;
    v38 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __127__PGUpNextMusicCurator__flexMusicCurationWithFeaturesByMemory_musicCurationOptions_musicCuratorContext_progressReporter_error___block_invoke;
    v26[3] = &unk_278880BD8;
    v21 = v19;
    v27 = v21;
    v28 = v13;
    v29 = v14;
    v31 = &v33;
    v32 = &v39;
    v22 = v18;
    v30 = v22;
    [v11 enumerateKeysAndObjectsUsingBlock:v26];
    if (a7)
    {
      v23 = v34[5];
      if (v23)
      {
        *a7 = v23;
      }
    }

    v24 = v40[5];

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v24 = MEMORY[0x277CBEC10];
  }

  return v24;
}

void __127__PGUpNextMusicCurator__flexMusicCurationWithFeaturesByMemory_musicCurationOptions_musicCuratorContext_progressReporter_error___block_invoke(uint64_t *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 moodKeywords];
  v10 = v9;
  v11 = MEMORY[0x277CBEBF8];
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [PGFlexMusicCurationParameters alloc];
  v14 = [v7 suggestedMood];
  v15 = a1[4];
  v16 = [v7 uuid];
  v17 = [(PGFlexMusicCurationParameters *)v13 initWithMood:v14 moodKeywords:v12 recentlyUsedSongs:v15 entityUUID:v16 useMoodKeywords:0 features:v8 musicCuratorContext:a1[5]];

  v18 = a1[6];
  v19 = *(a1[8] + 8);
  obj = *(v19 + 40);
  v20 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v17 progressReporter:v18 error:&obj];
  objc_storeStrong((v19 + 40), obj);
  if (v20)
  {
    [a1[4] addFlexMusicCuration:v20 date:a1[7]];
    [*(*(a1[9] + 8) + 40) setObject:v20 forKeyedSubscript:v7];
  }

  else
  {
    v21 = *(a1[9] + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = 0;

    *a4 = 1;
  }
}

+ (id)_appleMusicCurationWithFeaturesByMemory:(id)a3 musicCuratorContext:(id)a4 managerContext:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 count])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__16965;
    v36 = __Block_byref_object_dispose__16966;
    v37 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [MEMORY[0x277CBEAA8] date];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__16965;
    v30 = __Block_byref_object_dispose__16966;
    v31 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __122__PGUpNextMusicCurator__appleMusicCurationWithFeaturesByMemory_musicCuratorContext_managerContext_progressReporter_error___block_invoke;
    v20[3] = &unk_278880BB0;
    v21 = v12;
    v22 = v14;
    v24 = &v26;
    v25 = &v32;
    v16 = v15;
    v23 = v16;
    [v11 enumerateKeysAndObjectsUsingBlock:v20];
    if (a7)
    {
      v17 = v27[5];
      if (v17)
      {
        *a7 = v17;
      }
    }

    v18 = v33[5];

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  return v18;
}

void __122__PGUpNextMusicCurator__appleMusicCurationWithFeaturesByMemory_musicCuratorContext_managerContext_progressReporter_error___block_invoke(uint64_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1[7] + 8);
  obj = *(v10 + 40);
  v11 = [PGMusicCurator curateMusicForFeatures:a3 context:v8 progressReporter:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = [a1[4] recentlyUsedSongs];
    [v12 addMusicCuration:v11 date:a1[6]];

    [*(*(a1[8] + 8) + 40) setObject:v11 forKeyedSubscript:v7];
  }

  else
  {
    v13 = *(a1[8] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    *a4 = 1;
  }
}

@end
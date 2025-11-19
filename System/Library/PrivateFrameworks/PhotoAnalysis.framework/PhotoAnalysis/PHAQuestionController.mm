@interface PHAQuestionController
- (BOOL)generateQuestionsWithOptions:(int64_t)a3 limit:(unint64_t)a4 handleQuestionVersionBump:(BOOL)a5 updateInvalidQuestions:(BOOL)a6 progress:(id)a7;
- (BOOL)generateQuestionsWithOptions:(int64_t)a3 progress:(id)a4;
- (BOOL)persistQuestions:(id)a3;
- (PHAQuestionController)initWithGraphManager:(id)a3;
- (double)importanceOfQuestionType:(id)a3;
- (id)allQuestionFactories;
- (id)questionFactoriesForOptions:(int64_t)a3;
- (id)selectedQuestionsFromSortedQuestionsByQuestionType:(id)a3 withLimit:(unint64_t)a4;
- (void)_handleKVSQuestionsUpdateIfNeededWithProgressBlock:(id)a3;
- (void)_handleQuestionVersionBumpIfNeededWithProgressBlock:(id)a3;
- (void)_syncAnsweredQuestionsWithProgressBlock:(id)a3;
- (void)_updateInvalidQuestionsWithProgressBlock:(id)a3;
- (void)assignScoreToQuestions:(id)a3;
- (void)removeCurrentKVSData;
@end

@implementation PHAQuestionController

- (void)removeCurrentKVSData
{
  [(NSUbiquitousKeyValueStore *)self->_store removeObjectForKey:@"PHQuestionKVSDataKey"];
  store = self->_store;

  [(NSUbiquitousKeyValueStore *)store synchronize];
}

- (void)_handleKVSQuestionsUpdateIfNeededWithProgressBlock:(id)a3
{
  v150 = *MEMORY[0x277D85DE8];
  v118 = a3;
  v4 = [(PHAQuestionController *)self loggingConnection];
  v5 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v6 = v4;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PhotosChallengeQuestionKVSUpdate", "", buf, 2u);
  }

  v8 = mach_absolute_time();
  v9 = [(PHAQuestionController *)self currentQuestionsKVSData];
  v10 = [v9 count];
  if (!v10)
  {
    goto LABEL_106;
  }

  v96 = v8;
  v97 = v5 - 1;
  spid = v5;
  v102 = v7;
  v140 = 0;
  v11 = 1.0 / v10;
  v115 = [MEMORY[0x277CBEB58] set];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v100 = v9;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v136 objects:v149 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v137;
    v15 = 0.0;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v137 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v136 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:@"syncedEntityIdentifier"];
        v19 = [v17 objectForKeyedSubscript:@"entityType"];
        v20 = [v19 unsignedIntValue];

        if (v18)
        {
          if ((v20 & 0xFFF7) == 0 || v20 == 3)
          {
            [v115 addObject:v18];
          }
        }

        v15 = v15 + v11 * 0.1;
        v118[2](v118, &v140, v15);
        v22 = v140;

        if (v22)
        {
          v23 = obj;
          goto LABEL_105;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v136 objects:v149 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0.0;
  }

  v23 = [(PGManager *)self->_graphManager photoLibrary];
  v24 = [v23 librarySpecificFetchOptions];
  v25 = MEMORY[0x277CD97A8];
  v26 = [v115 allObjects];
  v27 = [v25 fetchAssetsWithCloudIdentifiers:v26 options:v24];

  if (![v27 count])
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_389);
    }

    v28 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v143 = v115;
      _os_log_impl(&dword_22FA28000, v28, OS_LOG_TYPE_DEFAULT, "[Questions] No assets found with syncedEntityIdentifiers %@", buf, 0xCu);
    }
  }

  v118[2](v118, &v140, 0.2);
  if ((v140 & 1) == 0)
  {
    v91 = v24;
    v92 = v23;
    v29 = [MEMORY[0x277CBEB38] dictionary];
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v90 = v27;
    v30 = v27;
    v31 = [v30 countByEnumeratingWithState:&v132 objects:v148 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v133;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v133 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v132 + 1) + 8 * j);
          v36 = [v35 cloudIdentifier];
          v37 = [v35 uuid];
          [v29 setObject:v37 forKeyedSubscript:v36];
        }

        v32 = [v30 countByEnumeratingWithState:&v132 objects:v148 count:16];
      }

      while (v32);
    }

    v118[2](v118, &v140, 0.3);
    v23 = v92;
    if (v140)
    {
LABEL_103:

      v7 = v102;
      v27 = v90;
      v24 = v91;
      goto LABEL_104;
    }

    v93 = [MEMORY[0x277CBEB38] dictionary];
    v94 = [MEMORY[0x277CBEB18] array];
    v99 = [MEMORY[0x277CBEB18] array];
    v101 = [v92 librarySpecificFetchOptions];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v98 = obj;
    v104 = [v98 countByEnumeratingWithState:&v128 objects:v147 count:16];
    if (v104)
    {
      v103 = *v129;
      while (2)
      {
        for (k = 0; k != v104; ++k)
        {
          if (*v129 != v103)
          {
            objc_enumerationMutation(v98);
          }

          v39 = *(*(&v128 + 1) + 8 * k);
          v40 = objc_autoreleasePoolPush();
          v41 = [v39 objectForKeyedSubscript:@"syncedEntityIdentifier"];
          v42 = [v39 objectForKeyedSubscript:@"type"];
          v43 = [v42 unsignedIntValue];

          v44 = [v39 objectForKeyedSubscript:@"entityType"];
          v45 = [v44 unsignedIntValue];

          v46 = [v39 objectForKeyedSubscript:@"state"];
          v47 = [v46 unsignedIntValue];

          v48 = [v39 objectForKeyedSubscript:@"additionalInfo"];
          obja = [v39 objectForKeyedSubscript:@"creationDate"];
          v109 = v39;
          v49 = [v39 objectForKeyedSubscript:@"score"];
          [v49 doubleValue];
          v51 = v50;

          v52 = v41;
          v53 = v52;
          v54 = v45;
          if ((v45 & 0xFFF7) != 0 && (v55 = v52, v45 != 3) || ([v29 objectForKeyedSubscript:v52], v55 = objc_claimAutoreleasedReturnValue(), v53, v54 = v45, v55))
          {
            v107 = v45;
            v108 = v43;
            v111 = v47;
            v112 = v53;
            context = v40;
            v110 = k;
            v114 = v55;
            v105 = v43;
            v106 = v54;
            v56 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d AND entityType = %d AND entityIdentifier = %@", v43, v54, v55];
            [v101 setPredicate:v56];

            v57 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:v101 validQuestionsOnly:0];
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v58 = v57;
            v59 = [v58 countByEnumeratingWithState:&v124 objects:v146 count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v125;
LABEL_47:
              v62 = 0;
              while (1)
              {
                if (*v125 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                v63 = *(*(&v124 + 1) + 8 * v62);
                v64 = [v63 additionalInfo];
                if (![v64 count] && !objc_msgSend(v48, "count"))
                {
                  break;
                }

                v65 = [v63 additionalInfo];
                v66 = [v65 isEqualToDictionary:v48];

                if (v66)
                {
                  goto LABEL_62;
                }

                if (v60 == ++v62)
                {
                  v60 = [v58 countByEnumeratingWithState:&v124 objects:v146 count:16];
                  if (v60)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_55;
                }
              }

LABEL_62:
              v69 = v63;

              if (!v69)
              {
                goto LABEL_70;
              }

              v70 = [v69 state];
              if (v111 && v70 != v111)
              {
                v71 = [v69 uuid];
                if (__PXLog_genericOnceToken != -1)
                {
                  dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_398);
                }

                v72 = __PXLog_genericOSLog;
                if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v143 = v71;
                  _os_log_impl(&dword_22FA28000, v72, OS_LOG_TYPE_INFO, "[Questions] Updating question state for question %@", buf, 0xCu);
                }

                v73 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v111];
                [v93 setObject:v73 forKeyedSubscript:v71];

                [v94 addObject:v69];
                goto LABEL_75;
              }
            }

            else
            {
LABEL_55:

LABEL_70:
              if (__PXLog_genericOnceToken != -1)
              {
                dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_401);
              }

              v74 = __PXLog_genericOSLog;
              if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
              {
                *buf = 67109890;
                *v143 = v105;
                *&v143[4] = 2112;
                *&v143[6] = v114;
                *&v143[14] = 1024;
                *&v143[16] = v106;
                v144 = 2112;
                v145 = v48;
                _os_log_impl(&dword_22FA28000, v74, OS_LOG_TYPE_INFO, "[Questions] Syncing new question of type %d with entity identifier: %@ for entity type: %d and additionalInfo: %@", buf, 0x22u);
              }

              v75 = [v109 objectForKeyedSubscript:@"displayType"];
              v76 = [v75 unsignedIntValue];

              v71 = objc_alloc_init(MEMORY[0x277D3BC00]);
              [v71 setEntityIdentifier:v114];
              [v71 setType:v108];
              [v71 setState:v111];
              [v71 setEntityType:v107];
              [v71 setDisplayType:v76];
              [v71 setScore:v51];
              [v71 setAdditionalInfo:v48];
              [v71 setCreationDate:obja];
              [v99 addObject:v71];
              v69 = 0;
LABEL_75:
            }

            v15 = v15 + v11 * 0.6;
            v118[2](v118, &v140, v15);
            v77 = v140;

            if (v77)
            {

              objc_autoreleasePoolPop(context);
              v23 = v92;
              goto LABEL_102;
            }

            k = v110;
            v53 = v112;
            v40 = context;
            v68 = v114;
          }

          else
          {
            if (__PXLog_genericOnceToken != -1)
            {
              dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_392);
            }

            v67 = __PXLog_genericOSLog;
            if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v143 = v53;
              _os_log_impl(&dword_22FA28000, v67, OS_LOG_TYPE_DEFAULT, "[Questions] No entityIdentifier found for asset syncedEntityIdentifier %@", buf, 0xCu);
            }

            v68 = 0;
          }

          objc_autoreleasePoolPop(v40);
        }

        v104 = [v98 countByEnumeratingWithState:&v128 objects:v147 count:16];
        if (v104)
        {
          continue;
        }

        break;
      }
    }

    v23 = v92;
    if (![v99 count] && !objc_msgSend(v94, "count"))
    {
LABEL_96:
      v85 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v88 = v102;
      v89 = v88;
      if (v97 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22FA28000, v89, OS_SIGNPOST_INTERVAL_END, spid, "PhotosChallengeQuestionKVSUpdate", "", buf, 2u);
      }

      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v143 = "PhotosChallengeQuestionKVSUpdate";
        *&v143[8] = 2048;
        *&v143[10] = ((((v85 - v96) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22FA28000, v89, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v118[2](v118, &v140, 1.0);
LABEL_102:

      goto LABEL_103;
    }

    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = __76__PHAQuestionController__handleKVSQuestionsUpdateIfNeededWithProgressBlock___block_invoke_403;
    v120[3] = &unk_2788B2E50;
    v121 = v94;
    v122 = v93;
    v123 = v99;
    v119 = 0;
    v78 = [v92 performChangesAndWait:v120 error:&v119];
    v79 = v119;
    if (v79)
    {
      if (__PXLog_genericOnceToken != -1)
      {
        dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_405);
      }

      v80 = __PXLog_genericOSLog;
      if (!os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      v81 = v80;
      v82 = [v79 description];
      *buf = 138412290;
      *v143 = v82;
      _os_log_error_impl(&dword_22FA28000, v81, OS_LOG_TYPE_ERROR, "[Questions] Error performing library changes for updated questions: %@", buf, 0xCu);
    }

    else
    {
      v83 = @"NO";
      if (v78)
      {
        v83 = @"YES";
      }

      v81 = v83;
      if (__PXLog_genericOnceToken != -1)
      {
        dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_408);
      }

      v84 = __PXLog_genericOSLog;
      if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v143 = v81;
        _os_log_impl(&dword_22FA28000, v84, OS_LOG_TYPE_INFO, "[Questions] Succeeded updating questions: %@", buf, 0xCu);
      }
    }

LABEL_95:
    goto LABEL_96;
  }

LABEL_104:

LABEL_105:
  v9 = v100;

LABEL_106:
}

void __76__PHAQuestionController__handleKVSQuestionsUpdateIfNeededWithProgressBlock___block_invoke_403(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v41 count:16];
  v4 = 0x277CD9000uLL;
  if (v3)
  {
    v5 = v3;
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = [MEMORY[0x277CD9978] changeRequestForQuestion:v8];
        v10 = *(a1 + 40);
        v11 = [v8 uuid];
        v12 = [v10 objectForKeyedSubscript:v11];
        v13 = [v12 unsignedIntValue];

        [v9 setState:v13];
      }

      v5 = [v2 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 48);
  v30 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v30)
  {
    v29 = *v33;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * j);
        v31 = *(v4 + 2424);
        v16 = [v15 entityIdentifier];
        v17 = [v15 type];
        v18 = [v15 state];
        v19 = [v15 entityType];
        v20 = [v15 displayType];
        [v15 score];
        v22 = v21;
        [v15 additionalInfo];
        v24 = v23 = v4;
        v25 = [v15 creationDate];
        LOWORD(v27) = [v15 questionVersion];
        v26 = [v31 creationRequestForQuestionWithEntityIdentifier:v16 type:v17 state:v18 entityType:v19 displayType:v20 score:v24 additionalInfo:v22 creationDate:v25 questionVersion:v27];

        v4 = v23;
      }

      v30 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v30);
  }
}

uint64_t __76__PHAQuestionController__handleKVSQuestionsUpdateIfNeededWithProgressBlock___block_invoke_406()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __76__PHAQuestionController__handleKVSQuestionsUpdateIfNeededWithProgressBlock___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __76__PHAQuestionController__handleKVSQuestionsUpdateIfNeededWithProgressBlock___block_invoke_399()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __76__PHAQuestionController__handleKVSQuestionsUpdateIfNeededWithProgressBlock___block_invoke_396()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __76__PHAQuestionController__handleKVSQuestionsUpdateIfNeededWithProgressBlock___block_invoke_390()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __76__PHAQuestionController__handleKVSQuestionsUpdateIfNeededWithProgressBlock___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (void)_syncAnsweredQuestionsWithProgressBlock:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v65 = a3;
  v4 = [(PHAQuestionController *)self loggingConnection];
  v5 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v6 = v4;
  v7 = v6;
  v60 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PhotosChallengeQuestionKVSSync", "", buf, 2u);
  }

  spid = v5;

  v56 = mach_absolute_time();
  v61 = self;
  v8 = [(PGManager *)self->_graphManager photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"entityType != %d", 7];
  [v9 setPredicate:v10];

  v11 = [MEMORY[0x277CD9970] fetchAnsweredQuestionsWithOptions:v9 validQuestionsOnly:1];
  v12 = [v11 count];
  if (!v12)
  {
    goto LABEL_42;
  }

  v13 = v12;
  v57 = v9;
  v58 = v8;
  v59 = v7;
  v76 = 0;
  v67 = [v8 librarySpecificFetchOptions];
  [v67 setFetchLimit:1];
  [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v64 = v63 = v11;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (!v14)
  {
    goto LABEL_36;
  }

  v15 = v14;
  v16 = 1.0 / v13;
  v17 = *v73;
  v62 = *MEMORY[0x277CD9C90];
  v18 = 0.0;
  v66 = *v73;
  do
  {
    v19 = 0;
    v68 = v15;
    do
    {
      if (*v73 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v72 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      v22 = [v20 entityIdentifier];
      if ([v20 entityType] && objc_msgSend(v20, "entityType") != 3 && objc_msgSend(v20, "entityType") != 8)
      {
        v28 = v22;
        goto LABEL_21;
      }

      if ([v20 type] == 18)
      {
        goto LABEL_34;
      }

      v23 = MEMORY[0x277CD97A8];
      v24 = [v20 entityIdentifier];
      v82 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      v26 = [v23 fetchAssetsWithLocalIdentifiers:v25 options:v67];
      v27 = [v26 firstObject];

      v28 = [v27 cloudIdentifier];

      if ([v28 length])
      {

LABEL_21:
        v33 = [v20 additionalInfo];
        v34 = v33;
        v35 = MEMORY[0x277CBEC10];
        if (v33)
        {
          v35 = v33;
        }

        v36 = v35;

        context = v21;
        if ([v20 type] == 29)
        {
          v37 = [v36 mutableCopy];
          [v37 removeObjectForKey:v62];

          v36 = v37;
        }

        v79[0] = v28;
        v78[0] = @"syncedEntityIdentifier";
        v78[1] = @"type";
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v20, "type")}];
        v79[1] = v38;
        v78[2] = @"entityType";
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v20, "entityType")}];
        v79[2] = v39;
        v78[3] = @"state";
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v20, "state")}];
        v79[3] = v40;
        v78[4] = @"displayType";
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v20, "displayType")}];
        v79[4] = v41;
        v79[5] = v36;
        v71 = v36;
        v78[5] = @"additionalInfo";
        v78[6] = @"score";
        v42 = MEMORY[0x277CCABB0];
        [v20 score];
        v43 = [v42 numberWithDouble:?];
        v79[6] = v43;
        v78[7] = @"creationDate";
        v44 = [v20 creationDate];
        v79[7] = v44;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:8];

        if ([MEMORY[0x277CCAC58] propertyList:v45 isValidForFormat:200])
        {
          [v64 addObject:v45];
          v18 = v16 + v18;
          v65[2](v65, &v76, v18);
          v11 = v63;
          if (v76)
          {

            objc_autoreleasePoolPop(context);
            v8 = v58;
            v7 = v59;
            goto LABEL_41;
          }
        }

        else
        {
          if (__PXLog_genericOnceToken != -1)
          {
            dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_380);
          }

          v46 = __PXLog_genericOSLog;
          if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
          {
            v47 = v46;
            v48 = [v20 type];
            v49 = [v20 uuid];
            *buf = 67109378;
            *v81 = v48;
            *&v81[4] = 2112;
            *&v81[6] = v49;
            _os_log_error_impl(&dword_22FA28000, v47, OS_LOG_TYPE_ERROR, "[Questions] questionDataFormatValid == NO, not syncing question. Question Type: %d. Question UUID: %@", buf, 0x12u);
          }
        }

        v15 = v68;
        v17 = v66;
        v21 = context;
        goto LABEL_33;
      }

      v71 = v27;
      if (__PXLog_genericOnceToken != -1)
      {
        dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_354);
      }

      v29 = __PXLog_genericOSLog;
      if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [v27 uuid];
        v32 = [v20 uuid];
        *buf = 138412546;
        *v81 = v31;
        *&v81[8] = 2112;
        *&v81[10] = v32;
        _os_log_impl(&dword_22FA28000, v30, OS_LOG_TYPE_DEFAULT, "[Questions] cloudIdentifier not found for asset %@, not syncing question %@", buf, 0x16u);
      }

LABEL_33:

      v22 = v28;
LABEL_34:

      objc_autoreleasePoolPop(v21);
      ++v19;
    }

    while (v15 != v19);
    v15 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
  }

  while (v15);
LABEL_36:

  [(NSUbiquitousKeyValueStore *)v61->_store setArray:v64 forKey:@"PHQuestionKVSDataKey"];
  [(NSUbiquitousKeyValueStore *)v61->_store synchronizeWithCompletionHandler:&__block_literal_global_384];
  v50 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v7 = v59;
  v53 = v59;
  v54 = v53;
  if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v54, OS_SIGNPOST_INTERVAL_END, spid, "PhotosChallengeQuestionKVSSync", "", buf, 2u);
  }

  v8 = v58;
  v11 = v63;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v81 = "PhotosChallengeQuestionKVSSync";
    *&v81[8] = 2048;
    *&v81[10] = ((((v50 - v56) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22FA28000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

LABEL_41:

  v9 = v57;
LABEL_42:
}

void __65__PHAQuestionController__syncAnsweredQuestionsWithProgressBlock___block_invoke_381(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_386);
    }

    v3 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 description];
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_22FA28000, v4, OS_LOG_TYPE_ERROR, "[Questions] Store synchronize error: %@", &v6, 0xCu);
    }
  }
}

uint64_t __65__PHAQuestionController__syncAnsweredQuestionsWithProgressBlock___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __65__PHAQuestionController__syncAnsweredQuestionsWithProgressBlock___block_invoke_378()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __65__PHAQuestionController__syncAnsweredQuestionsWithProgressBlock___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (void)_updateInvalidQuestionsWithProgressBlock:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self->_graphManager photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];
  v39 = 0;
  v7 = [MEMORY[0x277CD9970] fetchUnansweredQuestionsWithOptions:v6 validQuestionsOnly:0];
  v4[2](v4, &v39, 0.2);
  if ((v39 & 1) == 0)
  {
    v29 = v6;
    v8 = v7;
    v9 = [MEMORY[0x277CD9970] questionsWithValidEntitiesFromQuestions:v7 photoLibrary:v5];
    v10 = [MEMORY[0x277CBEB58] set];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v35 + 1) + 8 * i) uuid];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v13);
    }

    v4[2](v4, &v39, 0.4);
    v6 = v29;
    v7 = v8;
    if ((v39 & 1) == 0)
    {
      v17 = [v5 librarySpecificFetchOptions];
      v18 = [MEMORY[0x277CD9970] fetchInvalidatedQuestionsWithOptions:v17];
      v4[2](v4, &v39, 0.6);
      if ((v39 & 1) == 0)
      {
        v19 = [MEMORY[0x277CD9970] questionsWithValidEntitiesFromQuestions:v18 photoLibrary:v5];
        v4[2](v4, &v39, 0.8);
        if ((v39 & 1) == 0)
        {
          if ([v7 count] || objc_msgSend(v19, "count"))
          {
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __66__PHAQuestionController__updateInvalidQuestionsWithProgressBlock___block_invoke;
            v31[3] = &unk_2788B2E50;
            v32 = v7;
            v33 = v10;
            v27 = v19;
            v34 = v19;
            v30 = 0;
            v20 = [v5 performChangesAndWait:v31 error:&v30];
            v28 = v30;
            if (v28)
            {
              if (__PXLog_genericOnceToken != -1)
              {
                dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_345);
              }

              v21 = __PXLog_genericOSLog;
              if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
              {
                v22 = v21;
                v25 = [v28 description];
                *buf = 138412290;
                v41 = v25;
                _os_log_error_impl(&dword_22FA28000, v22, OS_LOG_TYPE_ERROR, "[Questions] Error performing library changes to invalidate questions: %@", buf, 0xCu);
              }
            }

            else
            {
              v23 = @"NO";
              if (v20)
              {
                v23 = @"YES";
              }

              v26 = v23;
              if (__PXLog_genericOnceToken != -1)
              {
                dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_348);
              }

              v24 = __PXLog_genericOSLog;
              if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v41 = v26;
                _os_log_impl(&dword_22FA28000, v24, OS_LOG_TYPE_INFO, "[Questions] Succeeded invalidating questions: %@", buf, 0xCu);
              }
            }

            v19 = v27;
          }

          v4[2](v4, &v39, 1.0);
        }
      }
    }
  }
}

void __66__PHAQuestionController__updateInvalidQuestionsWithProgressBlock___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 uuid];
        LOBYTE(v8) = [v8 containsObject:v9];

        if ((v8 & 1) == 0)
        {
          v10 = [MEMORY[0x277CD9978] changeRequestForQuestion:v7];
          [v10 setState:4];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [MEMORY[0x277CD9978] changeRequestForQuestion:{*(*(&v17 + 1) + 8 * j), v17}];
        [v16 setState:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

uint64_t __66__PHAQuestionController__updateInvalidQuestionsWithProgressBlock___block_invoke_346()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __66__PHAQuestionController__updateInvalidQuestionsWithProgressBlock___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (void)_handleQuestionVersionBumpIfNeededWithProgressBlock:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self->_graphManager photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"questionVersion < %d", self->_currentQuestionVersion];
  [v6 setPredicate:v7];

  v8 = [MEMORY[0x277CD9970] fetchUnansweredQuestionsWithOptions:v6 validQuestionsOnly:0];
  v16 = 0;
  v4[2](v4, &v16, 0.5);
  if ((v16 & 1) == 0)
  {
    if ([v8 count])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __77__PHAQuestionController__handleQuestionVersionBumpIfNeededWithProgressBlock___block_invoke;
      v14[3] = &unk_2788B2E78;
      v15 = v8;
      v13 = 0;
      v9 = [v5 performChangesAndWait:v14 error:&v13];
      v10 = v13;
      if (v9)
      {
        if (__PXLog_genericOnceToken != -1)
        {
          dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_340_8879);
        }

        v11 = __PXLog_genericOSLog;
        if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22FA28000, v11, OS_LOG_TYPE_INFO, "[Questions] Succeeded handling question version bump", buf, 2u);
        }
      }

      else
      {
        if (__PXLog_genericOnceToken != -1)
        {
          dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_343);
        }

        v12 = __PXLog_genericOSLog;
        if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_error_impl(&dword_22FA28000, v12, OS_LOG_TYPE_ERROR, "[Questions] Failed to delete unanswered questions below current version with error: %@", buf, 0xCu);
        }
      }
    }

    v4[2](v4, &v16, 1.0);
  }
}

uint64_t __77__PHAQuestionController__handleQuestionVersionBumpIfNeededWithProgressBlock___block_invoke_341()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __77__PHAQuestionController__handleQuestionVersionBumpIfNeededWithProgressBlock___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (id)allQuestionFactories
{
  v36[29] = *MEMORY[0x277D85DE8];
  v3 = [(PGManager *)self->_graphManager workingContext];
  v35 = [objc_alloc(MEMORY[0x277D3B640]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[0] = v35;
  v34 = [objc_alloc(MEMORY[0x277D3BA50]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[1] = v34;
  v33 = [objc_alloc(MEMORY[0x277D3BB98]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[2] = v33;
  v32 = [objc_alloc(MEMORY[0x277D3BB20]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[3] = v32;
  v31 = [objc_alloc(MEMORY[0x277D3BA90]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[4] = v31;
  v30 = [objc_alloc(MEMORY[0x277D3BB88]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[5] = v30;
  v29 = [objc_alloc(MEMORY[0x277D3BC20]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[6] = v29;
  v28 = [objc_alloc(MEMORY[0x277D3B9E8]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[7] = v28;
  v27 = [objc_alloc(MEMORY[0x277D3BBE0]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[8] = v27;
  v26 = [objc_alloc(MEMORY[0x277D3B910]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[9] = v26;
  v25 = [objc_alloc(MEMORY[0x277D3B600]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[10] = v25;
  v24 = [objc_alloc(MEMORY[0x277D3BA88]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[11] = v24;
  v23 = [objc_alloc(MEMORY[0x277D3BB50]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[12] = v23;
  v22 = [objc_alloc(MEMORY[0x277D3B900]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[13] = v22;
  v21 = [objc_alloc(MEMORY[0x277D3BA70]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[14] = v21;
  v20 = [objc_alloc(MEMORY[0x277D3BA68]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[15] = v20;
  v19 = [objc_alloc(MEMORY[0x277D3BC08]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[16] = v19;
  v18 = [objc_alloc(MEMORY[0x277D3BB40]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[17] = v18;
  v17 = [objc_alloc(MEMORY[0x277D3BBC0]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[18] = v17;
  v16 = [objc_alloc(MEMORY[0x277D3BBC8]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[19] = v16;
  v15 = [objc_alloc(MEMORY[0x277D3B648]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[20] = v15;
  v4 = [objc_alloc(MEMORY[0x277D3BC48]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[21] = v4;
  v5 = [objc_alloc(MEMORY[0x277D3B608]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[22] = v5;
  v6 = [objc_alloc(MEMORY[0x277D3B6A8]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[23] = v6;
  v7 = [objc_alloc(MEMORY[0x277D3BC28]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[24] = v7;
  v8 = [objc_alloc(MEMORY[0x277D3BA38]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[25] = v8;
  v9 = [objc_alloc(MEMORY[0x277D3B9E0]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[26] = v9;
  v10 = [objc_alloc(MEMORY[0x277D3B6B8]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[27] = v10;
  v11 = [objc_alloc(MEMORY[0x277D3BBE8]) initWithWorkingContext:v3 questionVersion:self->_currentQuestionVersion];
  v36[28] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:29];

  v13 = [MEMORY[0x277CBEB98] setWithArray:v12];

  return v13;
}

- (id)questionFactoriesForOptions:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(PHAQuestionController *)self allQuestionFactories];
    v5 = v4;
    if (a3 == 536838143)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            if (([v12 questionOptions] & a3) != 0)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] set];
  }

  return v6;
}

- (double)importanceOfQuestionType:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_questionTypeImportanceByQuestionType objectForKeyedSubscript:v4];
  v6 = [v4 unsignedIntegerValue];
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
    if (v6 <= 0x1Eu && ((0x7FFFFDFFu >> v6) & 1) != 0)
    {
      v9 = off_2788B2EB8[v6 & 0x1F];
      v10 = [(PGTrialSession *)self->_trialSession levelForFactorName:v9 withNamespaceType:2];
      v11 = v10;
      if (v10)
      {
        [v10 doubleValue];
        v8 = v12;
      }

      else
      {
        if (__PXLog_genericOnceToken != -1)
        {
          dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_303);
        }

        v13 = __PXLog_genericOSLog;
        if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = v9;
          _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_INFO, "nil level found for factor %@", &v16, 0xCu);
        }
      }
    }

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    [(NSMutableDictionary *)self->_questionTypeImportanceByQuestionType setObject:v14 forKeyedSubscript:v4];
  }

  return v8;
}

uint64_t __50__PHAQuestionController_importanceOfQuestionType___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)persistQuestions:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGManager *)self->_graphManager photoLibrary];
  v6 = [MEMORY[0x277CBEAA8] date];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__PHAQuestionController_persistQuestions___block_invoke;
  v18[3] = &unk_2788B2E50;
  v7 = v4;
  v19 = v7;
  v8 = v6;
  v20 = v8;
  v21 = self;
  v17 = 0;
  v9 = [v5 performChangesAndWait:v18 error:&v17];
  v10 = v17;
  if (!v10)
  {
    v14 = @"NO";
    if (v9)
    {
      v14 = @"YES";
    }

    v12 = v14;
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_301);
    }

    v15 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_22FA28000, v15, OS_LOG_TYPE_INFO, "[Questions] Succeeded persisting questions: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (__PXLog_genericOnceToken != -1)
  {
    dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_292);
  }

  v11 = __PXLog_genericOSLog;
  if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = [v10 description];
    *buf = 138412290;
    v23 = v13;
    _os_log_error_impl(&dword_22FA28000, v12, OS_LOG_TYPE_ERROR, "[Questions] Error performing library changes for questions: %@", buf, 0xCu);

LABEL_12:
  }

  return v9;
}

void __42__PHAQuestionController_persistQuestions___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) persistWithCreationDate:*(a1 + 40) questionVersion:{*(*(a1 + 48) + 8), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t __42__PHAQuestionController_persistQuestions___block_invoke_299()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __42__PHAQuestionController_persistQuestions___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (void)assignScoreToQuestions:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v10, "type")}];
        v12 = [v4 objectForKeyedSubscript:v11];
        v13 = v12;
        if (v12)
        {
          [v12 addObject:v10];
        }

        else
        {
          v14 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
          [v4 setObject:v14 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localFactoryScore" ascending:0];
  v24 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__PHAQuestionController_assignScoreToQuestions___block_invoke;
  v18[3] = &unk_2788B2E28;
  v19 = v16;
  v17 = v16;
  [v4 enumerateKeysAndObjectsUsingBlock:v18];
}

void __48__PHAQuestionController_assignScoreToQuestions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  [v9 sortUsingDescriptors:*(a1 + 32)];
  v4 = [v9 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 1.0 / (v4 + 1);
    do
    {
      v8 = [v9 objectAtIndexedSubscript:v6];
      [v8 setScore:v7 * v5];

      ++v6;
      --v5;
    }

    while (v5);
  }
}

- (id)selectedQuestionsFromSortedQuestionsByQuestionType:(id)a3 withLimit:(unint64_t)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 allKeys];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __86__PHAQuestionController_selectedQuestionsFromSortedQuestionsByQuestionType_withLimit___block_invoke;
    v59[3] = &unk_2788B2E00;
    v59[4] = self;
    v9 = [v8 sortedArrayUsingComparator:v59];
    v10 = [v9 mutableCopy];

    v11 = [MEMORY[0x277CBEB18] array];
    for (i = v10; ; v10 = i)
    {
      v12 = [v7 allValues];
      v13 = [v12 count];

      if (!v13)
      {
        break;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (!v15)
      {

LABEL_49:
        if (__PXLog_genericOnceToken != -1)
        {
          dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_287);
        }

        v41 = __PXLog_genericOSLog;
        if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22FA28000, v41, OS_LOG_TYPE_ERROR, "[Questions] All requested question types have 0 importance", buf, 2u);
        }

        break;
      }

      v16 = v15;
      v17 = *v56;
      v18 = 0.0;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(PHAQuestionController *)self importanceOfQuestionType:*(*(&v55 + 1) + 8 * j)];
          v18 = v18 + v20;
        }

        v16 = [v14 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v16);

      if (v18 == 0.0)
      {
        goto LABEL_49;
      }

      v45 = [MEMORY[0x277CBEB58] set];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v21 = v14;
      v43 = [v21 countByEnumeratingWithState:&v50 objects:v61 count:16];
      if (v43)
      {
        v44 = *v51;
        v22 = a4;
        while (2)
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v51 != v44)
            {
              objc_enumerationMutation(v21);
            }

            v24 = *(*(&v50 + 1) + 8 * k);
            [(PHAQuestionController *)self importanceOfQuestionType:v24];
            v26 = v25 / v18;
            if (v25 / v18 <= 0.0)
            {
              v27 = 0;
            }

            else
            {
              v27 = fmax(floor(v26 * v22), 1.0);
            }

            v28 = [v7 objectForKeyedSubscript:v24];
            v29 = [v28 count];
            if (v27 >= v29)
            {
              v30 = v29;
            }

            else
            {
              v30 = v27;
            }

            if (v30)
            {
              while (1)
              {
                v31 = [v28 firstObject];
                [v28 removeObjectAtIndex:0];
                [v11 addObject:v31];

                if (!--a4)
                {
                  break;
                }

                if (!--v30)
                {
                  goto LABEL_26;
                }
              }

              v10 = i;
              goto LABEL_43;
            }

LABEL_26:
            v32 = [v28 count];
            if (v26 == 0.0 || v32 == 0)
            {
              [v45 addObject:v24];
            }
          }

          v43 = [v21 countByEnumeratingWithState:&v50 objects:v61 count:16];
          if (v43)
          {
            continue;
          }

          break;
        }
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v34 = v45;
      v35 = [v34 countByEnumeratingWithState:&v46 objects:v60 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v47;
        do
        {
          for (m = 0; m != v36; ++m)
          {
            if (*v47 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v46 + 1) + 8 * m);
            [v7 removeObjectForKey:v39];
            [v21 removeObject:v39];
          }

          v36 = [v34 countByEnumeratingWithState:&v46 objects:v60 count:16];
        }

        while (v36);
      }
    }

LABEL_43:
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

uint64_t __86__PHAQuestionController_selectedQuestionsFromSortedQuestionsByQuestionType_withLimit___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 importanceOfQuestionType:a2];
  v8 = v7;
  [*(a1 + 32) importanceOfQuestionType:v6];
  v10 = v9;

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v13 = [v11 compare:v12];

  return v13;
}

uint64_t __86__PHAQuestionController_selectedQuestionsFromSortedQuestionsByQuestionType_withLimit___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)generateQuestionsWithOptions:(int64_t)a3 limit:(unint64_t)a4 handleQuestionVersionBump:(BOOL)a5 updateInvalidQuestions:(BOOL)a6 progress:(id)a7
{
  v7 = a6;
  v8 = a5;
  v98 = *MEMORY[0x277D85DE8];
  v11 = a7;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke;
  v82[3] = &unk_2788B2DB0;
  v84 = &v86;
  v85 = 0;
  v58 = v11;
  v83 = v58;
  [(PHAQuestionController *)self _handleKVSQuestionsUpdateIfNeededWithProgressBlock:v82];
  if (*(v87 + 24) == 1)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_251);
    }

    v12 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_INFO, "[Questions] Question generation stop requested by progress handler.", buf, 2u);
    }

LABEL_21:
    LOBYTE(v15) = 0;
    goto LABEL_68;
  }

  if (v8)
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_252;
    v78[3] = &unk_2788B2DB0;
    v81 = 0x3FB999999999999ALL;
    v79 = v58;
    v80 = &v86;
    [(PHAQuestionController *)self _handleQuestionVersionBumpIfNeededWithProgressBlock:v78];
    if (*(v87 + 24) == 1)
    {
      if (__PXLog_genericOnceToken != -1)
      {
        dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_255_8920);
      }

      v13 = __PXLog_genericOSLog;
      if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_INFO, "[Questions] Question generation stop requested by progress handler.", buf, 2u);
      }

      goto LABEL_21;
    }
  }

  if (v7)
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_256;
    v74[3] = &unk_2788B2DB0;
    v77 = 0x3FC999999999999ALL;
    v75 = v58;
    v76 = &v86;
    [(PHAQuestionController *)self _updateInvalidQuestionsWithProgressBlock:v74];
    if (*(v87 + 24) == 1)
    {
      if (__PXLog_genericOnceToken != -1)
      {
        dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_259);
      }

      v14 = __PXLog_genericOSLog;
      if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "[Questions] Question generation stop requested by progress handler.", buf, 2u);
      }

      goto LABEL_21;
    }
  }

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_260;
  v70[3] = &unk_2788B2DB0;
  v73 = 0x3FD3333333333333;
  v57 = v58;
  v71 = v57;
  v72 = &v86;
  [(PHAQuestionController *)self _syncAnsweredQuestionsWithProgressBlock:v70];
  if (*(v87 + 24) == 1)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_263_8923);
    }

    v16 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v16, OS_LOG_TYPE_INFO, "[Questions] Question generation stop requested by progress handler.", buf, 2u);
    }

    LOBYTE(v15) = 0;
  }

  else
  {
    v17 = [(PHAQuestionController *)self loggingConnection];
    spid = os_signpost_id_generate(v17);
    info = 0;
    mach_timebase_info(&info);
    v18 = v17;
    v19 = v18;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PhotosChallengeQuestionGeneration", "", buf, 2u);
    }

    v52 = v19;

    v20 = mach_absolute_time();
    v54 = [(PHAQuestionController *)self questionFactoriesForOptions:a3];
    if ([v54 count])
    {
      v56 = [MEMORY[0x277CBEB38] dictionary];
      v51 = v20;
      v21 = [v54 count];
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v22 = v54;
      v23 = 0.0;
      v24 = [v22 countByEnumeratingWithState:&v65 objects:v97 count:16];
      if (v24)
      {
        v25 = 0.6 / v21;
        v26 = *v66;
        v27 = 0.4;
        obj = v22;
        while (2)
        {
          v28 = 0;
          do
          {
            if (*v66 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v65 + 1) + 8 * v28);
            Current = CFAbsoluteTimeGetCurrent();
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_267;
            v60[3] = &unk_2788B2DD8;
            v63 = v27;
            v64 = v25;
            v61 = v57;
            v62 = &v86;
            v31 = [v29 generateQuestionsWithLimit:a4 progressBlock:v60];
            v15 = [v31 mutableCopy];

            if (*(v87 + 24) == 1)
            {
              if (__PXLog_genericOnceToken != -1)
              {
                dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_270_8929);
              }

              v48 = __PXLog_genericOSLog;
              if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22FA28000, v48, OS_LOG_TYPE_INFO, "[Questions] Question generation stop requested by progress handler.", buf, 2u);
              }

              LOBYTE(v15) = 0;
              v40 = obj;
              goto LABEL_60;
            }

            v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localFactoryScore" ascending:0];
            v96 = v32;
            v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
            [v15 sortUsingDescriptors:v33];

            v34 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v29, "questionType")}];
            [v56 setObject:v15 forKeyedSubscript:v34];

            v35 = [v15 count];
            if (__PXLog_genericOnceToken != -1)
            {
              dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_279_8931);
            }

            v36 = __PXLog_genericOSLog;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = objc_opt_class();
              v38 = NSStringFromClass(v37);
              v39 = CFAbsoluteTimeGetCurrent();
              *buf = 138412802;
              v91 = v38;
              v92 = 2048;
              v93 = v39 - Current;
              v94 = 2048;
              v95 = v35;
              _os_log_impl(&dword_22FA28000, v36, OS_LOG_TYPE_INFO, "[Performance] %@ took %.3fs to generate %tu questions", buf, 0x20u);
            }

            v27 = v25 + v27;
            *&v23 += v35;
            ++v28;
          }

          while (v24 != v28);
          v22 = obj;
          v24 = [obj countByEnumeratingWithState:&v65 objects:v97 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      *&self->_numberOfQuestionsGenerated = v23;
      v40 = [(PHAQuestionController *)self selectedQuestionsFromSortedQuestionsByQuestionType:v56 withLimit:a4];
      [(PHAQuestionController *)self assignScoreToQuestions:v40];
      LODWORD(v15) = [(PHAQuestionController *)self persistQuestions:v40];
      if (v15)
      {
        v41 = [v40 count];
        if (__PXLog_genericOnceToken != -1)
        {
          dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_282);
        }

        v42 = __PXLog_genericOSLog;
        if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v91 = v41;
          v92 = 2048;
          v93 = v23;
          _os_log_impl(&dword_22FA28000, v42, OS_LOG_TYPE_INFO, "[Questions] Generated %lu questions (out of %lu available)", buf, 0x16u);
        }
      }

      v43 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v46 = v52;
      v47 = v46;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22FA28000, v47, OS_SIGNPOST_INTERVAL_END, spid, "PhotosChallengeQuestionGeneration", "", buf, 2u);
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v91 = "PhotosChallengeQuestionGeneration";
        v92 = 2048;
        v93 = ((((v43 - v51) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22FA28000, v47, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

LABEL_60:
    }

    else
    {
      if (__PXLog_genericOnceToken != -1)
      {
        dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_266_8927);
      }

      v49 = __PXLog_genericOSLog;
      if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v91) = a3;
        _os_log_impl(&dword_22FA28000, v49, OS_LOG_TYPE_INFO, "[Questions] No question factories for options: %d", buf, 8u);
      }

      LOBYTE(v15) = 0;
    }
  }

LABEL_68:
  _Block_object_dispose(&v86, 8);

  return v15;
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 48) + a3 * 0.1);
  if (*a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_252(uint64_t a1, _BYTE *a2, double a3)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 48) + a3 * 0.1);
  *(*(*(a1 + 40) + 8) + 24) = *a2;
  return result;
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_256(uint64_t a1, _BYTE *a2, double a3)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 48) + a3 * 0.1);
  if (*a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_260(uint64_t a1, _BYTE *a2, double a3)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 48) + a3 * 0.1);
  if (*a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_267(uint64_t a1, _BYTE *a2, double a3)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 48) + a3 * *(a1 + 56));
  if (*a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_280()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_277()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_2_268()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_264()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_2_261()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_2_257()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_2_253()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __118__PHAQuestionController_generateQuestionsWithOptions_limit_handleQuestionVersionBump_updateInvalidQuestions_progress___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)generateQuestionsWithOptions:(int64_t)a3 progress:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__PHAQuestionController_generateQuestionsWithOptions_progress___block_invoke;
  v28[3] = &unk_2788B2D60;
  v30 = v32;
  v7 = v6;
  v29 = v7;
  v31 = &v33;
  [(PHAQuestionController *)self _handleQuestionVersionBumpIfNeededWithProgressBlock:v28];
  if (*(v34 + 24) == 1)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_8944);
    }

    v8 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v8, OS_LOG_TYPE_INFO, "[Questions] Question generation stop requested by progress handler.", buf, 2u);
    }

    v9 = 0;
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__PHAQuestionController_generateQuestionsWithOptions_progress___block_invoke_241;
    v24[3] = &unk_2788B2D60;
    v26 = v32;
    v10 = v7;
    v25 = v10;
    v27 = &v33;
    [(PHAQuestionController *)self _updateInvalidQuestionsWithProgressBlock:v24];
    if (*(v34 + 24) == 1)
    {
      if (__PXLog_genericOnceToken != -1)
      {
        dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_244);
      }

      v11 = __PXLog_genericOSLog;
      if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v11, OS_LOG_TYPE_INFO, "[Questions] Question generation stop requested by progress handler.", buf, 2u);
      }

      v9 = 0;
    }

    else
    {
      v12 = [(PGManager *)self->_graphManager photoLibrary];
      v13 = [v12 librarySpecificFetchOptions];

      [v13 setShouldPrefetchCount:1];
      v14 = [MEMORY[0x277CD9970] fetchUnansweredQuestionsWithOptions:v13 validQuestionsOnly:1];
      v15 = [v14 count];

      v16 = [(PGTrialSession *)self->_trialSession levelForFactorName:@"QuestionGenerationLimit" withNamespaceType:2];
      [v16 doubleValue];
      v18 = v17;

      if (v15 == v18)
      {
        if (__PXLog_genericOnceToken != -1)
        {
          dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_248_8948);
        }

        v19 = __PXLog_genericOSLog;
        v9 = 1;
        if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v38 = v15;
          _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_INFO, "[Questions] 0 questions generated since already at unanswered question limit of %d", buf, 8u);
        }
      }

      else
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __63__PHAQuestionController_generateQuestionsWithOptions_progress___block_invoke_249;
        v21[3] = &unk_2788B2D88;
        v23 = v32;
        v22 = v10;
        v9 = [(PHAQuestionController *)self generateQuestionsWithOptions:a3 limit:v18 handleQuestionVersionBump:0 updateInvalidQuestions:0 progress:v21];
      }
    }
  }

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v33, 8);

  return v9;
}

uint64_t __63__PHAQuestionController_generateQuestionsWithOptions_progress___block_invoke(void *a1, _BYTE *a2, double a3)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) + a3 * 0.1;
  result = (*(a1[4] + 16))(*(*(a1[5] + 8) + 24));
  *(*(a1[6] + 8) + 24) = *a2;
  return result;
}

uint64_t __63__PHAQuestionController_generateQuestionsWithOptions_progress___block_invoke_241(void *a1, _BYTE *a2, double a3)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) + a3 * 0.1;
  result = (*(a1[4] + 16))(*(*(a1[5] + 8) + 24));
  *(*(a1[6] + 8) + 24) = *a2;
  return result;
}

uint64_t __63__PHAQuestionController_generateQuestionsWithOptions_progress___block_invoke_246()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __63__PHAQuestionController_generateQuestionsWithOptions_progress___block_invoke_2_242()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __63__PHAQuestionController_generateQuestionsWithOptions_progress___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (PHAQuestionController)initWithGraphManager:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = PHAQuestionController;
  v6 = [(PHAQuestionController *)&v18 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD80]) initWithStoreIdentifier:@"com.apple.photoanalysisd" type:1];
    store = v6->_store;
    v6->_store = v7;

    objc_storeStrong(&v6->_graphManager, a3);
    v9 = os_log_create("com.apple.photoanalysisd", "photosChallenge");
    loggingConnection = v6->_loggingConnection;
    v6->_loggingConnection = v9;

    v11 = [MEMORY[0x277D3BC18] newTrialSession];
    trialSession = v6->_trialSession;
    v6->_trialSession = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    questionTypeImportanceByQuestionType = v6->_questionTypeImportanceByQuestionType;
    v6->_questionTypeImportanceByQuestionType = v13;

    v15 = [(PGTrialSession *)v6->_trialSession levelForFactorName:@"CurrentQuestionVersion" withNamespaceType:2];
    [v15 doubleValue];
    v6->_currentQuestionVersion = v16;
  }

  return v6;
}

@end
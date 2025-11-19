@interface PXPeopleSuggestionDataSource
+ (void)_mergeAndSaveUserFeedbackForPersons:(id)a3 personChangeRequest:(id)a4;
- (BOOL)cancelSuggestionForPerson:(id)a3 withToken:(id)a4 error:(id *)a5;
- (PXPeopleSuggestionDataSource)initWithFlowType:(unint64_t)a3;
- (id)commitSuggestionsForPerson:(id)a3 withConfirmedSuggestions:(id)a4 andRejectedSuggestions:(id)a5;
- (id)fetchAndCacheMergeCandidatesForPerson:(id)a3;
- (id)suggestionsForPerson:(id)a3 withConfirmedSuggestions:(id)a4 andRejectedSuggestions:(id)a5 completion:(id)a6;
- (void)photoLibraryDidChange:(id)a3;
- (void)setFlowType:(unint64_t)a3;
- (void)startListeningForLibraryChanges;
- (void)stopListeningForLibraryChanges;
@end

@implementation PXPeopleSuggestionDataSource

- (void)photoLibraryDidChange:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPeopleSuggestionDataSource *)self mergeCandidateFetchResult];
  v6 = [v4 changeDetailsForFetchResult:v5];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 objectID];
          if ([v4 keyFaceChangedForPersonOID:v14])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v23 = @"PXPeopleUpdatedKeyFacePersonsKey";
      v24 = v7;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__PXPeopleSuggestionDataSource_photoLibraryDidChange___block_invoke;
      block[3] = &unk_1E774C648;
      v18 = v15;
      v16 = v15;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __54__PXPeopleSuggestionDataSource_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"PXPeopleSuggestionManagerKeyFaceUpdateNotification" object:0 userInfo:*(a1 + 32)];
}

- (void)stopListeningForLibraryChanges
{
  if ([(PXPeopleSuggestionDataSource *)self flowType]== 1)
  {
    v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [v3 unregisterChangeObserver:self];
  }
}

- (void)startListeningForLibraryChanges
{
  if ([(PXPeopleSuggestionDataSource *)self flowType]== 1)
  {
    v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [v3 registerChangeObserver:self];
  }
}

- (id)commitSuggestionsForPerson:(id)a3 withConfirmedSuggestions:(id)a4 andRejectedSuggestions:(id)a5
{
  v161 = *MEMORY[0x1E69E9840];
  v96 = a3;
  v95 = a4;
  v94 = a5;
  v97 = +[PXPeopleUISettings sharedInstance];
  if (([v97 enableBootstrapDemoMode] & 1) != 0 || objc_msgSend(v97, "useBootstrapMockDataSource"))
  {
    v8 = v96;
  }

  else
  {
    v9 = PLUIGetLog();
    v10 = os_signpost_id_generate(v9);
    v11 = v9;
    v12 = v11;
    spid = v10;
    v90 = v10 - 1;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "commitSuggestionsForPerson", "", buf, 2u);
    }

    v91 = v12;

    objc_opt_class();
    v13 = objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v78 = [MEMORY[0x1E696AAA8] currentHandler];
      [v78 handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionDataSource.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"[person isKindOfClass:personClass]"}];
    }

    if ([v95 count])
    {
      v14 = [v95 firstObject];
      if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        v79 = [MEMORY[0x1E696AAA8] currentHandler];
        [v79 handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionDataSource.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"[confirmedSuggestion isKindOfClass:suggestionClass] || [confirmedSuggestion isKindOfClass:personClass]"}];
      }
    }

    if ([v94 count])
    {
      v15 = [v94 firstObject];
      if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        v80 = [MEMORY[0x1E696AAA8] currentHandler];
        [v80 handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionDataSource.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"[rejectedSuggestion isKindOfClass:suggestionClass] || [rejectedSuggestion isKindOfClass:personClass]"}];
      }
    }

    v92 = v96;
    if (v92)
    {
      v103 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v95, "count")}];
      v100 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v95, "count")}];
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v94, "count")}];
      v102 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v94, "count")}];
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      obj = v95;
      v17 = [obj countByEnumeratingWithState:&v145 objects:v160 count:16];
      if (v17)
      {
        v18 = *v146;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v146 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v145 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {
              [v103 addObject:v20];
            }

            else if (objc_opt_isKindOfClass())
            {
              v21 = [v20 person];
              [v100 addObject:v21];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v145 objects:v160 count:16];
        }

        while (v17);
      }

      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v22 = v94;
      v23 = [v22 countByEnumeratingWithState:&v141 objects:v159 count:16];
      if (v23)
      {
        v24 = *v142;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v142 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v141 + 1) + 8 * j);
            isKindOfClass = objc_opt_isKindOfClass();
            v28 = v16;
            if ((isKindOfClass & 1) == 0)
            {
              v29 = objc_opt_isKindOfClass();
              v28 = v102;
              if ((v29 & 1) == 0)
              {
                continue;
              }
            }

            [v28 addObject:v26];
          }

          v23 = [v22 countByEnumeratingWithState:&v141 objects:v159 count:16];
        }

        while (v23);
      }

      v89 = [v102 _pl_map:&__block_literal_global_224_51677];
      v30 = [v103 count];
      v31 = [v100 count];
      v32 = [v16 count];
      v87 = [v89 count];
      v85 = v32 != 0;
      *buf = 0;
      v136 = buf;
      v137 = 0x3032000000;
      v138 = __Block_byref_object_copy__51678;
      v139 = __Block_byref_object_dispose__51679;
      v140 = 0;
      v33 = PLUIGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *v151 = 134218752;
        v152 = v30;
        v153 = 2048;
        v154 = v32;
        v155 = 2048;
        v156 = v31;
        v157 = 2048;
        v158 = v87;
        _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_INFO, "[People][Commit] %lu / %lu persons, %lu / %lu suggestions", v151, 0x2Au);
      }

      if (v30 != 0 || v31 != 0 || v32 != 0 || v87 != 0)
      {
        v84 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
        v101 = objc_alloc_init(MEMORY[0x1E695DF90]);
        if (PFOSVariantHasInternalDiagnostics())
        {
          v83 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (v30)
          {
            v34 = [v103 _pl_map:&__block_literal_global_229_51682];
            [v83 addObjectsFromArray:v34];
          }

          if (v32)
          {
            v35 = [v16 _pl_map:&__block_literal_global_231];
            [v83 addObjectsFromArray:v35];
          }

          if ([v83 count])
          {
            v36 = v91;
            v37 = v36;
            if (v90 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
            {
              *v151 = 0;
              _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v37, OS_SIGNPOST_INTERVAL_BEGIN, spid, "fetchMergeCandidateWithConfidencePersons", "", v151, 2u);
            }

            v81 = v37;

            v82 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v92];
            [v82 setIncludeOnlyPersonsWithVisibleKeyFaces:1];
            v38 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID IN %@", v83];
            [v82 setInternalPredicate:v38];

            v39 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
            [v82 setIncludedDetectionTypes:v39];

            [MEMORY[0x1E6978980] fetchMergeCandidateWithConfidencePersonsForPerson:v92 options:v82];
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v98 = v132 = 0u;
            v40 = [v98 countByEnumeratingWithState:&v131 objects:v150 count:16];
            if (v40)
            {
              v41 = *v132;
              do
              {
                for (k = 0; k != v40; ++k)
                {
                  if (*v132 != v41)
                  {
                    objc_enumerationMutation(v98);
                  }

                  v43 = *(*(&v131 + 1) + 8 * k);
                  v44 = MEMORY[0x1E696AD98];
                  [v43 mergeCandidateConfidence];
                  v45 = [v44 numberWithDouble:?];
                  v46 = [v43 uuid];
                  [v101 setObject:v45 forKeyedSubscript:v46];
                }

                v40 = [v98 countByEnumeratingWithState:&v131 objects:v150 count:16];
              }

              while (v40);
            }

            [MEMORY[0x1E6978980] fetchMergeCandidatePersonsForPerson:v92 options:v82];
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v47 = v128 = 0u;
            v48 = [v47 countByEnumeratingWithState:&v127 objects:v149 count:16];
            if (v48)
            {
              v49 = *v128;
              do
              {
                for (m = 0; m != v48; ++m)
                {
                  if (*v128 != v49)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v51 = *(*(&v127 + 1) + 8 * m);
                  v52 = MEMORY[0x1E696AD98];
                  [v51 mergeCandidateConfidence];
                  v53 = [v52 numberWithDouble:?];
                  v54 = [v51 uuid];
                  [v101 setObject:v53 forKeyedSubscript:v54];
                }

                v48 = [v47 countByEnumeratingWithState:&v127 objects:v149 count:16];
              }

              while (v48);
            }

            v55 = PLUIGetLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = [v101 count];
              *v151 = 134217984;
              v152 = v56;
              _os_log_impl(&dword_1A3C1C000, v55, OS_LOG_TYPE_INFO, "[People][Commit] fetched %lu candidates with confidence", v151, 0xCu);
            }

            v57 = v81;
            v58 = v57;
            if (v90 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v57))
            {
              *v151 = 0;
              _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v58, OS_SIGNPOST_INTERVAL_END, spid, "fetchMergeCandidateWithConfidencePersons", "", v151, 2u);
            }
          }
        }

        v59 = v91;
        v60 = v59;
        if (v90 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
        {
          *v151 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v60, OS_SIGNPOST_INTERVAL_BEGIN, spid, "updateDatabaseWithSuggestions", "", v151, 2u);
        }

        v118[0] = MEMORY[0x1E69E9820];
        v118[1] = 3221225472;
        v118[2] = __107__PXPeopleSuggestionDataSource_commitSuggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions___block_invoke_236;
        v118[3] = &unk_1E7732150;
        v61 = v103;
        v119 = v61;
        v99 = v100;
        v120 = v99;
        v62 = v92;
        v121 = v62;
        v125 = v87 != 0;
        v122 = v89;
        v126 = v85;
        v86 = v16;
        v123 = v86;
        v124 = buf;
        v117 = 0;
        [v84 performChangesAndWait:v118 error:&v117];
        v63 = v117;
        v64 = v60;
        v65 = v64;
        if (v90 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
        {
          *v151 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v65, OS_SIGNPOST_INTERVAL_END, spid, "updateDatabaseWithSuggestions", "", v151, 2u);
        }

        v66 = [(PXPeopleSuggestionDataSource *)self flowType];
        if (!v66)
        {
          v67 = [MEMORY[0x1E695DFD8] setWithArray:v61];
          v68 = [PXPeopleConfirmationInfo alloc];
          v69 = [(PXPeopleConfirmationInfo *)v68 initWithSourcePerson:v62 targetPerson:*(v136 + 5) confirmedSuggestions:v67];
          v70 = [MEMORY[0x1E696AD88] defaultCenter];
          [v70 postNotificationName:@"PXPeopleConfirmationDidFinish" object:v69];
        }

        if (v63)
        {
          v71 = PLUIGetLog();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            *v151 = 138412290;
            v152 = v63;
            _os_log_impl(&dword_1A3C1C000, v71, OS_LOG_TYPE_DEBUG, "Persisting confirmation choices failed: %@", v151, 0xCu);
          }
        }

        v72 = dispatch_get_global_queue(17, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __107__PXPeopleSuggestionDataSource_commitSuggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions___block_invoke_242;
        block[3] = &unk_1E77321E8;
        v106 = v99;
        v107 = v61;
        v108 = v86;
        v109 = v62;
        v114 = v66;
        v110 = v102;
        v111 = v101;
        v115 = v87;
        v116 = v13;
        v112 = obj;
        v113 = v22;
        v73 = v101;
        dispatch_async(v72, block);
      }

      v74 = v91;
      v75 = v74;
      if (v90 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
      {
        *v151 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v75, OS_SIGNPOST_INTERVAL_END, spid, "commitSuggestionsForPerson", "", v151, 2u);
      }

      v76 = *(v136 + 5);
      if (!v76)
      {
        v76 = v92;
      }

      v8 = v76;
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __107__PXPeopleSuggestionDataSource_commitSuggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions___block_invoke_236(uint64_t a1)
{
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count") + objc_msgSend(*(a1 + 40), "count") + 1}];
  [v11 addObjectsFromArray:*(a1 + 32)];
  [v11 addObjectsFromArray:*(a1 + 40)];
  [v11 addObject:*(a1 + 48)];
  v2 = [*(a1 + 32) count];
  if (v2 + [*(a1 + 40) count])
  {
    v4 = [*(a1 + 48) verifiedType];
    v5 = MEMORY[0x1E6978990];
    if (v4 >= 1)
    {
      v6 = [*(a1 + 48) localIdentifier];
      v7 = [v5 changeRequestForMergingPersons:v11 nominalTargetIdentifier:v6];

      goto LABEL_7;
    }

    v3 = [MEMORY[0x1E6978990] changeRequestForMergingPersons:v11];
  }

  else
  {
    v3 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 48)];
  }

  v7 = v3;
LABEL_7:
  if ([*(a1 + 48) verifiedType] != 1)
  {
    [v7 setVerifiedType:1];
  }

  if (*(a1 + 80) == 1)
  {
    [v7 addRejectedFaces:*(a1 + 56) forCluster:1];
  }

  if (*(a1 + 81) == 1)
  {
    [v7 rejectMergeCandidatePersons:*(a1 + 64)];
  }

  [PXPeopleSuggestionDataSource _mergeAndSaveUserFeedbackForPersons:v11 personChangeRequest:v7];
  v8 = [v7 targetPerson];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __107__PXPeopleSuggestionDataSource_commitSuggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions___block_invoke_242(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v75;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v75 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v74 + 1) + 8 * i) faceCount];
      }

      v4 = [v2 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  v70 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v71;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v71 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v70 + 1) + 8 * j) faceCount];
      }

      v10 = [v8 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_246];
  v14 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_248];
  v15 = [*(a1 + 40) filteredArrayUsingPredicate:v13];
  v16 = [*(a1 + 40) filteredArrayUsingPredicate:v14];
  v60 = v13;
  v17 = [*(a1 + 48) filteredArrayUsingPredicate:v13];
  v59 = v14;
  v18 = [*(a1 + 48) filteredArrayUsingPredicate:v14];
  v19 = [v15 valueForKeyPath:@"@sum.faceCount"];
  v52 = [v19 integerValue];

  v20 = [v17 valueForKeyPath:@"@sum.faceCount"];
  v51 = [v20 integerValue];

  v21 = [v16 valueForKeyPath:@"@sum.faceCount"];
  v22 = [v21 integerValue];

  v23 = [v18 valueForKeyPath:@"@sum.faceCount"];
  v24 = [v23 integerValue];

  v80[0] = @"mergeCandidatesVerifiedConfirmed";
  v58 = v15;
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  v81[0] = v54;
  v80[1] = @"mergeCandidatesVerifiedRejected";
  v56 = v17;
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
  v81[1] = v53;
  v80[2] = @"mergeCandidatesUnverifiedConfirmed";
  v57 = v16;
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
  v81[2] = v25;
  v80[3] = @"mergeCandidatesUnverifiedRejected";
  v55 = v18;
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
  v81[3] = v26;
  v80[4] = @"facesVerifiedConfirmed";
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:v52];
  v81[4] = v27;
  v80[5] = @"facesVerifiedRejected";
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:v51];
  v81[5] = v28;
  v80[6] = @"facesUnverifiedConfirmed";
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
  v81[6] = v29;
  v80[7] = @"facesUnverifiedRejected";
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
  v81[7] = v30;
  v80[8] = @"type";
  v31 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 56), "detectionType")}];
  v81[8] = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:9];

  v33 = *(a1 + 96);
  if (v33)
  {
    v34 = v32;
    v35 = 0x1E696A000;
    if (v33 == 1)
    {
      [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.bootstrap.mergeCandidates.confirmedAndRejectedCounts" withPayload:v32];
    }
  }

  else
  {
    v34 = v32;
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.confirmAdditional.mergeCandidates.confirmedAndRejectedCounts" withPayload:v32];
    v36 = MEMORY[0x1E6991F28];
    v78[0] = @"suggestionsConfirmed";
    v35 = 0x1E696A000uLL;
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v79[0] = v37;
    v78[1] = @"suggestionsRejected";
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 64), "count")}];
    v79[1] = v38;
    v78[2] = @"facesConfirmed";
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    v79[2] = v39;
    v78[3] = @"facesRejected";
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 104)];
    v79[3] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:4];
    [v36 sendEvent:@"com.apple.photos.CPAnalytics.people.confirmAdditional.personSuggestions.confirmedAndRejectedCounts" withPayload:v41];
  }

  if ([*(a1 + 72) count] || objc_msgSend(*(a1 + 32), "count") || objc_msgSend(*(a1 + 64), "count"))
  {
    v42 = [*(v35 + 3480) numberWithInteger:{objc_msgSend(*(a1 + 56), "faceCount")}];
    v43 = [*(v35 + 3480) numberWithShort:{objc_msgSend(*(a1 + 56), "detectionType")}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __107__PXPeopleSuggestionDataSource_commitSuggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions___block_invoke_4;
    aBlock[3] = &unk_1E7732198;
    v66 = *(a1 + 72);
    v44 = v42;
    v67 = v44;
    v68 = *(a1 + 56);
    v45 = v43;
    v69 = v45;
    v46 = _Block_copy(aBlock);
    v46[2](v46, @"confirmed", *(a1 + 40));
    v46[2](v46, @"rejected", *(a1 + 48));
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __107__PXPeopleSuggestionDataSource_commitSuggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions___block_invoke_5;
    v61[3] = &unk_1E77321C0;
    v47 = *(a1 + 112);
    v63 = v44;
    v64 = v47;
    v62 = v45;
    v48 = v44;
    v49 = v45;
    v50 = _Block_copy(v61);
    v50[2](v50, @"confirmed", *(a1 + 80));
    v50[2](v50, @"rejected", *(a1 + 88));
  }
}

void __107__PXPeopleSuggestionDataSource_commitSuggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11)
        {
          v25[0] = @"personUUID";
          v25[1] = @"action";
          v26[0] = v10;
          v26[1] = v20;
          v26[2] = v11;
          v25[2] = @"confidence";
          v25[3] = @"candidateFaceCount";
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "faceCount")}];
          v15 = *(a1 + 40);
          v14 = *(a1 + 48);
          v26[3] = v13;
          v26[4] = v15;
          v25[4] = @"targetFaceCount";
          v25[5] = @"targetAgeType";
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v14, "ageType")}];
          v25[6] = @"type";
          v17 = *(a1 + 56);
          v26[5] = v16;
          v26[6] = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];

          [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.candidateWithConfidence" withPayload:v18];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }
}

void __107__PXPeopleSuggestionDataSource_commitSuggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        if (objc_opt_isKindOfClass())
        {
          v23 = MEMORY[0x1E6991F28];
          v29[0] = @"action";
          v29[1] = @"type";
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          v30[0] = v21;
          v30[1] = v10;
          v30[2] = v11;
          v29[2] = @"targetFaceCount";
          v29[3] = @"suggestionFaceCount";
          v12 = MEMORY[0x1E696AD98];
          v13 = v9;
          v24 = [v13 person];
          v14 = [v12 numberWithInteger:{objc_msgSend(v24, "faceCount")}];
          v30[3] = v14;
          v29[4] = @"similarityScore";
          v15 = MEMORY[0x1E696AD98];
          [v13 similarityScore];
          v16 = [v15 numberWithDouble:?];
          v30[4] = v16;
          v29[5] = @"personUUID";
          v17 = [v13 person];
          [v17 uuid];
          v19 = v18 = v6;
          v30[5] = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:6];
          [v23 sendEvent:@"com.apple.photos.CPAnalytics.people.confirmAdditional.suggestion" withPayload:v20];

          v6 = v18;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }
}

- (BOOL)cancelSuggestionForPerson:(id)a3 withToken:(id)a4 error:(id *)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  [v5 cancel];
  v6 = [v5 token];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v7 cancelOperationsWithIdentifiers:v9 reply:&__block_literal_global_51812];
  }

  return 1;
}

- (id)suggestionsForPerson:(id)a3 withConfirmedSuggestions:(id)a4 andRejectedSuggestions:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionDataSource.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"[person isKindOfClass:personClass]"}];
  }

  if ([v12 count])
  {
    v17 = [v12 firstObject];
    if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionDataSource.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"[confirmedSuggestion isKindOfClass:suggestionClass] || [confirmedSuggestion isKindOfClass:personClass]"}];
    }
  }

  if ([v13 count])
  {
    v18 = [v13 firstObject];
    if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:a2 object:self file:@"PXPeopleSuggestionDataSource.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"[rejectedSuggestion isKindOfClass:suggestionClass] || [rejectedSuggestion isKindOfClass:personClass]"}];
    }
  }

  v19 = v11;
  v20 = PLUIGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEBUG, "Suggestions UI: Fetching suggestions", buf, 2u);
  }

  v21 = objc_alloc_init(PXSuggestionToken);
  objc_initWeak(buf, self);
  v22 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PXPeopleSuggestionDataSource_suggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions_completion___block_invoke;
  block[3] = &unk_1E77320E8;
  objc_copyWeak(v40, buf);
  block[4] = self;
  v35 = v19;
  v36 = v12;
  v37 = v13;
  v39 = v14;
  v23 = v21;
  v38 = v23;
  v40[1] = v15;
  v40[2] = v16;
  v24 = v14;
  v25 = v13;
  v26 = v12;
  v27 = v19;
  dispatch_async(v22, block);

  v28 = v38;
  v29 = v23;

  objc_destroyWeak(v40);
  objc_destroyWeak(buf);

  return v29;
}

void __112__PXPeopleSuggestionDataSource_suggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions_completion___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained suggestionFetchType];

  if (v3 != 1)
  {
    v4 = [*(a1 + 32) mergeCandidates];

    if (!v4)
    {
      v5 = PLUIGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: Fetching merge candidates from database", buf, 2u);
      }

      v6 = objc_loadWeakRetained((a1 + 80));
      v7 = [v6 fetchAndCacheMergeCandidatesForPerson:*(a1 + 40)];
    }
  }

  v8 = objc_loadWeakRetained((a1 + 80));
  v9 = [v8 mergeCandidates];
  v10 = [v9 count];

  if (v10)
  {
    v11 = objc_loadWeakRetained((a1 + 80));
    v12 = [v11 mergeCandidates];
    v13 = [v12 mutableCopy];

    [v13 removeObjectsInArray:*(a1 + 48)];
    [v13 removeObjectsInArray:*(a1 + 56)];
    v14 = objc_loadWeakRetained((a1 + 80));
    [v14 setMergeCandidates:v13];
  }

  v15 = objc_loadWeakRetained((a1 + 80));
  v16 = [v15 mergeCandidates];

  if ([v16 count] && *(a1 + 72))
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEBUG, "Suggestions UI: Suggestion dataSource returning merge candidates", buf, 2u);
    }

    v18 = *(*(a1 + 72) + 16);
    goto LABEL_19;
  }

  if (([*(a1 + 64) canceled] & 1) != 0 || !v3)
  {
    v21 = *(a1 + 72);
    if (v21)
    {
      v18 = *(v21 + 16);
LABEL_19:
      v18();
    }
  }

  else
  {
    v19 = [*(a1 + 48) arrayByAddingObjectsFromArray:*(a1 + 56)];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __112__PXPeopleSuggestionDataSource_suggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions_completion___block_invoke_212;
    v62[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v62[4] = *(a1 + 88);
    v48 = v19;
    v20 = [v19 _pl_filter:v62];
    v49 = v16;
    v46 = v20;
    if ([v20 count])
    {
      v50 = [MEMORY[0x1E69787C8] fetchKeyFaceByPersonLocalIdentifierForPersons:v20 options:{0, v20}];
    }

    else
    {
      v50 = MEMORY[0x1E695E0F8];
    }

    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 48), "count", v46)}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v23 = *(a1 + 48);
    v24 = [v23 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v59;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v59 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v58 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v22 addObject:v28];
          }

          else if (objc_opt_isKindOfClass())
          {
            v29 = v28;
            v30 = [v29 localIdentifier];
            v31 = [v50 objectForKeyedSubscript:v30];

            if (v31)
            {
              v32 = [objc_alloc(MEMORY[0x1E69789A0]) initWithKeyFace:v31 person:v29 confirmed:1 similarityScore:0.0];
              [v22 addObject:v32];
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v25);
    }

    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v34 = *(a1 + 56);
    v35 = [v34 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v55;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v55 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v54 + 1) + 8 * j);
          if (objc_opt_isKindOfClass())
          {
            [v33 addObject:v39];
          }

          else if (objc_opt_isKindOfClass())
          {
            v40 = v39;
            v41 = [v40 localIdentifier];
            v42 = [v50 objectForKeyedSubscript:v41];

            if (v42)
            {
              v43 = [objc_alloc(MEMORY[0x1E69789A0]) initWithKeyFace:v42 person:v40 confirmed:0 similarityScore:0.0];
              [v33 addObject:v43];
            }
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v36);
    }

    v44 = MEMORY[0x1E6978980];
    v45 = *(a1 + 40);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __112__PXPeopleSuggestionDataSource_suggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions_completion___block_invoke_2;
    v51[3] = &unk_1E77320C0;
    v52 = *(a1 + 64);
    v53 = *(a1 + 72);
    [*(a1 + 64) setToken:{objc_msgSend(v44, "personSuggestionsForPerson:confirmedPersonSuggestions:rejectedPersonSuggestions:completion:", v45, v22, v33, v51)}];

    v16 = v49;
  }
}

void __112__PXPeopleSuggestionDataSource_suggestionsForPerson_withConfirmedSuggestions_andRejectedSuggestions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) canceled] & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, v4);
    }
  }
}

- (void)setFlowType:(unint64_t)a3
{
  self->_flowType = a3;
  if (a3 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (a3)
    {
      return;
    }

    v3 = 2;
  }

  [(PXPeopleSuggestionDataSource *)self setSuggestionFetchType:v3];
}

- (id)fetchAndCacheMergeCandidatesForPerson:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPeopleSuggestionDataSource *)self mergeCandidateFetchResult];
  if (!v5)
  {
    v6 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v4];
    [v6 setIncludeOnlyPersonsWithVisibleKeyFaces:1];
    v18[0] = *MEMORY[0x1E6978F38];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v6 setFetchPropertySets:v7];

    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
    v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:{0, v8}];
    v17[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [v6 setSortDescriptors:v10];

    v11 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [v6 setIncludedDetectionTypes:v11];

    v12 = +[PXPeopleUISettings sharedInstance];
    LODWORD(v9) = [v12 useBootstrapMockDataSource];

    if (v9)
    {
      [v6 setFetchLimit:9];
      [MEMORY[0x1E6978980] fetchPersonsWithOptions:v6];
    }

    else
    {
      [MEMORY[0x1E6978980] fetchMergeCandidatePersonsForPerson:v4 options:v6];
    }
    v5 = ;
    [(PXPeopleSuggestionDataSource *)self setMergeCandidateFetchResult:v5];
    v13 = MEMORY[0x1E695DEC8];
    v14 = [v5 fetchedObjects];
    v15 = [v13 arrayWithArray:v14];
    [(PXPeopleSuggestionDataSource *)self setMergeCandidates:v15];
  }

  return v5;
}

- (PXPeopleSuggestionDataSource)initWithFlowType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = PXPeopleSuggestionDataSource;
  v4 = [(PXPeopleSuggestionDataSource *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_initialPageLimit = 1;
    [(PXPeopleSuggestionDataSource *)v4 setFlowType:a3];
  }

  return v5;
}

+ (void)_mergeAndSaveUserFeedbackForPersons:(id)a3 personChangeRequest:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        [v12 fetchPropertySetsIfNeeded];
        v13 = [v12 userFeedbackProperties];
        v14 = [v13 userFeedback];

        if (v14)
        {
          v9 = [MEMORY[0x1E6978B00] mergeFeedbackType:objc_msgSend(v14 withOtherFeedbackType:{"type"), v9}];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = [v6 targetPerson];
  v16 = [v15 userFeedbackProperties];
  v17 = [v16 userFeedback];
  v18 = [v17 type];

  if (v9 != v18)
  {
    v19 = [objc_alloc(MEMORY[0x1E6978B00]) initWithType:v9 feature:0 context:0];
    [v6 setUserFeedback:v19];
  }
}

@end
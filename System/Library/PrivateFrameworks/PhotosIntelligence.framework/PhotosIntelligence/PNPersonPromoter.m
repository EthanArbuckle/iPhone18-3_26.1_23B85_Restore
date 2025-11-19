@interface PNPersonPromoter
+ (BOOL)_writePersonPromoterInformation:(id)a3 atURL:(id)a4;
+ (BOOL)hasProcessedForLibrary:(id)a3;
+ (id)_personPromoterInformationAtURL:(id)a3;
+ (id)requestSuggestedMePersonIdentifierAtURL:(id)a3 withError:(id *)a4;
+ (unint64_t)numberOfFacesProcessedOnLastRunAtURL:(id)a3;
+ (void)cumulativeNormalDistributionWithData:(id)a3 sigmaFactor:(double)a4 usingBlock:(id)a5;
+ (void)probabilityDensityNormalDistributionWithData:(id)a3 sigmaFactor:(double)a4 usingBlock:(id)a5;
+ (void)setProcessed:(BOOL)a3 forLibrary:(id)a4;
- (BOOL)_personClusterShouldBeVerified:(id)a3;
- (BOOL)_promoteInterestingPersons:(id)a3 updateBlock:(id)a4;
- (BOOL)isInQuiescentState;
- (BOOL)promoteUnverifiedPersonsWithUpdateBlock:(id)a3;
- (PNPersonPromoter)initWithPhotoLibrary:(id)a3 andDelegate:(id)a4;
- (PNPersonPromoterDelegate)delegate;
- (double)_personTimespan:(id)a3;
- (id)_graphOrderedPersonsWithPersons:(id)a3 withAllPersons:(id)a4 updateBlock:(id)a5;
- (id)_interestingPersonsFromVerifiedPersons:(id)a3 unverifiedPersons:(id)a4 updateBlock:(id)a5;
- (id)_newPersonDeduperWithVerifiedPersons:(id)a3;
- (id)_promoteUnverifiedPersons:(id)a3 withVerifiedPersons:(id)a4 updateBlock:(id)a5;
- (id)_sortedSocialGroups:(id)a3 withPersonsByLocalIdentifier:(id)a4;
- (id)_sortedUnverifiedPersonsToDedupForVerifiedPersons:(id)a3 type:(unint64_t)a4 updateBlock:(id)a5;
- (id)_verifiedPersonsToProcess;
- (id)advancedStatus;
- (id)evaluatePersonPromoterWithUpdateBlock:(id)a3;
- (id)interestingPersonsFromPersons:(id)a3 detectionType:(signed __int16)a4 updateBlock:(id)a5;
- (void)incrementMetricForKey:(id)a3 withValue:(unint64_t)a4;
- (void)reportMetrics;
@end

@implementation PNPersonPromoter

- (PNPersonPromoterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_sortedSocialGroups:(id)a3 withPersonsByLocalIdentifier:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:0 capacity:{objc_msgSend(v5, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v8)
  {
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v13)
        {
          v14 = *v39;
          v15 = 0.0;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [v6 objectForKeyedSubscript:*(*(&v38 + 1) + 8 * j)];
              [v17 interestingScore];
              v19 = v18;

              v15 = v15 + v19;
            }

            v13 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v13);
        }

        else
        {
          v15 = 0.0;
        }

        v20 = [v12 count];
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:v15 / v20];
        [v7 setObject:v21 forKey:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v8);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __69__PNPersonPromoter__sortedSocialGroups_withPersonsByLocalIdentifier___block_invoke;
  v36[3] = &unk_1E82A1FA8;
  v22 = v7;
  v37 = v22;
  v23 = [obj sortedArrayUsingComparator:v36];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__688;
  v34 = __Block_byref_object_dispose__689;
  v35 = [v23 firstObject];
  if ([v31[5] count] >= 3)
  {
    v24 = v31[5];
    v31[5] = 0;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __69__PNPersonPromoter__sortedSocialGroups_withPersonsByLocalIdentifier___block_invoke_2;
  v29[3] = &unk_1E82A1FD0;
  v29[4] = &v30;
  v25 = [MEMORY[0x1E696AE18] predicateWithBlock:v29];
  v26 = [v23 filteredArrayUsingPredicate:v25];

  _Block_object_dispose(&v30, 8);

  return v26;
}

uint64_t __69__PNPersonPromoter__sortedSocialGroups_withPersonsByLocalIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v8 compare:v7];
  return v9;
}

BOOL __69__PNPersonPromoter__sortedSocialGroups_withPersonsByLocalIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count] > 2 || *(*(*(a1 + 32) + 8) + 40) == v3;

  return v4;
}

- (id)_graphOrderedPersonsWithPersons:(id)a3 withAllPersons:(id)a4 updateBlock:(id)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v60;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v60 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v59 + 1) + 8 * i);
        v16 = [v15 localIdentifier];
        [v10 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v12);
  }

  v17 = [(PNPersonPromoter *)self delegate];
  v18 = [(PNPersonPromoter *)self personClusterManager];
  v43 = v9;
  v19 = [v17 performSocialGroupsIdentifiersWithPersonClusterManager:v18 forPersons:obj overTheYearsComputation:0 updateBlock:v9];

  v20 = [(PNPersonPromoter *)self _sortedSocialGroups:v19 withPersonsByLocalIdentifier:v10];

  v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"highlyInteresting" ascending:0];
  v67[0] = v21;
  v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"interestingScore" ascending:0];
  v67[1] = v22;
  v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"localIdentifier" ascending:0];
  v67[2] = v23;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];

  v46 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v44 = v20;
  v24 = [v44 countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v24)
  {
    v25 = v24;
    v48 = *v56;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v56 != v48)
        {
          objc_enumerationMutation(v44);
        }

        v27 = *(*(&v55 + 1) + 8 * j);
        v28 = objc_opt_new();
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v29 = v27;
        v30 = [v29 countByEnumeratingWithState:&v51 objects:v65 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v52;
          do
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v52 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v51 + 1) + 8 * k);
              v35 = [v10 objectForKeyedSubscript:{v34, v42}];
              if (v35)
              {
                [v28 addObject:v35];
                [v10 removeObjectForKey:v34];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v51 objects:v65 count:16];
          }

          while (v31);
        }

        if (v28)
        {
          [v28 sortUsingDescriptors:v47];
          [v46 addObjectsFromArray:v28];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v64 = v28;
            _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter][Order] Add from social group: %@", buf, 0xCu);
          }
        }
      }

      v25 = [v44 countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v25);
  }

  v36 = [v10 allValues];
  if ([v36 count])
  {
    v37 = [v36 sortedArrayUsingDescriptors:v47];
    [v46 addObjectsFromArray:v37];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v64 = v37;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter][Order] Rest of people %@", buf, 0xCu);
    }
  }

  v38 = MEMORY[0x1E696AE18];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __79__PNPersonPromoter__graphOrderedPersonsWithPersons_withAllPersons_updateBlock___block_invoke;
  v49[3] = &unk_1E82A1F80;
  v50 = v42;
  v39 = v42;
  v40 = [v38 predicateWithBlock:v49];
  [v46 filterUsingPredicate:v40];

  return v46;
}

- (BOOL)_promoteInterestingPersons:(id)a3 updateBlock:(id)a4
{
  v125[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v67 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v53 = [(PNPersonPromoter *)self photoLibrary];
  v55 = objc_opt_new();
  v65 = objc_opt_new();
  v66 = objc_opt_new();
  v54 = self;
  v8 = [(PNPersonPromoter *)self delegate];
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v10 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"manualOrder" ascending:1];
  v125[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:1];
  v61 = [v6 sortedArrayUsingDescriptors:v11];

  v12 = 0;
  v58 = *MEMORY[0x1E6978F10];
  v13 = *MEMORY[0x1E6978F28];
  while (v12 < [v61 count] - 1)
  {
    v14 = [v61 objectAtIndexedSubscript:v12];
    v15 = [v14 manualOrder];

    v16 = [v61 objectAtIndexedSubscript:v12 + 1];
    v17 = [v16 manualOrder];

    if (v15 == v58 || v17 == v58)
    {
      break;
    }

    if (v17 - v15 < v13)
    {
      v108[3] = v17;
    }

    ++v12;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v6;
  v18 = [obj countByEnumeratingWithState:&v103 objects:v124 count:16];
  if (v18)
  {
    v59 = *v104;
    do
    {
      v63 = 0;
      v60 = v18;
      do
      {
        if (*v104 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v103 + 1) + 8 * v63);
        context = objc_autoreleasePoolPush();
        v67[2](v67, (v112 + 3), 0.9);
        if (v112[3])
        {
          v19 = 1;
        }

        else if ([v64 hidden])
        {
          v19 = 6;
        }

        else
        {
          v20 = [v64 manualOrder];
          v57 = [v64 mergedPersonIdentifiers];
          if ([v64 isVerified])
          {
            if ([v64 verifiedType] == 1 && v20 == v58 || objc_msgSend(v64, "verifiedType") == 2)
            {
              [v55 addObject:v64];
            }

            else if ([v64 verifiedType] == 1 && v20 > v108[3])
            {
              v108[3] = v20;
            }
          }

          else
          {
            v21 = objc_autoreleasePoolPush();
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = v64;
              _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonPromoter] Upgrading person %@", buf, 0xCu);
            }

            v22 = [v64 sourcePerson];
            v23 = [v64 mergedPersonIdentifiers];

            v24 = [v8 keyFaceForPerson:v22 qualityMeasureByFace:v9 updateBlock:v67];
            if (v24)
            {
              v25 = [v22 localIdentifier];
              [v66 setObject:v24 forKeyedSubscript:v25];
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v64;
              _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNPersonPromoterDelegate keyFaceForPerson:] Returned nil key face on %@", buf, 0xCu);
            }

            [v55 addObject:v64];

            objc_autoreleasePoolPop(v21);
            v57 = v23;
          }

          v26 = [(PNPersonPromoter *)v54 photoLibrary];
          v27 = [v57 allObjects];
          v28 = [v26 pn_fetchPersonsWithLocalIdentifiers:v27];

          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v29 = v28;
          v30 = [v29 countByEnumeratingWithState:&v99 objects:v123 count:16];
          if (v30)
          {
            v31 = *v100;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v100 != v31)
                {
                  objc_enumerationMutation(v29);
                }

                v33 = *(*(&v99 + 1) + 8 * i);
                v34 = [v33 keyFace];
                v35 = v34 == 0;

                if (v35)
                {
                  v36 = objc_autoreleasePoolPush();
                  v37 = [v8 keyFaceForPerson:v33 qualityMeasureByFace:v9 updateBlock:v67];
                  if (v37)
                  {
                    v38 = [v33 localIdentifier];
                    [v66 setObject:v37 forKeyedSubscript:v38];

                    [v65 addObject:v33];
                  }

                  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v64;
                    _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNPersonPromoterDelegate keyFaceForPerson:] Returned nil key face on %@", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v36);
                }
              }

              v30 = [v29 countByEnumeratingWithState:&v99 objects:v123 count:16];
            }

            while (v30);
          }

          v19 = 0;
        }

        objc_autoreleasePoolPop(context);
        if (v19 != 6 && v19)
        {
          v41 = 0;
          v42 = 0;
          v43 = obj;
          goto LABEL_54;
        }

        ++v63;
      }

      while (v63 != v60);
      v18 = [obj countByEnumeratingWithState:&v103 objects:v124 count:16];
    }

    while (v18);
  }

  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __59__PNPersonPromoter__promoteInterestingPersons_updateBlock___block_invoke;
  v98[3] = &unk_1E82A1F08;
  v98[4] = &v107;
  v39 = [MEMORY[0x1E696AE18] predicateWithBlock:v98];
  [v55 filterUsingPredicate:v39];

  v40 = [v55 count];
  if ((v112[3] & 1) == 0)
  {
    v45 = v40;
    if (v40)
    {
      v46 = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v48 = [obj count];
        *buf = 134218240;
        *&buf[4] = v45;
        *&buf[12] = 2048;
        *&buf[14] = v48;
        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter] Sorting %lu persons, with a total of %lu persons.", buf, 0x16u);
      }

      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __59__PNPersonPromoter__promoteInterestingPersons_updateBlock___block_invoke_440;
      v95[3] = &unk_1E82A1F30;
      v96 = v67;
      v97 = &v111;
      v43 = [(PNPersonPromoter *)v54 _graphOrderedPersonsWithPersons:v55 withAllPersons:obj updateBlock:v95];

      if (v112[3])
      {
        v41 = 0;
        v42 = 0;
LABEL_54:

        goto LABEL_55;
      }
    }

    else
    {
      v43 = 0;
    }

    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x2020000000;
    v90 = 0;
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v120 = __Block_byref_object_copy__688;
    v121 = __Block_byref_object_dispose__689;
    v122 = [MEMORY[0x1E695DFA8] set];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __59__PNPersonPromoter__promoteInterestingPersons_updateBlock___block_invoke_441;
    v69[3] = &unk_1E82A1F58;
    v70 = v9;
    v71 = v54;
    v72 = obj;
    v73 = v66;
    v77 = &v83;
    v78 = buf;
    v79 = &v91;
    v49 = v53;
    v74 = v49;
    v80 = &v87;
    v75 = v65;
    v81 = &v107;
    v82 = v45;
    v43 = v43;
    v76 = v43;
    v68 = 0;
    v42 = [v49 pn_performChangesAndWait:v69 error:&v68];
    v41 = v68;
    if (v42)
    {
      [(PNPersonPromoter *)v54 incrementMetricForKey:@"numberOfPersonsPromotedToGraphVerified" withValue:v92[3]];
      [(PNPersonPromoter *)v54 incrementMetricForKey:@"numberOfGraphMergeCandidatesAdded" withValue:v88[3]];
      [(PNPersonPromoter *)v54 incrementMetricForKey:@"numberOfFacesAvailableInPeopleHome" withValue:v84[3]];
      -[PNPersonPromoter incrementMetricForKey:withValue:](v54, "incrementMetricForKey:withValue:", @"numberOfAssetsAvailableInPeopleHome", [*(*&buf[8] + 40) count]);
      [(PNPersonPromoter *)v54 reportMetrics];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v115 = 138412546;
      v116 = *&v49;
      v117 = 2112;
      v118 = v41;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PersonPromoter] Failed to perform changes on library %@: %@", v115, 0x16u);
    }

    v50 = MEMORY[0x1E69E9C10];
    v51 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v52 = CFAbsoluteTimeGetCurrent();
      *v115 = 134217984;
      v116 = v52 - Current;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter][Perf] Promote Interesting Persons took %fs", v115, 0xCu);
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v83, 8);
    _Block_object_dispose(&v87, 8);
    _Block_object_dispose(&v91, 8);
    goto LABEL_54;
  }

  v41 = 0;
  v42 = 0;
LABEL_55:

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);

  return v42;
}

uint64_t __59__PNPersonPromoter__promoteInterestingPersons_updateBlock___block_invoke_440(uint64_t a1, _BYTE *a2, float a3)
{
  v5 = a3 * 0.1 + 0.9;
  result = (*(*(a1 + 32) + 16))(v5);
  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void __59__PNPersonPromoter__promoteInterestingPersons_updateBlock___block_invoke_441(uint64_t a1)
{
  v137 = *MEMORY[0x1E69E9840];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v1 = [*(a1 + 32) keyEnumerator];
  v2 = [v1 countByEnumeratingWithState:&v120 objects:v136 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v121;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v121 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v120 + 1) + 8 * i);
        v7 = [*(a1 + 32) objectForKey:v6];
        [v6 setQualityMeasure:{objc_msgSend(v7, "integerValue")}];
      }

      v3 = [v1 countByEnumeratingWithState:&v120 objects:v136 count:16];
    }

    while (v3);
  }

  v8 = [*(a1 + 40) personClusterManager];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = *(a1 + 48);
  v9 = [obj countByEnumeratingWithState:&v116 objects:v135 count:16];
  v86 = v8;
  if (v9)
  {
    v10 = v9;
    v94 = *v117;
    do
    {
      v11 = 0;
      v88 = v10;
      do
      {
        if (*v117 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v116 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if (([v12 isVerified] & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v125 = v12;
            _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonPromoter] Upgrading person %@", buf, 0xCu);
          }

          v14 = [v12 sourcePerson];
          v15 = *(a1 + 56);
          v16 = [v14 localIdentifier];
          v17 = [v15 objectForKeyedSubscript:v16];

          if (v17)
          {
            [v14 setKeyFace:v17];
          }

          [v12 setIsVerified:1];
          *(*(*(a1 + 88) + 8) + 24) += [v14 faceCount];
          v18 = *(*(*(a1 + 96) + 8) + 40);
          [v12 sourcePersonBackingAssetIdentifiers];
          v20 = v19 = v12;
          [v18 unionSet:v20];

          v12 = v19;
          ++*(*(*(a1 + 104) + 8) + 24);
        }

        v21 = [v12 mergedPersonIdentifiers];
        if ([v21 count])
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v125 = v21;
            v126 = 2112;
            v127 = v12;
            _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonPromoter] Adding %@ to person %@", buf, 0x16u);
          }

          v22 = *(a1 + 64);
          v23 = [v21 allObjects];
          v24 = [v22 pn_fetchPersonsWithLocalIdentifiers:v23];

          [v12 pn_addMergeCandidatePersons:v24];
          *(*(*(a1 + 112) + 8) + 24) += [v24 count];
          v25 = NSClassFromString(&cfstr_Phpersonchange.isa);
          v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v99 = v25;
          if (v25)
          {
            v92 = v13;
            v93 = v11;
            v90 = v12;
            [v12 localIdentifier];
            v95 = v91 = v21;
            v97 = [v21 setByAddingObject:?];
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v26 = v24;
            v27 = [v26 countByEnumeratingWithState:&v112 objects:v134 count:16];
            v28 = v24;
            if (v27)
            {
              v29 = v27;
              v30 = *v113;
              do
              {
                v31 = 0;
                do
                {
                  if (*v113 != v30)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v32 = *(*(&v112 + 1) + 8 * v31);
                  if (([v32 isVerified] & 1) == 0)
                  {
                    v33 = [[PNPersonCluster alloc] initWithPerson:v32 inPhotoLibrary:*(a1 + 64)];
                    v34 = [(PNPersonCluster *)v33 localIdentifier];
                    [v8 mergeConfidenceBetweenPersonLocalIdentifier:v34 andCandidateLocalIdentifiers:v97];
                    if (v35 >= 0.0)
                    {
                      v37 = v35;
                      v38 = [(objc_class *)v99 changeRequestForPerson:v32];
                      [v38 setMergeCandidateConfidence:v37];
                      [v96 addObject:v32];
                    }

                    else
                    {
                      [v32 mergeCandidateConfidence];
                      if (v36 == 0.0)
                      {
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v125 = v34;
                          v126 = 2112;
                          v127 = v95;
                          _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PersonPromoter] no confidence between %@ and %@, skip", buf, 0x16u);
                        }
                      }

                      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v125 = v34;
                        v126 = 2112;
                        v127 = v95;
                        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter] no confidence between %@ and %@, skip", buf, 0x16u);
                      }
                    }

                    v24 = v28;
                  }

                  ++v31;
                }

                while (v29 != v31);
                v39 = [v26 countByEnumeratingWithState:&v112 objects:v134 count:16];
                v29 = v39;
              }

              while (v39);
            }

            if ([v96 count])
            {
              v40 = NSClassFromString(&cfstr_Phperson.isa);
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v111 = 0u;
              v41 = v96;
              v42 = [v41 countByEnumeratingWithState:&v108 objects:v133 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v109;
                do
                {
                  for (j = 0; j != v43; ++j)
                  {
                    if (*v109 != v44)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v46 = *(*(&v108 + 1) + 8 * j);
                    v47 = objc_autoreleasePoolPush();
                    v48 = [(objc_class *)v40 fetchMergeCandidateWithConfidencePersonsForPerson:v46 options:0];
                    if ([v48 count])
                    {
                      v49 = [(objc_class *)v99 changeRequestForPerson:v46];
                      [v49 removeMergeCandidateWithConfidencePersons:v48];
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        v50 = [v46 localIdentifier];
                        *buf = 138412290;
                        v125 = v50;
                        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PersonPromoter] removing existing merge candidates with confidence for %@", buf, 0xCu);
                      }
                    }

                    objc_autoreleasePoolPop(v47);
                  }

                  v43 = [v41 countByEnumeratingWithState:&v108 objects:v133 count:16];
                }

                while (v43);
              }

              v51 = [v90 sourcePerson];
              v8 = v86;
              v24 = v28;
              if (!v51)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v58 = [v90 localIdentifier];
                  *buf = 138412290;
                  v125 = v58;
                  _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PersonPromoter] verifiedPHPerson is nil for %@", buf, 0xCu);
                }

                v52 = *(a1 + 64);
                v53 = [v90 localIdentifier];
                v132 = v53;
                v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
                v55 = [v52 pn_fetchPersonsWithLocalIdentifiers:v54];
                v56 = [v55 fetchedObjects];
                v51 = [v56 firstObject];
              }

              v57 = [(objc_class *)v99 changeRequestForPerson:v51];
              [v57 addMergeCandidateWithConfidencePersons:v41];
            }

            v10 = v88;
            v13 = v92;
            v11 = v93;
            v21 = v91;
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v11 != v10);
      v10 = [obj countByEnumeratingWithState:&v116 objects:v135 count:16];
    }

    while (v10);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v59 = *(a1 + 72);
  v60 = [v59 countByEnumeratingWithState:&v104 objects:v131 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v105;
    do
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v105 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v104 + 1) + 8 * k);
        v65 = *(a1 + 56);
        v66 = [v64 localIdentifier];
        v67 = [v65 objectForKeyedSubscript:v66];

        if (v67)
        {
          [v64 setKeyFace:v67];
        }
      }

      v61 = [v59 countByEnumeratingWithState:&v104 objects:v131 count:16];
    }

    while (v61);
  }

  v68 = *(a1 + 128);
  if (v68)
  {
    v69 = *MEMORY[0x1E6978F28];
    v70 = (*MEMORY[0x1E6978F10] - v69) / v68;
    if (v70 <= 1)
    {
      v70 = 1;
    }

    do
    {
      v71 = v69;
      v69 >>= 1;
    }

    while (v71 > v70);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v85 = *(*(*(a1 + 120) + 8) + 24);
      *buf = 134217984;
      v125 = v85;
      _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonPromoter] highestUserManualOrder %lu", buf, 0xCu);
    }

    v72 = *(*(*(a1 + 120) + 8) + 24);
    v73 = [*(a1 + 48) count];
    v74 = *(a1 + 128);
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v75 = *(a1 + 80);
    v76 = [v75 countByEnumeratingWithState:&v100 objects:v130 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = (v73 - v74);
      v79 = *v101;
      v80 = *MEMORY[0x1E6978F18];
      v81 = MEMORY[0x1E69E9C10];
      do
      {
        for (m = 0; m != v77; ++m)
        {
          if (*v101 != v79)
          {
            objc_enumerationMutation(v75);
          }

          v83 = *(*(&v100 + 1) + 8 * m);
          if (&v72[v71] >= v80)
          {
            v72 = v80;
          }

          else
          {
            v72 += v71;
          }

          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            v84 = v78++;
            *buf = 134218498;
            v125 = v84;
            v126 = 2048;
            v127 = v72;
            v128 = 2112;
            v129 = v83;
            _os_log_debug_impl(&dword_1C6F5C000, v81, OS_LOG_TYPE_DEBUG, "[PersonPromoter] Setting index %lu (manual order %lu) to person %@.", buf, 0x20u);
          }

          [v83 setManualOrder:v72];
        }

        v77 = [v75 countByEnumeratingWithState:&v100 objects:v130 count:16];
      }

      while (v77);
    }

    v8 = v87;
  }
}

- (id)_interestingPersonsFromVerifiedPersons:(id)a3 unverifiedPersons:(id)a4 updateBlock:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (-[PNPersonPromoter isInQuiescentState](self, "isInQuiescentState") && ![v8 count])
  {
    v27 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_430];
    v11 = [v9 filteredSetUsingPredicate:v27];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v38 = [v11 count];
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter] No verified persons, result with lower thresholds: %lu", buf, 0xCu);
    }
  }

  else
  {
    v11 = v8;
  }

  if ([v11 count])
  {
    v12 = [(PNPersonPromoter *)self interestingPersonsFromPersons:v11 updateBlock:v10];
    v13 = [v12 mutableCopy];

    if (v13)
    {
      v14 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_433];
      v15 = [v11 filteredSetUsingPredicate:v14];

      [v13 unionSet:v15];
      if ([v13 count] <= 9)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v16 = [v13 count];
          *buf = 134218240;
          v38 = v16;
          v39 = 2048;
          v40 = 10;
          _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter] No enough interesting persons %lu < %lu, including more persons.", buf, 0x16u);
        }

        v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"interestingScore" ascending:0];
        v36 = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        v19 = [v11 sortedArrayUsingDescriptors:v18];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v32;
LABEL_11:
          v24 = 0;
          while (1)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [v13 addObject:{*(*(&v31 + 1) + 8 * v24), v31}];
            if ([v13 count] > 9)
            {
              break;
            }

            if (v22 == ++v24)
            {
              v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
              if (v22)
              {
                goto LABEL_11;
              }

              break;
            }
          }
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v28 = [v15 count];
        *buf = 134218242;
        v38 = v28;
        v39 = 2112;
        v40 = v15;
        _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonPromoter] previouslyVerifiedPersons (%lu): %@", buf, 0x16u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v29 = [v11 count];
        *buf = 134218242;
        v38 = v29;
        v39 = 2112;
        v40 = v11;
        _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonPromoter] verifiedPersons (%lu): %@", buf, 0x16u);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v30 = [v13 count];
        *buf = 134218242;
        v38 = v30;
        v39 = 2112;
        v40 = v13;
        _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonPromoter] interestingPersons (%lu): %@", buf, 0x16u);
      }

      v25 = v13;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter] People Home Graph will be empty: Still having no interesting persons", buf, 2u);
    }

    v13 = [MEMORY[0x1E695DFD8] set];
  }

  return v13;
}

BOOL __89__PNPersonPromoter__interestingPersonsFromVerifiedPersons_unverifiedPersons_updateBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 backingMomentIdentifiers];
  if ([v3 count] < 2)
  {
    v7 = 0;
  }

  else
  {
    v4 = [v2 backingFaceIdentifiers];
    if ([v4 count] < 0xA)
    {
      v7 = 0;
    }

    else
    {
      v5 = [v2 sourcePerson];
      if ([v5 faceCount] < 7)
      {
        v7 = 0;
      }

      else
      {
        [v2 libraryTimespan];
        v7 = v6 >= 86400.0;
      }
    }
  }

  return v7;
}

- (BOOL)_personClusterShouldBeVerified:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 quarantined])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = *&v4;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "[PersonPromoter] Cannot promote quarantined person %@";
      v7 = 12;
LABEL_12:
      _os_log_impl(&dword_1C6F5C000, v5, OS_LOG_TYPE_DEFAULT, v6, &v22, v7);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  [v4 sideFaceRatio];
  v9 = v8;
  if (v8 < 0.5)
  {
    v10 = [v4 backingAssetIdentifiers];
    v11 = [v10 mutableCopy];

    v12 = [(PNPersonPromoter *)self personClusterManager];
    v13 = [v12 assetsToIgnore];
    [v11 minusSet:v13];

    v14 = [v11 count];
    LODWORD(v12) = [(PNPersonPromoter *)self isInQuiescentState];
    v15 = [v4 backingMomentIdentifiers];
    v16 = [v15 count];
    if (v12)
    {
      if (v16 >= 3)
      {
        v17 = [v4 backingFaceIdentifiers];
        v18 = 0;
        if ([v17 count] < 0xF || v14 <= 0xE)
        {
          goto LABEL_19;
        }

        v19 = 604800.0;
LABEL_18:
        [v4 libraryTimespan];
        v18 = v20 >= v19;
LABEL_19:

LABEL_21:
        goto LABEL_22;
      }
    }

    else if (v16 >= 6)
    {
      v17 = [v4 backingFaceIdentifiers];
      v18 = 0;
      if ([v17 count] < 0x64 || v14 < 0x32)
      {
        goto LABEL_19;
      }

      v19 = 7776000.0;
      goto LABEL_18;
    }

    v18 = 0;
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134218242;
    v23 = v9;
    v24 = 2112;
    v25 = v4;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "[PersonPromoter] Cannot promote person with too many side faces, %.3f%% - %@";
    v7 = 22;
    goto LABEL_12;
  }

LABEL_13:
  v18 = 0;
LABEL_22:

  return v18;
}

- (id)_sortedUnverifiedPersonsToDedupForVerifiedPersons:(id)a3 type:(unint64_t)a4 updateBlock:(id)a5
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  Current = CFAbsoluteTimeGetCurrent();
  v58 = self;
  v11 = [(PNPersonPromoter *)self personClusterManager];
  v12 = [v11 pn_fetchPersonsWithType:a4];

  if ([v12 count])
  {
    v71 = 0;
    v13 = MEMORY[0x1E695DF70];
    v54 = v12;
    v14 = [v12 fetchedObjects];
    v15 = [v13 arrayWithArray:v14];

    v16 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_424];
    v57 = v15;
    [v15 filterUsingPredicate:v16];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v55 = v8;
    obj = v8;
    v17 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v68;
      v49 = *v68;
      v50 = a4;
      while (2)
      {
        v20 = 0;
        v51 = v18;
        do
        {
          if (*v68 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v67 + 1) + 8 * v20);
          v22 = objc_autoreleasePoolPush();
          v9[2](v9, &v71, 0.0);
          if (v71)
          {
LABEL_24:
            objc_autoreleasePoolPop(v22);
LABEL_25:
            v36 = 0;
            goto LABEL_48;
          }

          v52 = v20;
          context = v22;
          v23 = [(PNPersonPromoter *)v58 personClusterManager];
          v24 = [v23 pn_fetchCandidatePersonsForPerson:v21];

          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v25 = v24;
          v26 = [v25 countByEnumeratingWithState:&v63 objects:v80 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v64;
            while (2)
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v64 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v63 + 1) + 8 * i);
                v9[2](v9, &v71, 0.0);
                if (v71)
                {

                  v22 = context;
                  goto LABEL_24;
                }

                if (([v30 isVerified] & 1) == 0)
                {
                  v31 = objc_autoreleasePoolPush();
                  [v57 removeObject:v30];
                  v32 = [(PNPersonPromoter *)v58 personClusterManager];
                  v79 = v30;
                  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
                  [v32 mergePersons:v33 withPerson:v21];

                  objc_autoreleasePoolPop(v31);
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v63 objects:v80 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          objc_autoreleasePoolPop(context);
          v20 = v52 + 1;
          v19 = v49;
          a4 = v50;
        }

        while (v52 + 1 != v51);
        v18 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    if (a4)
    {
      v34 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sourcePerson.faceCount" ascending:0];
      v77 = v34;
      v35 = &v77;
    }

    else
    {
      v34 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sourceFaceGroup.faceCountInFaceGroup" ascending:0];
      v78 = v34;
      v35 = &v78;
    }

    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:{1, v49, v50}];
    [v57 sortUsingDescriptors:v37];

    obj = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    if ([(PNPersonPromoter *)v58 isInQuiescentState])
    {
      v38 = 7;
    }

    else
    {
      v38 = 25;
    }

    v61 = 0uLL;
    v62 = 0uLL;
    v39 = v57;
    v40 = [v39 countByEnumeratingWithState:&v59 objects:v76 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v60;
      while (2)
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v60 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v59 + 1) + 8 * j);
          v45 = objc_autoreleasePoolPush();
          v9[2](v9, &v71, 0.0);
          if (v71)
          {
            objc_autoreleasePoolPop(v45);

            goto LABEL_25;
          }

          if ([obj count] >= 0x180)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v48 = COERCE_DOUBLE([v39 count]);
              *buf = 134218240;
              v73 = v48;
              v74 = 2048;
              v75 = 384;
              _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonPromoter] Too many unverified persons to dedup, truncating the unverified person array. %lu > %lu", buf, 0x16u);
            }

LABEL_44:
            objc_autoreleasePoolPop(v45);
            goto LABEL_45;
          }

          if ([v44 faceCount] < v38)
          {
            goto LABEL_44;
          }

          [obj addObject:v44];
          objc_autoreleasePoolPop(v45);
        }

        v41 = [v39 countByEnumeratingWithState:&v59 objects:v76 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v46 = CFAbsoluteTimeGetCurrent();
      *buf = 134217984;
      v73 = v46 - Current;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter][Perf] Sort Unverified Persons took %fs", buf, 0xCu);
    }

    v36 = obj;
    obj = v36;
LABEL_48:
    v12 = v54;
    v8 = v55;
  }

  else
  {
    v36 = MEMORY[0x1E695E0F0];
  }

  return v36;
}

- (id)_verifiedPersonsToProcess
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(PNPersonPromoter *)self personClusterManager];
  v3 = [v2 pn_fetchPersonsWithType:1];

  if ([v3 count] < 0x81)
  {
    v10 = MEMORY[0x1E695DFA8];
    v11 = [v3 fetchedObjects];
    v9 = [v10 setWithArray:v11];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v15 = [v3 count];
      v16 = 2048;
      v17 = 128;
      _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonPromoter] Too many verified persons to dedup, truncating the verified person array. %lu > %lu", buf, 0x16u);
    }

    v4 = [v3 fetchedObjects];
    v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sourcePerson.faceCount" ascending:0];
    v13 = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v7 = [v4 sortedArrayUsingDescriptors:v6];

    v8 = [v7 subarrayWithRange:{0, 128}];
    v9 = [MEMORY[0x1E695DFA8] setWithArray:v8];
  }

  return v9;
}

- (id)_newPersonDeduperWithVerifiedPersons:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v25 = *v32;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        v8 = [(PNPersonPromoter *)self personClusterManager];
        v9 = [v8 pn_fetchInvalidCandidatePersonsForPerson:v7];

        if ([v9 count])
        {
          v10 = objc_opt_new();
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v28;
            do
            {
              v15 = 0;
              do
              {
                if (*v28 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v27 + 1) + 8 * v15) localIdentifier];
                [v10 addObject:v16];

                ++v15;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v13);
          }

          v17 = [v7 localIdentifier];
          [v24 setObject:v10 forKeyedSubscript:v17];
        }

        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v18 = [PNPersonDeduper alloc];
  v19 = [(PNPersonPromoter *)self personClusterManager];
  v20 = [(PNPersonDeduper *)v18 initWithPersonClusterManager:v19 andInvalidCandidatesMapping:v24 profile:self->_deduperProfile];

  [(PNPersonDeduper *)v20 setPersonPromoter:self];
  v21 = [(PNPersonPromoter *)self delegate];
  [(PNPersonDeduper *)v20 setDelegate:v21];

  return v20;
}

- (id)interestingPersonsFromPersons:(id)a3 detectionType:(signed __int16)a4 updateBlock:(id)a5
{
  v74 = a4;
  v104 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v71 = a5;
  v70 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v69 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v64 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v68 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v8 = [(PNPersonPromoter *)self photoLibrary];
  v67 = [v8 pn_lastAssetDate];

  v63 = self->_promoterProfile;
  v94 = 0;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v9 = v7;
  v10 = [(PNPersonPromoterProfile *)v9 countByEnumeratingWithState:&v90 objects:v103 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v91;
    obj = v9;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v91 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v90 + 1) + 8 * i);
        v71[2](v71, &v94, 0.0);
        if (v94)
        {
          v37 = 0;
          v9 = obj;
          v38 = obj;
          v28 = v63;
          goto LABEL_46;
        }

        v15 = objc_autoreleasePoolPush();
        v16 = MEMORY[0x1E696AD98];
        v17 = [v14 backingMomentIdentifiers];
        v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
        [v70 setObject:v18 forKey:v14];

        v19 = MEMORY[0x1E696AD98];
        v20 = [v14 backingFaceIdentifiers];
        v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
        [v69 setObject:v21 forKey:v14];

        [(PNPersonPromoter *)self _personTimespan:v14];
        if (v22 > 0.0)
        {
          v23 = [MEMORY[0x1E696AD98] numberWithDouble:v22 / 86400.0];
          [v64 setObject:v23 forKey:v14];
        }

        v24 = MEMORY[0x1E696AD98];
        v25 = [v14 lastSeenDate];
        [v25 timeIntervalSinceDate:v67];
        v27 = [v24 numberWithDouble:fabs(v26) / 86400.0];
        [v68 setObject:v27 forKey:v14];

        objc_autoreleasePoolPop(v15);
      }

      v9 = obj;
      v11 = [(PNPersonPromoterProfile *)obj countByEnumeratingWithState:&v90 objects:v103 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke;
  aBlock[3] = &unk_1E82A1EA0;
  v28 = v63;
  v29 = v63;
  v85 = v29;
  v73 = v70;
  v86 = v73;
  v72 = v69;
  v87 = v72;
  v30 = v64;
  v88 = v30;
  v31 = v68;
  v89 = v31;
  v32 = _Block_copy(aBlock);
  v33 = [MEMORY[0x1E695DFA8] set];
  v34 = v33;
  v35 = v32[2];
  if (v74 == 2)
  {
    v36 = v35(v32, 0);
    v37 = v9;
  }

  else
  {
    v75 = v33;
    obja = v9;
    v62 = v32;
    v39 = v35(v32, 1);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v40 = [v39 countByEnumeratingWithState:&v80 objects:v102 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v81;
      v43 = MEMORY[0x1E69E9C10];
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v81 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v80 + 1) + 8 * j);
          v46 = [v39 countForObject:v45];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            [v45 interestingScore];
            *buf = 134218498;
            v97 = v46;
            v98 = 2048;
            v99 = v47;
            v100 = 2112;
            v101 = v45;
            _os_log_debug_impl(&dword_1C6F5C000, v43, OS_LOG_TYPE_DEBUG, "Normal Distributions: [Highly interesting] count:%lu score:%.2f person:%@", buf, 0x20u);
          }

          if (v46 >= [(PNPersonPromoterProfile *)v29 highlyInterestingPersonNormalDistributionsToMatch])
          {
            [v45 setHighlyInteresting:1];
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v97 = v45;
              _os_log_impl(&dword_1C6F5C000, v43, OS_LOG_TYPE_INFO, "Normal Distributions: [Highly interesting] Elected person %@", buf, 0xCu);
            }

            [v73 removeObjectForKey:v45];
            [v72 removeObjectForKey:v45];
            [v30 removeObjectForKey:v45];
            [v31 removeObjectForKey:v45];
            [v75 addObject:v45];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v80 objects:v102 count:16];
      }

      while (v41);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v48 = [(PNPersonPromoterProfile *)obja count];
      v49 = [v75 count];
      *buf = 134218240;
      v97 = v48;
      v98 = 2048;
      v99 = v49;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PersonPromoter] Ran first pass of interestingPersonsFromPersons with %tu persons, found %tu highly interesting.", buf, 0x16u);
    }

    v50 = (v62[2])(v62, 0);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v51 = [v50 countByEnumeratingWithState:&v76 objects:v95 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v77;
      v54 = MEMORY[0x1E69E9C10];
      do
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v77 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v56 = *(*(&v76 + 1) + 8 * k);
          v57 = [v50 countForObject:v56];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            [v56 interestingScore];
            *buf = 134218498;
            v97 = v57;
            v98 = 2048;
            v99 = v58;
            v100 = 2112;
            v101 = v56;
            _os_log_debug_impl(&dword_1C6F5C000, v54, OS_LOG_TYPE_DEBUG, "Normal Distributions: count:%lu score:%.2f person:%@", buf, 0x20u);
          }

          if (v57 >= [(PNPersonPromoterProfile *)v29 interestingPersonNormalDistributionsToMatch])
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v97 = v56;
              _os_log_impl(&dword_1C6F5C000, v54, OS_LOG_TYPE_INFO, "Normal Distributions: Elected person %@", buf, 0xCu);
            }

            [v75 addObject:v56];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v76 objects:v95 count:16];
      }

      while (v52);
    }

    v28 = v63;
    v34 = v75;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v59 = [(PNPersonPromoterProfile *)obja count];
      v60 = [v75 count];
      *buf = 134218240;
      v97 = v59;
      v98 = 2048;
      v99 = v60;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PersonPromoter] Ran second pass of interestingPersonsFromPersons with %tu persons, found %tu interesting.", buf, 0x16u);
    }

    v37 = v75;

    v9 = obja;
    v32 = v62;
  }

  v38 = v85;
LABEL_46:

  return v37;
}

id __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke(uint64_t a1, int a2)
{
  v4 = [MEMORY[0x1E696AB50] set];
  v5 = *(a1 + 32);
  if (a2)
  {
    [v5 highlyInterestingPersonMomentsCumulativeNormalDistributionUpperTail];
  }

  else
  {
    [v5 interestingPersonMomentsCumulativeNormalDistributionUpperTail];
  }

  v7 = v6;
  v8 = *(a1 + 40);
  [*(a1 + 32) interestingPersonMomentsNormalDistributionSigmaFactor];
  v10 = v9;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke_2;
  v55[3] = &unk_1E82A1E50;
  v56 = *(a1 + 32);
  v58 = v7;
  v59 = a2;
  v11 = v4;
  v57 = v11;
  [PNPersonPromoter cumulativeNormalDistributionWithData:v8 sigmaFactor:v55 usingBlock:v10];
  v12 = *(a1 + 32);
  if (a2)
  {
    [v12 highlyInterestingPersonFacesCumulativeNormalDistributionUpperTail];
  }

  else
  {
    [v12 interestingPersonFacesCumulativeNormalDistributionUpperTail];
  }

  v14 = v13;
  v15 = *(a1 + 48);
  [*(a1 + 32) interestingPersonFacesNormalDistributionSigmaFactor];
  v17 = v16;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke_411;
  v50[3] = &unk_1E82A1E50;
  v51 = *(a1 + 32);
  v53 = v14;
  v54 = a2;
  v18 = v11;
  v52 = v18;
  [PNPersonPromoter cumulativeNormalDistributionWithData:v15 sigmaFactor:v50 usingBlock:v17];
  v19 = *(a1 + 32);
  if (a2)
  {
    [v19 highlyInterestingPersonTimeCumulativeNormalDistributionUpperTail];
  }

  else
  {
    [v19 interestingPersonTimeCumulativeNormalDistributionUpperTail];
  }

  v21 = v20;
  v22 = *(a1 + 56);
  [*(a1 + 32) interestingPersonTimeNormalDistributionSigmaFactor];
  v24 = v23;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke_412;
  v45[3] = &unk_1E82A1E50;
  v46 = *(a1 + 32);
  v48 = v21;
  v49 = a2;
  v25 = v18;
  v47 = v25;
  [PNPersonPromoter cumulativeNormalDistributionWithData:v22 sigmaFactor:v45 usingBlock:v24];
  v26 = *(a1 + 32);
  if (a2)
  {
    [v26 highlyInterestingPersonLastSeenCumulativeNormalDistributionLowerTail];
    v28 = v27;
    [*(a1 + 32) highlyInterestingPersonLastSeenCumulativeNormalDistributionUpperTail];
  }

  else
  {
    [v26 interestingPersonLastSeenCumulativeNormalDistributionLowerTail];
    v28 = v30;
    [*(a1 + 32) interestingPersonLastSeenCumulativeNormalDistributionUpperTail];
  }

  v31 = v29;
  v32 = *(a1 + 64);
  [*(a1 + 32) interestingPersonLastSeenNormalDistributionSigmaFactor];
  v34 = v33;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke_413;
  v39[3] = &unk_1E82A1E78;
  v40 = *(a1 + 32);
  v42 = v28;
  v43 = v31;
  v44 = a2;
  v35 = v25;
  v41 = v35;
  [PNPersonPromoter cumulativeNormalDistributionWithData:v32 sigmaFactor:v39 usingBlock:v34];
  v36 = v41;
  v37 = v35;

  return v35;
}

void __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke_2(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) interestingPersonMomentsCumulativeNormalDistributionUpperTail];
    v13 = v12;
    v14 = [v11 localIdentifier];
    v17 = 134219266;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    v25 = 2048;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Moments Cumulative Normal Distribution: x:%lf mu:%lf sigma:%lf result:%lf upperTail:%lf person:%@", &v17, 0x3Eu);
  }

  [v11 setInterestingScore:a6];
  if (*(a1 + 48) <= a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 56))
      {
        v15 = @"[Highly interesting] ";
      }

      else
      {
        v15 = &stru_1F46CD000;
      }

      v16 = [v11 localIdentifier];
      v17 = 138412546;
      v18 = *&v15;
      v19 = 2112;
      v20 = *&v16;
      _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Moments Cumulative Normal Distribution: %@Elected person %@", &v17, 0x16u);
    }

    [*(a1 + 40) addObject:v11];
  }
}

void __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke_411(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) interestingPersonFacesCumulativeNormalDistributionUpperTail];
    v14 = v13;
    v15 = [v11 localIdentifier];
    v18 = 134219266;
    v19 = a3;
    v20 = 2048;
    v21 = a4;
    v22 = 2048;
    v23 = a5;
    v24 = 2048;
    v25 = a6;
    v26 = 2048;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Faces Cumulative Normal Distribution: x:%lf mu:%lf sigma:%lf result:%lf upperTail:%lf person:%@", &v18, 0x3Eu);
  }

  [v11 interestingScore];
  [v11 setInterestingScore:v12 + a6];
  if (*(a1 + 48) <= a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 56))
      {
        v16 = @"[Highly interesting] ";
      }

      else
      {
        v16 = &stru_1F46CD000;
      }

      v17 = [v11 localIdentifier];
      v18 = 138412546;
      v19 = *&v16;
      v20 = 2112;
      v21 = *&v17;
      _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Faces Cumulative Normal Distribution: %@Elected person %@", &v18, 0x16u);
    }

    [*(a1 + 40) addObject:v11];
  }
}

void __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke_412(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) interestingPersonTimeCumulativeNormalDistributionUpperTail];
    v13 = v12;
    v14 = [v11 localIdentifier];
    v17 = 134219266;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    v25 = 2048;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Time Cumulative Normal Distribution: x:%lf mu:%lf sigma:%lf result:%lf upperTail:%lf person:%@", &v17, 0x3Eu);
  }

  if (*(a1 + 48) <= a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 56))
      {
        v15 = @"[Highly interesting] ";
      }

      else
      {
        v15 = &stru_1F46CD000;
      }

      v16 = [v11 localIdentifier];
      v17 = 138412546;
      v18 = *&v15;
      v19 = 2112;
      v20 = *&v16;
      _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Time Cumulative Normal Distribution: %@Elected person %@", &v17, 0x16u);
    }

    [*(a1 + 40) addObject:v11];
  }
}

void __76__PNPersonPromoter_interestingPersonsFromPersons_detectionType_updateBlock___block_invoke_413(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) interestingPersonLastSeenCumulativeNormalDistributionLowerTail];
    v14 = v13;
    [*(a1 + 32) interestingPersonLastSeenCumulativeNormalDistributionUpperTail];
    v16 = v15;
    v17 = [v11 localIdentifier];
    v20 = 134219522;
    v21 = a3;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = a5;
    v26 = 2048;
    v27 = a6;
    v28 = 2048;
    v29 = v14;
    v30 = 2048;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Last Seen Cumulative Normal Distribution: x:%lf mu:%lf sigma:%lf result:%lf lowerTail:%lf upperTail:%lf person:%@", &v20, 0x48u);
  }

  [v11 interestingScore];
  [v11 setInterestingScore:(1.0 - a6 + v12) / 3.0];
  if (*(a1 + 48) >= a6 || *(a1 + 56) <= a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 64))
      {
        v18 = @"[Highly interesting] ";
      }

      else
      {
        v18 = &stru_1F46CD000;
      }

      v19 = [v11 localIdentifier];
      v20 = 138412546;
      v21 = *&v18;
      v22 = 2112;
      v23 = *&v19;
      _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Last Seen Cumulative Normal Distribution: %@Elected person %@", &v20, 0x16u);
    }

    [*(a1 + 40) addObject:v11];
  }
}

- (double)_personTimespan:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PNPersonPromoter *)self photoLibrary];
  v32 = v4;
  v6 = [v4 backingMomentIdentifiers];
  v7 = [v6 allObjects];
  v8 = [v5 pn_fetchMomentsWithLocalIdentifiers:v7];

  v31 = v8;
  v9 = [v8 fetchedObjects];
  v10 = [(PNPersonPromoter *)self delegate];
  v30 = v9;
  v11 = [v10 densityClusteringForObjects:v9 maximumDistance:2 minimumNumberOfObjects:&__block_literal_global_400 withDistanceBlock:3888000.0];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v11;
  v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v35)
  {
    v34 = *v42;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = [v14 firstObject];
        v16 = [v15 universalStartDate];
        v36 = v15;
        v17 = [v15 universalEndDate];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v18 = v14;
        v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v38;
          do
          {
            v22 = 0;
            v23 = v16;
            v24 = v17;
            do
            {
              if (*v38 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v25 = *(*(&v37 + 1) + 8 * v22);
              v26 = [v25 universalStartDate];
              v16 = [v23 earlierDate:v26];

              v27 = [v25 universalEndDate];
              v17 = [v24 laterDate:v27];

              ++v22;
              v23 = v16;
              v24 = v17;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v20);
        }

        [v17 timeIntervalSinceDate:v16];
        v12 = v12 + v28;
      }

      v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v35);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

double __36__PNPersonPromoter__personTimespan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 universalStartDate];
  v7 = [v5 universalEndDate];

  v8 = [v4 universalStartDate];
  v9 = [v4 universalEndDate];

  v10 = [v6 compare:v8] != 1 && objc_msgSend(v8, "compare:", v7) != 1;
  v11 = [v6 compare:v9] != 1 && objc_msgSend(v9, "compare:", v7) != 1;
  v12 = 0.0;
  if (!v11 && !v10)
  {
    v13 = [v7 earlierDate:v9];
    v14 = [v6 laterDate:v8];
    [v13 timeIntervalSinceDate:v14];
    v12 = fabs(v15);
  }

  return v12;
}

- (id)advancedStatus
{
  v65 = *MEMORY[0x1E69E9840];
  v38 = +[PNUserDefaults promoterStatusMergeCandidateLimit];
  v3 = +[PNUserDefaults promoterStatusVerifiedPersonLimit];
  v4 = objc_opt_new();
  v5 = [(PNPersonPromoter *)self personClusterManager];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__PNPersonPromoter_advancedStatus__block_invoke;
  aBlock[3] = &unk_1E82A1E28;
  v40 = v5;
  v56 = v40;
  v6 = v4;
  v57 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PNPersonPromoter *)self _verifiedPersonsToProcess];
  v9 = [(PNPersonPromoter *)self _sortedUnverifiedPersonsToDedupForVerifiedPersons:v8 type:3 updateBlock:&__block_literal_global_371];
  v10 = +[PNPersonClusterManager personProcessingSortDescriptors];
  v36 = v8;
  v11 = [v8 sortedArrayUsingDescriptors:v10];

  if ([v11 count] > v3)
  {
    v12 = [v11 subarrayWithRange:{0, v3}];

    v11 = v12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v13 = [v11 count];
    v14 = [v9 count];
    *buf = 134218240;
    v62 = v13;
    v63 = 2048;
    v64 = v14;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PersonPromoter] Executing [PNPersonPromoter advancedStatus] with %tu verified persons, %tu unverified", buf, 0x16u);
  }

  v35 = v9;
  [v6 appendFormat:@"Results with with %tu verified persons, %tu unverified\n\n", objc_msgSend(v11, "count"), objc_msgSend(v9, "count")];
  v15 = [v11 mutableCopy];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v11;
  v41 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v41)
  {
    v39 = *v52;
    v42 = v6;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        [v6 appendFormat:@"Status for %@\n", v17];
        v18 = [v40 pn_fetchCandidatePersonsForPerson:v17];
        if ([v18 count])
        {
          [v6 appendFormat:@"\tComparing with %lu merge candicates:\n", objc_msgSend(v18, "count")];
          v19 = [v18 fetchedObjects];
          v20 = +[PNPersonClusterManager personProcessingSortDescriptors];
          v21 = [v19 sortedArrayUsingDescriptors:v20];

          if ([v21 count] > v38)
          {
            v22 = [v21 subarrayWithRange:0];

            v21 = v22;
          }

          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v23 = v21;
          v24 = [v23 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v48;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v48 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v7[2](v7, v17, *(*(&v47 + 1) + 8 * j), 1);
              }

              v25 = [v23 countByEnumeratingWithState:&v47 objects:v59 count:16];
            }

            while (v25);
          }

          v6 = v42;
          [v42 appendFormat:@"\n"];
        }

        [v15 removeObject:v17];
        if ([v15 count])
        {
          [v6 appendFormat:@"\tComparing with %lu other persons:\n", objc_msgSend(v15, "count")];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v28 = v15;
          v29 = [v28 countByEnumeratingWithState:&v43 objects:v58 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v44;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v44 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v7[2](v7, v17, *(*(&v43 + 1) + 8 * k), 0);
              }

              v30 = [v28 countByEnumeratingWithState:&v43 objects:v58 count:16];
            }

            while (v30);
          }

          v6 = v42;
          [v42 appendFormat:@"\n"];
        }
      }

      v41 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v41);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v62 = "[PNPersonPromoter advancedStatus]";
    v63 = 2112;
    v64 = v6;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %@", buf, 0x16u);
  }

  v33 = v6;

  return v6;
}

void __34__PNPersonPromoter_advancedStatus__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [*(a1 + 32) numberOfAssetsInCommonBetweenPerson:v7 andPerson:v8];
  v11 = [*(a1 + 32) numberOfMomentsInCommonBetweenPerson:v7 andPerson:v8];
  v44 = 0;
  v12 = *(a1 + 32);
  v43 = 0;
  [v12 distanceBetweenPerson:v7 andPerson:v8 useCommonMoments:0 minAgeType:&v44 updateBlock:&__block_literal_global_732 error:&v43];
  v14 = v13;
  v15 = v43;
  if (v15)
  {
    [*(a1 + 40) appendFormat:@"Error: Got an error while getting distances: %@\n", v15];
  }

  v42 = 0;
  v16 = *(a1 + 32);
  v41 = 0;
  [v16 distanceBetweenPerson:v7 andPerson:v8 useCommonMoments:1 minAgeType:&v42 updateBlock:&__block_literal_global_356 error:&v41];
  v18 = v17;
  v19 = v41;
  if (v19)
  {
    [*(a1 + 40) appendFormat:@"Error: Got an error while getting distances with common moments: %@\n", v19];
  }

  v20 = [*(a1 + 32) assetsOverlapBetweenPerson:v7 andPerson:v8];
  [*(a1 + 40) appendFormat:@"\t\tDistance: %.3f (ageType:%hu), Distance with common moments %.3f (ageType:%hu), common assets: %tu (asset overlap: %zd), common moments: %tu. for %@\n", v14, v44, v18, v42, v10, v20, v11, v8];
  if (a4)
  {
    v21 = [*(a1 + 32) pn_fetchFaceGroupsForPerson:v8];
    if (([v8 isVerified] & 1) != 0 || objc_msgSend(v21, "count") == 1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v33 = v21;
        v34 = v19;
        v25 = a1;
        v35 = v9;
        v36 = v7;
        v26 = *v38;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v37 + 1) + 8 * i);
            if ([v28 isDirty])
            {
              v29 = *(v25 + 40);
              v30 = [v8 localIdentifier];
              v31 = [v28 localIdentifier];
              [v29 appendFormat:@"\t\t\tOther person %@ has a dirty cluster %@. Face count in face group: %lu, person face count: %lu\n", v30, v31, objc_msgSend(v28, "faceCountInFaceGroup"), objc_msgSend(v8, "faceCount")];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v24);
        v9 = v35;
        v7 = v36;
        v21 = v33;
        v19 = v34;
      }
    }

    else
    {
      v32 = *(a1 + 40);
      v22 = [v8 localIdentifier];
      [v32 appendFormat:@"Error: Other person %@ should have one face group: %@\n", v22, v21];
    }
  }

  objc_autoreleasePoolPop(v9);
}

- (id)_promoteUnverifiedPersons:(id)a3 withVerifiedPersons:(id)a4 updateBlock:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29 = a5;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = objc_opt_new();
  v28 = v9;
  v12 = [v9 mutableCopy];
  v34 = objc_opt_new();
  v30 = v8;
  v33 = [v8 count];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = [v9 count];
    *&buf[12] = 2048;
    *&buf[14] = [v8 count];
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PersonPromoter] Executing promoter with %lu verified person, %lu unverified persons", buf, 0x16u);
  }

  if (v33)
  {
    for (i = 0; i < v33; i += v31)
    {
      context = objc_autoreleasePoolPush();
      if (v33 - i >= 0x180)
      {
        v14 = 384;
      }

      else
      {
        v14 = v33 - i;
      }

      v35 = [v30 subarrayWithRange:{i, v14}];
      v31 = [v35 count];
      [v34 addObjectsFromArray:v35];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v47 = [v12 count] < 0x64;
      if (*(*&buf[8] + 24) & 1) != 0 || ([v34 allObjects], v15 = objc_claimAutoreleasedReturnValue(), v40[0] = MEMORY[0x1E69E9820], v40[1] = 3221225472, v40[2] = __78__PNPersonPromoter__promoteUnverifiedPersons_withVerifiedPersons_updateBlock___block_invoke, v40[3] = &unk_1E82A1E00, v40[4] = buf, objc_msgSend(v15, "enumerateObjectsUsingBlock:", v40), v15, (*(*&buf[8] + 24)))
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = v34;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v17)
        {
          v18 = *v37;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v36 + 1) + 8 * j);
              v21 = objc_autoreleasePoolPush();
              if ([(PNPersonPromoter *)self _personClusterShouldBeVerified:v20])
              {
                [v11 addObject:v20];
                [v12 addObject:v20];
              }

              objc_autoreleasePoolPop(v21);
            }

            v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v17);
        }

        [v16 minusSet:v11];
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = [v12 count];
          *v42 = 134218240;
          v43 = v24;
          v44 = 2048;
          v45 = 100;
          _os_log_impl(&dword_1C6F5C000, v22, OS_LOG_TYPE_INFO, "[PersonPromoter] [PNPersonPromoter promoteUnverifiedPersonsWithUpdateBlock:] cannot promote anyone has it is over budget: %lu verified persons > %lu budget", v42, 0x16u);
        }
      }

      _Block_object_dispose(buf, 8);

      objc_autoreleasePoolPop(context);
    }
  }

  v25 = [(PNPersonPromoter *)self _interestingPersonsFromVerifiedPersons:v12 unverifiedPersons:v34 updateBlock:v29];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v26 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    *&buf[4] = v26 - Current;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PersonPromoter][Perf] Person Promoter took %fs", buf, 0xCu);
  }

  return v25;
}

unint64_t __78__PNPersonPromoter__promoteUnverifiedPersons_withVerifiedPersons_updateBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 faceCount];
  if (result >= 0x64)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)evaluatePersonPromoterWithUpdateBlock:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(PNPersonPromoter *)self _sortedUnverifiedPersonsToDedupForVerifiedPersons:v6 type:0 updateBlock:v5];
  v8 = [(PNPersonPromoter *)self _promoteUnverifiedPersons:v7 withVerifiedPersons:v6 updateBlock:v5];

  return v8;
}

- (BOOL)promoteUnverifiedPersonsWithUpdateBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"PNPersonPromoterDisabled"];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PersonPromoter] disabled via defaults", v12, 2u);
    }

    v7 = 1;
  }

  else
  {
    v8 = [(PNPersonPromoter *)self _verifiedPersonsToProcess];
    v9 = [(PNPersonPromoter *)self _sortedUnverifiedPersonsToDedupForVerifiedPersons:v8 type:3 updateBlock:v4];
    v10 = [(PNPersonPromoter *)self _promoteUnverifiedPersons:v9 withVerifiedPersons:v8 updateBlock:v4];
    if ([v10 count])
    {
      v7 = [(PNPersonPromoter *)self _promoteInterestingPersons:v10 updateBlock:v4];
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (PNPersonPromoter)initWithPhotoLibrary:(id)a3 andDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = PNPersonPromoter;
  v8 = [(PNPersonPromoter *)&v20 init];
  v9 = v8;
  if (v8)
  {
    [(PNPersonPromoter *)v8 setPhotoLibrary:v6];
    [(PNPersonPromoter *)v9 setDelegate:v7];
    v10 = [[PNPersonClusterManager alloc] initWithPhotoLibrary:v6];
    personClusterManager = v9->_personClusterManager;
    v9->_personClusterManager = v10;

    v12 = objc_alloc_init(PNPersonPromoterProfile);
    promoterProfile = v9->_promoterProfile;
    v9->_promoterProfile = v12;

    v14 = objc_alloc_init(PNPersonDeduperProfile);
    deduperProfile = v9->_deduperProfile;
    v9->_deduperProfile = v14;

    quiescentState = v9->_quiescentState;
    v9->_quiescentState = 0;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    metricsReport = v9->_metricsReport;
    v9->_metricsReport = v17;
  }

  return v9;
}

- (BOOL)isInQuiescentState
{
  v14 = *MEMORY[0x1E69E9840];
  quiescentState = self->_quiescentState;
  if (!quiescentState)
  {
    v4 = [(PNPersonPromoter *)self photoLibrary];
    [v4 pn_faceProcessingProgress];
    v6 = v5;

    v7 = [MEMORY[0x1E696AD98] numberWithInt:v6 >= 0.95];
    v8 = self->_quiescentState;
    self->_quiescentState = v7;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSNumber *)self->_quiescentState BOOLValue];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PersonPromoter] Executing promoter with quiescent state = %@", &v12, 0xCu);
    }

    quiescentState = self->_quiescentState;
  }

  return [(NSNumber *)quiescentState BOOLValue];
}

+ (void)cumulativeNormalDistributionWithData:(id)a3 sigmaFactor:(double)a4 usingBlock:(id)a5
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([(NSMapTable *)v7 count])
  {
    v33 = NSAllMapTableValues(v7);
    v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:?];
    v10 = MEMORY[0x1E696ABC8];
    v40[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v12 = [v10 expressionForFunction:@"average:" arguments:v11];
    v13 = [v12 expressionValueWithObject:0 context:0];
    [v13 doubleValue];
    v15 = v14;

    v16 = MEMORY[0x1E696ABC8];
    v39 = v9;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v18 = [v16 expressionForFunction:@"median:" arguments:v17];
    v19 = [v18 expressionValueWithObject:0 context:0];
    [v19 doubleValue];
    v21 = v20;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = [(NSMapTable *)v7 keyEnumerator];
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = v21 * a4;
      v26 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v34 + 1) + 8 * i);
          v29 = [(NSMapTable *)v7 objectForKey:v28];
          [v29 doubleValue];
          v31 = v30;
          v32 = erfc((v15 - v30) / v25 * 0.707106781);
          v8[2](v8, v28, v31, v15, v25, fmin(v32 * 0.5, 1.0));
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v24);
    }
  }
}

+ (void)probabilityDensityNormalDistributionWithData:(id)a3 sigmaFactor:(double)a4 usingBlock:(id)a5
{
  v44[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v37 = NSAllMapTableValues(v7);
  v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:?];
  v10 = MEMORY[0x1E696ABC8];
  v44[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v12 = [v10 expressionForFunction:@"average:" arguments:v11];
  v13 = [v12 expressionValueWithObject:0 context:0];
  [v13 doubleValue];
  v15 = v14;

  v16 = MEMORY[0x1E696ABC8];
  v43 = v9;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v18 = [v16 expressionForFunction:@"stddev:" arguments:v17];
  v19 = [v18 expressionValueWithObject:0 context:0];
  [v19 doubleValue];
  v21 = v20;

  v22 = v21 * a4;
  v23 = v22 * (v22 + v22);
  v24 = exp(-((v15 - v15) * (v15 - v15)) / v23);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = [(NSMapTable *)v7 keyEnumerator];
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 1.0 / sqrt(v23 * 3.14159265);
    v29 = v24 * v28;
    v30 = *v39;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(v25);
        }

        v32 = *(*(&v38 + 1) + 8 * i);
        v33 = [(NSMapTable *)v7 objectForKey:v32];
        [v33 doubleValue];
        v35 = v34;
        v36 = exp(-((v34 - v15) * (v34 - v15)) / v23);
        v8[2](v8, v32, v35, v15, v22, v28 * v36, v29);
      }

      v27 = [v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v27);
  }
}

+ (unint64_t)numberOfFacesProcessedOnLastRunAtURL:(id)a3
{
  v3 = [a1 _personPromoterInformationAtURL:a3];
  v4 = [v3 objectForKeyedSubscript:@"NumberOfFacesProcessedOnLastRun"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

+ (id)requestSuggestedMePersonIdentifierAtURL:(id)a3 withError:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] pn_errorWithCode:1 localizedDescription:@"Me inference is handled by VU."];
  }

  return 0;
}

+ (void)setProcessed:(BOOL)a3 forLibrary:(id)a4
{
  v4 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 pn_persistentStorageDirectoryURL];
  v8 = [a1 _personPromoterInformationAtURL:v7];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v4)
  {
    [v9 setObject:&unk_1F46E5330 forKey:@"Version"];
    [v10 setObject:MEMORY[0x1E695E118] forKey:@"ProcessedInQuiescentState"];
    v11 = [v6 pn_numberOfFacesWithFaceprints];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    [v10 setObject:v12 forKey:@"NumberOfFacesProcessedOnLastRun"];
  }

  else
  {
    [v9 removeObjectForKey:@"Version"];
    [v10 removeObjectForKey:@"ProcessedInQuiescentState"];
  }

  if (([a1 _writePersonPromoterInformation:v10 atURL:v7] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = 138412290;
    v14 = v10;
    _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error setting the People Promoter hasProcessed: %@", &v13, 0xCu);
  }
}

+ (BOOL)hasProcessedForLibrary:(id)a3
{
  v4 = [a3 pn_persistentStorageDirectoryURL];
  v5 = [a1 _personPromoterInformationAtURL:v4];
  v6 = [v5 objectForKeyedSubscript:@"Version"];
  if ([v6 unsignedIntegerValue] == 15)
  {
    v7 = [v5 objectForKeyedSubscript:@"ProcessedInQuiescentState"];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_writePersonPromoterInformation:(id)a3 atURL:(id)a4
{
  v5 = a3;
  v6 = [a4 URLByAppendingPathComponent:@"PersonPromoter"];
  v7 = [v5 writeToURL:v6 atomically:0];

  return v7;
}

+ (id)_personPromoterInformationAtURL:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 URLByAppendingPathComponent:@"PersonPromoter"];

  v7 = [v6 path];
  if (![v5 fileExistsAtPath:v7] || (v8 = objc_msgSend(objc_alloc(MEMORY[0x1E695DF20]), "initWithContentsOfFile:", v7)) == 0)
  {
    v8 = [MEMORY[0x1E695DF20] dictionary];
  }

  return v8;
}

- (void)reportMetrics
{
  v2 = [(PNPersonPromoter *)self metricsReport];
  if ([v2 count])
  {
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.Photos.People.personPromoter" withPayload:v2];
  }
}

- (void)incrementMetricForKey:(id)a3 withValue:(unint64_t)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = [(PNPersonPromoter *)self metricsReport];
    v8 = [v7 objectForKeyedSubscript:v6];
    v9 = [v8 unsignedIntegerValue];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 + a4];
    v10 = [(PNPersonPromoter *)self metricsReport];
    [v10 setObject:v11 forKeyedSubscript:v6];
  }
}

@end
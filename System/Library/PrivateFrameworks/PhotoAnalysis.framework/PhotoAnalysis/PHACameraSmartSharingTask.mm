@interface PHACameraSmartSharingTask
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (id)_libraryScopeToUseWithGraphManager:(id)a3 error:(id *)a4;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHACameraSmartSharingTask

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHACameraSmartSharingTask timeoutFatal:]", "PHACameraSmartSharingTask.m", 280, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHACameraSmartSharingTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v144 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v97 = a5;
  if (![v9 isCancelledWithProgress:0.0])
  {
    v11 = [v8 workingContext];
    v12 = [v11 loggingConnection];

    v13 = [(PHACameraSmartSharingTask *)self _libraryScopeToUseWithGraphManager:v8 error:a5];
    if (v13)
    {
      v14 = [v8 photoLibrary];
      v15 = [v14 librarySpecificFetchOptions];

      v105 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      v16 = MEMORY[0x277CD99C8];
      v103 = v15;
      v17 = [v15 copy];
      v18 = [v16 fetchParticipantsInShare:v13 options:v17];

      v96 = v8;
      v19 = 0x277CBE000uLL;
      v110 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      obj = v18;
      v102 = v13;
      v112 = [obj countByEnumeratingWithState:&v132 objects:v143 count:16];
      if (v112)
      {
        v111 = *v133;
        v100 = *MEMORY[0x277CBCFC0];
        v99 = *MEMORY[0x277CBD098];
        v98 = *MEMORY[0x277CBD018];
        *&v20 = 138478339;
        v95 = v20;
        v21 = MEMORY[0x277CBEBF8];
        oslog = v12;
        v101 = v9;
LABEL_10:
        v22 = 0;
        while (1)
        {
          if (*v133 != v111)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v132 + 1) + 8 * v22);
          context = objc_autoreleasePoolPush();
          if ([v9 isCancelledWithProgress:0.5])
          {
            objc_autoreleasePoolPop(context);
            v69 = 1;
            goto LABEL_59;
          }

          if ([v23 isCurrentUser])
          {
            goto LABEL_55;
          }

          v113 = objc_alloc_init(*(v19 + 2904));
          v115 = v23;
          if ([v23 acceptanceStatus] != 2)
          {
            if (![v13 libraryScopeInLocalMode])
            {
              v45 = v113;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v46 = v22;
                v47 = v12;
                v48 = [v115 acceptanceStatus];
                *buf = 138412546;
                *v139 = v115;
                *&v139[8] = 1024;
                *&v139[10] = v48;
                _os_log_impl(&dword_22FA28000, v47, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: Not scanning for participant:%@ acceptanceStatus:%d", buf, 0x12u);

                v22 = v46;
              }

              goto LABEL_54;
            }

            v24 = v22;
            v25 = v12;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v23 acceptanceStatus];
              *buf = 138412546;
              *v139 = v23;
              *&v139[8] = 1024;
              *&v139[10] = v26;
              _os_log_impl(&dword_22FA28000, v25, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: Allowed scan because of local mode, participant:%@ acceptance status:%d", buf, 0x12u);
            }

            v22 = v24;
          }

          v109 = v22;
          v27 = MEMORY[0x277CD9938];
          v28 = [v103 copy];
          v29 = [v27 fetchPersonForShareParticipant:v23 options:v28];

          if (![v29 count] && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v139 = v23;
            _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: Missing PHPerson for share participant:%@", buf, 0xCu);
          }

          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v30 = v29;
          v31 = [v30 countByEnumeratingWithState:&v128 objects:v142 count:16];
          if (!v31)
          {
            break;
          }

          v32 = v31;
          v33 = 0;
          v34 = *v129;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v129 != v34)
              {
                objc_enumerationMutation(v30);
              }

              v36 = *(*(&v128 + 1) + 8 * i);
              v37 = [v36 linkedContactWithKeysToFetch:v21];
              v38 = [v37 identifier];
              v39 = [v38 length];

              if (v39)
              {
                v40 = [v37 identifier];

                v33 = v40;
              }

              else if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v139 = v115;
                *&v139[8] = 2112;
                *&v139[10] = v36;
                _os_log_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: Missing contact for for share participant:%@ person:%@", buf, 0x16u);
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v128 objects:v142 count:16];
          }

          while (v32);

          v12 = oslog;
          v19 = 0x277CBE000;
          if (!v33)
          {
            goto LABEL_37;
          }

          v41 = v113;
          [v113 addObject:v33];
LABEL_47:
          v50 = objc_alloc_init(*(v19 + 2904));
          v51 = [v115 phoneNumber];
          if ([v51 length])
          {
            v52 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v51];
            [v50 addObject:v52];
          }

          v107 = v50;
          v53 = objc_alloc_init(*(v19 + 2904));
          v54 = [v115 emailAddress];
          if ([v54 length])
          {
            [v53 addObject:v54];
          }

          v55 = objc_alloc(MEMORY[0x277CD9820]);
          v56 = [v41 allObjects];
          v108 = v51;
          v57 = [v55 initWithPhoneNumber:v51 emailAddress:v54 contactIdentifiers:v56];

          [v110 addObject:v57];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            *v139 = v57;
            *&v139[8] = 2112;
            *&v139[10] = v115;
            _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: Added identify %{private}@ for participant:%@", buf, 0x16u);
          }

          v106 = v57;
          v58 = objc_alloc(MEMORY[0x277CBDA70]);
          v137[0] = v100;
          v137[1] = v99;
          v137[2] = v98;
          v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:3];
          v60 = [v58 initWithKeysToFetch:v59];

          v61 = MEMORY[0x277CBDA58];
          v45 = v113;
          v62 = [v113 allObjects];
          v63 = [v61 predicateForContactsWithIdentifiers:v62];
          [v60 setPredicate:v63];

          v127 = 0;
          v121[0] = MEMORY[0x277D85DD0];
          v121[1] = 3221225472;
          v121[2] = __72__PHACameraSmartSharingTask_runWithGraphManager_progressReporter_error___block_invoke;
          v121[3] = &unk_2788B1668;
          v122 = v53;
          v123 = v110;
          v124 = v12;
          v125 = v115;
          v126 = v107;
          v64 = v53;
          v65 = v107;
          [v105 enumerateContactsWithFetchRequest:v60 error:&v127 usingBlock:v121];
          v66 = v127;

          v12 = oslog;
          v9 = v101;
          v13 = v102;
          v19 = 0x277CBE000;
          v22 = v109;
LABEL_54:

LABEL_55:
          objc_autoreleasePoolPop(context);
          if (++v22 == v112)
          {
            v112 = [obj countByEnumeratingWithState:&v132 objects:v143 count:16];
            if (v112)
            {
              goto LABEL_10;
            }

            goto LABEL_57;
          }
        }

LABEL_37:
        v41 = v113;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *v139 = v115;
          _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: Unable to retrieve contact for share participant %{private}@, falling back to lookup by email/phone number.", buf, 0xCu);
        }

        v42 = [v115 emailAddress];
        v43 = [v115 phoneNumber];
        v44 = [v105 allContactIDsMatchingEmailAddress:v42 orPhoneNumber:v43];

        if ([v44 count])
        {
          [v113 addObjectsFromArray:v44];
        }

        else
        {
          v49 = v12;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v67 = [v115 emailAddress];
            v68 = [v115 phoneNumber];
            *buf = v95;
            *v139 = v115;
            *&v139[8] = 2113;
            *&v139[10] = v67;
            v140 = 2113;
            v141 = v68;
            _os_log_error_impl(&dword_22FA28000, v49, OS_LOG_TYPE_ERROR, "PHACameraSmartSharingTask: Unable to retrieve fallback contact IDs for share participant %{private}@ with email %{private}@ or phone number %{private}@", buf, 0x20u);
          }

          v41 = v113;
        }

        v33 = 0;
        goto LABEL_47;
      }

LABEL_57:
      v69 = 0;
LABEL_59:

      v8 = v96;
      if (![v110 count] && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v139 = v13;
        _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: No share participants to auto-share with for libraryScope %@", buf, 0xCu);
      }

      if ((v69 & 1) != 0 || [v9 isCancelledWithProgress:0.5])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v139 = 234;
          *&v139[4] = 2080;
          *&v139[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SharedLibraryTasks/PHACameraSmartSharingTask.m";
          _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        if (v97 && !*v97)
        {
          [MEMORY[0x277D22C28] errorForCode:-4];
          *v97 = v10 = 0;
        }

        else
        {
          v10 = 0;
        }

        v79 = 1;
      }

      else
      {
        v70 = [v96 homeCircularRegions];
        v71 = v70;
        v72 = MEMORY[0x277CBEBF8];
        if (v70)
        {
          v73 = v70;
        }

        else
        {
          v73 = MEMORY[0x277CBEBF8];
        }

        v74 = v73;

        if ([v96 isReady])
        {
          v75 = [v96 recentFrequentLocationRegions];
          v76 = v75;
          if (v75)
          {
            v77 = v75;
          }

          else
          {
            v77 = v72;
          }

          v78 = v77;
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: graph manager not ready, smart sharing cache will be missing frequent location data", buf, 2u);
          }

          v78 = MEMORY[0x277CBEBF8];
        }

        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v80 = v74;
        v81 = [v80 countByEnumeratingWithState:&v117 objects:v136 count:16];
        if (v81)
        {
          v82 = *v118;
          while (2)
          {
            for (j = 0; j != v81; ++j)
            {
              if (*v118 != v82)
              {
                objc_enumerationMutation(v80);
              }

              v84 = *(*(&v117 + 1) + 8 * j);
              [v84 center];
              v86 = v85;
              [v84 center];
              if ([MEMORY[0x277D27728] isLocationShiftRequiredForCoordinate:v86])
              {
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  *v139 = v84;
                  _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: locationShiftingRequired needed for location: %{private}@", buf, 0xCu);
                }

                v81 = 1;
                goto LABEL_98;
              }
            }

            v81 = [v80 countByEnumeratingWithState:&v117 objects:v136 count:16];
            if (v81)
            {
              continue;
            }

            break;
          }
        }

LABEL_98:

        v87 = objc_alloc(MEMORY[0x277CD9828]);
        v88 = [v102 localIdentifier];
        v89 = [v110 allObjects];
        v90 = [v87 initWithLibraryScopeIdentifier:v88 identities:v89 homeLocations:v80 frequentLocations:v78 locationShiftingRequired:v81];

        v91 = MEMORY[0x277CD9828];
        v8 = v96;
        v92 = [v96 photoLibrary];
        v10 = [v91 storeMetadata:v90 forPhotoLibrary:v92 error:v97];

        if (v10)
        {
          v13 = v102;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            *v139 = v90;
            _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: Successfully generated smart sharing cache: %{private}@", buf, 0xCu);
          }
        }

        else
        {
          v13 = v102;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v94 = v97;
            if (v97)
            {
              v94 = *v97;
            }

            *buf = 138412290;
            *v139 = v94;
            _os_log_error_impl(&dword_22FA28000, v12, OS_LOG_TYPE_ERROR, "PHACameraSmartSharingTask: Error writing metadata: %@", buf, 0xCu);
          }
        }

        v79 = 0;
      }

      if (v79)
      {
        goto LABEL_109;
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22FA28000, v12, OS_LOG_TYPE_ERROR, "PHACameraSmartSharingTask: No existing active scope, not generating cache.", buf, 2u);
      }

      v10 = 0;
    }

    if (![v9 isCancelledWithProgress:{1.0, v95}])
    {
LABEL_110:

      goto LABEL_111;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v139 = 272;
      *&v139[4] = 2080;
      *&v139[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SharedLibraryTasks/PHACameraSmartSharingTask.m";
      _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    if (v97 && !*v97)
    {
      [MEMORY[0x277D22C28] errorForCode:-4];
      *v97 = v10 = 0;
      goto LABEL_110;
    }

LABEL_109:
    v10 = 0;
    goto LABEL_110;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v139 = 125;
    *&v139[4] = 2080;
    *&v139[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/SharedLibraryTasks/PHACameraSmartSharingTask.m";
    _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  if (a5 && !*a5)
  {
    [MEMORY[0x277D22C28] errorForCode:-4];
    *v97 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_111:

  return v10;
}

void __72__PHACameraSmartSharingTask_runWithGraphManager_progressReporter_error___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v36 = a2;
  v3 = [v36 emailAddresses];
  v4 = [v3 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v46;
    *&v5 = 138478083;
    v34 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v45 + 1) + 8 * i) value];
        if (([*(a1 + 32) containsObject:v9] & 1) == 0)
        {
          v10 = objc_alloc(MEMORY[0x277CD9820]);
          v11 = [v36 identifier];
          v56 = v11;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
          v13 = [v10 initWithPhoneNumber:0 emailAddress:v9 contactIdentifiers:v12];

          [*(a1 + 40) addObject:v13];
          v14 = *(a1 + 48);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 56);
            *buf = v34;
            v53 = v13;
            v54 = 2112;
            v55 = v15;
            _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: Added additional identify %{private}@ for participant:%@", buf, 0x16u);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v6);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = [v36 phoneNumbers];
  v17 = [v16 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v42;
    *&v18 = 138478083;
    v35 = v18;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [*(*(&v41 + 1) + 8 * j) value];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v23 = *(a1 + 64);
        v24 = [v23 countByEnumeratingWithState:&v37 objects:v50 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v38;
LABEL_19:
          v27 = 0;
          while (1)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(v23);
            }

            if ([*(*(&v37 + 1) + 8 * v27) isLikePhoneNumber:v22])
            {
              break;
            }

            if (v25 == ++v27)
            {
              v25 = [v23 countByEnumeratingWithState:&v37 objects:v50 count:16];
              if (v25)
              {
                goto LABEL_19;
              }

              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:

          v28 = objc_alloc(MEMORY[0x277CD9820]);
          v29 = [v22 stringValue];
          v30 = [v36 identifier];
          v49 = v30;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
          v23 = [v28 initWithPhoneNumber:v29 emailAddress:0 contactIdentifiers:v31];

          [*(a1 + 40) addObject:v23];
          v32 = *(a1 + 48);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(a1 + 56);
            *buf = v35;
            v53 = v23;
            v54 = 2112;
            v55 = v33;
            _os_log_impl(&dword_22FA28000, v32, OS_LOG_TYPE_DEFAULT, "PHACameraSmartSharingTask: Added additional identify %{private}@ for participant:%@", buf, 0x16u);
          }
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v19);
  }
}

- (id)_libraryScopeToUseWithGraphManager:(id)a3 error:(id *)a4
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PHACameraSmartSharingTask *)self libraryScope];

  if (!v7)
  {
    v8 = [v6 photoLibrary];
    v9 = [v8 librarySpecificFetchOptions];

    [v9 setFetchLimit:1];
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
    v27[0] = v10;
    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
    v27[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    [v9 setSortDescriptors:v12];

    v13 = [v6 workingContext];
    v14 = [v13 loggingConnection];

    v15 = MEMORY[0x277CD98A8];
    if (!self->_libraryScopeLocalIdentifier)
    {
      v20 = [v9 copy];
      v21 = [v15 fetchActiveLibraryScopeWithOptions:v20];
      v19 = [v21 firstObject];

      goto LABEL_8;
    }

    libraryScopeLocalIdentifier = self->_libraryScopeLocalIdentifier;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&libraryScopeLocalIdentifier count:1];
    v17 = [v9 copy];
    v18 = [v15 fetchLibraryScopesWithLocalIdentifiers:v16 options:v17];
    v19 = [v18 firstObject];

    if (v19)
    {
LABEL_9:
      [(PHACameraSmartSharingTask *)self setLibraryScope:v19];

      goto LABEL_10;
    }

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find library scope for localIdentifier: %@", self->_libraryScopeLocalIdentifier];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v20;
      _os_log_error_impl(&dword_22FA28000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      if (a4)
      {
        goto LABEL_6;
      }
    }

    else if (a4)
    {
LABEL_6:
      [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9 localizedDescription:v20];
      *a4 = v19 = 0;
LABEL_8:

      goto LABEL_9;
    }

    v19 = 0;
    goto LABEL_8;
  }

LABEL_10:
  v22 = [(PHACameraSmartSharingTask *)self libraryScope];

  return v22;
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 isSystemPhotoLibrary];

  if ((v6 & 1) == 0)
  {
    v9 = [v4 workingContext];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v11 = "PHACameraSmartSharingTask: Task is running on a non system photo library: not running Camera Smart Sharing job";
      v12 = &v16;
LABEL_8:
      _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  v7 = [(PHACameraSmartSharingTask *)self _libraryScopeToUseWithGraphManager:v4 error:0];

  if (!v7)
  {
    v13 = [v4 workingContext];
    v10 = [v13 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v11 = "PHACameraSmartSharingTask: Task is running without an active library scope: not running Camera Smart Sharing job";
      v12 = &v15;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end
@interface PLSearchIndexingIncrementalUpdateBatch
- (BOOL)hasDonations;
- (PLSearchIndexingIncrementalUpdateBatch)initWithWorkItems:(id)items flags:(int64_t)flags;
- (id)_descriptionForSearchableIdentifiers:(id)identifiers ineligibleIdentifiers:(id)ineligibleIdentifiers entity:(unint64_t)entity;
- (unint64_t)_inLibraryPerform_searchableEntityForAmbiguousIdentifier:(id)identifier library:(id)library;
- (unint64_t)targetEntity;
- (void)_inPerformBlock_coalesceWithLibrary:(id)library;
- (void)_inPerformBlock_removeWorkItemsNotMatchingOriginalFlags;
- (void)_inPerformTransaction_processAmbiguousEntityJobsWithFlags:(int64_t)flags library:(id)library;
- (void)inPerformBlock_prepareDonationsWithLibrary:(id)library;
- (void)inPerformTransaction_cleanUpWithSuccess:(BOOL)success library:(id)library;
@end

@implementation PLSearchIndexingIncrementalUpdateBatch

- (void)_inPerformTransaction_processAmbiguousEntityJobsWithFlags:(int64_t)flags library:(id)library
{
  v51 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v32 = [(NSArray *)self->_workItems count];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_workItems;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v36 = *v39;
    selfCopy = self;
    do
    {
      v9 = 0;
      v34 = v7;
      do
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        identifier = [v10 identifier];
        v12 = [(PLSearchIndexingIncrementalUpdateBatch *)self _inLibraryPerform_searchableEntityForAmbiguousIdentifier:identifier library:libraryCopy];

        if (v12 > 9)
        {
          v13 = 3;
        }

        else
        {
          v13 = qword_19C60FC88[v12];
        }

        v14 = v13 & flags;
        v15 = PLSearchBackendIndexingEngineGetLog();
        v16 = v15;
        if (v14)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v17 = v8;
            v18 = PLBackgroundJobWorkerSearchJobFlagsDescription(flags);
            v19 = PLBackgroundJobWorkerSearchJobFlagsDescription(v14);
            v20 = @"invalid";
            if (v12 <= 9)
            {
              v20 = off_1E7571300[v12];
            }

            v21 = v20;
            identifier2 = [v10 identifier];
            *buf = 138413058;
            v43 = v18;
            v44 = 2112;
            v45 = v19;
            v46 = 2112;
            v47 = v21;
            v48 = 2112;
            v49 = identifier2;
            _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Converting ambiguous job with flags: %@ to new job with flags: %@, entity: %@, identifier: %@", buf, 0x2Au);

            v8 = v17;
            self = selfCopy;
            v7 = v34;
          }

          identifier3 = [v10 identifier];
          v16 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:identifier3 flags:v14 inLibrary:libraryCopy];

          -[NSObject setJobType:](v16, "setJobType:", [v10 jobType]);
          ++v8;
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v24 = v8;
          v25 = PLBackgroundJobWorkerSearchJobFlagsDescription(flags);
          v26 = @"invalid";
          if (v12 <= 9)
          {
            v26 = off_1E7571300[v12];
          }

          v27 = v26;
          identifier4 = [v10 identifier];
          *buf = 138543874;
          v43 = v25;
          v44 = 2114;
          v45 = v27;
          v46 = 2114;
          v47 = identifier4;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Incompatible job flags: %{public}@ for entity: %{public}@ with identifier: %{public}@, job will be a no op", buf, 0x20u);

          v8 = v24;
          self = selfCopy;
          v7 = v34;
        }

        managedObjectContext = [libraryCopy managedObjectContext];
        [managedObjectContext deleteObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v30 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PLBackgroundJobWorkerSearchJobFlagsDescription(flags);
    *buf = 134218498;
    v43 = v8;
    v44 = 2048;
    v45 = v32;
    v46 = 2114;
    v47 = v31;
    _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Converted %lu out of %lu ambiguous jobs with flags: %{public}@ to resolvable jobs", buf, 0x20u);
  }
}

- (unint64_t)_inLibraryPerform_searchableEntityForAmbiguousIdentifier:(id)identifier library:(id)library
{
  v26[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  libraryCopy = library;
  v8 = [PLManagedAsset assetWithUUID:identifierCopy inLibrary:libraryCopy];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [PLGenericAlbum albumWithUUID:identifierCopy inLibrary:libraryCopy];
    if (v10)
    {
      v9 = 3;
    }

    else
    {
      v26[0] = identifierCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      managedObjectContext = [libraryCopy managedObjectContext];
      v13 = [PLPhotosHighlight fetchHighlightsWithUUIDs:v11 managedObjectContext:managedObjectContext error:0];
      firstObject = [v13 firstObject];

      if (firstObject)
      {
        v9 = 4;
      }

      else
      {
        v15 = [PLMemory memoryWithUUID:identifierCopy inPhotoLibrary:libraryCopy];
        if (v15)
        {
          v9 = 5;
        }

        else
        {
          allObjects = [(NSMutableSet *)self->_identifiers allObjects];
          v24 = +[PLCollectionShare propertiesToFetch];
          managedObjectContext2 = [libraryCopy managedObjectContext];
          v17 = [PLCollectionShare fetchCollectionSharesWithUUIDs:allObjects propertiesToFetch:v24 managedObjectContext:managedObjectContext2];
          result = [v17 result];
          firstObject2 = [result firstObject];

          v20 = firstObject2;
          if (firstObject2)
          {
            v9 = 9;
          }

          else
          {
            managedObjectContext3 = [libraryCopy managedObjectContext];
            v22 = [PLPerson personWithUUID:identifierCopy inManagedObjectContext:managedObjectContext3];

            if (v22)
            {
              v9 = 6;
            }

            else
            {
              v9 = 0;
            }
          }
        }
      }
    }
  }

  return v9;
}

- (id)_descriptionForSearchableIdentifiers:(id)identifiers ineligibleIdentifiers:(id)ineligibleIdentifiers entity:(unint64_t)entity
{
  identifiersCopy = identifiers;
  ineligibleIdentifiersCopy = ineligibleIdentifiers;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10 = [identifiersCopy count];
  if (entity > 9)
  {
    v11 = @"invalid";
  }

  else
  {
    v11 = off_1E7571300[entity];
  }

  v12 = v11;
  [v9 appendFormat:@"%tu %@ searchable objects", v10, v12];

  if ([identifiersCopy count] && objc_msgSend(identifiersCopy, "count") <= 9)
  {
    v13 = [identifiersCopy componentsJoinedByString:{@", "}];
    [v9 appendFormat:@" (%@)", v13];
  }

  [v9 appendFormat:@", %tu ineligible identifiers to remove", objc_msgSend(ineligibleIdentifiersCopy, "count")];
  if ([ineligibleIdentifiersCopy count] && objc_msgSend(ineligibleIdentifiersCopy, "count") <= 9)
  {
    v14 = [ineligibleIdentifiersCopy componentsJoinedByString:{@", "}];
    [v9 appendFormat:@" (%@)", v14];
  }

  return v9;
}

- (void)inPerformTransaction_cleanUpWithSuccess:(BOOL)success library:(id)library
{
  v183 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  selfCopy = self;
  if (!success)
  {
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v17 = self->_ineligibleIdentifiers;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v167 objects:v182 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v168;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v168 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v167 + 1) + 8 * i);
          v23 = [libraryCopy addBackgroundJobWorkItemWithIdentifier:v22 jobType:3 jobFlags:1];
          v24 = [(NSMutableDictionary *)self->_normalizedWorkItemsByIdentifiers objectForKeyedSubscript:v22];
          timestamp = [v24 timestamp];
          [v23 setTimestamp:timestamp];

          v26 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
          [v23 setDelayUntilDate:v26];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v167 objects:v182 count:16];
      }

      while (v19);
    }

    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v27 = self->_eligibleManagedObjects;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v163 objects:v181 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v164;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v164 != v30)
          {
            objc_enumerationMutation(v27);
          }

          normalizedWorkItemsByIdentifiers = selfCopy->_normalizedWorkItemsByIdentifiers;
          v33 = *(*(&v163 + 1) + 8 * j);
          searchIdentifier = [v33 searchIdentifier];
          v35 = [(NSMutableDictionary *)normalizedWorkItemsByIdentifiers objectForKeyedSubscript:searchIdentifier];

          searchIdentifier2 = [v33 searchIdentifier];
          v37 = [libraryCopy addBackgroundJobWorkItemWithIdentifier:searchIdentifier2 jobType:3 jobFlags:{objc_msgSend(v35, "jobFlags")}];

          timestamp2 = [v35 timestamp];
          [v37 setTimestamp:timestamp2];

          v39 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
          [v37 setDelayUntilDate:v39];
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v163 objects:v181 count:16];
      }

      while (v29);
    }

LABEL_31:
    self = selfCopy;
    goto LABEL_32;
  }

  if (![(PLSearchIndexingIncrementalUpdateBatch *)self _flagsAreAmbiguous]&& ![(PLSearchIndexingIncrementalUpdateBatch *)self _flagsAreIncompatible])
  {
    targetEntity = [(PLSearchIndexingIncrementalUpdateBatch *)self targetEntity];
    if (targetEntity > 5)
    {
      if (targetEntity != 6)
      {
        if (targetEntity != 7)
        {
          if (targetEntity != 8)
          {
            goto LABEL_32;
          }

          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          obj = self->_identifiers;
          v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v138 objects:v173 count:16];
          if (v8)
          {
            v9 = v8;
            v124 = *v139;
            do
            {
              for (k = 0; k != v9; ++k)
              {
                if (*v139 != v124)
                {
                  objc_enumerationMutation(obj);
                }

                v11 = *(*(&v138 + 1) + 8 * k);
                v12 = [(NSMutableDictionary *)selfCopy->_normalizedWorkItemsByIdentifiers objectForKeyedSubscript:v11];
                managedObjectContext = [libraryCopy managedObjectContext];
                libraryServicesManager = [libraryCopy libraryServicesManager];
                wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];
                v135[0] = MEMORY[0x1E69E9820];
                v135[1] = 3221225472;
                v135[2] = __90__PLSearchIndexingIncrementalUpdateBatch_inPerformTransaction_cleanUpWithSuccess_library___block_invoke_70;
                v135[3] = &unk_1E7572788;
                v136 = libraryCopy;
                v137 = v12;
                v16 = v12;
                [PLMoment enumerateAssetUUIDsForSearchIndexingWithMomentUUID:v11 managedObjectContext:managedObjectContext libraryIdentifier:wellKnownPhotoLibraryIdentifier assetUUIDHandler:v135];
              }

              v9 = [(NSMutableSet *)obj countByEnumeratingWithState:&v138 objects:v173 count:16];
            }

            while (v9);
          }

          goto LABEL_31;
        }

        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v61 = self->_identifiers;
        v62 = [(NSMutableSet *)v61 countByEnumeratingWithState:&v150 objects:v179 count:16];
        if (!v62)
        {
          goto LABEL_103;
        }

        v64 = v62;
        v65 = *v151;
        v66 = off_1E7560000;
        *&v63 = 138543362;
        v112 = v63;
        v113 = v61;
        v114 = *v151;
        v123 = libraryCopy;
LABEL_60:
        v67 = 0;
        v115 = v64;
        while (1)
        {
          if (*v151 != v65)
          {
            objc_enumerationMutation(v61);
          }

          v68 = *(*(&v150 + 1) + 8 * v67);
          v112 = [(NSMutableDictionary *)self->_normalizedWorkItemsByIdentifiers objectForKeyedSubscript:v68, v112];
          if (([v112 jobFlags] & 0x400) == 0)
          {
            goto LABEL_91;
          }

          v69 = [(__objc2_class *)v66[421] fetchSearchEntityWithEncodedIdentifierString:v68 inLibrary:libraryCopy];
          v70 = v69;
          if (![v69 isSuccess])
          {
            break;
          }

          result = [v69 result];
          v72 = [result count];

          v69 = v70;
          if (v72)
          {
            result2 = [v70 result];
            firstObject = [result2 firstObject];
            v149 = 0;
            v75 = [firstObject fetchAllMomentsWithError:&v149];
            v119 = v149;

            v76 = v75;
            if (v75)
            {
              if ([v75 count])
              {
                v116 = v67;
                v147 = 0u;
                v148 = 0u;
                v145 = 0u;
                v146 = 0u;
                v77 = v75;
                v78 = [v77 countByEnumeratingWithState:&v145 objects:v174 count:16];
                obja = v77;
                if (v78)
                {
                  v79 = v78;
                  v117 = v75;
                  v80 = *v146;
                  do
                  {
                    for (m = 0; m != v79; ++m)
                    {
                      if (*v146 != v80)
                      {
                        objc_enumerationMutation(v77);
                      }

                      v82 = *(*(&v145 + 1) + 8 * m);
                      v83 = PLSearchBackendIndexingEngineGetLog();
                      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                      {
                        uuid = [v82 uuid];
                        result3 = [v70 result];
                        firstObject2 = [result3 firstObject];
                        uuid2 = [firstObject2 uuid];
                        *buf = 138543618;
                        v176 = uuid;
                        v177 = 2114;
                        v178 = uuid2;
                        _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_DEFAULT, "Fanning out to moment %{public}@ for search entity %{public}@", buf, 0x16u);
                      }

                      uuid3 = [v82 uuid];
                      managedObjectContext2 = [v123 managedObjectContext];
                      libraryServicesManager2 = [v123 libraryServicesManager];
                      wellKnownPhotoLibraryIdentifier2 = [libraryServicesManager2 wellKnownPhotoLibraryIdentifier];
                      v142[0] = MEMORY[0x1E69E9820];
                      v142[1] = 3221225472;
                      v142[2] = __90__PLSearchIndexingIncrementalUpdateBatch_inPerformTransaction_cleanUpWithSuccess_library___block_invoke_69;
                      v142[3] = &unk_1E7572788;
                      v143 = v123;
                      v144 = v112;
                      [PLMoment enumerateAssetUUIDsForSearchIndexingWithMomentUUID:uuid3 managedObjectContext:managedObjectContext2 libraryIdentifier:wellKnownPhotoLibraryIdentifier2 assetUUIDHandler:v142];

                      v77 = obja;
                    }

                    v69 = v70;
                    v79 = [obja countByEnumeratingWithState:&v145 objects:v174 count:16];
                  }

                  while (v79);
                  self = selfCopy;
                  v61 = v113;
                  v65 = v114;
                  v64 = v115;
                  v67 = v116;
                  v66 = off_1E7560000;
                  v92 = v119;
LABEL_82:
                  v76 = v117;
LABEL_88:

LABEL_89:
                  goto LABEL_90;
                }

                v69 = v70;
                v66 = off_1E7560000;
              }

              else
              {
                v99 = PLSearchBackendIndexingEngineGetLog();
                v69 = v70;
                obja = v99;
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  [v70 result];
                  v100 = v118 = v76;
                  firstObject3 = [v100 firstObject];
                  [firstObject3 uuid];
                  v103 = v102 = v67;
                  *buf = v112;
                  v176 = v103;
                  _os_log_impl(&dword_19BF1F000, v99, OS_LOG_TYPE_DEFAULT, "Found 0 moments for search entity with uuid %{public}@, will not index any assets", buf, 0xCu);

                  v67 = v102;
                  v69 = v70;
                  v66 = off_1E7560000;

                  v65 = v114;
                  v64 = v115;

                  v76 = v118;
                }
              }
            }

            else
            {
              v94 = PLBackendGetLog();
              obja = v94;
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                [v70 result];
                v95 = v117 = 0;
                firstObject4 = [v95 firstObject];
                [firstObject4 uuid];
                v98 = v97 = v67;
                *buf = 138543618;
                v176 = v98;
                v177 = 2112;
                v92 = v119;
                v178 = v119;
                _os_log_impl(&dword_19BF1F000, v94, OS_LOG_TYPE_ERROR, "Fetch failed for all moment associated with search entity %{public}@ error: %@", buf, 0x16u);

                v67 = v97;
                v69 = v70;
                v66 = off_1E7560000;

                v65 = v114;
                v64 = v115;

                goto LABEL_82;
              }

              v69 = v70;
            }

            v92 = v119;
            goto LABEL_88;
          }

LABEL_90:

          libraryCopy = v123;
LABEL_91:

          if (++v67 == v64)
          {
            v64 = [(NSMutableSet *)v61 countByEnumeratingWithState:&v150 objects:v179 count:16];
            if (!v64)
            {
              goto LABEL_103;
            }

            goto LABEL_60;
          }
        }

        v92 = PLSearchBackendIndexingEngineGetLog();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          error = [v69 error];
          *buf = 138412546;
          v176 = v68;
          v177 = 2112;
          v178 = error;
          _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_ERROR, "Failed to fetch search entity with identifier: %@, error: %@", buf, 0x16u);

          v69 = v70;
        }

        goto LABEL_89;
      }

      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v125 = self->_identifiers;
      v51 = [(NSMutableSet *)v125 countByEnumeratingWithState:&v157 objects:v180 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v158;
        do
        {
          for (n = 0; n != v52; ++n)
          {
            if (*v158 != v53)
            {
              objc_enumerationMutation(v125);
            }

            v55 = *(*(&v157 + 1) + 8 * n);
            v56 = [(NSMutableDictionary *)self->_normalizedWorkItemsByIdentifiers objectForKeyedSubscript:v55];
            if (([v56 jobFlags] & 0x100) != 0)
            {
              managedObjectContext3 = [libraryCopy managedObjectContext];
              libraryServicesManager3 = [libraryCopy libraryServicesManager];
              wellKnownPhotoLibraryIdentifier3 = [libraryServicesManager3 wellKnownPhotoLibraryIdentifier];
              v154[0] = MEMORY[0x1E69E9820];
              v154[1] = 3221225472;
              v154[2] = __90__PLSearchIndexingIncrementalUpdateBatch_inPerformTransaction_cleanUpWithSuccess_library___block_invoke_2;
              v154[3] = &unk_1E7572788;
              v155 = libraryCopy;
              v156 = v56;
              v60 = wellKnownPhotoLibraryIdentifier3;
              self = selfCopy;
              [PLPerson enumerateAssetUUIDsForSearchIndexingWithPersonUUID:v55 managedObjectContext:managedObjectContext3 libraryIdentifier:v60 assetUUIDHandler:v154];
            }
          }

          v52 = [(NSMutableSet *)v125 countByEnumeratingWithState:&v157 objects:v180 count:16];
        }

        while (v52);
      }

      v50 = v125;
LABEL_57:

      goto LABEL_32;
    }

    if (targetEntity)
    {
      if (targetEntity != 2)
      {
        goto LABEL_32;
      }

      allObjects = [(NSMutableSet *)self->_identifiers allObjects];
      managedObjectContext4 = [libraryCopy managedObjectContext];
      v161[0] = MEMORY[0x1E69E9820];
      v161[1] = 3221225472;
      v161[2] = __90__PLSearchIndexingIncrementalUpdateBatch_inPerformTransaction_cleanUpWithSuccess_library___block_invoke;
      v161[3] = &unk_1E7571B58;
      v161[4] = self;
      v162 = libraryCopy;
      [PLPerson enumerateAssetUUIDsForSearchIndexingWithDetectedFaceUUIDs:allObjects managedObjectContext:managedObjectContext4 assetUUIDHandler:v161];

      v50 = v162;
      goto LABEL_57;
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v61 = self->_identifiers;
    v104 = [(NSMutableSet *)v61 countByEnumeratingWithState:&v131 objects:v172 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v132;
      do
      {
        for (ii = 0; ii != v105; ++ii)
        {
          if (*v132 != v106)
          {
            objc_enumerationMutation(v61);
          }

          v108 = *(*(&v131 + 1) + 8 * ii);
          v109 = [(NSMutableDictionary *)self->_normalizedWorkItemsByIdentifiers objectForKeyedSubscript:v108];
          if (([v109 jobFlags] & 1) == 0)
          {
            v110 = +[PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:flags:inLibrary:](PLBackgroundJobWorkItem, "addSearchIndexWorkItemIfNeededWithIdentifier:flags:inLibrary:", v108, [v109 jobFlags], libraryCopy);
            timestamp3 = [v109 timestamp];
            [v110 setTimestamp:timestamp3];

            [v110 setJobType:{objc_msgSend(v109, "jobType")}];
          }
        }

        v105 = [(NSMutableSet *)v61 countByEnumeratingWithState:&v131 objects:v172 count:16];
      }

      while (v105);
    }

LABEL_103:
  }

LABEL_32:
  if ([(PLSearchIndexingIncrementalUpdateBatch *)self _flagsAreAmbiguous])
  {
    v40 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Search indexing job flags map to mutliple entities, replacing with unambiguous jobs", buf, 2u);
    }

    [(PLSearchIndexingIncrementalUpdateBatch *)self _inPerformTransaction_processAmbiguousEntityJobsWithFlags:self->_originalFlags library:libraryCopy];
  }

  v41 = self->_coalescedWorkItems;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v42 = [(NSArray *)v41 countByEnumeratingWithState:&v127 objects:v171 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v128;
    do
    {
      for (jj = 0; jj != v43; ++jj)
      {
        if (*v128 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v127 + 1) + 8 * jj);
        managedObjectContext5 = [libraryCopy managedObjectContext];
        [managedObjectContext5 deleteObject:v46];
      }

      v43 = [(NSArray *)v41 countByEnumeratingWithState:&v127 objects:v171 count:16];
    }

    while (v43);
  }
}

void __90__PLSearchIndexingIncrementalUpdateBatch_inPerformTransaction_cleanUpWithSuccess_library___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 32);
  v6 = a2;
  v9 = [v5 objectForKeyedSubscript:a3];
  v7 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:v6 flags:4 inLibrary:*(a1 + 40)];

  v8 = [v9 timestamp];
  [v7 setTimestamp:v8];

  [v7 setJobType:{objc_msgSend(v9, "jobType")}];
}

void __90__PLSearchIndexingIncrementalUpdateBatch_inPerformTransaction_cleanUpWithSuccess_library___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:a2 flags:4 inLibrary:*(a1 + 32)];
  v3 = [*(a1 + 40) timestamp];
  [v4 setTimestamp:v3];

  [v4 setJobType:{objc_msgSend(*(a1 + 40), "jobType")}];
}

void __90__PLSearchIndexingIncrementalUpdateBatch_inPerformTransaction_cleanUpWithSuccess_library___block_invoke_69(uint64_t a1, uint64_t a2)
{
  v4 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:a2 flags:4 inLibrary:*(a1 + 32)];
  v3 = [*(a1 + 40) timestamp];
  [v4 setTimestamp:v3];

  [v4 setJobType:{objc_msgSend(*(a1 + 40), "jobType")}];
}

void __90__PLSearchIndexingIncrementalUpdateBatch_inPerformTransaction_cleanUpWithSuccess_library___block_invoke_70(uint64_t a1, uint64_t a2)
{
  v4 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:a2 flags:4 inLibrary:*(a1 + 32)];
  v3 = [*(a1 + 40) timestamp];
  [v4 setTimestamp:v3];

  [v4 setJobType:{objc_msgSend(*(a1 + 40), "jobType")}];
}

- (void)inPerformBlock_prepareDonationsWithLibrary:(id)library
{
  v97 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  [(PLSearchIndexingIncrementalUpdateBatch *)self _inPerformBlock_removeWorkItemsNotMatchingOriginalFlags];
  [(PLSearchIndexingIncrementalUpdateBatch *)self _inPerformBlock_coalesceWithLibrary:libraryCopy];
  if (![(PLSearchIndexingIncrementalUpdateBatch *)self _flagsAreAmbiguous]&& ![(PLSearchIndexingIncrementalUpdateBatch *)self _flagsAreIncompatible])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = 0x1E695D000uLL;
    v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
    targetEntity = [(PLSearchIndexingIncrementalUpdateBatch *)self targetEntity];
    v8 = 0;
    selfCopy = self;
    v74 = v5;
    if (targetEntity > 4)
    {
      if (targetEntity <= 6)
      {
        if (targetEntity == 5)
        {
          allObjects = [(NSMutableSet *)self->_identifiers allObjects];
          managedObjectContext = [libraryCopy managedObjectContext];
          v11 = [PLMemory fetchMemoriesWithUUIDs:allObjects managedObjectContext:managedObjectContext];
        }

        else
        {
          if ((self->_originalFlags & 0x2003) == 0)
          {
            v8 = 0;
            goto LABEL_32;
          }

          allObjects = [(NSMutableSet *)self->_identifiers allObjects];
          managedObjectContext = [libraryCopy managedObjectContext];
          v11 = [PLPerson fetchPersonsWithUUIDs:allObjects managedObjectContext:managedObjectContext];
        }

LABEL_28:
        v8 = v11;
LABEL_31:

        goto LABEL_32;
      }

      if (targetEntity == 7)
      {
        v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v56 = self->_identifiers;
        v57 = [(NSMutableSet *)v56 countByEnumeratingWithState:&v84 objects:v96 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v85;
          do
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v85 != v59)
              {
                objc_enumerationMutation(v56);
              }

              v61 = [PLSearchEntity fetchSearchEntityWithEncodedIdentifierString:*(*(&v84 + 1) + 8 * i) inLibrary:libraryCopy];
              if ([v61 isSuccess])
              {
                result = [v61 result];
                v63 = [result count];

                if (v63)
                {
                  result2 = [v61 result];
                  firstObject = [result2 firstObject];
                  [firstObject sourceNode];
                  v67 = v66 = libraryCopy;
                  [v73 addObject:v67];

                  libraryCopy = v66;
                }
              }
            }

            v58 = [(NSMutableSet *)v56 countByEnumeratingWithState:&v84 objects:v96 count:16];
          }

          while (v58);
        }

        v8 = [MEMORY[0x1E69BF2D0] successWithResult:v73];

        v5 = v74;
        v6 = 0x1E695D000;
        goto LABEL_32;
      }

      if (targetEntity != 9)
      {
        goto LABEL_32;
      }

      allObjects = [(NSMutableSet *)self->_identifiers allObjects];
      managedObjectContext = +[PLCollectionShare propertiesToFetch];
      managedObjectContext2 = [libraryCopy managedObjectContext];
      v13 = [PLCollectionShare fetchCollectionSharesWithUUIDs:allObjects propertiesToFetch:managedObjectContext managedObjectContext:managedObjectContext2];
    }

    else
    {
      if (targetEntity <= 2)
      {
        if (targetEntity)
        {
          if (targetEntity != 1)
          {
            goto LABEL_32;
          }

          allObjects = [(NSMutableSet *)self->_identifiers allObjects];
          managedObjectContext = [libraryCopy managedObjectContext];
          v11 = [PLManagedAsset fetchAssetsWithUUIDs:allObjects managedObjectContext:managedObjectContext];
          goto LABEL_28;
        }

        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v14 = self->_identifiers;
        v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v80 objects:v95 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v81;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v81 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v80 + 1) + 8 * j);
              v20 = [(NSMutableDictionary *)self->_normalizedWorkItemsByIdentifiers objectForKeyedSubscript:v19];
              if ([v20 jobFlags])
              {
                [v75 addObject:v19];
              }
            }

            v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v80 objects:v95 count:16];
          }

          while (v16);
        }

        v8 = [MEMORY[0x1E69BF2D0] successWithResult:MEMORY[0x1E695E0F0]];
LABEL_32:
        if ([v8 isSuccess])
        {
          v69 = libraryCopy;
          error = objc_alloc_init(*(v6 + 3952));
          v72 = objc_alloc_init(*(v6 + 3952));
          v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v68 = v8;
          result3 = [v8 result];
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v23 = [result3 countByEnumeratingWithState:&v76 objects:v94 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v77;
            do
            {
              for (k = 0; k != v24; ++k)
              {
                if (*v77 != v25)
                {
                  objc_enumerationMutation(result3);
                }

                v27 = *(*(&v76 + 1) + 8 * k);
                searchIdentifier = [v27 searchIdentifier];
                [v5 addObject:searchIdentifier];

                if ([v27 isEligibleForSearchIndexing])
                {
                  searchIdentifier4 = v27;
                  [(NSError *)error addObject:searchIdentifier4];
                  searchIdentifier2 = [searchIdentifier4 searchIdentifier];
                  [v72 addObject:searchIdentifier2];

                  if ([(PLSearchIndexingIncrementalUpdateBatch *)self targetEntity]== 1)
                  {
                    normalizedWorkItemsByIdentifiers = self->_normalizedWorkItemsByIdentifiers;
                    searchIdentifier3 = [searchIdentifier4 searchIdentifier];
                    v33 = [(NSMutableDictionary *)normalizedWorkItemsByIdentifiers objectForKeyedSubscript:searchIdentifier3];
                    jobFlags = [v33 jobFlags];
                    v35 = (jobFlags >> 2) & 2;
                    if ((jobFlags & 0x14) != 0)
                    {
                      ++v35;
                    }

                    if ((jobFlags & 2) != 0)
                    {
                      v36 = 3;
                    }

                    else
                    {
                      v36 = v35;
                    }

                    self = selfCopy;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  v37 = [MEMORY[0x1E696AD98] numberWithLongLong:v36];
                  objectID = [searchIdentifier4 objectID];
                  [v71 setObject:v37 forKeyedSubscript:objectID];

                  v5 = v74;
                }

                else
                {
                  searchIdentifier4 = [v27 searchIdentifier];
                  [v75 addObject:searchIdentifier4];
                }
              }

              v24 = [result3 countByEnumeratingWithState:&v76 objects:v94 count:16];
            }

            while (v24);
          }

          if ([(PLSearchIndexingIncrementalUpdateBatch *)self targetEntity])
          {
            v39 = [(NSMutableSet *)self->_identifiers mutableCopy];
            [v39 minusSet:v5];
            allObjects2 = [v39 allObjects];
            [v75 addObjectsFromArray:allObjects2];

            v5 = v74;
          }

          v41 = PLSearchBackendIndexingEngineGetLog();
          libraryCopy = v69;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [(PLSearchIndexingIncrementalUpdateBatch *)self _descriptionForSearchableIdentifiers:v72 ineligibleIdentifiers:v75 entity:[(PLSearchIndexingIncrementalUpdateBatch *)self targetEntity]];
            *buf = 138543362;
            v89 = v42;
            _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "Coalesced batch of %{public}@", buf, 0xCu);
          }

          v43 = PLSearchBackendIndexingEngineGetLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            targetEntity2 = [(PLSearchIndexingIncrementalUpdateBatch *)self targetEntity];
            if (targetEntity2 > 9)
            {
              v45 = @"invalid";
            }

            else
            {
              v45 = off_1E7571300[targetEntity2];
            }

            v47 = v45;
            v48 = [v72 componentsJoinedByString:{@", "}];
            v49 = [v75 componentsJoinedByString:{@", "}];
            *buf = 138412802;
            v89 = v47;
            v90 = 2112;
            v91 = v48;
            v92 = 2112;
            v93 = v49;
            _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEBUG, "Searchable object entity: %@, identifiers: %@, ineligible identifiers: %@", buf, 0x20u);

            self = selfCopy;
            v5 = v74;
          }

          v50 = [(NSError *)error copy];
          eligibleManagedObjects = self->_eligibleManagedObjects;
          self->_eligibleManagedObjects = v50;

          v52 = [v75 copy];
          ineligibleIdentifiers = self->_ineligibleIdentifiers;
          self->_ineligibleIdentifiers = v52;

          v54 = [v71 copy];
          partialUpdateMasks = self->_partialUpdateMasks;
          self->_partialUpdateMasks = v54;

          v8 = v68;
        }

        else
        {
          if (![v8 isFailure])
          {
LABEL_64:

            goto LABEL_65;
          }

          error = [v8 error];
          error = self->_error;
          self->_error = error;
        }

        goto LABEL_64;
      }

      if (targetEntity != 3)
      {
        allObjects = [(NSMutableSet *)self->_identifiers allObjects];
        managedObjectContext = [libraryCopy managedObjectContext];
        v11 = [PLPhotosHighlight fetchHighlightsWithUUIDs:allObjects managedObjectContext:managedObjectContext];
        goto LABEL_28;
      }

      allObjects = [(NSMutableSet *)self->_identifiers allObjects];
      managedObjectContext = +[PLGenericAlbum propertiesToFetch];
      managedObjectContext2 = [libraryCopy managedObjectContext];
      v13 = [PLGenericAlbum fetchAlbumsWithUUIDs:allObjects propertiesToFetch:managedObjectContext managedObjectContext:managedObjectContext2];
    }

    v8 = v13;

    goto LABEL_31;
  }

LABEL_65:
}

- (void)_inPerformBlock_coalesceWithLibrary:(id)library
{
  v81 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (![(PLSearchIndexingIncrementalUpdateBatch *)self _flagsAreIncompatible]&& ![(PLSearchIndexingIncrementalUpdateBatch *)self _flagsAreAmbiguous])
  {
    v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v5 = self->_workItems;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v71 objects:v80 count:16];
    if (!v6)
    {
      goto LABEL_54;
    }

    v8 = v6;
    v9 = *v72;
    *&v7 = 138543618;
    v53 = v7;
    v57 = *v72;
    selfCopy = self;
    v55 = libraryCopy;
    v56 = v5;
    while (1)
    {
      v10 = 0;
      v58 = v8;
      do
      {
        if (*v72 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v71 + 1) + 8 * v10);
        identifiers = self->_identifiers;
        identifier = [v11 identifier];
        LOBYTE(identifiers) = [(NSMutableSet *)identifiers containsObject:identifier];

        if ((identifiers & 1) == 0)
        {
          identifier2 = [v11 identifier];
          managedObjectContext = [libraryCopy managedObjectContext];
          v70 = 0;
          v16 = [PLBackgroundJobWorkItem workItemsSortedByTimestampWithIdentifier:identifier2 jobTypes:&unk_1F0FBFE98 inManagedObjectContext:managedObjectContext error:&v70];
          v62 = v70;

          if (v16)
          {
            originalFlags = self->_originalFlags;
            jobType = [v11 jobType];
            timestamp = [v11 timestamp];
            v61 = v16;
            v59 = v10;
            v60 = v11;
            if ([v16 count] < 2)
            {
              originalFlags = [v11 jobFlags];
              [v64 addObject:v11];
              timestamp2 = [v11 timestamp];

              v25 = 1;
              timestamp = timestamp2;
              goto LABEL_47;
            }

            v19 = PLSearchBackendIndexingEngineGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v16 count];
              identifier3 = [v11 identifier];
              *buf = 134218242;
              v77 = v20;
              v78 = 2114;
              v79 = identifier3;
              _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "Attempting to coalesce %ld work items for identifier: %{public}@", buf, 0x16u);
            }

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v22 = v16;
            v23 = [v22 countByEnumeratingWithState:&v66 objects:v75 count:16];
            if (!v23)
            {

              v25 = 0;
              goto LABEL_46;
            }

            v24 = v23;
            v63 = 0;
            v25 = 0;
            v26 = *v67;
            while (1)
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v67 != v26)
                {
                  objc_enumerationMutation(v22);
                }

                v28 = *(*(&v66 + 1) + 8 * i);
                v29 = PLBatchSizeForJobFlags(originalFlags);
                if (v29 == PLBatchSizeForJobFlags([v28 jobFlags]))
                {
                  v30 = timestamp;
                  v31 = v22;
                  originalFlags |= [v28 jobFlags];
                  jobFlags = [v28 jobFlags];
                  v33 = (jobFlags & 2) == 0;
                  if ((jobFlags & 2) != 0)
                  {
                    originalFlags &= ~1uLL;
                    v34 = PLSearchBackendIndexingEngineGetLog();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      v35 = v34;
                      v36 = "Coalesced an insertion into index";
LABEL_26:
                      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 2u);
                    }

LABEL_27:

                    v63 = v33;
                  }

                  else if ([v28 jobFlags])
                  {
                    originalFlags &= ~2uLL;
                    v34 = PLSearchBackendIndexingEngineGetLog();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      v35 = v34;
                      v36 = "Coalesced a removal from index";
                      goto LABEL_26;
                    }

                    goto LABEL_27;
                  }

                  if ([v28 jobType] == 1)
                  {
                    jobType = 1;
                  }

                  else
                  {
                    jobType2 = [v28 jobType];
                    v38 = jobType;
                    if (jobType == 3 && jobType2 == 2)
                    {
                      v38 = 2;
                    }

                    jobType = v38;
                  }

                  v22 = v31;
                  [v64 addObject:v28];
                  timestamp = [v28 timestamp];

                  ++v25;
                  continue;
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v66 objects:v75 count:16];
              if (!v24)
              {

                if (v63)
                {
                  originalFlags = 1;
                }

                self = selfCopy;
                libraryCopy = v55;
LABEL_46:
                v5 = v56;
LABEL_47:
                v42 = PLSearchBackendIndexingEngineGetLog();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  identifier4 = [v60 identifier];
                  *buf = 134218242;
                  v77 = v25;
                  v78 = 2114;
                  v79 = identifier4;
                  _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_INFO, "Coalesced %ld work items for identifier: %{public}@", buf, 0x16u);
                }

                v44 = [PLSearchIndexingNormalizedWorkItem alloc];
                identifier5 = [v60 identifier];
                v46 = [(PLSearchIndexingNormalizedWorkItem *)v44 initWithIdentifier:identifier5 jobType:jobType jobFlags:originalFlags entityToIndex:[(PLSearchIndexingIncrementalUpdateBatch *)self targetEntity] timestamp:timestamp];

                normalizedWorkItemsByIdentifiers = self->_normalizedWorkItemsByIdentifiers;
                identifier6 = [v60 identifier];
                [(NSMutableDictionary *)normalizedWorkItemsByIdentifiers setObject:v46 forKeyedSubscript:identifier6];

                v49 = self->_identifiers;
                identifier7 = [v60 identifier];
                [(NSMutableSet *)v49 addObject:identifier7];

                v9 = v57;
                v8 = v58;
                v10 = v59;
                v16 = v61;
LABEL_50:
                v40 = v62;
                goto LABEL_51;
              }
            }
          }

          timestamp = PLSearchBackendIndexingEngineGetLog();
          if (!os_log_type_enabled(timestamp, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          *buf = v53;
          v77 = v11;
          v78 = 2112;
          v40 = v62;
          v79 = v62;
          _os_log_impl(&dword_19BF1F000, timestamp, OS_LOG_TYPE_ERROR, "Failed to fetch work items for coalescing, skipping item %{public}@, error: %@", buf, 0x16u);
LABEL_51:
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [(NSArray *)v5 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (!v8)
      {
LABEL_54:

        v51 = [v64 copy];
        coalescedWorkItems = self->_coalescedWorkItems;
        self->_coalescedWorkItems = v51;

        goto LABEL_55;
      }
    }
  }

  objc_storeStrong(&self->_coalescedWorkItems, self->_workItems);
LABEL_55:
}

- (void)_inPerformBlock_removeWorkItemsNotMatchingOriginalFlags
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_workItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = PLBackgroundJobSearchIndexingEntitiesFromJobFlags([v9 jobFlags]);
        _flagsAreAmbiguous = [(PLSearchIndexingIncrementalUpdateBatch *)self _flagsAreAmbiguous];
        v12 = [v10 count];
        if (_flagsAreAmbiguous)
        {
          if (v12 > 1)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v12 == 1)
          {
            firstObject = [v10 firstObject];
            unsignedIntegerValue = [firstObject unsignedIntegerValue];
          }

          else
          {
            unsignedIntegerValue = 0;
          }

          if ([(PLSearchIndexingIncrementalUpdateBatch *)self targetEntity]== unsignedIntegerValue)
          {
LABEL_13:
            [v3 addObject:v9];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [v3 count];
  if (v15 != [(NSArray *)self->_workItems count])
  {
    v16 = PLSearchBackendIndexingEngineGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(NSArray *)self->_workItems count];
      v18 = [v3 count];
      *buf = 134217984;
      v26 = v17 - v18;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Search indexing batch initialized with work items that don't match the batch job flags, %lu items have been removed and will be processed in a future batch", buf, 0xCu);
    }

    v19 = [v3 copy];
    workItems = self->_workItems;
    self->_workItems = v19;
  }
}

- (unint64_t)targetEntity
{
  if ([(NSArray *)self->_possibleEntities count]!= 1)
  {
    return 0;
  }

  firstObject = [(NSArray *)self->_possibleEntities firstObject];
  unsignedIntegerValue = [firstObject unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)hasDonations
{
  eligibleManagedObjects = [(PLSearchIndexingIncrementalUpdateBatch *)self eligibleManagedObjects];
  if ([eligibleManagedObjects count])
  {
    v4 = 1;
  }

  else
  {
    ineligibleIdentifiers = [(PLSearchIndexingIncrementalUpdateBatch *)self ineligibleIdentifiers];
    v4 = [ineligibleIdentifiers count] != 0;
  }

  return v4;
}

- (PLSearchIndexingIncrementalUpdateBatch)initWithWorkItems:(id)items flags:(int64_t)flags
{
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = PLSearchIndexingIncrementalUpdateBatch;
  v8 = [(PLSearchIndexingIncrementalUpdateBatch *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_workItems, items);
    v9->_originalFlags = flags;
    v10 = PLBackgroundJobSearchIndexingEntitiesFromJobFlags(flags);
    possibleEntities = v9->_possibleEntities;
    v9->_possibleEntities = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    normalizedWorkItemsByIdentifiers = v9->_normalizedWorkItemsByIdentifiers;
    v9->_normalizedWorkItemsByIdentifiers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    identifiers = v9->_identifiers;
    v9->_identifiers = v14;
  }

  return v9;
}

@end
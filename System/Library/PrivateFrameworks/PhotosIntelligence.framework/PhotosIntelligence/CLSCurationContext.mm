@interface CLSCurationContext
+ (double)mergeCandidateConfidenceThreshold;
- (CLSCurationContext)initWithPhotoLibrary:(id)a3;
- (CLSCurationContext)initWithPhotoLibrary:(id)a3 curationSession:(id)a4;
- (CLSCurationContext)initWithUserFeedbackCalculator:(id)a3 curationSession:(id)a4;
- (id)_mergeCandidateUUIDsForPerson:(id)a3;
- (id)description;
- (id)hiddenOrBlockedPersonUUIDs;
- (id)nonPetFacedPersonLocalIdentifiers;
- (id)personUUIDByMergeCandidateUUID;
- (id)verifiedPersonUUIDs;
- (void)_loadNonPetFacedPersonLocalIdentifiers;
- (void)_loadPersonAndMergeCandidateUUIDs;
@end

@implementation CLSCurationContext

- (id)_mergeCandidateUUIDsForPerson:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  [v6 setIncludeOnlyPersonsWithVisibleKeyFaces:1];
  v7 = MEMORY[0x1E696AE18];
  [objc_opt_class() mergeCandidateConfidenceThreshold];
  v9 = [v7 predicateWithFormat:@"%K == %d && %K >= %f", @"verifiedType", 0, @"mergeCandidateConfidence", v8];
  [v6 setPredicate:v9];

  v10 = [MEMORY[0x1E6978980] fetchMergeCandidateWithConfidencePersonsForPerson:v3 options:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) uuid];
        [v4 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v4;
}

- (void)_loadNonPetFacedPersonLocalIdentifiers
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E9C10];
  v4 = MEMORY[0x1E69E9C10];
  v5 = os_signpost_id_generate(v3);
  info = 0;
  mach_timebase_info(&info);
  v6 = v3;
  v7 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v5, "LoadNonPetFacedPersonLocalIdentifiers", "", buf, 2u);
  }

  spid = v5;

  v24 = mach_absolute_time();
  v8 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v8 setMinimumVerifiedFaceCount:1];
  [v8 setMinimumUnverifiedFaceCount:1];
  v30[0] = *MEMORY[0x1E6978F30];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v8 setFetchPropertySets:v9];

  v10 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v8];
  v11 = [v10 count];
  v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v11];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [v10 objectAtIndexedSubscript:i];
      v16 = [v15 localIdentifier];
      [(NSSet *)v12 addObject:v16];

      objc_autoreleasePoolPop(v14);
    }
  }

  nonPetFacedPersonLocalIdentifiers = self->_nonPetFacedPersonLocalIdentifiers;
  self->_nonPetFacedPersonLocalIdentifiers = v12;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = self;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Finished loading %@", buf, 0xCu);
  }

  v18 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v21 = MEMORY[0x1E69E9C10];
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, spid, "LoadNonPetFacedPersonLocalIdentifiers", "", buf, 2u);
  }

  v22 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "LoadNonPetFacedPersonLocalIdentifiers";
    v28 = 2048;
    v29 = ((((v18 - v24) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (void)_loadPersonAndMergeCandidateUUIDs
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E9C10];
  v4 = MEMORY[0x1E69E9C10];
  v5 = os_signpost_id_generate(v3);
  info = 0;
  mach_timebase_info(&info);
  v6 = v3;
  v37 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v5, "LoadPersonAndMergeCandidateUUIDs", "", buf, 2u);
  }

  spid = v5;

  v36 = mach_absolute_time();
  v7 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v7 setPersonContext:1];
  v38 = v7;
  v8 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v7];
  v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = objc_alloc(MEMORY[0x1E695DFA8]);
  v10 = [(CLSCurationContext *)self userFeedbackCalculator];
  v11 = [v10 personUUIDsWithNegativeFeedback];
  v41 = [v9 initWithSet:v11];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v8;
  v43 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v43)
  {
    v40 = *v50;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v50 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v16 = [v15 uuid];
        if ([v15 type] == -1)
        {
          v17 = v41;
        }

        else
        {
          v17 = v42;
        }

        [(NSSet *)v17 addObject:v16];
        v18 = self;
        v19 = [(CLSCurationContext *)self _mergeCandidateUUIDsForPerson:v15];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v45 objects:v58 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v46;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v46 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v45 + 1) + 8 * j);
              [v13 addObject:v24];
              if ([v13 countForObject:v24] == 1)
              {
                [(NSDictionary *)v12 setObject:v16 forKeyedSubscript:v24];
              }

              else
              {
                [(NSDictionary *)v12 removeObjectForKey:v24];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v45 objects:v58 count:16];
          }

          while (v21);
        }

        objc_autoreleasePoolPop(context);
        self = v18;
      }

      v43 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v43);
  }

  verifiedPersonUUIDs = self->_verifiedPersonUUIDs;
  self->_verifiedPersonUUIDs = v42;
  v26 = v42;

  hiddenOrBlockedPersonUUIDs = self->_hiddenOrBlockedPersonUUIDs;
  self->_hiddenOrBlockedPersonUUIDs = v41;
  v28 = v41;

  personUUIDByMergeCandidateUUID = self->_personUUIDByMergeCandidateUUID;
  self->_personUUIDByMergeCandidateUUID = v12;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = self;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Finished loading %@", buf, 0xCu);
  }

  v30 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v33 = MEMORY[0x1E69E9C10];
  if (v37 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, spid, "LoadPersonAndMergeCandidateUUIDs", "", buf, 2u);
  }

  v34 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v55 = "LoadPersonAndMergeCandidateUUIDs";
    v56 = 2048;
    v57 = ((((v30 - v36) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (id)personUUIDByMergeCandidateUUID
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_personUUIDByMergeCandidateUUID)
  {
    [(CLSCurationContext *)v2 _loadPersonAndMergeCandidateUUIDs];
  }

  objc_sync_exit(v2);

  personUUIDByMergeCandidateUUID = v2->_personUUIDByMergeCandidateUUID;

  return personUUIDByMergeCandidateUUID;
}

- (id)nonPetFacedPersonLocalIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_nonPetFacedPersonLocalIdentifiers)
  {
    [(CLSCurationContext *)v2 _loadNonPetFacedPersonLocalIdentifiers];
  }

  objc_sync_exit(v2);

  nonPetFacedPersonLocalIdentifiers = v2->_nonPetFacedPersonLocalIdentifiers;

  return nonPetFacedPersonLocalIdentifiers;
}

- (id)hiddenOrBlockedPersonUUIDs
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_hiddenOrBlockedPersonUUIDs)
  {
    [(CLSCurationContext *)v2 _loadPersonAndMergeCandidateUUIDs];
  }

  objc_sync_exit(v2);

  hiddenOrBlockedPersonUUIDs = v2->_hiddenOrBlockedPersonUUIDs;

  return hiddenOrBlockedPersonUUIDs;
}

- (id)verifiedPersonUUIDs
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_verifiedPersonUUIDs)
  {
    [(CLSCurationContext *)v2 _loadPersonAndMergeCandidateUUIDs];
  }

  objc_sync_exit(v2);

  verifiedPersonUUIDs = v2->_verifiedPersonUUIDs;

  return verifiedPersonUUIDs;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CLSCurationContext;
  v4 = [(CLSCurationContext *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %tu verified persons, %tu hidden/blocked persons, %tu merge candidates", v4, -[NSSet count](self->_verifiedPersonUUIDs, "count"), -[NSSet count](self->_hiddenOrBlockedPersonUUIDs, "count"), -[NSDictionary count](self->_personUUIDByMergeCandidateUUID, "count")];

  return v5;
}

- (CLSCurationContext)initWithPhotoLibrary:(id)a3
{
  v4 = MEMORY[0x1E6978B08];
  v5 = a3;
  v6 = [[v4 alloc] initWithPhotoLibrary:v5];

  v7 = objc_alloc_init(CLSCurationSession);
  v8 = [(CLSCurationContext *)self initWithUserFeedbackCalculator:v6 curationSession:v7];

  return v8;
}

- (CLSCurationContext)initWithUserFeedbackCalculator:(id)a3 curationSession:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CLSCurationContext;
  v9 = [(CLSCurationContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userFeedbackCalculator, a3);
    v11 = [v7 photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = v11;

    objc_storeStrong(&v10->_curationSession, a4);
  }

  return v10;
}

- (CLSCurationContext)initWithPhotoLibrary:(id)a3 curationSession:(id)a4
{
  v6 = MEMORY[0x1E6978B08];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithPhotoLibrary:v8];

  v10 = [(CLSCurationContext *)self initWithUserFeedbackCalculator:v9 curationSession:v7];
  return v10;
}

+ (double)mergeCandidateConfidenceThreshold
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"CLSCurationContextMergeCandidateConfidenceUserDefaults"];

  if (v3)
  {
    [v2 doubleForKey:@"CLSCurationContextMergeCandidateConfidenceUserDefaults"];
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x1E6978F20];
  }

  return v5;
}

@end
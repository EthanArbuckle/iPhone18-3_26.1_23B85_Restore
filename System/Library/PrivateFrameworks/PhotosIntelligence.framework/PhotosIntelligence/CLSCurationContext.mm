@interface CLSCurationContext
+ (double)mergeCandidateConfidenceThreshold;
- (CLSCurationContext)initWithPhotoLibrary:(id)library;
- (CLSCurationContext)initWithPhotoLibrary:(id)library curationSession:(id)session;
- (CLSCurationContext)initWithUserFeedbackCalculator:(id)calculator curationSession:(id)session;
- (id)_mergeCandidateUUIDsForPerson:(id)person;
- (id)description;
- (id)hiddenOrBlockedPersonUUIDs;
- (id)nonPetFacedPersonLocalIdentifiers;
- (id)personUUIDByMergeCandidateUUID;
- (id)verifiedPersonUUIDs;
- (void)_loadNonPetFacedPersonLocalIdentifiers;
- (void)_loadPersonAndMergeCandidateUUIDs;
@end

@implementation CLSCurationContext

- (id)_mergeCandidateUUIDsForPerson:(id)person
{
  v22 = *MEMORY[0x1E69E9840];
  personCopy = person;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  photoLibrary = [personCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeOnlyPersonsWithVisibleKeyFaces:1];
  v7 = MEMORY[0x1E696AE18];
  [objc_opt_class() mergeCandidateConfidenceThreshold];
  v9 = [v7 predicateWithFormat:@"%K == %d && %K >= %f", @"verifiedType", 0, @"mergeCandidateConfidence", v8];
  [librarySpecificFetchOptions setPredicate:v9];

  v10 = [MEMORY[0x1E6978980] fetchMergeCandidateWithConfidencePersonsForPerson:personCopy options:librarySpecificFetchOptions];
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

        uuid = [*(*(&v17 + 1) + 8 * i) uuid];
        [v4 addObject:uuid];
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
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:1];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:1];
  v30[0] = *MEMORY[0x1E6978F30];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v9];

  v10 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:librarySpecificFetchOptions];
  v11 = [v10 count];
  v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v11];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [v10 objectAtIndexedSubscript:i];
      localIdentifier = [v15 localIdentifier];
      [(NSSet *)v12 addObject:localIdentifier];

      objc_autoreleasePoolPop(v14);
    }
  }

  nonPetFacedPersonLocalIdentifiers = self->_nonPetFacedPersonLocalIdentifiers;
  self->_nonPetFacedPersonLocalIdentifiers = v12;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
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
    selfCopy = "LoadNonPetFacedPersonLocalIdentifiers";
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
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:1];
  v38 = librarySpecificFetchOptions;
  v8 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:librarySpecificFetchOptions];
  v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = objc_alloc(MEMORY[0x1E695DFA8]);
  userFeedbackCalculator = [(CLSCurationContext *)self userFeedbackCalculator];
  personUUIDsWithNegativeFeedback = [userFeedbackCalculator personUUIDsWithNegativeFeedback];
  v41 = [v9 initWithSet:personUUIDsWithNegativeFeedback];

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
        uuid = [v15 uuid];
        if ([v15 type] == -1)
        {
          v17 = v41;
        }

        else
        {
          v17 = v42;
        }

        [(NSSet *)v17 addObject:uuid];
        selfCopy = self;
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
                [(NSDictionary *)v12 setObject:uuid forKeyedSubscript:v24];
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
        self = selfCopy;
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
    selfCopy2 = self;
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
    selfCopy2 = "LoadPersonAndMergeCandidateUUIDs";
    v56 = 2048;
    v57 = ((((v30 - v36) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (id)personUUIDByMergeCandidateUUID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_personUUIDByMergeCandidateUUID)
  {
    [(CLSCurationContext *)selfCopy _loadPersonAndMergeCandidateUUIDs];
  }

  objc_sync_exit(selfCopy);

  personUUIDByMergeCandidateUUID = selfCopy->_personUUIDByMergeCandidateUUID;

  return personUUIDByMergeCandidateUUID;
}

- (id)nonPetFacedPersonLocalIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_nonPetFacedPersonLocalIdentifiers)
  {
    [(CLSCurationContext *)selfCopy _loadNonPetFacedPersonLocalIdentifiers];
  }

  objc_sync_exit(selfCopy);

  nonPetFacedPersonLocalIdentifiers = selfCopy->_nonPetFacedPersonLocalIdentifiers;

  return nonPetFacedPersonLocalIdentifiers;
}

- (id)hiddenOrBlockedPersonUUIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_hiddenOrBlockedPersonUUIDs)
  {
    [(CLSCurationContext *)selfCopy _loadPersonAndMergeCandidateUUIDs];
  }

  objc_sync_exit(selfCopy);

  hiddenOrBlockedPersonUUIDs = selfCopy->_hiddenOrBlockedPersonUUIDs;

  return hiddenOrBlockedPersonUUIDs;
}

- (id)verifiedPersonUUIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_verifiedPersonUUIDs)
  {
    [(CLSCurationContext *)selfCopy _loadPersonAndMergeCandidateUUIDs];
  }

  objc_sync_exit(selfCopy);

  verifiedPersonUUIDs = selfCopy->_verifiedPersonUUIDs;

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

- (CLSCurationContext)initWithPhotoLibrary:(id)library
{
  v4 = MEMORY[0x1E6978B08];
  libraryCopy = library;
  v6 = [[v4 alloc] initWithPhotoLibrary:libraryCopy];

  v7 = objc_alloc_init(CLSCurationSession);
  v8 = [(CLSCurationContext *)self initWithUserFeedbackCalculator:v6 curationSession:v7];

  return v8;
}

- (CLSCurationContext)initWithUserFeedbackCalculator:(id)calculator curationSession:(id)session
{
  calculatorCopy = calculator;
  sessionCopy = session;
  v14.receiver = self;
  v14.super_class = CLSCurationContext;
  v9 = [(CLSCurationContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userFeedbackCalculator, calculator);
    photoLibrary = [calculatorCopy photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = photoLibrary;

    objc_storeStrong(&v10->_curationSession, session);
  }

  return v10;
}

- (CLSCurationContext)initWithPhotoLibrary:(id)library curationSession:(id)session
{
  v6 = MEMORY[0x1E6978B08];
  sessionCopy = session;
  libraryCopy = library;
  v9 = [[v6 alloc] initWithPhotoLibrary:libraryCopy];

  v10 = [(CLSCurationContext *)self initWithUserFeedbackCalculator:v9 curationSession:sessionCopy];
  return v10;
}

+ (double)mergeCandidateConfidenceThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"CLSCurationContextMergeCandidateConfidenceUserDefaults"];

  if (v3)
  {
    [standardUserDefaults doubleForKey:@"CLSCurationContextMergeCandidateConfidenceUserDefaults"];
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x1E6978F20];
  }

  return v5;
}

@end
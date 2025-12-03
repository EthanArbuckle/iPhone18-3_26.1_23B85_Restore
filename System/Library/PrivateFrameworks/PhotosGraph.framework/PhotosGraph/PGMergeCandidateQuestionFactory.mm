@interface PGMergeCandidateQuestionFactory
- (PGMergeCandidateQuestionFactory)initWithWorkingContext:(id)context questionVersion:(signed __int16)version;
- (PHFetchResult)persons;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGMergeCandidateQuestionFactory

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v50[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  persons = [(PGMergeCandidateQuestionFactory *)self persons];
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:9];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceCount" ascending:0];
  v50[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v50[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v10];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"verifiedType == %d", 0];
  [librarySpecificFetchOptions setPredicate:v11];

  v35 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = persons;
  v12 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    v15 = 0x277CD9000uLL;
    v36 = *v44;
    do
    {
      v16 = 0;
      v37 = v13;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v43 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [*(v15 + 2360) fetchMergeCandidatePersonsForPerson:v17 options:librarySpecificFetchOptions];
        if ([v19 count])
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = librarySpecificFetchOptions;
            v24 = 0;
            v25 = *v40;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v40 != v25)
                {
                  objc_enumerationMutation(v20);
                }

                v24 += [*(*(&v39 + 1) + 8 * i) faceCount];
              }

              v22 = [v20 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v22);
            v27 = v24;
            librarySpecificFetchOptions = v23;
            v14 = v36;
            v13 = v37;
            v15 = 0x277CD9000;
          }

          else
          {
            v27 = 0.0;
          }

          v28 = [v17 faceCount] / v27;
          if (v28 > 0.0)
          {
            v29 = [[PGMergeCandidateQuestion alloc] initWithPerson:v17 score:v28];
            [v35 addObject:v29];
          }
        }

        objc_autoreleasePoolPop(v18);
        ++v16;
      }

      while (v16 != v13);
      v13 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v13);
  }

  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v47 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  [v35 sortUsingDescriptors:v31];

  v32 = *MEMORY[0x277D85DE8];

  return v35;
}

- (PHFetchResult)persons
{
  persons = self->_persons;
  if (!persons)
  {
    photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    v5 = [PGPeopleQuestionFactoryUtils personsWithPeopleHomeContextForPhotoLibrary:photoLibrary];
    v6 = self->_persons;
    self->_persons = v5;

    persons = self->_persons;
  }

  return persons;
}

- (PGMergeCandidateQuestionFactory)initWithWorkingContext:(id)context questionVersion:(signed __int16)version
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = PGMergeCandidateQuestionFactory;
  v8 = [(PGMergeCandidateQuestionFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_workingContext, context);
    v9->_questionVersion = version;
  }

  return v9;
}

@end
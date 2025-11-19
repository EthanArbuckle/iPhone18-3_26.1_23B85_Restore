@interface PGSurveyQuestionFactory
- (BOOL)questionAlreadyExists:(id)a3;
- (BOOL)shouldAddQuestion:(id)a3 toAlreadyGeneratedQuestions:(id)a4;
- (NSArray)collidingQuestionTypes;
- (NSDictionary)existingQuestionsByEntityIdentifier;
- (PGSurveyQuestionFactory)initWithWorkingContext:(id)a3 questionVersion:(signed __int16)a4;
- (id)_assetFromAssets:(id)a3 closestToLocationCoordinate:(CLLocationCoordinate2D)a4 radius:(double)a5;
- (id)_questionsByEntityIdentifierFromQuestions:(id)a3;
- (id)assetFromMomentNode:(id)a3 closestToLocationCoordinate:(CLLocationCoordinate2D)a4 radius:(double)a5 curationContext:(id)a6;
- (id)assetsFromMomentNode:(id)a3 curationContext:(id)a4;
- (id)curatedAssetsFromMomentNode:(id)a3 curationContext:(id)a4;
- (id)existingQuestionsForEntityIdentifier:(id)a3;
- (id)fetchExistingQuestions;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
- (id)representativeAssetsFromMomentNode:(id)a3 curationContext:(id)a4;
- (int64_t)questionOptions;
- (unsigned)questionType;
@end

@implementation PGSurveyQuestionFactory

- (id)representativeAssetsFromMomentNode:(id)a3 curationContext:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = v8;
  if (v6)
  {
    v10 = [v6 addressEdges];
    if ([v10 count])
    {
      v48 = v9;
      v45 = v7;
      v46 = v6;
      v50 = [(PGSurveyQuestionFactory *)self assetsFromMomentNode:v6 curationContext:v7];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v44 = v10;
      obj = v10;
      v51 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v51)
      {
        v49 = *v59;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v59 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v58 + 1) + 8 * i);
            v56 = 0;
            v57 = 0;
            v13 = [v12 photoLocation];
            [v13 coordinate];
            v56 = v14;
            v57 = v15;

            v16 = [MEMORY[0x277CBEB18] array];
            v17 = [v12 universalStartDate];
            if (v17 && (v18 = v17, [v12 universalEndDate], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
            {
              v20 = objc_alloc(MEMORY[0x277CCA970]);
              v21 = [v12 universalStartDate];
              v22 = [v12 universalEndDate];
              v23 = [v20 initWithStartDate:v21 endDate:v22];
            }

            else
            {
              v24 = +[PGLogging sharedLogging];
              v21 = [v24 loggingConnection];

              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v37 = [v12 universalStartDate];
                v38 = [v12 universalEndDate];
                *buf = 138412546;
                *&buf[4] = v37;
                *&buf[12] = 2112;
                *&buf[14] = v38;
                _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "[PGSurveyQuestionFactory] AddressEdge has invalid date. StartDate:%@, EndDate: %@", buf, 0x16u);
              }

              v23 = 0;
            }

            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v25 = v50;
            v26 = [v25 countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v53;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v53 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v52 + 1) + 8 * j);
                  v31 = [v30 creationDate];
                  if (v23)
                  {
                    if ([v23 containsDate:v31])
                    {
                      *buf = 0;
                      *&buf[8] = 0;
                      v32 = [v30 location];
                      [v32 coordinate];
                      *buf = v33;
                      *&buf[8] = v34;

                      CLLocationCoordinate2DGetDistanceFrom();
                      if (v35 < 150.0)
                      {
                        [v16 addObject:v30];
                      }
                    }
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v52 objects:v62 count:16];
              }

              while (v27);
            }

            if ([v16 count])
            {
              v36 = [v16 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v16, "count"))}];
              [v48 addObject:v36];
            }
          }

          v51 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v51);
      }

      v9 = v48;
      v39 = v48;

      v7 = v45;
      v6 = v46;
      v10 = v44;
    }

    else
    {
      v41 = v9;
    }
  }

  else
  {
    v40 = v8;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_assetFromAssets:(id)a3 closestToLocationCoordinate:(CLLocationCoordinate2D)a4 radius:(double)a5
{
  v39[2] = *MEMORY[0x277D85DE8];
  v37 = a4;
  v6 = MEMORY[0x277CCAC98];
  v7 = a3;
  v8 = [v6 sortDescriptorWithKey:@"creationDate" ascending:1];
  v39[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v39[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v11 = [v7 sortedArrayUsingDescriptors:v10];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *MEMORY[0x277CE41E0];
    v18 = *v34;
    v19 = *MEMORY[0x277CE41E0];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        [v21 locationCoordinate];
        v32 = v40;
        if (CLLocationCoordinate2DIsValid(v40))
        {
          CLLocationCoordinate2DGetDistanceFrom();
          v23 = v22;
          if ((v22 <= a5 || a5 == 0.0) && v22 < v17)
          {
            v26 = v21;

            v17 = v23;
            v16 = v26;
          }

          if (v23 < v19)
          {
            v27 = v21;

            v15 = v27;
            v19 = v23;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:{16, *&v32.latitude, *&v32.longitude}];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v16)
  {
    v28 = v16;
  }

  else
  {
    v28 = v15;
  }

  v29 = v28;

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)assetFromMomentNode:(id)a3 closestToLocationCoordinate:(CLLocationCoordinate2D)a4 radius:(double)a5 curationContext:(id)a6
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v11 = a3;
  if (!v11)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v12 = [(PGSurveyQuestionFactory *)self curatedAssetsFromMomentNode:v11 curationContext:a6];
  v13 = [(PGSurveyQuestionFactory *)self _assetFromAssets:v12 closestToLocationCoordinate:latitude radius:longitude, a5];
  v14 = v13;
  if (!v13)
  {
    v18 = 1.79769313e308;
LABEL_8:
    v20 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary:v30];
    v21 = [v11 fetchAssetCollectionInPhotoLibrary:v20];

    v22 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    v23 = [v22 librarySpecificFetchOptions];

    v24 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v21 options:v23];
    v25 = [v24 fetchedObjects];
    v26 = [(PGSurveyQuestionFactory *)self _assetFromAssets:v25 closestToLocationCoordinate:a4.latitude radius:a4.longitude, a5];

    if (v26 && ([v26 locationCoordinate], CLLocationCoordinate2DGetDistanceFrom(), v27 + 10.0 < v18))
    {
      v28 = v26;
    }

    else
    {
      v28 = v14;
    }

    v19 = v28;

    goto LABEL_13;
  }

  [v13 locationCoordinate];
  v30 = v15;
  v31 = v16;
  CLLocationCoordinate2DGetDistanceFrom();
  if (a5 != 0.0)
  {
    v18 = v17;
    if (v17 > a5)
    {
      goto LABEL_8;
    }
  }

  v19 = v14;
LABEL_13:

LABEL_14:

  return v19;
}

- (id)curatedAssetsFromMomentNode:(id)a3 curationContext:(id)a4
{
  workingContext = self->_workingContext;
  v7 = a4;
  v8 = a3;
  v9 = [(PGManagerWorkingContext *)workingContext photoLibrary];
  v10 = [v8 fetchAssetCollectionInPhotoLibrary:v9];

  v11 = +[PGCurationOptions defaultOptions];
  v12 = [(PGManagerWorkingContext *)self->_workingContext curationManager];
  v13 = [v12 curatedAssetsForAssetCollection:v10 options:v11 curationContext:v7 progressBlock:0];

  return v13;
}

- (id)assetsFromMomentNode:(id)a3 curationContext:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  v7 = [v5 fetchAssetCollectionInPhotoLibrary:v6];

  v8 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v27[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v9 setSortDescriptors:v11];

  v12 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v7 options:v9];
  v13 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if (([v19 clsIsScreenshotOrScreenRecording] & 1) == 0)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_questionsByEntityIdentifierFromQuestions:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 entityIdentifier];
        v12 = [v4 objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = [MEMORY[0x277CBEB18] array];
          [v4 setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDictionary)existingQuestionsByEntityIdentifier
{
  existingQuestionsByEntityIdentifier = self->_existingQuestionsByEntityIdentifier;
  if (!existingQuestionsByEntityIdentifier)
  {
    v4 = [(PGSurveyQuestionFactory *)self fetchExistingQuestions];
    v5 = [(PGSurveyQuestionFactory *)self _questionsByEntityIdentifierFromQuestions:v4];
    v6 = self->_existingQuestionsByEntityIdentifier;
    self->_existingQuestionsByEntityIdentifier = v5;

    existingQuestionsByEntityIdentifier = self->_existingQuestionsByEntityIdentifier;
  }

  return existingQuestionsByEntityIdentifier;
}

- (id)fetchExistingQuestions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v5 = MEMORY[0x277CCAC30];
  v6 = [(PGSurveyQuestionFactory *)self collidingQuestionTypes];
  v7 = [v5 predicateWithFormat:@"type in %@", v6];
  [v4 setPredicate:v7];

  v8 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:v4 validQuestionsOnly:0];
  v9 = [v8 count];
  v10 = +[PGLogging sharedLogging];
  v11 = [v10 loggingConnection];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 67109378;
    v17 = v9;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "%d existing questions found for factory %@", buf, 0x12u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)shouldAddQuestion:(id)a3 toAlreadyGeneratedQuestions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PGSurveyQuestionFactory *)self questionAlreadyExists:v6])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [v7 containsObject:v6] ^ 1;
  }

  return v8;
}

- (id)existingQuestionsForEntityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

- (BOOL)questionAlreadyExists:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PGSurveyQuestionFactory *)self ignoreExistingQuestions])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [v4 entityIdentifier];
    v7 = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (v8)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = v8;
      v5 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v10 = *v15;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v9);
            }

            if ([v4 isEquivalentToPersistedQuestion:{*(*(&v14 + 1) + 8 * i), v14}])
            {
              LOBYTE(v5) = 1;
              goto LABEL_14;
            }
          }

          v5 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x277CBEAD8]);
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = NSStringFromSelector(a2);
  v12 = [v8 stringWithFormat:@"%@ must implement %@", v10, v11];
  v13 = [v6 initWithName:v7 reason:v12 userInfo:0];

  objc_exception_throw(v13);
}

- (int64_t)questionOptions
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (NSArray)collidingQuestionTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[PGSurveyQuestionFactory questionType](self, "questionType")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unsigned)questionType
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (PGSurveyQuestionFactory)initWithWorkingContext:(id)a3 questionVersion:(signed __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGSurveyQuestionFactory;
  v8 = [(PGSurveyQuestionFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_workingContext, a3);
    v9->_questionVersion = a4;
  }

  return v9;
}

@end
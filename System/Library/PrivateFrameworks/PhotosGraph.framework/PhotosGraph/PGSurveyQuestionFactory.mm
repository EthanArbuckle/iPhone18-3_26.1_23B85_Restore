@interface PGSurveyQuestionFactory
- (BOOL)questionAlreadyExists:(id)exists;
- (BOOL)shouldAddQuestion:(id)question toAlreadyGeneratedQuestions:(id)questions;
- (NSArray)collidingQuestionTypes;
- (NSDictionary)existingQuestionsByEntityIdentifier;
- (PGSurveyQuestionFactory)initWithWorkingContext:(id)context questionVersion:(signed __int16)version;
- (id)_assetFromAssets:(id)assets closestToLocationCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
- (id)_questionsByEntityIdentifierFromQuestions:(id)questions;
- (id)assetFromMomentNode:(id)node closestToLocationCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius curationContext:(id)context;
- (id)assetsFromMomentNode:(id)node curationContext:(id)context;
- (id)curatedAssetsFromMomentNode:(id)node curationContext:(id)context;
- (id)existingQuestionsForEntityIdentifier:(id)identifier;
- (id)fetchExistingQuestions;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
- (id)representativeAssetsFromMomentNode:(id)node curationContext:(id)context;
- (int64_t)questionOptions;
- (unsigned)questionType;
@end

@implementation PGSurveyQuestionFactory

- (id)representativeAssetsFromMomentNode:(id)node curationContext:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  contextCopy = context;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = v8;
  if (nodeCopy)
  {
    addressEdges = [nodeCopy addressEdges];
    if ([addressEdges count])
    {
      v48 = v9;
      v45 = contextCopy;
      v46 = nodeCopy;
      v50 = [(PGSurveyQuestionFactory *)self assetsFromMomentNode:nodeCopy curationContext:contextCopy];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v44 = addressEdges;
      obj = addressEdges;
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
            photoLocation = [v12 photoLocation];
            [photoLocation coordinate];
            v56 = v14;
            v57 = v15;

            array = [MEMORY[0x277CBEB18] array];
            universalStartDate = [v12 universalStartDate];
            if (universalStartDate && (v18 = universalStartDate, [v12 universalEndDate], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
            {
              v20 = objc_alloc(MEMORY[0x277CCA970]);
              universalStartDate2 = [v12 universalStartDate];
              universalEndDate = [v12 universalEndDate];
              v23 = [v20 initWithStartDate:universalStartDate2 endDate:universalEndDate];
            }

            else
            {
              v24 = +[PGLogging sharedLogging];
              universalStartDate2 = [v24 loggingConnection];

              if (os_log_type_enabled(universalStartDate2, OS_LOG_TYPE_ERROR))
              {
                universalStartDate3 = [v12 universalStartDate];
                universalEndDate2 = [v12 universalEndDate];
                *buf = 138412546;
                *&buf[4] = universalStartDate3;
                *&buf[12] = 2112;
                *&buf[14] = universalEndDate2;
                _os_log_error_impl(&dword_22F0FC000, universalStartDate2, OS_LOG_TYPE_ERROR, "[PGSurveyQuestionFactory] AddressEdge has invalid date. StartDate:%@, EndDate: %@", buf, 0x16u);
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
                  creationDate = [v30 creationDate];
                  if (v23)
                  {
                    if ([v23 containsDate:creationDate])
                    {
                      *buf = 0;
                      *&buf[8] = 0;
                      location = [v30 location];
                      [location coordinate];
                      *buf = v33;
                      *&buf[8] = v34;

                      CLLocationCoordinate2DGetDistanceFrom();
                      if (v35 < 150.0)
                      {
                        [array addObject:v30];
                      }
                    }
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v52 objects:v62 count:16];
              }

              while (v27);
            }

            if ([array count])
            {
              v36 = [array objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(array, "count"))}];
              [v48 addObject:v36];
            }
          }

          v51 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v51);
      }

      v9 = v48;
      v39 = v48;

      contextCopy = v45;
      nodeCopy = v46;
      addressEdges = v44;
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

- (id)_assetFromAssets:(id)assets closestToLocationCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  v39[2] = *MEMORY[0x277D85DE8];
  coordinateCopy = coordinate;
  v6 = MEMORY[0x277CCAC98];
  assetsCopy = assets;
  v8 = [v6 sortDescriptorWithKey:@"creationDate" ascending:1];
  v39[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v39[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v11 = [assetsCopy sortedArrayUsingDescriptors:v10];

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
          if ((v22 <= radius || radius == 0.0) && v22 < v17)
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

- (id)assetFromMomentNode:(id)node closestToLocationCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius curationContext:(id)context
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  nodeCopy = node;
  if (!nodeCopy)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v12 = [(PGSurveyQuestionFactory *)self curatedAssetsFromMomentNode:nodeCopy curationContext:context];
  radius = [(PGSurveyQuestionFactory *)self _assetFromAssets:v12 closestToLocationCoordinate:latitude radius:longitude, radius];
  v14 = radius;
  if (!radius)
  {
    v18 = 1.79769313e308;
LABEL_8:
    v20 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary:v30];
    v21 = [nodeCopy fetchAssetCollectionInPhotoLibrary:v20];

    photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v24 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v21 options:librarySpecificFetchOptions];
    fetchedObjects = [v24 fetchedObjects];
    radius2 = [(PGSurveyQuestionFactory *)self _assetFromAssets:fetchedObjects closestToLocationCoordinate:coordinate.latitude radius:coordinate.longitude, radius];

    if (radius2 && ([radius2 locationCoordinate], CLLocationCoordinate2DGetDistanceFrom(), v27 + 10.0 < v18))
    {
      v28 = radius2;
    }

    else
    {
      v28 = v14;
    }

    v19 = v28;

    goto LABEL_13;
  }

  [radius locationCoordinate];
  v30 = v15;
  v31 = v16;
  CLLocationCoordinate2DGetDistanceFrom();
  if (radius != 0.0)
  {
    v18 = v17;
    if (v17 > radius)
    {
      goto LABEL_8;
    }
  }

  v19 = v14;
LABEL_13:

LABEL_14:

  return v19;
}

- (id)curatedAssetsFromMomentNode:(id)node curationContext:(id)context
{
  workingContext = self->_workingContext;
  contextCopy = context;
  nodeCopy = node;
  photoLibrary = [(PGManagerWorkingContext *)workingContext photoLibrary];
  v10 = [nodeCopy fetchAssetCollectionInPhotoLibrary:photoLibrary];

  v11 = +[PGCurationOptions defaultOptions];
  curationManager = [(PGManagerWorkingContext *)self->_workingContext curationManager];
  v13 = [curationManager curatedAssetsForAssetCollection:v10 options:v11 curationContext:contextCopy progressBlock:0];

  return v13;
}

- (id)assetsFromMomentNode:(id)node curationContext:(id)context
{
  v27[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  v7 = [nodeCopy fetchAssetCollectionInPhotoLibrary:photoLibrary];

  photoLibrary2 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v27[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v11];

  v12 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v7 options:librarySpecificFetchOptions];
  array = [MEMORY[0x277CBEB18] array];
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
          [array addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_questionsByEntityIdentifierFromQuestions:(id)questions
{
  v20 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = questionsCopy;
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
        entityIdentifier = [v10 entityIdentifier];
        array = [dictionary objectForKeyedSubscript:entityIdentifier];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          [dictionary setObject:array forKeyedSubscript:entityIdentifier];
        }

        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (NSDictionary)existingQuestionsByEntityIdentifier
{
  existingQuestionsByEntityIdentifier = self->_existingQuestionsByEntityIdentifier;
  if (!existingQuestionsByEntityIdentifier)
  {
    fetchExistingQuestions = [(PGSurveyQuestionFactory *)self fetchExistingQuestions];
    v5 = [(PGSurveyQuestionFactory *)self _questionsByEntityIdentifierFromQuestions:fetchExistingQuestions];
    v6 = self->_existingQuestionsByEntityIdentifier;
    self->_existingQuestionsByEntityIdentifier = v5;

    existingQuestionsByEntityIdentifier = self->_existingQuestionsByEntityIdentifier;
  }

  return existingQuestionsByEntityIdentifier;
}

- (id)fetchExistingQuestions
{
  v20 = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v5 = MEMORY[0x277CCAC30];
  collidingQuestionTypes = [(PGSurveyQuestionFactory *)self collidingQuestionTypes];
  v7 = [v5 predicateWithFormat:@"type in %@", collidingQuestionTypes];
  [librarySpecificFetchOptions setPredicate:v7];

  v8 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:0];
  v9 = [v8 count];
  v10 = +[PGLogging sharedLogging];
  loggingConnection = [v10 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 67109378;
    v17 = v9;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%d existing questions found for factory %@", buf, 0x12u);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)shouldAddQuestion:(id)question toAlreadyGeneratedQuestions:(id)questions
{
  questionCopy = question;
  questionsCopy = questions;
  if ([(PGSurveyQuestionFactory *)self questionAlreadyExists:questionCopy])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [questionsCopy containsObject:questionCopy] ^ 1;
  }

  return v8;
}

- (id)existingQuestionsForEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  existingQuestionsByEntityIdentifier = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
  v6 = [existingQuestionsByEntityIdentifier objectForKeyedSubscript:identifierCopy];

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

- (BOOL)questionAlreadyExists:(id)exists
{
  v19 = *MEMORY[0x277D85DE8];
  existsCopy = exists;
  if ([(PGSurveyQuestionFactory *)self ignoreExistingQuestions])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    entityIdentifier = [existsCopy entityIdentifier];
    existingQuestionsByEntityIdentifier = [(PGSurveyQuestionFactory *)self existingQuestionsByEntityIdentifier];
    v8 = [existingQuestionsByEntityIdentifier objectForKeyedSubscript:entityIdentifier];

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

            if ([existsCopy isEquivalentToPersistedQuestion:{*(*(&v14 + 1) + 8 * i), v14}])
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

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
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

- (PGSurveyQuestionFactory)initWithWorkingContext:(id)context questionVersion:(signed __int16)version
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = PGSurveyQuestionFactory;
  v8 = [(PGSurveyQuestionFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_workingContext, context);
    v9->_questionVersion = version;
  }

  return v9;
}

@end
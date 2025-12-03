@interface PXSurveyQuestionsDataSource
- (BOOL)didAnswerQuestionForGadgetIdentifier:(id)identifier;
- (PXSurveyQuestionsDataSource)init;
- (PXSurveyQuestionsDataSource)initWithPhotoLibrary:(id)library predicate:(id)predicate;
- (id)_fetchOptionsForShouldPrefetchCount:(BOOL)count;
- (id)fetchSortedAllUnansweredQuestionsWithLimit:(unint64_t)limit;
- (id)mostRecentQuestionCreationDate;
- (unint64_t)fetchTotalNumberOfAnsweredYesOrNoQuestions;
- (unint64_t)fetchTotalNumberOfUnansweredQuestions;
- (void)invalidateQuestions:(id)questions;
- (void)resetGeneratedQuestions;
@end

@implementation PXSurveyQuestionsDataSource

- (void)invalidateQuestions:(id)questions
{
  questionsCopy = questions;
  if ([questionsCopy count])
  {
    photoLibrary = self->_photoLibrary;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__PXSurveyQuestionsDataSource_invalidateQuestions___block_invoke;
    v6[3] = &unk_1E774C648;
    v7 = questionsCopy;
    [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v6 error:0];
  }
}

void __51__PXSurveyQuestionsDataSource_invalidateQuestions___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978A18] changeRequestForQuestion:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setState:4];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (id)mostRecentQuestionCreationDate
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [(PXSurveyQuestionsDataSource *)self _fetchOptionsForShouldPrefetchCount:0];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v10[0] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v2 setSortDescriptors:v5];

  [v2 setFetchLimit:1];
  v6 = [MEMORY[0x1E6978A10] fetchQuestionsWithOptions:v2 validQuestionsOnly:0];
  firstObject = [v6 firstObject];

  creationDate = [firstObject creationDate];

  return creationDate;
}

- (id)_fetchOptionsForShouldPrefetchCount:(BOOL)count
{
  countCopy = count;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPredicate:self->_predicate];
  [librarySpecificFetchOptions setShouldPrefetchCount:countCopy];

  return librarySpecificFetchOptions;
}

- (unint64_t)fetchTotalNumberOfAnsweredYesOrNoQuestions
{
  v2 = [(PXSurveyQuestionsDataSource *)self _fetchOptionsForShouldPrefetchCount:1];
  v3 = [MEMORY[0x1E6978A10] fetchAnsweredYesOrNoQuestionsWithOptions:v2 validQuestionsOnly:0];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)fetchTotalNumberOfUnansweredQuestions
{
  v2 = [(PXSurveyQuestionsDataSource *)self _fetchOptionsForShouldPrefetchCount:1];
  v3 = [MEMORY[0x1E6978A10] fetchUnansweredQuestionsWithOptions:v2 validQuestionsOnly:0];
  v4 = [v3 count];

  return v4;
}

- (id)fetchSortedAllUnansweredQuestionsWithLimit:(unint64_t)limit
{
  v43[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(PXSurveyQuestionsDataSource *)self _fetchOptionsForShouldPrefetchCount:0];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"type", 30];
  [v6 setPredicate:v7];

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"score" ascending:0];
  v43[0] = v8;
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v43[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  [v6 setSortDescriptors:v10];

  [v6 setFetchLimit:limit];
  v11 = [MEMORY[0x1E6978A10] fetchUnansweredQuestionsWithOptions:v6 validQuestionsOnly:0];
  fetchedObjects = [v11 fetchedObjects];
  [v5 addObjectsFromArray:fetchedObjects];

  v13 = limit - [v11 count];
  if (v13)
  {
    v16 = [(PXSurveyQuestionsDataSource *)self _fetchOptionsForShouldPrefetchCount:0];

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d OR %K == %d", @"type", 20, @"type", 23];
    [v16 setPredicate:v17];

    v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v42[0] = v18;
    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"score" ascending:0];
    v42[1] = v19;
    [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
    v20 = v38 = self;
    v42[2] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
    [v16 setSortDescriptors:v21];

    [v16 setFetchLimit:v13];
    v22 = [MEMORY[0x1E6978A10] fetchUnansweredQuestionsWithOptions:v16 validQuestionsOnly:0];
    fetchedObjects2 = [v22 fetchedObjects];
    [v5 addObjectsFromArray:fetchedObjects2];

    v24 = [v22 count];
    if (v13 != v24)
    {
      v36 = v13 - v24;
      v25 = [(PXSurveyQuestionsDataSource *)v38 _fetchOptionsForShouldPrefetchCount:0];

      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d AND %K != %d", @"type", 20, @"type", 23];
      [v26 addObject:v37];
      v35 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"type", 30];
      [v26 addObject:v35];
      v27 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v26];
      [v25 setPredicate:v27];

      v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v41[0] = v28;
      v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"score" ascending:0];
      v41[1] = v29;
      v30 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
      v41[2] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
      [v25 setSortDescriptors:v31];

      [v25 setFetchLimit:v36];
      v32 = [MEMORY[0x1E6978A10] fetchUnansweredQuestionsWithOptions:v25 validQuestionsOnly:0];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __74__PXSurveyQuestionsDataSource_fetchSortedAllUnansweredQuestionsWithLimit___block_invoke;
      v39[3] = &unk_1E772DCD8;
      v40 = v5;
      [v32 enumerateObjectsUsingBlock:v39];

      v16 = v25;
    }

    v33 = objc_alloc(MEMORY[0x1E69788E0]);
    v15 = [v33 initWithObjects:v5 photoLibrary:v38->_photoLibrary fetchType:*MEMORY[0x1E6978DC8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

    v6 = v16;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E69788E0]);
    v15 = [v14 initWithObjects:v5 photoLibrary:self->_photoLibrary fetchType:*MEMORY[0x1E6978DC8] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  }

  return v15;
}

- (BOOL)didAnswerQuestionForGadgetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableSet *)self->_answeredGadgetIdentifiers containsObject:identifierCopy];
  if ((v5 & 1) == 0)
  {
    [(NSMutableSet *)self->_answeredGadgetIdentifiers addObject:identifierCopy];
  }

  return v5 ^ 1;
}

- (void)resetGeneratedQuestions
{
  self->_numberOfQuestionsGenerated = 0;
  v3 = [MEMORY[0x1E695DFA8] set];
  answeredGadgetIdentifiers = self->_answeredGadgetIdentifiers;
  self->_answeredGadgetIdentifiers = v3;
}

- (PXSurveyQuestionsDataSource)initWithPhotoLibrary:(id)library predicate:(id)predicate
{
  libraryCopy = library;
  predicateCopy = predicate;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsDataSource.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v18.receiver = self;
  v18.super_class = PXSurveyQuestionsDataSource;
  v10 = [(PXSurveyQuestionsDataSource *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photoLibrary, library);
    v12 = [predicateCopy copy];
    predicate = v11->_predicate;
    v11->_predicate = v12;

    v11->_numberOfQuestionsGenerated = 0;
    v14 = [MEMORY[0x1E695DFA8] set];
    answeredGadgetIdentifiers = v11->_answeredGadgetIdentifiers;
    v11->_answeredGadgetIdentifiers = v14;
  }

  return v11;
}

- (PXSurveyQuestionsDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsDataSource.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXSurveyQuestionsDataSource init]"}];

  abort();
}

@end
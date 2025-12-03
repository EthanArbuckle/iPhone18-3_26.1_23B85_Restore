@interface PGSharedLibraryStartQuestionFactory
- (id)existingQuestion;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGSharedLibraryStartQuestionFactory

- (id)existingQuestion
{
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:1];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d AND entityType = %d", -[PGSharedLibraryStartQuestionFactory questionType](self, "questionType"), 4];
  [librarySpecificFetchOptions setPredicate:v6];

  v7 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:0];
  firstObject = [v7 firstObject];

  return firstObject;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (limit)
  {
    v4 = [(PGSharedLibraryStartQuestionFactory *)self existingQuestion:limit];
    if (v4)
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v6 = objc_alloc_init(PGSharedLibraryStartQuestion);
      v9[0] = v6;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

@end
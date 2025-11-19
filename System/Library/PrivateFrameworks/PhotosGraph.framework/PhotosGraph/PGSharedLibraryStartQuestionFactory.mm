@interface PGSharedLibraryStartQuestionFactory
- (id)existingQuestion;
- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4;
@end

@implementation PGSharedLibraryStartQuestionFactory

- (id)existingQuestion
{
  v3 = [(PGSurveyQuestionFactory *)self workingContext];
  v4 = [v3 photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setFetchLimit:1];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d AND entityType = %d", -[PGSharedLibraryStartQuestionFactory questionType](self, "questionType"), 4];
  [v5 setPredicate:v6];

  v7 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:v5 validQuestionsOnly:0];
  v8 = [v7 firstObject];

  return v8;
}

- (id)generateQuestionsWithLimit:(unint64_t)a3 progressBlock:(id)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(PGSharedLibraryStartQuestionFactory *)self existingQuestion:a3];
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
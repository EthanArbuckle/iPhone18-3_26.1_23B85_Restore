@interface PGPeopleQuestionFactoryUtils
+ (id)personsWithPeopleHomeContextForPhotoLibrary:(id)library;
@end

@implementation PGPeopleQuestionFactoryUtils

+ (id)personsWithPeopleHomeContextForPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:1];
  v4 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];

  return v4;
}

@end
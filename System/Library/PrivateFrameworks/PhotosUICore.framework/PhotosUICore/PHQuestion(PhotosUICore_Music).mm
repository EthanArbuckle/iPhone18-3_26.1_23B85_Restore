@interface PHQuestion(PhotosUICore_Music)
+ (id)fetchMemoryMusicQualityQuestionForMemory:()PhotosUICore_Music audioAsset:;
- (uint64_t)memoryMusicQualityFeedbackType;
@end

@implementation PHQuestion(PhotosUICore_Music)

- (uint64_t)memoryMusicQualityFeedbackType
{
  additionalInfo = [self additionalInfo];
  v2 = [additionalInfo objectForKeyedSubscript:@"feedbackDescription"];
  v3 = PXMemoryMusicQualityFeedbackTypeForString(v2);

  return v3;
}

+ (id)fetchMemoryMusicQualityQuestionForMemory:()PhotosUICore_Music audioAsset:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  identifier = [a4 identifier];
  photoLibrary = [v5 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v9 = MEMORY[0x1E696AE18];
  uuid = [v5 uuid];
  v11 = [v9 predicateWithFormat:@"type == %d AND entityIdentifier == %@", 15, uuid];
  [librarySpecificFetchOptions setPredicate:v11];

  [MEMORY[0x1E6978A10] fetchQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v27 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v23 = v5;
    v15 = *v25;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        additionalInfo = [v17 additionalInfo];
        v19 = [additionalInfo objectForKeyedSubscript:@"songIdentifier"];

        if (v19)
        {
          v20 = identifier == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20 && ([v19 isEqualToString:identifier] & 1) != 0)
        {
          v21 = v17;

          goto LABEL_15;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v21 = 0;
LABEL_15:
    v5 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end
@interface PHQuestionChangeRequest(PhotosUICore_Music)
+ (id)_questionAdditionalInfoFromAudioAsset:()PhotosUICore_Music feedbackType:;
+ (id)changeMemoryMusicQualityFeedbackRequestForQuestion:()PhotosUICore_Music feedbackType:;
+ (id)memoryMusicQualityQuestionCreationRequestForMemory:()PhotosUICore_Music audioAsset:feedbackType:;
+ (uint64_t)_questionStateFromFeedbackType:()PhotosUICore_Music;
@end

@implementation PHQuestionChangeRequest(PhotosUICore_Music)

+ (id)_questionAdditionalInfoFromAudioAsset:()PhotosUICore_Music feedbackType:
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"songIdentifier";
  v5 = a3;
  v6 = [v5 identifier];
  v14[0] = v6;
  v13[1] = @"songType";
  v7 = [v5 catalog];

  if (v7 > 4)
  {
    v8 = @"Mock";
  }

  else
  {
    v8 = off_1E773ED58[v7];
  }

  v9 = v8;
  v14[1] = v9;
  v13[2] = @"feedbackDescription";
  if ((a4 - 1) > 4)
  {
    v10 = @"None";
  }

  else
  {
    v10 = off_1E7733F40[(a4 - 1)];
  }

  v14[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

+ (uint64_t)_questionStateFromFeedbackType:()PhotosUICore_Music
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return word_1A5381968[(a3 - 1)];
  }
}

+ (id)changeMemoryMusicQualityFeedbackRequestForQuestion:()PhotosUICore_Music feedbackType:
{
  v5 = MEMORY[0x1E6978A18];
  v6 = a3;
  v7 = [v5 changeRequestForQuestion:v6];
  v8 = MEMORY[0x1E695DF90];
  v9 = [v6 additionalInfo];

  v10 = [v8 dictionaryWithDictionary:v9];

  if ((a4 - 1) > 4)
  {
    v11 = @"None";
  }

  else
  {
    v11 = off_1E7733F40[(a4 - 1)];
  }

  [v10 setObject:v11 forKeyedSubscript:@"feedbackDescription"];
  [v7 setAdditionalInfo:v10];

  return v7;
}

+ (id)memoryMusicQualityQuestionCreationRequestForMemory:()PhotosUICore_Music audioAsset:feedbackType:
{
  v7 = MEMORY[0x1E6978A18];
  v8 = a4;
  v9 = [a3 uuid];
  v10 = [objc_opt_class() _questionStateFromFeedbackType:a5];
  v11 = [objc_opt_class() _questionAdditionalInfoFromAudioAsset:v8 feedbackType:a5];

  v12 = [MEMORY[0x1E695DF00] date];
  LOWORD(v15) = 0;
  v13 = [v7 creationRequestForQuestionWithEntityIdentifier:v9 type:15 state:v10 entityType:2 displayType:5 score:v11 additionalInfo:0.0 creationDate:v12 questionVersion:v15];

  return v13;
}

@end
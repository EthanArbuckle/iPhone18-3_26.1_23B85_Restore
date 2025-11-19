@interface GenerateCameraLibrarySwitchQuestions
@end

@implementation GenerateCameraLibrarySwitchQuestions

uint64_t ___GenerateCameraLibrarySwitchQuestions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E69BEB20];
  v16[0] = *MEMORY[0x1E69BEB30];
  v16[1] = v4;
  v17[0] = &unk_1F190C2B0;
  v17[1] = &unk_1F190C2C8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v6 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v7 = [v6 photoAnalysisClient];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = ___GenerateCameraLibrarySwitchQuestions_block_invoke_520;
  v14 = &unk_1E7739F78;
  v15 = v3;
  v8 = v3;
  [v7 requestGenerateQuestionsWithOptions:v5 reply:&v11];

  v9 = [off_1E7721948 standardUserDefaults];
  [v9 setSurveyQuestionsHideDate:0];

  return 1;
}

void ___GenerateCameraLibrarySwitchQuestions_block_invoke_520(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69BEB28]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = @"Generated new Photos Challenges questions, available in the For You tab.";
  }

  else
  {
    v9 = [v5 userInfo];
    v10 = [v9 description];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v5 description];
    }

    v13 = v12;

    if ([v13 length])
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate questions: %@", v13];
    }

    else
    {
      v8 = @"Failed to generate questions.";
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___GenerateCameraLibrarySwitchQuestions_block_invoke_2;
  block[3] = &unk_1E774A1B8;
  v16 = @"Camera Library Switch Questions";
  v17 = v8;
  v18 = *(a1 + 32);
  v14 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end
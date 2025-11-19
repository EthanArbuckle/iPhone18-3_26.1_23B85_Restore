@interface GenerateSurveyQuestionsWithOptions
@end

@implementation GenerateSurveyQuestionsWithOptions

void ___GenerateSurveyQuestionsWithOptions_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69BEB28]];
  v7 = [v6 BOOLValue];

  v8 = PLUIGetLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PHQuestionOptionsDebugDescription();
      *buf = 138543362;
      v22 = v10;
      v11 = "Did generate some questions for options: %{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v12, v13, v11, buf, v14);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = PHQuestionOptionsDebugDescription();
    *buf = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = v5;
    v11 = "Failed to generate questions for options: %{public}@, error: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 22;
    goto LABEL_6;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___GenerateSurveyQuestionsWithOptions_block_invoke_217;
  block[3] = &unk_1E774A940;
  v15 = *(a1 + 32);
  v20 = v7;
  v18 = v5;
  v19 = v15;
  v16 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end
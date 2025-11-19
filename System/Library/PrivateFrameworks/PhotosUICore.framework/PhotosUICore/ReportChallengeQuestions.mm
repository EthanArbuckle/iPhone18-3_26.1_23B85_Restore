@interface ReportChallengeQuestions
@end

@implementation ReportChallengeQuestions

uint64_t ___ReportChallengeQuestions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v5 = [v4 photoAnalysisClient];
  v15 = 0;
  v6 = [v5 reportMetricsWithOptions:MEMORY[0x1E695E0F8] error:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = @"Successfully sent metrics to analytics.\n\nThank you!";
  }

  else
  {
    v9 = [v7 userInfo];
    v10 = [v9 description];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v7 description];
    }

    v13 = v12;

    if ([v13 length])
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to send metrics: %@", v13];
    }

    else
    {
      v8 = @"Failed to send metrics.";
    }
  }

  _PresentAlert(@"Photos Challenge Metrics", v8, v3);

  return 1;
}

@end
@interface PGSettlingEffectScoreHelper
+ (float)analyzedSettlingEffectScoreForAsset:(id)a3 requestedOnDemand:(BOOL *)a4;
+ (float)requestSettlingEffectScoreForAsset:(id)a3 error:(id *)a4;
@end

@implementation PGSettlingEffectScoreHelper

+ (float)requestSettlingEffectScoreForAsset:(id)a3 error:(id *)a4
{
  v58[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = 0.0;
  if ([MEMORY[0x277D3C810] assetIsEligibleForSettlingEffect:v5])
  {
    v7 = os_log_create("com.apple.PhotosGraph", "suggestions");
    v32 = [MEMORY[0x277D267E8] analysisService];
    v57[0] = *MEMORY[0x277D26828];
    v57[1] = @"AllowStreaming";
    v58[0] = MEMORY[0x277CBEC38];
    v58[1] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v9 = [v5 mediaAnalysisProperties];
    v10 = v7;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 uuid];
      [v9 settlingEffectScore];
      v13 = v12;
      [v9 activityScore];
      *buf = 138412802;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      *&buf[22] = 2048;
      v54 = v14;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "[PGSettlingEffectScoreHelper] Requesting settlingEffectScore for asset:%@. (current SettlingEffectScore:%.2f, ActivityScore:%.2f)", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v54 = COERCE_DOUBLE(__Block_byref_object_copy__63382);
    v55 = __Block_byref_object_dispose__63383;
    v56 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v15 = dispatch_semaphore_create(0);
    v16 = v10;
    v17 = os_signpost_id_generate(v16);
    v18 = v16;
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v48 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SettingEffectScoreRequest", "", v48, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v20 = mach_absolute_time();
    v52 = v5;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __72__PGSettlingEffectScoreHelper_requestSettlingEffectScoreForAsset_error___block_invoke_2;
    v33[3] = &unk_2788884C8;
    v34 = v5;
    v36 = &v44;
    v37 = &v40;
    v38 = buf;
    v22 = v15;
    v35 = v22;
    [v32 requestAnalysisTypes:0x40000 forAssets:v21 withOptions:v8 progressHandler:&__block_literal_global_63387 andCompletionHandler:v33];

    v23 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v22, v23);
    v24 = mach_absolute_time();
    v25 = info;
    v26 = v19;
    v27 = v26;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *v48 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_END, v17, "SettingEffectScoreRequest", "", v48, 2u);
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *v48 = 136315394;
      v49 = COERCE_DOUBLE("SettingEffectScoreRequest");
      v50 = 2048;
      v51 = ((((v24 - v20) * v25.numer) / v25.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v48, 0x16u);
    }

    if (a4)
    {
      *a4 = *(*&buf[8] + 40);
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v45[6];
      v29 = v41[6];
      *v48 = 134218240;
      v49 = v28;
      v50 = 2048;
      v51 = v29;
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[PGSettlingEffectScoreHelper] settlingEffectScore:%.2f, activityScore:%.2f", v48, 0x16u);
    }

    v6 = v45[6];

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(buf, 8);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v6;
}

void __72__PGSettlingEffectScoreHelper_requestSettlingEffectScoreForAsset_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  if (v17)
  {
    v6 = [*(a1 + 32) localIdentifier];
    v7 = [v17 objectForKeyedSubscript:v6];
    v8 = [v7 objectForKey:*MEMORY[0x277D267C8]];
    v9 = [v8 firstObject];

    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D267B8]];
    [v10 floatValue];
    *(*(*(a1 + 48) + 8) + 24) = v11;

    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D26798]];
    v13 = [v12 objectForKeyedSubscript:@"RankingLevel"];
    [v13 floatValue];
    *(*(*(a1 + 56) + 8) + 24) = v14;
  }

  else
  {
    v15 = *(*(a1 + 64) + 8);
    v16 = v5;
    v9 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (float)analyzedSettlingEffectScoreForAsset:(id)a3 requestedOnDemand:(BOOL *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 mediaAnalysisProperties];
  [v6 settlingEffectScore];
  v8 = v7;

  if (v8 <= -1.0 || ([v5 mediaAnalysisProperties], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "activityScore"), v11 = v10, v9, v11 == 0.5))
  {
    if (a4)
    {
      *a4 = 1;
    }

    v16 = 0;
    [PGSettlingEffectScoreHelper requestSettlingEffectScoreForAsset:v5 error:&v16];
    v8 = v12;
    v13 = v16;
    if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v13;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGSettlingEffectScoreHelper] Error requesting settlingEffectScore: %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

@end
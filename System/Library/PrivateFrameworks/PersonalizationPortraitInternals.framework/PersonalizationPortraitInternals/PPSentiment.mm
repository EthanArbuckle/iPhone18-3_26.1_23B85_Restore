@interface PPSentiment
+ (id)sharedInstance;
- (PPSentiment)init;
- (float)sentimentScoreForText:(id)text;
@end

@implementation PPSentiment

- (float)sentimentScoreForText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    intercept = self->_intercept;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__PPSentiment_sentimentScoreForText___block_invoke;
    v9[3] = &unk_278974660;
    v10 = textCopy;
    selfCopy = self;
    v12 = &v13;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = 2.0 / (exp(-v14[6]) + 1.0) + -1.0;

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = INFINITY;
  }

  return v7;
}

void __37__PPSentiment_sentimentScoreForText___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3[2] result];
  [v4 setString:*(a1 + 32)];
  v5 = [*(a1 + 32) length];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __37__PPSentiment_sentimentScoreForText___block_invoke_2;
  v10 = &unk_278974638;
  v11 = *(a1 + 32);
  v12 = v3;
  v13 = *(a1 + 40);
  v6 = v3;
  [v4 enumerateTokensInRange:0 usingBlock:{v5, &v7}];
  [v4 setString:{@"⌘", v7, v8, v9, v10}];
}

void __37__PPSentiment_sentimentScoreForText___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) substringWithRange:{a2, a3}];
  v8 = [v7 lowercaseString];

  v9 = [*(*(a1 + 40) + 8) payloadForString:v8];
  if (v9)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = v9 | 0xFFFFFFFF80000000;
      if (v9 < 0)
      {
        v11 = v9 - 0x80000000;
      }

      v12 = *(v10 + 8) * v11;
    }

    else
    {
      v12 = 0.0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v12 + *(*(*(a1 + 56) + 8) + 24);
  }

  objc_autoreleasePoolPop(v6);
}

- (PPSentiment)init
{
  v43 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = PPSentiment;
  v2 = [(PPSentiment *)&v24 init];
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = +[PPTrialWrapper sharedInstance];
  v4 = [v3 filepathForFactor:@"SentimentTokenWeight.trie" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];

  v5 = +[PPTrialWrapper sharedInstance];
  v6 = [v5 treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];

  if (!v4)
  {
    v19 = pp_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"SentimentTokenWeight.trie";
      _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "PPSentiment: Could not find asset path for %@", &buf, 0xCu);
    }

    goto LABEL_22;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v7 = objc_alloc(MEMORY[0x277D425F8]);
  v8 = objc_opt_new();
  v9 = [v7 initWithGuardedData:v8];
  lock = v2->_lock;
  v2->_lock = v9;

  v11 = v2->_lock;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __29__PPSentiment__loadAssetData__block_invoke;
  v26[3] = &unk_278974610;
  v12 = v6;
  v27 = v12;
  v13 = v4;
  v28 = v13;
  v29 = &v32;
  p_buf = &buf;
  v31 = &v36;
  [(_PASLock *)v11 runWithLockAcquired:v26];
  if ((v33[3] & 1) == 0)
  {
    goto LABEL_19;
  }

  v14 = *(*(&buf + 1) + 24);
  if (!v14)
  {
    v20 = pp_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "PPSentiment: Token weight trie does not contain range key", v25, 2u);
    }

    goto LABEL_18;
  }

  v15 = *(v37 + 6);
  if (!v15)
  {
    v20 = pp_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "PPSentiment: Token weight trie does not contain intercept key", v25, 2u);
    }

LABEL_18:

LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  v16 = (v14 + v14) / 4294967300.0;
  if (v15 >= 0)
  {
    v17 = v15 | 0xFFFFFFFF80000000;
  }

  else
  {
    v17 = v15 - 0x80000000;
  }

  v2->_weightBucketSize = v16;
  v2->_intercept = v16 * v17;
  v18 = 1;
LABEL_20:

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&buf, 8);

  if (!v18)
  {
LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

LABEL_21:
  v21 = v2;
LABEL_23:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __29__PPSentiment__loadAssetData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_storeStrong(v3 + 3, *(a1 + 32));
  v4 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:*(a1 + 40)];
  v5 = v3[1];
  v3[1] = v4;

  if (v3[1])
  {
    v6 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_10851 idleTimeout:1.0];
    v7 = v3[2];
    v3[2] = v6;

    *(*(*(a1 + 56) + 8) + 24) = [v3[1] payloadForString:@"_half_range_"];
    *(*(*(a1 + 64) + 8) + 24) = [v3[1] payloadForString:@"_intercept_"];
  }

  else
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 0;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPSentiment: Failed to create token weight trie", v9, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

id __29__PPSentiment__loadAssetData__block_invoke_28()
{
  v0 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];

  return v0;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken6 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken6, &__block_literal_global_35_10866);
  }

  v3 = sharedInstance__pasExprOnceResult_10867;

  return v3;
}

void __29__PPSentiment_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_10867;
  sharedInstance__pasExprOnceResult_10867 = v1;

  objc_autoreleasePoolPop(v0);
}

@end
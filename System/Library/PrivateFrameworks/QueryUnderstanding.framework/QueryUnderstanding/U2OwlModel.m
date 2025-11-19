@interface U2OwlModel
+ (id)log;
- (NSDictionary)modelMetadata;
- (U2OwlModel)initWithLocale:(id)a3;
- (void)getUnderstandingForQueryString:(id)a3 queryID:(int64_t)a4 spans:(id)a5 intentHint:(id)a6 withCompletionHandler:(id)a7;
- (void)loadWithCompletionHandler:(id)a3;
@end

@implementation U2OwlModel

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__U2OwlModel_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __17__U2OwlModel_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.queryunderstanding", [v4 UTF8String]);
  v3 = log_log_0;
  log_log_0 = v2;
}

- (U2OwlModel)initWithLocale:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = U2OwlModel;
  v6 = [(U2OwlModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, a3);
    v8 = [[U2HeadWrapper alloc] initWithLocale:v5];
    u2headWrapper = v7->_u2headWrapper;
    v7->_u2headWrapper = v8;
  }

  return v7;
}

- (void)loadWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2615A2000, v5, OS_LOG_TYPE_DEBUG, "[QPNLU] Loading OWLBERT EmbeddingService", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_2615A2000, v6, OS_LOG_TYPE_DEBUG, "[QPNLU] Loading U2Head", v12, 2u);
  }

  u2headWrapper = self->_u2headWrapper;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__U2OwlModel_loadWithCompletionHandler___block_invoke;
  v9[3] = &unk_279ADA848;
  objc_copyWeak(&v11, buf);
  v9[4] = self;
  v8 = v4;
  v10 = v8;
  [(U2HeadWrapper *)u2headWrapper loadWithCompletionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __40__U2OwlModel_loadWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&dword_2615A2000, v7, OS_LOG_TYPE_DEBUG, "[QPNLU] Failed to load U2Head error: %@", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8 && v5)
    {
      (*(v8 + 16))(v8, v5, v3);
    }
  }

  else
  {
    v9 = [*(WeakRetained + 2) metadata];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
    v11 = [v10 objectForKeyedSubscript:@"nlx_embeddings_version"];

    v12 = [objc_alloc(MEMORY[0x277D072C8]) initWithLocale:v5[3] version:v11];
    v13 = v5[1];
    v5[1] = v12;

    v14 = v5[1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__U2OwlModel_loadWithCompletionHandler___block_invoke_4;
    v17[3] = &unk_279ADA848;
    objc_copyWeak(&v19, (a1 + 48));
    v15 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v15;
    [v14 loadWithCompletionHandler:v17];

    objc_destroyWeak(&v19);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __40__U2OwlModel_loadWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_2615A2000, v6, OS_LOG_TYPE_ERROR, "[QPNLU] Failed to load EmbeddingService error: %@", &v10, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = WeakRetained == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    (*(v7 + 16))(v7, WeakRetained, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)modelMetadata
{
  v2 = [(U2HeadWrapper *)self->_u2headWrapper metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];

  return v3;
}

- (void)getUnderstandingForQueryString:(id)a3 queryID:(int64_t)a4 spans:(id)a5 intentHint:(id)a6 withCompletionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = mach_absolute_time();
  embeddingService = self->_embeddingService;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__U2OwlModel_getUnderstandingForQueryString_queryID_spans_intentHint_withCompletionHandler___block_invoke;
  v22[3] = &unk_279ADA870;
  v26 = v15;
  v27 = v16;
  v22[4] = self;
  v23 = v12;
  v28 = a4;
  v24 = v13;
  v25 = v14;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v15;
  [(QUEmbeddingService *)embeddingService getEmbeddingForQuery:v20 completionHandler:v22];
}

void __92__U2OwlModel_getUnderstandingForQueryString_queryID_spans_intentHint_withCompletionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[9];
  v8 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime_onceToken == -1)
  {
    if (v6)
    {
LABEL_3:
      (*(a1[8] + 16))();
      goto LABEL_8;
    }
  }

  else
  {
    __92__U2OwlModel_getUnderstandingForQueryString_queryID_spans_intentHint_withCompletionHandler___block_invoke_cold_1();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v9 = *(a1[4] + 16);
  v27 = (v8 - v7) * QPTimingNanosecondsSinceAbsoluteTime_sTimebaseInfo / *algn_280B233CC;
  v10 = [v5 embedding];
  v12 = a1[5];
  v11 = a1[6];
  v25 = v11;
  v26 = a1[10];
  v13 = [v5 tokens];
  v14 = [v5 tokenRanges];
  v15 = [v5 subtokenLenForTokens];
  v16 = [v5 subtokens];
  v17 = a1[7];
  v28 = 0;
  v18 = v9;
  v19 = v10;
  v20 = [v18 getU2PredictionsForEmbedding:v10 queryString:v12 queryID:v26 spans:v25 tokens:v13 tokenRanges:v14 subtokenLenForTokens:v15 subtokens:v16 intentHint:v17 error:&v28];
  v21 = v28;

  v22 = [v5 tokenRanges];
  [v20 setTokenRanges:v22];

  [v20 setEmbeddingsTime:v27];
  v23 = a1[9];
  v24 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime_onceToken != -1)
  {
    __92__U2OwlModel_getUnderstandingForQueryString_queryID_spans_intentHint_withCompletionHandler___block_invoke_cold_2();
  }

  [v20 setPredictionTime:(v24 - v23) * QPTimingNanosecondsSinceAbsoluteTime_sTimebaseInfo / *algn_280B233CC];
  (*(a1[8] + 16))();

LABEL_8:
}

@end
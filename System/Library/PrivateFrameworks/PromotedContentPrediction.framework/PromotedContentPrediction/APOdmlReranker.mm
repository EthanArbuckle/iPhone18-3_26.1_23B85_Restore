@interface APOdmlReranker
+ (OS_dispatch_queue)rerankResponseTimeoutQueue;
+ (OS_dispatch_queue)rerankSerialQueue;
- (APOdmlReranker)initWithPersonalizedAdsEnabled:(BOOL)a3 assetManager:(id)a4 placementType:(unint64_t)a5;
- (BOOL)sendRerankResponseIfAvailable:(id)a3 error:(id)a4;
- (id)predictAndExplore:(id)a3;
- (void)_handleError:(int64_t)a3;
- (void)getRerankedAdsWithTimeLimit:(double)a3 completion:(id)a4;
- (void)setAndRerankAds:(id)a3;
@end

@implementation APOdmlReranker

- (APOdmlReranker)initWithPersonalizedAdsEnabled:(BOOL)a3 assetManager:(id)a4 placementType:(unint64_t)a5
{
  v9 = a4;
  v20.receiver = self;
  v20.super_class = APOdmlReranker;
  v10 = [(APOdmlReranker *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_isPersonalizedAdsEnabled = a3;
    objc_storeStrong(&v10->_assetManager, a4);
    v12 = [APOdmlUnfairLock alloc];
    v14 = objc_msgSend_initWithOptions_(v12, v13, 1);
    rerankResponseLock = v11->_rerankResponseLock;
    v11->_rerankResponseLock = v14;

    v16 = OdmlLogForCategory(5uLL);
    v11->_ident = os_signpost_id_generate(v16);

    v11->_placementType = a5;
    v17 = dispatch_group_create();
    rerankDispatchGroup = v11->_rerankDispatchGroup;
    v11->_rerankDispatchGroup = v17;
  }

  return v11;
}

- (void)setAndRerankAds:(id)a3
{
  v4 = a3;
  v5 = OdmlLogForCategory(5uLL);
  v8 = objc_msgSend_ident(self, v6, v7);
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Head start", &unk_260EFF3C5, buf, 2u);
    }
  }

  v10 = OdmlLogForCategory(5uLL);
  v13 = objc_msgSend_ident(self, v11, v12);
  if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v14, "GCD Overhead", &unk_260EFF3C5, buf, 2u);
    }
  }

  v15 = OdmlLogForCategory(5uLL);
  v18 = objc_msgSend_ident(self, v16, v17);
  if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Overall reranking", &unk_260EFF3C5, buf, 2u);
    }
  }

  v22 = objc_msgSend_rerankDispatchGroup(self, v20, v21);
  v25 = objc_msgSend_rerankSerialQueue(APOdmlReranker, v23, v24);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_260EF20E4;
  v27[3] = &unk_279AC6228;
  v27[4] = self;
  v28 = v4;
  v26 = v4;
  dispatch_group_async(v22, v25, v27);
}

- (void)getRerankedAdsWithTimeLimit:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = OdmlLogForCategory(5uLL);
  v10 = objc_msgSend_ident(self, v8, v9);
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v7, OS_SIGNPOST_INTERVAL_END, v11, "Head start", &unk_260EFF3C5, buf, 2u);
    }
  }

  v14 = objc_msgSend_rerankResponseLock(self, v12, v13);
  objc_msgSend_lock(v14, v15, v16);
  objc_msgSend_setRerankResponse_(self, v17, v6);

  objc_msgSend_unlock(v14, v18, v19);
  v22 = objc_msgSend_rerankDispatchGroup(self, v20, v21);
  v25 = objc_msgSend_rerankSerialQueue(APOdmlReranker, v23, v24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EF2620;
  block[3] = &unk_279AC6188;
  block[4] = self;
  dispatch_group_async(v22, v25, block);

  v28 = objc_msgSend_rerankResponseTimeoutQueue(APOdmlReranker, v26, v27);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_260EF28B0;
  v29[3] = &unk_279AC69E8;
  v29[4] = self;
  *&v29[5] = a3;
  dispatch_async(v28, v29);
}

- (id)predictAndExplore:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = OdmlLogForCategory(5uLL);
  v8 = objc_msgSend_ident(self, v6, v7);
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v5))
    {
      v67 = 134283521;
      v68 = objc_msgSend_count(v4, v10, v11);
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Aggregated PTTR Prediction", "%{private}lu", &v67, 0xCu);
    }
  }

  v12 = [APOdmlPredictor alloc];
  v15 = objc_msgSend_assetManager(self, v13, v14);
  v18 = objc_msgSend_assetManager(self, v16, v17);
  v21 = objc_msgSend_currentMLModel(v18, v19, v20);
  v23 = objc_msgSend_initWithResponses_assetManager_model_(v12, v22, v4, v15, v21);

  v26 = objc_msgSend_predictTapThroughRate(v23, v24, v25);
  v29 = v26;
  if (!v26)
  {
    v52 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = objc_opt_class();
      v67 = 138412546;
      v68 = v53;
      v69 = 2112;
      v70 = 0;
      v54 = v53;
      _os_log_impl(&dword_260ECB000, v52, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: pttrArray %@ is empty or nil.", &v67, 0x16u);
    }

    v56 = &kAPOdmlRerankingPttrArrayNil;
    goto LABEL_16;
  }

  v30 = objc_msgSend_count(v26, v27, v28);
  v33 = objc_msgSend_count(v4, v31, v32);
  v34 = OdmlLogForCategory(5uLL);
  v37 = v34;
  if (v30 != v33)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v57 = objc_opt_class();
      v58 = v57;
      v61 = objc_msgSend_count(v29, v59, v60);
      v64 = objc_msgSend_count(v4, v62, v63);
      v67 = 138412802;
      v68 = v57;
      v69 = 2048;
      v70 = v61;
      v71 = 2048;
      v72 = v64;
      _os_log_impl(&dword_260ECB000, v37, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: pttrArray count %lu does not match rankableObjects count %lu.", &v67, 0x20u);
    }

    v56 = &kAPOdmlRerankingPttrArrayCountMismatch;
LABEL_16:
    objc_msgSend__handleError_(self, v55, *v56);
    v51 = 0;
    goto LABEL_17;
  }

  v38 = objc_msgSend_ident(self, v35, v36);
  if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v39 = v38;
    if (os_signpost_enabled(v37))
    {
      v42 = objc_msgSend_count(v4, v40, v41);
      v67 = 134283521;
      v68 = v42;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v37, OS_SIGNPOST_INTERVAL_END, v39, "Aggregated PTTR Prediction", "%{private}lu", &v67, 0xCu);
    }
  }

  v43 = [APOdmlExplorer alloc];
  v46 = objc_msgSend_assetManager(self, v44, v45);
  v48 = objc_msgSend_initWithRankableObjects_pttrArray_assetManager_(v43, v47, v4, v29, v46);

  v51 = objc_msgSend_explore(v48, v49, v50);

LABEL_17:
  v65 = *MEMORY[0x277D85DE8];

  return v51;
}

- (BOOL)sendRerankResponseIfAvailable:(id)a3 error:(id)a4
{
  v109 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = OdmlLogForCategory(5uLL);
  v11 = objc_msgSend_ident(self, v9, v10);
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v8))
    {
      *buf = 134283521;
      v108 = COERCE_DOUBLE(objc_msgSend_count(v6, v13, v14));
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v8, OS_SIGNPOST_INTERVAL_END, v12, "Overall reranking", "%{private}lu", buf, 0xCu);
    }
  }

  v17 = objc_msgSend_rerankResponseLock(self, v15, v16);
  objc_msgSend_lock(v17, v18, v19);
  v22 = objc_msgSend_rerankResponse(self, v20, v21);

  if (v22)
  {
    v25 = objc_msgSend_now(MEMORY[0x277CBEAA8], v23, v24);
    v28 = objc_msgSend_rerankingStartDate(self, v26, v27);
    objc_msgSend_timeIntervalSinceDate_(v25, v29, v28);
    v31 = v30;

    v34 = objc_msgSend_rerankResponse(self, v32, v33);
    v95 = v7;
    (v34)[2](v34, v6, v7);

    objc_msgSend_setRerankResponse_(self, v35, 0);
    v36 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v36, OS_LOG_TYPE_DEFAULT, "========== Reranking Summary ==========", buf, 2u);
    }

    v37 = MEMORY[0x277CBEB18];
    v40 = objc_msgSend_originalAds(self, v38, v39);
    v43 = objc_msgSend_count(v40, v41, v42);

    v96 = v6;
    v46 = objc_msgSend_count(v6, v44, v45);
    if (v43 <= v46)
    {
      objc_msgSend_arrayWithCapacity_(v37, v47, v46);
    }

    else
    {
      objc_msgSend_arrayWithCapacity_(v37, v47, v43);
    }

    v48 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v51 = objc_msgSend_originalAds(self, v49, v50);
    v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v101, v106, 16);
    if (v53)
    {
      v56 = v53;
      v57 = *v102;
      do
      {
        v58 = 0;
        do
        {
          if (*v102 != v57)
          {
            objc_enumerationMutation(v51);
          }

          v59 = MEMORY[0x277CCABB0];
          v60 = objc_msgSend_adamID(*(*(&v101 + 1) + 8 * v58), v54, v55);
          v63 = objc_msgSend_intValue(v60, v61, v62);
          v65 = objc_msgSend_numberWithInt_(v59, v64, v63);
          objc_msgSend_addObject_(*&v48, v66, v65);

          ++v58;
        }

        while (v56 != v58);
        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v54, &v101, v106, 16);
      }

      while (v56);
    }

    v67 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v108 = v48;
      _os_log_impl(&dword_260ECB000, v67, OS_LOG_TYPE_DEFAULT, "Original order: %@", buf, 0xCu);
    }

    objc_msgSend_removeAllObjects(*&v48, v68, v69);
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v70 = v96;
    v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v97, v105, 16);
    if (v72)
    {
      v75 = v72;
      v76 = *v98;
      do
      {
        v77 = 0;
        do
        {
          if (*v98 != v76)
          {
            objc_enumerationMutation(v70);
          }

          v78 = MEMORY[0x277CCABB0];
          v79 = objc_msgSend_adamID(*(*(&v97 + 1) + 8 * v77), v73, v74);
          v82 = objc_msgSend_intValue(v79, v80, v81);
          v84 = objc_msgSend_numberWithInt_(v78, v83, v82);
          objc_msgSend_addObject_(*&v48, v85, v84);

          ++v77;
        }

        while (v75 != v77);
        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v73, &v97, v105, 16);
      }

      while (v75);
    }

    v86 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v108 = v48;
      _os_log_impl(&dword_260ECB000, v86, OS_LOG_TYPE_DEFAULT, "Reranked order: %@", buf, 0xCu);
    }

    v87 = OdmlLogForCategory(5uLL);
    v7 = v95;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_description(v95, v88, v89);
      v90 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v108 = v90;
      _os_log_impl(&dword_260ECB000, v87, OS_LOG_TYPE_DEFAULT, "Reranking Error %@", buf, 0xCu);
    }

    v91 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v108 = v31 * 1000.0;
      _os_log_impl(&dword_260ECB000, v91, OS_LOG_TYPE_DEFAULT, "Reranking Duration %f ms", buf, 0xCu);
    }

    v92 = OdmlLogForCategory(5uLL);
    v6 = v96;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v92, OS_LOG_TYPE_DEFAULT, "=======================================", buf, 2u);
    }
  }

  objc_msgSend_unlock(v17, v23, v24);

  v93 = *MEMORY[0x277D85DE8];
  return v22 != 0;
}

- (void)_handleError:(int64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, @"APOdmlRerankingErrorDomain", a3, 0);
  objc_msgSend_setRerankerError_(self, v6, v5);

  v9 = objc_msgSend_rerankerError(self, v7, v8);
  v12 = objc_msgSend_originalAds(self, v10, v11);
  v14 = objc_msgSend_sendRerankResponseIfAvailable_error_(self, v13, v12, v9);

  if (v14)
  {
    v15 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v25 = 138412546;
      v26 = objc_opt_class();
      v27 = 2048;
      v28 = a3;
      v16 = v26;
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: %ld.", &v25, 0x16u);
    }

    v19 = objc_msgSend_rerankingStartDate(self, v17, v18);
    v22 = objc_msgSend_date(MEMORY[0x277CBEAA8], v20, v21);
    objc_msgSend_sendTimedEvent_statusSuccess_additionalDetails_startDate_endDate_(APOdmlAnalyticsReranking, v23, v9, 0, 0, v19, v22);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (OS_dispatch_queue)rerankSerialQueue
{
  if (qword_280CCF520 != -1)
  {
    sub_260EF812C();
  }

  v3 = qword_280CCF530;

  return v3;
}

+ (OS_dispatch_queue)rerankResponseTimeoutQueue
{
  if (qword_280CCF528 != -1)
  {
    sub_260EF8140();
  }

  v3 = qword_280CCF538;

  return v3;
}

@end
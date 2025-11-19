@interface VIAFeedbackSubmitter
- (VIAFeedbackSubmitter)initWithPARSession:(id)a3;
- (VIAnalyticsTestingDelegate)testingDelegate;
- (void)didHitCacheForQueryId:(unint64_t)a3;
- (void)reportFeedback:(id)a3 queryId:(int64_t)a4;
@end

@implementation VIAFeedbackSubmitter

- (VIAFeedbackSubmitter)initWithPARSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VIAFeedbackSubmitter;
  v6 = [(VIAFeedbackSubmitter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parSession, a3);
  }

  return v7;
}

- (void)reportFeedback:(id)a3 queryId:(int64_t)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v6 && (isKindOfClass & 1) != 0)
  {
    a4 = [v6 queryId];
  }

  [(PARSession *)self->_parSession reportFeedback:v6 queryId:a4];
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_testingDelegate);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 timestamp];
    v13 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v15;
    if (v15)
    {
      v78 = @"viewAppearEvent";
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "viewAppearEvent")}];
      v80 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v78 count:1];
LABEL_56:

      [v9 didLogEventName:v11 queryID:a4 timestamp:v12 metadata:v18];
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v17 = v20;
    v60 = v12;
    if (v20)
    {
      v21 = [(__CFString *)v20 suggestions];
      v22 = VICompactMapArray(v21, &__block_literal_global_1);

      v23 = [(__CFString *)v17 suggestions];
      v24 = VICompactMapArray(v23, &__block_literal_global_29);

      v78 = @"identifierList";
      v79 = @"topicIdentifier";
      v80 = v22;
      v81 = v24;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v78 count:2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v13;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      if (v26)
      {
        v59 = v13;
        v58 = v26;
        v27 = [(__CFString *)v26 suggestion];
        v78 = @"identifier";
        v28 = [(__CFString *)v27 identifier];
        v29 = v28;
        v30 = @"missing-identifier";
        if (v28)
        {
          v30 = v28;
        }

        v80 = v30;
        v79 = @"suggestion";
        v57 = v27;
        v31 = [(__CFString *)v27 suggestion];
        v32 = v31;
        v33 = @"missing-suggestion";
        if (v31)
        {
          v33 = v31;
        }

        v81 = v33;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v78 count:2];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = v13;
        }

        else
        {
          v34 = 0;
        }

        v24 = v34;
        if (!v24)
        {
          v22 = 0;
          v18 = MEMORY[0x1E695E0F8];
          v17 = 0;
          goto LABEL_55;
        }

        v58 = 0;
        v59 = v13;
        v53 = v11;
        v54 = v9;
        v55 = a4;
        v56 = v6;
        v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v57 = v24;
        obj = [(__CFString *)v24 sections];
        v35 = [obj countByEnumeratingWithState:&v71 objects:&v80 count:16];
        if (v35)
        {
          v36 = v35;
          v62 = *v72;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v72 != v62)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v71 + 1) + 8 * i);
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v39 = [v38 results];
              v40 = [v39 countByEnumeratingWithState:&v67 objects:&v78 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v68;
                do
                {
                  for (j = 0; j != v41; ++j)
                  {
                    if (*v68 != v42)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v44 = [*(*(&v67 + 1) + 8 * j) result];
                    v45 = [v44 fbr];

                    if (v45)
                    {
                      [v29 addObject:v45];
                    }
                  }

                  v41 = [v39 countByEnumeratingWithState:&v67 objects:&v78 count:16];
                }

                while (v41);
              }

              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v46 = [v38 section];
              v47 = [v46 results];

              v48 = [v47 countByEnumeratingWithState:&v63 objects:v77 count:16];
              if (v48)
              {
                v49 = v48;
                v50 = *v64;
                do
                {
                  for (k = 0; k != v49; ++k)
                  {
                    if (*v64 != v50)
                    {
                      objc_enumerationMutation(v47);
                    }

                    v52 = [*(*(&v63 + 1) + 8 * k) fbr];
                    if (v52)
                    {
                      [v29 addObject:v52];
                    }
                  }

                  v49 = [v47 countByEnumeratingWithState:&v63 objects:v77 count:16];
                }

                while (v49);
              }
            }

            v36 = [obj countByEnumeratingWithState:&v71 objects:&v80 count:16];
          }

          while (v36);
        }

        v75 = @"feedbackResponseList";
        v76 = v29;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        a4 = v55;
        v6 = v56;
        v11 = v53;
        v9 = v54;
      }

      v16 = 0;
      v13 = v59;
      v17 = 0;
      v24 = v57;
      v22 = v58;
    }

LABEL_55:

    v12 = v60;
    goto LABEL_56;
  }

LABEL_57:
}

- (void)didHitCacheForQueryId:(unint64_t)a3
{
  [(PARSession *)self->_parSession didSkipSearch:4 forInput:0 queryId:a3];
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_testingDelegate);
    [v6 didLogEventName:@"SFSkipSearchFeedback" queryID:a3 timestamp:mach_absolute_time() metadata:MEMORY[0x1E695E0F8]];
  }
}

- (VIAnalyticsTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

@end
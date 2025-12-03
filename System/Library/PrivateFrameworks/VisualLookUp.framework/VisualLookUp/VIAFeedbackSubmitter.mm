@interface VIAFeedbackSubmitter
- (VIAFeedbackSubmitter)initWithPARSession:(id)session;
- (VIAnalyticsTestingDelegate)testingDelegate;
- (void)didHitCacheForQueryId:(unint64_t)id;
- (void)reportFeedback:(id)feedback queryId:(int64_t)id;
@end

@implementation VIAFeedbackSubmitter

- (VIAFeedbackSubmitter)initWithPARSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = VIAFeedbackSubmitter;
  v6 = [(VIAFeedbackSubmitter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parSession, session);
  }

  return v7;
}

- (void)reportFeedback:(id)feedback queryId:(int64_t)id
{
  v82 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (feedbackCopy && (isKindOfClass & 1) != 0)
  {
    id = [feedbackCopy queryId];
  }

  [(PARSession *)self->_parSession reportFeedback:feedbackCopy queryId:id];
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_testingDelegate);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    timestamp = [feedbackCopy timestamp];
    v13 = feedbackCopy;
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

      [v9 didLogEventName:v11 queryID:id timestamp:timestamp metadata:v18];
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
    v60 = timestamp;
    if (v20)
    {
      suggestions = [(__CFString *)v20 suggestions];
      v22 = VICompactMapArray(suggestions, &__block_literal_global_1);

      suggestions2 = [(__CFString *)v17 suggestions];
      v24 = VICompactMapArray(suggestions2, &__block_literal_global_29);

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
        suggestion = [(__CFString *)v26 suggestion];
        v78 = @"identifier";
        identifier = [(__CFString *)suggestion identifier];
        v29 = identifier;
        v30 = @"missing-identifier";
        if (identifier)
        {
          v30 = identifier;
        }

        v80 = v30;
        v79 = @"suggestion";
        v57 = suggestion;
        v27Suggestion = [(__CFString *)suggestion suggestion];
        v32 = v27Suggestion;
        v33 = @"missing-suggestion";
        if (v27Suggestion)
        {
          v33 = v27Suggestion;
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
        idCopy = id;
        v56 = feedbackCopy;
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
              results = [v38 results];
              v40 = [results countByEnumeratingWithState:&v67 objects:&v78 count:16];
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
                      objc_enumerationMutation(results);
                    }

                    result = [*(*(&v67 + 1) + 8 * j) result];
                    v45 = [result fbr];

                    if (v45)
                    {
                      [v29 addObject:v45];
                    }
                  }

                  v41 = [results countByEnumeratingWithState:&v67 objects:&v78 count:16];
                }

                while (v41);
              }

              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              section = [v38 section];
              results2 = [section results];

              v48 = [results2 countByEnumeratingWithState:&v63 objects:v77 count:16];
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
                      objc_enumerationMutation(results2);
                    }

                    v52 = [*(*(&v63 + 1) + 8 * k) fbr];
                    if (v52)
                    {
                      [v29 addObject:v52];
                    }
                  }

                  v49 = [results2 countByEnumeratingWithState:&v63 objects:v77 count:16];
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
        id = idCopy;
        feedbackCopy = v56;
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

    timestamp = v60;
    goto LABEL_56;
  }

LABEL_57:
}

- (void)didHitCacheForQueryId:(unint64_t)id
{
  [(PARSession *)self->_parSession didSkipSearch:4 forInput:0 queryId:id];
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_testingDelegate);
    [v6 didLogEventName:@"SFSkipSearchFeedback" queryID:id timestamp:mach_absolute_time() metadata:MEMORY[0x1E695E0F8]];
  }
}

- (VIAnalyticsTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

@end
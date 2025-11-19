@interface _PSCNAutocompleteFeedbackSessionAccumulator
+ (id)parseSubmodel:(id)a3;
- (_PSCNAutocompleteFeedbackSessionAccumulator)init;
- (void)updateWithFeedback:(id)a3;
- (void)updateWithInteraction:(id)a3;
- (void)updateWithTappedSuggestion:(id)a3;
- (void)updateWithVendedSuggestions:(id)a3 reportTime:(id)a4;
@end

@implementation _PSCNAutocompleteFeedbackSessionAccumulator

+ (id)parseSubmodel:(id)a3
{
  v3 = a3;
  v4 = [v3 reason];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 reason];
    v7 = [v5 stringWithString:v6];
  }

  else
  {
    v7 = @"Unknown";
  }

  return v7;
}

- (_PSCNAutocompleteFeedbackSessionAccumulator)init
{
  v12.receiver = self;
  v12.super_class = _PSCNAutocompleteFeedbackSessionAccumulator;
  v2 = [(_PSCNAutocompleteFeedbackSessionAccumulator *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    vendedSuggestionEvents = v2->_vendedSuggestionEvents;
    v2->_vendedSuggestionEvents = v3;

    v5 = objc_opt_new();
    metricsForImpressions = v2->_metricsForImpressions;
    v2->_metricsForImpressions = v5;

    v7 = objc_opt_new();
    metricsForSubmodelImpressions = v2->_metricsForSubmodelImpressions;
    v2->_metricsForSubmodelImpressions = v7;

    v9 = objc_opt_new();
    metricsForAction = v2->_metricsForAction;
    v2->_metricsForAction = v9;
  }

  return v2;
}

- (void)updateWithInteraction:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 sender];
  v7 = [v6 identifier];

  if (v7)
  {
    v8 = [v4 sender];
    v9 = [v8 identifier];
    [v5 addObject:v9];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v54 = v4;
  v10 = [v4 recipients];
  v11 = [v10 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v69;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v69 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v68 + 1) + 8 * i);
        v16 = [v15 identifier];

        if (v16)
        {
          v17 = [v15 identifier];
          [v5 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v12);
  }

  if ([(NSMutableArray *)self->_vendedSuggestionEvents count])
  {
    v18 = 0;
    v59 = self;
    do
    {
      v56 = v18;
      v19 = [(NSMutableArray *)self->_vendedSuggestionEvents objectAtIndexedSubscript:v18];
      v20 = [v19 vendedSuggestions];
      v21 = [v20 suggestions];

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = v21;
      v58 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
      if (v58)
      {
        v57 = *v65;
        v22 = 1;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v65 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v64 + 1) + 8 * j);
            v25 = [objc_opt_class() parseSubmodel:v24];
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v26 = [v24 recipients];
            v27 = [v26 countByEnumeratingWithState:&v60 objects:v72 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v61;
              while (2)
              {
                for (k = 0; k != v28; ++k)
                {
                  if (*v61 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = [*(*(&v60 + 1) + 8 * k) handle];
                  v32 = [v5 containsObject:v31];

                  if (v32)
                  {
                    v33 = [(NSMutableArray *)v59->_metricsForImpressions objectAtIndexedSubscript:v56];
                    [v33 setCountUsed:{objc_msgSend(v33, "countUsed") + 1}];

                    v34 = [(NSMutableArray *)v59->_metricsForImpressions objectAtIndexedSubscript:v56];
                    [v34 setTotalRankUsed:{objc_msgSend(v34, "totalRankUsed") + v22}];

                    v35 = [(NSMutableArray *)v59->_metricsForImpressions objectAtIndexedSubscript:v56];
                    [v35 setHighestRankUsed:v22];

                    v36 = [(NSMutableArray *)v59->_metricsForImpressions objectAtIndexedSubscript:v56];
                    v37 = [v36 lowestRankUsed];
                    if (v37)
                    {
                      v38 = v37;
                    }

                    else
                    {
                      v38 = v22;
                    }

                    v39 = [(NSMutableArray *)v59->_metricsForImpressions objectAtIndexedSubscript:v56];
                    [v39 setLowestRankUsed:v38];

                    v40 = [(NSMutableArray *)v59->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v41 = [v40 objectForKeyedSubscript:v25];
                    [v41 setCountUsed:{objc_msgSend(v41, "countUsed") + 1}];

                    v42 = [(NSMutableArray *)v59->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v43 = [v42 objectForKeyedSubscript:v25];
                    [v43 setTotalRankUsed:{objc_msgSend(v43, "totalRankUsed") + v22}];

                    v44 = [(NSMutableArray *)v59->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v45 = [v44 objectForKeyedSubscript:v25];
                    [v45 setHighestRankUsed:v22];

                    v46 = [(NSMutableArray *)v59->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v47 = [v46 objectForKeyedSubscript:v25];
                    v48 = [v47 lowestRankUsed];
                    if (v48)
                    {
                      v49 = v48;
                    }

                    else
                    {
                      v49 = v22;
                    }

                    v50 = [(NSMutableArray *)v59->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v51 = [v50 objectForKeyedSubscript:v25];
                    [v51 setLowestRankUsed:v49];

                    [(_PSCNAutocompleteFeedbackActionStatistics *)v59->_metricsForAction setCountUsedSuggestions:[(_PSCNAutocompleteFeedbackActionStatistics *)v59->_metricsForAction countUsedSuggestions]+ 1];
                    goto LABEL_35;
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v60 objects:v72 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

LABEL_35:

            ++v22;
            self = v59;
          }

          v58 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
        }

        while (v58);
      }

      v18 = v56 + 1;
    }

    while (v56 + 1 < [(NSMutableArray *)self->_vendedSuggestionEvents count]);
  }

  interaction = self->_interaction;
  self->_interaction = v54;

  v53 = *MEMORY[0x1E69E9840];
}

- (void)updateWithFeedback:(id)a3
{
  v9 = a3;
  if ([v9 feedbackType] == 3)
  {
    v4 = [v9 tappedSuggestion];
    v5 = [v4 suggestion];
    [(_PSCNAutocompleteFeedbackSessionAccumulator *)self updateWithTappedSuggestion:v5];
  }

  else if ([v9 feedbackType] == 2)
  {
    v6 = [v9 vendedSuggestions];
    v7 = [v6 suggestions];
    v8 = [v9 reportTime];
    [(_PSCNAutocompleteFeedbackSessionAccumulator *)self updateWithVendedSuggestions:v7 reportTime:v8];

    [(NSMutableArray *)self->_vendedSuggestionEvents addObject:v9];
  }
}

- (void)updateWithTappedSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_vendedSuggestionEvents lastObject];
  v6 = [v5 vendedSuggestions];
  v7 = [v6 suggestions];

  if (!v7)
  {
    v12 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_PSCNAutocompleteFeedbackSessionAccumulator updateWithTappedSuggestion:v12];
    }

    goto LABEL_7;
  }

  v8 = [(NSMutableArray *)self->_vendedSuggestionEvents lastObject];
  v9 = [v8 vendedSuggestions];
  v10 = [v9 suggestions];
  v11 = [v10 indexOfObject:v4];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_PSCNAutocompleteFeedbackSessionAccumulator updateWithTappedSuggestion:v12];
    }

LABEL_7:

    goto LABEL_15;
  }

  v13 = [objc_opt_class() parseSubmodel:v4];
  v14 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  [v14 setCountTapped:{objc_msgSend(v14, "countTapped") + 1}];

  v15 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  [v15 setTotalRankTapped:{objc_msgSend(v15, "totalRankTapped") + v11 + 1}];

  v16 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  [v16 setHighestRankTapped:v11 + 1];

  v17 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  v18 = [v17 lowestRankTapped];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v11 + 1;
  }

  v20 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  [v20 setLowestRankTapped:v19];

  v21 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v22 = [v21 objectForKeyedSubscript:v13];
  [v22 setCountTapped:{objc_msgSend(v22, "countTapped") + 1}];

  v23 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v24 = [v23 objectForKeyedSubscript:v13];
  [v24 setTotalRankTapped:{objc_msgSend(v24, "totalRankTapped") + v11 + 1}];

  v25 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v26 = [v25 objectForKeyedSubscript:v13];
  [v26 setHighestRankTapped:v11 + 1];

  v27 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v28 = [v27 objectForKeyedSubscript:v13];
  v29 = [v28 lowestRankTapped];
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v11 + 1;
  }

  v31 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v32 = [v31 objectForKeyedSubscript:v13];
  [v32 setLowestRankTapped:v30];

  [(_PSCNAutocompleteFeedbackActionStatistics *)self->_metricsForAction setCountTappedSuggestions:[(_PSCNAutocompleteFeedbackActionStatistics *)self->_metricsForAction countTappedSuggestions]+ 1];
LABEL_15:
}

- (void)updateWithVendedSuggestions:(id)a3 reportTime:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [objc_opt_class() parseSubmodel:{*(*(&v18 + 1) + 8 * v11), v18}];
        v13 = [v6 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v14 = objc_opt_new();
          [v6 setObject:v14 forKeyedSubscript:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  metricsForImpressions = self->_metricsForImpressions;
  v16 = objc_opt_new();
  [(NSMutableArray *)metricsForImpressions addObject:v16];

  [(NSMutableArray *)self->_metricsForSubmodelImpressions addObject:v6];
  v17 = *MEMORY[0x1E69E9840];
}

@end
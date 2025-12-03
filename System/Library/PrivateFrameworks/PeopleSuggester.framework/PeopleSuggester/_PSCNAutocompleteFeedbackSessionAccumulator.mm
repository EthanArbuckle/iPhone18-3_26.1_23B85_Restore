@interface _PSCNAutocompleteFeedbackSessionAccumulator
+ (id)parseSubmodel:(id)submodel;
- (_PSCNAutocompleteFeedbackSessionAccumulator)init;
- (void)updateWithFeedback:(id)feedback;
- (void)updateWithInteraction:(id)interaction;
- (void)updateWithTappedSuggestion:(id)suggestion;
- (void)updateWithVendedSuggestions:(id)suggestions reportTime:(id)time;
@end

@implementation _PSCNAutocompleteFeedbackSessionAccumulator

+ (id)parseSubmodel:(id)submodel
{
  submodelCopy = submodel;
  reason = [submodelCopy reason];

  if (reason)
  {
    v5 = MEMORY[0x1E696AEC0];
    reason2 = [submodelCopy reason];
    v7 = [v5 stringWithString:reason2];
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

- (void)updateWithInteraction:(id)interaction
{
  v75 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  v5 = objc_opt_new();
  sender = [interactionCopy sender];
  identifier = [sender identifier];

  if (identifier)
  {
    sender2 = [interactionCopy sender];
    identifier2 = [sender2 identifier];
    [v5 addObject:identifier2];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v54 = interactionCopy;
  recipients = [interactionCopy recipients];
  v11 = [recipients countByEnumeratingWithState:&v68 objects:v74 count:16];
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
          objc_enumerationMutation(recipients);
        }

        v15 = *(*(&v68 + 1) + 8 * i);
        identifier3 = [v15 identifier];

        if (identifier3)
        {
          identifier4 = [v15 identifier];
          [v5 addObject:identifier4];
        }
      }

      v12 = [recipients countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v12);
  }

  if ([(NSMutableArray *)self->_vendedSuggestionEvents count])
  {
    v18 = 0;
    selfCopy = self;
    do
    {
      v56 = v18;
      v19 = [(NSMutableArray *)self->_vendedSuggestionEvents objectAtIndexedSubscript:v18];
      vendedSuggestions = [v19 vendedSuggestions];
      suggestions = [vendedSuggestions suggestions];

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = suggestions;
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
            recipients2 = [v24 recipients];
            v27 = [recipients2 countByEnumeratingWithState:&v60 objects:v72 count:16];
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
                    objc_enumerationMutation(recipients2);
                  }

                  handle = [*(*(&v60 + 1) + 8 * k) handle];
                  v32 = [v5 containsObject:handle];

                  if (v32)
                  {
                    v33 = [(NSMutableArray *)selfCopy->_metricsForImpressions objectAtIndexedSubscript:v56];
                    [v33 setCountUsed:{objc_msgSend(v33, "countUsed") + 1}];

                    v34 = [(NSMutableArray *)selfCopy->_metricsForImpressions objectAtIndexedSubscript:v56];
                    [v34 setTotalRankUsed:{objc_msgSend(v34, "totalRankUsed") + v22}];

                    v35 = [(NSMutableArray *)selfCopy->_metricsForImpressions objectAtIndexedSubscript:v56];
                    [v35 setHighestRankUsed:v22];

                    v36 = [(NSMutableArray *)selfCopy->_metricsForImpressions objectAtIndexedSubscript:v56];
                    lowestRankUsed = [v36 lowestRankUsed];
                    if (lowestRankUsed)
                    {
                      v38 = lowestRankUsed;
                    }

                    else
                    {
                      v38 = v22;
                    }

                    v39 = [(NSMutableArray *)selfCopy->_metricsForImpressions objectAtIndexedSubscript:v56];
                    [v39 setLowestRankUsed:v38];

                    v40 = [(NSMutableArray *)selfCopy->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v41 = [v40 objectForKeyedSubscript:v25];
                    [v41 setCountUsed:{objc_msgSend(v41, "countUsed") + 1}];

                    v42 = [(NSMutableArray *)selfCopy->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v43 = [v42 objectForKeyedSubscript:v25];
                    [v43 setTotalRankUsed:{objc_msgSend(v43, "totalRankUsed") + v22}];

                    v44 = [(NSMutableArray *)selfCopy->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v45 = [v44 objectForKeyedSubscript:v25];
                    [v45 setHighestRankUsed:v22];

                    v46 = [(NSMutableArray *)selfCopy->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v47 = [v46 objectForKeyedSubscript:v25];
                    lowestRankUsed2 = [v47 lowestRankUsed];
                    if (lowestRankUsed2)
                    {
                      v49 = lowestRankUsed2;
                    }

                    else
                    {
                      v49 = v22;
                    }

                    v50 = [(NSMutableArray *)selfCopy->_metricsForSubmodelImpressions objectAtIndexedSubscript:v56];
                    v51 = [v50 objectForKeyedSubscript:v25];
                    [v51 setLowestRankUsed:v49];

                    [(_PSCNAutocompleteFeedbackActionStatistics *)selfCopy->_metricsForAction setCountUsedSuggestions:[(_PSCNAutocompleteFeedbackActionStatistics *)selfCopy->_metricsForAction countUsedSuggestions]+ 1];
                    goto LABEL_35;
                  }
                }

                v28 = [recipients2 countByEnumeratingWithState:&v60 objects:v72 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

LABEL_35:

            ++v22;
            self = selfCopy;
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

- (void)updateWithFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if ([feedbackCopy feedbackType] == 3)
  {
    tappedSuggestion = [feedbackCopy tappedSuggestion];
    suggestion = [tappedSuggestion suggestion];
    [(_PSCNAutocompleteFeedbackSessionAccumulator *)self updateWithTappedSuggestion:suggestion];
  }

  else if ([feedbackCopy feedbackType] == 2)
  {
    vendedSuggestions = [feedbackCopy vendedSuggestions];
    suggestions = [vendedSuggestions suggestions];
    reportTime = [feedbackCopy reportTime];
    [(_PSCNAutocompleteFeedbackSessionAccumulator *)self updateWithVendedSuggestions:suggestions reportTime:reportTime];

    [(NSMutableArray *)self->_vendedSuggestionEvents addObject:feedbackCopy];
  }
}

- (void)updateWithTappedSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  lastObject = [(NSMutableArray *)self->_vendedSuggestionEvents lastObject];
  vendedSuggestions = [lastObject vendedSuggestions];
  suggestions = [vendedSuggestions suggestions];

  if (!suggestions)
  {
    v12 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_PSCNAutocompleteFeedbackSessionAccumulator updateWithTappedSuggestion:v12];
    }

    goto LABEL_7;
  }

  lastObject2 = [(NSMutableArray *)self->_vendedSuggestionEvents lastObject];
  vendedSuggestions2 = [lastObject2 vendedSuggestions];
  suggestions2 = [vendedSuggestions2 suggestions];
  v11 = [suggestions2 indexOfObject:suggestionCopy];

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

  v13 = [objc_opt_class() parseSubmodel:suggestionCopy];
  lastObject3 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  [lastObject3 setCountTapped:{objc_msgSend(lastObject3, "countTapped") + 1}];

  lastObject4 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  [lastObject4 setTotalRankTapped:{objc_msgSend(lastObject4, "totalRankTapped") + v11 + 1}];

  lastObject5 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  [lastObject5 setHighestRankTapped:v11 + 1];

  lastObject6 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  lowestRankTapped = [lastObject6 lowestRankTapped];
  if (lowestRankTapped)
  {
    v19 = lowestRankTapped;
  }

  else
  {
    v19 = v11 + 1;
  }

  lastObject7 = [(NSMutableArray *)self->_metricsForImpressions lastObject];
  [lastObject7 setLowestRankTapped:v19];

  lastObject8 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v22 = [lastObject8 objectForKeyedSubscript:v13];
  [v22 setCountTapped:{objc_msgSend(v22, "countTapped") + 1}];

  lastObject9 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v24 = [lastObject9 objectForKeyedSubscript:v13];
  [v24 setTotalRankTapped:{objc_msgSend(v24, "totalRankTapped") + v11 + 1}];

  lastObject10 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v26 = [lastObject10 objectForKeyedSubscript:v13];
  [v26 setHighestRankTapped:v11 + 1];

  lastObject11 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v28 = [lastObject11 objectForKeyedSubscript:v13];
  lowestRankTapped2 = [v28 lowestRankTapped];
  if (lowestRankTapped2)
  {
    v30 = lowestRankTapped2;
  }

  else
  {
    v30 = v11 + 1;
  }

  lastObject12 = [(NSMutableArray *)self->_metricsForSubmodelImpressions lastObject];
  v32 = [lastObject12 objectForKeyedSubscript:v13];
  [v32 setLowestRankTapped:v30];

  [(_PSCNAutocompleteFeedbackActionStatistics *)self->_metricsForAction setCountTappedSuggestions:[(_PSCNAutocompleteFeedbackActionStatistics *)self->_metricsForAction countTappedSuggestions]+ 1];
LABEL_15:
}

- (void)updateWithVendedSuggestions:(id)suggestions reportTime:(id)time
{
  v23 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = suggestionsCopy;
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
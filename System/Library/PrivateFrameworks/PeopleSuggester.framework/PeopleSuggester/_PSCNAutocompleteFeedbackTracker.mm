@interface _PSCNAutocompleteFeedbackTracker
- (_PSCNAutocompleteFeedbackTracker)initWithInteractionIterator:(id)a3 maxSecondsBetweenImpressionAndAction:(int64_t)a4 shouldInferEnterAndExit:(BOOL)a5 impressionLogger:(id)a6 submodelImpressionLogger:(id)a7 actionLogger:(id)a8 defaultForIsImplicit:(BOOL)a9;
- (void)annotateAction:(id)a3 withStatistics:(id)a4;
- (void)annotateImpression:(id)a3 withStatistics:(id)a4;
- (void)finish;
- (void)finishWithInferredEnterAndExit;
- (void)logActionFromAccumulator:(id)a3;
- (void)logImpressionsFromAccumulator:(id)a3;
- (void)processFeedback:(id)a3;
- (void)processFeedbackWithInferredEnterAndExit:(id)a3;
@end

@implementation _PSCNAutocompleteFeedbackTracker

- (_PSCNAutocompleteFeedbackTracker)initWithInteractionIterator:(id)a3 maxSecondsBetweenImpressionAndAction:(int64_t)a4 shouldInferEnterAndExit:(BOOL)a5 impressionLogger:(id)a6 submodelImpressionLogger:(id)a7 actionLogger:(id)a8 defaultForIsImplicit:(BOOL)a9
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v31.receiver = self;
  v31.super_class = _PSCNAutocompleteFeedbackTracker;
  v20 = [(_PSCNAutocompleteFeedbackTracker *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_interactionIterator, a3);
    v21->_maxSecondsBetweenImpressionAndAction = a4;
    v21->_shouldInferEnterAndExit = a5;
    v22 = MEMORY[0x1B8C8C060](v17);
    impressionLogger = v21->_impressionLogger;
    v21->_impressionLogger = v22;

    v24 = MEMORY[0x1B8C8C060](v18);
    submodelImpressionLogger = v21->_submodelImpressionLogger;
    v21->_submodelImpressionLogger = v24;

    v26 = MEMORY[0x1B8C8C060](v19);
    actionLogger = v21->_actionLogger;
    v21->_actionLogger = v26;

    v21->_defaultForIsImplicit = a9;
    v28 = objc_opt_new();
    dateFormatter = v21->_dateFormatter;
    v21->_dateFormatter = v28;

    [(NSDateFormatter *)v21->_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
  }

  return v21;
}

- (void)annotateImpression:(id)a3 withStatistics:(id)a4
{
  v22 = a3;
  v5 = a4;
  v6 = MEMORY[0x1E696AD98];
  v7 = [v5 countTapped];
  v8 = 0.0;
  v9 = 0.0;
  if (v7 >= 1)
  {
    v10 = [v5 totalRankTapped];
    v9 = v10 / [v5 countTapped];
  }

  v11 = [v6 numberWithDouble:v9];
  [v22 setObject:v11 forKeyedSubscript:@"avgRankTapped"];

  v12 = MEMORY[0x1E696AD98];
  if ([v5 countUsed] >= 1)
  {
    v13 = [v5 totalRankUsed];
    v8 = v13 / [v5 countUsed];
  }

  v14 = [v12 numberWithDouble:v8];
  [v22 setObject:v14 forKeyedSubscript:@"avgRankUsed"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "countTapped")}];
  [v22 setObject:v15 forKeyedSubscript:@"countTapped"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "countUsed")}];
  [v22 setObject:v16 forKeyedSubscript:@"countUsed"];

  v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "countUsed") > 0}];
  [v22 setObject:v17 forKeyedSubscript:@"ledToAction"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "highestRankTapped")}];
  [v22 setObject:v18 forKeyedSubscript:@"highestRankTapped"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "highestRankUsed")}];
  [v22 setObject:v19 forKeyedSubscript:@"highestRankUsed"];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "lowestRankTapped")}];
  [v22 setObject:v20 forKeyedSubscript:@"lowestRankTapped"];

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "lowestRankUsed")}];
  [v22 setObject:v21 forKeyedSubscript:@"lowestRankUsed"];
}

- (void)logImpressionsFromAccumulator:(id)a3
{
  v4 = a3;
  v5 = [v4 vendedSuggestionEvents];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 vendedSuggestionEvents];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      v26 = v4;
      do
      {
        v28 = objc_opt_class();
        v33 = [v4 vendedSuggestionEvents];
        v32 = [v33 objectAtIndexedSubscript:v9];
        v27 = [v32 vendedSuggestions];
        v31 = [v4 vendedSuggestionEvents];
        v30 = [v31 objectAtIndexedSubscript:v9];
        v10 = [v30 bundleIdentifier];
        v11 = [v4 vendedSuggestionEvents];
        v12 = [v11 objectAtIndexedSubscript:v9];
        v13 = [v12 vendedSuggestions];
        v14 = [v13 suggestions];
        v15 = [v14 firstObject];
        v16 = [v15 trialID];
        v17 = [v28 defaultImpressionWithFeedback:v27 bundleID:v10 trialID:v16 isImplicit:self->_defaultForIsImplicit];
        v29 = [v17 mutableCopy];

        v4 = v26;
        v18 = [v26 metricsForImpressions];
        v19 = [v18 objectAtIndexedSubscript:v9];
        [(_PSCNAutocompleteFeedbackTracker *)self annotateImpression:v29 withStatistics:v19];

        (*(self->_impressionLogger + 2))();
        v20 = [v26 metricsForSubmodelImpressions];
        v21 = [v20 objectAtIndexedSubscript:v9];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __66___PSCNAutocompleteFeedbackTracker_logImpressionsFromAccumulator___block_invoke;
        v34[3] = &unk_1E7C26AF8;
        v34[4] = self;
        v22 = v26;
        v35 = v22;
        v36 = v9;
        [v21 enumerateKeysAndObjectsUsingBlock:v34];

        ++v9;
        v23 = [v22 vendedSuggestionEvents];
        v24 = [v23 count];
      }

      while (v9 < v24);
    }
  }

  else
  {
    v25 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [_PSCNAutocompleteFeedbackTracker logImpressionsFromAccumulator:v25];
    }
  }
}

- (void)annotateAction:(id)a3 withStatistics:(id)a4
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a4;
  v7 = a3;
  v8 = [v5 numberWithInteger:{objc_msgSend(v6, "countTappedSuggestions")}];
  [v7 setObject:v8 forKeyedSubscript:@"countTappedSuggestions"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "countTimesVendedSuggestions")}];
  [v7 setObject:v9 forKeyedSubscript:@"countTimesVendedSuggestions"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "countUsedSuggestions")}];
  [v7 setObject:v10 forKeyedSubscript:@"countUsedSuggestions"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "countVendedSuggestions")}];
  [v7 setObject:v11 forKeyedSubscript:@"countVendedSuggestions"];

  v12 = MEMORY[0x1E696AD98];
  v13 = [v6 countUsedSuggestions];

  v14 = [v12 numberWithInt:v13 > 0];
  [v7 setObject:v14 forKeyedSubscript:@"usedSuggestions"];
}

- (void)logActionFromAccumulator:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 interaction];
  v7 = [v4 vendedSuggestionEvents];
  v8 = [v7 lastObject];
  v9 = [v8 vendedSuggestions];
  v10 = [v9 suggestions];
  v11 = [v10 firstObject];
  v12 = [v11 trialID];
  v13 = [v5 defaultActionWithInteraction:v6 trialID:v12 isImplicit:self->_defaultForIsImplicit];
  v15 = [v13 mutableCopy];

  v14 = [v4 metricsForAction];

  [(_PSCNAutocompleteFeedbackTracker *)self annotateAction:v15 withStatistics:v14];
  (*(self->_actionLogger + 2))();
}

- (void)processFeedback:(id)a3
{
  if (self->_shouldInferEnterAndExit)
  {
    [(_PSCNAutocompleteFeedbackTracker *)self processFeedbackWithInferredEnterAndExit:a3];
  }

  else
  {
    [(_PSCNAutocompleteFeedbackTracker *)self processFeedbackWithoutInferredEnterAndExit:a3];
  }
}

- (void)processFeedbackWithInferredEnterAndExit:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_stopTime)
  {
    v6 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_PSCNAutocompleteFeedbackTracker processFeedbackWithInferredEnterAndExit:v6];
    }

LABEL_8:

    goto LABEL_9;
  }

  if (![v4 feedbackType] || objc_msgSend(v5, "feedbackType") == 1)
  {
    v6 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_PSCNAutocompleteFeedbackTracker processFeedbackWithInferredEnterAndExit:v6];
    }

    goto LABEL_8;
  }

  objc_storeStrong(&self->_followingInteractionPrevious, self->_followingInteraction);
  interactionIterator = self->_interactionIterator;
  v9 = [v5 reportTime];
  v10 = [(_PSCNAutocompleteFeedbackInteractionIterator *)interactionIterator fastForwardToDate:v9];
  followingInteraction = self->_followingInteraction;
  self->_followingInteraction = v10;

  if (self->_accumulator)
  {
    if (self->_followingInteraction == self->_followingInteractionPrevious || !self->_inActionWindow)
    {
      if ([v5 feedbackType] == 2 && !self->_inActionWindow)
      {
        v14 = +[_PSLogging feedbackChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackTracker: Session Ended - received next vended suggestions event.", &v39, 2u);
        }

        [(_PSCNAutocompleteFeedbackTracker *)self logImpressionsFromAccumulator:self->_accumulator];
        accumulator = self->_accumulator;
        self->_accumulator = 0;
      }
    }

    else
    {
      v12 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackTracker: Session Ended - moved past previous interaction (action).", &v39, 2u);
      }

      [(_PSCNAutocompleteFeedbackSessionAccumulator *)self->_accumulator updateWithInteraction:self->_followingInteractionPrevious];
      [(_PSCNAutocompleteFeedbackTracker *)self logImpressionsFromAccumulator:self->_accumulator];
      [(_PSCNAutocompleteFeedbackTracker *)self logActionFromAccumulator:self->_accumulator];
      v13 = self->_accumulator;
      self->_accumulator = 0;

      self->_inActionWindow = 0;
    }
  }

  v16 = self->_followingInteraction;
  v17 = +[_PSLogging feedbackChannel];
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      dateFormatter = self->_dateFormatter;
      v20 = [v5 reportTime];
      v21 = [(NSDateFormatter *)dateFormatter stringFromDate:v20];
      v22 = [v5 userIdentifier];
      v23 = [v5 bundleIdentifier];
      v24 = [v5 sourceBundleIdentifier];
      if ([v5 isImplicit])
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v26 = [v5 feedbackType];
      v39 = 138413570;
      v40 = v21;
      v41 = 2112;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      v45 = 2112;
      v46 = v24;
      v47 = 2112;
      v48 = v25;
      v49 = 2048;
      v50 = v26;
      _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackTracker: Processing event reported on %@ for user %@, for %@, reported by %@, implicit=%@, of type %lu.", &v39, 0x3Eu);
    }

    if (!self->_accumulator && [v5 feedbackType] == 2)
    {
      v27 = [(_CDInteraction *)self->_followingInteraction startDate];
      v28 = [v5 reportTime];
      [v27 timeIntervalSinceDate:v28];
      v30 = v29;
      maxSecondsBetweenImpressionAndAction = self->_maxSecondsBetweenImpressionAndAction;

      v32 = +[_PSLogging feedbackChannel];
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v30 <= maxSecondsBetweenImpressionAndAction)
      {
        if (v33)
        {
          v36 = self->_maxSecondsBetweenImpressionAndAction;
          v39 = 134217984;
          v40 = v36;
          _os_log_impl(&dword_1B5ED1000, v32, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackTracker: Session Started - within %ld seconds of next interaction (action).", &v39, 0xCu);
        }

        self->_inActionWindow = 1;
      }

      else
      {
        if (v33)
        {
          LOWORD(v39) = 0;
          _os_log_impl(&dword_1B5ED1000, v32, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackTracker: Session Started - received vended suggestions event too far away from interaction (action).", &v39, 2u);
        }
      }

      v37 = objc_opt_new();
      v38 = self->_accumulator;
      self->_accumulator = v37;
    }

    [(_PSCNAutocompleteFeedbackSessionAccumulator *)self->_accumulator updateWithFeedback:v5];
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(_PSCNAutocompleteFeedbackTracker *)self processFeedbackWithInferredEnterAndExit:v5];
    }

    v34 = [v5 reportTime];
    stopTime = self->_stopTime;
    self->_stopTime = v34;
  }

LABEL_9:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)finish
{
  if (self->_shouldInferEnterAndExit)
  {
    [(_PSCNAutocompleteFeedbackTracker *)self finishWithInferredEnterAndExit];
  }

  else
  {
    [(_PSCNAutocompleteFeedbackTracker *)self finishWithoutInferredEnterAndExit];
  }
}

- (void)finishWithInferredEnterAndExit
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  v2 = [*(a1 + 80) startDate];
  v3 = [v1 stringFromDate:v2];
  OUTLINED_FUNCTION_0_8(&dword_1B5ED1000, v4, v5, "_PSCNAutocompleteFeedbackTracker: Finished iterating through feedback events. Setting stop time to %@.", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)processFeedbackWithInferredEnterAndExit:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = [a2 reportTime];
  v4 = [v2 stringFromDate:v3];
  OUTLINED_FUNCTION_0_8(&dword_1B5ED1000, v5, v6, "_PSCNAutocompleteFeedbackTracker: Interaction (action) iterator exhausted. Setting stop time to %@.", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end
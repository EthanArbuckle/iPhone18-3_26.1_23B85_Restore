@interface _PSCNAutocompleteFeedbackTracker
- (_PSCNAutocompleteFeedbackTracker)initWithInteractionIterator:(id)iterator maxSecondsBetweenImpressionAndAction:(int64_t)action shouldInferEnterAndExit:(BOOL)exit impressionLogger:(id)logger submodelImpressionLogger:(id)impressionLogger actionLogger:(id)actionLogger defaultForIsImplicit:(BOOL)implicit;
- (void)annotateAction:(id)action withStatistics:(id)statistics;
- (void)annotateImpression:(id)impression withStatistics:(id)statistics;
- (void)finish;
- (void)finishWithInferredEnterAndExit;
- (void)logActionFromAccumulator:(id)accumulator;
- (void)logImpressionsFromAccumulator:(id)accumulator;
- (void)processFeedback:(id)feedback;
- (void)processFeedbackWithInferredEnterAndExit:(id)exit;
@end

@implementation _PSCNAutocompleteFeedbackTracker

- (_PSCNAutocompleteFeedbackTracker)initWithInteractionIterator:(id)iterator maxSecondsBetweenImpressionAndAction:(int64_t)action shouldInferEnterAndExit:(BOOL)exit impressionLogger:(id)logger submodelImpressionLogger:(id)impressionLogger actionLogger:(id)actionLogger defaultForIsImplicit:(BOOL)implicit
{
  iteratorCopy = iterator;
  loggerCopy = logger;
  impressionLoggerCopy = impressionLogger;
  actionLoggerCopy = actionLogger;
  v31.receiver = self;
  v31.super_class = _PSCNAutocompleteFeedbackTracker;
  v20 = [(_PSCNAutocompleteFeedbackTracker *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_interactionIterator, iterator);
    v21->_maxSecondsBetweenImpressionAndAction = action;
    v21->_shouldInferEnterAndExit = exit;
    v22 = MEMORY[0x1B8C8C060](loggerCopy);
    impressionLogger = v21->_impressionLogger;
    v21->_impressionLogger = v22;

    v24 = MEMORY[0x1B8C8C060](impressionLoggerCopy);
    submodelImpressionLogger = v21->_submodelImpressionLogger;
    v21->_submodelImpressionLogger = v24;

    v26 = MEMORY[0x1B8C8C060](actionLoggerCopy);
    actionLogger = v21->_actionLogger;
    v21->_actionLogger = v26;

    v21->_defaultForIsImplicit = implicit;
    v28 = objc_opt_new();
    dateFormatter = v21->_dateFormatter;
    v21->_dateFormatter = v28;

    [(NSDateFormatter *)v21->_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
  }

  return v21;
}

- (void)annotateImpression:(id)impression withStatistics:(id)statistics
{
  impressionCopy = impression;
  statisticsCopy = statistics;
  v6 = MEMORY[0x1E696AD98];
  countTapped = [statisticsCopy countTapped];
  v8 = 0.0;
  v9 = 0.0;
  if (countTapped >= 1)
  {
    totalRankTapped = [statisticsCopy totalRankTapped];
    v9 = totalRankTapped / [statisticsCopy countTapped];
  }

  v11 = [v6 numberWithDouble:v9];
  [impressionCopy setObject:v11 forKeyedSubscript:@"avgRankTapped"];

  v12 = MEMORY[0x1E696AD98];
  if ([statisticsCopy countUsed] >= 1)
  {
    totalRankUsed = [statisticsCopy totalRankUsed];
    v8 = totalRankUsed / [statisticsCopy countUsed];
  }

  v14 = [v12 numberWithDouble:v8];
  [impressionCopy setObject:v14 forKeyedSubscript:@"avgRankUsed"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statisticsCopy, "countTapped")}];
  [impressionCopy setObject:v15 forKeyedSubscript:@"countTapped"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statisticsCopy, "countUsed")}];
  [impressionCopy setObject:v16 forKeyedSubscript:@"countUsed"];

  v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(statisticsCopy, "countUsed") > 0}];
  [impressionCopy setObject:v17 forKeyedSubscript:@"ledToAction"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statisticsCopy, "highestRankTapped")}];
  [impressionCopy setObject:v18 forKeyedSubscript:@"highestRankTapped"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statisticsCopy, "highestRankUsed")}];
  [impressionCopy setObject:v19 forKeyedSubscript:@"highestRankUsed"];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statisticsCopy, "lowestRankTapped")}];
  [impressionCopy setObject:v20 forKeyedSubscript:@"lowestRankTapped"];

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statisticsCopy, "lowestRankUsed")}];
  [impressionCopy setObject:v21 forKeyedSubscript:@"lowestRankUsed"];
}

- (void)logImpressionsFromAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  vendedSuggestionEvents = [accumulatorCopy vendedSuggestionEvents];
  v6 = [vendedSuggestionEvents count];

  if (v6)
  {
    vendedSuggestionEvents2 = [accumulatorCopy vendedSuggestionEvents];
    v8 = [vendedSuggestionEvents2 count];

    if (v8)
    {
      v9 = 0;
      v26 = accumulatorCopy;
      do
      {
        v28 = objc_opt_class();
        vendedSuggestionEvents3 = [accumulatorCopy vendedSuggestionEvents];
        v32 = [vendedSuggestionEvents3 objectAtIndexedSubscript:v9];
        vendedSuggestions = [v32 vendedSuggestions];
        vendedSuggestionEvents4 = [accumulatorCopy vendedSuggestionEvents];
        v30 = [vendedSuggestionEvents4 objectAtIndexedSubscript:v9];
        bundleIdentifier = [v30 bundleIdentifier];
        vendedSuggestionEvents5 = [accumulatorCopy vendedSuggestionEvents];
        v12 = [vendedSuggestionEvents5 objectAtIndexedSubscript:v9];
        vendedSuggestions2 = [v12 vendedSuggestions];
        suggestions = [vendedSuggestions2 suggestions];
        firstObject = [suggestions firstObject];
        trialID = [firstObject trialID];
        v17 = [v28 defaultImpressionWithFeedback:vendedSuggestions bundleID:bundleIdentifier trialID:trialID isImplicit:self->_defaultForIsImplicit];
        v29 = [v17 mutableCopy];

        accumulatorCopy = v26;
        metricsForImpressions = [v26 metricsForImpressions];
        v19 = [metricsForImpressions objectAtIndexedSubscript:v9];
        [(_PSCNAutocompleteFeedbackTracker *)self annotateImpression:v29 withStatistics:v19];

        (*(self->_impressionLogger + 2))();
        metricsForSubmodelImpressions = [v26 metricsForSubmodelImpressions];
        v21 = [metricsForSubmodelImpressions objectAtIndexedSubscript:v9];
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
        vendedSuggestionEvents6 = [v22 vendedSuggestionEvents];
        v24 = [vendedSuggestionEvents6 count];
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

- (void)annotateAction:(id)action withStatistics:(id)statistics
{
  v5 = MEMORY[0x1E696AD98];
  statisticsCopy = statistics;
  actionCopy = action;
  v8 = [v5 numberWithInteger:{objc_msgSend(statisticsCopy, "countTappedSuggestions")}];
  [actionCopy setObject:v8 forKeyedSubscript:@"countTappedSuggestions"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statisticsCopy, "countTimesVendedSuggestions")}];
  [actionCopy setObject:v9 forKeyedSubscript:@"countTimesVendedSuggestions"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statisticsCopy, "countUsedSuggestions")}];
  [actionCopy setObject:v10 forKeyedSubscript:@"countUsedSuggestions"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(statisticsCopy, "countVendedSuggestions")}];
  [actionCopy setObject:v11 forKeyedSubscript:@"countVendedSuggestions"];

  v12 = MEMORY[0x1E696AD98];
  countUsedSuggestions = [statisticsCopy countUsedSuggestions];

  v14 = [v12 numberWithInt:countUsedSuggestions > 0];
  [actionCopy setObject:v14 forKeyedSubscript:@"usedSuggestions"];
}

- (void)logActionFromAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  v5 = objc_opt_class();
  interaction = [accumulatorCopy interaction];
  vendedSuggestionEvents = [accumulatorCopy vendedSuggestionEvents];
  lastObject = [vendedSuggestionEvents lastObject];
  vendedSuggestions = [lastObject vendedSuggestions];
  suggestions = [vendedSuggestions suggestions];
  firstObject = [suggestions firstObject];
  trialID = [firstObject trialID];
  v13 = [v5 defaultActionWithInteraction:interaction trialID:trialID isImplicit:self->_defaultForIsImplicit];
  v15 = [v13 mutableCopy];

  metricsForAction = [accumulatorCopy metricsForAction];

  [(_PSCNAutocompleteFeedbackTracker *)self annotateAction:v15 withStatistics:metricsForAction];
  (*(self->_actionLogger + 2))();
}

- (void)processFeedback:(id)feedback
{
  if (self->_shouldInferEnterAndExit)
  {
    [(_PSCNAutocompleteFeedbackTracker *)self processFeedbackWithInferredEnterAndExit:feedback];
  }

  else
  {
    [(_PSCNAutocompleteFeedbackTracker *)self processFeedbackWithoutInferredEnterAndExit:feedback];
  }
}

- (void)processFeedbackWithInferredEnterAndExit:(id)exit
{
  v51 = *MEMORY[0x1E69E9840];
  exitCopy = exit;
  v5 = exitCopy;
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

  if (![exitCopy feedbackType] || objc_msgSend(v5, "feedbackType") == 1)
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
  reportTime = [v5 reportTime];
  v10 = [(_PSCNAutocompleteFeedbackInteractionIterator *)interactionIterator fastForwardToDate:reportTime];
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
      reportTime2 = [v5 reportTime];
      v21 = [(NSDateFormatter *)dateFormatter stringFromDate:reportTime2];
      userIdentifier = [v5 userIdentifier];
      bundleIdentifier = [v5 bundleIdentifier];
      sourceBundleIdentifier = [v5 sourceBundleIdentifier];
      if ([v5 isImplicit])
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      feedbackType = [v5 feedbackType];
      v39 = 138413570;
      v40 = v21;
      v41 = 2112;
      v42 = userIdentifier;
      v43 = 2112;
      v44 = bundleIdentifier;
      v45 = 2112;
      v46 = sourceBundleIdentifier;
      v47 = 2112;
      v48 = v25;
      v49 = 2048;
      v50 = feedbackType;
      _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_DEFAULT, "_PSCNAutocompleteFeedbackTracker: Processing event reported on %@ for user %@, for %@, reported by %@, implicit=%@, of type %lu.", &v39, 0x3Eu);
    }

    if (!self->_accumulator && [v5 feedbackType] == 2)
    {
      startDate = [(_CDInteraction *)self->_followingInteraction startDate];
      reportTime3 = [v5 reportTime];
      [startDate timeIntervalSinceDate:reportTime3];
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

    reportTime4 = [v5 reportTime];
    stopTime = self->_stopTime;
    self->_stopTime = reportTime4;
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
  v1 = *(self + 64);
  startDate = [*(self + 80) startDate];
  v3 = [v1 stringFromDate:startDate];
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
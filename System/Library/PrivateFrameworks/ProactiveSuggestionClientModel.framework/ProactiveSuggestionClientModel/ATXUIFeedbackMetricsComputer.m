@interface ATXUIFeedbackMetricsComputer
- (ATXUIFeedbackMetricsComputer)init;
- (ATXUIFeedbackMetricsComputer)initWithUIFeedbackResultStream:(id)a3;
- (id)_computeResultForClientModel:(id)a3 query:(id)a4 publisher:(id)a5 resultSpecification:(id)a6;
- (id)_computeResultForConsumerSubType:(unsigned __int8)a3 query:(id)a4 publisher:(id)a5 resultSpecification:(id)a6;
- (id)computeResultForQuery:(id)a3 resultSpecification:(id)a4;
- (void)_updateNonTrendPlotSectionsInResult:(id)a3 withFeedbackResult:(id)a4;
@end

@implementation ATXUIFeedbackMetricsComputer

- (ATXUIFeedbackMetricsComputer)init
{
  v3 = objc_opt_new();
  v4 = [(ATXUIFeedbackMetricsComputer *)self initWithUIFeedbackResultStream:v3];

  return v4;
}

- (ATXUIFeedbackMetricsComputer)initWithUIFeedbackResultStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXUIFeedbackMetricsComputer;
  v6 = [(ATXUIFeedbackMetricsComputer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, a3);
  }

  return v7;
}

- (id)computeResultForQuery:(id)a3 resultSpecification:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 clientModelType] || objc_msgSend(v6, "consumerSubType"))
  {
    stream = self->_stream;
    v9 = [v6 startDate];
    [v9 timeIntervalSinceReferenceDate];
    v10 = [(ATXBiomeProactiveSuggestionUIFeedbackResultStream *)stream publisherFromStartTime:?];

    if ([v6 clientModelType])
    {
      v11 = +[ATXProactiveSuggestionClientModel clientModelIdFromClientModelType:](ATXProactiveSuggestionClientModel, "clientModelIdFromClientModelType:", [v6 clientModelType]);
      v12 = [(ATXUIFeedbackMetricsComputer *)self _computeResultForClientModel:v11 query:v6 publisher:v10 resultSpecification:v7];
    }

    else
    {
      v12 = -[ATXUIFeedbackMetricsComputer _computeResultForConsumerSubType:query:publisher:resultSpecification:](self, "_computeResultForConsumerSubType:query:publisher:resultSpecification:", [v6 consumerSubType], v6, v10, v7);
    }
  }

  else
  {
    v14 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXUIFeedbackMetricsComputer computeResultForQuery:v14 resultSpecification:?];
    }

    v12 = 0;
  }

  return v12;
}

- (id)_computeResultForClientModel:(id)a3 query:(id)a4 publisher:(id)a5 resultSpecification:(id)a6
{
  v10 = a3;
  v11 = a4;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke;
  v30[3] = &unk_1E86A3F90;
  v12 = v11;
  v31 = v12;
  v32 = v10;
  v13 = v10;
  v14 = a6;
  v15 = [a5 filterWithIsIncluded:v30];
  v16 = [ATXUIFeedbackMetricsResult alloc];
  v17 = [v12 startDate];
  v18 = [v12 endDate];
  v19 = [(ATXUIFeedbackMetricsResult *)v16 initWithSpecification:v14 startDate:v17 endDate:v18];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_14;
  v26[3] = &unk_1E86A3FD8;
  v27 = v12;
  v28 = self;
  v20 = v19;
  v29 = v20;
  v21 = v12;
  v22 = [v15 sinkWithCompletion:&__block_literal_global_2 shouldContinue:v26];
  v23 = v29;
  v24 = v20;

  return v20;
}

BOOL __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 sessionEndDate];
  v6 = [*(a1 + 32) startDate];
  v7 = [v5 earlierDate:v6];
  v8 = [v3 eventBody];
  v9 = [v8 sessionEndDate];

  if (v7 == v9)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 40);
  v11 = [v3 eventBody];
  v12 = [v11 clientModelId];
  LODWORD(v10) = [v10 isEqualToString:v12];

  if (!v10)
  {
LABEL_5:
    v15 = 0;
  }

  else if ([*(a1 + 32) consumerSubType])
  {
    v13 = [v3 eventBody];
    v14 = [v13 consumerSubType];
    v15 = v14 == [*(a1 + 32) consumerSubType];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

void __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_2_cold_1(v2);
    }
  }
}

BOOL __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_14(id *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 sessionEndDate];
  v5 = [a1[4] endDate];
  v6 = [v4 laterDate:v5];
  v7 = [v3 sessionEndDate];

  if (v6 != v7)
  {
    [a1[5] _updateNonTrendPlotSectionsInResult:a1[6] withFeedbackResult:v3];
    v8 = [a1[6] trendPlot];
    v9 = [v3 sessionEndDate];
    v10 = [v8 binAtDate:v9];

    if (v10)
    {
      v11 = [v10 data];
      v12 = [v3 shownSuggestions];
      [v11 setImpressionCount:{objc_msgSend(v11, "impressionCount") + objc_msgSend(v12, "count")}];

      v13 = [v10 data];
      v14 = [v3 engagedSuggestions];
      [v13 setEngagementCount:{objc_msgSend(v13, "engagementCount") + objc_msgSend(v14, "count")}];

      v15 = [v10 data];
      v16 = [v3 rejectedSuggestions];
      [v15 setRejectionCount:{objc_msgSend(v15, "rejectionCount") + objc_msgSend(v16, "count")}];
    }
  }

  return v6 != v7;
}

- (id)_computeResultForConsumerSubType:(unsigned __int8)a3 query:(id)a4 publisher:(id)a5 resultSpecification:(id)a6
{
  v10 = a4;
  v11 = a6;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke;
  v40[3] = &unk_1E86A4000;
  v12 = v10;
  v41 = v12;
  v42 = a3;
  v13 = [a5 filterWithIsIncluded:v40];
  v14 = [ATXUIFeedbackMetricsResult alloc];
  v15 = [v12 startDate];
  v16 = [v12 endDate];
  v17 = [(ATXUIFeedbackMetricsResult *)v14 initWithSpecification:v11 startDate:v15 endDate:v16];

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__1;
  v38[4] = __Block_byref_object_dispose__1;
  v39 = [MEMORY[0x1E695DF00] distantPast];
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = objc_opt_new();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke_20;
  v30[3] = &unk_1E86A4028;
  v21 = v12;
  v31 = v21;
  v32 = self;
  v22 = v17;
  v33 = v22;
  v37 = v38;
  v23 = v18;
  v34 = v23;
  v24 = v19;
  v35 = v24;
  v25 = v20;
  v36 = v25;
  v26 = [v13 sinkWithCompletion:&__block_literal_global_19 shouldContinue:v30];
  v27 = v36;
  v28 = v22;

  _Block_object_dispose(v38, 8);

  return v28;
}

BOOL __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 sessionEndDate];
  v6 = [*(a1 + 32) startDate];
  v7 = [v5 earlierDate:v6];
  v8 = [v3 eventBody];
  v9 = [v8 sessionEndDate];

  if (v7 == v9)
  {
    v11 = 0;
  }

  else
  {
    v10 = [v3 eventBody];
    v11 = [v10 consumerSubType] == *(a1 + 40);
  }

  return v11;
}

void __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_2_cold_1(v2);
    }
  }
}

BOOL __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke_20(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = [a2 eventBody];
  v4 = [v3 sessionEndDate];
  v5 = [*(a1 + 32) endDate];
  v6 = [v4 laterDate:v5];
  v7 = [v3 sessionEndDate];

  if (v6 != v7)
  {
    [*(a1 + 40) _updateNonTrendPlotSectionsInResult:*(a1 + 48) withFeedbackResult:v3];
    v8 = [v3 sessionStartDate];
    v9 = [v8 isEqualToDate:*(*(*(a1 + 80) + 8) + 40)];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 56) removeAllObjects];
      [*(a1 + 64) removeAllObjects];
      [*(a1 + 72) removeAllObjects];
      v10 = [v3 sessionStartDate];
      v11 = *(*(a1 + 80) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v13 = [*(a1 + 48) trendPlot];
    v14 = [v3 sessionEndDate];
    v15 = [v13 binAtDate:v14];

    if (v15)
    {
      v51 = v7;
      v52 = v6;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v16 = [v3 shownSuggestions];
      v17 = [v16 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v62;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v62 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v61 + 1) + 8 * i);
            v22 = *(a1 + 56);
            v23 = [v21 executableIdentifier];
            LOBYTE(v22) = [v22 containsObject:v23];

            if ((v22 & 1) == 0)
            {
              v24 = [v15 data];
              [v24 setImpressionCount:{objc_msgSend(v24, "impressionCount") + 1}];

              v25 = *(a1 + 56);
              v26 = [v21 executableIdentifier];
              [v25 addObject:v26];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v18);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v27 = [v3 engagedSuggestions];
      v28 = [v27 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v58;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v58 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v57 + 1) + 8 * j);
            v33 = *(a1 + 64);
            v34 = [v32 executableIdentifier];
            LOBYTE(v33) = [v33 containsObject:v34];

            if ((v33 & 1) == 0)
            {
              v35 = [v15 data];
              [v35 setEngagementCount:{objc_msgSend(v35, "engagementCount") + 1}];

              v36 = *(a1 + 64);
              v37 = [v32 executableIdentifier];
              [v36 addObject:v37];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v29);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v38 = [v3 rejectedSuggestions];
      v39 = [v38 countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v54;
        do
        {
          for (k = 0; k != v40; ++k)
          {
            if (*v54 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v53 + 1) + 8 * k);
            v44 = *(a1 + 72);
            v45 = [v43 executableIdentifier];
            LOBYTE(v44) = [v44 containsObject:v45];

            if ((v44 & 1) == 0)
            {
              v46 = [v15 data];
              [v46 setRejectionCount:{objc_msgSend(v46, "rejectionCount") + 1}];

              v47 = *(a1 + 72);
              v48 = [v43 executableIdentifier];
              [v47 addObject:v48];
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v53 objects:v65 count:16];
        }

        while (v40);
      }

      v7 = v51;
      v6 = v52;
    }
  }

  v49 = *MEMORY[0x1E69E9840];
  return v6 != v7;
}

- (void)_updateNonTrendPlotSectionsInResult:(id)a3 withFeedbackResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 sectionForShownSuggestions];
  v9 = [v6 shownSuggestions];
  v10 = [v6 clientModelId];
  -[ATXUIFeedbackMetricsComputer _updateResultSection:withSuggestions:clientModelId:consumerSubType:](self, "_updateResultSection:withSuggestions:clientModelId:consumerSubType:", v8, v9, v10, [v6 consumerSubType]);

  v11 = [v7 sectionForEngagedSuggestions];
  v12 = [v6 engagedSuggestions];
  v13 = [v6 clientModelId];
  -[ATXUIFeedbackMetricsComputer _updateResultSection:withSuggestions:clientModelId:consumerSubType:](self, "_updateResultSection:withSuggestions:clientModelId:consumerSubType:", v11, v12, v13, [v6 consumerSubType]);

  v17 = [v7 sectionForRejectedSuggestions];

  v14 = [v6 rejectedSuggestions];
  v15 = [v6 clientModelId];
  v16 = [v6 consumerSubType];

  [(ATXUIFeedbackMetricsComputer *)self _updateResultSection:v17 withSuggestions:v14 clientModelId:v15 consumerSubType:v16];
}

void __99__ATXUIFeedbackMetricsComputer__updateResultSection_withSuggestions_clientModelId_consumerSubType___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) predictionReasonCodeBreakdown];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v4 incrementCountForCategory:v3 by:1];
}

void __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_2_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_4(&dword_1DEFC4000, v2, v3, "ATXUIFeedbackMetricsComputer: Biome query completed with error %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end
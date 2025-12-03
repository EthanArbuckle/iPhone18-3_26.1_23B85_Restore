@interface ATXProactiveSuggestionUIFeedbackPublisher
- (ATXProactiveSuggestionUIFeedbackPublisher)initWithClientModelPublisher:(id)publisher blendingModelPublisher:(id)modelPublisher uiPublisher:(id)uiPublisher contextPublisher:(id)contextPublisher validUICacheConsumerSubType:(unsigned __int8)type validClientModelIds:(id)ids hyperParameters:(id)parameters;
- (id)_filteredBlendingCacheUpdatePublisher:(id)publisher;
- (id)_filteredCacheUpdateClientModelPublisher:(id)publisher;
- (id)_timestampFromEvent:(id)event;
- (id)mergedBlendingClientContextPublisher;
- (id)uiFeedbackPublisher;
- (id)uiFeedbackSessionPublisherWithCorrelateHandler:(id)handler;
@end

@implementation ATXProactiveSuggestionUIFeedbackPublisher

- (ATXProactiveSuggestionUIFeedbackPublisher)initWithClientModelPublisher:(id)publisher blendingModelPublisher:(id)modelPublisher uiPublisher:(id)uiPublisher contextPublisher:(id)contextPublisher validUICacheConsumerSubType:(unsigned __int8)type validClientModelIds:(id)ids hyperParameters:(id)parameters
{
  publisherCopy = publisher;
  modelPublisherCopy = modelPublisher;
  uiPublisherCopy = uiPublisher;
  contextPublisherCopy = contextPublisher;
  idsCopy = ids;
  parametersCopy = parameters;
  v25.receiver = self;
  v25.super_class = ATXProactiveSuggestionUIFeedbackPublisher;
  v18 = [(ATXProactiveSuggestionUIFeedbackPublisher *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientModelPublisher, publisher);
    objc_storeStrong(&v19->_blendingModelPublisher, modelPublisher);
    objc_storeStrong(&v19->_uiPublisher, uiPublisher);
    objc_storeStrong(&v19->_contextPublisher, contextPublisher);
    v19->_validUICacheConsumerSubType = type;
    objc_storeStrong(&v19->_validClientModelIds, ids);
    objc_storeStrong(&v19->_hyperParameters, parameters);
  }

  return v19;
}

- (id)uiFeedbackPublisher
{
  v3 = +[ATXUIFeedbackBiomeCorrelateHandler uiFeedbackCorrelateHandler];
  mergedBlendingClientContextPublisher = [(ATXProactiveSuggestionUIFeedbackPublisher *)self mergedBlendingClientContextPublisher];
  v5 = [(ATXProactiveSuggestionUIFeedbackPublisher *)self uiFeedbackSessionPublisherWithCorrelateHandler:v3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__ATXProactiveSuggestionUIFeedbackPublisher_uiFeedbackPublisher__block_invoke;
  v9[3] = &unk_1E86A4648;
  v9[4] = self;
  v6 = [mergedBlendingClientContextPublisher correlateWithCurrent:v5 comparator:v9 correlateHandler:v3];
  v7 = [v6 flatMapWithTransform:&__block_literal_global_13];

  return v7;
}

uint64_t __64__ATXProactiveSuggestionUIFeedbackPublisher_uiFeedbackPublisher__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _timestampFromEvent:a2];
  v8 = [*(a1 + 32) _timestampFromEvent:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (id)mergedBlendingClientContextPublisher
{
  v3 = [(ATXProactiveSuggestionUIFeedbackPublisher *)self _filteredCacheUpdateClientModelPublisher:self->_clientModelPublisher];
  v4 = [(ATXProactiveSuggestionUIFeedbackPublisher *)self _filteredBlendingCacheUpdatePublisher:self->_blendingModelPublisher];
  v5 = objc_opt_new();
  [v5 addObject:v4];
  if (self->_contextPublisher)
  {
    [v5 addObject:?];
  }

  v6 = [v3 orderedMergeWithOthers:v5 comparator:&__block_literal_global_15];

  return v6;
}

uint64_t __81__ATXProactiveSuggestionUIFeedbackPublisher_mergedBlendingClientContextPublisher__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)uiFeedbackSessionPublisherWithCorrelateHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc(MEMORY[0x1E698B020]);
  v6 = objc_opt_new();
  v7 = [v5 initWithFirst:0 second:v6];

  uiPublisher = self->_uiPublisher;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __92__ATXProactiveSuggestionUIFeedbackPublisher_uiFeedbackSessionPublisherWithCorrelateHandler___block_invoke;
  v17 = &unk_1E86A4690;
  selfCopy = self;
  v19 = handlerCopy;
  v9 = handlerCopy;
  v10 = [(BMBookmarkablePublisher *)uiPublisher scanWithInitial:v7 nextPartialResult:&v14];
  v11 = [v10 filterWithIsIncluded:{&__block_literal_global_23_0, v14, v15, v16, v17, selfCopy}];
  v12 = [v11 mapWithTransform:&__block_literal_global_26_1];

  return v12;
}

id __92__ATXProactiveSuggestionUIFeedbackPublisher_uiFeedbackSessionPublisherWithCorrelateHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 eventBody];
  if (!v7)
  {
    v29 = objc_alloc(MEMORY[0x1E698B020]);
    v30 = [v5 second];
    v31 = [v29 initWithFirst:0 second:v30];

    goto LABEL_34;
  }

  v8 = [v5 second];
  v9 = objc_alloc(MEMORY[0x1E695DF00]);
  [v6 timestamp];
  v42 = [v9 initWithTimeIntervalSinceReferenceDate:?];
  v10 = [v7 sessionProcessingOptionsForSessionType:0];
  v43 = a1;
  v11 = [v7 sessionIdentifierForSessionType:0 uiCacheConsumerSubType:*(*(a1 + 32) + 8)];
  if (!v11)
  {
    v32 = objc_alloc(MEMORY[0x1E698B020]);
    v33 = [v5 second];
    v31 = [v32 initWithFirst:0 second:v33];

    goto LABEL_33;
  }

  v39 = v6;
  v40 = v5;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = v10;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v12)
  {
    v44 = 0;
    goto LABEL_32;
  }

  v13 = v12;
  v44 = 0;
  v14 = *v47;
  v16 = v42;
  v15 = a1;
  v41 = v7;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v47 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v18 = [*(*(&v46 + 1) + 8 * i) unsignedIntegerValue];
      switch(v18)
      {
        case 2:
          v25 = [v8 returnAndRemoveUIFeedbackSessionWithSessionIdentifier:v11 endDate:v16];
          v19 = v25;
          if (v25)
          {
            v26 = v25;

            v44 = v26;
          }

          goto LABEL_25;
        case 1:
          v19 = [v8 uiFeedbackSessionWithSessionIdentifier:v11];
          v20 = [v7 blendingUICacheUpdateUUIDForUICacheConsumerSubType:*(*(v15 + 32) + 8)];
          if (v20)
          {
            v21 = [v19 blendingUICacheUpdateUUID];
            if (v21)
            {
              v22 = v21;
              v23 = [v19 blendingUICacheUpdateUUID];
              v24 = [v20 isEqual:v23];

              if (v24)
              {
                v7 = v41;
                v16 = v42;
              }

              else
              {
                v27 = [v8 returnAndRemoveUIFeedbackSessionWithSessionIdentifier:v11 endDate:v42];

                [v8 trackNewUIFeedbackSessionWithSessionIdentifier:v11 startDate:v42];
                v28 = [v8 uiFeedbackSessionWithSessionIdentifier:v11];

                v44 = v27;
                v19 = v28;
                v16 = v42;
                v7 = v41;
              }
            }

            v15 = v43;
          }

          if (v19)
          {
            [v7 updateUIFeedbackSession:v19 uiCacheConsumerSubType:*(*(v15 + 32) + 8)];
          }

          if (v20)
          {
            [*(v15 + 40) updateMostRecentlySeenBlendingUICacheUpdateUUID:v20];
          }

LABEL_25:
          continue;
        case 0:
          [v8 trackNewUIFeedbackSessionWithSessionIdentifier:v11 startDate:v16];
          break;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v13);
LABEL_32:

  v34 = objc_alloc(MEMORY[0x1E698B020]);
  v5 = v40;
  v35 = [v40 second];
  v31 = [v34 initWithFirst:v44 second:v35];

  v10 = v38;
  v6 = v39;
LABEL_33:

LABEL_34:
  v36 = *MEMORY[0x1E69E9840];

  return v31;
}

uint64_t __92__ATXProactiveSuggestionUIFeedbackPublisher_uiFeedbackSessionPublisherWithCorrelateHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  if (v3)
  {
    v4 = [v2 first];
    v5 = [v4 isValidSession];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_filteredBlendingCacheUpdatePublisher:(id)publisher
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__ATXProactiveSuggestionUIFeedbackPublisher__filteredBlendingCacheUpdatePublisher___block_invoke;
  v5[3] = &unk_1E86A46F8;
  v5[4] = self;
  v3 = [publisher filterWithIsIncluded:v5];

  return v3;
}

BOOL __83__ATXProactiveSuggestionUIFeedbackPublisher__filteredBlendingCacheUpdatePublisher___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 consumerSubType] == *(*(a1 + 32) + 8);

  return v4;
}

- (id)_filteredCacheUpdateClientModelPublisher:(id)publisher
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__ATXProactiveSuggestionUIFeedbackPublisher__filteredCacheUpdateClientModelPublisher___block_invoke;
  v5[3] = &unk_1E86A46F8;
  v5[4] = self;
  v3 = [publisher filterWithIsIncluded:v5];

  return v3;
}

uint64_t __86__ATXProactiveSuggestionUIFeedbackPublisher__filteredCacheUpdateClientModelPublisher___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 clientModelId];
    if (v5)
    {
      v6 = *(a1 + 32);
      if (!v6[6])
      {
LABEL_6:
        v7 = [v6 clientModelsToConsider];
        v8 = [v7 containsObject:v5];

LABEL_9:
        goto LABEL_10;
      }

      if ([v6[6] containsObject:v5])
      {
        v6 = *(a1 + 32);
        goto LABEL_6;
      }
    }

    v8 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)_timestampFromEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E696AD98];
    [eventCopy timestamp];
    v6 = [v5 numberWithDouble:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x1E696AD98];
      v8 = eventCopy;
      sessionEndDate = [v8 sessionEndDate];
      [sessionEndDate timeIntervalSinceReferenceDate];
      v6 = [v7 numberWithDouble:?];
    }

    else
    {
      v10 = __atxlog_handle_blending_ecosystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ATXProactiveSuggestionUIFeedbackPublisher *)self _timestampFromEvent:eventCopy, v10];
      }

      v6 = &unk_1F5A41260;
    }
  }

  return v6;
}

- (void)_timestampFromEvent:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_ERROR, "%@ - _timestampFromEvent invoked with unknown object: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end
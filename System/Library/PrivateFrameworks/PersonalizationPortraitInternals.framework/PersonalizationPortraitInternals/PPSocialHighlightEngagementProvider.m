@interface PPSocialHighlightEngagementProvider
- (PPSocialHighlightEngagementProvider)initWithFeedbackType:(unint64_t)a3 feedbackGroupByBlock:(id)a4 highlightKeyBlock:(id)a5 highlights:(id)a6;
- (PPSocialHighlightEngagementProvider)initWithFeedbackType:(unint64_t)a3 feedbackGroupByBlock:(id)a4 highlightKeyBlock:(id)a5 intervalSinceNow:(double)a6 highlights:(id)a7;
- (id)applyFeedback:(id)a3;
- (id)valueForHighlight:(id)a3;
@end

@implementation PPSocialHighlightEngagementProvider

- (id)applyFeedback:(id)a3
{
  v5 = a3;
  v6 = [v5 eventBody];

  if (!v6)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PPSocialHighlightFeatureProviders.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"feedback.eventBody != nil"}];
  }

  v7 = [v5 eventBody];
  if ([v7 feedbackType] == self->_feedbackType)
  {
    v8 = [v7 highlight];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 feedbackCreationDate];
      v11 = [v10 compare:self->_earliestDateToAccept];

      if (v11 == 1)
      {
        if (!self->_acceptOnlyPrimary || ([v7 highlight], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "isPrimary"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(MEMORY[0x277CBEC28], "isEqual:", v13), v13, v12, (v14 & 1) == 0))
        {
          v15 = (*(self->_groupByBlock + 2))();
          if (v15)
          {
            v16 = [(NSMutableDictionary *)self->_engagementsByKey objectForKeyedSubscript:v15];

            if (v16)
            {
              v17 = [(NSMutableDictionary *)self->_engagementsByKey objectForKeyedSubscript:v15];
              v18 = [v17 unsignedIntegerValue];

              v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18 + 1];
              [(NSMutableDictionary *)self->_engagementsByKey setObject:v19 forKeyedSubscript:v15];
            }
          }
        }
      }
    }
  }

  v20 = self;

  return self;
}

- (id)valueForHighlight:(id)a3
{
  v4 = (*(self->_keyBlock + 2))();
  v5 = &unk_2847860F0;
  if (v4)
  {
    v6 = [(NSMutableDictionary *)self->_engagementsByKey objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &unk_2847860F0;
    }

    v5 = v8;
  }

  return v5;
}

- (PPSocialHighlightEngagementProvider)initWithFeedbackType:(unint64_t)a3 feedbackGroupByBlock:(id)a4 highlightKeyBlock:(id)a5 intervalSinceNow:(double)a6 highlights:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v39.receiver = self;
  v39.super_class = PPSocialHighlightEngagementProvider;
  v15 = [(PPSocialHighlightEngagementProvider *)&v39 init];
  v16 = v15;
  if (v15)
  {
    v15->_feedbackType = a3;
    v17 = [v12 copy];
    groupByBlock = v16->_groupByBlock;
    v16->_groupByBlock = v17;

    v19 = [v13 copy];
    keyBlock = v16->_keyBlock;
    v16->_keyBlock = v19;

    v21 = objc_alloc(MEMORY[0x277CBEB98]);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __127__PPSocialHighlightEngagementProvider_initWithFeedbackType_feedbackGroupByBlock_highlightKeyBlock_intervalSinceNow_highlights___block_invoke;
    v37[3] = &unk_278975578;
    v38 = v13;
    v22 = [v14 _pas_mappedArrayWithTransform:v37];
    v23 = [v21 initWithArray:v22];

    v24 = objc_alloc(MEMORY[0x277CBEB38]);
    v25 = [MEMORY[0x277CBEA60] _pas_proxyArrayWithObject:&unk_284784230 repetitions:{objc_msgSend(v23, "count")}];
    v26 = [v23 allObjects];
    v27 = [v24 initWithObjects:v25 forKeys:v26];
    engagementsByKey = v16->_engagementsByKey;
    v16->_engagementsByKey = v27;

    v29 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-a6];
    earliestDateToAccept = v16->_earliestDateToAccept;
    v16->_earliestDateToAccept = v29;

    feedbackType = v16->_feedbackType;
    v35 = a3 != 9 && feedbackType != 2 && a3 != 3 && feedbackType != 4;
    v16->_acceptOnlyPrimary = v35;
  }

  return v16;
}

- (PPSocialHighlightEngagementProvider)initWithFeedbackType:(unint64_t)a3 feedbackGroupByBlock:(id)a4 highlightKeyBlock:(id)a5 highlights:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_opt_new();
  [v13 timeIntervalSince1970];
  v14 = [(PPSocialHighlightEngagementProvider *)self initWithFeedbackType:a3 feedbackGroupByBlock:v12 highlightKeyBlock:v11 intervalSinceNow:v10 highlights:?];

  return v14;
}

@end
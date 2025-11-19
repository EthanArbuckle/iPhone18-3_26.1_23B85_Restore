@interface PPSocialHighlightTimeSinceEngagementProvider
- (PPSocialHighlightTimeSinceEngagementProvider)initWithFeedbackType:(unint64_t)a3 feedbackGroupByBlock:(id)a4 highlightKeyBlock:(id)a5 mostRecent:(BOOL)a6 highlights:(id)a7;
- (id)applyFeedback:(id)a3;
- (id)valueForHighlight:(id)a3;
@end

@implementation PPSocialHighlightTimeSinceEngagementProvider

- (id)applyFeedback:(id)a3
{
  v5 = a3;
  v6 = [v5 eventBody];

  if (!v6)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PPSocialHighlightFeatureProviders.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"feedback.eventBody != nil"}];
  }

  v7 = [v5 eventBody];
  if ([v7 feedbackType] == self->_feedbackType)
  {
    v8 = (*(self->_groupByBlock + 2))();
    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_dates objectForKeyedSubscript:v8];

      if (v9)
      {
        if (self->_mostRecent)
        {
          v10 = -1;
        }

        else
        {
          v10 = 1;
        }

        v11 = [(NSMutableDictionary *)self->_dates objectForKeyedSubscript:v8];
        v12 = [v7 feedbackCreationDate];
        v13 = [v11 compare:v12];

        if (v13 == v10)
        {
          v14 = [v7 feedbackCreationDate];
          [(NSMutableDictionary *)self->_dates setObject:v14 forKeyedSubscript:v8];
        }
      }
    }
  }

  return self;
}

- (id)valueForHighlight:(id)a3
{
  v4 = (*(self->_keyBlock + 2))();
  if (!v4)
  {
    v9 = MEMORY[0x277CCABB0];
    v5 = [MEMORY[0x277CBEAA8] distantPast];
    [v5 timeIntervalSinceNow];
    goto LABEL_7;
  }

  v5 = [(NSMutableDictionary *)self->_dates objectForKeyedSubscript:v4];
  v6 = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [v5 isEqualToDate:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];

    v5 = v8;
  }

  v9 = MEMORY[0x277CCABB0];
  if (v5)
  {
    [v5 timeIntervalSinceNow];
    v11 = -v10;
LABEL_7:
    v12 = [v9 numberWithDouble:v11];
    goto LABEL_9;
  }

  v13 = [MEMORY[0x277CBEAA8] distantPast];
  [v13 timeIntervalSinceNow];
  v12 = [v9 numberWithDouble:?];

  v5 = 0;
LABEL_9:

  return v12;
}

- (PPSocialHighlightTimeSinceEngagementProvider)initWithFeedbackType:(unint64_t)a3 feedbackGroupByBlock:(id)a4 highlightKeyBlock:(id)a5 mostRecent:(BOOL)a6 highlights:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v35.receiver = self;
  v35.super_class = PPSocialHighlightTimeSinceEngagementProvider;
  v15 = [(PPSocialHighlightTimeSinceEngagementProvider *)&v35 init];
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CBEB98]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __130__PPSocialHighlightTimeSinceEngagementProvider_initWithFeedbackType_feedbackGroupByBlock_highlightKeyBlock_mostRecent_highlights___block_invoke;
    v33[3] = &unk_278975578;
    v17 = v13;
    v34 = v17;
    v18 = [v14 _pas_mappedArrayWithTransform:v33];
    v19 = [v16 initWithArray:v18];
    v20 = [v19 allObjects];

    v32 = a6;
    if (a6)
    {
      v21 = a3;
      [MEMORY[0x277CBEAA8] distantPast];
    }

    else
    {
      v21 = a3;
      [MEMORY[0x277CBEAA8] distantFuture];
    }
    v22 = ;
    v23 = objc_alloc(MEMORY[0x277CBEB38]);
    v24 = [MEMORY[0x277CBEA60] _pas_proxyArrayWithObject:v22 repetitions:{objc_msgSend(v20, "count")}];
    v25 = [v23 initWithObjects:v24 forKeys:v20];
    dates = v15->_dates;
    v15->_dates = v25;

    v27 = [v17 copy];
    keyBlock = v15->_keyBlock;
    v15->_keyBlock = v27;

    v29 = [v12 copy];
    groupByBlock = v15->_groupByBlock;
    v15->_groupByBlock = v29;

    v15->_feedbackType = v21;
    v15->_mostRecent = v32;
  }

  return v15;
}

@end
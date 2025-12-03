@interface PPSocialHighlightTimeSinceEngagementProvider
- (PPSocialHighlightTimeSinceEngagementProvider)initWithFeedbackType:(unint64_t)type feedbackGroupByBlock:(id)block highlightKeyBlock:(id)keyBlock mostRecent:(BOOL)recent highlights:(id)highlights;
- (id)applyFeedback:(id)feedback;
- (id)valueForHighlight:(id)highlight;
@end

@implementation PPSocialHighlightTimeSinceEngagementProvider

- (id)applyFeedback:(id)feedback
{
  feedbackCopy = feedback;
  eventBody = [feedbackCopy eventBody];

  if (!eventBody)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSocialHighlightFeatureProviders.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"feedback.eventBody != nil"}];
  }

  eventBody2 = [feedbackCopy eventBody];
  if ([eventBody2 feedbackType] == self->_feedbackType)
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
        feedbackCreationDate = [eventBody2 feedbackCreationDate];
        v13 = [v11 compare:feedbackCreationDate];

        if (v13 == v10)
        {
          feedbackCreationDate2 = [eventBody2 feedbackCreationDate];
          [(NSMutableDictionary *)self->_dates setObject:feedbackCreationDate2 forKeyedSubscript:v8];
        }
      }
    }
  }

  return self;
}

- (id)valueForHighlight:(id)highlight
{
  v4 = (*(self->_keyBlock + 2))();
  if (!v4)
  {
    v9 = MEMORY[0x277CCABB0];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [distantPast timeIntervalSinceNow];
    goto LABEL_7;
  }

  distantPast = [(NSMutableDictionary *)self->_dates objectForKeyedSubscript:v4];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [distantPast isEqualToDate:distantFuture];

  if (v7)
  {
    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];

    distantPast = distantPast2;
  }

  v9 = MEMORY[0x277CCABB0];
  if (distantPast)
  {
    [distantPast timeIntervalSinceNow];
    v11 = -v10;
LABEL_7:
    v12 = [v9 numberWithDouble:v11];
    goto LABEL_9;
  }

  distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast3 timeIntervalSinceNow];
  v12 = [v9 numberWithDouble:?];

  distantPast = 0;
LABEL_9:

  return v12;
}

- (PPSocialHighlightTimeSinceEngagementProvider)initWithFeedbackType:(unint64_t)type feedbackGroupByBlock:(id)block highlightKeyBlock:(id)keyBlock mostRecent:(BOOL)recent highlights:(id)highlights
{
  blockCopy = block;
  keyBlockCopy = keyBlock;
  highlightsCopy = highlights;
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
    v17 = keyBlockCopy;
    v34 = v17;
    v18 = [highlightsCopy _pas_mappedArrayWithTransform:v33];
    v19 = [v16 initWithArray:v18];
    allObjects = [v19 allObjects];

    recentCopy = recent;
    if (recent)
    {
      typeCopy2 = type;
      [MEMORY[0x277CBEAA8] distantPast];
    }

    else
    {
      typeCopy2 = type;
      [MEMORY[0x277CBEAA8] distantFuture];
    }
    v22 = ;
    v23 = objc_alloc(MEMORY[0x277CBEB38]);
    v24 = [MEMORY[0x277CBEA60] _pas_proxyArrayWithObject:v22 repetitions:{objc_msgSend(allObjects, "count")}];
    v25 = [v23 initWithObjects:v24 forKeys:allObjects];
    dates = v15->_dates;
    v15->_dates = v25;

    v27 = [v17 copy];
    keyBlock = v15->_keyBlock;
    v15->_keyBlock = v27;

    v29 = [blockCopy copy];
    groupByBlock = v15->_groupByBlock;
    v15->_groupByBlock = v29;

    v15->_feedbackType = typeCopy2;
    v15->_mostRecent = recentCopy;
  }

  return v15;
}

@end
@interface PPSocialHighlightEngagementProvider
- (PPSocialHighlightEngagementProvider)initWithFeedbackType:(unint64_t)type feedbackGroupByBlock:(id)block highlightKeyBlock:(id)keyBlock highlights:(id)highlights;
- (PPSocialHighlightEngagementProvider)initWithFeedbackType:(unint64_t)type feedbackGroupByBlock:(id)block highlightKeyBlock:(id)keyBlock intervalSinceNow:(double)now highlights:(id)highlights;
- (id)applyFeedback:(id)feedback;
- (id)valueForHighlight:(id)highlight;
@end

@implementation PPSocialHighlightEngagementProvider

- (id)applyFeedback:(id)feedback
{
  feedbackCopy = feedback;
  eventBody = [feedbackCopy eventBody];

  if (!eventBody)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSocialHighlightFeatureProviders.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"feedback.eventBody != nil"}];
  }

  eventBody2 = [feedbackCopy eventBody];
  if ([eventBody2 feedbackType] == self->_feedbackType)
  {
    highlight = [eventBody2 highlight];
    if (highlight)
    {
      v9 = highlight;
      feedbackCreationDate = [eventBody2 feedbackCreationDate];
      v11 = [feedbackCreationDate compare:self->_earliestDateToAccept];

      if (v11 == 1)
      {
        if (!self->_acceptOnlyPrimary || ([eventBody2 highlight], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "isPrimary"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(MEMORY[0x277CBEC28], "isEqual:", v13), v13, v12, (v14 & 1) == 0))
        {
          v15 = (*(self->_groupByBlock + 2))();
          if (v15)
          {
            v16 = [(NSMutableDictionary *)self->_engagementsByKey objectForKeyedSubscript:v15];

            if (v16)
            {
              v17 = [(NSMutableDictionary *)self->_engagementsByKey objectForKeyedSubscript:v15];
              unsignedIntegerValue = [v17 unsignedIntegerValue];

              v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
              [(NSMutableDictionary *)self->_engagementsByKey setObject:v19 forKeyedSubscript:v15];
            }
          }
        }
      }
    }
  }

  selfCopy = self;

  return self;
}

- (id)valueForHighlight:(id)highlight
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

- (PPSocialHighlightEngagementProvider)initWithFeedbackType:(unint64_t)type feedbackGroupByBlock:(id)block highlightKeyBlock:(id)keyBlock intervalSinceNow:(double)now highlights:(id)highlights
{
  blockCopy = block;
  keyBlockCopy = keyBlock;
  highlightsCopy = highlights;
  v39.receiver = self;
  v39.super_class = PPSocialHighlightEngagementProvider;
  v15 = [(PPSocialHighlightEngagementProvider *)&v39 init];
  v16 = v15;
  if (v15)
  {
    v15->_feedbackType = type;
    v17 = [blockCopy copy];
    groupByBlock = v16->_groupByBlock;
    v16->_groupByBlock = v17;

    v19 = [keyBlockCopy copy];
    keyBlock = v16->_keyBlock;
    v16->_keyBlock = v19;

    v21 = objc_alloc(MEMORY[0x277CBEB98]);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __127__PPSocialHighlightEngagementProvider_initWithFeedbackType_feedbackGroupByBlock_highlightKeyBlock_intervalSinceNow_highlights___block_invoke;
    v37[3] = &unk_278975578;
    v38 = keyBlockCopy;
    v22 = [highlightsCopy _pas_mappedArrayWithTransform:v37];
    v23 = [v21 initWithArray:v22];

    v24 = objc_alloc(MEMORY[0x277CBEB38]);
    v25 = [MEMORY[0x277CBEA60] _pas_proxyArrayWithObject:&unk_284784230 repetitions:{objc_msgSend(v23, "count")}];
    allObjects = [v23 allObjects];
    v27 = [v24 initWithObjects:v25 forKeys:allObjects];
    engagementsByKey = v16->_engagementsByKey;
    v16->_engagementsByKey = v27;

    v29 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-now];
    earliestDateToAccept = v16->_earliestDateToAccept;
    v16->_earliestDateToAccept = v29;

    feedbackType = v16->_feedbackType;
    v35 = type != 9 && feedbackType != 2 && type != 3 && feedbackType != 4;
    v16->_acceptOnlyPrimary = v35;
  }

  return v16;
}

- (PPSocialHighlightEngagementProvider)initWithFeedbackType:(unint64_t)type feedbackGroupByBlock:(id)block highlightKeyBlock:(id)keyBlock highlights:(id)highlights
{
  highlightsCopy = highlights;
  keyBlockCopy = keyBlock;
  blockCopy = block;
  v13 = objc_opt_new();
  [v13 timeIntervalSince1970];
  v14 = [(PPSocialHighlightEngagementProvider *)self initWithFeedbackType:type feedbackGroupByBlock:blockCopy highlightKeyBlock:keyBlockCopy intervalSinceNow:highlightsCopy highlights:?];

  return v14;
}

@end
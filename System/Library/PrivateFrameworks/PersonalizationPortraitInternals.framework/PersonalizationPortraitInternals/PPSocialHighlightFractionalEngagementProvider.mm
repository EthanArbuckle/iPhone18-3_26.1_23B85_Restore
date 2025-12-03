@interface PPSocialHighlightFractionalEngagementProvider
- (PPSocialHighlightFractionalEngagementProvider)initWithFeedbackGroupByBlock:(id)block highlightKeyBlock:(id)keyBlock highlights:(id)highlights;
- (id)applyFeedback:(id)feedback;
- (id)valueForHighlight:(id)highlight;
@end

@implementation PPSocialHighlightFractionalEngagementProvider

- (id)applyFeedback:(id)feedback
{
  feedbackCopy = feedback;
  eventBody = [feedbackCopy eventBody];

  if (!eventBody)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSocialHighlightFeatureProviders.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"feedback.eventBody != nil"}];
  }

  eventBody2 = [feedbackCopy eventBody];
  highlight = [eventBody2 highlight];
  if (!highlight || [eventBody2 feedbackType] != 1 && objc_msgSend(eventBody2, "feedbackType"))
  {
    goto LABEL_14;
  }

  highlight2 = [eventBody2 highlight];
  isPrimary = [highlight2 isPrimary];
  v11 = [MEMORY[0x277CBEC28] isEqual:isPrimary];

  if ((v11 & 1) == 0)
  {
    highlight = (*(self->_groupByBlock + 2))();
    if (!highlight)
    {
      goto LABEL_14;
    }

    p_engagementsByKey = &self->_engagementsByKey;
    v13 = [(NSMutableDictionary *)self->_engagementsByKey objectForKeyedSubscript:highlight];
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(NSMutableDictionary *)self->_offeredByKey objectForKeyedSubscript:highlight];

    if (!v15)
    {
      goto LABEL_14;
    }

    if ([eventBody2 feedbackType] != 1)
    {
      if ([eventBody2 feedbackType])
      {
LABEL_14:

        goto LABEL_15;
      }

      p_engagementsByKey = &self->_offeredByKey;
    }

    v16 = [(NSMutableDictionary *)*p_engagementsByKey objectForKeyedSubscript:highlight];
    unsignedIntegerValue = [v16 unsignedIntegerValue];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    [(NSMutableDictionary *)*p_engagementsByKey setObject:v18 forKeyedSubscript:highlight];

    goto LABEL_14;
  }

LABEL_15:

  return self;
}

- (id)valueForHighlight:(id)highlight
{
  v4 = (*(self->_keyBlock + 2))();
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = [(NSMutableDictionary *)self->_engagementsByKey objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [(NSMutableDictionary *)self->_offeredByKey objectForKeyedSubscript:v4];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue | unsignedIntegerValue2)
  {
    if (unsignedIntegerValue)
    {
      v11 = unsignedIntegerValue2 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v9 = &unk_284784248;
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:unsignedIntegerValue / unsignedIntegerValue2];
    }
  }

  else
  {
LABEL_3:
    v9 = &unk_284786100;
  }

  return v9;
}

- (PPSocialHighlightFractionalEngagementProvider)initWithFeedbackGroupByBlock:(id)block highlightKeyBlock:(id)keyBlock highlights:(id)highlights
{
  blockCopy = block;
  keyBlockCopy = keyBlock;
  highlightsCopy = highlights;
  v32.receiver = self;
  v32.super_class = PPSocialHighlightFractionalEngagementProvider;
  v11 = [(PPSocialHighlightFractionalEngagementProvider *)&v32 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __107__PPSocialHighlightFractionalEngagementProvider_initWithFeedbackGroupByBlock_highlightKeyBlock_highlights___block_invoke;
    v30[3] = &unk_278975578;
    v29 = keyBlockCopy;
    v31 = v29;
    v13 = [highlightsCopy _pas_mappedArrayWithTransform:v30];
    v14 = [v12 initWithArray:v13];
    allObjects = [v14 allObjects];

    v16 = objc_alloc(MEMORY[0x277CBEB38]);
    v17 = [MEMORY[0x277CBEA60] _pas_proxyArrayWithObject:&unk_284784230 repetitions:{objc_msgSend(allObjects, "count")}];
    v18 = [v16 initWithObjects:v17 forKeys:allObjects];
    engagementsByKey = v11->_engagementsByKey;
    v11->_engagementsByKey = v18;

    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    v21 = [MEMORY[0x277CBEA60] _pas_proxyArrayWithObject:&unk_284784230 repetitions:{objc_msgSend(allObjects, "count")}];
    v22 = [v20 initWithObjects:v21 forKeys:allObjects];
    offeredByKey = v11->_offeredByKey;
    v11->_offeredByKey = v22;

    v24 = [blockCopy copy];
    groupByBlock = v11->_groupByBlock;
    v11->_groupByBlock = v24;

    v26 = [v29 copy];
    keyBlock = v11->_keyBlock;
    v11->_keyBlock = v26;
  }

  return v11;
}

@end
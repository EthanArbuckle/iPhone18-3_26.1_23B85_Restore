@interface PPSocialHighlightFractionalEngagementProvider
- (PPSocialHighlightFractionalEngagementProvider)initWithFeedbackGroupByBlock:(id)a3 highlightKeyBlock:(id)a4 highlights:(id)a5;
- (id)applyFeedback:(id)a3;
- (id)valueForHighlight:(id)a3;
@end

@implementation PPSocialHighlightFractionalEngagementProvider

- (id)applyFeedback:(id)a3
{
  v5 = a3;
  v6 = [v5 eventBody];

  if (!v6)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PPSocialHighlightFeatureProviders.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"feedback.eventBody != nil"}];
  }

  v7 = [v5 eventBody];
  v8 = [v7 highlight];
  if (!v8 || [v7 feedbackType] != 1 && objc_msgSend(v7, "feedbackType"))
  {
    goto LABEL_14;
  }

  v9 = [v7 highlight];
  v10 = [v9 isPrimary];
  v11 = [MEMORY[0x277CBEC28] isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v8 = (*(self->_groupByBlock + 2))();
    if (!v8)
    {
      goto LABEL_14;
    }

    p_engagementsByKey = &self->_engagementsByKey;
    v13 = [(NSMutableDictionary *)self->_engagementsByKey objectForKeyedSubscript:v8];
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(NSMutableDictionary *)self->_offeredByKey objectForKeyedSubscript:v8];

    if (!v15)
    {
      goto LABEL_14;
    }

    if ([v7 feedbackType] != 1)
    {
      if ([v7 feedbackType])
      {
LABEL_14:

        goto LABEL_15;
      }

      p_engagementsByKey = &self->_offeredByKey;
    }

    v16 = [(NSMutableDictionary *)*p_engagementsByKey objectForKeyedSubscript:v8];
    v17 = [v16 unsignedIntegerValue];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17 + 1];
    [(NSMutableDictionary *)*p_engagementsByKey setObject:v18 forKeyedSubscript:v8];

    goto LABEL_14;
  }

LABEL_15:

  return self;
}

- (id)valueForHighlight:(id)a3
{
  v4 = (*(self->_keyBlock + 2))();
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = [(NSMutableDictionary *)self->_engagementsByKey objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(NSMutableDictionary *)self->_offeredByKey objectForKeyedSubscript:v4];
  v8 = [v7 unsignedIntegerValue];

  if (v6 | v8)
  {
    if (v6)
    {
      v11 = v8 == 0;
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
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6 / v8];
    }
  }

  else
  {
LABEL_3:
    v9 = &unk_284786100;
  }

  return v9;
}

- (PPSocialHighlightFractionalEngagementProvider)initWithFeedbackGroupByBlock:(id)a3 highlightKeyBlock:(id)a4 highlights:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v29 = v9;
    v31 = v29;
    v13 = [v10 _pas_mappedArrayWithTransform:v30];
    v14 = [v12 initWithArray:v13];
    v15 = [v14 allObjects];

    v16 = objc_alloc(MEMORY[0x277CBEB38]);
    v17 = [MEMORY[0x277CBEA60] _pas_proxyArrayWithObject:&unk_284784230 repetitions:{objc_msgSend(v15, "count")}];
    v18 = [v16 initWithObjects:v17 forKeys:v15];
    engagementsByKey = v11->_engagementsByKey;
    v11->_engagementsByKey = v18;

    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    v21 = [MEMORY[0x277CBEA60] _pas_proxyArrayWithObject:&unk_284784230 repetitions:{objc_msgSend(v15, "count")}];
    v22 = [v20 initWithObjects:v21 forKeys:v15];
    offeredByKey = v11->_offeredByKey;
    v11->_offeredByKey = v22;

    v24 = [v8 copy];
    groupByBlock = v11->_groupByBlock;
    v11->_groupByBlock = v24;

    v26 = [v29 copy];
    keyBlock = v11->_keyBlock;
    v11->_keyBlock = v26;
  }

  return v11;
}

@end
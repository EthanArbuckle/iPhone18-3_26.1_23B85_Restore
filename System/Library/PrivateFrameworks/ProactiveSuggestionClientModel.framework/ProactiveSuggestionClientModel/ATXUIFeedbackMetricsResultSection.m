@interface ATXUIFeedbackMetricsResultSection
- (ATXUIFeedbackMetricsResultSection)init;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUIFeedbackMetricsResultSection:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXUIFeedbackMetricsResultSection

- (ATXUIFeedbackMetricsResultSection)init
{
  v14.receiver = self;
  v14.super_class = ATXUIFeedbackMetricsResultSection;
  v2 = [(ATXUIFeedbackMetricsResultSection *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    scoreDistribution = v2->_scoreDistribution;
    v2->_scoreDistribution = v3;

    v5 = objc_opt_new();
    clientModelBreakdown = v2->_clientModelBreakdown;
    v2->_clientModelBreakdown = v5;

    v7 = objc_opt_new();
    consumerSubTypeBreakdown = v2->_consumerSubTypeBreakdown;
    v2->_consumerSubTypeBreakdown = v7;

    v9 = objc_opt_new();
    confidenceBreakdown = v2->_confidenceBreakdown;
    v2->_confidenceBreakdown = v9;

    v11 = objc_opt_new();
    predictionReasonCodeBreakdown = v2->_predictionReasonCodeBreakdown;
    v2->_predictionReasonCodeBreakdown = v11;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIFeedbackMetricsResultSection *)self isEqualToATXUIFeedbackMetricsResultSection:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIFeedbackMetricsResultSection:(id)a3
{
  v4 = a3;
  v5 = self->_scoreDistribution;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(ATXScoreDistribution *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8 = self->_clientModelBreakdown;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(ATXCategoricalAttributeBreakdown *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v11 = self->_consumerSubTypeBreakdown;
  v12 = v11;
  if (v11 == v4[3])
  {
  }

  else
  {
    v13 = [(ATXCategoricalAttributeBreakdown *)v11 isEqual:?];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  v14 = self->_confidenceBreakdown;
  v15 = v14;
  if (v14 == v4[4])
  {
  }

  else
  {
    v16 = [(ATXCategoricalAttributeBreakdown *)v14 isEqual:?];

    if (!v16)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_21;
    }
  }

  v18 = self->_predictionReasonCodeBreakdown;
  v19 = v18;
  if (v18 == v4[5])
  {
    v17 = 1;
  }

  else
  {
    v17 = [(ATXCategoricalAttributeBreakdown *)v18 isEqual:?];
  }

LABEL_21:
  return v17;
}

- (unint64_t)hash
{
  v3 = [(ATXScoreDistribution *)self->_scoreDistribution hash];
  v4 = [(ATXCategoricalAttributeBreakdown *)self->_clientModelBreakdown hash]- v3 + 32 * v3;
  v5 = [(ATXCategoricalAttributeBreakdown *)self->_consumerSubTypeBreakdown hash]- v4 + 32 * v4;
  v6 = [(ATXCategoricalAttributeBreakdown *)self->_confidenceBreakdown hash]- v5 + 32 * v5;
  return [(ATXCategoricalAttributeBreakdown *)self->_predictionReasonCodeBreakdown hash]- v6 + 32 * v6;
}

@end
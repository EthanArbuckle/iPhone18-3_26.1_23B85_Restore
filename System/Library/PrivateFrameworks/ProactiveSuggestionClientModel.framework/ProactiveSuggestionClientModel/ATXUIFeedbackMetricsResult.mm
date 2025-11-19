@interface ATXUIFeedbackMetricsResult
- (ATXUIFeedbackMetricsResult)initWithSpecification:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUIFeedbackMetricsResult:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXUIFeedbackMetricsResult

- (ATXUIFeedbackMetricsResult)initWithSpecification:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = ATXUIFeedbackMetricsResult;
  v11 = [(ATXUIFeedbackMetricsResult *)&v21 init];
  if (v11)
  {
    v12 = -[ATXTrendPlot initWithStartDate:endDate:granularity:binInitialDataProvider:]([ATXTrendPlot alloc], "initWithStartDate:endDate:granularity:binInitialDataProvider:", v9, v10, [v8 trendPlotGranularity], &__block_literal_global_10);
    trendPlot = v11->_trendPlot;
    v11->_trendPlot = v12;

    v14 = objc_opt_new();
    sectionForShownSuggestions = v11->_sectionForShownSuggestions;
    v11->_sectionForShownSuggestions = v14;

    v16 = objc_opt_new();
    sectionForEngagedSuggestions = v11->_sectionForEngagedSuggestions;
    v11->_sectionForEngagedSuggestions = v16;

    v18 = objc_opt_new();
    sectionForRejectedSuggestions = v11->_sectionForRejectedSuggestions;
    v11->_sectionForRejectedSuggestions = v18;
  }

  return v11;
}

id __70__ATXUIFeedbackMetricsResult_initWithSpecification_startDate_endDate___block_invoke()
{
  v0 = objc_opt_new();

  return v0;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIFeedbackMetricsResult *)self isEqualToATXUIFeedbackMetricsResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIFeedbackMetricsResult:(id)a3
{
  v4 = a3;
  v5 = self->_trendPlot;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(ATXTrendPlot *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = self->_sectionForShownSuggestions;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(ATXUIFeedbackMetricsResultSection *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  v11 = self->_sectionForEngagedSuggestions;
  v12 = v11;
  if (v11 == v4[3])
  {
  }

  else
  {
    v13 = [(ATXUIFeedbackMetricsResultSection *)v11 isEqual:?];

    if (!v13)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v15 = self->_sectionForRejectedSuggestions;
  v16 = v15;
  if (v15 == v4[4])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(ATXUIFeedbackMetricsResultSection *)v15 isEqual:?];
  }

LABEL_17:
  return v14;
}

- (unint64_t)hash
{
  v3 = [(ATXTrendPlot *)self->_trendPlot hash];
  v4 = [(ATXUIFeedbackMetricsResultSection *)self->_sectionForShownSuggestions hash]- v3 + 32 * v3;
  v5 = [(ATXUIFeedbackMetricsResultSection *)self->_sectionForEngagedSuggestions hash]- v4 + 32 * v4;
  return [(ATXUIFeedbackMetricsResultSection *)self->_sectionForRejectedSuggestions hash]- v5 + 32 * v5;
}

@end
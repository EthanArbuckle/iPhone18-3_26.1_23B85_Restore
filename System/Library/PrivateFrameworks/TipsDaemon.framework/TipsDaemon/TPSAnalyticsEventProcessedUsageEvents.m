@interface TPSAnalyticsEventProcessedUsageEvents
- (TPSAnalyticsEventProcessedUsageEvents)initWithCoder:(id)a3;
- (TPSAnalyticsEventProcessedUsageEvents)initWithUsageInfo:(id)a3 experiment:(id)a4 preHintUsageCount:(unint64_t)a5 postHintUsageCount:(unint64_t)a6 preHintRangeOutOfBounds:(BOOL)a7 postHintRangeOutOfBounds:(BOOL)a8 date:(id)a9;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventProcessedUsageEvents

- (TPSAnalyticsEventProcessedUsageEvents)initWithUsageInfo:(id)a3 experiment:(id)a4 preHintUsageCount:(unint64_t)a5 postHintUsageCount:(unint64_t)a6 preHintRangeOutOfBounds:(BOOL)a7 postHintRangeOutOfBounds:(BOOL)a8 date:(id)a9
{
  v15 = a3;
  v16 = a4;
  v26.receiver = self;
  v26.super_class = TPSAnalyticsEventProcessedUsageEvents;
  v17 = [(TPSAnalyticsEvent *)&v26 initWithDate:a9];
  if (v17)
  {
    v18 = [v15 identifier];
    v19 = [v18 copy];
    identifier = v17->_identifier;
    v17->_identifier = v19;

    v21 = [v15 firstShownDate];
    firstShownDate = v17->_firstShownDate;
    v17->_firstShownDate = v21;

    v23 = [v15 notifiedDate];
    notifiedDate = v17->_notifiedDate;
    v17->_notifiedDate = v23;

    objc_storeStrong(&v17->_experiment, a4);
    v17->_overrideHoldout = [v15 overrideHoldout];
    v17->_desiredOutcomeCount = [v15 desiredOutcomeCount];
    v17->_preHintUsageCount = a5;
    v17->_postHintUsageCount = a6;
    v17->_preHintRangeOutOfBounds = a7;
    v17->_postHintRangeOutOfBounds = a8;
  }

  return v17;
}

- (TPSAnalyticsEventProcessedUsageEvents)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventProcessedUsageEvents;
  v5 = [(TPSAnalyticsEvent *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D71990]];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"first_shown_date"];
    firstShownDate = v5->_firstShownDate;
    v5->_firstShownDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notified_date"];
    notifiedDate = v5->_notifiedDate;
    v5->_notifiedDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experiment"];
    experiment = v5->_experiment;
    v5->_experiment = v12;

    v5->_overrideHoldout = [v4 decodeBoolForKey:@"overrideHoldout"];
    v5->_desiredOutcomeCount = [v4 decodeIntegerForKey:@"desired_outcome_count"];
    v5->_preHintUsageCount = [v4 decodeIntegerForKey:@"pre_content_view_usage_count"];
    v5->_postHintUsageCount = [v4 decodeIntegerForKey:@"post_content_view_usage_count"];
    v5->_preHintRangeOutOfBounds = [v4 decodeBoolForKey:@"pre_content_hint_range_out_of_bounds"];
    v5->_postHintRangeOutOfBounds = [v4 decodeBoolForKey:@"post_content_range_out_of_bounds"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventProcessedUsageEvents;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{*MEMORY[0x277D71990], v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_firstShownDate forKey:@"first_shown_date"];
  [v4 encodeObject:self->_notifiedDate forKey:@"notified_date"];
  [v4 encodeObject:self->_experiment forKey:@"experiment"];
  [v4 encodeBool:self->_overrideHoldout forKey:@"overrideHoldout"];
  [v4 encodeInteger:self->_desiredOutcomeCount forKey:@"desired_outcome_count"];
  [v4 encodeInteger:self->_preHintUsageCount forKey:@"pre_content_view_usage_count"];
  [v4 encodeInteger:self->_postHintUsageCount forKey:@"post_content_view_usage_count"];
  [v4 encodeBool:self->_preHintRangeOutOfBounds forKey:@"pre_content_hint_range_out_of_bounds"];
  [v4 encodeBool:self->_postHintRangeOutOfBounds forKey:@"post_content_range_out_of_bounds"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_identifier forKeyedSubscript:*MEMORY[0x277D71990]];
  v4 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_firstShownDate timeIntervalSince1970];
  v6 = [v4 numberWithLongLong:llround(v5)];
  [v3 setObject:v6 forKeyedSubscript:@"first_shown_date"];

  v7 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_notifiedDate timeIntervalSince1970];
  v9 = [v7 numberWithLongLong:llround(v8)];
  [v3 setObject:v9 forKeyedSubscript:@"notified_date"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_desiredOutcomeCount];
  [v3 setObject:v10 forKeyedSubscript:@"desired_outcome_count"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_preHintUsageCount];
  [v3 setObject:v11 forKeyedSubscript:@"pre_content_view_usage_count"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_postHintUsageCount];
  [v3 setObject:v12 forKeyedSubscript:@"post_content_view_usage_count"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_preHintRangeOutOfBounds];
  [v3 setObject:v13 forKeyedSubscript:@"pre_content_hint_range_out_of_bounds"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_postHintRangeOutOfBounds];
  [v3 setObject:v14 forKeyedSubscript:@"post_content_range_out_of_bounds"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D716E8], "isSeniorUser")}];
  [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277D71988]];

  experiment = self->_experiment;
  if (experiment)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TPSExperiment identifier](experiment, "identifier")}];
    v18 = [v17 stringValue];
    [v3 setObject:v18 forKeyedSubscript:*MEMORY[0x277D71980]];

    if (self->_overrideHoldout)
    {
      v19 = 1;
    }

    else
    {
      v19 = [(TPSExperiment *)self->_experiment camp];
    }

    v20 = [MEMORY[0x277D715E8] experimentCampIDStringForCamp:v19];
    [v3 setObject:v20 forKeyedSubscript:*MEMORY[0x277D71978]];
  }

  return v3;
}

@end
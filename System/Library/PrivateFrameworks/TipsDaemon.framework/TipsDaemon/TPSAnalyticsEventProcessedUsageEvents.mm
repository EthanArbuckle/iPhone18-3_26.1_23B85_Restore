@interface TPSAnalyticsEventProcessedUsageEvents
- (TPSAnalyticsEventProcessedUsageEvents)initWithCoder:(id)coder;
- (TPSAnalyticsEventProcessedUsageEvents)initWithUsageInfo:(id)info experiment:(id)experiment preHintUsageCount:(unint64_t)count postHintUsageCount:(unint64_t)usageCount preHintRangeOutOfBounds:(BOOL)bounds postHintRangeOutOfBounds:(BOOL)ofBounds date:(id)date;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventProcessedUsageEvents

- (TPSAnalyticsEventProcessedUsageEvents)initWithUsageInfo:(id)info experiment:(id)experiment preHintUsageCount:(unint64_t)count postHintUsageCount:(unint64_t)usageCount preHintRangeOutOfBounds:(BOOL)bounds postHintRangeOutOfBounds:(BOOL)ofBounds date:(id)date
{
  infoCopy = info;
  experimentCopy = experiment;
  v26.receiver = self;
  v26.super_class = TPSAnalyticsEventProcessedUsageEvents;
  v17 = [(TPSAnalyticsEvent *)&v26 initWithDate:date];
  if (v17)
  {
    identifier = [infoCopy identifier];
    v19 = [identifier copy];
    identifier = v17->_identifier;
    v17->_identifier = v19;

    firstShownDate = [infoCopy firstShownDate];
    firstShownDate = v17->_firstShownDate;
    v17->_firstShownDate = firstShownDate;

    notifiedDate = [infoCopy notifiedDate];
    notifiedDate = v17->_notifiedDate;
    v17->_notifiedDate = notifiedDate;

    objc_storeStrong(&v17->_experiment, experiment);
    v17->_overrideHoldout = [infoCopy overrideHoldout];
    v17->_desiredOutcomeCount = [infoCopy desiredOutcomeCount];
    v17->_preHintUsageCount = count;
    v17->_postHintUsageCount = usageCount;
    v17->_preHintRangeOutOfBounds = bounds;
    v17->_postHintRangeOutOfBounds = ofBounds;
  }

  return v17;
}

- (TPSAnalyticsEventProcessedUsageEvents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventProcessedUsageEvents;
  v5 = [(TPSAnalyticsEvent *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D71990]];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"first_shown_date"];
    firstShownDate = v5->_firstShownDate;
    v5->_firstShownDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notified_date"];
    notifiedDate = v5->_notifiedDate;
    v5->_notifiedDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experiment"];
    experiment = v5->_experiment;
    v5->_experiment = v12;

    v5->_overrideHoldout = [coderCopy decodeBoolForKey:@"overrideHoldout"];
    v5->_desiredOutcomeCount = [coderCopy decodeIntegerForKey:@"desired_outcome_count"];
    v5->_preHintUsageCount = [coderCopy decodeIntegerForKey:@"pre_content_view_usage_count"];
    v5->_postHintUsageCount = [coderCopy decodeIntegerForKey:@"post_content_view_usage_count"];
    v5->_preHintRangeOutOfBounds = [coderCopy decodeBoolForKey:@"pre_content_hint_range_out_of_bounds"];
    v5->_postHintRangeOutOfBounds = [coderCopy decodeBoolForKey:@"post_content_range_out_of_bounds"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventProcessedUsageEvents;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{*MEMORY[0x277D71990], v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_firstShownDate forKey:@"first_shown_date"];
  [coderCopy encodeObject:self->_notifiedDate forKey:@"notified_date"];
  [coderCopy encodeObject:self->_experiment forKey:@"experiment"];
  [coderCopy encodeBool:self->_overrideHoldout forKey:@"overrideHoldout"];
  [coderCopy encodeInteger:self->_desiredOutcomeCount forKey:@"desired_outcome_count"];
  [coderCopy encodeInteger:self->_preHintUsageCount forKey:@"pre_content_view_usage_count"];
  [coderCopy encodeInteger:self->_postHintUsageCount forKey:@"post_content_view_usage_count"];
  [coderCopy encodeBool:self->_preHintRangeOutOfBounds forKey:@"pre_content_hint_range_out_of_bounds"];
  [coderCopy encodeBool:self->_postHintRangeOutOfBounds forKey:@"post_content_range_out_of_bounds"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_identifier forKeyedSubscript:*MEMORY[0x277D71990]];
  v4 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_firstShownDate timeIntervalSince1970];
  v6 = [v4 numberWithLongLong:llround(v5)];
  [dictionary setObject:v6 forKeyedSubscript:@"first_shown_date"];

  v7 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_notifiedDate timeIntervalSince1970];
  v9 = [v7 numberWithLongLong:llround(v8)];
  [dictionary setObject:v9 forKeyedSubscript:@"notified_date"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_desiredOutcomeCount];
  [dictionary setObject:v10 forKeyedSubscript:@"desired_outcome_count"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_preHintUsageCount];
  [dictionary setObject:v11 forKeyedSubscript:@"pre_content_view_usage_count"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_postHintUsageCount];
  [dictionary setObject:v12 forKeyedSubscript:@"post_content_view_usage_count"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_preHintRangeOutOfBounds];
  [dictionary setObject:v13 forKeyedSubscript:@"pre_content_hint_range_out_of_bounds"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_postHintRangeOutOfBounds];
  [dictionary setObject:v14 forKeyedSubscript:@"post_content_range_out_of_bounds"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D716E8], "isSeniorUser")}];
  [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277D71988]];

  experiment = self->_experiment;
  if (experiment)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TPSExperiment identifier](experiment, "identifier")}];
    stringValue = [v17 stringValue];
    [dictionary setObject:stringValue forKeyedSubscript:*MEMORY[0x277D71980]];

    if (self->_overrideHoldout)
    {
      camp = 1;
    }

    else
    {
      camp = [(TPSExperiment *)self->_experiment camp];
    }

    v20 = [MEMORY[0x277D715E8] experimentCampIDStringForCamp:camp];
    [dictionary setObject:v20 forKeyedSubscript:*MEMORY[0x277D71978]];
  }

  return dictionary;
}

@end
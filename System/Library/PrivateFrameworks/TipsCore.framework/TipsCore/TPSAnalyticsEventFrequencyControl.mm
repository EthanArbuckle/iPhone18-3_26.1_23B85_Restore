@interface TPSAnalyticsEventFrequencyControl
- (TPSAnalyticsEventFrequencyControl)initWithCoder:(id)coder;
- (TPSAnalyticsEventFrequencyControl)initWithDisplayType:(id)type displayCount:(id)count notDisplayedDueToFrequencyControlCount:(id)controlCount;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDataProvider:(id)provider;
@end

@implementation TPSAnalyticsEventFrequencyControl

- (TPSAnalyticsEventFrequencyControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TPSAnalyticsEventFrequencyControl;
  v5 = [(TPSAnalyticsEvent *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shown_count"];
    displayCount = v5->_displayCount;
    v5->_displayCount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"not_shown_due_to_frequency_control_count"];
    notDisplayedDueToFrequencyControlCount = v5->_notDisplayedDueToFrequencyControlCount;
    v5->_notDisplayedDueToFrequencyControlCount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experiment_ID"];
    experimentID = v5->_experimentID;
    v5->_experimentID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display_type"];
    displayType = v5->_displayType;
    v5->_displayType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experiment_camp_ID"];
    experimentCampID = v5->_experimentCampID;
    v5->_experimentCampID = v14;
  }

  return v5;
}

- (TPSAnalyticsEventFrequencyControl)initWithDisplayType:(id)type displayCount:(id)count notDisplayedDueToFrequencyControlCount:(id)controlCount
{
  typeCopy = type;
  countCopy = count;
  controlCountCopy = controlCount;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventFrequencyControl;
  v12 = [(TPSAnalyticsEvent *)&v15 initWithDate:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayType, type);
    objc_storeStrong(&v13->_displayCount, count);
    objc_storeStrong(&v13->_notDisplayedDueToFrequencyControlCount, controlCount);
  }

  return v13;
}

- (void)setDataProvider:(id)provider
{
  v14.receiver = self;
  v14.super_class = TPSAnalyticsEventFrequencyControl;
  [(TPSAnalyticsEvent *)&v14 setDataProvider:provider];
  experimentID = self->_experimentID;
  if (experimentID)
  {
    v5 = experimentID;
    dataProvider = self->_experimentID;
    self->_experimentID = v5;
  }

  else
  {
    dataProvider = [(TPSAnalyticsEvent *)self dataProvider];
    experimentID = [dataProvider experimentID];
    v8 = self->_experimentID;
    self->_experimentID = experimentID;
  }

  experimentCampID = self->_experimentCampID;
  if (experimentCampID)
  {
    v10 = experimentCampID;
    dataProvider2 = self->_experimentCampID;
    self->_experimentCampID = v10;
  }

  else
  {
    dataProvider2 = [(TPSAnalyticsEvent *)self dataProvider];
    experimentCampID = [dataProvider2 experimentCampID];
    v13 = self->_experimentCampID;
    self->_experimentCampID = experimentCampID;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventFrequencyControl;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_displayCount forKey:{@"shown_count", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_notDisplayedDueToFrequencyControlCount forKey:@"not_shown_due_to_frequency_control_count"];
  [coderCopy encodeObject:self->_experimentID forKey:@"experiment_ID"];
  [coderCopy encodeObject:self->_displayType forKey:@"display_type"];
  [coderCopy encodeObject:self->_experimentCampID forKey:@"experiment_camp_ID"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_displayCount forKeyedSubscript:@"shown_count"];
  [dictionary setObject:self->_notDisplayedDueToFrequencyControlCount forKeyedSubscript:@"not_shown_due_to_frequency_control_count"];
  [dictionary setObject:self->_experimentID forKeyedSubscript:@"experiment_ID"];
  [dictionary setObject:self->_displayType forKeyedSubscript:@"display_type"];
  [dictionary setObject:self->_experimentCampID forKeyedSubscript:@"experiment_camp_ID"];

  return dictionary;
}

@end
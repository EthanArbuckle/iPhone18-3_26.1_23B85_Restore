@interface TPSAnalyticsEventFrequencyControl
- (TPSAnalyticsEventFrequencyControl)initWithCoder:(id)a3;
- (TPSAnalyticsEventFrequencyControl)initWithDisplayType:(id)a3 displayCount:(id)a4 notDisplayedDueToFrequencyControlCount:(id)a5;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setDataProvider:(id)a3;
@end

@implementation TPSAnalyticsEventFrequencyControl

- (TPSAnalyticsEventFrequencyControl)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TPSAnalyticsEventFrequencyControl;
  v5 = [(TPSAnalyticsEvent *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shown_count"];
    displayCount = v5->_displayCount;
    v5->_displayCount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"not_shown_due_to_frequency_control_count"];
    notDisplayedDueToFrequencyControlCount = v5->_notDisplayedDueToFrequencyControlCount;
    v5->_notDisplayedDueToFrequencyControlCount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experiment_ID"];
    experimentID = v5->_experimentID;
    v5->_experimentID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"display_type"];
    displayType = v5->_displayType;
    v5->_displayType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experiment_camp_ID"];
    experimentCampID = v5->_experimentCampID;
    v5->_experimentCampID = v14;
  }

  return v5;
}

- (TPSAnalyticsEventFrequencyControl)initWithDisplayType:(id)a3 displayCount:(id)a4 notDisplayedDueToFrequencyControlCount:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventFrequencyControl;
  v12 = [(TPSAnalyticsEvent *)&v15 initWithDate:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayType, a3);
    objc_storeStrong(&v13->_displayCount, a4);
    objc_storeStrong(&v13->_notDisplayedDueToFrequencyControlCount, a5);
  }

  return v13;
}

- (void)setDataProvider:(id)a3
{
  v14.receiver = self;
  v14.super_class = TPSAnalyticsEventFrequencyControl;
  [(TPSAnalyticsEvent *)&v14 setDataProvider:a3];
  experimentID = self->_experimentID;
  if (experimentID)
  {
    v5 = experimentID;
    v6 = self->_experimentID;
    self->_experimentID = v5;
  }

  else
  {
    v6 = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [v6 experimentID];
    v8 = self->_experimentID;
    self->_experimentID = v7;
  }

  experimentCampID = self->_experimentCampID;
  if (experimentCampID)
  {
    v10 = experimentCampID;
    v11 = self->_experimentCampID;
    self->_experimentCampID = v10;
  }

  else
  {
    v11 = [(TPSAnalyticsEvent *)self dataProvider];
    v12 = [v11 experimentCampID];
    v13 = self->_experimentCampID;
    self->_experimentCampID = v12;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventFrequencyControl;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_displayCount forKey:{@"shown_count", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_notDisplayedDueToFrequencyControlCount forKey:@"not_shown_due_to_frequency_control_count"];
  [v4 encodeObject:self->_experimentID forKey:@"experiment_ID"];
  [v4 encodeObject:self->_displayType forKey:@"display_type"];
  [v4 encodeObject:self->_experimentCampID forKey:@"experiment_camp_ID"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_displayCount forKeyedSubscript:@"shown_count"];
  [v3 setObject:self->_notDisplayedDueToFrequencyControlCount forKeyedSubscript:@"not_shown_due_to_frequency_control_count"];
  [v3 setObject:self->_experimentID forKeyedSubscript:@"experiment_ID"];
  [v3 setObject:self->_displayType forKeyedSubscript:@"display_type"];
  [v3 setObject:self->_experimentCampID forKeyedSubscript:@"experiment_camp_ID"];

  return v3;
}

@end
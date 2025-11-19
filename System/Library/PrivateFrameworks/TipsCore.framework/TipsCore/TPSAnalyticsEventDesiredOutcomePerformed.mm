@interface TPSAnalyticsEventDesiredOutcomePerformed
- (TPSAnalyticsEventDesiredOutcomePerformed)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 correlationID:(id)a4 displayType:(id)a5 overrideHoldout:(BOOL)a6 context:(id)a7 lastHintDisplayedDate:(id)a8 desiredOutcomePerformedDate:(id)a9;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setDataProvider:(id)a3;
@end

@implementation TPSAnalyticsEventDesiredOutcomePerformed

- (id)_initWithTipID:(id)a3 correlationID:(id)a4 displayType:(id)a5 overrideHoldout:(BOOL)a6 context:(id)a7 lastHintDisplayedDate:(id)a8 desiredOutcomePerformedDate:(id)a9
{
  v24 = a6;
  v25 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v26.receiver = self;
  v26.super_class = TPSAnalyticsEventDesiredOutcomePerformed;
  v20 = [(TPSAnalyticsEvent *)&v26 initWithDate:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_tipID, a3);
    objc_storeStrong(&v21->_correlationID, a4);
    objc_storeStrong(&v21->_context, a7);
    objc_storeStrong(&v21->_displayType, a5);
    v22 = -1.0;
    if (v18 && v19)
    {
      [v19 timeIntervalSinceDate:{v18, -1.0}];
    }

    v21->_timeToDesiredOutcome = v22;
    if (v24)
    {
      objc_storeStrong(&v21->_experimentCampID, @"overrideHoldout");
    }
  }

  return v21;
}

- (TPSAnalyticsEventDesiredOutcomePerformed)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TPSAnalyticsEventDesiredOutcomePerformed;
  v5 = [(TPSAnalyticsEvent *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle_ID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experiment_ID"];
    experimentID = v5->_experimentID;
    v5->_experimentID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experiment_camp_ID"];
    experimentCampID = v5->_experimentCampID;
    v5->_experimentCampID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"display_type"];
    displayType = v5->_displayType;
    v5->_displayType = v18;

    [v4 decodeDoubleForKey:@"time_to_desired_outcome"];
    v5->_timeToDesiredOutcome = v20;
    v5->_displayCount = [v4 decodeIntegerForKey:@"display_count"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventDesiredOutcomePerformed;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [v4 encodeObject:self->_context forKey:@"context"];
  [v4 encodeObject:self->_experimentID forKey:@"experiment_ID"];
  [v4 encodeObject:self->_experimentCampID forKey:@"experiment_ID"];
  [v4 encodeObject:self->_displayType forKey:@"display_type"];
  [v4 encodeDouble:@"time_to_desired_outcome" forKey:self->_timeToDesiredOutcome];
  [v4 encodeInteger:self->_displayCount forKey:@"display_count"];
}

- (void)setDataProvider:(id)a3
{
  v20.receiver = self;
  v20.super_class = TPSAnalyticsEventDesiredOutcomePerformed;
  [(TPSAnalyticsEvent *)&v20 setDataProvider:a3];
  correlationID = self->_correlationID;
  if (correlationID)
  {
    v5 = correlationID;
    v6 = self->_correlationID;
    self->_correlationID = v5;
  }

  else
  {
    v6 = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [v6 correlationIDForIdentifier:self->_tipID];
    v8 = self->_correlationID;
    self->_correlationID = v7;
  }

  if (self->_displayCount)
  {
    self->_displayCount = 1;
  }

  else
  {
    v9 = [(TPSAnalyticsEvent *)self dataProvider];
    self->_displayCount = [v9 hintDisplayedCountForIdentifier:self->_tipID];
  }

  experimentID = self->_experimentID;
  if (experimentID)
  {
    v11 = experimentID;
    v12 = self->_experimentID;
    self->_experimentID = v11;
  }

  else
  {
    v12 = [(TPSAnalyticsEvent *)self dataProvider];
    v13 = [v12 experimentID];
    v14 = self->_experimentID;
    self->_experimentID = v13;
  }

  experimentCampID = self->_experimentCampID;
  if (experimentCampID)
  {
    v16 = experimentCampID;
    v17 = self->_experimentCampID;
    self->_experimentCampID = v16;
  }

  else
  {
    v17 = [(TPSAnalyticsEvent *)self dataProvider];
    v18 = [v17 experimentCampID];
    v19 = self->_experimentCampID;
    self->_experimentCampID = v18;
  }
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [v3 setObject:self->_bundleID forKeyedSubscript:@"bundle_ID"];
  [v3 setObject:self->_context forKeyedSubscript:@"context"];
  [v3 setObject:self->_experimentID forKeyedSubscript:@"experiment_ID"];
  [v3 setObject:self->_experimentCampID forKeyedSubscript:@"experiment_camp_ID"];
  [v3 setObject:self->_displayType forKeyedSubscript:@"display_type"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_displayCount];
  [v3 setObject:v4 forKeyedSubscript:@"display_count"];

  timeToDesiredOutcome = self->_timeToDesiredOutcome;
  if (timeToDesiredOutcome == -1.0)
  {
    [v3 setObject:0 forKeyedSubscript:@"time_to_desired_outcome"];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:timeToDesiredOutcome];
    [v3 setObject:v6 forKeyedSubscript:@"time_to_desired_outcome"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v7 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end
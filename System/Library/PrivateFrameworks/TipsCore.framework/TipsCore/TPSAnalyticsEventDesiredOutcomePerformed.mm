@interface TPSAnalyticsEventDesiredOutcomePerformed
- (TPSAnalyticsEventDesiredOutcomePerformed)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d correlationID:(id)iD displayType:(id)type overrideHoldout:(BOOL)holdout context:(id)context lastHintDisplayedDate:(id)date desiredOutcomePerformedDate:(id)performedDate;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDataProvider:(id)provider;
@end

@implementation TPSAnalyticsEventDesiredOutcomePerformed

- (id)_initWithTipID:(id)d correlationID:(id)iD displayType:(id)type overrideHoldout:(BOOL)holdout context:(id)context lastHintDisplayedDate:(id)date desiredOutcomePerformedDate:(id)performedDate
{
  holdoutCopy = holdout;
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  contextCopy = context;
  dateCopy = date;
  performedDateCopy = performedDate;
  v26.receiver = self;
  v26.super_class = TPSAnalyticsEventDesiredOutcomePerformed;
  v20 = [(TPSAnalyticsEvent *)&v26 initWithDate:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_tipID, d);
    objc_storeStrong(&v21->_correlationID, iD);
    objc_storeStrong(&v21->_context, context);
    objc_storeStrong(&v21->_displayType, type);
    v22 = -1.0;
    if (dateCopy && performedDateCopy)
    {
      [performedDateCopy timeIntervalSinceDate:{dateCopy, -1.0}];
    }

    v21->_timeToDesiredOutcome = v22;
    if (holdoutCopy)
    {
      objc_storeStrong(&v21->_experimentCampID, @"overrideHoldout");
    }
  }

  return v21;
}

- (TPSAnalyticsEventDesiredOutcomePerformed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = TPSAnalyticsEventDesiredOutcomePerformed;
  v5 = [(TPSAnalyticsEvent *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle_ID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experiment_ID"];
    experimentID = v5->_experimentID;
    v5->_experimentID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experiment_camp_ID"];
    experimentCampID = v5->_experimentCampID;
    v5->_experimentCampID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display_type"];
    displayType = v5->_displayType;
    v5->_displayType = v18;

    [coderCopy decodeDoubleForKey:@"time_to_desired_outcome"];
    v5->_timeToDesiredOutcome = v20;
    v5->_displayCount = [coderCopy decodeIntegerForKey:@"display_count"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventDesiredOutcomePerformed;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_experimentID forKey:@"experiment_ID"];
  [coderCopy encodeObject:self->_experimentCampID forKey:@"experiment_ID"];
  [coderCopy encodeObject:self->_displayType forKey:@"display_type"];
  [coderCopy encodeDouble:@"time_to_desired_outcome" forKey:self->_timeToDesiredOutcome];
  [coderCopy encodeInteger:self->_displayCount forKey:@"display_count"];
}

- (void)setDataProvider:(id)provider
{
  v20.receiver = self;
  v20.super_class = TPSAnalyticsEventDesiredOutcomePerformed;
  [(TPSAnalyticsEvent *)&v20 setDataProvider:provider];
  correlationID = self->_correlationID;
  if (correlationID)
  {
    v5 = correlationID;
    dataProvider = self->_correlationID;
    self->_correlationID = v5;
  }

  else
  {
    dataProvider = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [dataProvider correlationIDForIdentifier:self->_tipID];
    v8 = self->_correlationID;
    self->_correlationID = v7;
  }

  if (self->_displayCount)
  {
    self->_displayCount = 1;
  }

  else
  {
    dataProvider2 = [(TPSAnalyticsEvent *)self dataProvider];
    self->_displayCount = [dataProvider2 hintDisplayedCountForIdentifier:self->_tipID];
  }

  experimentID = self->_experimentID;
  if (experimentID)
  {
    v11 = experimentID;
    dataProvider3 = self->_experimentID;
    self->_experimentID = v11;
  }

  else
  {
    dataProvider3 = [(TPSAnalyticsEvent *)self dataProvider];
    experimentID = [dataProvider3 experimentID];
    v14 = self->_experimentID;
    self->_experimentID = experimentID;
  }

  experimentCampID = self->_experimentCampID;
  if (experimentCampID)
  {
    v16 = experimentCampID;
    dataProvider4 = self->_experimentCampID;
    self->_experimentCampID = v16;
  }

  else
  {
    dataProvider4 = [(TPSAnalyticsEvent *)self dataProvider];
    experimentCampID = [dataProvider4 experimentCampID];
    v19 = self->_experimentCampID;
    self->_experimentCampID = experimentCampID;
  }
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [dictionary setObject:self->_bundleID forKeyedSubscript:@"bundle_ID"];
  [dictionary setObject:self->_context forKeyedSubscript:@"context"];
  [dictionary setObject:self->_experimentID forKeyedSubscript:@"experiment_ID"];
  [dictionary setObject:self->_experimentCampID forKeyedSubscript:@"experiment_camp_ID"];
  [dictionary setObject:self->_displayType forKeyedSubscript:@"display_type"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_displayCount];
  [dictionary setObject:v4 forKeyedSubscript:@"display_count"];

  timeToDesiredOutcome = self->_timeToDesiredOutcome;
  if (timeToDesiredOutcome == -1.0)
  {
    [dictionary setObject:0 forKeyedSubscript:@"time_to_desired_outcome"];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:timeToDesiredOutcome];
    [dictionary setObject:v6 forKeyedSubscript:@"time_to_desired_outcome"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v7 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end
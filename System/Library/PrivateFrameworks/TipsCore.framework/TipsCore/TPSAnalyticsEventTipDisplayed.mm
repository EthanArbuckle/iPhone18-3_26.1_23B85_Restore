@interface TPSAnalyticsEventTipDisplayed
+ (id)eventWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context displayType:(unint64_t)type usageFlags:(unint64_t)flags experiment:(id)experiment overrideHoldout:(BOOL)self0 date:(id)self1;
- (TPSAnalyticsEventTipDisplayed)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context displayType:(unint64_t)type usageFlags:(unint64_t)flags experiment:(id)experiment overrideHoldout:(BOOL)self0 date:(id)self1;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDataProvider:(id)provider;
@end

@implementation TPSAnalyticsEventTipDisplayed

- (TPSAnalyticsEventTipDisplayed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = TPSAnalyticsEventTipDisplayed;
  v5 = [(TPSAnalyticsEvent *)&v20 initWithCoder:coderCopy];
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

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display_type"];
    v5->_displayType = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usage_flags"];
    v5->_usageFlags = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display_count"];
    v5->_displayCount = [v16 unsignedIntegerValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experiment"];
    experiment = v5->_experiment;
    v5->_experiment = v17;

    v5->_overrideHoldout = [coderCopy decodeBoolForKey:@"override_holdout"];
  }

  return v5;
}

- (id)_initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context displayType:(unint64_t)type usageFlags:(unint64_t)flags experiment:(id)experiment overrideHoldout:(BOOL)self0 date:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  contextCopy = context;
  experimentCopy = experiment;
  v26.receiver = self;
  v26.super_class = TPSAnalyticsEventTipDisplayed;
  v19 = [(TPSAnalyticsEvent *)&v26 initWithDate:date];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_tipID, d);
    objc_storeStrong(&v20->_correlationID, iD);
    objc_storeStrong(&v20->_bundleID, bundleID);
    objc_storeStrong(&v20->_context, context);
    v20->_displayType = type;
    v20->_usageFlags = flags;
    objc_storeStrong(&v20->_experiment, experiment);
    v20->_overrideHoldout = holdout;
  }

  return v20;
}

+ (id)eventWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context displayType:(unint64_t)type usageFlags:(unint64_t)flags experiment:(id)experiment overrideHoldout:(BOOL)self0 date:(id)self1
{
  dateCopy = date;
  experimentCopy = experiment;
  contextCopy = context;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  LOBYTE(v26) = holdout;
  v24 = [[self alloc] _initWithTipID:dCopy correlationID:iDCopy bundleID:bundleIDCopy context:contextCopy displayType:type usageFlags:flags experiment:experimentCopy overrideHoldout:v26 date:dateCopy];

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = TPSAnalyticsEventTipDisplayed;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v8 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v8.receiver, v8.super_class}];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_displayType];
  [coderCopy encodeObject:v5 forKey:@"display_type"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_usageFlags];
  [coderCopy encodeObject:v6 forKey:@"usage_flags"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_displayCount];
  [coderCopy encodeObject:v7 forKey:@"display_count"];

  [coderCopy encodeObject:self->_experiment forKey:@"experiment"];
  [coderCopy encodeBool:self->_overrideHoldout forKey:@"override_holdout"];
}

- (void)setDataProvider:(id)provider
{
  v10.receiver = self;
  v10.super_class = TPSAnalyticsEventTipDisplayed;
  [(TPSAnalyticsEvent *)&v10 setDataProvider:provider];
  if (self->_displayCount)
  {
    self->_displayCount = 1;
  }

  else
  {
    dataProvider = [(TPSAnalyticsEvent *)self dataProvider];
    self->_displayCount = [dataProvider hintDisplayedCountForIdentifier:self->_tipID];
  }

  correlationID = self->_correlationID;
  if (correlationID)
  {
    v6 = correlationID;
    dataProvider2 = self->_correlationID;
    self->_correlationID = v6;
  }

  else
  {
    dataProvider2 = [(TPSAnalyticsEvent *)self dataProvider];
    v8 = [dataProvider2 correlationIDForIdentifier:self->_tipID];
    v9 = self->_correlationID;
    self->_correlationID = v8;
  }
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [v3 setObject:self->_bundleID forKeyedSubscript:@"bundle_ID"];
  [v3 setObject:self->_context forKeyedSubscript:@"context"];
  v4 = [TPSAnalyticsCommonDefines displayTypeStringForDisplayType:self->_displayType];
  [v3 setObject:v4 forKeyedSubscript:@"display_type"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_displayCount];
  [v3 setObject:v5 forKeyedSubscript:@"display_count"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TPSExperiment identifier](self->_experiment, "identifier")}];
  stringValue = [v6 stringValue];
  [v3 setObject:stringValue forKeyedSubscript:@"experiment_ID"];

  if (self->_overrideHoldout)
  {
    [v3 setObject:@"overrideHoldout" forKeyedSubscript:@"experiment_camp_ID"];
  }

  else
  {
    v8 = [TPSAnalyticsCommonDefines experimentCampIDStringForCamp:[(TPSExperiment *)self->_experiment camp]];
    [v3 setObject:v8 forKeyedSubscript:@"experiment_camp_ID"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v9 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end
@interface TPSAnalyticsEventTipNotDisplayed
- (TPSAnalyticsEventTipNotDisplayed)initWithCoder:(id)a3;
- (TPSAnalyticsEventTipNotDisplayed)initWithReason:(id)a3 lastOfferedTipID:(id)a4 lastOfferedCorrelationID:(id)a5 lastOfferedBundleID:(id)a6 lastOfferedContext:(id)a7 date:(id)a8;
- (TPSAnalyticsEventTipNotDisplayed)initWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 reason:(id)a6 context:(id)a7 date:(id)a8 displayType:(id)a9;
- (TPSAnalyticsEventTipNotDisplayed)initWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 reason:(int64_t)a6 context:(id)a7 date:(id)a8;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setDataProvider:(id)a3;
@end

@implementation TPSAnalyticsEventTipNotDisplayed

- (TPSAnalyticsEventTipNotDisplayed)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventTipNotDisplayed;
  v5 = [(TPSAnalyticsEvent *)&v19 initWithCoder:v4];
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

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"display_type"];
    displayType = v5->_displayType;
    v5->_displayType = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v16;
  }

  return v5;
}

- (TPSAnalyticsEventTipNotDisplayed)initWithReason:(id)a3 lastOfferedTipID:(id)a4 lastOfferedCorrelationID:(id)a5 lastOfferedBundleID:(id)a6 lastOfferedContext:(id)a7 date:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v19)
  {
    v19 = [MEMORY[0x1E695DF00] date];
  }

  v20 = [(TPSAnalyticsEventTipNotDisplayed *)self initWithTipID:v15 correlationID:v16 bundleID:v17 reason:v14 context:v18 date:v19 displayType:0];

  return v20;
}

- (TPSAnalyticsEventTipNotDisplayed)initWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 reason:(int64_t)a6 context:(id)a7 date:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (!v18)
  {
    v18 = [MEMORY[0x1E695DF00] date];
  }

  v19 = [TPSAnalyticsCommonDefines ineligibleReasonStringForReason:a6];
  v20 = [(TPSAnalyticsEventTipNotDisplayed *)self initWithTipID:v14 correlationID:v15 bundleID:v16 reason:v19 context:v17 date:v18 displayType:0];

  return v20;
}

- (TPSAnalyticsEventTipNotDisplayed)initWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 reason:(id)a6 context:(id)a7 date:(id)a8 displayType:(id)a9
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v22 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  if (!v17)
  {
    v17 = [MEMORY[0x1E695DF00] date];
  }

  v27.receiver = self;
  v27.super_class = TPSAnalyticsEventTipNotDisplayed;
  v19 = [(TPSAnalyticsEvent *)&v27 initWithDate:v17, v22];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_tipID, a3);
    objc_storeStrong(&v20->_correlationID, a4);
    objc_storeStrong(&v20->_bundleID, a5);
    objc_storeStrong(&v20->_context, a7);
    objc_storeStrong(&v20->_displayType, a9);
    objc_storeStrong(&v20->_reason, a6);
  }

  return v20;
}

- (void)setDataProvider:(id)a3
{
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventTipNotDisplayed;
  [(TPSAnalyticsEvent *)&v19 setDataProvider:a3];
  context = self->_context;
  if (context)
  {
    v5 = context;
    v6 = self->_context;
    self->_context = v5;
  }

  else
  {
    v6 = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [v6 contextForIdentifier:self->_tipID];
    v8 = self->_context;
    self->_context = v7;
  }

  correlationID = self->_correlationID;
  if (correlationID)
  {
    v10 = correlationID;
    v11 = self->_correlationID;
    self->_correlationID = v10;
  }

  else
  {
    v11 = [(TPSAnalyticsEvent *)self dataProvider];
    v12 = [v11 correlationIDForIdentifier:self->_tipID];
    v13 = self->_correlationID;
    self->_correlationID = v12;
  }

  displayType = self->_displayType;
  if (displayType)
  {
    v15 = displayType;
    v16 = self->_displayType;
    self->_displayType = v15;
  }

  else
  {
    v16 = [(TPSAnalyticsEvent *)self dataProvider];
    v17 = [v16 displayTypeForIdentifier:self->_tipID];
    v18 = self->_displayType;
    self->_displayType = v17;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventTipNotDisplayed;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [v4 encodeObject:self->_context forKey:@"context"];
  [v4 encodeObject:self->_displayType forKey:@"display_type"];
  [v4 encodeObject:self->_reason forKey:@"reason"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [v3 setObject:self->_bundleID forKeyedSubscript:@"bundle_ID"];
  [v3 setObject:self->_context forKeyedSubscript:@"context"];
  [v3 setObject:self->_reason forKeyedSubscript:@"reason"];

  return v3;
}

@end
@interface TPSAnalyticsEventTipNotDisplayed
- (TPSAnalyticsEventTipNotDisplayed)initWithCoder:(id)coder;
- (TPSAnalyticsEventTipNotDisplayed)initWithReason:(id)reason lastOfferedTipID:(id)d lastOfferedCorrelationID:(id)iD lastOfferedBundleID:(id)bundleID lastOfferedContext:(id)context date:(id)date;
- (TPSAnalyticsEventTipNotDisplayed)initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID reason:(id)reason context:(id)context date:(id)date displayType:(id)type;
- (TPSAnalyticsEventTipNotDisplayed)initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID reason:(int64_t)reason context:(id)context date:(id)date;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDataProvider:(id)provider;
@end

@implementation TPSAnalyticsEventTipNotDisplayed

- (TPSAnalyticsEventTipNotDisplayed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventTipNotDisplayed;
  v5 = [(TPSAnalyticsEvent *)&v19 initWithCoder:coderCopy];
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
    displayType = v5->_displayType;
    v5->_displayType = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v16;
  }

  return v5;
}

- (TPSAnalyticsEventTipNotDisplayed)initWithReason:(id)reason lastOfferedTipID:(id)d lastOfferedCorrelationID:(id)iD lastOfferedBundleID:(id)bundleID lastOfferedContext:(id)context date:(id)date
{
  reasonCopy = reason;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  contextCopy = context;
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x1E695DF00] date];
  }

  v20 = [(TPSAnalyticsEventTipNotDisplayed *)self initWithTipID:dCopy correlationID:iDCopy bundleID:bundleIDCopy reason:reasonCopy context:contextCopy date:dateCopy displayType:0];

  return v20;
}

- (TPSAnalyticsEventTipNotDisplayed)initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID reason:(int64_t)reason context:(id)context date:(id)date
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  contextCopy = context;
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x1E695DF00] date];
  }

  v19 = [TPSAnalyticsCommonDefines ineligibleReasonStringForReason:reason];
  v20 = [(TPSAnalyticsEventTipNotDisplayed *)self initWithTipID:dCopy correlationID:iDCopy bundleID:bundleIDCopy reason:v19 context:contextCopy date:dateCopy displayType:0];

  return v20;
}

- (TPSAnalyticsEventTipNotDisplayed)initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID reason:(id)reason context:(id)context date:(id)date displayType:(id)type
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  reasonCopy = reason;
  contextCopy = context;
  dateCopy = date;
  typeCopy = type;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x1E695DF00] date];
  }

  v27.receiver = self;
  v27.super_class = TPSAnalyticsEventTipNotDisplayed;
  reasonCopy = [(TPSAnalyticsEvent *)&v27 initWithDate:dateCopy, reasonCopy];
  v20 = reasonCopy;
  if (reasonCopy)
  {
    objc_storeStrong(&reasonCopy->_tipID, d);
    objc_storeStrong(&v20->_correlationID, iD);
    objc_storeStrong(&v20->_bundleID, bundleID);
    objc_storeStrong(&v20->_context, context);
    objc_storeStrong(&v20->_displayType, type);
    objc_storeStrong(&v20->_reason, reason);
  }

  return v20;
}

- (void)setDataProvider:(id)provider
{
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventTipNotDisplayed;
  [(TPSAnalyticsEvent *)&v19 setDataProvider:provider];
  context = self->_context;
  if (context)
  {
    v5 = context;
    dataProvider = self->_context;
    self->_context = v5;
  }

  else
  {
    dataProvider = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [dataProvider contextForIdentifier:self->_tipID];
    v8 = self->_context;
    self->_context = v7;
  }

  correlationID = self->_correlationID;
  if (correlationID)
  {
    v10 = correlationID;
    dataProvider2 = self->_correlationID;
    self->_correlationID = v10;
  }

  else
  {
    dataProvider2 = [(TPSAnalyticsEvent *)self dataProvider];
    v12 = [dataProvider2 correlationIDForIdentifier:self->_tipID];
    v13 = self->_correlationID;
    self->_correlationID = v12;
  }

  displayType = self->_displayType;
  if (displayType)
  {
    v15 = displayType;
    dataProvider3 = self->_displayType;
    self->_displayType = v15;
  }

  else
  {
    dataProvider3 = [(TPSAnalyticsEvent *)self dataProvider];
    v17 = [dataProvider3 displayTypeForIdentifier:self->_tipID];
    v18 = self->_displayType;
    self->_displayType = v17;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventTipNotDisplayed;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_displayType forKey:@"display_type"];
  [coderCopy encodeObject:self->_reason forKey:@"reason"];
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
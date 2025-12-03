@interface TPSAnalyticsEventContentIneligible
+ (id)eventWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context displayType:(unint64_t)type reason:(int64_t)reason date:(id)date;
- (TPSAnalyticsEventContentIneligible)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context displayType:(unint64_t)type reason:(int64_t)reason date:(id)date;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDataProvider:(id)provider;
@end

@implementation TPSAnalyticsEventContentIneligible

- (TPSAnalyticsEventContentIneligible)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = TPSAnalyticsEventContentIneligible;
  v5 = [(TPSAnalyticsEvent *)&v18 initWithCoder:coderCopy];
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

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display_count"];
    v5->_displayCount = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    v5->_reason = [v16 integerValue];
  }

  return v5;
}

- (id)_initWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context displayType:(unint64_t)type reason:(int64_t)reason date:(id)date
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = TPSAnalyticsEventContentIneligible;
  v18 = [(TPSAnalyticsEvent *)&v23 initWithDate:date];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_tipID, d);
    objc_storeStrong(&v19->_correlationID, iD);
    objc_storeStrong(&v19->_bundleID, bundleID);
    objc_storeStrong(&v19->_context, context);
    v19->_displayType = type;
    v19->_reason = reason;
  }

  return v19;
}

+ (id)eventWithTipID:(id)d correlationID:(id)iD bundleID:(id)bundleID context:(id)context displayType:(unint64_t)type reason:(int64_t)reason date:(id)date
{
  dateCopy = date;
  contextCopy = context;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  v21 = [[self alloc] _initWithTipID:dCopy correlationID:iDCopy bundleID:bundleIDCopy context:contextCopy displayType:type reason:reason date:dateCopy];

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = TPSAnalyticsEventContentIneligible;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v8 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v8.receiver, v8.super_class}];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_displayType];
  [coderCopy encodeObject:v5 forKey:@"display_type"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_displayCount];
  [coderCopy encodeObject:v6 forKey:@"display_count"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reason];
  [coderCopy encodeObject:v7 forKey:@"reason"];
}

- (void)setDataProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentIneligible;
  [(TPSAnalyticsEvent *)&v5 setDataProvider:provider];
  if (self->_displayCount)
  {
    self->_displayCount = 1;
  }

  else
  {
    dataProvider = [(TPSAnalyticsEvent *)self dataProvider];
    self->_displayCount = [dataProvider hintDisplayedCountForIdentifier:self->_tipID];
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

  v6 = [TPSAnalyticsCommonDefines ineligibleReasonStringForReason:self->_reason];
  [v3 setObject:v6 forKeyedSubscript:@"reason"];

  return v3;
}

@end
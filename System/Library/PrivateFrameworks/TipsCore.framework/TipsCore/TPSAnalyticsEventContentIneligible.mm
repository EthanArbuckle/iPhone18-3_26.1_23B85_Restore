@interface TPSAnalyticsEventContentIneligible
+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 context:(id)a6 displayType:(unint64_t)a7 reason:(int64_t)a8 date:(id)a9;
- (TPSAnalyticsEventContentIneligible)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 context:(id)a6 displayType:(unint64_t)a7 reason:(int64_t)a8 date:(id)a9;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setDataProvider:(id)a3;
@end

@implementation TPSAnalyticsEventContentIneligible

- (TPSAnalyticsEventContentIneligible)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TPSAnalyticsEventContentIneligible;
  v5 = [(TPSAnalyticsEvent *)&v18 initWithCoder:v4];
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
    v5->_displayType = [v14 unsignedIntegerValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"display_count"];
    v5->_displayCount = [v15 unsignedIntegerValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    v5->_reason = [v16 integerValue];
  }

  return v5;
}

- (id)_initWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 context:(id)a6 displayType:(unint64_t)a7 reason:(int64_t)a8 date:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v23.receiver = self;
  v23.super_class = TPSAnalyticsEventContentIneligible;
  v18 = [(TPSAnalyticsEvent *)&v23 initWithDate:a9];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_tipID, a3);
    objc_storeStrong(&v19->_correlationID, a4);
    objc_storeStrong(&v19->_bundleID, a5);
    objc_storeStrong(&v19->_context, a6);
    v19->_displayType = a7;
    v19->_reason = a8;
  }

  return v19;
}

+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 bundleID:(id)a5 context:(id)a6 displayType:(unint64_t)a7 reason:(int64_t)a8 date:(id)a9
{
  v16 = a9;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [[a1 alloc] _initWithTipID:v20 correlationID:v19 bundleID:v18 context:v17 displayType:a7 reason:a8 date:v16];

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = TPSAnalyticsEventContentIneligible;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v8 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v8.receiver, v8.super_class}];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [v4 encodeObject:self->_context forKey:@"context"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_displayType];
  [v4 encodeObject:v5 forKey:@"display_type"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_displayCount];
  [v4 encodeObject:v6 forKey:@"display_count"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reason];
  [v4 encodeObject:v7 forKey:@"reason"];
}

- (void)setDataProvider:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentIneligible;
  [(TPSAnalyticsEvent *)&v5 setDataProvider:a3];
  if (self->_displayCount)
  {
    self->_displayCount = 1;
  }

  else
  {
    v4 = [(TPSAnalyticsEvent *)self dataProvider];
    self->_displayCount = [v4 hintDisplayedCountForIdentifier:self->_tipID];
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
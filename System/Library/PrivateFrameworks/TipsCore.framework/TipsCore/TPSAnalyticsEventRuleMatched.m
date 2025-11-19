@interface TPSAnalyticsEventRuleMatched
+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 ruleID:(id)a5;
- (TPSAnalyticsEventRuleMatched)initWithCoder:(id)a3;
- (id)_initWithTipID:(id)a3 correlationID:(id)a4 ruleID:(id)a5;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventRuleMatched

- (TPSAnalyticsEventRuleMatched)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventRuleMatched;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rule_ID"];
    ruleID = v5->_ruleID;
    v5->_ruleID = v10;
  }

  return v5;
}

- (id)_initWithTipID:(id)a3 correlationID:(id)a4 ruleID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventRuleMatched;
  v12 = [(TPSAnalyticsEvent *)&v15 initWithDate:0];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_tipID, a3);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 6, a5);
  }

  return p_isa;
}

+ (id)eventWithTipID:(id)a3 correlationID:(id)a4 ruleID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithTipID:v10 correlationID:v9 ruleID:v8];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventRuleMatched;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_ruleID forKey:@"rule_ID"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [v3 setObject:self->_ruleID forKeyedSubscript:@"rule_ID"];

  return v3;
}

@end
@interface TPSAnalyticsEventRuleMatched
+ (id)eventWithTipID:(id)d correlationID:(id)iD ruleID:(id)ruleID;
- (TPSAnalyticsEventRuleMatched)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d correlationID:(id)iD ruleID:(id)ruleID;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventRuleMatched

- (TPSAnalyticsEventRuleMatched)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventRuleMatched;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rule_ID"];
    ruleID = v5->_ruleID;
    v5->_ruleID = v10;
  }

  return v5;
}

- (id)_initWithTipID:(id)d correlationID:(id)iD ruleID:(id)ruleID
{
  dCopy = d;
  iDCopy = iD;
  ruleIDCopy = ruleID;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventRuleMatched;
  v12 = [(TPSAnalyticsEvent *)&v15 initWithDate:0];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_tipID, d);
    objc_storeStrong(p_isa + 5, iD);
    objc_storeStrong(p_isa + 6, ruleID);
  }

  return p_isa;
}

+ (id)eventWithTipID:(id)d correlationID:(id)iD ruleID:(id)ruleID
{
  ruleIDCopy = ruleID;
  iDCopy = iD;
  dCopy = d;
  v11 = [[self alloc] _initWithTipID:dCopy correlationID:iDCopy ruleID:ruleIDCopy];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventRuleMatched;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_ruleID forKey:@"rule_ID"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [dictionary setObject:self->_ruleID forKeyedSubscript:@"rule_ID"];

  return dictionary;
}

@end
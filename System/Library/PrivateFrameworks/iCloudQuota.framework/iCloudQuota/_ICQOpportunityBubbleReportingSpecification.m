@interface _ICQOpportunityBubbleReportingSpecification
- (_ICQOpportunityBubbleReportingSpecification)initWithServerDictionary:(id)a3;
- (id)_getDismissReportingRuleFromServerDict:(id)a3;
- (void)_setDisplayRuleFromServerDict:(id)a3;
@end

@implementation _ICQOpportunityBubbleReportingSpecification

- (_ICQOpportunityBubbleReportingSpecification)initWithServerDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _ICQOpportunityBubbleReportingSpecification;
  v5 = [(_ICQOpportunityBubbleReportingSpecification *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(_ICQOpportunityBubbleReportingSpecification *)v5 _setDisplayRuleFromServerDict:v4];
    v7 = [(_ICQOpportunityBubbleReportingSpecification *)v6 _getDismissReportingRuleFromServerDict:v4];
    dimissServerParam = v6->_dimissServerParam;
    v6->_dimissServerParam = v7;
  }

  return v6;
}

- (void)_setDisplayRuleFromServerDict:(id)a3
{
  v7 = [a3 objectForKeyedSubscript:@"rulesForDisplay"];
  v4 = [v7 objectForKey:@"delegateDecision"];

  if (v4)
  {
    self->_displayRuleType = 1;
  }

  else
  {
    self->_displayRuleType = 2;
    v5 = [v7 objectForKeyedSubscript:@"alwaysShow"];
    v6 = [v5 isEqualToString:@"true"];

    if (v6)
    {
      self->_displayRuleServerAlwaysShow = 1;
    }

    else
    {
      self->_displayRuleServerAlwaysShow = 0;
    }
  }
}

- (id)_getDismissReportingRuleFromServerDict:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"onDismiss"];
  v5 = [v4 objectForKeyedSubscript:@"onDismiss"];
  v6 = [v5 isEqualToString:@"UNIFIED_MESSAGING"];

  if (v6)
  {
    self->_dismissRuleType = 1;
LABEL_4:
    v7 = v4;
    goto LABEL_10;
  }

  self->_dismissRuleType = 2;
  objc_storeStrong(&self->_dimissServerParam, v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v12 = 136315394;
      Name = class_getName(v9);
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v12, 0x16u);
    }
  }

  v7 = 0;
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

@end
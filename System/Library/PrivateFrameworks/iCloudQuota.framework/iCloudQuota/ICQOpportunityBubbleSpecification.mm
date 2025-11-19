@interface ICQOpportunityBubbleSpecification
- (ICQOpportunityBubbleSpecification)initWithOpportunityBubble:(id)a3 andOpportunitySheet:(id)a4;
- (id)serverUIURL;
@end

@implementation ICQOpportunityBubbleSpecification

- (ICQOpportunityBubbleSpecification)initWithOpportunityBubble:(id)a3 andOpportunitySheet:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = ICQOpportunityBubbleSpecification;
  v8 = [(ICQOpportunityBubbleSpecification *)&v27 init];
  if (!v8)
  {
LABEL_10:
    v20 = v8;
    goto LABEL_16;
  }

  v9 = [v6 objectForKeyedSubscript:@"appId"];
  appId = v8->_appId;
  v8->_appId = v9;

  v11 = v8->_appId;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v6 objectForKeyedSubscript:@"opportunityBubbleDetails"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(ICQOpportunityFlowSpecification *)[ICQOpportunityBubbleDetailsSpecification alloc] initWithServerDictionary:v12];
      bubbleDetails = v8->_bubbleDetails;
      v8->_bubbleDetails = v13;
    }

    if (v7)
    {
      v15 = [v7 objectForKeyedSubscript:@"opportunitySheetDetails"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [(ICQOpportunityFlowSpecification *)[ICQOpportunitySheetDetailsSpecification alloc] initWithServerDictionary:v15];
        sheetDetails = v8->_sheetDetails;
        v8->_sheetDetails = v16;
      }
    }

    v18 = [[_ICQOpportunityBubbleReportingSpecification alloc] initWithServerDictionary:v6];
    reportingDetails = v8->_reportingDetails;
    v8->_reportingDetails = v18;

    goto LABEL_10;
  }

  if (v8->_appId)
  {
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      Name = class_getName(v22);
      v24 = v8->_appId;
      *buf = 136315394;
      v29 = Name;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
    }
  }

  v20 = 0;
LABEL_16:

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)serverUIURL
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ICQOpportunityBubbleSpecification *)self bubbleDetails];

  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(ICQOpportunityBubbleSpecification *)self bubbleDetails];
    v5 = [v4 actions];

    v3 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [v8 serverUIURL];

          if (v9)
          {
            v3 = [v8 serverUIURL];
            goto LABEL_12;
          }
        }

        v3 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
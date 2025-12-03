@interface ICQOpportunityBubbleSpecification
- (ICQOpportunityBubbleSpecification)initWithOpportunityBubble:(id)bubble andOpportunitySheet:(id)sheet;
- (id)serverUIURL;
@end

@implementation ICQOpportunityBubbleSpecification

- (ICQOpportunityBubbleSpecification)initWithOpportunityBubble:(id)bubble andOpportunitySheet:(id)sheet
{
  v32 = *MEMORY[0x277D85DE8];
  bubbleCopy = bubble;
  sheetCopy = sheet;
  v27.receiver = self;
  v27.super_class = ICQOpportunityBubbleSpecification;
  v8 = [(ICQOpportunityBubbleSpecification *)&v27 init];
  if (!v8)
  {
LABEL_10:
    v20 = v8;
    goto LABEL_16;
  }

  v9 = [bubbleCopy objectForKeyedSubscript:@"appId"];
  appId = v8->_appId;
  v8->_appId = v9;

  v11 = v8->_appId;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [bubbleCopy objectForKeyedSubscript:@"opportunityBubbleDetails"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(ICQOpportunityFlowSpecification *)[ICQOpportunityBubbleDetailsSpecification alloc] initWithServerDictionary:v12];
      bubbleDetails = v8->_bubbleDetails;
      v8->_bubbleDetails = v13;
    }

    if (sheetCopy)
    {
      v15 = [sheetCopy objectForKeyedSubscript:@"opportunitySheetDetails"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [(ICQOpportunityFlowSpecification *)[ICQOpportunitySheetDetailsSpecification alloc] initWithServerDictionary:v15];
        sheetDetails = v8->_sheetDetails;
        v8->_sheetDetails = v16;
      }
    }

    v18 = [[_ICQOpportunityBubbleReportingSpecification alloc] initWithServerDictionary:bubbleCopy];
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
  bubbleDetails = [(ICQOpportunityBubbleSpecification *)self bubbleDetails];

  if (bubbleDetails)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    bubbleDetails2 = [(ICQOpportunityBubbleSpecification *)self bubbleDetails];
    actions = [bubbleDetails2 actions];

    bubbleDetails = [actions countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (bubbleDetails)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != bubbleDetails; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(actions);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          serverUIURL = [v8 serverUIURL];

          if (serverUIURL)
          {
            bubbleDetails = [v8 serverUIURL];
            goto LABEL_12;
          }
        }

        bubbleDetails = [actions countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (bubbleDetails)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v10 = *MEMORY[0x277D85DE8];

  return bubbleDetails;
}

@end
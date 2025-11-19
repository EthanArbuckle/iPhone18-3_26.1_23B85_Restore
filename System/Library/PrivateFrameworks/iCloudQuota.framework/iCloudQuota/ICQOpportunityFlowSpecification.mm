@interface ICQOpportunityFlowSpecification
- (ICQOpportunityFlowSpecification)initWithServerDictionary:(id)a3;
- (void)makeActionsFromServerDict:(id)a3;
- (void)makeMessageFromServerDict:(id)a3;
@end

@implementation ICQOpportunityFlowSpecification

- (ICQOpportunityFlowSpecification)initWithServerDictionary:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ICQOpportunityFlowSpecification;
  v5 = [(ICQOpportunityFlowSpecification *)&v21 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 objectForKeyedSubscript:@"title"];
  title = v5->_title;
  v5->_title = v6;

  v8 = v5->_title;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v5->_title)
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      Name = class_getName(v13);
      v15 = v5->_title;
      *buf = 136315394;
      v23 = Name;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = [v4 objectForKeyedSubscript:@"imageDetails"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v9)
    {
      v16 = _ICQGetLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = class_getName(v17);
        *buf = 136315394;
        v23 = v18;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    goto LABEL_13;
  }

  v10 = [[_ICQOpportunityBubbleImageDetails alloc] initWithServerDictionary:v9];
  imageDetails = v5->_imageDetails;
  v5->_imageDetails = v10;

  [(ICQOpportunityFlowSpecification *)v5 makeMessageFromServerDict:v4];
  [(ICQOpportunityFlowSpecification *)v5 makeActionsFromServerDict:v4];

LABEL_5:
  v12 = v5;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)makeMessageFromServerDict:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"message"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_message, v5);
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = @"message";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Missing message property %@ in opportunityBubble: %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)makeActionsFromServerDict:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"actions"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = self;
    v28 = v5;
    v29 = v4;
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = v6;
    v33 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v33)
    {
      v32 = *v36;
      v30 = v8;
      v31 = v7;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(v8);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v25 = _ICQGetLogSystem();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v10;
              _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "Malformed actions property in opportunityBubble: %@", buf, 0xCu);
            }

            actions = v8;
            v5 = v28;
            v24 = v31;
            goto LABEL_28;
          }

          v11 = v10;
          v12 = [(__CFString *)v11 objectForKeyedSubscript:@"btnTitle"];
          if (v12)
          {
            v34 = [(__CFString *)v11 objectForKeyedSubscript:@"btnAction"];
            v13 = _ICQActionForServerActionString(v34);
            v14 = [(__CFString *)v11 objectForKeyedSubscript:@"btnActParams"];
            v15 = _ICQActionParametersForServerActionParameters(v13, v14, 0);
            v16 = [(__CFString *)v11 objectForKeyedSubscript:@"btnId"];
            if (v16)
            {
              if (v15)
              {
                v17 = [v15 mutableCopy];
              }

              else
              {
                v17 = objc_opt_new();
              }

              v19 = v17;
              [v17 setObject:v16 forKey:@"ServerLinkId"];
              v20 = [(__CFString *)v11 objectForKeyedSubscript:@"btnDefault"];
              if (v20)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v19 setObject:v20 forKeyedSubscript:@"btnDefault"];
                }
              }

              v21 = [v19 copy];

              v15 = v21;
              v8 = v30;
              v7 = v31;
            }

            v18 = [ICQLink linkWithText:v12 options:0 action:v13 parameters:v15];
            [v7 addObject:v18];
          }

          else
          {
            v18 = _ICQGetLogSystem();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v11;
              _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "Missing title from server action dictionary %@", buf, 0xCu);
            }
          }
        }

        v33 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    v22 = [v7 copy];
    actions = v27->_actions;
    v27->_actions = v22;
    v24 = v7;
    v5 = v28;
LABEL_28:

    v4 = v29;
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = @"actions";
      v42 = 2112;
      v43 = v4;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Missing message property %@ in opportunityBubble: %@", buf, 0x16u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end
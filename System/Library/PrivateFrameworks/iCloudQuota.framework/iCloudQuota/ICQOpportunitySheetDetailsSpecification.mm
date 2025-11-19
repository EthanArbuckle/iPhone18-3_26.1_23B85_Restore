@interface ICQOpportunitySheetDetailsSpecification
- (id)messageForKey:(id)a3;
- (void)makeMessageFromServerDict:(id)a3;
@end

@implementation ICQOpportunitySheetDetailsSpecification

- (void)makeMessageFromServerDict:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"message"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = self;
    v22 = v5;
    v23 = v4;
    v6 = v5;
    v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:{@"key", v21}];
          v14 = [v12 objectForKeyedSubscript:@"format"];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v24 setObject:v15 forKeyedSubscript:v13];
          }

          else
          {
            v17 = _ICQGetLogSystem();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v7;
              _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "Malformed key/format properties in message property of opportunitySheet: %@", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    v18 = [v24 copy];
    messagesInfo = v21->_messagesInfo;
    v21->_messagesInfo = v18;

    v5 = v22;
    v4 = v23;
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = @"message";
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Missing message property %@ in opportunityBubble: %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)messageForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICQOpportunitySheetDetailsSpecification *)self messagesInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(ICQOpportunitySheetDetailsSpecification *)self messagesInfo];
    v6 = [v7 objectForKeyedSubscript:@"default"];
  }

  return v6;
}

@end
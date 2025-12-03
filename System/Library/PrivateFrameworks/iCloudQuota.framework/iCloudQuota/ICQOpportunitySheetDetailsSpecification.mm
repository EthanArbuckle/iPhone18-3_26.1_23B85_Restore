@interface ICQOpportunitySheetDetailsSpecification
- (id)messageForKey:(id)key;
- (void)makeMessageFromServerDict:(id)dict;
@end

@implementation ICQOpportunitySheetDetailsSpecification

- (void)makeMessageFromServerDict:(id)dict
{
  v34 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v5 = [dictCopy objectForKeyedSubscript:@"message"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v22 = v5;
    v23 = dictCopy;
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
          v13 = [v12 objectForKeyedSubscript:{@"key", selfCopy}];
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
    messagesInfo = selfCopy->_messagesInfo;
    selfCopy->_messagesInfo = v18;

    v5 = v22;
    dictCopy = v23;
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = @"message";
      v32 = 2112;
      v33 = dictCopy;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Missing message property %@ in opportunityBubble: %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)messageForKey:(id)key
{
  keyCopy = key;
  messagesInfo = [(ICQOpportunitySheetDetailsSpecification *)self messagesInfo];
  v6 = [messagesInfo objectForKeyedSubscript:keyCopy];

  if (!v6)
  {
    messagesInfo2 = [(ICQOpportunitySheetDetailsSpecification *)self messagesInfo];
    v6 = [messagesInfo2 objectForKeyedSubscript:@"default"];
  }

  return v6;
}

@end
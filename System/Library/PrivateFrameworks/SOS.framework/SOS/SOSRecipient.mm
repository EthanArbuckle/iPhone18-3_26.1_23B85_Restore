@interface SOSRecipient
+ (id)handlesFromRecipients:(id)recipients;
+ (id)reasonsDictionaryFromRecipients:(id)recipients;
@end

@implementation SOSRecipient

+ (id)handlesFromRecipients:(id)recipients
{
  v21 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = recipientsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        handle = [*(*(&v14 + 1) + 8 * i) handle];
        [v4 addObject:handle];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = sos_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "sosRecipient handles: %@", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)reasonsDictionaryFromRecipients:(id)recipients
{
  v23 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = recipientsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "reasons", v16)}];
        handle = [v10 handle];
        [v4 setObject:v11 forKeyedSubscript:handle];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v13 = sos_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_264323000, v13, OS_LOG_TYPE_DEFAULT, "sosRecipient reasonsDict: %@", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end
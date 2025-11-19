@interface ICQInAppAlert
- (BOOL)isEqual:(id)a3;
- (ICQInAppAlert)initWithCoder:(id)a3;
- (ICQInAppAlert)initWithOffer:(id)a3 alertKey:(id)a4;
- (id)actionsForICQLinks:(id)a3 inOffer:(id)a4;
- (id)description;
- (id)initQuotaAlmostFullAlertWithUpgradeLink:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateActionsWithOffer:(id)a3;
@end

@implementation ICQInAppAlert

- (ICQInAppAlert)initWithOffer:(id)a3 alertKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = ICQInAppAlert;
  v8 = [(ICQInAppAlert *)&v22 init];
  if (v8)
  {
    v9 = [v6 alertSpecificationForAlertKey:v7];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 title];
      title = v8->_title;
      v8->_title = v11;

      v13 = [v10 message];
      message = v8->_message;
      v8->_message = v13;

      v15 = [MEMORY[0x277CBEB18] array];
      v16 = [v10 linkForButtonIndex:1];
      v17 = [v10 linkForButtonIndex:2];
      v18 = [v10 linkForButtonIndex:3];
      if (v16)
      {
        [v15 addObject:v16];
      }

      if (v17)
      {
        [v15 addObject:v17];
      }

      if (v18)
      {
        [v15 addObject:v18];
      }

      v19 = [(ICQInAppAlert *)v8 actionsForICQLinks:v15 inOffer:v6];
      actions = v8->_actions;
      v8->_actions = v19;
    }

    else
    {
      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(ICQInAppAlert *)v7 initWithOffer:v6 alertKey:v15];
      }
    }
  }

  return v8;
}

- (id)actionsForICQLinks:(id)a3 inOffer:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [ICQLinkInAppAction alloc];
        v15 = [(ICQLinkInAppAction *)v14 initWithLink:v13 inOffer:v6, v17];
        if (v15)
        {
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICQInAppAlert *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(ICQInAppAlert *)self message];
  [v4 encodeObject:v6 forKey:@"message"];

  v7 = [(ICQInAppAlert *)self actions];
  [v4 encodeObject:v7 forKey:@"actions"];
}

- (ICQInAppAlert)initWithCoder:(id)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ICQInAppAlert;
  v5 = [(ICQInAppAlert *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;

    v10 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    title = self->_title;
    v7 = [v5 title];
    if ([(NSString *)title isEqualToString:v7])
    {
      message = self->_message;
      v9 = [v5 message];
      if ([(NSString *)message isEqualToString:v9])
      {
        actions = self->_actions;
        v11 = [v5 actions];
        v12 = [(NSArray *)actions isEqualToArray:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ICQInAppAlert *)self title];
  v5 = [(ICQInAppAlert *)self message];
  v6 = [(ICQInAppAlert *)self actions];
  v7 = [v3 stringWithFormat:@"ICQInAppAlert - title: %@, message: %@, actions: %@", v4, v5, v6];

  return v7;
}

- (id)initQuotaAlmostFullAlertWithUpgradeLink:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ICQInAppAlert;
  v5 = [(ICQInAppAlert *)&v16 init];
  v6 = v5;
  if (v5)
  {
    title = v5->_title;
    v5->_title = @"[icqctl] iCloud Storage is Almost Full";

    message = v6->_message;
    v6->_message = @"Your storage is almost full. If you run out, new photos won't be synced.";

    v9 = [MEMORY[0x277CBEB18] array];
    v10 = v4;
    v11 = [objc_alloc(MEMORY[0x277D7F370]) initWithAction:100];
    [v11 setValue:@"Free Up Space" forKey:@"_text"];
    v12 = [objc_alloc(MEMORY[0x277D7F370]) initWithAction:1];
    [v12 setValue:@"Cancel" forKey:@"_text"];
    if (v10)
    {
      [v9 addObject:v10];
    }

    if (v11)
    {
      [v9 addObject:v11];
    }

    if (v12)
    {
      [v9 addObject:v12];
    }

    v13 = [(ICQInAppAlert *)v6 actionsForICQLinks:v9 inOffer:0];
    actions = v6->_actions;
    v6->_actions = v13;
  }

  return v6;
}

- (void)updateActionsWithOffer:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(ICQInAppAlert *)self actions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setValue:v4 forKey:@"_offer"];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)initWithOffer:(os_log_t)log alertKey:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Unable to find an alert for key %@ in offer %@", &v3, 0x16u);
}

@end
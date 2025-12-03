@interface ICQInAppAlert
- (BOOL)isEqual:(id)equal;
- (ICQInAppAlert)initWithCoder:(id)coder;
- (ICQInAppAlert)initWithOffer:(id)offer alertKey:(id)key;
- (id)actionsForICQLinks:(id)links inOffer:(id)offer;
- (id)description;
- (id)initQuotaAlmostFullAlertWithUpgradeLink:(id)link;
- (void)encodeWithCoder:(id)coder;
- (void)updateActionsWithOffer:(id)offer;
@end

@implementation ICQInAppAlert

- (ICQInAppAlert)initWithOffer:(id)offer alertKey:(id)key
{
  offerCopy = offer;
  keyCopy = key;
  v22.receiver = self;
  v22.super_class = ICQInAppAlert;
  v8 = [(ICQInAppAlert *)&v22 init];
  if (v8)
  {
    v9 = [offerCopy alertSpecificationForAlertKey:keyCopy];
    v10 = v9;
    if (v9)
    {
      title = [v9 title];
      title = v8->_title;
      v8->_title = title;

      message = [v10 message];
      message = v8->_message;
      v8->_message = message;

      array = [MEMORY[0x277CBEB18] array];
      v16 = [v10 linkForButtonIndex:1];
      v17 = [v10 linkForButtonIndex:2];
      v18 = [v10 linkForButtonIndex:3];
      if (v16)
      {
        [array addObject:v16];
      }

      if (v17)
      {
        [array addObject:v17];
      }

      if (v18)
      {
        [array addObject:v18];
      }

      v19 = [(ICQInAppAlert *)v8 actionsForICQLinks:array inOffer:offerCopy];
      actions = v8->_actions;
      v8->_actions = v19;
    }

    else
    {
      array = _ICQGetLogSystem();
      if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
      {
        [(ICQInAppAlert *)keyCopy initWithOffer:offerCopy alertKey:array];
      }
    }
  }

  return v8;
}

- (id)actionsForICQLinks:(id)links inOffer:(id)offer
{
  v22 = *MEMORY[0x277D85DE8];
  linksCopy = links;
  offerCopy = offer;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = linksCopy;
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
        v15 = [(ICQLinkInAppAction *)v14 initWithLink:v13 inOffer:offerCopy, v17];
        if (v15)
        {
          [array addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return array;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(ICQInAppAlert *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  message = [(ICQInAppAlert *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  actions = [(ICQInAppAlert *)self actions];
  [coderCopy encodeObject:actions forKey:@"actions"];
}

- (ICQInAppAlert)initWithCoder:(id)coder
{
  v17[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ICQInAppAlert;
  v5 = [(ICQInAppAlert *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;

    v10 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    title = self->_title;
    title = [v5 title];
    if ([(NSString *)title isEqualToString:title])
    {
      message = self->_message;
      message = [v5 message];
      if ([(NSString *)message isEqualToString:message])
      {
        actions = self->_actions;
        actions = [v5 actions];
        v12 = [(NSArray *)actions isEqualToArray:actions];
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
  title = [(ICQInAppAlert *)self title];
  message = [(ICQInAppAlert *)self message];
  actions = [(ICQInAppAlert *)self actions];
  v7 = [v3 stringWithFormat:@"ICQInAppAlert - title: %@, message: %@, actions: %@", title, message, actions];

  return v7;
}

- (id)initQuotaAlmostFullAlertWithUpgradeLink:(id)link
{
  linkCopy = link;
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

    array = [MEMORY[0x277CBEB18] array];
    v10 = linkCopy;
    v11 = [objc_alloc(MEMORY[0x277D7F370]) initWithAction:100];
    [v11 setValue:@"Free Up Space" forKey:@"_text"];
    v12 = [objc_alloc(MEMORY[0x277D7F370]) initWithAction:1];
    [v12 setValue:@"Cancel" forKey:@"_text"];
    if (v10)
    {
      [array addObject:v10];
    }

    if (v11)
    {
      [array addObject:v11];
    }

    if (v12)
    {
      [array addObject:v12];
    }

    v13 = [(ICQInAppAlert *)v6 actionsForICQLinks:array inOffer:0];
    actions = v6->_actions;
    v6->_actions = v13;
  }

  return v6;
}

- (void)updateActionsWithOffer:(id)offer
{
  v16 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  actions = [(ICQInAppAlert *)self actions];
  v6 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(actions);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setValue:offerCopy forKey:@"_offer"];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
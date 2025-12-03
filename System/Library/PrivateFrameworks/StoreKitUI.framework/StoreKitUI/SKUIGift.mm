@interface SKUIGift
- (SKUIGift)initWithGiftCategory:(int64_t)category;
- (SKUIGift)initWithItem:(id)item;
- (id)HTTPBodyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)reset;
@end

@implementation SKUIGift

- (SKUIGift)initWithGiftCategory:(int64_t)category
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIGift initWithGiftCategory:];
  }

  v6.receiver = self;
  v6.super_class = SKUIGift;
  result = [(SKUIGift *)&v6 init];
  if (result)
  {
    result->_category = category;
  }

  return result;
}

- (SKUIGift)initWithItem:(id)item
{
  itemCopy = item;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIGift initWithItem:];
  }

  v9.receiver = self;
  v9.super_class = SKUIGift;
  v6 = [(SKUIGift *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

- (id)HTTPBodyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  deliveryDate = [(SKUIGift *)self deliveryDate];
  if (deliveryDate)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v5 setDateFormat:@"yyyy-MM-dd"];
    v6 = [v5 stringFromDate:deliveryDate];
    [v3 setObject:v6 forKey:@"customSendGiftDate"];

    [v3 setObject:@"custom" forKey:@"dateSendType"];
  }

  else
  {
    [v3 setObject:@"today" forKey:@"dateSendType"];
  }

  item = [(SKUIGift *)self item];
  v8 = item;
  if (item)
  {
    primaryItemOffer = [item primaryItemOffer];
    actionParameters = [primaryItemOffer actionParameters];

    if (actionParameters)
    {
      [v3 setObject:actionParameters forKey:@"actionParams"];
    }

    [v3 setObject:@"product" forKey:@"giftType"];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[SKUIGift giftAmount](self, "giftAmount")];
    [v3 setObject:v11 forKey:@"amount"];

    [v3 setObject:@"credit" forKey:@"giftType"];
  }

  message = [(SKUIGift *)self message];
  if ([message length])
  {
    [v3 setObject:message forKey:@"message"];
  }

  recipientAddresses = [(SKUIGift *)self recipientAddresses];
  if ([recipientAddresses count])
  {
    v14 = [recipientAddresses componentsJoinedByString:{@", "}];
    [v3 setObject:v14 forKey:@"toEmail"];
  }

  senderEmailAddress = [(SKUIGift *)self senderEmailAddress];
  if (senderEmailAddress)
  {
    [v3 setObject:senderEmailAddress forKey:@"senderEmail"];
  }

  senderName = [(SKUIGift *)self senderName];
  if (senderName)
  {
    [v3 setObject:senderName forKey:@"fromName"];
  }

  theme = self->_theme;
  if (theme)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SKUIGiftTheme themeIdentifier](theme, "themeIdentifier")}];
    [v3 setObject:v18 forKey:@"fcAdamId"];
  }

  mEMORY[0x277D7FCE0] = [MEMORY[0x277D7FCE0] sharedInstance];
  guid = [mEMORY[0x277D7FCE0] guid];

  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  return v3;
}

- (void)reset
{
  deliveryDate = self->_deliveryDate;
  self->_deliveryDate = 0;

  giftAmountString = self->_giftAmountString;
  self->_giftAmount = 0;
  self->_giftAmountString = 0;

  message = self->_message;
  self->_message = 0;

  recipientAddresses = self->_recipientAddresses;
  self->_recipientAddresses = 0;

  theme = self->_theme;
  self->_theme = 0;

  totalGiftAmountString = self->_totalGiftAmountString;
  self->_totalGiftAmountString = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_category;
  v6 = [(NSDate *)self->_deliveryDate copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_giftAmount;
  v8 = [(NSString *)self->_giftAmountString copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  objc_storeStrong((v5 + 40), self->_item);
  v10 = [(NSString *)self->_message copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSArray *)self->_recipientAddresses copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_senderEmailAddress copyWithZone:zone];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(NSString *)self->_senderName copyWithZone:zone];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  v18 = [(SKUIGiftTheme *)self->_theme copyWithZone:zone];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSString *)self->_totalGiftAmountString copyWithZone:zone];
  v21 = *(v5 + 88);
  *(v5 + 88) = v20;

  return v5;
}

- (void)initWithGiftCategory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGift initWithGiftCategory:]";
}

- (void)initWithItem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGift initWithItem:]";
}

@end
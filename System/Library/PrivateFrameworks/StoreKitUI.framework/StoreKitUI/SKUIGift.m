@interface SKUIGift
- (SKUIGift)initWithGiftCategory:(int64_t)a3;
- (SKUIGift)initWithItem:(id)a3;
- (id)HTTPBodyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)reset;
@end

@implementation SKUIGift

- (SKUIGift)initWithGiftCategory:(int64_t)a3
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
    result->_category = a3;
  }

  return result;
}

- (SKUIGift)initWithItem:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (id)HTTPBodyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(SKUIGift *)self deliveryDate];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v5 setDateFormat:@"yyyy-MM-dd"];
    v6 = [v5 stringFromDate:v4];
    [v3 setObject:v6 forKey:@"customSendGiftDate"];

    [v3 setObject:@"custom" forKey:@"dateSendType"];
  }

  else
  {
    [v3 setObject:@"today" forKey:@"dateSendType"];
  }

  v7 = [(SKUIGift *)self item];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 primaryItemOffer];
    v10 = [v9 actionParameters];

    if (v10)
    {
      [v3 setObject:v10 forKey:@"actionParams"];
    }

    [v3 setObject:@"product" forKey:@"giftType"];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[SKUIGift giftAmount](self, "giftAmount")];
    [v3 setObject:v11 forKey:@"amount"];

    [v3 setObject:@"credit" forKey:@"giftType"];
  }

  v12 = [(SKUIGift *)self message];
  if ([v12 length])
  {
    [v3 setObject:v12 forKey:@"message"];
  }

  v13 = [(SKUIGift *)self recipientAddresses];
  if ([v13 count])
  {
    v14 = [v13 componentsJoinedByString:{@", "}];
    [v3 setObject:v14 forKey:@"toEmail"];
  }

  v15 = [(SKUIGift *)self senderEmailAddress];
  if (v15)
  {
    [v3 setObject:v15 forKey:@"senderEmail"];
  }

  v16 = [(SKUIGift *)self senderName];
  if (v16)
  {
    [v3 setObject:v16 forKey:@"fromName"];
  }

  theme = self->_theme;
  if (theme)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SKUIGiftTheme themeIdentifier](theme, "themeIdentifier")}];
    [v3 setObject:v18 forKey:@"fcAdamId"];
  }

  v19 = [MEMORY[0x277D7FCE0] sharedInstance];
  v20 = [v19 guid];

  if (v20)
  {
    [v3 setObject:v20 forKey:@"guid"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_category;
  v6 = [(NSDate *)self->_deliveryDate copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_giftAmount;
  v8 = [(NSString *)self->_giftAmountString copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  objc_storeStrong((v5 + 40), self->_item);
  v10 = [(NSString *)self->_message copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSArray *)self->_recipientAddresses copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_senderEmailAddress copyWithZone:a3];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(NSString *)self->_senderName copyWithZone:a3];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  v18 = [(SKUIGiftTheme *)self->_theme copyWithZone:a3];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSString *)self->_totalGiftAmountString copyWithZone:a3];
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
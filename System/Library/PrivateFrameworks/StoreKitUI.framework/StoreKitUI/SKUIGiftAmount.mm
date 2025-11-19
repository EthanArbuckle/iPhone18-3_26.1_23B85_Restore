@interface SKUIGiftAmount
- (SKUIGiftAmount)initWithAmountDictionary:(id)a3;
- (id)HTTPBodyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SKUIGiftAmount

- (SKUIGiftAmount)initWithAmountDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftAmount initWithAmountDictionary:];
  }

  v16.receiver = self;
  v16.super_class = SKUIGiftAmount;
  v5 = [(SKUIGiftAmount *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      displayLabel = v5->_displayLabel;
      v5->_displayLabel = v7;
    }

    v9 = [v4 objectForKey:@"partNumber"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      partNumber = v5->_partNumber;
      v5->_partNumber = v10;
    }

    v12 = [v4 objectForKey:@"value"];

    if (objc_opt_respondsToSelector())
    {
      v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:{objc_msgSend(v12, "integerValue")}];
      value = v5->_value;
      v5->_value = v13;
    }
  }

  return v5;
}

- (id)HTTPBodyDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:@"charity" forKey:@"giftType"];
  partNumber = self->_partNumber;
  if (partNumber)
  {
    [v3 setObject:partNumber forKey:@"partNumber"];
  }

  value = self->_value;
  if (value)
  {
    v6 = [(NSNumber *)value stringValue];
    [v3 setObject:v6 forKey:@"amount"];
  }

  v7 = [MEMORY[0x277D7FCE0] sharedInstance];
  v8 = [v7 guid];

  if (v8)
  {
    [v3 setObject:v8 forKey:@"guid"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_displayLabel copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_partNumber copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSNumber *)self->_value copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)initWithAmountDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftAmount initWithAmountDictionary:]";
}

@end
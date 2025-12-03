@interface SKUIGiftAmount
- (SKUIGiftAmount)initWithAmountDictionary:(id)dictionary;
- (id)HTTPBodyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKUIGiftAmount

- (SKUIGiftAmount)initWithAmountDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftAmount initWithAmountDictionary:];
  }

  v16.receiver = self;
  v16.super_class = SKUIGiftAmount;
  v5 = [(SKUIGiftAmount *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      displayLabel = v5->_displayLabel;
      v5->_displayLabel = v7;
    }

    v9 = [dictionaryCopy objectForKey:@"partNumber"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      partNumber = v5->_partNumber;
      v5->_partNumber = v10;
    }

    v12 = [dictionaryCopy objectForKey:@"value"];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"charity" forKey:@"giftType"];
  partNumber = self->_partNumber;
  if (partNumber)
  {
    [dictionary setObject:partNumber forKey:@"partNumber"];
  }

  value = self->_value;
  if (value)
  {
    stringValue = [(NSNumber *)value stringValue];
    [dictionary setObject:stringValue forKey:@"amount"];
  }

  mEMORY[0x277D7FCE0] = [MEMORY[0x277D7FCE0] sharedInstance];
  guid = [mEMORY[0x277D7FCE0] guid];

  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
  }

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_displayLabel copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_partNumber copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSNumber *)self->_value copyWithZone:zone];
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
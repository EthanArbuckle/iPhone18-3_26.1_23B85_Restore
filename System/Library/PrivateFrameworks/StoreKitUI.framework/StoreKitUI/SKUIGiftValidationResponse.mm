@interface SKUIGiftValidationResponse
- (SKUIGiftValidationResponse)initWithValidationDictionary:(id)dictionary;
@end

@implementation SKUIGiftValidationResponse

- (SKUIGiftValidationResponse)initWithValidationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftValidationResponse initWithValidationDictionary:];
  }

  v21.receiver = self;
  v21.super_class = SKUIGiftValidationResponse;
  v5 = [(SKUIGiftValidationResponse *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"status"];
    if (objc_opt_respondsToSelector())
    {
      integerValue = [v6 integerValue];
      v5->_valid = integerValue == 0;
      if (!integerValue)
      {
        v8 = [dictionaryCopy objectForKey:@"amountFormatted"];
        if (!v8)
        {
          v8 = [dictionaryCopy objectForKey:@"totalPriceFormatted"];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 copy];
          totalGiftAmountString = v5->_totalGiftAmountString;
          v5->_totalGiftAmountString = v9;
        }

        v11 = [dictionaryCopy objectForKey:@"giftKey"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_26;
        }

        v12 = [v11 copy];
        giftKey = v5->_giftKey;
        v5->_giftKey = v12;
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }
    }

    else
    {
      v5->_valid = 0;
    }

    v11 = [dictionaryCopy objectForKey:@"errorEntries"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
    {
      v14 = [v11 objectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 objectForKey:@"localizedMessage"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 copy];
          errorString = v5->_errorString;
          v5->_errorString = v16;
        }
      }
    }

    if (v5->_errorString)
    {
      goto LABEL_26;
    }

    giftKey = [dictionaryCopy objectForKey:@"userPresentableErrorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [giftKey copy];
      v19 = v5->_errorString;
      v5->_errorString = v18;
    }

    goto LABEL_25;
  }

LABEL_27:

  return v5;
}

- (void)initWithValidationDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftValidationResponse initWithValidationDictionary:]";
}

@end
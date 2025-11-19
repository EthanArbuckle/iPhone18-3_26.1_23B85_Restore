@interface SKUIItemOffer
- (NSDictionary)lookupDictionary;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)fileSizeText;
- (SKUIItemOffer)initWithButtonText:(id)a3;
- (SKUIItemOffer)initWithCacheRepresentation:(id)a3;
- (SKUIItemOffer)initWithLookupDictionary:(id)a3;
- (SKUIItemOffer)initWithOfferDictionary:(id)a3;
- (SKUIItemOffer)initWithRedownloadToken:(id)a3;
- (int64_t)offerType;
- (void)_addActionParameterWithName:(id)a3 value:(id)a4;
- (void)_setFileSizeWithAssets:(id)a3;
- (void)_setFileSizeWithDeviceSizes:(id)a3;
- (void)_setFileSizeWithFlavors:(id)a3;
@end

@implementation SKUIItemOffer

- (SKUIItemOffer)initWithButtonText:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIItemOffer *)v5 initWithButtonText:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SKUIItemOffer;
  v13 = [(SKUIItemOffer *)&v18 init];
  if (v13)
  {
    v14 = [v4 copy];
    buttonText = v13->_buttonText;
    v13->_buttonText = v14;

    confirmationText = v13->_confirmationText;
    v13->_confirmationText = &stru_2827FFAC8;
  }

  return v13;
}

- (SKUIItemOffer)initWithLookupDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIItemOffer *)v5 initWithLookupDictionary:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v39.receiver = self;
  v39.super_class = SKUIItemOffer;
  v13 = [(SKUIItemOffer *)&v39 init];
  if (v13)
  {
    v14 = [v4 objectForKey:@"buyParams"];
    if (!v14)
    {
      v14 = [v4 objectForKey:@"action-params"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v13->_actionParameters, v14);
    }

    v15 = [v4 objectForKey:@"actionText"];
    objc_opt_class();
    v38 = v15;
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 objectForKey:@"medium"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 uppercaseString];
      }

      else
      {
        v17 = 0;
      }

      v14 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v4 objectForKey:@"priceFormatted"];

    if (!v18)
    {
      v18 = [v4 objectForKey:@"button_text"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v4 objectForKey:@"price"];
    if (objc_opt_respondsToSelector())
    {
      [v20 floatValue];
      v13->_price = price;
    }

    else
    {
      price = v13->_price;
    }

    v36 = v17;
    if (price == 0.0)
    {
      if (v17)
      {
        v22 = v17;
      }

      else
      {
        v22 = v19;
      }

      v23 = [v22 copy];
      buttonText = v13->_buttonText;
      v13->_buttonText = v23;
    }

    else
    {
      objc_storeStrong(&v13->_buttonText, v19);
      v25 = v17;
      buttonText = v13->_confirmationText;
      v13->_confirmationText = v25;
    }

    v26 = [v4 objectForKey:@"assets"];
    v27 = [v4 objectForKey:@"assetFlavors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIItemOffer *)v13 _setFileSizeWithAssets:v26];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SKUIItemOffer *)v13 _setFileSizeWithFlavors:v27];
      }
    }

    v28 = [v4 objectForKey:{@"type", v36}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      offerTypeString = v13->_offerTypeString;
      v13->_offerTypeString = v29;
    }

    v31 = [v4 objectForKey:@"variant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [v31 copy];
      variantIdentifier = v13->_variantIdentifier;
      v13->_variantIdentifier = v32;
    }

    v34 = [v4 objectForKey:@"shouldEnableMessagesExtension"];
    if (v34)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13->_shouldEnableMessagesExtension = [v34 BOOLValue];
      }
    }
  }

  return v13;
}

- (SKUIItemOffer)initWithOfferDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIItemOffer *)v5 initWithOfferDictionary:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v25.receiver = self;
  v25.super_class = SKUIItemOffer;
  v13 = [(SKUIItemOffer *)&v25 init];
  if (v13)
  {
    v14 = [v4 objectForKey:@"action-params"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      actionParameters = v13->_actionParameters;
      v13->_actionParameters = v15;
    }

    v17 = [v4 objectForKey:@"button_text"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      buttonText = v13->_buttonText;
      v13->_buttonText = v18;

      v13->_price = ([(NSString *)v13->_buttonText isEqualToString:@"FREE"]^ 1);
    }

    v20 = [v4 objectForKey:@"confirm-text"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      confirmationText = v13->_confirmationText;
      v13->_confirmationText = v21;
    }

    v23 = [v4 objectForKey:@"assetFlavors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIItemOffer *)v13 _setFileSizeWithFlavors:v23];
    }
  }

  return v13;
}

- (SKUIItemOffer)initWithRedownloadToken:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIItemOffer *)v5 initWithRedownloadToken:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (![v4 length])
  {
    v13 = 0;
    goto LABEL_9;
  }

  v13 = [(SKUIItemOffer *)self init];
  if (v13)
  {
    v14 = [v4 copy];
    actionParameters = v13->_actionParameters;
    v13->_actionParameters = v14;

    buttonText = v13->_buttonText;
    v13->_buttonText = @"FREE";

    self = v13->_confirmationText;
    v13->_confirmationText = @"INSTALL APP";
LABEL_9:
  }

  return v13;
}

- (NSString)fileSizeText
{
  fileSizeText = self->_fileSizeText;
  if (!fileSizeText)
  {
    v4 = [MEMORY[0x277CCA8E8] stringFromByteCount:self->_fileSize countStyle:1];
    v5 = self->_fileSizeText;
    self->_fileSizeText = v4;

    fileSizeText = self->_fileSizeText;
  }

  return fileSizeText;
}

- (NSDictionary)lookupDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    [v3 setObject:actionParameters forKey:@"buyParams"];
  }

  if (self->_price > 0.00000011921)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v4 setObject:v6 forKey:@"price"];
  }

  if (self->_confirmationText)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{self->_confirmationText, @"medium", 0}];
    [v4 setObject:v7 forKey:@"actionText"];
  }

  buttonText = self->_buttonText;
  if (buttonText)
  {
    [v4 setObject:buttonText forKey:@"priceFormatted"];
  }

  offerTypeString = self->_offerTypeString;
  if (offerTypeString)
  {
    [v4 setObject:offerTypeString forKey:@"type"];
  }

  variantIdentifier = self->_variantIdentifier;
  if (variantIdentifier)
  {
    [v4 setObject:variantIdentifier forKey:@"variant"];
  }

  if (self->_shouldEnableMessagesExtension)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v11 forKey:@"shouldEnableMessagesExtension"];
  }

  return v4;
}

- (int64_t)offerType
{
  if ([(NSString *)self->_offerTypeString isEqualToString:@"rent"])
  {
    return 3;
  }

  if ([(NSString *)self->_offerTypeString isEqualToString:@"preorder"])
  {
    return 2;
  }

  if ([(NSString *)self->_offerTypeString isEqualToString:@"complete"])
  {
    return 1;
  }

  if ([(NSString *)self->_offerTypeString isEqualToString:@"get"])
  {
    return 4;
  }

  return 0;
}

- (void)_addActionParameterWithName:(id)a3 value:(id)a4
{
  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(NSString *)actionParameters stringByAppendingFormat:@"&%@=%@", v8, v7];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v7 = a4;
    v8 = a3;
    v9 = [[v10 alloc] initWithFormat:@"%@=%@", v8, v7];
  }

  v11 = v9;

  v12 = self->_actionParameters;
  self->_actionParameters = v11;
}

- (void)_setFileSizeWithDeviceSizes:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v4 = [MEMORY[0x277D69A80] currentDevice];
  v11[0] = [v4 thinnedApplicationVariantIdentifier];
  [v4 compatibleProductType];
  v11[1] = v5 = 0;
  v11[2] = @"universal";
  while (1)
  {
    v6 = v11[v5];
    if (v6)
    {
      break;
    }

LABEL_5:

    if (++v5 == 3)
    {
      goto LABEL_8;
    }
  }

  v7 = [v10 objectForKey:v6];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = [v7 longLongValue];
  fileSizeText = self->_fileSizeText;
  self->_fileSize = v8;
  self->_fileSizeText = 0;

LABEL_8:
}

- (SKUIItemOffer)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22.receiver = self;
    v22.super_class = SKUIItemOffer;
    v5 = [(SKUIItemOffer *)&v22 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"action-params"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 copy];
        actionParameters = v5->_actionParameters;
        v5->_actionParameters = v7;
      }

      v9 = [v4 objectForKey:@"button_text"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 copy];
        buttonText = v5->_buttonText;
        v5->_buttonText = v10;
      }

      v12 = [v4 objectForKey:@"confirm-text"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 copy];
        confirmationText = v5->_confirmationText;
        v5->_confirmationText = v13;
      }

      v15 = [v4 objectForKey:@"fileSize"];

      if (objc_opt_respondsToSelector())
      {
        v5->_fileSize = [v15 longLongValue];
      }

      v16 = [v4 objectForKey:@"fileSizeText"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 copy];
        fileSizeText = v5->_fileSizeText;
        v5->_fileSizeText = v17;
      }

      v19 = [v4 objectForKey:@"price"];

      if (objc_opt_respondsToSelector())
      {
        [v19 floatValue];
        v5->_price = v20;
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_fileSize];
  [v3 setObject:v4 forKey:@"fileSize"];

  *&v5 = self->_price;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v3 setObject:v6 forKey:@"price"];

  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    [v3 setObject:actionParameters forKey:@"action-params"];
  }

  buttonText = self->_buttonText;
  if (buttonText)
  {
    [v3 setObject:buttonText forKey:@"button_text"];
  }

  confirmationText = self->_confirmationText;
  if (confirmationText)
  {
    [v3 setObject:confirmationText forKey:@"confirm-text"];
  }

  fileSizeText = self->_fileSizeText;
  if (fileSizeText)
  {
    [v3 setObject:fileSizeText forKey:@"fileSizeText"];
  }

  return v3;
}

- (void)_setFileSizeWithAssets:(id)a3
{
  v8 = a3;
  v4 = [v8 count];
  v5 = v8;
  if (v4)
  {
    v6 = [v8 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"size"];
      if (objc_opt_respondsToSelector())
      {
        self->_fileSize = [v7 longLongValue];
      }
    }

    v5 = v8;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_setFileSizeWithFlavors:(id)a3
{
  v11 = a3;
  v4 = [v11 count];
  v5 = v11;
  if (v4)
  {
    v6 = [v11 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"fileSize"];
      if (objc_opt_respondsToSelector())
      {
        self->_fileSize = [v7 longLongValue];
      }

      v8 = [v6 objectForKey:@"fileSizeText"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 copy];
        fileSizeText = self->_fileSizeText;
        self->_fileSizeText = v9;
      }
    }

    v5 = v11;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

@end
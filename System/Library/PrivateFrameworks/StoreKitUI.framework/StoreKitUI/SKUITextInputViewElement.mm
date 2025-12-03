@interface SKUITextInputViewElement
+ (BOOL)isTextInputType:(id)type;
+ (id)supportedFeatures;
- (SKUITextInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUITextInputViewElement

- (SKUITextInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v11)
      {
        [(SKUITextInputViewElement *)v11 initWithDOMElement:v12 parent:v13 elementFactory:v14, v15, v16, v17, v18];
      }
    }
  }

  v28.receiver = self;
  v28.super_class = SKUITextInputViewElement;
  v19 = [(SKUIInputViewElement *)&v28 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v19)
  {
    v20 = [elementCopy getAttribute:@"type"];
    if ([v20 isEqualToString:@"email"])
    {
      v21 = 7;
    }

    else
    {
      if (![v20 isEqualToString:@"number"])
      {
        v19->_keyboardType = 0;
        goto LABEL_12;
      }

      v21 = 4;
    }

    v19->_keyboardType = v21;
LABEL_12:
    v22 = [elementCopy getAttribute:@"maxlength"];
    v23 = v22;
    if (v22)
    {
      v19->_maximumLength = [v22 integerValue];
    }

    v24 = [elementCopy getAttribute:@"secure"];
    v25 = v24;
    if (v24)
    {
      v19->_secure = [v24 BOOLValue];
    }

    else if ([v20 isEqualToString:@"password"])
    {
      v19->_secure = 1;
    }

    v26 = [elementCopy getAttribute:@"placeholdertext"];
    if (v26)
    {
      objc_storeStrong(&v19->_placeholderText, v26);
    }
  }

  return v19;
}

+ (BOOL)isTextInputType:(id)type
{
  typeCopy = type;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUITextInputViewElement *)v4 isTextInputType:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  if ([typeCopy isEqualToString:@"number"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"email") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"password"))
  {
    v12 = 1;
  }

  else
  {
    v12 = [typeCopy isEqualToString:@"text"];
  }

  return v12;
}

+ (id)supportedFeatures
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUITextInputViewElement *)v2 supportedFeatures:v3];
      }
    }
  }

  v12[0] = 0x282809008;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  return v10;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUITextInputViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_keyboardType = [(SKUITextInputViewElement *)elementCopy keyboardType];
    self->_maximumLength = [(SKUITextInputViewElement *)elementCopy maximumLength];
  }

  return v6;
}

@end
@interface SKUITextInputViewElement
+ (BOOL)isTextInputType:(id)a3;
+ (id)supportedFeatures;
- (SKUITextInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUITextInputViewElement

- (SKUITextInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v19 = [(SKUIInputViewElement *)&v28 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v19)
  {
    v20 = [v8 getAttribute:@"type"];
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
    v22 = [v8 getAttribute:@"maxlength"];
    v23 = v22;
    if (v22)
    {
      v19->_maximumLength = [v22 integerValue];
    }

    v24 = [v8 getAttribute:@"secure"];
    v25 = v24;
    if (v24)
    {
      v19->_secure = [v24 BOOLValue];
    }

    else if ([v20 isEqualToString:@"password"])
    {
      v19->_secure = 1;
    }

    v26 = [v8 getAttribute:@"placeholdertext"];
    if (v26)
    {
      objc_storeStrong(&v19->_placeholderText, v26);
    }
  }

  return v19;
}

+ (BOOL)isTextInputType:(id)a3
{
  v3 = a3;
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

  if ([v3 isEqualToString:@"number"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"email") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"password"))
  {
    v12 = 1;
  }

  else
  {
    v12 = [v3 isEqualToString:@"text"];
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

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKUITextInputViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_keyboardType = [(SKUITextInputViewElement *)v4 keyboardType];
    self->_maximumLength = [(SKUITextInputViewElement *)v4 maximumLength];
  }

  return v6;
}

@end
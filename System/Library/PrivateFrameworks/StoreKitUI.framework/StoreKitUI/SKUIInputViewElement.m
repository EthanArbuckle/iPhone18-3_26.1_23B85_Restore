@interface SKUIInputViewElement
- (SKUIInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SKUIInputViewElement

- (SKUIInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIInputViewElement initWithDOMElement:parent:elementFactory:];
  }

  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v13 = [v8 getAttribute:@"type"];
    if ([v13 isEqualToString:@"checkbox"])
    {
      v14 = SKUICheckboxInputViewElement;
    }

    else if ([SKUITextInputViewElement isTextInputType:v13])
    {
      v14 = SKUITextInputViewElement;
    }

    else if ([v13 isEqualToString:@"search"])
    {
      v14 = SKUISearchBarViewElement;
    }

    else
    {
      if (![v13 isEqualToString:@"submit"])
      {
        v16.receiver = self;
        v16.super_class = SKUIInputViewElement;
        v12 = [(SKUIViewElement *)&v16 initWithDOMElement:v8 parent:v9 elementFactory:v10];
        goto LABEL_16;
      }

      v14 = SKUISubmitInputViewElement;
    }

    v12 = [[v14 alloc] initWithDOMElement:v8 parent:v9 elementFactory:v10];

LABEL_16:
    goto LABEL_17;
  }

  v17.receiver = self;
  v17.super_class = SKUIInputViewElement;
  v12 = [(SKUIViewElement *)&v17 initWithDOMElement:v8 parent:v9 elementFactory:v10];
LABEL_17:

  return v12;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIInputViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
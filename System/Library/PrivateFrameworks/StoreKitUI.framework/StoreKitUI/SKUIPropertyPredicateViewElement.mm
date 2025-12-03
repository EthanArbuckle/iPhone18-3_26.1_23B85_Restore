@interface SKUIPropertyPredicateViewElement
- (SKUIPropertyPredicateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (id)entityValuePredicate;
@end

@implementation SKUIPropertyPredicateViewElement

- (SKUIPropertyPredicateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPropertyPredicateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v22.receiver = self;
  v22.super_class = SKUIPropertyPredicateViewElement;
  v11 = [(SKUIViewElement *)&v22 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"property"];
    if ([v12 length])
    {
      v13 = [v12 copy];
      property = v11->_property;
      v11->_property = v13;
    }

    v15 = [elementCopy getAttribute:@"value"];
    if ([v15 length])
    {
      v16 = [v15 copy];
      value = v11->_value;
      v11->_value = v16;
    }

    v18 = [elementCopy getAttribute:@"comparisonType"];
    if ([v18 length])
    {
      v19 = v18;
      if ([v19 isEqualToString:@"not-equal"])
      {
        v20 = 1;
      }

      else if ([v19 isEqualToString:@"greater-than"])
      {
        v20 = 2;
      }

      else if ([v19 isEqualToString:@"greater-than-or-equal"])
      {
        v20 = 3;
      }

      else if ([v19 isEqualToString:@"less-than"])
      {
        v20 = 4;
      }

      else if ([v19 isEqualToString:@"less-than-or-equal"])
      {
        v20 = 5;
      }

      else
      {
        v20 = 0;
      }

      v11->_comparisonType = v20;
    }
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SKUIPropertyPredicateViewElement;
  v5 = [(SKUIViewElement *)&v14 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_comparisonType = [(SKUIPropertyPredicateViewElement *)elementCopy comparisonType];
    property = [(SKUIPropertyPredicateViewElement *)elementCopy property];
    v8 = [property copy];
    property = self->_property;
    self->_property = v8;

    value = [(SKUIPropertyPredicateViewElement *)elementCopy value];
    v11 = [value copy];
    value = self->_value;
    self->_value = v11;
  }

  return v6;
}

- (id)entityValuePredicate
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SKUIPropertyPredicateViewElement_entityValuePredicate__block_invoke;
  v4[3] = &unk_2781FCBA8;
  v4[4] = self;
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:v4];

  return v2;
}

uint64_t __56__SKUIPropertyPredicateViewElement_entityValuePredicate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 conformsToProtocol:&unk_2829859E0])
  {
    v7 = v5;
    v8 = [*(a1 + 32) property];
    v9 = [v7 valueForEntityProperty:v8];

    v10 = [*(a1 + 32) value];
    if (objc_opt_respondsToSelector())
    {
      v11 = [*(a1 + 32) property];
      v12 = [v7 nativeValueForStringValue:v10 forProperty:v11];

      v10 = v12;
    }

    v13 = [*(a1 + 32) comparisonType];
    if (v13 == 1)
    {
      if (v9 == v10)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v9 isEqual:v10] ^ 1;
      }

      goto LABEL_26;
    }

    if (!v13)
    {
      if (v9 == v10)
      {
        v14 = 1;
      }

      else
      {
        v14 = [v9 isEqual:v10];
      }

      goto LABEL_26;
    }

    v14 = 0;
    if (!v9 || !v10)
    {
      goto LABEL_26;
    }

    v15 = [v9 compare:v10];
    v16 = [*(a1 + 32) comparisonType];
    if (v16 > 3)
    {
      if (v16 == 4 || v16 == 5)
      {
        v17 = v15 + 1 >= 2;
LABEL_22:
        v14 = !v17;
        goto LABEL_26;
      }
    }

    else
    {
      if (v16 == 2)
      {
        v14 = v15 == 1;
LABEL_26:

        goto LABEL_27;
      }

      if (v16 == 3)
      {
        v17 = v15 >= 2;
        goto LABEL_22;
      }
    }

    __56__SKUIPropertyPredicateViewElement_entityValuePredicate__block_invoke_cold_1();
  }

  v14 = 0;
LABEL_27:

  return v14;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPropertyPredicateViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
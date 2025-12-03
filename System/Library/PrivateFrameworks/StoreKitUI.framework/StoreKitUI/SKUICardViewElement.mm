@interface SKUICardViewElement
- (BOOL)isAdCard;
- (BOOL)isEnabled;
- (SKUICardViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)cardType;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SKUICardViewElement

- (SKUICardViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICardViewElement initWithDOMElement:parent:elementFactory:];
  }

  v15.receiver = self;
  v15.super_class = SKUICardViewElement;
  v11 = [(SKUIViewElement *)&v15 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"disabled"];
    if ([v12 length])
    {
      v13 = [v12 BOOLValue] ^ 1;
    }

    else
    {
      v13 = -1;
    }

    v11->_enabled = v13;
  }

  return v11;
}

- (int64_t)cardType
{
  style = [(SKUICardViewElement *)self style];
  cardType = [style cardType];
  v4 = SKUICardElementTypeForString(cardType);

  return v4;
}

- (BOOL)isAdCard
{
  attributes = [(SKUICardViewElement *)self attributes];
  v3 = [attributes objectForKey:@"isAdCard"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUICardViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_enabled = elementCopy->_enabled;
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SKUICardViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2781FA298;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SKUICardViewElement;
  v5 = blockCopy;
  [(SKUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __51__SKUICardViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = (v3 - 7) > 0x3B || ((1 << (v3 - 7)) & 0x8801E0002000023) == 0;
  if (!v4 || (v3 - 108) <= 0x2C && ((1 << (v3 - 108)) & 0x100040800001) != 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SKUICardViewElement;
  return [(SKUIViewElement *)&v6 isEnabled];
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICardViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
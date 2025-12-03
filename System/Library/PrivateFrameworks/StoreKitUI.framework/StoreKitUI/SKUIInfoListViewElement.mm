@interface SKUIInfoListViewElement
- (SKUIInfoListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)pageComponentType;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SKUIInfoListViewElement

- (SKUIInfoListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIInfoListViewElement initWithDOMElement:parent:elementFactory:];
  }

  v14.receiver = self;
  v14.super_class = SKUIInfoListViewElement;
  v11 = [(SKUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"type"];
    v11->_infoListType = [v12 isEqualToString:@"titleAbove"];
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUIInfoListViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_infoListType = [(SKUIInfoListViewElement *)elementCopy infoListType];
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SKUIInfoListViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2781FA298;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SKUIInfoListViewElement;
  v5 = blockCopy;
  [(SKUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __55__SKUIInfoListViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 56)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (int64_t)pageComponentType
{
  if (self->_infoListType == 1)
  {
    return 27;
  }

  else
  {
    return 26;
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIInfoListViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
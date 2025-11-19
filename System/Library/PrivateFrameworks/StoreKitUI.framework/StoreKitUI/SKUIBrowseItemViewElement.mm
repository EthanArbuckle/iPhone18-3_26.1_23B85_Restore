@interface SKUIBrowseItemViewElement
- (NSArray)metadata;
- (SKUIBrowseItemViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUIBrowseItemViewElement

- (SKUIBrowseItemViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrowseItemViewElement initWithDOMElement:parent:elementFactory:];
  }

  v14.receiver = self;
  v14.super_class = SKUIBrowseItemViewElement;
  v11 = [(SKUIItemViewElement *)&v14 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"expands"];
    *(&v11->super._selected + 1) = [v12 BOOLValue];
  }

  return v11;
}

- (NSArray)metadata
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SKUIBrowseItemViewElement_metadata__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = v3;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __37__SKUIBrowseItemViewElement_metadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 138)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKUIBrowseItemViewElement;
  v5 = [(SKUIItemViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    *(&self->super._selected + 1) = [(SKUIBrowseItemViewElement *)v4 expands];
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrowseItemViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
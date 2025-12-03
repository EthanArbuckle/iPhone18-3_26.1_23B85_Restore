@interface SKUITrackViewElement
- (BOOL)isEnabled;
- (SKUIActionsViewElement)swipeActions;
- (SKUITrackViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SKUITrackViewElement

- (SKUITrackViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITrackViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUITrackViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"disabled"];
    if ([v12 length])
    {
      v13 = [v12 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v13) = -1;
    }

    v11->_enabled = v13;
    v14 = [elementCopy getAttribute:@"selected"];
    if ([v14 length])
    {
      v11->_selected = [v14 BOOLValue];
    }
  }

  return v11;
}

- (SKUIActionsViewElement)swipeActions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__68;
  v10 = __Block_byref_object_dispose__68;
  v11 = 0;
  children = [(SKUITrackViewElement *)self children];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__SKUITrackViewElement_swipeActions__block_invoke;
  v5[3] = &unk_2781FE9B0;
  v5[4] = &v6;
  [children enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__SKUITrackViewElement_swipeActions__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 elementType] == 3)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUITrackViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_enabled = elementCopy->_enabled;
    self->_selected = elementCopy->_selected;
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SKUITrackViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2781FA298;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SKUITrackViewElement;
  v5 = blockCopy;
  [(SKUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __52__SKUITrackViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] != 3)
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
  v6.super_class = SKUITrackViewElement;
  return [(SKUIViewElement *)&v6 isEnabled];
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITrackViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
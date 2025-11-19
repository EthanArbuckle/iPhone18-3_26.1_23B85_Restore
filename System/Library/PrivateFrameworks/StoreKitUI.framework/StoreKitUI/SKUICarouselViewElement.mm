@interface SKUICarouselViewElement
- (SKUICarouselViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (SKUIProgressIndicatorViewElement)progressIndicatorElement;
- (id)applyUpdatesWithElement:(id)a3;
- (void)enumerateChildrenUsingBlock:(id)a3;
@end

@implementation SKUICarouselViewElement

- (SKUICarouselViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICarouselViewElement initWithDOMElement:parent:elementFactory:];
  }

  v15.receiver = self;
  v15.super_class = SKUICarouselViewElement;
  v11 = [(SKUIViewElement *)&v15 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"displayInterval"];
    if ([v12 length])
    {
      [v12 doubleValue];
    }

    else
    {
      v13 = -1.0;
    }

    v11->_displayInterval = v13;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKUICarouselViewElement;
  v5 = [(SKUIViewElement *)&v9 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    [(SKUICarouselViewElement *)v4 displayInterval];
    self->_displayInterval = v7;
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SKUICarouselViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2781FA298;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SKUICarouselViewElement;
  v5 = v4;
  [(SKUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __55__SKUICarouselViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = (v3 - 14) > 0x34 || ((1 << (v3 - 14)) & 0x10000800004001) == 0;
  if (!v4 || v3 == 152)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (SKUIProgressIndicatorViewElement)progressIndicatorElement
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  v2 = [(SKUICarouselViewElement *)self children];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SKUICarouselViewElement_progressIndicatorElement__block_invoke;
  v5[3] = &unk_2781FA548;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__SKUICarouselViewElement_progressIndicatorElement__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 elementType] == 95)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICarouselViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
@interface SKUIColumnViewElement
- (SKUIColumnViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (SKUIHeaderViewElement)headerElement;
- (id)applyUpdatesWithElement:(id)a3;
- (void)enumerateChildrenUsingBlock:(id)a3;
@end

@implementation SKUIColumnViewElement

- (SKUIColumnViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIColumnViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUIColumnViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"span"];
    if ([v12 length])
    {
      v13 = [v12 integerValue];
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = 1;
    }

    v11->_columnSpan = v14;
  }

  return v11;
}

- (SKUIHeaderViewElement)headerElement
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SKUIColumnViewElement_headerElement__block_invoke;
  v5[3] = &unk_2781F8568;
  v5[4] = &v6;
  v4.receiver = self;
  v4.super_class = SKUIColumnViewElement;
  [(SKUIViewElement *)&v4 enumerateChildrenUsingBlock:v5];
  v2 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v2;
}

void __38__SKUIColumnViewElement_headerElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 48)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SKUIColumnViewElement;
  v5 = [(SKUIViewElement *)&v7 applyUpdatesWithElement:v4];
  if (v5 == self)
  {
    self->_columnSpan = [v4 columnSpan];
  }

  return v5;
}

- (void)enumerateChildrenUsingBlock:(id)a3
{
  v4 = a3;
  if ([(SKUIViewElement *)self descendsFromElementWithType:17])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__SKUIColumnViewElement_enumerateChildrenUsingBlock___block_invoke;
    v6[3] = &unk_2781FA298;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = SKUIColumnViewElement;
    [(SKUIViewElement *)&v5 enumerateChildrenUsingBlock:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SKUIColumnViewElement;
    [(SKUIViewElement *)&v8 enumerateChildrenUsingBlock:v4];
  }
}

void __53__SKUIColumnViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] != 48)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIColumnViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
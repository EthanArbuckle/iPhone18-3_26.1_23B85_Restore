@interface SKUIGiftTemplateViewElement
- (SKUIGiftTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (SKUIItem)productItem;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUIGiftTemplateViewElement

- (SKUIGiftTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUIGiftTemplateViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"type"];
    v11->_giftType = [v12 isEqualToString:@"product"];
    v13 = [v8 getAttribute:@"buyParams"];
    productBuyParams = v11->_productBuyParams;
    v11->_productBuyParams = v13;

    v15 = [v8 getAttribute:@"data-content-id"];
    v11->_productItemIdentifier = [v15 longLongValue];
  }

  return v11;
}

- (SKUIItem)productItem
{
  v43[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_productItemIdentifier];
  [v3 setObject:v4 forKey:*MEMORY[0x277D6A360]];

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__55;
  v41 = __Block_byref_object_dispose__55;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__55;
  v35 = __Block_byref_object_dispose__55;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__55;
  v29 = __Block_byref_object_dispose__55;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__55;
  v23 = __Block_byref_object_dispose__55;
  v24 = 0;
  v5 = [(SKUIViewElement *)self firstChildForElementType:66];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__SKUIGiftTemplateViewElement_productItem__block_invoke;
  v18[3] = &unk_2781FDED8;
  v18[4] = &v31;
  v18[5] = &v37;
  v18[6] = &v19;
  v18[7] = &v25;
  [v5 enumerateChildrenUsingBlock:v18];
  v6 = v20[5];
  if (v6)
  {
    [v3 setObject:v6 forKey:*MEMORY[0x277D6A338]];
  }

  if ([v26[5] count])
  {
    v7 = [v26[5] firstObject];
    [v3 setObject:v7 forKey:*MEMORY[0x277D6A2F0]];
  }

  if ([v26[5] count] >= 2)
  {
    v8 = objc_alloc(MEMORY[0x277CBEA60]);
    v9 = [v26[5] objectAtIndex:1];
    v10 = [v8 initWithObjects:{v9, 0}];

    [v3 setObject:v10 forKey:*MEMORY[0x277D6A340]];
  }

  if (v38[5])
  {
    v43[0] = v38[5];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    [v3 setObject:v11 forKey:*MEMORY[0x277D6A300]];
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{self->_productBuyParams, @"buyParams", 0}];
  v13 = v12;
  v14 = v32[5];
  if (v14)
  {
    [v12 setObject:v14 forKey:@"priceFormatted"];
  }

  v15 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v13, 0}];
  [v3 setObject:v15 forKey:*MEMORY[0x277D6A380]];
  v16 = [[SKUIItem alloc] initWithLookupDictionary:v3];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v16;
}

void __42__SKUIGiftTemplateViewElement_productItem__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 elementType];
  if (v4 > 76)
  {
    if (v4 == 77)
    {
      if (!*(*(a1[4] + 8) + 40))
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __42__SKUIGiftTemplateViewElement_productItem__block_invoke_2;
        v29[3] = &unk_2781F8568;
        v29[4] = a1[4];
        [v3 enumerateChildrenUsingBlock:v29];
      }
    }

    else if (v4 == 138)
    {
      v21 = v3;
      v10 = v21;
      if (*(*(a1[6] + 8) + 40) || [v21 labelViewStyle] != 5)
      {
        v28 = [v10 text];
        v20 = [v28 string];

        if (v20)
        {
          [*(*(a1[7] + 8) + 40) addObject:v20];
        }
      }

      else
      {
        v20 = [v10 text];
        v22 = [v20 string];
        v23 = *(a1[6] + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;
      }

      goto LABEL_19;
    }
  }

  else if (v4 == 13)
  {
    if (!*(*(a1[4] + 8) + 40))
    {
      v10 = [v3 buttonText];
      v25 = [v10 string];
      v26 = *(a1[4] + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

LABEL_20:
    }
  }

  else if (v4 == 49 && !*(*(a1[5] + 8) + 40))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = v3;
    v9 = [v8 URL];
    v10 = v9;
    if (v9)
    {
      v11 = *(*(a1[5] + 8) + 40);
      v12 = [v9 absoluteString];
      [v11 setObject:v12 forKey:@"url"];
    }

    [v8 size];
    v14 = v13;
    [v8 size];
    v16 = v15;

    v17 = *(*(a1[5] + 8) + 40);
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    [v17 setObject:v18 forKey:@"height"];

    v19 = *(*(a1[5] + 8) + 40);
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [v19 setObject:v20 forKey:@"width"];
LABEL_19:

    goto LABEL_20;
  }
}

void __42__SKUIGiftTemplateViewElement_productItem__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 elementType] | 0x80;
  v4 = v10;
  if (v3 == 141)
  {
    v5 = v10;
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 buttonText];
      v7 = [v6 string];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    v4 = v10;
  }
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SKUIGiftTemplateViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_giftType = [(SKUIGiftTemplateViewElement *)v4 giftType];
    v7 = [(NSString *)v4->_productBuyParams copy];
    productBuyParams = self->_productBuyParams;
    self->_productBuyParams = v7;

    self->_productItemIdentifier = v4->_productItemIdentifier;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftTemplateViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
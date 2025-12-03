@interface SKUISplitViewTemplateElement
+ (id)supportedFeatures;
- (BOOL)usesInlineSplitContent;
- (SKUISplitViewTemplateElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)_splitElementForIndex:(int64_t)index;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUISplitViewTemplateElement

- (SKUISplitViewTemplateElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISplitViewTemplateElement initWithDOMElement:parent:elementFactory:];
  }

  v20.receiver = self;
  v20.super_class = SKUISplitViewTemplateElement;
  v11 = [(SKUIViewElement *)&v20 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  v12 = v11;
  if (v11)
  {
    v13 = [(SKUIViewElement *)v11 featureWithName:0x282811888];
    leftNavigationDocument = v12->_leftNavigationDocument;
    v12->_leftNavigationDocument = v13;

    v15 = [(SKUIViewElement *)v12 featureWithName:0x2828118A8];
    rightNavigationDocument = v12->_rightNavigationDocument;
    v12->_rightNavigationDocument = v15;

    v17 = [elementCopy getAttribute:@"displayMode"];
    if ([v17 isEqualToString:@"all"])
    {
      v18 = 2;
    }

    else if ([v17 isEqualToString:@"hidden"])
    {
      v18 = 1;
    }

    else
    {
      if (![v17 isEqualToString:@"overlay"])
      {
        v12->_preferredDisplayMode = 0;
        goto LABEL_13;
      }

      v18 = 3;
    }

    v12->_preferredDisplayMode = v18;
LABEL_13:
  }

  return v12;
}

- (BOOL)usesInlineSplitContent
{
  leftSplitElement = [(SKUISplitViewTemplateElement *)self leftSplitElement];
  children = [leftSplitElement children];
  if ([children count])
  {
    v5 = 1;
  }

  else
  {
    rightSplitElement = [(SKUISplitViewTemplateElement *)self rightSplitElement];
    children2 = [rightSplitElement children];
    v5 = [children2 count] != 0;
  }

  return v5;
}

+ (id)supportedFeatures
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0x282811888;
  v4[1] = 0x2828118A8;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUISplitViewTemplateElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_preferredDisplayMode = [(SKUISplitViewTemplateElement *)elementCopy preferredDisplayMode];
  }

  return v6;
}

- (id)_splitElementForIndex:(int64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__29;
  v13 = __Block_byref_object_dispose__29;
  v14 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  children = [(SKUISplitViewTemplateElement *)self children];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SKUISplitViewTemplateElement__splitElementForIndex___block_invoke;
  v7[3] = &unk_2781FC0A8;
  v7[5] = &v9;
  v7[6] = index;
  v7[4] = v8;
  [children enumerateObjectsUsingBlock:v7];

  v5 = v10[5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __54__SKUISplitViewTemplateElement__splitElementForIndex___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 elementType] == 128)
  {
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 24);
    if (v8 == a1[6])
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      *a4 = 1;
      v7 = *(a1[4] + 8);
      v8 = *(v7 + 24);
    }

    *(v7 + 24) = v8 + 1;
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISplitViewTemplateElement initWithDOMElement:parent:elementFactory:]";
}

@end
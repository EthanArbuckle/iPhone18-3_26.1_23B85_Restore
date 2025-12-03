@interface SKUIExploreTemplateElement
- (NSArray)childViewElements;
- (SKUIExploreTemplateElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (SKUIViewElement)leftSplit;
- (SKUIViewElement)rightSplit;
- (void)_getLeftSplit:(id *)split rightSplit:(id *)rightSplit;
@end

@implementation SKUIExploreTemplateElement

- (SKUIExploreTemplateElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIExploreTemplateElement initWithDOMElement:parent:elementFactory:];
  }

  v14.receiver = self;
  v14.super_class = SKUIExploreTemplateElement;
  v11 = [(SKUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy childElementsByTagName:@"split"];
    v11->_usesSplits = [v12 count] == 2;
  }

  return v11;
}

- (NSArray)childViewElements
{
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  v5 = selfCopy;
  if (selfCopy->_usesSplits)
  {
    leftSplit = [(SKUIExploreTemplateElement *)selfCopy leftSplit];

    v5 = leftSplit;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SKUIExploreTemplateElement_childViewElements__block_invoke;
  v9[3] = &unk_2781F9640;
  v7 = array;
  v10 = v7;
  [v5 enumerateChildrenUsingBlock:v9];

  return v7;
}

void __47__SKUIExploreTemplateElement_childViewElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (SKUIViewElement)leftSplit
{
  if (self->_usesSplits)
  {
    v6[1] = v2;
    v7 = v3;
    v6[0] = 0;
    [(SKUIExploreTemplateElement *)self _getLeftSplit:v6 rightSplit:0];
    v4 = v6[0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SKUIViewElement)rightSplit
{
  if (self->_usesSplits)
  {
    v6[1] = v2;
    v7 = v3;
    v6[0] = 0;
    [(SKUIExploreTemplateElement *)self _getLeftSplit:0 rightSplit:v6];
    v4 = v6[0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_getLeftSplit:(id *)split rightSplit:(id *)rightSplit
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__56;
  v18 = __Block_byref_object_dispose__56;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__56;
  v12 = __Block_byref_object_dispose__56;
  v13 = 0;
  children = [(SKUIExploreTemplateElement *)self children];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SKUIExploreTemplateElement__getLeftSplit_rightSplit___block_invoke;
  v7[3] = &unk_2781FDF70;
  v7[4] = &v14;
  v7[5] = &v8;
  [children enumerateObjectsUsingBlock:v7];

  if (split)
  {
    *split = v15[5];
  }

  if (rightSplit)
  {
    *rightSplit = v9[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __55__SKUIExploreTemplateElement__getLeftSplit_rightSplit___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 elementType] == 128)
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }

    else
    {
      objc_storeStrong(v8, a2);
    }
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIExploreTemplateElement initWithDOMElement:parent:elementFactory:]";
}

@end
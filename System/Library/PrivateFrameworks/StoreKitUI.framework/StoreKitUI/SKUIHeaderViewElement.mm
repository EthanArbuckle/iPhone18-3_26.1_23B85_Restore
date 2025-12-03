@interface SKUIHeaderViewElement
- (NSArray)titleLabels;
- (SKUIButtonViewElement)button;
- (SKUIHeaderViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SKUIHeaderViewElement

- (SKUIHeaderViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIHeaderViewElement initWithDOMElement:parent:elementFactory:];
  }

  v11 = objc_opt_class();
  if (v11 == objc_opt_class() && ([elementCopy getAttribute:@"type"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"browse"), v12, v13))
  {
    v14 = parentCopy;
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      do
      {
        parent = [v16 parent];

        v16 = parent;
      }

      while (parent);
    }

    v18 = [(SKUIHeaderViewElement *)[SKUIBrowseHeaderViewElement alloc] initWithDOMElement:elementCopy parent:v15 elementFactory:factoryCopy];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = SKUIHeaderViewElement;
    v18 = [(SKUIViewElement *)&v21 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
    self = &v18->super;
  }

  p_super = &v18->super;

  return p_super;
}

- (SKUIButtonViewElement)button
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__41;
  v9 = __Block_byref_object_dispose__41;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SKUIHeaderViewElement_button__block_invoke;
  v4[3] = &unk_2781F8568;
  v4[4] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __31__SKUIHeaderViewElement_button__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (SKUIIKViewElementTypeIsButton([v6 elementType]))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)titleLabels
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SKUIHeaderViewElement_titleLabels__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = array;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __36__SKUIHeaderViewElement_titleLabels__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 138)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIHeaderViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
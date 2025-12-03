@interface SKUICollectionListViewElement
- (SKUICollectionListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SKUICollectionListViewElement

- (SKUICollectionListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  v26 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICollectionListViewElement initWithDOMElement:parent:elementFactory:];
  }

  v24.receiver = self;
  v24.super_class = SKUICollectionListViewElement;
  v11 = [(SKUIViewElement *)&v24 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  v12 = v11;
  if (v11)
  {
    v19 = elementCopy;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    children = [(SKUICollectionListViewElement *)v11 children];
    v14 = [children countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(children);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            NSLog(&cfstr_OmgSearchInACo.isa);
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [children countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v15);
    }

    elementCopy = v19;
  }

  return v12;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICollectionListViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
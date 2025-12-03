@interface SKUIActivityIndicatorViewElement
- (SKUIActivityIndicatorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SKUIActivityIndicatorViewElement

- (SKUIActivityIndicatorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIActivityIndicatorViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUIActivityIndicatorViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"period"];
    v13 = v12;
    if (v12)
    {
      [v12 doubleValue];
    }

    else
    {
      v14 = -1.0;
    }

    v11->_period = v14;
  }

  return v11;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIActivityIndicatorViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
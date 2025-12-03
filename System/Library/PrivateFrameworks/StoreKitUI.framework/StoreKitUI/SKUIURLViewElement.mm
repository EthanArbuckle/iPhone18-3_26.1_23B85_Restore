@interface SKUIURLViewElement
- (SKUIURLViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SKUIURLViewElement

- (SKUIURLViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIURLViewElement initWithDOMElement:parent:elementFactory:];
  }

  v18.receiver = self;
  v18.super_class = SKUIURLViewElement;
  v11 = [(SKUIViewElement *)&v18 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    textContent = [elementCopy textContent];
    if ([textContent length])
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v14 = [textContent stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      v15 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v14];
      url = v11->_url;
      v11->_url = v15;

      textContent = v14;
    }
  }

  return v11;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIURLViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
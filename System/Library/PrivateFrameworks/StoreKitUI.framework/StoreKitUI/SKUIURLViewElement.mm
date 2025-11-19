@interface SKUIURLViewElement
- (SKUIURLViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SKUIURLViewElement

- (SKUIURLViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIURLViewElement initWithDOMElement:parent:elementFactory:];
  }

  v18.receiver = self;
  v18.super_class = SKUIURLViewElement;
  v11 = [(SKUIViewElement *)&v18 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 textContent];
    if ([v12 length])
    {
      v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v14 = [v12 stringByTrimmingCharactersInSet:v13];

      v15 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v14];
      url = v11->_url;
      v11->_url = v15;

      v12 = v14;
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
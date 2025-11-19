@interface SKUIBrowseViewElement
- (SKUIBrowseViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUIBrowseViewElement

- (SKUIBrowseViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrowseViewElement initWithDOMElement:parent:elementFactory:];
  }

  v15.receiver = self;
  v15.super_class = SKUIBrowseViewElement;
  v11 = [(SKUIViewElement *)&v15 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"title"];
    title = v11->_title;
    v11->_title = v12;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SKUIBrowseViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    v7 = [(SKUIBrowseViewElement *)v4 title];
    title = self->_title;
    self->_title = v7;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrowseViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
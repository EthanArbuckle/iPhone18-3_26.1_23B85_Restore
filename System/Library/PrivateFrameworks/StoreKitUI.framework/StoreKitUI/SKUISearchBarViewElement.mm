@interface SKUISearchBarViewElement
- (SKUISearchBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUISearchBarViewElement

- (SKUISearchBarViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISearchBarViewElement initWithDOMElement:parent:elementFactory:];
  }

  v23.receiver = self;
  v23.super_class = SKUISearchBarViewElement;
  v11 = [(SKUIInputViewElement *)&v23 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"accessoryText"];
    accessoryText = v11->_accessoryText;
    v11->_accessoryText = v12;

    v14 = [(IKTextParser *)SKUIViewElementText textWithDOMElement:v8 usingParseBlock:0];
    defaultText = v11->_defaultText;
    v11->_defaultText = v14;

    v16 = [v8 getAttribute:@"placeholder"];
    placeholderString = v11->_placeholderString;
    v11->_placeholderString = v16;

    v18 = [v8 getAttribute:@"searchHints"];
    searchHintsURLString = v11->_searchHintsURLString;
    v11->_searchHintsURLString = v18;

    v20 = [v8 getAttribute:@"trendingSearch"];
    trendingSearchURLString = v11->_trendingSearchURLString;
    v11->_trendingSearchURLString = v20;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SKUISearchBarViewElement;
  v5 = [(SKUIViewElement *)&v18 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    v7 = [(SKUISearchBarViewElement *)v4 accessoryText];
    accessoryText = self->_accessoryText;
    self->_accessoryText = v7;

    v9 = [(SKUISearchBarViewElement *)v4 defaultText];
    defaultText = self->_defaultText;
    self->_defaultText = v9;

    v11 = [(SKUISearchBarViewElement *)v4 placeholderString];
    placeholderString = self->_placeholderString;
    self->_placeholderString = v11;

    v13 = [(SKUISearchBarViewElement *)v4 searchHintsURLString];
    searchHintsURLString = self->_searchHintsURLString;
    self->_searchHintsURLString = v13;

    v15 = [(SKUISearchBarViewElement *)v4 trendingSearchURLString];
    trendingSearchURLString = self->_trendingSearchURLString;
    self->_trendingSearchURLString = v15;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISearchBarViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
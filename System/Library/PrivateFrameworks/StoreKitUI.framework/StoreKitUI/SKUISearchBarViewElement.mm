@interface SKUISearchBarViewElement
- (SKUISearchBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUISearchBarViewElement

- (SKUISearchBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISearchBarViewElement initWithDOMElement:parent:elementFactory:];
  }

  v23.receiver = self;
  v23.super_class = SKUISearchBarViewElement;
  v11 = [(SKUIInputViewElement *)&v23 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"accessoryText"];
    accessoryText = v11->_accessoryText;
    v11->_accessoryText = v12;

    v14 = [(IKTextParser *)SKUIViewElementText textWithDOMElement:elementCopy usingParseBlock:0];
    defaultText = v11->_defaultText;
    v11->_defaultText = v14;

    v16 = [elementCopy getAttribute:@"placeholder"];
    placeholderString = v11->_placeholderString;
    v11->_placeholderString = v16;

    v18 = [elementCopy getAttribute:@"searchHints"];
    searchHintsURLString = v11->_searchHintsURLString;
    v11->_searchHintsURLString = v18;

    v20 = [elementCopy getAttribute:@"trendingSearch"];
    trendingSearchURLString = v11->_trendingSearchURLString;
    v11->_trendingSearchURLString = v20;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SKUISearchBarViewElement;
  v5 = [(SKUIViewElement *)&v18 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    accessoryText = [(SKUISearchBarViewElement *)elementCopy accessoryText];
    accessoryText = self->_accessoryText;
    self->_accessoryText = accessoryText;

    defaultText = [(SKUISearchBarViewElement *)elementCopy defaultText];
    defaultText = self->_defaultText;
    self->_defaultText = defaultText;

    placeholderString = [(SKUISearchBarViewElement *)elementCopy placeholderString];
    placeholderString = self->_placeholderString;
    self->_placeholderString = placeholderString;

    searchHintsURLString = [(SKUISearchBarViewElement *)elementCopy searchHintsURLString];
    searchHintsURLString = self->_searchHintsURLString;
    self->_searchHintsURLString = searchHintsURLString;

    trendingSearchURLString = [(SKUISearchBarViewElement *)elementCopy trendingSearchURLString];
    trendingSearchURLString = self->_trendingSearchURLString;
    self->_trendingSearchURLString = trendingSearchURLString;
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
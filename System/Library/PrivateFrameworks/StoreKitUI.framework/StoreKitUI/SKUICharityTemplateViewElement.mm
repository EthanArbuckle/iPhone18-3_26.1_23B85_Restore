@interface SKUICharityTemplateViewElement
- (SKUICharityTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUICharityTemplateViewElement

- (SKUICharityTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICharityTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUICharityTemplateViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"campaignID"];
    campaignIdentifier = v11->_campaignIdentifier;
    v11->_campaignIdentifier = v12;

    v14 = [elementCopy getAttribute:@"src"];
    charityMetadataURLString = v11->_charityMetadataURLString;
    v11->_charityMetadataURLString = v14;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = SKUICharityTemplateViewElement;
  v5 = [(SKUIViewElement *)&v12 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    campaignIdentifier = [(SKUICharityTemplateViewElement *)elementCopy campaignIdentifier];
    campaignIdentifier = self->_campaignIdentifier;
    self->_campaignIdentifier = campaignIdentifier;

    charityMetadataURLString = [(SKUICharityTemplateViewElement *)elementCopy charityMetadataURLString];
    charityMetadataURLString = self->_charityMetadataURLString;
    self->_charityMetadataURLString = charityMetadataURLString;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICharityTemplateViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
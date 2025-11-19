@interface SKUICharityTemplateViewElement
- (SKUICharityTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUICharityTemplateViewElement

- (SKUICharityTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICharityTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v17.receiver = self;
  v17.super_class = SKUICharityTemplateViewElement;
  v11 = [(SKUIViewElement *)&v17 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"campaignID"];
    campaignIdentifier = v11->_campaignIdentifier;
    v11->_campaignIdentifier = v12;

    v14 = [v8 getAttribute:@"src"];
    charityMetadataURLString = v11->_charityMetadataURLString;
    v11->_charityMetadataURLString = v14;
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SKUICharityTemplateViewElement;
  v5 = [(SKUIViewElement *)&v12 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    v7 = [(SKUICharityTemplateViewElement *)v4 campaignIdentifier];
    campaignIdentifier = self->_campaignIdentifier;
    self->_campaignIdentifier = v7;

    v9 = [(SKUICharityTemplateViewElement *)v4 charityMetadataURLString];
    charityMetadataURLString = self->_charityMetadataURLString;
    self->_charityMetadataURLString = v9;
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
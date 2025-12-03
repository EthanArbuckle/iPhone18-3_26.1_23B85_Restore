@interface SKUISortDescriptorViewElement
- (SKUISortDescriptorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUISortDescriptorViewElement

- (SKUISortDescriptorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISortDescriptorViewElement initWithDOMElement:parent:elementFactory:];
  }

  v16.receiver = self;
  v16.super_class = SKUISortDescriptorViewElement;
  v11 = [(SKUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"direction"];
    if ([v12 length])
    {
      v13 = [v12 isEqualToString:@"descending"] ^ 1;
    }

    else
    {
      LOBYTE(v13) = 1;
    }

    v11->_ascending = v13;
    v14 = [elementCopy getAttribute:@"property"];
    if ([v14 length])
    {
      objc_storeStrong(&v11->_property, v14);
    }
  }

  return v11;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SKUISortDescriptorViewElement;
  v5 = [(SKUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_ascending = [(SKUISortDescriptorViewElement *)elementCopy isAscending];
    property = [(SKUISortDescriptorViewElement *)elementCopy property];
    property = self->_property;
    self->_property = property;
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISortDescriptorViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
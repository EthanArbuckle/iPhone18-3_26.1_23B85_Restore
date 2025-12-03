@interface SKUILockupViewElement
- (BOOL)containsElementGroups;
- (BOOL)isEnabled;
- (SKUILockupViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUILockupViewElement

- (SKUILockupViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUILockupViewElement initWithDOMElement:parent:elementFactory:];
  }

  v18.receiver = self;
  v18.super_class = SKUILockupViewElement;
  v11 = [(SKUIViewElement *)&v18 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"disabled"];
    if ([v12 length])
    {
      v13 = [v12 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v13) = -1;
    }

    v11->_enabled = v13;
    v14 = [elementCopy getAttribute:@"selectable"];
    if ([v14 length])
    {
      lowercaseString = [v14 lowercaseString];
      v11->_selectable = [lowercaseString isEqualToString:@"true"];
    }

    v16 = [elementCopy getAttribute:@"type"];
    v11->_lockupViewType = SKUILockupViewTypeForString(v16);
  }

  return v11;
}

- (BOOL)containsElementGroups
{
  v2 = [(SKUIViewElement *)self firstChildForElementType:127];
  v3 = v2 != 0;

  return v3;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUILockupViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_enabled = elementCopy->_enabled;
    self->_lockupViewType = [(SKUILockupViewElement *)elementCopy lockupViewType];
  }

  return v6;
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SKUILockupViewElement;
  return [(SKUIViewElement *)&v6 isEnabled];
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
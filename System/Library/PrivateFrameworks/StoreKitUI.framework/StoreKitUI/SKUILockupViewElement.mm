@interface SKUILockupViewElement
- (BOOL)containsElementGroups;
- (BOOL)isEnabled;
- (SKUILockupViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SKUILockupViewElement

- (SKUILockupViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUILockupViewElement initWithDOMElement:parent:elementFactory:];
  }

  v18.receiver = self;
  v18.super_class = SKUILockupViewElement;
  v11 = [(SKUIViewElement *)&v18 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"disabled"];
    if ([v12 length])
    {
      v13 = [v12 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v13) = -1;
    }

    v11->_enabled = v13;
    v14 = [v8 getAttribute:@"selectable"];
    if ([v14 length])
    {
      v15 = [v14 lowercaseString];
      v11->_selectable = [v15 isEqualToString:@"true"];
    }

    v16 = [v8 getAttribute:@"type"];
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

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKUILockupViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_enabled = v4->_enabled;
    self->_lockupViewType = [(SKUILockupViewElement *)v4 lockupViewType];
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
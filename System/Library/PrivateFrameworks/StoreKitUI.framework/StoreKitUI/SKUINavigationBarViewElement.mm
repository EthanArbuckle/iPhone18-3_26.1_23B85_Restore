@interface SKUINavigationBarViewElement
- (BOOL)isTransparent;
- (NSArray)mainViewElements;
- (NSArray)navigationPalettes;
- (SKUINavigationBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (UIColor)tintColor;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUINavigationBarViewElement

- (SKUINavigationBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUINavigationBarViewElement initWithDOMElement:parent:elementFactory:];
  }

  v15.receiver = self;
  v15.super_class = SKUINavigationBarViewElement;
  v11 = [(SKUIViewElement *)&v15 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"hideShadow"];
    v11->_hidesShadow = [v12 BOOLValue];

    v13 = [elementCopy getAttribute:@"hideBackButton"];
    v11->_hidesBackButton = [v13 BOOLValue];
  }

  return v11;
}

- (BOOL)isTransparent
{
  style = [(SKUINavigationBarViewElement *)self style];
  ikBackgroundColor = [style ikBackgroundColor];

  if (ikBackgroundColor)
  {
    v7 = 0.0;
    color = [ikBackgroundColor color];
    [color getWhite:0 alpha:&v7];

    v5 = v7 < 0.00000011920929;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIColor)tintColor
{
  style = [(SKUINavigationBarViewElement *)self style];
  ikColor = [style ikColor];
  color = [ikColor color];

  return color;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUINavigationBarViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_hidesShadow = [(SKUINavigationBarViewElement *)elementCopy hidesShadow];
    self->_hidesBackButton = [(SKUINavigationBarViewElement *)elementCopy hidesBackButton];
  }

  return v6;
}

- (NSArray)mainViewElements
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SKUINavigationBarViewElement_mainViewElements__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = array;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __48__SKUINavigationBarViewElement_mainViewElements__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = (v3 - 12) > 0x39 || ((1 << (v3 - 12)) & 0x200004000000003) == 0;
  if (!v4 || (v3 - 106) <= 0x23 && ((1 << (v3 - 106)) & 0x900000009) != 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (NSArray)navigationPalettes
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SKUINavigationBarViewElement_navigationPalettes__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = array;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __50__SKUINavigationBarViewElement_navigationPalettes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 75)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINavigationBarViewElement initWithDOMElement:parent:elementFactory:]";
}

@end
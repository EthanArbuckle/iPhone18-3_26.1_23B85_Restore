@interface SKUITrendingSearchTemplateElement
- (NSArray)buttons;
- (SKUILabelViewElement)titleLabel;
- (void)buttons;
- (void)titleLabel;
@end

@implementation SKUITrendingSearchTemplateElement

- (NSArray)buttons
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITrendingSearchTemplateElement buttons];
  }

  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SKUITrendingSearchTemplateElement_buttons__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = array;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __44__SKUITrendingSearchTemplateElement_buttons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (SKUIIKViewElementTypeIsButton([v3 elementType]))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (SKUILabelViewElement)titleLabel
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITrendingSearchTemplateElement titleLabel];
  }

  firstObject = [(SKUIViewElement *)self firstChildForElementType:138];
  if (!firstObject)
  {
    v4 = [(SKUIViewElement *)self firstChildForElementType:48];
    titleLabels = [v4 titleLabels];
    firstObject = [titleLabels firstObject];
  }

  return firstObject;
}

- (void)buttons
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITrendingSearchTemplateElement buttons]";
}

- (void)titleLabel
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITrendingSearchTemplateElement titleLabel]";
}

@end
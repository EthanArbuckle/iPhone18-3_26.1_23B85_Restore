@interface SKUIReviewListViewElement
- (NSArray)items;
- (int64_t)pageComponentType;
- (void)items;
- (void)pageComponentType;
@end

@implementation SKUIReviewListViewElement

- (NSArray)items
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReviewListViewElement items];
  }

  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SKUIReviewListViewElement_items__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = array;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __34__SKUIReviewListViewElement_items__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 103 || objc_msgSend(v3, "elementType") == 102)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (int64_t)pageComponentType
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReviewListViewElement pageComponentType];
  }

  return 21;
}

- (void)items
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewListViewElement items]";
}

- (void)pageComponentType
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewListViewElement pageComponentType]";
}

@end
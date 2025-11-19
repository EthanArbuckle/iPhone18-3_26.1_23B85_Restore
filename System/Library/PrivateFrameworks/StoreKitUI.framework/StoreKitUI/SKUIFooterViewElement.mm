@interface SKUIFooterViewElement
- (NSArray)titleLabels;
- (SKUIButtonViewElement)button;
- (void)button;
- (void)titleLabels;
@end

@implementation SKUIFooterViewElement

- (SKUIButtonViewElement)button
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFooterViewElement button];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__95;
  v10 = __Block_byref_object_dispose__95;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__SKUIFooterViewElement_button__block_invoke;
  v5[3] = &unk_2781F8568;
  v5[4] = &v6;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__SKUIFooterViewElement_button__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (SKUIIKViewElementTypeIsButton([v6 elementType]))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)titleLabels
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFooterViewElement titleLabels];
  }

  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SKUIFooterViewElement_titleLabels__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = v3;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __36__SKUIFooterViewElement_titleLabels__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 138)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)button
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFooterViewElement button]";
}

- (void)titleLabels
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFooterViewElement titleLabels]";
}

@end
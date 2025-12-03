@interface SKUIInfoViewElement
- (NSArray)valueElements;
- (SKUILabelViewElement)titleElement;
- (void)titleElement;
- (void)valueElements;
@end

@implementation SKUIInfoViewElement

- (SKUILabelViewElement)titleElement
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIInfoViewElement titleElement];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SKUIInfoViewElement_titleElement__block_invoke;
  v5[3] = &unk_2781F8568;
  v5[4] = &v6;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__SKUIInfoViewElement_titleElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)valueElements
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIInfoViewElement valueElements];
  }

  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SKUIInfoViewElement_valueElements__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = array;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __36__SKUIInfoViewElement_valueElements__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = v3 > 0x3E || ((1 << v3) & 0x4006004100001100) == 0;
  if (!v4 || v3 - 135 <= 0x11 && (((1 << (v3 + 121)) & 0x20241) != 0 || v3 == 138 && [v5 labelViewStyle] != 5))
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)titleElement
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIInfoViewElement titleElement]";
}

- (void)valueElements
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIInfoViewElement valueElements]";
}

@end
@interface SKUIPaletteViewElement
- (void)enumerateChildrenUsingBlock:(id)a3;
@end

@implementation SKUIPaletteViewElement

- (void)enumerateChildrenUsingBlock:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPaletteViewElement enumerateChildrenUsingBlock:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SKUIPaletteViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2781FA298;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SKUIPaletteViewElement;
  v5 = v4;
  [(SKUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __54__SKUIPaletteViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = v3 > 0x3E || ((1 << v3) & 0x4004010100001000) == 0;
  if (!v4 || v3 - 95 <= 0x2E && ((1 << (v3 - 95)) & 0x480000004001) != 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateChildrenUsingBlock:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPaletteViewElement enumerateChildrenUsingBlock:]";
}

@end
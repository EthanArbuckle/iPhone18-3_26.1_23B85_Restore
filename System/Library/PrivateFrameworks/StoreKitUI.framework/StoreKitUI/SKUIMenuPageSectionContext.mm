@interface SKUIMenuPageSectionContext
- (id)sectionsForIndex:(int64_t)a3;
- (void)setSections:(id)a3 forIndex:(int64_t)a4;
@end

@implementation SKUIMenuPageSectionContext

- (id)sectionsForIndex:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuPageSectionContext sectionsForIndex:];
  }

  sections = self->_sections;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)sections objectForKey:v6];

  return v7;
}

- (void)setSections:(id)a3 forIndex:(int64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuPageSectionContext setSections:forIndex:];
  }

  sections = self->_sections;
  if (!sections)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_sections;
    self->_sections = v8;

    sections = self->_sections;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)sections setObject:v6 forKey:v10];
}

- (void)sectionsForIndex:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuPageSectionContext sectionsForIndex:]";
}

- (void)setSections:forIndex:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuPageSectionContext setSections:forIndex:]";
}

@end
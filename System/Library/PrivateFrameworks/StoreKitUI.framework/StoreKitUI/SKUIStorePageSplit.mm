@interface SKUIStorePageSplit
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)description;
@end

@implementation SKUIStorePageSplit

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIStorePageSplit *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v13 setDividerColor:self->_dividerColor];
  [v13 setNumberOfPageSections:self->_numberOfPageSections];
  [v13 setPageComponents:self->_pageComponents];
  [v13 setSectionContext:self->_sectionContext];
  [v13 setWidthFraction:self->_widthFraction];
  return v13;
}

- (id)description
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStorePageSplit description];
  }

  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIStorePageSplit;
  v4 = [(SKUIStorePageSplit *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: Count: %ld, Context: %@", v4, self->_numberOfPageSections, self->_sectionContext];

  return v5;
}

- (void)description
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStorePageSplit description]";
}

@end
@interface SKUIProductPageTableHeaderOnlySection
- (id)headerViewForTableView:(id)view;
@end

@implementation SKUIProductPageTableHeaderOnlySection

- (id)headerViewForTableView:(id)view
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableHeaderOnlySection headerViewForTableView:];
  }

  headerView = [(SKUIProductPageTableHeaderOnlySection *)self headerView];

  return headerView;
}

- (void)headerViewForTableView:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageTableHeaderOnlySection headerViewForTableView:]";
}

@end
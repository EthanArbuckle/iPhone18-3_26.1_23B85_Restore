@interface UITableView(DataSourceConfiguration)
- (uint64_t)cellRegistered;
- (void)setCellRegistered:()DataSourceConfiguration;
@end

@implementation UITableView(DataSourceConfiguration)

- (void)setCellRegistered:()DataSourceConfiguration
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, sel_cellRegistered, v2, 3);
}

- (uint64_t)cellRegistered
{
  v1 = objc_getAssociatedObject(a1, sel_cellRegistered);
  v2 = [v1 BOOLValue];

  return v2;
}

@end
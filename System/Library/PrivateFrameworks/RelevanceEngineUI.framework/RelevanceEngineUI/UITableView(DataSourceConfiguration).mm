@interface UITableView(DataSourceConfiguration)
- (uint64_t)cellRegistered;
- (void)setCellRegistered:()DataSourceConfiguration;
@end

@implementation UITableView(DataSourceConfiguration)

- (void)setCellRegistered:()DataSourceConfiguration
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, sel_cellRegistered, v2, 3);
}

- (uint64_t)cellRegistered
{
  v1 = objc_getAssociatedObject(self, sel_cellRegistered);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end
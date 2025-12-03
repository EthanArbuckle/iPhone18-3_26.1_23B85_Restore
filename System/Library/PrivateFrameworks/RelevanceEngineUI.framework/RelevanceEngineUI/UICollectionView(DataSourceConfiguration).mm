@interface UICollectionView(DataSourceConfiguration)
- (uint64_t)cellRegistered;
- (uint64_t)headersRegistered;
- (void)setCellRegistered:()DataSourceConfiguration;
- (void)setHeadersRegistered:()DataSourceConfiguration;
@end

@implementation UICollectionView(DataSourceConfiguration)

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

- (void)setHeadersRegistered:()DataSourceConfiguration
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, sel_headersRegistered, v2, 3);
}

- (uint64_t)headersRegistered
{
  v1 = objc_getAssociatedObject(self, sel_headersRegistered);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end
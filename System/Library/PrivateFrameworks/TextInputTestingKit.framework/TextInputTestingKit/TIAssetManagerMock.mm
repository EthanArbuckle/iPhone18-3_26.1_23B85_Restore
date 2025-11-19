@interface TIAssetManagerMock
- (void)ddsAssetContentItemsWithContentType:(id)a3 inputMode:(id)a4 filteredWithRegion:(BOOL)a5 completion:(id)a6;
- (void)ddsAssetsForInputMode:(id)a3 cachedOnly:(BOOL)a4 completion:(id)a5;
- (void)requestAssetDownloadForLanguage:(id)a3 completion:(id)a4;
@end

@implementation TIAssetManagerMock

- (void)ddsAssetsForInputMode:(id)a3 cachedOnly:(BOOL)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, MEMORY[0x277CBEBF8]);
  }
}

- (void)ddsAssetContentItemsWithContentType:(id)a3 inputMode:(id)a4 filteredWithRegion:(BOOL)a5 completion:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, MEMORY[0x277CBEBF8]);
  }
}

- (void)requestAssetDownloadForLanguage:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

@end
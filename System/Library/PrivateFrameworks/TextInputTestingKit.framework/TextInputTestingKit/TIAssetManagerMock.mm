@interface TIAssetManagerMock
- (void)ddsAssetContentItemsWithContentType:(id)type inputMode:(id)mode filteredWithRegion:(BOOL)region completion:(id)completion;
- (void)ddsAssetsForInputMode:(id)mode cachedOnly:(BOOL)only completion:(id)completion;
- (void)requestAssetDownloadForLanguage:(id)language completion:(id)completion;
@end

@implementation TIAssetManagerMock

- (void)ddsAssetsForInputMode:(id)mode cachedOnly:(BOOL)only completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, MEMORY[0x277CBEBF8]);
  }
}

- (void)ddsAssetContentItemsWithContentType:(id)type inputMode:(id)mode filteredWithRegion:(BOOL)region completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, MEMORY[0x277CBEBF8]);
  }
}

- (void)requestAssetDownloadForLanguage:(id)language completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

@end
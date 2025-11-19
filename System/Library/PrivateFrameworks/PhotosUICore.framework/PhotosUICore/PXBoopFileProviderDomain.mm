@interface PXBoopFileProviderDomain
@end

@implementation PXBoopFileProviderDomain

uint64_t ___PXBoopFileProviderDomain_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69674D8]);
  v1 = PXLocalizedStringFromTable(@"BOOP_FILE_PROVIDER_DOMAIN_TITLE", @"PhotosUICore");
  v2 = [v0 initWithIdentifier:@"boop" displayName:v1 pathRelativeToDocumentStorage:@"boop" hidden:1];
  v3 = _PXBoopFileProviderDomain_domain;
  _PXBoopFileProviderDomain_domain = v2;

  v4 = _PXBoopFileProviderDomain_domain;

  return PXCreateDirectoryForFileProviderDomain(v4, 0);
}

@end
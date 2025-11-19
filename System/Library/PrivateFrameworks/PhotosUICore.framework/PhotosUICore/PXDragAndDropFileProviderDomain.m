@interface PXDragAndDropFileProviderDomain
@end

@implementation PXDragAndDropFileProviderDomain

uint64_t ___PXDragAndDropFileProviderDomain_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69674D8]);
  v1 = PXLocalizedStringFromTable(@"DRAG_AND_DROP_FILE_PROVIDER_DOMAIN_TITLE", @"PhotosUICore");
  v2 = [v0 initWithIdentifier:@"draganddrop" displayName:v1 pathRelativeToDocumentStorage:@"draganddrop" hidden:1];
  v3 = _PXDragAndDropFileProviderDomain_domain;
  _PXDragAndDropFileProviderDomain_domain = v2;

  v4 = _PXDragAndDropFileProviderDomain_domain;

  return PXCreateDirectoryForFileProviderDomain(v4, 0);
}

@end
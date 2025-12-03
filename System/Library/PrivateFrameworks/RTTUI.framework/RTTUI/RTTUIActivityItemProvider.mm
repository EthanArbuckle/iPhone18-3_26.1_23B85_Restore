@interface RTTUIActivityItemProvider
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation RTTUIActivityItemProvider

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_opt_new();

  return v3;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getLPLinkMetadataClass_softClass;
  v13 = getLPLinkMetadataClass_softClass;
  if (!getLPLinkMetadataClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getLPLinkMetadataClass_block_invoke;
    v9[3] = &unk_279AE4F10;
    v9[4] = &v10;
    __getLPLinkMetadataClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = objc_alloc_init(v4);
  v7 = ttyLocString();
  [v6 setTitle:v7];

  return v6;
}

@end
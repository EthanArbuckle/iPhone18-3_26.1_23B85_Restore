@interface PHCollectionList(PXDisplayAssetAdoption)
- (id)px_symbolImageName;
- (uint64_t)px_isBookmarksFolder;
- (uint64_t)px_isRegularFolder;
- (uint64_t)px_isTransientPlacesCollection;
@end

@implementation PHCollectionList(PXDisplayAssetAdoption)

- (uint64_t)px_isTransientPlacesCollection
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXPlacesGridVirtualCollection"];

  return v2;
}

- (uint64_t)px_isBookmarksFolder
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXBookmarksVirtualCollectionList"];

  return v2;
}

- (uint64_t)px_isRegularFolder
{
  if ([self collectionListType] == 2 && objc_msgSend(self, "collectionListSubtype") == 100)
  {
    return [self isTransient] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)px_symbolImageName
{
  if ([self isTransient])
  {
    transientIdentifier = [self transientIdentifier];
    v3 = PXSymbolNameForTransientCollectionIdentifier(transientIdentifier);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &off_1F1B0D238;
    v3 = objc_msgSendSuper2(&v5, sel_px_symbolImageName);
  }

  return v3;
}

@end
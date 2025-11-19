@interface PHCollectionList(PXDisplayAssetAdoption)
- (id)px_symbolImageName;
- (uint64_t)px_isBookmarksFolder;
- (uint64_t)px_isRegularFolder;
- (uint64_t)px_isTransientPlacesCollection;
@end

@implementation PHCollectionList(PXDisplayAssetAdoption)

- (uint64_t)px_isTransientPlacesCollection
{
  v1 = [a1 transientIdentifier];
  v2 = [v1 isEqualToString:@"PXPlacesGridVirtualCollection"];

  return v2;
}

- (uint64_t)px_isBookmarksFolder
{
  v1 = [a1 transientIdentifier];
  v2 = [v1 isEqualToString:@"PXBookmarksVirtualCollectionList"];

  return v2;
}

- (uint64_t)px_isRegularFolder
{
  if ([a1 collectionListType] == 2 && objc_msgSend(a1, "collectionListSubtype") == 100)
  {
    return [a1 isTransient] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)px_symbolImageName
{
  if ([a1 isTransient])
  {
    v2 = [a1 transientIdentifier];
    v3 = PXSymbolNameForTransientCollectionIdentifier(v2);
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &off_1F1B0D238;
    v3 = objc_msgSendSuper2(&v5, sel_px_symbolImageName);
  }

  return v3;
}

@end
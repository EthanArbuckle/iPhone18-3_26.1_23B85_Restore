@interface ICItemsRequest
- (id)_bodyDataForMetadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders paginationToken:(id)token;
@end

@implementation ICItemsRequest

- (id)_bodyDataForMetadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders paginationToken:(id)token
{
  filterCopy = filter;
  queryFilterCopy = queryFilter;
  tokensCopy = tokens;
  v20 = filterCopy;
  tokenCopy = token;
  v22 = tokensCopy;
  v14 = tokensCopy;
  v15 = tokenCopy;
  v16 = queryFilterCopy;
  v17 = filterCopy;
  v18 = ICDAAPUtilitiesCreateDataForContainer();

  return v18;
}

@end
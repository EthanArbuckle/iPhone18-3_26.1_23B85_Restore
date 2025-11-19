@interface ICItemsRequest
- (id)_bodyDataForMetadataFilter:(id)a3 queryFilter:(id)a4 purchaseTokens:(id)a5 includeHiddenItems:(BOOL)a6 includePreorders:(BOOL)a7 paginationToken:(id)a8;
@end

@implementation ICItemsRequest

- (id)_bodyDataForMetadataFilter:(id)a3 queryFilter:(id)a4 purchaseTokens:(id)a5 includeHiddenItems:(BOOL)a6 includePreorders:(BOOL)a7 paginationToken:(id)a8
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20 = v11;
  v21 = a8;
  v22 = v13;
  v14 = v13;
  v15 = v21;
  v16 = v12;
  v17 = v11;
  v18 = ICDAAPUtilitiesCreateDataForContainer();

  return v18;
}

@end
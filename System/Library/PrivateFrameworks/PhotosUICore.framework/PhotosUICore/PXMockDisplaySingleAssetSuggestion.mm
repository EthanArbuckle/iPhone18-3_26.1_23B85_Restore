@interface PXMockDisplaySingleAssetSuggestion
- (BOOL)isEqual:(id)equal;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)localIdentifier;
- (PXMockDisplaySingleAssetSuggestion)initWithAsset:(id)asset type:(unsigned __int16)type subtype:(unsigned __int16)subtype title:(id)title;
- (id)fetchKeyAssets;
@end

@implementation PXMockDisplaySingleAssetSuggestion

- (NSDate)endDate
{
  asset = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  creationDate = [asset creationDate];

  return creationDate;
}

- (NSDate)startDate
{
  asset = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  creationDate = [asset creationDate];

  return creationDate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localIdentifier = [(PXMockDisplaySingleAssetSuggestion *)self localIdentifier];
    localIdentifier2 = [equalCopy localIdentifier];
    if ([localIdentifier isEqualToString:localIdentifier2])
    {
      title = [(PXMockDisplaySingleAssetSuggestion *)self title];
      title2 = [equalCopy title];
      v9 = [title isEqualToString:title2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fetchKeyAssets
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978630];
  asset = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  localIdentifier = [asset localIdentifier];
  v12[0] = localIdentifier;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  asset2 = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  photoLibrary = [asset2 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v10 = [v3 fetchAssetsWithLocalIdentifiers:v6 options:librarySpecificFetchOptions];

  return v10;
}

- (NSString)localIdentifier
{
  asset = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  localIdentifier = [asset localIdentifier];

  return localIdentifier;
}

- (PXMockDisplaySingleAssetSuggestion)initWithAsset:(id)asset type:(unsigned __int16)type subtype:(unsigned __int16)subtype title:(id)title
{
  assetCopy = asset;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = PXMockDisplaySingleAssetSuggestion;
  v13 = [(PXMockDisplaySingleAssetSuggestion *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v13->_subtype = subtype;
    objc_storeStrong(&v13->_asset, asset);
    v15 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v15;
  }

  return v14;
}

@end
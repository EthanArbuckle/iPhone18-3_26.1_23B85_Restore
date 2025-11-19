@interface PXMockDisplaySingleAssetSuggestion
- (BOOL)isEqual:(id)a3;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)localIdentifier;
- (PXMockDisplaySingleAssetSuggestion)initWithAsset:(id)a3 type:(unsigned __int16)a4 subtype:(unsigned __int16)a5 title:(id)a6;
- (id)fetchKeyAssets;
@end

@implementation PXMockDisplaySingleAssetSuggestion

- (NSDate)endDate
{
  v2 = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  v3 = [v2 creationDate];

  return v3;
}

- (NSDate)startDate
{
  v2 = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  v3 = [v2 creationDate];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PXMockDisplaySingleAssetSuggestion *)self localIdentifier];
    v6 = [v4 localIdentifier];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(PXMockDisplaySingleAssetSuggestion *)self title];
      v8 = [v4 title];
      v9 = [v7 isEqualToString:v8];
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
  v4 = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  v5 = [v4 localIdentifier];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  v8 = [v7 photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];
  v10 = [v3 fetchAssetsWithLocalIdentifiers:v6 options:v9];

  return v10;
}

- (NSString)localIdentifier
{
  v2 = [(PXMockDisplaySingleAssetSuggestion *)self asset];
  v3 = [v2 localIdentifier];

  return v3;
}

- (PXMockDisplaySingleAssetSuggestion)initWithAsset:(id)a3 type:(unsigned __int16)a4 subtype:(unsigned __int16)a5 title:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = PXMockDisplaySingleAssetSuggestion;
  v13 = [(PXMockDisplaySingleAssetSuggestion *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a4;
    v13->_subtype = a5;
    objc_storeStrong(&v13->_asset, a3);
    v15 = [v12 copy];
    title = v14->_title;
    v14->_title = v15;
  }

  return v14;
}

@end
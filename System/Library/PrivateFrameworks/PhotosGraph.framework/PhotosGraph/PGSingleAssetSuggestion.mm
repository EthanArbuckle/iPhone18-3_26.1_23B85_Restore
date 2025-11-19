@interface PGSingleAssetSuggestion
- (NSArray)keyAssets;
- (NSString)description;
- (PGSingleAssetSuggestion)initWithType:(unsigned __int16)a3 subtype:(unsigned __int16)a4 asset:(id)a5;
@end

@implementation PGSingleAssetSuggestion

- (NSString)description
{
  relevanceDurationInDays = self->_relevanceDurationInDays;
  if (relevanceDurationInDays)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"relevant for %lu days", relevanceDurationInDays];
  }

  else
  {
    v4 = &stru_2843F5C58;
  }

  v13.receiver = self;
  v13.super_class = PGSingleAssetSuggestion;
  v5 = [(PGSingleAssetSuggestion *)&v13 description];
  type = self->_type;
  v7 = PHSuggestionStringWithType();
  subtype = self->_subtype;
  v9 = PHSuggestionStringWithSubtype();
  v10 = [(PHAsset *)self->_asset uuid];
  v11 = [v5 stringByAppendingFormat:@": type=%@, subtype=%@, assetUUID=%@, %@features=%@", v7, v9, v10, v4, self->_features];

  return v11;
}

- (NSArray)keyAssets
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_asset)
  {
    v5[0] = self->_asset;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (PGSingleAssetSuggestion)initWithType:(unsigned __int16)a3 subtype:(unsigned __int16)a4 asset:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PGSingleAssetSuggestion;
  v10 = [(PGSingleAssetSuggestion *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v10->_subtype = a4;
    objc_storeStrong(&v10->_asset, a5);
  }

  return v11;
}

@end
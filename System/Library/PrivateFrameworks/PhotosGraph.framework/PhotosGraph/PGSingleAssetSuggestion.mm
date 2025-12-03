@interface PGSingleAssetSuggestion
- (NSArray)keyAssets;
- (NSString)description;
- (PGSingleAssetSuggestion)initWithType:(unsigned __int16)type subtype:(unsigned __int16)subtype asset:(id)asset;
@end

@implementation PGSingleAssetSuggestion

- (NSString)description
{
  relevanceDurationInDays = self->_relevanceDurationInDays;
  if (relevanceDurationInDays)
  {
    relevanceDurationInDays = [MEMORY[0x277CCACA8] stringWithFormat:@"relevant for %lu days", relevanceDurationInDays];
  }

  else
  {
    relevanceDurationInDays = &stru_2843F5C58;
  }

  v13.receiver = self;
  v13.super_class = PGSingleAssetSuggestion;
  v5 = [(PGSingleAssetSuggestion *)&v13 description];
  type = self->_type;
  v7 = PHSuggestionStringWithType();
  subtype = self->_subtype;
  v9 = PHSuggestionStringWithSubtype();
  uuid = [(PHAsset *)self->_asset uuid];
  v11 = [v5 stringByAppendingFormat:@": type=%@, subtype=%@, assetUUID=%@, %@features=%@", v7, v9, uuid, relevanceDurationInDays, self->_features];

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

- (PGSingleAssetSuggestion)initWithType:(unsigned __int16)type subtype:(unsigned __int16)subtype asset:(id)asset
{
  assetCopy = asset;
  v13.receiver = self;
  v13.super_class = PGSingleAssetSuggestion;
  v10 = [(PGSingleAssetSuggestion *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v10->_subtype = subtype;
    objc_storeStrong(&v10->_asset, asset);
  }

  return v11;
}

@end
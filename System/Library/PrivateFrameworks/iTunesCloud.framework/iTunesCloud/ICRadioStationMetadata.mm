@interface ICRadioStationMetadata
- (BOOL)allowsItemLiking;
- (BOOL)allowsSharing;
- (ICRadioStationMetadata)initWithResponseDictionary:(id)a3;
- (ICRadioStationProviderResource)providerResource;
- (ICStoreArtworkInfo)artworkInfo;
- (NSString)attributionLabel;
- (NSString)coreSeedName;
- (NSString)descriptionText;
- (NSString)name;
- (NSString)stationHash;
- (NSString)stationStringID;
- (int64_t)stationID;
@end

@implementation ICRadioStationMetadata

- (ICRadioStationProviderResource)providerResource
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKeyedSubscript:@"provider-resource"];
  if (v2)
  {
    v3 = [[ICRadioStationProviderResource alloc] initWithRadioStationProviderResourceDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)attributionLabel
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"attribution-label"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)stationStringID
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"radio-station-id"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)stationID
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"station-id"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)stationHash
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"station-hash"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)name
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"name"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)descriptionText
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"description"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)coreSeedName
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"core-seed-name"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICStoreArtworkInfo)artworkInfo
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"artwork"];
  if (v2)
  {
    v3 = [[ICStoreArtworkInfo alloc] initWithArtworkResponseValue:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)allowsItemLiking
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"rules"];
  if (_NSIsNSDictionary())
  {
    v3 = [v2 objectForKey:@"like-enabled"];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 BOOLValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)allowsSharing
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"rules"];
  if (_NSIsNSDictionary())
  {
    v3 = [v2 objectForKey:@"sharing-enabled"];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 BOOLValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICRadioStationMetadata)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICRadioStationMetadata;
  v5 = [(ICRadioStationMetadata *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end
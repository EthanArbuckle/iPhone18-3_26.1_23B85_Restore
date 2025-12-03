@interface ICRadioStationMetadata
- (BOOL)allowsItemLiking;
- (BOOL)allowsSharing;
- (ICRadioStationMetadata)initWithResponseDictionary:(id)dictionary;
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
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
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
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)allowsSharing
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"rules"];
  if (_NSIsNSDictionary())
  {
    v3 = [v2 objectForKey:@"sharing-enabled"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (ICRadioStationMetadata)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICRadioStationMetadata;
  v5 = [(ICRadioStationMetadata *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end
@interface ICRadioStationProviderResource
- (ICRadioStationProviderResource)initWithRadioStationProviderResourceDictionary:(id)a3;
@end

@implementation ICRadioStationProviderResource

- (ICRadioStationProviderResource)initWithRadioStationProviderResourceDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICRadioStationProviderResource;
  v5 = [(ICRadioStationProviderResource *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"url"];
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    url = v5->_url;
    v5->_url = v7;

    v9 = [v4 objectForKeyedSubscript:@"bundle-id"];
    v10 = [v9 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;
  }

  return v5;
}

@end
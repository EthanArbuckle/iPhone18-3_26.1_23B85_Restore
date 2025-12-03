@interface SHHapticsConfiguration
- (SHHapticsConfiguration)initWithConfiguration:(id)configuration;
- (id)baseURLString;
- (id)fetchHapticsURLStringForClientIdentifier:(id)identifier songResourceIDType:(int64_t)type;
- (id)hapticsAvailableURLStringForClientIdentifier:(id)identifier songResourceIDType:(int64_t)type;
- (id)hapticsEndpointsForStorefront:(id)storefront clientIdentifier:(id)identifier;
- (id)pathStringForClientIdentifier:(id)identifier songResourceIDType:(int64_t)type requestKey:(id)key;
@end

@implementation SHHapticsConfiguration

- (SHHapticsConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SHHapticsConfiguration;
  v5 = [(SHHapticsConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    hapticsEndpoints = v5->_hapticsEndpoints;
    v5->_hapticsEndpoints = v6;
  }

  return v5;
}

- (id)fetchHapticsURLStringForClientIdentifier:(id)identifier songResourceIDType:(int64_t)type
{
  v7 = @"/v1/catalog/{storefront}/songs/{id}?fields=name,hapticsAssetUrl,durationInMillis,spatialOffsets&format[resources]=map&extend=spatialOffsets";
  if (type == 2)
  {
    v7 = @"/v1/catalog/{storefront}/songs?filter[isrc]={id}&fields=name,hapticsAssetUrl,durationInMillis,spatialOffsets&format[resources]=map&extend=spatialOffsets";
  }

  v8 = v7;
  v9 = [(SHHapticsConfiguration *)self pathStringForClientIdentifier:identifier songResourceIDType:type requestKey:@"fetchHapticsPath"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  v13 = [SHTokenizedURL alloc];
  v14 = MEMORY[0x277CBEBC0];
  baseURLString = [(SHHapticsConfiguration *)self baseURLString];
  v16 = [v14 URLWithString:baseURLString];
  v17 = [(SHTokenizedURL *)v13 initWithBaseURL:v16 URLPath:v12];

  return v17;
}

- (id)hapticsAvailableURLStringForClientIdentifier:(id)identifier songResourceIDType:(int64_t)type
{
  identifierCopy = identifier;
  v7 = [(SHHapticsConfiguration *)self pathStringForClientIdentifier:identifierCopy songResourceIDType:type requestKey:@"hasHapticsPath"];
  if (v7)
  {
    v8 = [SHTokenizedURL alloc];
    v9 = MEMORY[0x277CBEBC0];
    baseURLString = [(SHHapticsConfiguration *)self baseURLString];
    v11 = [v9 URLWithString:baseURLString];
    v12 = [(SHTokenizedURL *)v8 initWithBaseURL:v11 URLPath:v7];
  }

  else
  {
    v12 = [(SHHapticsConfiguration *)self fetchHapticsURLStringForClientIdentifier:identifierCopy songResourceIDType:type];
  }

  return v12;
}

- (id)hapticsEndpointsForStorefront:(id)storefront clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  storefrontCopy = storefront;
  v8 = [(SHHapticsConfiguration *)self fetchHapticsURLStringForClientIdentifier:identifierCopy songResourceIDType:1];
  [v8 updateToken:3 withValue:storefrontCopy];
  v9 = [(SHHapticsConfiguration *)self hapticsAvailableURLStringForClientIdentifier:identifierCopy songResourceIDType:1];
  [v9 updateToken:3 withValue:storefrontCopy];
  v10 = [(SHHapticsConfiguration *)self fetchHapticsURLStringForClientIdentifier:identifierCopy songResourceIDType:2];
  [v10 updateToken:3 withValue:storefrontCopy];
  v11 = [(SHHapticsConfiguration *)self hapticsAvailableURLStringForClientIdentifier:identifierCopy songResourceIDType:2];

  [v11 updateToken:3 withValue:storefrontCopy];
  v12 = [[SHHapticsEndpoints alloc] initWithFetchHapticByAdamIDURL:v8 hasHapticForAdamIDURL:v9 fetchHapticByISRCURL:v10 hasHapticForISRCURL:v11];

  return v12;
}

- (id)pathStringForClientIdentifier:(id)identifier songResourceIDType:(int64_t)type requestKey:(id)key
{
  keyCopy = key;
  v9 = @"adamIDLookup";
  if (type == 2)
  {
    v9 = @"isrcLookup";
  }

  v10 = v9;
  identifierCopy = identifier;
  hapticsEndpoints = [(SHHapticsConfiguration *)self hapticsEndpoints];
  v13 = [hapticsEndpoints objectForKeyedSubscript:v10];

  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", keyCopy, identifierCopy];

  v15 = [v13 objectForKeyedSubscript:identifierCopy];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v13 objectForKeyedSubscript:keyCopy];
  }

  v18 = v17;

  return v18;
}

- (id)baseURLString
{
  hapticsEndpoints = [(SHHapticsConfiguration *)self hapticsEndpoints];
  v3 = [hapticsEndpoints objectForKeyedSubscript:@"baseURL"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"https://amp-api.music.apple.com";
  }

  v5 = v4;

  return v4;
}

@end
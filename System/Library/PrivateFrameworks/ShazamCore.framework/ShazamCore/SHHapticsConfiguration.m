@interface SHHapticsConfiguration
- (SHHapticsConfiguration)initWithConfiguration:(id)a3;
- (id)baseURLString;
- (id)fetchHapticsURLStringForClientIdentifier:(id)a3 songResourceIDType:(int64_t)a4;
- (id)hapticsAvailableURLStringForClientIdentifier:(id)a3 songResourceIDType:(int64_t)a4;
- (id)hapticsEndpointsForStorefront:(id)a3 clientIdentifier:(id)a4;
- (id)pathStringForClientIdentifier:(id)a3 songResourceIDType:(int64_t)a4 requestKey:(id)a5;
@end

@implementation SHHapticsConfiguration

- (SHHapticsConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SHHapticsConfiguration;
  v5 = [(SHHapticsConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    hapticsEndpoints = v5->_hapticsEndpoints;
    v5->_hapticsEndpoints = v6;
  }

  return v5;
}

- (id)fetchHapticsURLStringForClientIdentifier:(id)a3 songResourceIDType:(int64_t)a4
{
  v7 = @"/v1/catalog/{storefront}/songs/{id}?fields=name,hapticsAssetUrl,durationInMillis,spatialOffsets&format[resources]=map&extend=spatialOffsets";
  if (a4 == 2)
  {
    v7 = @"/v1/catalog/{storefront}/songs?filter[isrc]={id}&fields=name,hapticsAssetUrl,durationInMillis,spatialOffsets&format[resources]=map&extend=spatialOffsets";
  }

  v8 = v7;
  v9 = [(SHHapticsConfiguration *)self pathStringForClientIdentifier:a3 songResourceIDType:a4 requestKey:@"fetchHapticsPath"];
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
  v15 = [(SHHapticsConfiguration *)self baseURLString];
  v16 = [v14 URLWithString:v15];
  v17 = [(SHTokenizedURL *)v13 initWithBaseURL:v16 URLPath:v12];

  return v17;
}

- (id)hapticsAvailableURLStringForClientIdentifier:(id)a3 songResourceIDType:(int64_t)a4
{
  v6 = a3;
  v7 = [(SHHapticsConfiguration *)self pathStringForClientIdentifier:v6 songResourceIDType:a4 requestKey:@"hasHapticsPath"];
  if (v7)
  {
    v8 = [SHTokenizedURL alloc];
    v9 = MEMORY[0x277CBEBC0];
    v10 = [(SHHapticsConfiguration *)self baseURLString];
    v11 = [v9 URLWithString:v10];
    v12 = [(SHTokenizedURL *)v8 initWithBaseURL:v11 URLPath:v7];
  }

  else
  {
    v12 = [(SHHapticsConfiguration *)self fetchHapticsURLStringForClientIdentifier:v6 songResourceIDType:a4];
  }

  return v12;
}

- (id)hapticsEndpointsForStorefront:(id)a3 clientIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHHapticsConfiguration *)self fetchHapticsURLStringForClientIdentifier:v6 songResourceIDType:1];
  [v8 updateToken:3 withValue:v7];
  v9 = [(SHHapticsConfiguration *)self hapticsAvailableURLStringForClientIdentifier:v6 songResourceIDType:1];
  [v9 updateToken:3 withValue:v7];
  v10 = [(SHHapticsConfiguration *)self fetchHapticsURLStringForClientIdentifier:v6 songResourceIDType:2];
  [v10 updateToken:3 withValue:v7];
  v11 = [(SHHapticsConfiguration *)self hapticsAvailableURLStringForClientIdentifier:v6 songResourceIDType:2];

  [v11 updateToken:3 withValue:v7];
  v12 = [[SHHapticsEndpoints alloc] initWithFetchHapticByAdamIDURL:v8 hasHapticForAdamIDURL:v9 fetchHapticByISRCURL:v10 hasHapticForISRCURL:v11];

  return v12;
}

- (id)pathStringForClientIdentifier:(id)a3 songResourceIDType:(int64_t)a4 requestKey:(id)a5
{
  v8 = a5;
  v9 = @"adamIDLookup";
  if (a4 == 2)
  {
    v9 = @"isrcLookup";
  }

  v10 = v9;
  v11 = a3;
  v12 = [(SHHapticsConfiguration *)self hapticsEndpoints];
  v13 = [v12 objectForKeyedSubscript:v10];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v8, v11];

  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v13 objectForKeyedSubscript:v8];
  }

  v18 = v17;

  return v18;
}

- (id)baseURLString
{
  v2 = [(SHHapticsConfiguration *)self hapticsEndpoints];
  v3 = [v2 objectForKeyedSubscript:@"baseURL"];

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
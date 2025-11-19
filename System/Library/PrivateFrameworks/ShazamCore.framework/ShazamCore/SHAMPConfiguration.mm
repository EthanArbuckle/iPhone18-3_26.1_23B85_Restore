@interface SHAMPConfiguration
- (SHAMPConfiguration)initWithResponse:(id)a3;
- (id)offerResponseFromResponse:(id)a3;
- (id)streamingProvidersResponseFromResponse:(id)a3;
@end

@implementation SHAMPConfiguration

- (SHAMPConfiguration)initWithResponse:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SHAMPConfiguration;
  v5 = [(SHAMPConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [SHOffers alloc];
    v7 = [(SHAMPConfiguration *)v5 offerResponseFromResponse:v4];
    v8 = [(SHOffers *)v6 initWithOfferResponse:v7];
    offers = v5->_offers;
    v5->_offers = v8;

    v10 = [SHStreamingProviders alloc];
    v11 = [(SHAMPConfiguration *)v5 streamingProvidersResponseFromResponse:v4];
    v12 = [(SHStreamingProviders *)v10 initWithResponse:v11];
    streamingProviders = v5->_streamingProviders;
    v5->_streamingProviders = v12;
  }

  return v5;
}

- (id)offerResponseFromResponse:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"results"];
  v4 = [v3 objectForKeyedSubscript:@"appleMusicOffers"];

  return v4;
}

- (id)streamingProvidersResponseFromResponse:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"results"];
  v4 = [v3 objectForKeyedSubscript:@"streamingProviders"];

  return v4;
}

@end
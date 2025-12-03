@interface SHAMPConfiguration
- (SHAMPConfiguration)initWithResponse:(id)response;
- (id)offerResponseFromResponse:(id)response;
- (id)streamingProvidersResponseFromResponse:(id)response;
@end

@implementation SHAMPConfiguration

- (SHAMPConfiguration)initWithResponse:(id)response
{
  responseCopy = response;
  v15.receiver = self;
  v15.super_class = SHAMPConfiguration;
  v5 = [(SHAMPConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [SHOffers alloc];
    v7 = [(SHAMPConfiguration *)v5 offerResponseFromResponse:responseCopy];
    v8 = [(SHOffers *)v6 initWithOfferResponse:v7];
    offers = v5->_offers;
    v5->_offers = v8;

    v10 = [SHStreamingProviders alloc];
    v11 = [(SHAMPConfiguration *)v5 streamingProvidersResponseFromResponse:responseCopy];
    v12 = [(SHStreamingProviders *)v10 initWithResponse:v11];
    streamingProviders = v5->_streamingProviders;
    v5->_streamingProviders = v12;
  }

  return v5;
}

- (id)offerResponseFromResponse:(id)response
{
  v3 = [response objectForKeyedSubscript:@"results"];
  v4 = [v3 objectForKeyedSubscript:@"appleMusicOffers"];

  return v4;
}

- (id)streamingProvidersResponseFromResponse:(id)response
{
  v3 = [response objectForKeyedSubscript:@"results"];
  v4 = [v3 objectForKeyedSubscript:@"streamingProviders"];

  return v4;
}

@end
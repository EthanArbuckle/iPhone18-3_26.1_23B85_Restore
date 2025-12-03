@interface SHOffers
- (SHOffers)initWithOfferResponse:(id)response;
- (id)campaignURLForTrackID:(id)d bundleID:(id)iD token:(id)token;
- (id)configForOfferNamed:(id)named bundleID:(id)d;
- (id)defaultURLForBundleID:(id)d;
- (id)subtitleForOfferNamed:(id)named bundleID:(id)d;
- (id)urlForOfferNamed:(id)named bundleID:(id)d;
- (id)valueForSpecializedKey:(id)key forBundleID:(id)d inDictionary:(id)dictionary;
@end

@implementation SHOffers

- (SHOffers)initWithOfferResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = SHOffers;
  v6 = [(SHOffers *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_offerResponse, response);
  }

  return v7;
}

- (id)defaultURLForBundleID:(id)d
{
  dCopy = d;
  v5 = [SHTokenizedURL alloc];
  v6 = [(SHOffers *)self urlForOfferNamed:@"default" bundleID:dCopy];

  v7 = [(SHTokenizedURL *)v5 initWithString:v6];
  uRLRepresentation = [(SHTokenizedURL *)v7 URLRepresentation];

  return uRLRepresentation;
}

- (id)campaignURLForTrackID:(id)d bundleID:(id)iD token:(id)token
{
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  v11 = [SHTokenizedURL alloc];
  v12 = [(SHOffers *)self urlForOfferNamed:@"campaign" bundleID:iDCopy];

  v13 = [(SHTokenizedURL *)v11 initWithString:v12];
  if ([(SHTokenizedURL *)v13 containsToken:10]&& [(SHTokenizedURL *)v13 containsToken:9])
  {
    [(SHTokenizedURL *)v13 updateToken:9 withValue:dCopy];
    [(SHTokenizedURL *)v13 updateToken:10 withValue:tokenCopy];
    uRLRepresentation = [(SHTokenizedURL *)v13 URLRepresentation];
  }

  else
  {
    uRLRepresentation = 0;
  }

  return uRLRepresentation;
}

- (id)urlForOfferNamed:(id)named bundleID:(id)d
{
  v4 = [(SHOffers *)self configForOfferNamed:named bundleID:d];
  v5 = [v4 objectForKeyedSubscript:@"url"];

  return v5;
}

- (id)subtitleForOfferNamed:(id)named bundleID:(id)d
{
  v4 = [(SHOffers *)self configForOfferNamed:named bundleID:d];
  v5 = [v4 objectForKeyedSubscript:@"copy"];

  v6 = [v5 objectForKeyedSubscript:@"subtitle"];

  return v6;
}

- (id)configForOfferNamed:(id)named bundleID:(id)d
{
  dCopy = d;
  namedCopy = named;
  offerResponse = [(SHOffers *)self offerResponse];
  v9 = [(SHOffers *)self valueForSpecializedKey:namedCopy forBundleID:dCopy inDictionary:offerResponse];

  return v9;
}

- (id)valueForSpecializedKey:(id)key forBundleID:(id)d inDictionary:(id)dictionary
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", keyCopy, d];
  v10 = [dictionaryCopy objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  }

  v13 = v12;

  return v13;
}

@end
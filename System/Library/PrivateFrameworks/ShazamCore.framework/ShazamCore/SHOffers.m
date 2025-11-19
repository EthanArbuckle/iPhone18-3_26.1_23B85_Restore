@interface SHOffers
- (SHOffers)initWithOfferResponse:(id)a3;
- (id)campaignURLForTrackID:(id)a3 bundleID:(id)a4 token:(id)a5;
- (id)configForOfferNamed:(id)a3 bundleID:(id)a4;
- (id)defaultURLForBundleID:(id)a3;
- (id)subtitleForOfferNamed:(id)a3 bundleID:(id)a4;
- (id)urlForOfferNamed:(id)a3 bundleID:(id)a4;
- (id)valueForSpecializedKey:(id)a3 forBundleID:(id)a4 inDictionary:(id)a5;
@end

@implementation SHOffers

- (SHOffers)initWithOfferResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHOffers;
  v6 = [(SHOffers *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_offerResponse, a3);
  }

  return v7;
}

- (id)defaultURLForBundleID:(id)a3
{
  v4 = a3;
  v5 = [SHTokenizedURL alloc];
  v6 = [(SHOffers *)self urlForOfferNamed:@"default" bundleID:v4];

  v7 = [(SHTokenizedURL *)v5 initWithString:v6];
  v8 = [(SHTokenizedURL *)v7 URLRepresentation];

  return v8;
}

- (id)campaignURLForTrackID:(id)a3 bundleID:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [SHTokenizedURL alloc];
  v12 = [(SHOffers *)self urlForOfferNamed:@"campaign" bundleID:v10];

  v13 = [(SHTokenizedURL *)v11 initWithString:v12];
  if ([(SHTokenizedURL *)v13 containsToken:10]&& [(SHTokenizedURL *)v13 containsToken:9])
  {
    [(SHTokenizedURL *)v13 updateToken:9 withValue:v8];
    [(SHTokenizedURL *)v13 updateToken:10 withValue:v9];
    v14 = [(SHTokenizedURL *)v13 URLRepresentation];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)urlForOfferNamed:(id)a3 bundleID:(id)a4
{
  v4 = [(SHOffers *)self configForOfferNamed:a3 bundleID:a4];
  v5 = [v4 objectForKeyedSubscript:@"url"];

  return v5;
}

- (id)subtitleForOfferNamed:(id)a3 bundleID:(id)a4
{
  v4 = [(SHOffers *)self configForOfferNamed:a3 bundleID:a4];
  v5 = [v4 objectForKeyedSubscript:@"copy"];

  v6 = [v5 objectForKeyedSubscript:@"subtitle"];

  return v6;
}

- (id)configForOfferNamed:(id)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHOffers *)self offerResponse];
  v9 = [(SHOffers *)self valueForSpecializedKey:v7 forBundleID:v6 inDictionary:v8];

  return v9;
}

- (id)valueForSpecializedKey:(id)a3 forBundleID:(id)a4 inDictionary:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, a4];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v8 objectForKeyedSubscript:v7];
  }

  v13 = v12;

  return v13;
}

@end
@interface CSDCommunicationTrustScoreDataProvider
- (int)getTrustScoreFor:(id)for callProvider:(id)provider;
@end

@implementation CSDCommunicationTrustScoreDataProvider

- (int)getTrustScoreFor:(id)for callProvider:(id)provider
{
  forCopy = for;
  providerCopy = provider;
  selfCopy = self;
  LODWORD(provider) = sub_10034BCF8(forCopy, provider);

  return provider;
}

@end
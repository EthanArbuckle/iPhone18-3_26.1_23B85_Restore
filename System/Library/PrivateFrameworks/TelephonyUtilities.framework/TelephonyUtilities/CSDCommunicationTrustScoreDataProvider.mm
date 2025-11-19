@interface CSDCommunicationTrustScoreDataProvider
- (int)getTrustScoreFor:(id)a3 callProvider:(id)a4;
@end

@implementation CSDCommunicationTrustScoreDataProvider

- (int)getTrustScoreFor:(id)a3 callProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  LODWORD(a4) = sub_10034BCF8(v6, a4);

  return a4;
}

@end
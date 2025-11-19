@interface SSVFairPlaySAPSession
@end

@implementation SSVFairPlaySAPSession

void __67__SSVFairPlaySAPSession_ISFairPlaySAPSession__sharedDefaultSession__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D69CC0]);
  v3 = ISFairPlaySAPSessionURLBag();
  v1 = [v0 initWithURLBag:v3 SAPVersion:0];
  v2 = sharedDefaultSession_sSession;
  sharedDefaultSession_sSession = v1;
}

void __65__SSVFairPlaySAPSession_ISFairPlaySAPSession__sharedPrimeSession__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D69CC0]);
  v3 = ISFairPlaySAPSessionURLBag();
  v1 = [v0 initWithURLBag:v3 SAPVersion:1];
  v2 = sharedPrimeSession_sSession;
  sharedPrimeSession_sSession = v1;
}

@end
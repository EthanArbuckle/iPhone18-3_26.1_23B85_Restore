@interface SSVFairPlaySAPSession(ISFairPlaySAPSession)
+ (id)sharedDefaultSession;
+ (id)sharedPrimeSession;
@end

@implementation SSVFairPlaySAPSession(ISFairPlaySAPSession)

+ (id)sharedDefaultSession
{
  if (sharedDefaultSession_sOnce != -1)
  {
    +[SSVFairPlaySAPSession(ISFairPlaySAPSession) sharedDefaultSession];
  }

  v1 = sharedDefaultSession_sSession;

  return v1;
}

+ (id)sharedPrimeSession
{
  if (sharedPrimeSession_sOnce != -1)
  {
    +[SSVFairPlaySAPSession(ISFairPlaySAPSession) sharedPrimeSession];
  }

  v1 = sharedPrimeSession_sSession;

  return v1;
}

@end
@interface SPPARSession
+ (id)spotlightPARSession;
@end

@implementation SPPARSession

+ (id)spotlightPARSession
{
  if (spotlightPARSession_onceToken != -1)
  {
    +[SPPARSession spotlightPARSession];
  }

  v3 = spotlightPARSession_gSession;

  return v3;
}

void __35__SPPARSession_spotlightPARSession__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277D007C8]) initWithId:@"com.apple.spotlight" userAgent:@"spotlight/1.0" factory:0];
  v0 = [MEMORY[0x277D007C0] sessionWithConfiguration:v2];
  v1 = spotlightPARSession_gSession;
  spotlightPARSession_gSession = v0;
}

@end
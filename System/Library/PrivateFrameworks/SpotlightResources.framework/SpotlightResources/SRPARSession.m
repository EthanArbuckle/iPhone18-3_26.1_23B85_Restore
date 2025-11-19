@interface SRPARSession
+ (id)spotlightResourcesPARSessionForClient:(id)a3 flags:(unsigned int)a4;
+ (id)spotlightResourcesPARSessionMail;
+ (id)spotlightResourcesPARSessionSpotlight;
@end

@implementation SRPARSession

+ (id)spotlightResourcesPARSessionSpotlight
{
  v2 = sSpotlightPARSession;
  if (!sSpotlightPARSession)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/Search.framework"];
    v4 = [v3 infoDictionary];
    v5 = [v4 objectForKeyedSubscript:@"CFBundleVersion"];

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Spotlight/%@", v5];
    v7 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"com.apple.spotlight" userAgent:v6 factory:0];
    v8 = [MEMORY[0x1E6998670] sessionWithConfiguration:v7];
    v9 = sSpotlightPARSession;
    sSpotlightPARSession = v8;

    v2 = sSpotlightPARSession;
  }

  return v2;
}

+ (id)spotlightResourcesPARSessionMail
{
  v2 = sMailPARSession;
  if (!sMailPARSession)
  {
    v3 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"com.apple.mail" userAgent:@"mail/1.0" factory:0];
    v4 = [MEMORY[0x1E6998670] sessionWithConfiguration:v3];
    v5 = sMailPARSession;
    sMailPARSession = v4;

    v2 = sMailPARSession;
  }

  return v2;
}

+ (id)spotlightResourcesPARSessionForClient:(id)a3 flags:(unsigned int)a4
{
  v5 = [a3 isEqualToString:@"Mail"];
  if (a4 == 4 || v5)
  {
    v6 = +[SRPARSession spotlightResourcesPARSessionMail];
  }

  else
  {
    v6 = +[SRPARSession spotlightResourcesPARSessionSpotlight];
  }

  return v6;
}

@end
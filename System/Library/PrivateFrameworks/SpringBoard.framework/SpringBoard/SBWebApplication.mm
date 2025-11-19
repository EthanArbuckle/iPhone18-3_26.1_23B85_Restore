@interface SBWebApplication
+ (id)_webClipIdentifierFromWebAppIdentifier:(id)a3;
@end

@implementation SBWebApplication

+ (id)_webClipIdentifierFromWebAppIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 > [@"sceneID:com.apple.webapp-" length] && objc_msgSend(v3, "hasPrefix:", @"sceneID:com.apple.webapp-"))
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(@"sceneID:com.apple.webapp-", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
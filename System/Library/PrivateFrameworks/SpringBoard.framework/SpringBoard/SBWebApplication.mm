@interface SBWebApplication
+ (id)_webClipIdentifierFromWebAppIdentifier:(id)identifier;
@end

@implementation SBWebApplication

+ (id)_webClipIdentifierFromWebAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy length];
  if (v4 > [@"sceneID:com.apple.webapp-" length] && objc_msgSend(identifierCopy, "hasPrefix:", @"sceneID:com.apple.webapp-"))
  {
    v5 = [identifierCopy substringFromIndex:{objc_msgSend(@"sceneID:com.apple.webapp-", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
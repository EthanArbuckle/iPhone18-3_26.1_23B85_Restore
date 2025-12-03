@interface SUWebScriptReloadContext
- (id)_copyScriptDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUWebScriptReloadContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SUWebScriptReloadContext *)self URL];
  [v4 setURL:v5];

  referringUserAgent = [(SUWebScriptReloadContext *)self referringUserAgent];
  [v4 setReferringUserAgent:referringUserAgent];

  referrerURL = [(SUWebScriptReloadContext *)self referrerURL];
  [v4 setReferrerURL:referrerURL];

  return v4;
}

- (id)_copyScriptDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(SUWebScriptReloadContext *)self URL];
  absoluteString = [v4 absoluteString];

  if (absoluteString)
  {
    [v3 setObject:absoluteString forKey:@"url"];
  }

  referringUserAgent = [(SUWebScriptReloadContext *)self referringUserAgent];
  if (referringUserAgent)
  {
    [v3 setObject:referringUserAgent forKey:@"referringUserAgent"];
  }

  referrerURL = [(SUWebScriptReloadContext *)self referrerURL];
  absoluteString2 = [referrerURL absoluteString];

  if (absoluteString2)
  {
    [v3 setObject:absoluteString2 forKey:@"referrerURL"];
  }

  v9 = [[SUScriptDictionary alloc] initWithDictionary:v3];

  return v9;
}

@end
@interface SUWebScriptReloadContext
- (id)_copyScriptDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUWebScriptReloadContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SUWebScriptReloadContext *)self URL];
  [v4 setURL:v5];

  v6 = [(SUWebScriptReloadContext *)self referringUserAgent];
  [v4 setReferringUserAgent:v6];

  v7 = [(SUWebScriptReloadContext *)self referrerURL];
  [v4 setReferrerURL:v7];

  return v4;
}

- (id)_copyScriptDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(SUWebScriptReloadContext *)self URL];
  v5 = [v4 absoluteString];

  if (v5)
  {
    [v3 setObject:v5 forKey:@"url"];
  }

  v6 = [(SUWebScriptReloadContext *)self referringUserAgent];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"referringUserAgent"];
  }

  v7 = [(SUWebScriptReloadContext *)self referrerURL];
  v8 = [v7 absoluteString];

  if (v8)
  {
    [v3 setObject:v8 forKey:@"referrerURL"];
  }

  v9 = [[SUScriptDictionary alloc] initWithDictionary:v3];

  return v9;
}

@end
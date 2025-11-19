@interface SearchUISearchWebHandler
+ (id)webSearchURLForQueryString:(id)a3;
- (id)destinationApplicationIconImage;
- (id)destinationPunchout;
@end

@implementation SearchUISearchWebHandler

- (id)destinationPunchout
{
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 searchString];

  v4 = MEMORY[0x1E69CA320];
  v5 = [objc_opt_class() webSearchURLForQueryString:v3];
  v6 = [v4 punchoutWithURL:v5];

  return v6;
}

+ (id)webSearchURLForQueryString:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695E000];
    v4 = a3;
    v5 = [v3 _sf_safariSharedDefaults];
    v6 = v5;
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__SearchUISearchWebHandler_webSearchURLForQueryString___block_invoke;
      block[3] = &unk_1E85B24C8;
      v12 = v5;
      if (webSearchURLForQueryString__onceToken != -1)
      {
        dispatch_once(&webSearchURLForQueryString__onceToken, block);
      }
    }

    v7 = [MEMORY[0x1E697A848] sharedInstance];
    v8 = [v7 defaultSearchEngine];
    v9 = [v8 searchURLForUserTypedString:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __55__SearchUISearchWebHandler_webSearchURLForQueryString___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = webSearchURLForQueryString__safariObserver;
  webSearchURLForQueryString__safariObserver = v2;

  v4 = *(a1 + 32);
  v5 = webSearchURLForQueryString__safariObserver;
  v6 = *MEMORY[0x1E697A850];

  return [v4 addObserver:v5 forKeyPath:v6 options:3 context:0];
}

- (id)destinationApplicationIconImage
{
  v2 = objc_opt_new();
  [v2 setIconType:1];

  return v2;
}

@end
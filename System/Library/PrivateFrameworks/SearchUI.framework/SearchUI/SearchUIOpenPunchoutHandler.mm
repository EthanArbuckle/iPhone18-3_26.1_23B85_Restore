@interface SearchUIOpenPunchoutHandler
+ (BOOL)punchoutIsOpenableInFinder:(id)a3;
+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4;
+ (id)queryItemValueForName:(id)a3 inURL:(id)a4;
- (BOOL)isWebPunchout;
- (BOOL)prefersModalPresentation;
- (BOOL)schemeSupportedForCopyAndShare;
- (id)createViewControllerForCommand:(id)a3 environment:(id)a4;
- (id)defaultSymbolName;
- (id)defaultTitle;
- (id)destinationPunchout;
- (id)itemProvider;
- (id)url;
- (void)fetchShareableURLWithCompletionHandler:(id)a3;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIOpenPunchoutHandler

+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4
{
  v5 = a3;
  v6 = [a4 selectableGridPunchoutIndex];
  v7 = [v5 punchouts];

  if (v6 < 1 || [v7 count] <= v6)
  {
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:v6];
  }

  v9 = v8;
  v10 = [v8 preferredOpenableURL];

  if (v10)
  {
    v10 = objc_opt_new();
    [v10 setPunchout:v9];
  }

  return v10;
}

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v12 = [(SearchUIOpenPunchoutHandler *)self destinationPunchout:a3];
  v7 = [(SearchUIOpenPunchoutHandler *)self punchoutType];
  v8 = a4 == 7;
  if (a4 == 22)
  {
    v8 = 2;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v12 preferredOpenableURL];
  v11 = [objc_opt_class() punchoutIsOpenableInFinder:v12];
  if (v9 - 1 > 1 || (v11 & 1) == 0)
  {
    [SearchUIUtilities openPunchout:v12];
  }
}

+ (BOOL)punchoutIsOpenableInFinder:(id)a3
{
  v3 = a3;
  v4 = [v3 preferredOpenableURL];
  v5 = [v3 bundleIdentifier];

  LOBYTE(v3) = [v5 isEqualToString:@"com.apple.contacts"];
  LOBYTE(v5) = [v4 isFileURL];

  return v5 & (v3 ^ 1);
}

- (BOOL)prefersModalPresentation
{
  v2 = [(SearchUIOpenPunchoutHandler *)self url];
  v3 = [v2 host];
  v4 = [v3 isEqualToString:@"events.shazam.apple.com"];

  return v4;
}

- (id)destinationPunchout
{
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 punchout];

  return v3;
}

- (id)url
{
  v2 = [(SearchUIOpenPunchoutHandler *)self destinationPunchout];
  v3 = [v2 preferredOpenableURL];

  return v3;
}

- (BOOL)schemeSupportedForCopyAndShare
{
  if ([(SearchUIOpenPunchoutHandler *)self isWebPunchout])
  {
    return 1;
  }

  v4 = [(SearchUIOpenPunchoutHandler *)self url];
  v5 = [v4 scheme];
  v6 = [v5 lowercaseString];
  v7 = [v6 isEqualToString:@"file"];

  return v7;
}

- (BOOL)isWebPunchout
{
  v2 = [(SearchUIOpenPunchoutHandler *)self url];
  v3 = [v2 scheme];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"https"];
  }

  return v5;
}

- (void)fetchShareableURLWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(SearchUIOpenPunchoutHandler *)self url];
  (*(a3 + 2))(v5, v6);
}

- (id)defaultTitle
{
  v2 = [(SearchUIOpenPunchoutHandler *)self punchoutType];
  if (v2 - 1 > 2)
  {
    v3 = @"OPEN_MENU_ITEM";
  }

  else
  {
    v3 = off_1E85B3AC8[v2 - 1];
  }

  return [SearchUIUtilities localizedStringForKey:v3];
}

- (id)defaultSymbolName
{
  v3 = [(SearchUIOpenPunchoutHandler *)self punchoutType]- 1;
  if (v3 >= 3)
  {
    v5 = [(SearchUIOpenPunchoutHandler *)self isWebPunchout];
    v6 = @"arrow.up.forward.app";
    if (v5)
    {
      v6 = @"safari";
    }

    v4 = v6;
  }

  else
  {
    v4 = off_1E85B3AE0[v3];
  }

  return v4;
}

- (id)createViewControllerForCommand:(id)a3 environment:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(SearchUIOpenPunchoutHandler *)self destinationPunchout:a3];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 urls];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {
    v17 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = *v21;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      v12 = [v11 scheme];
      if ([v12 isEqualToString:@"stocks"])
      {
        v18 = [objc_opt_class() queryItemValueForName:@"symbol" inURL:v11];
        v17 = [objc_alloc(MEMORY[0x1E69D47F8]) initWithStockTicker:v18];

LABEL_19:
        goto LABEL_20;
      }

      v13 = [v11 host];
      v14 = [v13 isEqualToString:@"weather.apple.com"];

      if (v14)
      {
        v17 = [objc_alloc(MEMORY[0x1E69E20A8]) initWithURL:v11];
        goto LABEL_19;
      }

      if ([MEMORY[0x1E69B6A18] canOpenURL:v11])
      {
        v17 = [objc_alloc(MEMORY[0x1E69B6A18]) initWithURL:v11];
        [v17 setLinkPreviewing:1];
        goto LABEL_19;
      }

      if (([v5 hasClip] & 1) == 0)
      {
        if ([(SearchUIOpenPunchoutHandler *)self isWebPunchout])
        {
          v15 = [v11 host];
          v16 = [&unk_1F55DD4D8 containsObject:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v11];
            [v17 _setShowingLinkPreviewWithMinimalUI:1];
            goto LABEL_19;
          }
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v17 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_20:

  return v17;
}

+ (id)queryItemValueForName:(id)a3 inURL:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AF20] componentsWithURL:a4 resolvingAgainstBaseURL:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 queryItems];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          v8 = [v11 value];
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)itemProvider
{
  v3 = objc_alloc(MEMORY[0x1E696ACA0]);
  v4 = [(SearchUIOpenPunchoutHandler *)self url];
  v5 = [v3 initWithObject:v4];

  return v5;
}

@end
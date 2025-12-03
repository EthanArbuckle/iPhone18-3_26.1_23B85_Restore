@interface SearchUIOpenPunchoutHandler
+ (BOOL)punchoutIsOpenableInFinder:(id)finder;
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
+ (id)queryItemValueForName:(id)name inURL:(id)l;
- (BOOL)isWebPunchout;
- (BOOL)prefersModalPresentation;
- (BOOL)schemeSupportedForCopyAndShare;
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
- (id)defaultSymbolName;
- (id)defaultTitle;
- (id)destinationPunchout;
- (id)itemProvider;
- (id)url;
- (void)fetchShareableURLWithCompletionHandler:(id)handler;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIOpenPunchoutHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  modelCopy = model;
  selectableGridPunchoutIndex = [environment selectableGridPunchoutIndex];
  punchouts = [modelCopy punchouts];

  if (selectableGridPunchoutIndex < 1 || [punchouts count] <= selectableGridPunchoutIndex)
  {
    firstObject = [punchouts firstObject];
  }

  else
  {
    firstObject = [punchouts objectAtIndexedSubscript:selectableGridPunchoutIndex];
  }

  v9 = firstObject;
  preferredOpenableURL = [firstObject preferredOpenableURL];

  if (preferredOpenableURL)
  {
    preferredOpenableURL = objc_opt_new();
    [preferredOpenableURL setPunchout:v9];
  }

  return preferredOpenableURL;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v12 = [(SearchUIOpenPunchoutHandler *)self destinationPunchout:command];
  punchoutType = [(SearchUIOpenPunchoutHandler *)self punchoutType];
  v8 = event == 7;
  if (event == 22)
  {
    v8 = 2;
  }

  if (punchoutType)
  {
    v9 = punchoutType;
  }

  else
  {
    v9 = v8;
  }

  preferredOpenableURL = [v12 preferredOpenableURL];
  v11 = [objc_opt_class() punchoutIsOpenableInFinder:v12];
  if (v9 - 1 > 1 || (v11 & 1) == 0)
  {
    [SearchUIUtilities openPunchout:v12];
  }
}

+ (BOOL)punchoutIsOpenableInFinder:(id)finder
{
  finderCopy = finder;
  preferredOpenableURL = [finderCopy preferredOpenableURL];
  bundleIdentifier = [finderCopy bundleIdentifier];

  LOBYTE(finderCopy) = [bundleIdentifier isEqualToString:@"com.apple.contacts"];
  LOBYTE(bundleIdentifier) = [preferredOpenableURL isFileURL];

  return bundleIdentifier & (finderCopy ^ 1);
}

- (BOOL)prefersModalPresentation
{
  v2 = [(SearchUIOpenPunchoutHandler *)self url];
  host = [v2 host];
  v4 = [host isEqualToString:@"events.shazam.apple.com"];

  return v4;
}

- (id)destinationPunchout
{
  command = [(SearchUICommandHandler *)self command];
  punchout = [command punchout];

  return punchout;
}

- (id)url
{
  destinationPunchout = [(SearchUIOpenPunchoutHandler *)self destinationPunchout];
  preferredOpenableURL = [destinationPunchout preferredOpenableURL];

  return preferredOpenableURL;
}

- (BOOL)schemeSupportedForCopyAndShare
{
  if ([(SearchUIOpenPunchoutHandler *)self isWebPunchout])
  {
    return 1;
  }

  v4 = [(SearchUIOpenPunchoutHandler *)self url];
  scheme = [v4 scheme];
  lowercaseString = [scheme lowercaseString];
  v7 = [lowercaseString isEqualToString:@"file"];

  return v7;
}

- (BOOL)isWebPunchout
{
  v2 = [(SearchUIOpenPunchoutHandler *)self url];
  scheme = [v2 scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [lowercaseString isEqualToString:@"https"];
  }

  return v5;
}

- (void)fetchShareableURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(SearchUIOpenPunchoutHandler *)self url];
  (*(handler + 2))(handlerCopy, v6);
}

- (id)defaultTitle
{
  punchoutType = [(SearchUIOpenPunchoutHandler *)self punchoutType];
  if (punchoutType - 1 > 2)
  {
    v3 = @"OPEN_MENU_ITEM";
  }

  else
  {
    v3 = off_1E85B3AC8[punchoutType - 1];
  }

  return [SearchUIUtilities localizedStringForKey:v3];
}

- (id)defaultSymbolName
{
  v3 = [(SearchUIOpenPunchoutHandler *)self punchoutType]- 1;
  if (v3 >= 3)
  {
    isWebPunchout = [(SearchUIOpenPunchoutHandler *)self isWebPunchout];
    v6 = @"arrow.up.forward.app";
    if (isWebPunchout)
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

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(SearchUIOpenPunchoutHandler *)self destinationPunchout:command];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  urls = [v5 urls];
  v7 = [urls countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(urls);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      scheme = [v11 scheme];
      if ([scheme isEqualToString:@"stocks"])
      {
        v18 = [objc_opt_class() queryItemValueForName:@"symbol" inURL:v11];
        v17 = [objc_alloc(MEMORY[0x1E69D47F8]) initWithStockTicker:v18];

LABEL_19:
        goto LABEL_20;
      }

      host = [v11 host];
      v14 = [host isEqualToString:@"weather.apple.com"];

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
          host2 = [v11 host];
          v16 = [&unk_1F55DD4D8 containsObject:host2];

          if ((v16 & 1) == 0)
          {
            v17 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v11];
            [v17 _setShowingLinkPreviewWithMinimalUI:1];
            goto LABEL_19;
          }
        }
      }
    }

    v8 = [urls countByEnumeratingWithState:&v20 objects:v24 count:16];
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

+ (id)queryItemValueForName:(id)name inURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v6 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  queryItems = [v6 queryItems];
  value = [queryItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (value)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(queryItems);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        name = [v11 name];
        v13 = [name isEqualToString:nameCopy];

        if (v13)
        {
          value = [v11 value];
          goto LABEL_11;
        }
      }

      value = [queryItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return value;
}

- (id)itemProvider
{
  v3 = objc_alloc(MEMORY[0x1E696ACA0]);
  v4 = [(SearchUIOpenPunchoutHandler *)self url];
  v5 = [v3 initWithObject:v4];

  return v5;
}

@end
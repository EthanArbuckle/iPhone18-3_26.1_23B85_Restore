@interface VSOnscreenCodeViewModel
- (CGSize)preferredLogoSize;
- (VSOnscreenCodeViewModelDelegate)delegate;
- (id)formattedWebsiteURL;
- (id)websiteURLWithQueryParameters;
- (void)configureWithRequest:(id)request;
@end

@implementation VSOnscreenCodeViewModel

- (void)configureWithRequest:(id)request
{
  requestCopy = request;
  [(VSOnscreenCodeViewModel *)self generateQRCode];
  v5.receiver = self;
  v5.super_class = VSOnscreenCodeViewModel;
  [(VSViewModel *)&v5 configureWithRequest:requestCopy];
}

- (id)websiteURLWithQueryParameters
{
  v39 = *MEMORY[0x277D85DE8];
  webPageURL = [(VSOnscreenCodeViewModel *)self webPageURL];

  if (!webPageURL)
  {
    goto LABEL_10;
  }

  webPageURL2 = [(VSOnscreenCodeViewModel *)self webPageURL];

  if (!webPageURL2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self webPageURL] parameter must not be nil."];
  }

  webPageURL3 = [(VSOnscreenCodeViewModel *)self webPageURL];
  v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:webPageURL3 resolvingAgainstBaseURL:0];
  if (!v6)
  {

LABEL_10:
    v13 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  queryItems = [v7 queryItems];
  v32 = v7;
  v33 = webPageURL3;
  if (queryItems)
  {
    queryItems2 = [v7 queryItems];
    v10 = [queryItems2 mutableCopy];

    if (!v10)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[urlComponents queryItems] mutableCopy] parameter must not be nil."];
    }

    queryItems3 = [v7 queryItems];
    v12 = [queryItems3 mutableCopy];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        name = [v19 name];
        v21 = [name isEqualToString:@"code"];

        value = [v19 value];
        onscreenCode = [(VSOnscreenCodeViewModel *)self onscreenCode];
        v24 = [value isEqualToString:onscreenCode];

        if (v21 & 1) != 0 || (v24)
        {
          v27 = v14;
          v29 = v32;
          goto LABEL_23;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v25 = objc_alloc(MEMORY[0x277CCAD18]);
  onscreenCode2 = [(VSOnscreenCodeViewModel *)self onscreenCode];
  v27 = [v25 initWithName:@"code" value:onscreenCode2];

  [v14 addObject:v27];
  v28 = [v14 copy];
  v29 = v32;
  [v32 setQueryItems:v28];

LABEL_23:
  v13 = [v29 URL];

LABEL_24:
  v30 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)formattedWebsiteURL
{
  webPageLabel = [(VSOnscreenCodeViewModel *)self webPageLabel];

  if (!webPageLabel)
  {
    webPageURL = [(VSOnscreenCodeViewModel *)self webPageURL];

    if (!webPageURL)
    {
      webPageLabel3 = &stru_2880B8BB0;
      goto LABEL_31;
    }

    webPageURL2 = [(VSOnscreenCodeViewModel *)self webPageURL];

    if (!webPageURL2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self webPageURL] parameter must not be nil."];
    }

    webPageURL3 = [(VSOnscreenCodeViewModel *)self webPageURL];
    v9 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:webPageURL3 resolvingAgainstBaseURL:0];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      host = [v11 host];
      if (host)
      {
        webPageLabel3 = [&stru_2880B8BB0 stringByAppendingString:host];
      }

      else
      {
        webPageLabel3 = &stru_2880B8BB0;
      }

      port = [v11 port];
      v16 = port;
      if (port)
      {
        v17 = [(__CFString *)webPageLabel3 stringByAppendingFormat:@":%@", port];

        webPageLabel3 = v17;
      }

      path = [v11 path];
      if (!path)
      {
        goto LABEL_28;
      }

      v19 = [(__CFString *)webPageLabel3 stringByAppendingString:path];
    }

    else
    {
      resourceSpecifier = [webPageURL3 resourceSpecifier];
      v11 = resourceSpecifier;
      if (!resourceSpecifier)
      {
        webPageLabel3 = &stru_2880B8BB0;
LABEL_30:

        goto LABEL_31;
      }

      host = resourceSpecifier;
      if ([host hasPrefix:@"//"])
      {
        v14 = [host substringFromIndex:2];
      }

      else
      {
        v14 = host;
      }

      webPageLabel3 = v14;
      v16 = [(__CFString *)v14 componentsSeparatedByString:@"?"];
      if ([v16 count] < 2)
      {
LABEL_29:

        goto LABEL_30;
      }

      firstObject = [v16 firstObject];
      path = firstObject;
      if (firstObject)
      {
        v21 = firstObject;
      }

      else
      {
        v21 = webPageLabel3;
      }

      v19 = v21;
    }

    v22 = v19;

    webPageLabel3 = v22;
LABEL_28:

    goto LABEL_29;
  }

  webPageLabel2 = [(VSOnscreenCodeViewModel *)self webPageLabel];

  if (!webPageLabel2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self webPageLabel] parameter must not be nil."];
  }

  webPageLabel3 = [(VSOnscreenCodeViewModel *)self webPageLabel];
LABEL_31:

  return webPageLabel3;
}

- (CGSize)preferredLogoSize
{
  width = self->preferredLogoSize.width;
  height = self->preferredLogoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (VSOnscreenCodeViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
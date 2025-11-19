@interface VSOnscreenCodeViewModel
- (CGSize)preferredLogoSize;
- (VSOnscreenCodeViewModelDelegate)delegate;
- (id)formattedWebsiteURL;
- (id)websiteURLWithQueryParameters;
- (void)configureWithRequest:(id)a3;
@end

@implementation VSOnscreenCodeViewModel

- (void)configureWithRequest:(id)a3
{
  v4 = a3;
  [(VSOnscreenCodeViewModel *)self generateQRCode];
  v5.receiver = self;
  v5.super_class = VSOnscreenCodeViewModel;
  [(VSViewModel *)&v5 configureWithRequest:v4];
}

- (id)websiteURLWithQueryParameters
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(VSOnscreenCodeViewModel *)self webPageURL];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = [(VSOnscreenCodeViewModel *)self webPageURL];

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self webPageURL] parameter must not be nil."];
  }

  v5 = [(VSOnscreenCodeViewModel *)self webPageURL];
  v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v5 resolvingAgainstBaseURL:0];
  if (!v6)
  {

LABEL_10:
    v13 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [v7 queryItems];
  v32 = v7;
  v33 = v5;
  if (v8)
  {
    v9 = [v7 queryItems];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[urlComponents queryItems] mutableCopy] parameter must not be nil."];
    }

    v11 = [v7 queryItems];
    v12 = [v11 mutableCopy];
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
        v20 = [v19 name];
        v21 = [v20 isEqualToString:@"code"];

        v22 = [v19 value];
        v23 = [(VSOnscreenCodeViewModel *)self onscreenCode];
        v24 = [v22 isEqualToString:v23];

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
  v26 = [(VSOnscreenCodeViewModel *)self onscreenCode];
  v27 = [v25 initWithName:@"code" value:v26];

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
  v3 = [(VSOnscreenCodeViewModel *)self webPageLabel];

  if (!v3)
  {
    v6 = [(VSOnscreenCodeViewModel *)self webPageURL];

    if (!v6)
    {
      v5 = &stru_2880B8BB0;
      goto LABEL_31;
    }

    v7 = [(VSOnscreenCodeViewModel *)self webPageURL];

    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self webPageURL] parameter must not be nil."];
    }

    v8 = [(VSOnscreenCodeViewModel *)self webPageURL];
    v9 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v8 resolvingAgainstBaseURL:0];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v12 = [v11 host];
      if (v12)
      {
        v5 = [&stru_2880B8BB0 stringByAppendingString:v12];
      }

      else
      {
        v5 = &stru_2880B8BB0;
      }

      v15 = [v11 port];
      v16 = v15;
      if (v15)
      {
        v17 = [(__CFString *)v5 stringByAppendingFormat:@":%@", v15];

        v5 = v17;
      }

      v18 = [v11 path];
      if (!v18)
      {
        goto LABEL_28;
      }

      v19 = [(__CFString *)v5 stringByAppendingString:v18];
    }

    else
    {
      v13 = [v8 resourceSpecifier];
      v11 = v13;
      if (!v13)
      {
        v5 = &stru_2880B8BB0;
LABEL_30:

        goto LABEL_31;
      }

      v12 = v13;
      if ([v12 hasPrefix:@"//"])
      {
        v14 = [v12 substringFromIndex:2];
      }

      else
      {
        v14 = v12;
      }

      v5 = v14;
      v16 = [(__CFString *)v14 componentsSeparatedByString:@"?"];
      if ([v16 count] < 2)
      {
LABEL_29:

        goto LABEL_30;
      }

      v20 = [v16 firstObject];
      v18 = v20;
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v5;
      }

      v19 = v21;
    }

    v22 = v19;

    v5 = v22;
LABEL_28:

    goto LABEL_29;
  }

  v4 = [(VSOnscreenCodeViewModel *)self webPageLabel];

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self webPageLabel] parameter must not be nil."];
  }

  v5 = [(VSOnscreenCodeViewModel *)self webPageLabel];
LABEL_31:

  return v5;
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
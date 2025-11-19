@interface NSString(QRCode)
- (id)darkQRCode;
- (id)lightQRCode;
- (id)parseQueryParamsWithTitleDictionary:()QRCode;
@end

@implementation NSString(QRCode)

- (id)lightQRCode
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = [MEMORY[0x277CBF750] filterWithName:@"CIQRCodeGenerator"];
  [v2 setValue:v1 forKey:@"inputMessage"];
  v3 = [v2 outputImage];
  [v3 extent];
  Width = CGRectGetWidth(v9);
  CGAffineTransformMakeScale(&v7, 256.0 / Width, 256.0 / Width);
  v5 = [v3 imageByApplyingTransform:&v7];

  return v5;
}

- (id)darkQRCode
{
  v1 = [a1 lightQRCode];
  if (v1)
  {
    v2 = [MEMORY[0x277CBF750] filterWithName:@"CIColorInvert"];
    v3 = *MEMORY[0x277CBFAF0];
    [v2 setValue:v1 forKey:*MEMORY[0x277CBFAF0]];
    if (objc_opt_respondsToSelector())
    {
      [v2 outputImage];
    }

    else
    {
      [0 valueForKey:*MEMORY[0x277CBFB50]];
    }
    v5 = ;
    if (v5)
    {
      v6 = [MEMORY[0x277CBF750] filterWithName:@"CIMaskToAlpha"];
      [v6 setValue:v5 forKey:v3];
      if (objc_opt_respondsToSelector())
      {
        [v6 outputImage];
      }

      else
      {
        [v6 valueForKey:*MEMORY[0x277CBFB50]];
      }
      v7 = ;
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v1;
      }

      v4 = v9;
    }

    else
    {
      v4 = v1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parseQueryParamsWithTitleDictionary:()QRCode
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACE0] componentsWithString:a1];
  v6 = [MEMORY[0x277CBEB18] array];
  v29 = v5;
  v7 = [v5 fragment];
  v8 = objc_opt_new();
  v28 = v7;
  [v8 setQuery:v7];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v8;
  obj = [v8 queryItems];
  v9 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v4 objectForKeyedSubscript:v14];
        v16 = v15;
        v17 = @"Unknown";
        if (v15)
        {
          v17 = v15;
        }

        v18 = v17;

        v35[0] = @"key";
        v19 = [v13 name];
        v36[0] = v19;
        v35[1] = @"value";
        v20 = [v13 value];
        v21 = v20;
        v22 = &stru_28753DF48;
        if (v20)
        {
          v22 = v20;
        }

        v35[2] = @"title";
        v36[1] = v22;
        v36[2] = v18;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];

        [v6 addObject:v23];
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v10);
  }

  v24 = [v6 sortedArrayUsingComparator:&__block_literal_global_24];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end
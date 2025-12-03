@interface _ICQUIHelperFunctions
+ (double)highestScreenScale;
+ (id)appIconWithSize:(CGSize)size forBundleID:(id)d drawBorder:(BOOL)border;
+ (id)scaledImageURL:(id)l;
+ (int64_t)purchaseTypeForQueryParams:(id)params;
+ (void)addHeadersForRequest:(id)request completion:(id)completion;
@end

@implementation _ICQUIHelperFunctions

+ (id)scaledImageURL:(id)l
{
  lCopy = l;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  if (v6 < 3)
  {
    if (v6 == 2)
    {
      [lCopy URL2x];
    }

    else
    {
      [lCopy URL1x];
    }
    uRL3x = ;
  }

  else
  {
    uRL3x = [lCopy URL3x];
  }

  v8 = uRL3x;

  return v8;
}

+ (int64_t)purchaseTypeForQueryParams:(id)params
{
  v26 = *MEMORY[0x277D85DE8];
  if (!params)
  {
    return 1;
  }

  v3 = [@"icq.icloud.com?" stringByAppendingString:?];
  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  queryItems = [v4 queryItems];
  v6 = [queryItems countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = v4;
    v20 = v3;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(queryItems);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        name = [v10 name];
        if ([name isEqualToString:@"framework"])
        {
          value = [v10 value];
          v13 = [value isEqualToString:@"dynamicUI"];

          if (v13)
          {
            v4 = v19;
            v3 = v20;
            v17 = 2;
            goto LABEL_21;
          }
        }

        else
        {
        }

        name2 = [v10 name];
        if ([name2 isEqualToString:@"deviceOffers"])
        {
          value2 = [v10 value];
          v16 = [value2 isEqualToString:@"true"];

          if (v16)
          {
            v17 = 0;
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v7 = [queryItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
    v17 = 1;
LABEL_20:
    v4 = v19;
    v3 = v20;
  }

  else
  {
    v17 = 1;
  }

LABEL_21:

  return v17;
}

+ (void)addHeadersForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v7 = getINDaemonConnectionClass_softClass_0;
  v19 = getINDaemonConnectionClass_softClass_0;
  if (!getINDaemonConnectionClass_softClass_0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getINDaemonConnectionClass_block_invoke_0;
    v15[3] = &unk_27A65A9F8;
    v15[4] = &v16;
    __getINDaemonConnectionClass_block_invoke_0(v15);
    v7 = v17[3];
  }

  v8 = v7;
  _Block_object_dispose(&v16, 8);
  v9 = objc_alloc_init(v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57___ICQUIHelperFunctions_addHeadersForRequest_completion___block_invoke;
  v12[3] = &unk_27A65ABF8;
  v13 = requestCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = requestCopy;
  [v9 commonHeadersForRequest:v11 withCompletion:v12];
}

+ (id)appIconWithSize:(CGSize)size forBundleID:(id)d drawBorder:(BOOL)border
{
  borderCopy = border;
  height = size.height;
  width = size.width;
  dCopy = d;
  v23 = 0;
  v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v23];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:dCopy];
    v11 = objc_alloc(MEMORY[0x277D1B1C8]);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v14 = [v11 initWithSize:width scale:{height, v13}];

    [v14 setDrawBorder:borderCopy];
    v15 = [v10 prepareImageForDescriptor:v14];
    v16 = [v10 imageForDescriptor:v14];
    v17 = v16;
    if (v16)
    {
      v18 = MEMORY[0x277D755B8];
      cGImage = [v16 CGImage];
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 scale];
      v21 = [v18 imageWithCGImage:cGImage scale:0 orientation:?];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (double)highestScreenScale
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  return v4;
}

@end
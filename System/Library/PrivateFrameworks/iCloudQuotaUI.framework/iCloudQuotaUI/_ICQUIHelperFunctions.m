@interface _ICQUIHelperFunctions
+ (double)highestScreenScale;
+ (id)appIconWithSize:(CGSize)a3 forBundleID:(id)a4 drawBorder:(BOOL)a5;
+ (id)scaledImageURL:(id)a3;
+ (int64_t)purchaseTypeForQueryParams:(id)a3;
+ (void)addHeadersForRequest:(id)a3 completion:(id)a4;
@end

@implementation _ICQUIHelperFunctions

+ (id)scaledImageURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;

  if (v6 < 3)
  {
    if (v6 == 2)
    {
      [v3 URL2x];
    }

    else
    {
      [v3 URL1x];
    }
    v7 = ;
  }

  else
  {
    v7 = [v3 URL3x];
  }

  v8 = v7;

  return v8;
}

+ (int64_t)purchaseTypeForQueryParams:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 1;
  }

  v3 = [@"icq.icloud.com?" stringByAppendingString:?];
  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 queryItems];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 name];
        if ([v11 isEqualToString:@"framework"])
        {
          v12 = [v10 value];
          v13 = [v12 isEqualToString:@"dynamicUI"];

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

        v14 = [v10 name];
        if ([v14 isEqualToString:@"deviceOffers"])
        {
          v15 = [v10 value];
          v16 = [v15 isEqualToString:@"true"];

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

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (void)addHeadersForRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  [v9 commonHeadersForRequest:v11 withCompletion:v12];
}

+ (id)appIconWithSize:(CGSize)a3 forBundleID:(id)a4 drawBorder:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v23 = 0;
  v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v23];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v8];
    v11 = objc_alloc(MEMORY[0x277D1B1C8]);
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 scale];
    v14 = [v11 initWithSize:width scale:{height, v13}];

    [v14 setDrawBorder:v5];
    v15 = [v10 prepareImageForDescriptor:v14];
    v16 = [v10 imageForDescriptor:v14];
    v17 = v16;
    if (v16)
    {
      v18 = MEMORY[0x277D755B8];
      v19 = [v16 CGImage];
      v20 = [MEMORY[0x277D759A0] mainScreen];
      [v20 scale];
      v21 = [v18 imageWithCGImage:v19 scale:0 orientation:?];
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
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  return v4;
}

@end
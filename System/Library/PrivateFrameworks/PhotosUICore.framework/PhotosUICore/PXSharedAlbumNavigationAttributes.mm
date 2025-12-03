@interface PXSharedAlbumNavigationAttributes
+ (id)attributesForURLComponents:(id)components;
@end

@implementation PXSharedAlbumNavigationAttributes

+ (id)attributesForURLComponents:(id)components
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  componentsCopy = components;
  queryItems = [componentsCopy queryItems];
  v4 = [queryItems countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v21 = 0;
    v7 = 0;
    v8 = *v23;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(queryItems);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        name = [v10 name];
        if ([name isEqualToString:@"invitationalbumuuid"])
        {
          value = [v10 value];
          v13 = v7;
          v7 = value;
        }

        else if ([name isEqualToString:@"revealassetuuid"])
        {
          value2 = [v10 value];
          v13 = v6;
          v6 = value2;
        }

        else
        {
          if (![name isEqualToString:@"commentguid"])
          {
            goto LABEL_13;
          }

          value3 = [v10 value];
          v13 = v21;
          v21 = value3;
        }

LABEL_13:
      }

      v5 = [queryItems countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v5)
      {
        goto LABEL_17;
      }
    }
  }

  v6 = 0;
  v21 = 0;
  v7 = 0;
LABEL_17:

  if (v7 || v6 || v21)
  {
    v16 = objc_alloc_init(self);
    objc_storeStrong(v16 + 1, v7);
    objc_storeStrong(v16 + 2, v6);
    objc_storeStrong(v16 + 3, v21);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

@end
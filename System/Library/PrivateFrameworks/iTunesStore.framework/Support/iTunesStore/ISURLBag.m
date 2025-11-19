@interface ISURLBag
+ (id)copyAllowedAutomaticDownloadKindsInBagContext:(id)a3;
@end

@implementation ISURLBag

+ (id)copyAllowedAutomaticDownloadKindsInBagContext:(id)a3
{
  v4 = objc_alloc_init(NSMutableSet);
  v5 = [+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
  v6 = [v5 valueForKey:@"automatic-downloads2"];
  if (!v6)
  {
    v6 = [v5 valueForKey:@"automatic-downloads"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:@"configurations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v14 + 1) + 8 * v11) objectForKey:@"media-types"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v4 addObjectsFromArray:v12];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }

  return v4;
}

@end
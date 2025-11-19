@interface AMSBag_iTunesStoreUI
- (AMSBagValue)appleMusicDeviceOfferDeepLink;
- (AMSBagValue)iCloudDeviceOfferDeepLink;
@end

@implementation AMSBag_iTunesStoreUI

- (AMSBagValue)appleMusicDeviceOfferDeepLink
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69E4770]);
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v4 = [v2 initWithBagContext:v3];

  [v4 start];
  v5 = [v4 URLBag];
  if (!v5)
  {
    v6 = [MEMORY[0x1E69D4938] sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v17 = 138543618;
      *&v17[4] = objc_opt_class();
      *&v17[12] = 2080;
      *&v17[14] = "[AMSBag_iTunesStoreUI appleMusicDeviceOfferDeepLink]";
      v10 = *&v17[4];
      LODWORD(v16) = 22;
      v15 = v17;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_11:

        goto LABEL_12;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v17, v16, *v17, *&v17[16], v18}];
      free(v11);
      v15 = v9;
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  v12 = [v5 valueForKey:{@"appleMusicDeviceOfferDeepLink", v15}];
  v13 = [MEMORY[0x1E698C7E8] frozenBagValueWithKey:@"appleMusicDeviceOfferDeepLink" value:v12 valueType:5];

  return v13;
}

- (AMSBagValue)iCloudDeviceOfferDeepLink
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69E4770]);
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v4 = [v2 initWithBagContext:v3];

  [v4 start];
  v5 = [v4 URLBag];
  if (!v5)
  {
    v6 = [MEMORY[0x1E69D4938] sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v17 = 138543618;
      *&v17[4] = objc_opt_class();
      *&v17[12] = 2080;
      *&v17[14] = "[AMSBag_iTunesStoreUI iCloudDeviceOfferDeepLink]";
      v10 = *&v17[4];
      LODWORD(v16) = 22;
      v15 = v17;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_11:

        goto LABEL_12;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v17, v16, *v17, *&v17[16], v18}];
      free(v11);
      v15 = v9;
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  v12 = [v5 valueForKey:{@"iCloudDeviceOfferDeepLink", v15}];
  v13 = [MEMORY[0x1E698C7E8] frozenBagValueWithKey:@"iCloudDeviceOfferDeepLink" value:v12 valueType:5];

  return v13;
}

@end
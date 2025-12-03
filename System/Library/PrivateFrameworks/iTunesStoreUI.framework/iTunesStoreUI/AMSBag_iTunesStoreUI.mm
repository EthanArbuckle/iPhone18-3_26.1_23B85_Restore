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
  uRLBag = [v4 URLBag];
  if (!uRLBag)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v17, v16, *v17, *&v17[16], v18}];
      free(v11);
      v15 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  v12 = [uRLBag valueForKey:{@"appleMusicDeviceOfferDeepLink", v15}];
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
  uRLBag = [v4 URLBag];
  if (!uRLBag)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v17, v16, *v17, *&v17[16], v18}];
      free(v11);
      v15 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  v12 = [uRLBag valueForKey:{@"iCloudDeviceOfferDeepLink", v15}];
  v13 = [MEMORY[0x1E698C7E8] frozenBagValueWithKey:@"iCloudDeviceOfferDeepLink" value:v12 valueType:5];

  return v13;
}

@end
@interface AccountPasswordSettingsController
+ (void)updateAccountPasswordSettings:(id)a3 connection:(id)a4;
@end

@implementation AccountPasswordSettingsController

+ (void)updateAccountPasswordSettings:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    v8 = +[Daemon daemon];
    [v8 takeKeepAliveAssertion:@"com.apple.itunesstored.AccountPasswordSettings"];

    objc_opt_class();
    reply = SSXPCDictionaryCopyCFObjectWithClass();
    objc_opt_class();
    v10 = SSXPCDictionaryCopyCFObjectWithClass();
    objc_opt_class();
    v11 = SSXPCDictionaryCopyCFObjectWithClass();
    v12 = xpc_dictionary_get_value(v6, "4");
    if (reply)
    {
      v18 = v10;
      v13 = [v10 integerValue];
      v14 = [v11 integerValue];
      v15 = [[SSURLRequestProperties alloc] initWithXPCEncoding:v12];
      v16 = [[UpdateAccountPasswordSettingsOperation alloc] initWithFreeDownloadsPasswordSetting:v13 paidPurchasesPasswordSetting:v14 requestProperties:v15];
      objc_initWeak(&location, v16);
      objc_initWeak(&from, a1);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10013DC1C;
      v19[3] = &unk_100329A80;
      objc_copyWeak(&v23, &from);
      objc_copyWeak(v24, &location);
      v20 = reply;
      v24[1] = v13;
      v24[2] = v14;
      v21 = v6;
      v22 = v7;
      [(UpdateAccountPasswordSettingsOperation *)v16 setCompletionBlock:v19];
      v17 = +[ISOperationQueue mainQueue];
      [v17 addOperation:v16];

      objc_destroyWeak(v24);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      v10 = v18;
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(v6);
    xpc_connection_send_message(v7, reply);
  }
}

@end
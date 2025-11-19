@interface TUPSSimStatusCacheSoftLinking
+ (id)fetchSubscriptionsInUse;
@end

@implementation TUPSSimStatusCacheSoftLinking

+ (id)fetchSubscriptionsInUse
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objc_opt_class();
    v3 = *(&buf + 4);
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "%@ fetching current CTXPCServiceSubscriptions in use", &buf, 0xCu);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getPSSimStatusCacheClass_softClass;
  v13 = getPSSimStatusCacheClass_softClass;
  if (!getPSSimStatusCacheClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v15 = __getPSSimStatusCacheClass_block_invoke;
    v16 = &unk_1E7424CD8;
    v17 = &v10;
    __getPSSimStatusCacheClass_block_invoke(&buf);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [v4 sharedInstance];
  v7 = [v6 subscriptionsInUse];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end
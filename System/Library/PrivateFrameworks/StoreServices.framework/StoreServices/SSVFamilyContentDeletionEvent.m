@interface SSVFamilyContentDeletionEvent
+ (id)notificationPayloadWithAccountPairs:(id)a3;
+ (void)postDistributedNotificationWithAccountPairs:(id)a3;
- (SSVFamilyContentDeletionEvent)initWithNotificationUserInfo:(id)a3;
- (SSVFamilyContentDeletionEvent)initWithXPCEventStreamEvent:(id)a3;
@end

@implementation SSVFamilyContentDeletionEvent

- (SSVFamilyContentDeletionEvent)initWithNotificationUserInfo:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = SSVFamilyContentDeletionEvent;
  v5 = [(SSVFamilyContentDeletionEvent *)&v39 init];
  if (v5)
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [v4 objectForKey:@"pairs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v5;
      v31 = v4;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v29 = v6;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0x1E695D000uLL;
        v11 = *v36;
        v12 = @"did";
        v32 = v7;
        do
        {
          v13 = 0;
          do
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v35 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 objectForKey:v12];
              v16 = [v14 objectForKey:@"fid"];
              v17 = [v14 objectForKey:@"pid"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v34 = [SSVFamilyAccountPair alloc];
                    v18 = v12;
                    v19 = [v15 unsignedLongLongValue];
                    v20 = v10;
                    v21 = [v17 unsignedLongLongValue];
                    v22 = [v16 unsignedLongLongValue];
                    v23 = v19;
                    v12 = v18;
                    v24 = v21;
                    v10 = v20;
                    v25 = [(SSVFamilyAccountPair *)v34 initWithDownloaderAccountIdentifier:v23 purchaserAccountIdentifier:v24 familyIdentifier:v22];
                    [v33 addObject:v25];

                    v7 = v32;
                  }
                }
              }
            }

            ++v13;
          }

          while (v9 != v13);
          v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v9);
      }

      v5 = v30;
      v4 = v31;
      v6 = v29;
    }

    v26 = [v33 copy];
    deletedAccounts = v5->_deletedAccounts;
    v5->_deletedAccounts = v26;
  }

  return v5;
}

- (SSVFamilyContentDeletionEvent)initWithXPCEventStreamEvent:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SSVFamilyContentDeletionEvent;
  v5 = [(SSVFamilyContentDeletionEvent *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v4)
    {
      v7 = MEMORY[0x1DA6E0380](v4);
      v8 = MEMORY[0x1E69E9E80];
      if (v7 == MEMORY[0x1E69E9E80])
      {
        v9 = xpc_dictionary_get_value(v4, "UserInfo");
        v10 = v9;
        if (v9 && MEMORY[0x1DA6E0380](v9) == v8)
        {
          v11 = xpc_dictionary_get_value(v10, "pairs");
          v12 = v11;
          if (v11 && MEMORY[0x1DA6E0380](v11) == MEMORY[0x1E69E9E50])
          {
            applier[0] = MEMORY[0x1E69E9820];
            applier[1] = 3221225472;
            applier[2] = __61__SSVFamilyContentDeletionEvent_initWithXPCEventStreamEvent___block_invoke;
            applier[3] = &unk_1E84AC3D8;
            v17 = v6;
            xpc_array_apply(v12, applier);
          }
        }
      }
    }

    v13 = [v6 copy];
    deletedAccounts = v5->_deletedAccounts;
    v5->_deletedAccounts = v13;
  }

  return v5;
}

uint64_t __61__SSVFamilyContentDeletionEvent_initWithXPCEventStreamEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v6 = xpc_dictionary_get_value(v5, "did");
    v7 = xpc_dictionary_get_value(v5, "fid");
    v8 = xpc_dictionary_get_value(v5, "pid");
    if (v6)
    {
      v9 = MEMORY[0x1DA6E0380](v6);
      v10 = MEMORY[0x1E69E9EB0];
      if (v9 == MEMORY[0x1E69E9EB0] && v7 && MEMORY[0x1DA6E0380](v7) == v10 && v8 && MEMORY[0x1DA6E0380](v8) == v10)
      {
        v11 = [SSVFamilyAccountPair alloc];
        value = xpc_int64_get_value(v6);
        v13 = xpc_int64_get_value(v8);
        v14 = [(SSVFamilyAccountPair *)v11 initWithDownloaderAccountIdentifier:value purchaserAccountIdentifier:v13 familyIdentifier:xpc_int64_get_value(v7)];
        [*(a1 + 32) addObject:v14];
      }
    }
  }

  return 1;
}

+ (id)notificationPayloadWithAccountPairs:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "downloaderAccountIdentifier")}];
        [v10 setObject:v11 forKey:@"did"];

        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "familyIdentifier")}];
        [v10 setObject:v12 forKey:@"fid"];

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "purchaserAccountIdentifier")}];
        [v10 setObject:v13 forKey:@"pid"];

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"pairs", 0}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)postDistributedNotificationWithAccountPairs:(id)a3
{
  v3 = [a1 notificationPayloadWithAccountPairs:a3];
  if (v3)
  {
    v6 = v3;
    v4 = v3;
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterPostNotification(DistributedCenter, @"com.apple.StoreServices.SSVFamilyContentDeletionNotification", 0, v4, 0);
    CFRelease(v4);
    v3 = v6;
  }
}

@end
@interface SCUIAccountHelper
+ (BOOL)isiMessageLoggedIn;
+ (id)_getValidAccountAlias:(id)a3;
+ (id)bestHandleID:(id)a3;
+ (id)bestiMessageServiceHandle;
@end

@implementation SCUIAccountHelper

+ (BOOL)isiMessageLoggedIn
{
  v2 = [a1 bestiMessageServiceHandle];
  v3 = v2 != 0;

  return v3;
}

+ (id)bestiMessageServiceHandle
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v3 = getIMServiceClass_softClass;
  v32 = getIMServiceClass_softClass;
  if (!getIMServiceClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getIMServiceClass_block_invoke;
    v27 = &unk_1E7FF2370;
    v28 = &v29;
    __getIMServiceClass_block_invoke(&v24);
    v3 = v30[3];
  }

  v4 = v3;
  _Block_object_dispose(&v29, 8);
  v5 = [v3 iMessageService];
  if (v5)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v6 = getIMAccountControllerClass_softClass;
    v32 = getIMAccountControllerClass_softClass;
    if (!getIMAccountControllerClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getIMAccountControllerClass_block_invoke;
      v27 = &unk_1E7FF2370;
      v28 = &v29;
      __getIMAccountControllerClass_block_invoke(&v24);
      v6 = v30[3];
    }

    v7 = v6;
    _Block_object_dispose(&v29, 8);
    v8 = [v6 sharedInstance];
    v9 = [v8 activeAccountsForService:v5];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v33 count:16];
    if (v11)
    {
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [a1 _getValidAccountAlias:{v14, v20}];
          v16 = v15 == 0;

          if (!v16)
          {
            v17 = [v14 loginIMHandle];
            goto LABEL_16;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_16:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)_getValidAccountAlias:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [a3 aliases];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 scui_isValidAccountID])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)bestHandleID:(id)a3
{
  v4 = a3;
  v5 = [v4 account];
  if (v5)
  {
    [a1 _getValidAccountAlias:v5];
  }

  else
  {
    [v4 ID];
  }
  v6 = ;

  return v6;
}

@end
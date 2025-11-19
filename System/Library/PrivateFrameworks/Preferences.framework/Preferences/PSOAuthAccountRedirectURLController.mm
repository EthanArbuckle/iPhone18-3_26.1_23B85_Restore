@interface PSOAuthAccountRedirectURLController
+ (id)sharedInstance;
- (BOOL)handleOAuthRedirectURL:(id)a3;
- (PSOAuthAccountRedirectURLController)init;
- (id)_redirectURLFromURL:(id)a3;
- (void)registerOAuthClientForRedirectURL:(id)a3 redirectHandler:(id)a4;
- (void)unRegisterOAuthClientForRedirectURL:(id)a3;
@end

@implementation PSOAuthAccountRedirectURLController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PSOAuthAccountRedirectURLController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_oauthRedirectInstanceToken != -1)
  {
    dispatch_once(&sharedInstance_oauthRedirectInstanceToken, block);
  }

  v2 = sharedInstance___instance;

  return v2;
}

void __53__PSOAuthAccountRedirectURLController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___instance;
  sharedInstance___instance = v1;
}

- (PSOAuthAccountRedirectURLController)init
{
  v5.receiver = self;
  v5.super_class = PSOAuthAccountRedirectURLController;
  v2 = [(PSOAuthAccountRedirectURLController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    [(PSOAuthAccountRedirectURLController *)v2 setRedirectHandlerMap:v3];
  }

  return v2;
}

- (void)registerOAuthClientForRedirectURL:(id)a3 redirectHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(PSOAuthAccountRedirectURLController *)self redirectHandlerMap];
  v8 = [v6 copy];

  [v9 setObject:v8 forKey:v7];
}

- (void)unRegisterOAuthClientForRedirectURL:(id)a3
{
  v4 = a3;
  v5 = [(PSOAuthAccountRedirectURLController *)self redirectHandlerMap];
  [v5 removeObjectForKey:v4];
}

- (BOOL)handleOAuthRedirectURL:(id)a3
{
  v4 = a3;
  v5 = [(PSOAuthAccountRedirectURLController *)self _redirectURLFromURL:v4];
  for (i = 0; ; i)
  {
    v7 = [(PSOAuthAccountRedirectURLController *)self redirectHandlerMap];
    v8 = [v7 keyEnumerator];
    v9 = [v8 nextObject];

    if (!v9)
    {
      break;
    }

    i = v9;
    if (![i caseInsensitiveCompare:v5])
    {
      v10 = [(PSOAuthAccountRedirectURLController *)self redirectHandlerMap];
      v11 = [v10 objectForKey:i];

      if (v11)
      {
        (v11)[2](v11, v4);

        break;
      }
    }
  }

  return v9 != 0;
}

- (id)_redirectURLFromURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  if (v4)
  {
    v5 = [v3 host];
  }

  else
  {
    v6 = [v3 path];
    v5 = [v6 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1EFE45030];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v3 scheme];
  v9 = [v7 stringWithFormat:@"%@://%@", v8, v5];

  return v9;
}

@end
@interface PSOAuthAccountRedirectURLController
+ (id)sharedInstance;
- (BOOL)handleOAuthRedirectURL:(id)l;
- (PSOAuthAccountRedirectURLController)init;
- (id)_redirectURLFromURL:(id)l;
- (void)registerOAuthClientForRedirectURL:(id)l redirectHandler:(id)handler;
- (void)unRegisterOAuthClientForRedirectURL:(id)l;
@end

@implementation PSOAuthAccountRedirectURLController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PSOAuthAccountRedirectURLController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    [(PSOAuthAccountRedirectURLController *)v2 setRedirectHandlerMap:strongToWeakObjectsMapTable];
  }

  return v2;
}

- (void)registerOAuthClientForRedirectURL:(id)l redirectHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  redirectHandlerMap = [(PSOAuthAccountRedirectURLController *)self redirectHandlerMap];
  v8 = [handlerCopy copy];

  [redirectHandlerMap setObject:v8 forKey:lCopy];
}

- (void)unRegisterOAuthClientForRedirectURL:(id)l
{
  lCopy = l;
  redirectHandlerMap = [(PSOAuthAccountRedirectURLController *)self redirectHandlerMap];
  [redirectHandlerMap removeObjectForKey:lCopy];
}

- (BOOL)handleOAuthRedirectURL:(id)l
{
  lCopy = l;
  v5 = [(PSOAuthAccountRedirectURLController *)self _redirectURLFromURL:lCopy];
  for (i = 0; ; i)
  {
    redirectHandlerMap = [(PSOAuthAccountRedirectURLController *)self redirectHandlerMap];
    keyEnumerator = [redirectHandlerMap keyEnumerator];
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    i = nextObject;
    if (![i caseInsensitiveCompare:v5])
    {
      redirectHandlerMap2 = [(PSOAuthAccountRedirectURLController *)self redirectHandlerMap];
      v11 = [redirectHandlerMap2 objectForKey:i];

      if (v11)
      {
        (v11)[2](v11, lCopy);

        break;
      }
    }
  }

  return nextObject != 0;
}

- (id)_redirectURLFromURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if (host)
  {
    host2 = [lCopy host];
  }

  else
  {
    path = [lCopy path];
    host2 = [path stringByReplacingOccurrencesOfString:@"/" withString:&stru_1EFE45030];
  }

  v7 = MEMORY[0x1E696AEC0];
  scheme = [lCopy scheme];
  v9 = [v7 stringWithFormat:@"%@://%@", scheme, host2];

  return v9;
}

@end
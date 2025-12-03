@interface VUIMediaAPIClient
+ (VUIMediaAPIClient)sharedInstance;
+ (void)initializeWithAppleTVClientIdentifier;
- (VUIMediaAPIClient)initWithClientIdentifier:(id)identifier;
- (id)_createSession;
- (id)_createTokenServiceWithSession:(id)session;
- (void)fetchContentForUrl:(id)url completion:(id)completion;
@end

@implementation VUIMediaAPIClient

+ (void)initializeWithAppleTVClientIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VUIMediaAPIClient_initializeWithAppleTVClientIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initializeWithAppleTVClientIdentifier_once != -1)
  {
    dispatch_once(&initializeWithAppleTVClientIdentifier_once, block);
  }
}

void __58__VUIMediaAPIClient_initializeWithAppleTVClientIdentifier__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) getPlatformClientIdentifier];
  v2 = [objc_alloc(*(a1 + 32)) initWithClientIdentifier:v4];
  v3 = sharedInstance;
  sharedInstance = v2;
}

+ (VUIMediaAPIClient)sharedInstance
{
  v2 = sharedInstance;
  if (!sharedInstance)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You must create with whitelisted clientID."];
    v2 = sharedInstance;
  }

  return v2;
}

- (VUIMediaAPIClient)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = VUIMediaAPIClient;
  v5 = [(VUIMediaAPIClient *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(VUIMediaAPIClient *)v5 setClientIdentifier:identifierCopy];
    _createSession = [(VUIMediaAPIClient *)v6 _createSession];
  }

  return v6;
}

- (void)fetchContentForUrl:(id)url completion:(id)completion
{
  urlCopy = url;
  completionCopy = completion;
  vui_defaultBag = [MEMORY[0x1E698C7D8] vui_defaultBag];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__19;
  v23 = __Block_byref_object_dispose__19;
  v9 = objc_alloc(MEMORY[0x1E698C9C0]);
  tokenService = [(VUIMediaAPIClient *)self tokenService];
  v24 = [v9 initWithTokenService:tokenService bag:vui_defaultBag];

  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  [v20[5] setAccount:activeAccount];
  v12 = [urlCopy URL];
  absoluteString = [v12 absoluteString];
  NSLog(&cfstr_CreatingPromis.isa, absoluteString);

  v14 = [v20[5] requestByEncodingRequest:urlCopy parameters:0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__VUIMediaAPIClient_fetchContentForUrl_completion___block_invoke;
  v16[3] = &unk_1E8733C48;
  v15 = completionCopy;
  v16[4] = self;
  v17 = v15;
  v18 = &v19;
  [v14 addFinishBlock:v16];

  _Block_object_dispose(&v19, 8);
}

void __51__VUIMediaAPIClient_fetchContentForUrl_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) session];
    v7 = [v6 dataTaskPromiseWithRequest:v5];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__VUIMediaAPIClient_fetchContentForUrl_completion___block_invoke_2;
    v10[3] = &unk_1E8733C20;
    v11 = *(a1 + 40);
    [v7 addFinishBlock:v10];
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (id)_createSession
{
  defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
  v4 = [objc_alloc(MEMORY[0x1E698CBA8]) initWithConfiguration:defaultSessionConfiguration];
  v5 = [(VUIMediaAPIClient *)self _createTokenServiceWithSession:v4];
  v6 = [objc_alloc(MEMORY[0x1E698C9B8]) initWithTokenService:v5];
  [v4 setProtocolHandler:v6];
  [(VUIMediaAPIClient *)self setSession:v4];
  [(VUIMediaAPIClient *)self setTokenService:v5];
  session = [(VUIMediaAPIClient *)self session];

  return session;
}

- (id)_createTokenServiceWithSession:(id)session
{
  v4 = MEMORY[0x1E698C7D8];
  sessionCopy = session;
  vui_defaultBag = [v4 vui_defaultBag];
  v7 = objc_alloc(MEMORY[0x1E698C9E8]);
  clientIdentifier = [(VUIMediaAPIClient *)self clientIdentifier];
  v9 = [v7 initWithClientIdentifier:clientIdentifier bag:vui_defaultBag];

  [v9 setSession:sessionCopy];

  return v9;
}

@end
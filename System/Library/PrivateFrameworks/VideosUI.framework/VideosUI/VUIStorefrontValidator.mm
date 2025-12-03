@interface VUIStorefrontValidator
+ (void)isValidStorefront:(id)storefront sharedStorefront:(id)sharedStorefront completion:(id)completion;
@end

@implementation VUIStorefrontValidator

+ (void)isValidStorefront:(id)storefront sharedStorefront:(id)sharedStorefront completion:(id)completion
{
  storefrontCopy = storefront;
  sharedStorefrontCopy = sharedStorefront;
  completionCopy = completion;
  v10 = +[VUITVAppLauncher sharedInstance];
  appController = [v10 appController];
  appContext = [appController appContext];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__VUIStorefrontValidator_isValidStorefront_sharedStorefront_completion___block_invoke;
  v16[3] = &unk_1E872DD88;
  v17 = storefrontCopy;
  v18 = sharedStorefrontCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = sharedStorefrontCopy;
  v15 = storefrontCopy;
  [appContext evaluate:v16];
}

void __72__VUIStorefrontValidator_isValidStorefront_sharedStorefront_completion___block_invoke(uint64_t a1, void *a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"VideoURLRouterInterface"];
  if ([v3 hasProperty:@"isValidStorefront"])
  {
    v4 = *(a1 + 40);
    v10[0] = *(a1 + 32);
    v10[1] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__VUIStorefrontValidator_isValidStorefront_sharedStorefront_completion___block_invoke_2;
    aBlock[3] = &unk_1E872D790;
    v9 = *(a1 + 48);
    v5 = _Block_copy(aBlock);
    v10[2] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
    v7 = [v3 invokeMethod:@"isValidStorefront" withArguments:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

@end
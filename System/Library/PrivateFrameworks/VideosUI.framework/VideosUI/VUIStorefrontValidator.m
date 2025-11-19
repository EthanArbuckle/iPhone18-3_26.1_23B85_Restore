@interface VUIStorefrontValidator
+ (void)isValidStorefront:(id)a3 sharedStorefront:(id)a4 completion:(id)a5;
@end

@implementation VUIStorefrontValidator

+ (void)isValidStorefront:(id)a3 sharedStorefront:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[VUITVAppLauncher sharedInstance];
  v11 = [v10 appController];
  v12 = [v11 appContext];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__VUIStorefrontValidator_isValidStorefront_sharedStorefront_completion___block_invoke;
  v16[3] = &unk_1E872DD88;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  [v12 evaluate:v16];
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
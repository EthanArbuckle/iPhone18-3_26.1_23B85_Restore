@interface UIApplication(PKUIUtilities)
- (void)pkui_consumeSharedRootAuthenticationContext;
- (void)pkui_resetSharedRootAuthenticationContext;
@end

@implementation UIApplication(PKUIUtilities)

- (void)pkui_consumeSharedRootAuthenticationContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = *MEMORY[0x1E69DDBE8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__UIApplication_PKUIUtilities__pkui_consumeSharedRootAuthenticationContext__block_invoke;
  aBlock[3] = &unk_1E8011A18;
  aBlock[4] = &v6;
  v2 = _Block_copy(aBlock);
  v3 = [a1 beginBackgroundTaskWithExpirationHandler:v2];
  v7[3] = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__UIApplication_PKUIUtilities__pkui_consumeSharedRootAuthenticationContext__block_invoke_2;
  v4[3] = &unk_1E8014BD0;
  v4[4] = a1;
  v4[5] = &v6;
  [MEMORY[0x1E69BC740] consumeSharedRootContextWithCompletion:v4];

  _Block_object_dispose(&v6, 8);
}

- (void)pkui_resetSharedRootAuthenticationContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = *MEMORY[0x1E69DDBE8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__UIApplication_PKUIUtilities__pkui_resetSharedRootAuthenticationContext__block_invoke;
  aBlock[3] = &unk_1E8011A18;
  aBlock[4] = &v6;
  v2 = _Block_copy(aBlock);
  v3 = [a1 beginBackgroundTaskWithExpirationHandler:v2];
  v7[3] = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__UIApplication_PKUIUtilities__pkui_resetSharedRootAuthenticationContext__block_invoke_2;
  v4[3] = &unk_1E8014BD0;
  v4[4] = a1;
  v4[5] = &v6;
  [MEMORY[0x1E69BC740] resetSharedRootContextWithCompletion:v4];

  _Block_object_dispose(&v6, 8);
}

@end
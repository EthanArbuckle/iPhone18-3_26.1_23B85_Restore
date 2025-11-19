@interface UIApplication
@end

@implementation UIApplication

void __75__UIApplication_PKUIUtilities__pkui_consumeSharedRootAuthenticationContext__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __75__UIApplication_PKUIUtilities__pkui_consumeSharedRootAuthenticationContext__block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __75__UIApplication_PKUIUtilities__pkui_consumeSharedRootAuthenticationContext__block_invoke_3;
  v1[3] = &unk_1E8014BD0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

uint64_t __75__UIApplication_PKUIUtilities__pkui_consumeSharedRootAuthenticationContext__block_invoke_3(uint64_t result)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(result + 40) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v2 = result;
    result = [*(result + 32) endBackgroundTask:?];
    *(*(*(v2 + 40) + 8) + 24) = v1;
  }

  return result;
}

void __73__UIApplication_PKUIUtilities__pkui_resetSharedRootAuthenticationContext__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __73__UIApplication_PKUIUtilities__pkui_resetSharedRootAuthenticationContext__block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __73__UIApplication_PKUIUtilities__pkui_resetSharedRootAuthenticationContext__block_invoke_3;
  v1[3] = &unk_1E8014BD0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

uint64_t __73__UIApplication_PKUIUtilities__pkui_resetSharedRootAuthenticationContext__block_invoke_3(uint64_t result)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(result + 40) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v2 = result;
    result = [*(result + 32) endBackgroundTask:?];
    *(*(*(v2 + 40) + 8) + 24) = v1;
  }

  return result;
}

@end
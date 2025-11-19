@interface UIApplication
@end

@implementation UIApplication

void __120__UIApplication_SBSUIInCallAdditions__SBSUI_requestInCallSceneSessionDestruction_withReason_analyticsSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
    if (v5)
    {
      [v5 error];
    }

    else
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"SBSUIInCallErrorDomain" code:-1001 userInfo:0];
    }
    v4 = ;
    (*(*(a1 + 40) + 16))();
  }
}

@end
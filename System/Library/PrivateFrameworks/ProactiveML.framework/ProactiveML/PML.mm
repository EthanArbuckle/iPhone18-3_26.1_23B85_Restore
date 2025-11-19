@interface PML
@end

@implementation PML

void __PML_LogHandle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive", "pml");
  v2 = PML_LogHandle__pasExprOnceResult;
  PML_LogHandle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end
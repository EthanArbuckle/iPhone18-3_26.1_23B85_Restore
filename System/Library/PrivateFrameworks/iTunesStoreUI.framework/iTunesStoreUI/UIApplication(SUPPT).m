@interface UIApplication(SUPPT)
- (void)beginPPTWithName:()SUPPT;
- (void)endCurrentPPT;
@end

@implementation UIApplication(SUPPT)

- (void)beginPPTWithName:()SUPPT
{
  if (__CurrentTestName != a3)
  {

    __CurrentTestName = a3;
  }
}

- (void)endCurrentPPT
{
  [a1 finishedTest:__CurrentTestName extraResults:0];

  __CurrentTestName = 0;
}

@end
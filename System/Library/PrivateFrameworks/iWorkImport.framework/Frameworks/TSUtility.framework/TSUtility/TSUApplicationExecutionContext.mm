@interface TSUApplicationExecutionContext
- (BOOL)isUILayoutRTL;
- (void)performWithApplication:(id)a3;
@end

@implementation TSUApplicationExecutionContext

- (BOOL)isUILayoutRTL
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

- (void)performWithApplication:(id)a3
{
  v7 = a3;
  v4 = [(TSUApplicationExecutionContext *)self application];
  if (v4)
  {
    if (v7)
    {
      v7[2](v7, v4);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUApplicationExecutionContext performWithApplication:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExecutionContext.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:44 isFatal:0 description:"Did not expect nil UIApplication!"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

@end
@interface TSUApplicationExecutionContext
- (BOOL)isUILayoutRTL;
- (void)performWithApplication:(id)application;
@end

@implementation TSUApplicationExecutionContext

- (BOOL)isUILayoutRTL
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

  return v3;
}

- (void)performWithApplication:(id)application
{
  applicationCopy = application;
  application = [(TSUApplicationExecutionContext *)self application];
  if (application)
  {
    if (applicationCopy)
    {
      applicationCopy[2](applicationCopy, application);
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
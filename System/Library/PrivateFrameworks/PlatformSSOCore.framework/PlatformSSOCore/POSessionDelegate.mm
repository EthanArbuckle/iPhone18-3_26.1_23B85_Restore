@interface POSessionDelegate
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation POSessionDelegate

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
  {
    v9 = PO_LOG_POLoginConfiguration();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [POSessionDelegate URLSession:v9 didReceiveChallenge:? completionHandler:?];
    }

    v10 = [objc_alloc(MEMORY[0x277CCACF0]) initWithTrust:serverTrust];
    handlerCopy[2](handlerCopy, 0, v10);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

@end
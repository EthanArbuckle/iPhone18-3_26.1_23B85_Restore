@interface POSessionDelegate
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation POSessionDelegate

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [a4 protectionSpace];
  v8 = [v7 serverTrust];

  if (+[POCoreConfigurationUtil platformSSODevModeEnabled])
  {
    v9 = PO_LOG_POLoginConfiguration();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [POSessionDelegate URLSession:v9 didReceiveChallenge:? completionHandler:?];
    }

    v10 = [objc_alloc(MEMORY[0x277CCACF0]) initWithTrust:v8];
    v6[2](v6, 0, v10);
  }

  else
  {
    v6[2](v6, 1, 0);
  }
}

@end
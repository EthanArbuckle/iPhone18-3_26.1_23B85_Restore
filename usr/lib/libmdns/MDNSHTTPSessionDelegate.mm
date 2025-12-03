@interface MDNSHTTPSessionDelegate
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation MDNSHTTPSessionDelegate

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v10 = [authenticationMethod isEqualToString:*MEMORY[0x29EDB84E8]];

  if (v10)
  {
    protectionSpace2 = [challengeCopy protectionSpace];
    serverTrust = [protectionSpace2 serverTrust];

    if (serverTrust)
    {
      SecTrustSetNetworkFetchAllowed(serverTrust, 0);
    }
  }

  handlerCopy[2](handlerCopy, 1, 0);
}

@end
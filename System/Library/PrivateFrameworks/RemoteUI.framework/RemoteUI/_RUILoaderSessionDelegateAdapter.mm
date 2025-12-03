@interface _RUILoaderSessionDelegateAdapter
- (NSURLSessionTaskDelegate)delegate;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
@end

@implementation _RUILoaderSessionDelegateAdapter

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  delegate = [(_RUILoaderSessionDelegateAdapter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate URLSession:sessionCopy task:taskCopy willPerformHTTPRedirection:redirectionCopy newRequest:requestCopy completionHandler:handlerCopy];
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  delegate = [(_RUILoaderSessionDelegateAdapter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate URLSession:sessionCopy didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }
}

- (NSURLSessionTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
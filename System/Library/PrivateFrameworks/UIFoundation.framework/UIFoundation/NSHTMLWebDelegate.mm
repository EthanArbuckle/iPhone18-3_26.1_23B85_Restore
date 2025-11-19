@interface NSHTMLWebDelegate
- (NSHTMLWebDelegate)init;
- (NSHTMLWebDelegate)initWithBaseURL:(id)a3;
- (void)dealloc;
- (void)decidePolicyForRequest:(id)a3 decisionListener:(id)a4;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7;
- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 didFailProvisionalLoadWithError:(id)a4 forFrame:(id)a5;
- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4;
- (void)webView:(id)a3 resource:(id)a4 didReceiveAuthenticationChallenge:(id)a5 fromDataSource:(id)a6;
@end

@implementation NSHTMLWebDelegate

- (NSHTMLWebDelegate)init
{
  v3.receiver = self;
  v3.super_class = NSHTMLWebDelegate;
  result = [(NSHTMLWebDelegate *)&v3 init];
  *&result->_loadDidFinish = 0;
  return result;
}

- (NSHTMLWebDelegate)initWithBaseURL:(id)a3
{
  v4 = [(NSHTMLWebDelegate *)self init];
  v4->_baseURL = a3;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSHTMLWebDelegate;
  [(NSHTMLWebDelegate *)&v3 dealloc];
}

- (void)webView:(id)a3 didFailProvisionalLoadWithError:(id)a4 forFrame:(id)a5
{
  if ([a3 mainFrame] == a5)
  {
    self->_loadDidFinish = 1;
  }

  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4
{
  if ([a3 mainFrame] == a4)
  {
    *&self->_loadDidFinish = 257;
  }

  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)webView:(id)a3 didFailLoadWithError:(id)a4 forFrame:(id)a5
{
  if ([a3 mainFrame] == a5)
  {
    self->_loadDidFinish = 1;
  }

  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)webView:(id)a3 resource:(id)a4 didReceiveAuthenticationChallenge:(id)a5 fromDataSource:(id)a6
{
  v7 = [a5 sender];

  [v7 continueWithoutCredentialForAuthenticationChallenge:a5];
}

- (void)decidePolicyForRequest:(id)a3 decisionListener:(id)a4
{
  v6 = [a3 URL];
  v7 = [(NSURL *)v6 scheme];
  if (v6 && ((v8 = v7, v6 != self->_baseURL) ? (v9 = v7 == 0) : (v9 = 1), !v9 && ([(NSString *)v7 isEqualToString:@"mailto"]|| [(NSString *)v8 isEqualToString:@"rdar"]|| [(NSString *)v8 isEqualToString:@"radar"]) && ([(NSURL *)v6 isEqual:self->_baseURL]& 1) == 0 && ![[(NSURL *)v6 absoluteURL] isEqual:[(NSURL *)self->_baseURL absoluteURL]]))
  {

    [a4 ignore];
  }

  else
  {

    [a4 use];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7
{
  if (![a6 frameElement])
  {
    goto LABEL_10;
  }

  if (webView_decidePolicyForNavigationAction_request_frame_decisionListener__onceToken != -1)
  {
    [NSHTMLWebDelegate webView:decidePolicyForNavigationAction:request:frame:decisionListener:];
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10 = [a5 URL]) != 0 && objc_msgSend(v10, "isFileURL"))
  {

    [a7 ignore];
  }

  else
  {
LABEL_10:

    [(NSHTMLWebDelegate *)self decidePolicyForRequest:a5 decisionListener:a7];
  }
}

Class __92__NSHTMLWebDelegate_webView_decidePolicyForNavigationAction_request_frame_decisionListener___block_invoke()
{
  result = NSClassFromString(@"DOMHTMLIFrameElement");
  webView_decidePolicyForNavigationAction_request_frame_decisionListener__iframeElementClass = result;
  return result;
}

@end
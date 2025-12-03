@interface NSHTMLWebDelegate
- (NSHTMLWebDelegate)init;
- (NSHTMLWebDelegate)initWithBaseURL:(id)l;
- (void)dealloc;
- (void)decidePolicyForRequest:(id)request decisionListener:(id)listener;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)webView:(id)view didFailLoadWithError:(id)error forFrame:(id)frame;
- (void)webView:(id)view didFailProvisionalLoadWithError:(id)error forFrame:(id)frame;
- (void)webView:(id)view didFinishLoadForFrame:(id)frame;
- (void)webView:(id)view resource:(id)resource didReceiveAuthenticationChallenge:(id)challenge fromDataSource:(id)source;
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

- (NSHTMLWebDelegate)initWithBaseURL:(id)l
{
  v4 = [(NSHTMLWebDelegate *)self init];
  v4->_baseURL = l;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSHTMLWebDelegate;
  [(NSHTMLWebDelegate *)&v3 dealloc];
}

- (void)webView:(id)view didFailProvisionalLoadWithError:(id)error forFrame:(id)frame
{
  if ([view mainFrame] == frame)
  {
    self->_loadDidFinish = 1;
  }

  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)webView:(id)view didFinishLoadForFrame:(id)frame
{
  if ([view mainFrame] == frame)
  {
    *&self->_loadDidFinish = 257;
  }

  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)webView:(id)view didFailLoadWithError:(id)error forFrame:(id)frame
{
  if ([view mainFrame] == frame)
  {
    self->_loadDidFinish = 1;
  }

  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)webView:(id)view resource:(id)resource didReceiveAuthenticationChallenge:(id)challenge fromDataSource:(id)source
{
  sender = [challenge sender];

  [sender continueWithoutCredentialForAuthenticationChallenge:challenge];
}

- (void)decidePolicyForRequest:(id)request decisionListener:(id)listener
{
  v6 = [request URL];
  scheme = [(NSURL *)v6 scheme];
  if (v6 && ((v8 = scheme, v6 != self->_baseURL) ? (v9 = scheme == 0) : (v9 = 1), !v9 && ([(NSString *)scheme isEqualToString:@"mailto"]|| [(NSString *)v8 isEqualToString:@"rdar"]|| [(NSString *)v8 isEqualToString:@"radar"]) && ([(NSURL *)v6 isEqual:self->_baseURL]& 1) == 0 && ![[(NSURL *)v6 absoluteURL] isEqual:[(NSURL *)self->_baseURL absoluteURL]]))
  {

    [listener ignore];
  }

  else
  {

    [listener use];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener
{
  if (![frame frameElement])
  {
    goto LABEL_10;
  }

  if (webView_decidePolicyForNavigationAction_request_frame_decisionListener__onceToken != -1)
  {
    [NSHTMLWebDelegate webView:decidePolicyForNavigationAction:request:frame:decisionListener:];
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10 = [request URL]) != 0 && objc_msgSend(v10, "isFileURL"))
  {

    [listener ignore];
  }

  else
  {
LABEL_10:

    [(NSHTMLWebDelegate *)self decidePolicyForRequest:request decisionListener:listener];
  }
}

Class __92__NSHTMLWebDelegate_webView_decidePolicyForNavigationAction_request_frame_decisionListener___block_invoke()
{
  result = NSClassFromString(@"DOMHTMLIFrameElement");
  webView_decidePolicyForNavigationAction_request_frame_decisionListener__iframeElementClass = result;
  return result;
}

@end
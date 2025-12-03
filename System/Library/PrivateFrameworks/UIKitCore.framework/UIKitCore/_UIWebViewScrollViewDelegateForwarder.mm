@interface _UIWebViewScrollViewDelegateForwarder
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _UIWebViewScrollViewDelegateForwarder

- (id)methodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = _UIWebViewScrollViewDelegateForwarder;
  result = [(_UIWebViewScrollViewDelegateForwarder *)&v6 methodSignatureForSelector:?];
  if (!result)
  {
    result = [(UIWebView *)self->_webView methodSignatureForSelector:selector];
    if (!result)
    {
      return [(UIScrollViewDelegate *)self->_delegate methodSignatureForSelector:selector];
    }
  }

  return result;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = _UIWebViewScrollViewDelegateForwarder;
  if ([(_UIWebViewScrollViewDelegateForwarder *)&v5 respondsToSelector:?]|| (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  [invocation selector];
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    [invocation invokeWithTarget:self->_webView];
  }

  [invocation selector];
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [invocation invokeWithTarget:delegate];
  }

  else if ((v5 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = _UIWebViewScrollViewDelegateForwarder;
    [(_UIWebViewScrollViewDelegateForwarder *)&v7 forwardInvocation:invocation];
  }
}

@end
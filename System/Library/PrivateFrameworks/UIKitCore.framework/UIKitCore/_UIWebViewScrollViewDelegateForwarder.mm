@interface _UIWebViewScrollViewDelegateForwarder
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation _UIWebViewScrollViewDelegateForwarder

- (id)methodSignatureForSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = _UIWebViewScrollViewDelegateForwarder;
  result = [(_UIWebViewScrollViewDelegateForwarder *)&v6 methodSignatureForSelector:?];
  if (!result)
  {
    result = [(UIWebView *)self->_webView methodSignatureForSelector:a3];
    if (!result)
    {
      return [(UIScrollViewDelegate *)self->_delegate methodSignatureForSelector:a3];
    }
  }

  return result;
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (void)forwardInvocation:(id)a3
{
  [a3 selector];
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    [a3 invokeWithTarget:self->_webView];
  }

  [a3 selector];
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [a3 invokeWithTarget:delegate];
  }

  else if ((v5 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = _UIWebViewScrollViewDelegateForwarder;
    [(_UIWebViewScrollViewDelegateForwarder *)&v7 forwardInvocation:a3];
  }
}

@end
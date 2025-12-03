@interface UIWebRotatingAlertController
- (BOOL)presentSheet;
- (UIWebRotatingAlertController)initWithUIWebDocumentView:(id)view;
- (void)_disableWebView;
- (void)_enableWebView;
- (void)dealloc;
- (void)doneWithSheet;
@end

@implementation UIWebRotatingAlertController

- (UIWebRotatingAlertController)initWithUIWebDocumentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = UIWebRotatingAlertController;
  v6 = [(_UIRotatingAlertController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webBrowserView, view);
  }

  return v7;
}

- (void)_disableWebView
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_webBrowserView webView];
  mainFrame = [webView mainFrame];
  [mainFrame setTimeoutsPaused:1];

  webView2 = [(UIWebDocumentView *)self->_webBrowserView webView];
  self->_wasDeferringCallbacks = [webView2 defersCallbacks];

  webView3 = [(UIWebDocumentView *)self->_webBrowserView webView];
  [webView3 setDefersCallbacks:1];
}

- (void)_enableWebView
{
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_webBrowserView webView];
  mainFrame = [webView mainFrame];
  [mainFrame setTimeoutsPaused:0];

  webView2 = [(UIWebDocumentView *)self->_webBrowserView webView];
  [webView2 setDefersCallbacks:self->_wasDeferringCallbacks];
}

- (void)dealloc
{
  [(UIWebRotatingAlertController *)self _enableWebView];
  v3.receiver = self;
  v3.super_class = UIWebRotatingAlertController;
  [(_UIRotatingAlertController *)&v3 dealloc];
}

- (void)doneWithSheet
{
  [(UIWebRotatingAlertController *)self _enableWebView];
  webBrowserView = self->_webBrowserView;
  self->_webBrowserView = 0;

  v4.receiver = self;
  v4.super_class = UIWebRotatingAlertController;
  [(_UIRotatingAlertController *)&v4 doneWithSheet];
}

- (BOOL)presentSheet
{
  [(UIWebRotatingAlertController *)self _disableWebView];
  v4.receiver = self;
  v4.super_class = UIWebRotatingAlertController;
  return [(_UIRotatingAlertController *)&v4 presentSheet];
}

@end
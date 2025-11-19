@interface WAKView(WebDocumentViewExtras)
- (uint64_t)_frame;
- (uint64_t)_webView;
@end

@implementation WAKView(WebDocumentViewExtras)

- (uint64_t)_frame
{
  v1 = [a1 _web_parentWebFrameView];

  return [v1 webFrame];
}

- (uint64_t)_webView
{
  v1 = [a1 _frame];

  return [v1 webView];
}

@end
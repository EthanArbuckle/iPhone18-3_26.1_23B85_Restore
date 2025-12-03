@interface WAKView(WebDocumentViewExtras)
- (uint64_t)_frame;
- (uint64_t)_webView;
@end

@implementation WAKView(WebDocumentViewExtras)

- (uint64_t)_frame
{
  _web_parentWebFrameView = [self _web_parentWebFrameView];

  return [_web_parentWebFrameView webFrame];
}

- (uint64_t)_webView
{
  _frame = [self _frame];

  return [_frame webView];
}

@end
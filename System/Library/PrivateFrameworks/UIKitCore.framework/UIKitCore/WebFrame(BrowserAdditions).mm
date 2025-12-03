@interface WebFrame(BrowserAdditions)
- (BOOL)isMainFrame;
@end

@implementation WebFrame(BrowserAdditions)

- (BOOL)isMainFrame
{
  webView = [self webView];
  mainFrame = [webView mainFrame];
  v4 = mainFrame == self;

  return v4;
}

@end
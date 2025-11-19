@interface WebFrame(BrowserAdditions)
- (BOOL)isMainFrame;
@end

@implementation WebFrame(BrowserAdditions)

- (BOOL)isMainFrame
{
  v2 = [a1 webView];
  v3 = [v2 mainFrame];
  v4 = v3 == a1;

  return v4;
}

@end
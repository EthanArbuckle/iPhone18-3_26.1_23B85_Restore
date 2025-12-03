@interface SXLinkAction
- (SXLinkAction)initWithURL:(id)l analytics:(id)analytics openInBrowser:(BOOL)browser;
@end

@implementation SXLinkAction

- (SXLinkAction)initWithURL:(id)l analytics:(id)analytics openInBrowser:(BOOL)browser
{
  lCopy = l;
  analyticsCopy = analytics;
  v14.receiver = self;
  v14.super_class = SXLinkAction;
  v11 = [(SXLinkAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_URL, l);
    objc_storeStrong(&v12->_analytics, analytics);
    v12->_openInBrowser = browser;
  }

  return v12;
}

@end
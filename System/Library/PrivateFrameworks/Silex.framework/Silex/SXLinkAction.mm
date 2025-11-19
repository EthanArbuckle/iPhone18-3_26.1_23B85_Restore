@interface SXLinkAction
- (SXLinkAction)initWithURL:(id)a3 analytics:(id)a4 openInBrowser:(BOOL)a5;
@end

@implementation SXLinkAction

- (SXLinkAction)initWithURL:(id)a3 analytics:(id)a4 openInBrowser:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SXLinkAction;
  v11 = [(SXLinkAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_URL, a3);
    objc_storeStrong(&v12->_analytics, a4);
    v12->_openInBrowser = a5;
  }

  return v12;
}

@end
@interface SWScaleManager
- (SWScaleManager)initWithWebView:(id)view scale:(double)scale;
@end

@implementation SWScaleManager

- (SWScaleManager)initWithWebView:(id)view scale:(double)scale
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = SWScaleManager;
  v8 = [(SWScaleManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webView, view);
    [(SWScaleManager *)v9 setScale:scale];
  }

  return v9;
}

@end
@interface SWScaleManager
- (SWScaleManager)initWithWebView:(id)a3 scale:(double)a4;
@end

@implementation SWScaleManager

- (SWScaleManager)initWithWebView:(id)a3 scale:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SWScaleManager;
  v8 = [(SWScaleManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webView, a3);
    [(SWScaleManager *)v9 setScale:a4];
  }

  return v9;
}

@end
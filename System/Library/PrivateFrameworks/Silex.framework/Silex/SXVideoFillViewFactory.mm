@interface SXVideoFillViewFactory
- (SXVideoFillViewFactory)initWithDOMObjectProvider:(id)provider imageViewFactory:(id)factory;
- (id)createVideoFillViewForVideoFill:(id)fill;
@end

@implementation SXVideoFillViewFactory

- (SXVideoFillViewFactory)initWithDOMObjectProvider:(id)provider imageViewFactory:(id)factory
{
  providerCopy = provider;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = SXVideoFillViewFactory;
  v9 = [(SXVideoFillViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, provider);
    objc_storeStrong(&v10->_imageViewFactory, factory);
  }

  return v10;
}

- (id)createVideoFillViewForVideoFill:(id)fill
{
  fillCopy = fill;
  v5 = [SXVideoFillView alloc];
  dOMObjectProvider = [(SXVideoFillViewFactory *)self DOMObjectProvider];
  imageViewFactory = [(SXVideoFillViewFactory *)self imageViewFactory];
  v8 = [(SXVideoFillView *)v5 initWithVideoFill:fillCopy DOMObjectProvider:dOMObjectProvider imageViewFactory:imageViewFactory];

  return v8;
}

@end
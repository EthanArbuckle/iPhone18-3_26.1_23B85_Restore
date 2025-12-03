@interface SXImageFillViewFactory
- (SXImageFillViewFactory)initWithDOMObjectProvider:(id)provider imageViewFactory:(id)factory;
- (id)createImageFillViewForImageFill:(id)fill;
@end

@implementation SXImageFillViewFactory

- (SXImageFillViewFactory)initWithDOMObjectProvider:(id)provider imageViewFactory:(id)factory
{
  providerCopy = provider;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = SXImageFillViewFactory;
  v9 = [(SXImageFillViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, provider);
    objc_storeStrong(&v10->_imageViewFactory, factory);
  }

  return v10;
}

- (id)createImageFillViewForImageFill:(id)fill
{
  fillCopy = fill;
  dOMObjectProvider = [(SXImageFillViewFactory *)self DOMObjectProvider];
  imageIdentifier = [fillCopy imageIdentifier];
  v7 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

  v8 = [SXImageFillView alloc];
  imageViewFactory = [(SXImageFillViewFactory *)self imageViewFactory];
  v10 = [(SXImageFillView *)v8 initWithImageFill:fillCopy imageResource:v7 imageViewFactory:imageViewFactory];

  return v10;
}

@end
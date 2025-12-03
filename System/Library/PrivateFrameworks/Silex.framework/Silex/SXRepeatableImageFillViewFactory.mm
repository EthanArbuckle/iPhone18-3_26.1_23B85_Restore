@interface SXRepeatableImageFillViewFactory
- (SXRepeatableImageFillViewFactory)initWithDOMObjectProvider:(id)provider imageViewFactory:(id)factory;
- (id)createRepeatableImageFillViewForRepeatableImageFill:(id)fill;
@end

@implementation SXRepeatableImageFillViewFactory

- (SXRepeatableImageFillViewFactory)initWithDOMObjectProvider:(id)provider imageViewFactory:(id)factory
{
  providerCopy = provider;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = SXRepeatableImageFillViewFactory;
  v9 = [(SXRepeatableImageFillViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, provider);
    objc_storeStrong(&v10->_imageViewFactory, factory);
  }

  return v10;
}

- (id)createRepeatableImageFillViewForRepeatableImageFill:(id)fill
{
  fillCopy = fill;
  dOMObjectProvider = [(SXRepeatableImageFillViewFactory *)self DOMObjectProvider];
  imageIdentifier = [fillCopy imageIdentifier];
  v7 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

  imageViewFactory = [(SXRepeatableImageFillViewFactory *)self imageViewFactory];
  v9 = [imageViewFactory repeatableImageViewForResource:v7];

  v10 = [[SXRepeatableImageFillView alloc] initWithRepeatableImageFill:fillCopy imageView:v9];

  return v10;
}

@end
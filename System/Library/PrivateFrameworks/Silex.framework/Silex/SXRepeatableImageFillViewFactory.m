@interface SXRepeatableImageFillViewFactory
- (SXRepeatableImageFillViewFactory)initWithDOMObjectProvider:(id)a3 imageViewFactory:(id)a4;
- (id)createRepeatableImageFillViewForRepeatableImageFill:(id)a3;
@end

@implementation SXRepeatableImageFillViewFactory

- (SXRepeatableImageFillViewFactory)initWithDOMObjectProvider:(id)a3 imageViewFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXRepeatableImageFillViewFactory;
  v9 = [(SXRepeatableImageFillViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, a3);
    objc_storeStrong(&v10->_imageViewFactory, a4);
  }

  return v10;
}

- (id)createRepeatableImageFillViewForRepeatableImageFill:(id)a3
{
  v4 = a3;
  v5 = [(SXRepeatableImageFillViewFactory *)self DOMObjectProvider];
  v6 = [v4 imageIdentifier];
  v7 = [v5 imageResourceForIdentifier:v6];

  v8 = [(SXRepeatableImageFillViewFactory *)self imageViewFactory];
  v9 = [v8 repeatableImageViewForResource:v7];

  v10 = [[SXRepeatableImageFillView alloc] initWithRepeatableImageFill:v4 imageView:v9];

  return v10;
}

@end
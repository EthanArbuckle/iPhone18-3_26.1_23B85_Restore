@interface SXImageFillViewFactory
- (SXImageFillViewFactory)initWithDOMObjectProvider:(id)a3 imageViewFactory:(id)a4;
- (id)createImageFillViewForImageFill:(id)a3;
@end

@implementation SXImageFillViewFactory

- (SXImageFillViewFactory)initWithDOMObjectProvider:(id)a3 imageViewFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXImageFillViewFactory;
  v9 = [(SXImageFillViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, a3);
    objc_storeStrong(&v10->_imageViewFactory, a4);
  }

  return v10;
}

- (id)createImageFillViewForImageFill:(id)a3
{
  v4 = a3;
  v5 = [(SXImageFillViewFactory *)self DOMObjectProvider];
  v6 = [v4 imageIdentifier];
  v7 = [v5 imageResourceForIdentifier:v6];

  v8 = [SXImageFillView alloc];
  v9 = [(SXImageFillViewFactory *)self imageViewFactory];
  v10 = [(SXImageFillView *)v8 initWithImageFill:v4 imageResource:v7 imageViewFactory:v9];

  return v10;
}

@end
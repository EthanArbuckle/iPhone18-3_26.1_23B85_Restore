@interface SXVideoFillViewFactory
- (SXVideoFillViewFactory)initWithDOMObjectProvider:(id)a3 imageViewFactory:(id)a4;
- (id)createVideoFillViewForVideoFill:(id)a3;
@end

@implementation SXVideoFillViewFactory

- (SXVideoFillViewFactory)initWithDOMObjectProvider:(id)a3 imageViewFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXVideoFillViewFactory;
  v9 = [(SXVideoFillViewFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, a3);
    objc_storeStrong(&v10->_imageViewFactory, a4);
  }

  return v10;
}

- (id)createVideoFillViewForVideoFill:(id)a3
{
  v4 = a3;
  v5 = [SXVideoFillView alloc];
  v6 = [(SXVideoFillViewFactory *)self DOMObjectProvider];
  v7 = [(SXVideoFillViewFactory *)self imageViewFactory];
  v8 = [(SXVideoFillView *)v5 initWithVideoFill:v4 DOMObjectProvider:v6 imageViewFactory:v7];

  return v8;
}

@end
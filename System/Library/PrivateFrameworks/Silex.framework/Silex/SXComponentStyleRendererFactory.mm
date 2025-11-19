@interface SXComponentStyleRendererFactory
- (SXComponentStyleRendererFactory)initWithImageFillViewFactory:(id)a3 videoFillViewFactory:(id)a4 gradientFactory:(id)a5 repeatableImageFillViewFactory:(id)a6 viewport:(id)a7;
- (id)componentStyleRendererForComponentStyle:(id)a3;
@end

@implementation SXComponentStyleRendererFactory

- (SXComponentStyleRendererFactory)initWithImageFillViewFactory:(id)a3 videoFillViewFactory:(id)a4 gradientFactory:(id)a5 repeatableImageFillViewFactory:(id)a6 viewport:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SXComponentStyleRendererFactory;
  v17 = [(SXComponentStyleRendererFactory *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_imageFillViewFactory, a3);
    objc_storeStrong(&v18->_videoFillViewFactory, a4);
    objc_storeStrong(&v18->_gradientFactory, a5);
    objc_storeStrong(&v18->_repeatableImageFillViewFactory, a6);
    objc_storeStrong(&v18->_viewport, a7);
  }

  return v18;
}

- (id)componentStyleRendererForComponentStyle:(id)a3
{
  v4 = a3;
  v5 = [SXComponentStyleRenderer alloc];
  v6 = [(SXComponentStyleRendererFactory *)self viewport];
  v7 = [(SXComponentStyleRendererFactory *)self imageFillViewFactory];
  v8 = [(SXComponentStyleRendererFactory *)self videoFillViewFactory];
  v9 = [(SXComponentStyleRendererFactory *)self gradientFactory];
  v10 = [(SXComponentStyleRendererFactory *)self repeatableImageFillViewFactory];
  v11 = [(SXComponentStyleRenderer *)v5 initWithComponentStyle:v4 viewport:v6 imageFillViewFactory:v7 videoFillViewFactory:v8 gradientViewFactory:v9 repeatableImageFillViewFactory:v10];

  return v11;
}

@end
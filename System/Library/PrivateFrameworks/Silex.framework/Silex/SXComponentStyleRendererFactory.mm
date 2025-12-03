@interface SXComponentStyleRendererFactory
- (SXComponentStyleRendererFactory)initWithImageFillViewFactory:(id)factory videoFillViewFactory:(id)viewFactory gradientFactory:(id)gradientFactory repeatableImageFillViewFactory:(id)fillViewFactory viewport:(id)viewport;
- (id)componentStyleRendererForComponentStyle:(id)style;
@end

@implementation SXComponentStyleRendererFactory

- (SXComponentStyleRendererFactory)initWithImageFillViewFactory:(id)factory videoFillViewFactory:(id)viewFactory gradientFactory:(id)gradientFactory repeatableImageFillViewFactory:(id)fillViewFactory viewport:(id)viewport
{
  factoryCopy = factory;
  viewFactoryCopy = viewFactory;
  gradientFactoryCopy = gradientFactory;
  fillViewFactoryCopy = fillViewFactory;
  viewportCopy = viewport;
  v21.receiver = self;
  v21.super_class = SXComponentStyleRendererFactory;
  v17 = [(SXComponentStyleRendererFactory *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_imageFillViewFactory, factory);
    objc_storeStrong(&v18->_videoFillViewFactory, viewFactory);
    objc_storeStrong(&v18->_gradientFactory, gradientFactory);
    objc_storeStrong(&v18->_repeatableImageFillViewFactory, fillViewFactory);
    objc_storeStrong(&v18->_viewport, viewport);
  }

  return v18;
}

- (id)componentStyleRendererForComponentStyle:(id)style
{
  styleCopy = style;
  v5 = [SXComponentStyleRenderer alloc];
  viewport = [(SXComponentStyleRendererFactory *)self viewport];
  imageFillViewFactory = [(SXComponentStyleRendererFactory *)self imageFillViewFactory];
  videoFillViewFactory = [(SXComponentStyleRendererFactory *)self videoFillViewFactory];
  gradientFactory = [(SXComponentStyleRendererFactory *)self gradientFactory];
  repeatableImageFillViewFactory = [(SXComponentStyleRendererFactory *)self repeatableImageFillViewFactory];
  v11 = [(SXComponentStyleRenderer *)v5 initWithComponentStyle:styleCopy viewport:viewport imageFillViewFactory:imageFillViewFactory videoFillViewFactory:videoFillViewFactory gradientViewFactory:gradientFactory repeatableImageFillViewFactory:repeatableImageFillViewFactory];

  return v11;
}

@end